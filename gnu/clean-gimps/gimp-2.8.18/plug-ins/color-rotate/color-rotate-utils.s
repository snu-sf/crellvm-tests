	.text
	.file	"color-rotate-utils.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	arctg
	.align	16, 0x90
	.type	arctg,@function
arctg:                                  # @arctg
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
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	cvtss2sd	-8(%rbp), %xmm1
	callq	atan2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	ucomiss	-12(%rbp), %xmm1
	jbe	.LBB0_2
# BB#1:                                 # %cond.true
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	cvtss2sd	-12(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB0_3:                                # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	arctg, .Lfunc_end0-arctg
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	min_prox
	.align	16, 0x90
	.type	min_prox,@function
min_prox:                               # @min_prox
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
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm1
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_2
# BB#1:                                 # %cond.true
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
.LBB1_3:                                # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm1
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_5
# BB#4:                                 # %cond.true.23
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false.27
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
.LBB1_6:                                # %cond.end.32
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_8
# BB#7:                                 # %cond.true.37
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false.38
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
.LBB1_9:                                # %cond.end.39
	movss	-60(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	min_prox, .Lfunc_end1-min_prox
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	angle_mod_2PI
	.align	16, 0x90
	.type	angle_mod_2PI,@function
angle_mod_2PI:                          # @angle_mod_2PI
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
	xorps	%xmm1, %xmm1
	movss	%xmm0, -8(%rbp)
	ucomiss	-8(%rbp), %xmm1
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-8(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-8(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_4
# BB#3:                                 # %if.then.5
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-8(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB2_5
.LBB2_4:                                # %if.else.8
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB2_5:                                # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end2:
	.size	angle_mod_2PI, .Lfunc_end2-angle_mod_2PI
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	closest
	.align	16, 0x90
	.type	closest,@function
closest:                                # @closest
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	-16(%rbp), %rsi
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movq	-16(%rbp), %rsi
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm1
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
.LBB3_3:                                # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm1
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_5
# BB#4:                                 # %cond.true.23
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	callq	angle_mod_2PI
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.27
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm0
	callq	angle_mod_2PI
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
.LBB3_6:                                # %cond.end.32
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-32(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-36(%rbp), %xmm0
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_8
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_9
.LBB3_8:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	closest, .Lfunc_end3-closest
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	rcm_linear
	.align	16, 0x90
	.type	rcm_linear,@function
rcm_linear:                             # @rcm_linear
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
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movss	%xmm3, -20(%rbp)
	movss	%xmm4, -24(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jbe	.LBB4_8
# BB#1:                                 # %if.then
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB4_4
# BB#3:                                 # %if.then.3
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm1
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm2
	divss	%xmm2, %xmm1
	movss	-24(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_4:                                # %if.else
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-8(%rbp), %xmm1
	cvtss2sd	-24(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB4_7
# BB#5:                                 # %land.lhs.true.10
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtss2sd	-12(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_7
# BB#6:                                 # %if.then.16
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	movss	-20(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm2
	movss	-12(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm3
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	-24(%rbp), %xmm3
	addsd	%xmm0, %xmm3
	cvtss2sd	-8(%rbp), %xmm0
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_7:                                # %if.else.29
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_8:                                # %if.else.30
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB4_11
# BB#9:                                 # %land.lhs.true.33
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB4_11
# BB#10:                                # %if.then.36
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm1
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm2
	divss	%xmm2, %xmm1
	movss	-24(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.else.43
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	cvtss2sd	-24(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jb	.LBB4_14
# BB#12:                                # %land.lhs.true.49
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtss2sd	-8(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_14
# BB#13:                                # %if.then.55
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	movss	-20(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm2
	movss	-12(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm3
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	-24(%rbp), %xmm3
	addsd	%xmm0, %xmm3
	cvtss2sd	-8(%rbp), %xmm0
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.68
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB4_15:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rcm_linear, .Lfunc_end4-rcm_linear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	rcm_left_end
	.align	16, 0x90
	.type	rcm_left_end,@function
rcm_left_end:                           # @rcm_left_end
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
	movq	%rdi, -16(%rbp)
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -28(%rbp)
	subl	$-1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB5_4
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB5_3
# BB#2:                                 # %if.then
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB5_5
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %sw.default
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB5_5:                                # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rcm_left_end, .Lfunc_end5-rcm_left_end
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	rcm_right_end
	.align	16, 0x90
	.type	rcm_right_end,@function
rcm_right_end:                          # @rcm_right_end
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
	movq	%rdi, -16(%rbp)
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -28(%rbp)
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB6_4
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB6_3
# BB#2:                                 # %if.then
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB6_5
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %sw.default
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB6_5:                                # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rcm_right_end, .Lfunc_end6-rcm_right_end
	.cfi_endproc

	.globl	rcm_angle_inside_slice
	.align	16, 0x90
	.type	rcm_angle_inside_slice,@function
rcm_angle_inside_slice:                 # @rcm_angle_inside_slice
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
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2ssl	8(%rdi), %xmm0
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	-4(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	callq	angle_mod_2PI
	movq	-16(%rbp), %rdi
	cvtsi2ssl	8(%rdi), %xmm1
	movq	-16(%rbp), %rdi
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdi
	subss	(%rdi), %xmm2
	mulss	%xmm2, %xmm1
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	angle_mod_2PI
	movss	-20(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rcm_angle_inside_slice, .Lfunc_end7-rcm_angle_inside_slice
	.cfi_endproc

	.globl	rcm_is_gray
	.align	16, 0x90
	.type	rcm_is_gray,@function
rcm_is_gray:                            # @rcm_is_gray
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
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	Current+56, %rax
	movss	16(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	setae	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rcm_is_gray, .Lfunc_end8-rcm_is_gray
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	rcm_reduce_image
	.align	16, 0x90
	.type	rcm_reduce_image,@function
rcm_reduce_image:                       # @rcm_reduce_image
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
	subq	$400, %rsp              # imm = 0x190
	movl	$1, %eax
	movl	%eax, %r8d
	movl	$32, %eax
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -220(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	g_malloc0_n
	leaq	-188(%rbp), %rsi
	leaq	-196(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-200(%rbp), %r8
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-192(%rbp), %edi
	subl	-188(%rbp), %edi
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %edi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jne	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB9_3
.LBB9_2:                                # %if.then
	movl	$0, -224(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movl	$1, -224(%rbp)
.LBB9_4:                                # %if.end
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	je	.LBB9_5
	jmp	.LBB9_65
.LBB9_65:                               # %if.end
	movl	-280(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB9_6
	jmp	.LBB9_19
.LBB9_5:                                # %sw.bb
	movl	$0, -188(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -192(%rbp)
	movl	$0, -196(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -200(%rbp)
	jmp	.LBB9_20
.LBB9_6:                                # %sw.bb.8
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-188(%rbp), %xmm2
	movl	-192(%rbp), %eax
	subl	-188(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB9_8
# BB#7:                                 # %cond.true
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-188(%rbp), %xmm1
	movl	-192(%rbp), %eax
	subl	-188(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
.LBB9_9:                                # %cond.end
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -188(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdl	-192(%rbp), %xmm2
	movl	-192(%rbp), %eax
	subl	-188(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_11
# BB#10:                                # %cond.true.28
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false.31
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-192(%rbp), %xmm1
	movl	-192(%rbp), %eax
	subl	-188(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -304(%rbp)       # 8-byte Spill
.LBB9_12:                               # %cond.end.37
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI9_0, %xmm2         # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -192(%rbp)
	cvtsi2sdl	-196(%rbp), %xmm0
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_14
# BB#13:                                # %cond.true.47
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false.48
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-196(%rbp), %xmm1
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
.LBB9_15:                               # %cond.end.54
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -196(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdl	-200(%rbp), %xmm2
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_17
# BB#16:                                # %cond.true.66
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.69
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-200(%rbp), %xmm1
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -320(%rbp)       # 8-byte Spill
.LBB9_18:                               # %cond.end.75
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %sw.default
	jmp	.LBB9_20
.LBB9_20:                               # %sw.epilog
	leaq	-228(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_item_get_image
	movl	%eax, -36(%rbp)
	movl	-188(%rbp), %eax
	movl	-36(%rbp), %edi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	gimp_image_width
	subl	-228(%rbp), %eax
	movl	-328(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB9_22
# BB#21:                                # %cond.true.86
	movl	-36(%rbp), %edi
	callq	gimp_image_width
	subl	-228(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_22:                               # %cond.false.89
	xorl	%eax, %eax
	movl	-188(%rbp), %ecx
	subl	-228(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB9_24
# BB#23:                                # %cond.true.93
	xorl	%eax, %eax
	subl	-228(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB9_25
.LBB9_24:                               # %cond.false.95
	movl	-188(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB9_25:                               # %cond.end.96
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB9_26:                               # %cond.end.98
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	movl	-192(%rbp), %eax
	movl	-36(%rbp), %edi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_image_width
	subl	-228(%rbp), %eax
	movl	-340(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB9_28
# BB#27:                                # %cond.true.104
	movl	-36(%rbp), %edi
	callq	gimp_image_width
	subl	-228(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB9_32
.LBB9_28:                               # %cond.false.107
	xorl	%eax, %eax
	movl	-192(%rbp), %ecx
	subl	-228(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB9_30
# BB#29:                                # %cond.true.111
	xorl	%eax, %eax
	subl	-228(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB9_31
.LBB9_30:                               # %cond.false.113
	movl	-192(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB9_31:                               # %cond.end.114
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB9_32:                               # %cond.end.116
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
	movl	-196(%rbp), %eax
	movl	-36(%rbp), %edi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_image_height
	subl	-232(%rbp), %eax
	movl	-352(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB9_34
# BB#33:                                # %cond.true.122
	movl	-36(%rbp), %edi
	callq	gimp_image_height
	subl	-232(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_34:                               # %cond.false.125
	xorl	%eax, %eax
	movl	-196(%rbp), %ecx
	subl	-232(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB9_36
# BB#35:                                # %cond.true.129
	xorl	%eax, %eax
	subl	-232(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB9_37
.LBB9_36:                               # %cond.false.131
	movl	-196(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB9_37:                               # %cond.end.132
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB9_38:                               # %cond.end.134
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)
	movl	-200(%rbp), %eax
	movl	-36(%rbp), %edi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_image_height
	subl	-232(%rbp), %eax
	movl	-364(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB9_40
# BB#39:                                # %cond.true.140
	movl	-36(%rbp), %edi
	callq	gimp_image_height
	subl	-232(%rbp), %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB9_44
.LBB9_40:                               # %cond.false.143
	xorl	%eax, %eax
	movl	-200(%rbp), %ecx
	subl	-232(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB9_42
# BB#41:                                # %cond.true.147
	xorl	%eax, %eax
	subl	-232(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB9_43
.LBB9_42:                               # %cond.false.149
	movl	-200(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB9_43:                               # %cond.end.150
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB9_44:                               # %cond.end.152
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)
	movl	-192(%rbp), %eax
	subl	-188(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$1, -212(%rbp)
	jl	.LBB9_46
# BB#45:                                # %lor.lhs.false.158
	cmpl	$1, -216(%rbp)
	jge	.LBB9_47
.LBB9_46:                               # %if.then.161
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_64
.LBB9_47:                               # %if.end.162
	movl	-212(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jle	.LBB9_49
# BB#48:                                # %if.then.165
	movl	-28(%rbp), %eax
	movl	%eax, -208(%rbp)
	cvtsi2ssl	-216(%rbp), %xmm0
	cvtsi2ssl	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvtsi2ssl	-212(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB9_50
.LBB9_49:                               # %if.else.171
	movl	-28(%rbp), %eax
	movl	%eax, -204(%rbp)
	cvtsi2ssl	-212(%rbp), %xmm0
	cvtsi2ssl	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvtsi2ssl	-216(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -208(%rbp)
.LBB9_50:                               # %if.end.178
	movl	$1, %eax
	movl	%eax, %esi
	movl	-208(%rbp), %eax
	imull	-204(%rbp), %eax
	imull	-220(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -152(%rbp)
	movl	-208(%rbp), %ecx
	imull	-204(%rbp), %ecx
	imull	-220(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -240(%rbp)
	movl	-208(%rbp), %ecx
	imull	-204(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rsi
	movl	-188(%rbp), %edx
	movl	-196(%rbp), %r8d
	movl	-212(%rbp), %r9d
	movl	-216(%rbp), %r10d
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movl	-188(%rbp), %edx
	addl	-228(%rbp), %edx
	movl	-196(%rbp), %r8d
	addl	-232(%rbp), %r8d
	movl	-212(%rbp), %r9d
	movl	-216(%rbp), %r10d
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-212(%rbp), %ecx
	imull	-220(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -160(%rbp)
	movl	-212(%rbp), %ecx
	imull	-220(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	$0, -180(%rbp)
.LBB9_51:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_53 Depth 2
	movl	-180(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB9_63
# BB#52:                                # %for.body
                                        #   in Loop: Header=BB9_51 Depth=1
	leaq	-88(%rbp), %rdi
	cvtsi2ssl	-180(%rbp), %xmm0
	cvtsi2ssl	-216(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvtsi2ssl	-204(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -272(%rbp)
	movq	-160(%rbp), %rsi
	movl	-188(%rbp), %edx
	movl	-196(%rbp), %eax
	addl	-272(%rbp), %eax
	movl	-212(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	leaq	-136(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-188(%rbp), %eax
	addl	-228(%rbp), %eax
	movl	-196(%rbp), %ecx
	addl	-232(%rbp), %ecx
	addl	-272(%rbp), %ecx
	movl	-212(%rbp), %r8d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_row
	movl	$0, -184(%rbp)
.LBB9_53:                               # %for.cond.210
                                        #   Parent Loop BB9_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-184(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB9_61
# BB#54:                                # %for.body.213
                                        #   in Loop: Header=BB9_53 Depth=2
	cvtsi2ssl	-184(%rbp), %xmm0
	cvtsi2ssl	-212(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvtsi2ssl	-208(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -268(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB9_56
# BB#55:                                # %if.then.220
                                        #   in Loop: Header=BB9_53 Depth=2
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	addl	-184(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	jmp	.LBB9_57
.LBB9_56:                               # %if.else.223
                                        #   in Loop: Header=BB9_53 Depth=2
	movslq	-268(%rbp), %rax
	movq	-176(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-180(%rbp), %esi
	imull	-208(%rbp), %esi
	addl	-184(%rbp), %esi
	movslq	%esi, %rax
	movq	-168(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB9_57:                               # %if.end.230
                                        #   in Loop: Header=BB9_53 Depth=2
	leaq	-248(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-264(%rbp), %rcx
	movl	-268(%rbp), %eax
	imull	-220(%rbp), %eax
	movslq	%eax, %rdi
	addq	-160(%rbp), %rdi
	callq	gimp_rgb_to_hsv4
	movl	-268(%rbp), %eax
	imull	-220(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	(%rdx,%rcx), %r8b
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %r9d
	imull	-220(%rbp), %r9d
	addl	%r9d, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
	movl	-268(%rbp), %eax
	imull	-220(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	(%rdx,%rcx), %r8b
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %r9d
	imull	-220(%rbp), %r9d
	addl	%r9d, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
	movl	-268(%rbp), %eax
	imull	-220(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	(%rdx,%rcx), %r8b
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %r9d
	imull	-220(%rbp), %r9d
	addl	%r9d, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %r9d
	imull	-220(%rbp), %r9d
	addl	%r9d, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %r9d
	imull	-220(%rbp), %r9d
	addl	%r9d, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %r9d
	imull	-220(%rbp), %r9d
	addl	%r9d, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	cmpl	$4, -220(%rbp)
	jne	.LBB9_59
# BB#58:                                # %if.then.290
                                        #   in Loop: Header=BB9_53 Depth=2
	movl	-268(%rbp), %eax
	imull	-220(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-180(%rbp), %eax
	imull	-208(%rbp), %eax
	imull	-220(%rbp), %eax
	movl	-184(%rbp), %edi
	imull	-220(%rbp), %edi
	addl	%edi, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB9_59:                               # %if.end.302
                                        #   in Loop: Header=BB9_53 Depth=2
	jmp	.LBB9_60
.LBB9_60:                               # %for.inc
                                        #   in Loop: Header=BB9_53 Depth=2
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB9_53
.LBB9_61:                               # %for.end
                                        #   in Loop: Header=BB9_51 Depth=1
	jmp	.LBB9_62
.LBB9_62:                               # %for.inc.303
                                        #   in Loop: Header=BB9_51 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB9_51
.LBB9_63:                               # %for.end.305
	movl	-208(%rbp), %eax
	movq	-144(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-204(%rbp), %eax
	movq	-144(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-152(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-240(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-168(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-144(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB9_64:                               # %return
	movq	-8(%rbp), %rax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rcm_reduce_image, .Lfunc_end9-rcm_reduce_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI10_2:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_1:
	.long	1065353216              # float 1
	.text
	.globl	rcm_render_preview
	.align	16, 0x90
	.type	rcm_render_preview,@function
rcm_render_preview:                     # @rcm_render_preview
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.rcm_render_preview, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_46
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movq	Current+32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movl	%edx, -28(%rbp)
	movq	Current+16, %rax
	movl	12(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	shll	$2, %edx
	imull	-28(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	cmpl	$7, -20(%rbp)
	jne	.LBB10_33
# BB#6:                                 # %if.then.7
	movl	$0, -36(%rbp)
.LBB10_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_32
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$0, -40(%rbp)
.LBB10_9:                               # %for.cond.11
                                        #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB10_30
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rsi
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	cvtsd2ss	-88(%rbp), %xmm0
	callq	rcm_is_gray
	cmpl	$0, %eax
	je	.LBB10_20
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB10_20
# BB#12:                                # %if.then.42
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	Current+12(%rip), %eax
	movl	%eax, %ecx
	subl	$5, %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB10_13
	jmp	.LBB10_47
.LBB10_47:                              # %if.then.42
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB10_17
	jmp	.LBB10_18
.LBB10_13:                              # %sw.bb
                                        #   in Loop: Header=BB10_9 Depth=2
	movq	Current+56, %rax
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	Current+48, %rax
	movq	152(%rax), %rdi
	callq	rcm_angle_inside_slice
	movss	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB10_15
# BB#14:                                # %if.then.46
                                        #   in Loop: Header=BB10_9 Depth=2
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	Current+56, %rax
	cvtss2sd	20(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	Current+56, %rax
	cvtss2sd	24(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.50
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	$1, -108(%rbp)
.LBB10_16:                              # %if.end.51
                                        #   in Loop: Header=BB10_9 Depth=2
	jmp	.LBB10_19
.LBB10_17:                              # %sw.bb.52
                                        #   in Loop: Header=BB10_9 Depth=2
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-99(%rbp), %rdi
	movl	$0, -104(%rbp)
	movl	$1, -108(%rbp)
	movq	Current+56, %rax
	cvtss2sd	20(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	Current+56, %rax
	cvtss2sd	24(%rax), %xmm0
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_hsv_to_rgb4
	jmp	.LBB10_19
.LBB10_18:                              # %sw.default
                                        #   in Loop: Header=BB10_9 Depth=2
	jmp	.LBB10_19
.LBB10_19:                              # %sw.epilog
                                        #   in Loop: Header=BB10_9 Depth=2
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.58
                                        #   in Loop: Header=BB10_9 Depth=2
	cmpl	$0, -108(%rbp)
	jne	.LBB10_22
# BB#21:                                # %if.then.60
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	$0, -104(%rbp)
	movq	Current+48, %rax
	movq	152(%rax), %rdi
	callq	rcm_left_end
	movq	Current+48, %rax
	movq	152(%rax), %rdi
	movss	%xmm0, -132(%rbp)       # 4-byte Spill
	callq	rcm_right_end
	movq	Current+40, %rax
	movq	152(%rax), %rdi
	movss	%xmm0, -136(%rbp)       # 4-byte Spill
	callq	rcm_left_end
	movq	Current+40, %rax
	movq	152(%rax), %rdi
	movss	%xmm0, -140(%rbp)       # 4-byte Spill
	callq	rcm_right_end
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm4
	movss	-132(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-136(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-140(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-144(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	rcm_linear
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	cvtsd2ss	-80(%rbp), %xmm0
	callq	angle_mod_2PI
	leaq	-99(%rbp), %rdi
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_hsv_to_rgb4
.LBB10_22:                              # %if.end.78
                                        #   in Loop: Header=BB10_9 Depth=2
	cmpl	$0, -104(%rbp)
	je	.LBB10_24
# BB#23:                                # %if.then.80
                                        #   in Loop: Header=BB10_9 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_25
.LBB10_24:                              # %if.else.81
                                        #   in Loop: Header=BB10_9 Depth=2
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
.LBB10_25:                              # %if.end.91
                                        #   in Loop: Header=BB10_9 Depth=2
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, %edx
	imull	%ecx, %edx
	movl	-40(%rbp), %esi
	movl	%esi, %edi
	imull	%ecx, %edi
	addl	%edi, %edx
	movslq	%edx, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %ecx
	cvtsi2ssl	%ecx, %xmm3
	mulss	%xmm3, %xmm2
	movzbl	-99(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm3
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	movb	%cl, %r10b
	addl	%esi, %eax
	shll	$2, %eax
	movslq	%eax, %r8
	movq	-48(%rbp), %r9
	movb	%r10b, (%r9,%r8)
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, %edx
	imull	%ecx, %edx
	movl	-40(%rbp), %esi
	movl	%esi, %edi
	imull	%ecx, %edi
	movl	%edi, %r8d
	movl	%edx, %r9d
	leal	1(%r9,%r8), %ecx
	movslq	%ecx, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %ecx
	cvtsi2ssl	%ecx, %xmm3
	mulss	%xmm3, %xmm2
	movzbl	-98(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm3
	mulss	%xmm3, %xmm0
	addss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	movb	%cl, %r10b
	addl	%esi, %eax
	movl	%eax, %r8d
	leal	1(,%r8,4), %eax
	movslq	%eax, %r8
	movq	-48(%rbp), %r9
	movb	%r10b, (%r9,%r8)
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	imull	%ecx, %eax
	movl	-40(%rbp), %edx
	imull	%ecx, %edx
	movl	%edx, %r8d
	movl	%eax, %r9d
	leal	2(%r9,%r8), %eax
	movslq	%eax, %r8
	movq	-56(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	movzbl	-97(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %r10b
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %r8
	movq	-48(%rbp), %r9
	movb	%r10b, (%r9,%r8)
	cmpl	$4, -32(%rbp)
	jne	.LBB10_27
# BB#26:                                # %if.then.162
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.176
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
.LBB10_28:                              # %if.end.183
                                        #   in Loop: Header=BB10_9 Depth=2
	jmp	.LBB10_29
.LBB10_29:                              # %for.inc
                                        #   in Loop: Header=BB10_9 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB10_9
.LBB10_30:                              # %for.end
                                        #   in Loop: Header=BB10_7 Depth=1
	jmp	.LBB10_31
.LBB10_31:                              # %for.inc.184
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_7
.LBB10_32:                              # %for.end.186
	jmp	.LBB10_45
.LBB10_33:                              # %if.else.187
	movl	$0, -36(%rbp)
.LBB10_34:                              # %for.cond.188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_36 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_44
# BB#35:                                # %for.body.191
                                        #   in Loop: Header=BB10_34 Depth=1
	movl	$0, -40(%rbp)
.LBB10_36:                              # %for.cond.192
                                        #   Parent Loop BB10_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB10_42
# BB#37:                                # %for.body.195
                                        #   in Loop: Header=BB10_36 Depth=2
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	cmpl	$4, -32(%rbp)
	jne	.LBB10_39
# BB#38:                                # %if.then.237
                                        #   in Loop: Header=BB10_36 Depth=2
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movb	%dil, (%rsi,%rdx)
	jmp	.LBB10_40
.LBB10_39:                              # %if.else.251
                                        #   in Loop: Header=BB10_36 Depth=2
	movl	-36(%rbp), %eax
	imull	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
.LBB10_40:                              # %if.end.258
                                        #   in Loop: Header=BB10_36 Depth=2
	jmp	.LBB10_41
.LBB10_41:                              # %for.inc.259
                                        #   in Loop: Header=BB10_36 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB10_36
.LBB10_42:                              # %for.end.261
                                        #   in Loop: Header=BB10_34 Depth=1
	jmp	.LBB10_43
.LBB10_43:                              # %for.inc.262
                                        #   in Loop: Header=BB10_34 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_34
.LBB10_44:                              # %for.end.264
	jmp	.LBB10_45
.LBB10_45:                              # %if.end.265
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %r8d
	movq	-48(%rbp), %rsi
	movl	-24(%rbp), %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-164(%rbp), %ecx        # 4-byte Reload
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB10_46:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	rcm_render_preview, .Lfunc_end10-rcm_render_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4611686018427387904     # double 2
.LCPI11_2:
	.quad	4616189618054758400     # double 4
.LCPI11_3:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.globl	rcm_render_circle
	.align	16, 0x90
	.type	rcm_render_circle,@function
rcm_render_circle:                      # @rcm_render_circle
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp36:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_14
.LBB11_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	imull	$3, -20(%rbp), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$0, -28(%rbp)
.LBB11_5:                               # %for.cond.4
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_11
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB11_5 Depth=2
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	cvtsi2sdl	-28(%rbp), %xmm3
	cvtsi2sdl	-20(%rbp), %xmm4
	divsd	%xmm1, %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	cvtsi2sdl	-20(%rbp), %xmm4
	divsd	%xmm1, %xmm4
	subsd	%xmm4, %xmm3
	cvtsi2sdl	-32(%rbp), %xmm4
	cvtsi2sdl	-20(%rbp), %xmm5
	divsd	%xmm1, %xmm5
	subsd	%xmm5, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	cvtsi2sdl	-24(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	cvtsi2sdl	-20(%rbp), %xmm4
	divsd	%xmm1, %xmm4
	cvtsi2sdl	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm3
	cvtsd2ss	%xmm3, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm2
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sqrt
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_8
# BB#7:                                 # %if.then.39
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-32(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	movl	-32(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	movl	-32(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	jmp	.LBB11_9
.LBB11_8:                               # %if.else
                                        #   in Loop: Header=BB11_5 Depth=2
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-20(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -76(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	arctg
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_3, %xmm3        # xmm3 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	movl	-32(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rcx
	addq	-64(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%rcx, %rdi
	callq	gimp_hsv_to_rgb4
.LBB11_9:                               # %if.end.77
                                        #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_10
.LBB11_10:                              # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_5
.LBB11_11:                              # %for.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %for.inc.78
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB11_3
.LBB11_13:                              # %for.end.80
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-20(%rbp), %edx
	movl	-20(%rbp), %r8d
	movq	-64(%rbp), %rsi
	imull	$3, -20(%rbp), %r9d
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-116(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-120(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-124(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB11_14:                              # %return
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rcm_render_circle, .Lfunc_end11-rcm_render_circle
	.cfi_endproc

	.type	.L__func__.rcm_render_preview,@object # @__func__.rcm_render_preview
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.rcm_render_preview:
	.asciz	"rcm_render_preview"
	.size	.L__func__.rcm_render_preview, 19

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"preview != NULL"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"mode"
	.size	.L.str.1, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
