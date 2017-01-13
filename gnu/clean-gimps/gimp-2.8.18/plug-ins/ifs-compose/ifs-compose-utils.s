	.text
	.file	"ifs-compose-utils.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff2_translate
	.align	16, 0x90
	.type	aff2_translate,@function
aff2_translate:                         # @aff2_translate
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
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, (%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm3, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm3, 16(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 24(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	aff2_translate, .Lfunc_end0-aff2_translate
	.cfi_endproc

	.globl	aff2_rotate
	.align	16, 0x90
	.type	aff2_rotate,@function
aff2_rotate:                            # @aff2_rotate
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
	subq	$32, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	cos
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	movd	%rdi, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	aff2_rotate, .Lfunc_end1-aff2_rotate
	.cfi_endproc

	.globl	aff2_scale
	.align	16, 0x90
	.type	aff2_scale,@function
aff2_scale:                             # @aff2_scale
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB2_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	aff2_scale, .Lfunc_end2-aff2_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff2_distort
	.align	16, 0x90
	.type	aff2_distort,@function
aff2_distort:                           # @aff2_distort
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
	xorps	%xmm2, %xmm2
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	divsd	-16(%rbp), %xmm3
	movq	-8(%rbp), %rdi
	movsd	%xmm3, 24(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 16(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm2, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	aff2_distort, .Lfunc_end3-aff2_distort
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff2_compute_stretch
	.align	16, 0x90
	.type	aff2_compute_stretch,@function
aff2_compute_stretch:                   # @aff2_compute_stretch
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
	xorps	%xmm4, %xmm4
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB4_2
	jp	.LBB4_2
# BB#1:                                 # %if.then
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	divsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB4_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	aff2_compute_stretch, .Lfunc_end4-aff2_compute_stretch
	.cfi_endproc

	.globl	aff2_compose
	.align	16, 0x90
	.type	aff2_compose,@function
aff2_compose:                           # @aff2_compose
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
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	16(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	8(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	24(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	32(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	40(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	addsd	32(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 32(%rdx)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	16(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	8(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	24(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 24(%rdx)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	32(%rdx), %xmm0
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	mulsd	40(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	addsd	40(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 40(%rdx)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	aff2_compose, .Lfunc_end5-aff2_compose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff2_invert
	.align	16, 0x90
	.type	aff2_invert,@function
aff2_invert:                            # @aff2_invert
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
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_2
	jp	.LBB6_2
# BB#1:                                 # %if.then
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	aff2_scale
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	40(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB6_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	aff2_invert, .Lfunc_end6-aff2_invert
	.cfi_endproc

	.globl	aff2_apply
	.align	16, 0x90
	.type	aff2_apply,@function
aff2_apply:                             # @aff2_apply
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	addsd	32(%rdx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movsd	24(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	addsd	40(%rdx), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	aff2_apply, .Lfunc_end7-aff2_apply
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff2_fixed_point
	.align	16, 0x90
	.type	aff2_fixed_point,@function
aff2_fixed_point:                       # @aff2_fixed_point
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
	subq	$128, %rsp
	leaq	-120(%rbp), %rax
	leaq	-72(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movaps	%xmm1, %xmm2
	subsd	(%rdx), %xmm2
	movsd	%xmm2, -72(%rbp)
	movq	-8(%rbp), %rdx
	subsd	24(%rdx), %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movd	%xmm1, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movd	%xmm1, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	aff2_invert
	leaq	-120(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	aff2_apply
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	aff2_fixed_point, .Lfunc_end8-aff2_fixed_point
	.cfi_endproc

	.globl	aff3_apply
	.align	16, 0x90
	.type	aff3_apply,@function
aff3_apply:                             # @aff3_apply
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	addsd	24(%rcx), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	addsd	56(%rcx), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	80(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	addsd	88(%rcx), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	aff3_apply, .Lfunc_end9-aff3_apply
	.cfi_endproc

	.globl	ipolygon_convex_hull
	.align	16, 0x90
	.type	ipolygon_convex_hull,@function
ipolygon_convex_hull:                   # @ipolygon_convex_hull
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
	subq	$112, %rsp
	movl	$8, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	cmpl	$3, -20(%rbp)
	jg	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-20(%rbp), %r8d
	movq	-48(%rbp), %rax
	movl	%r8d, 8(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_29
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -76(%rbp)
	movl	$1, -52(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx,%rax,8), %edx
	cmpl	-84(%rbp), %edx
	jge	.LBB10_6
# BB#5:                                 # %if.then.16
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -76(%rbp)
.LBB10_6:                               # %if.end.20
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_3
.LBB10_8:                               # %for.end
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB10_9:                               # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_18
# BB#10:                                # %for.body.24
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.LBB10_12
# BB#11:                                # %if.then.27
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB10_16
.LBB10_12:                              # %if.else
                                        #   in Loop: Header=BB10_9 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx,%rax,8), %edx
	subl	-84(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -96(%rbp)
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	subl	-88(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
# BB#14:                                # %if.then.44
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_17
.LBB10_15:                              # %if.end.47
                                        #   in Loop: Header=BB10_9 Depth=1
	movslq	-56(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movslq	-56(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB10_16:                              # %if.end.56
                                        #   in Loop: Header=BB10_9 Depth=1
	jmp	.LBB10_17
.LBB10_17:                              # %for.inc.57
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB10_9
.LBB10_18:                              # %for.end.60
	movl	$16, %eax
	movl	%eax, %edx
	movabsq	$ipolygon_sort_func, %rcx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-32(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-32(%rbp), %rcx
	subl	4(%rcx), %eax
	movl	%eax, -68(%rbp)
	movl	$1, -52(%rbp)
	movl	$2, -56(%rbp)
.LBB10_19:                              # %for.cond.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_24 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_28
# BB#20:                                # %for.body.80
                                        #   in Loop: Header=BB10_19 Depth=1
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	-56(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	subl	(%rsi,%rax,8), %ecx
	movl	%ecx, -64(%rbp)
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-56(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rsi
	subl	4(%rsi,%rax,8), %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB10_23
# BB#21:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB10_19 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB10_23
# BB#22:                                # %if.then.104
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB10_27
.LBB10_23:                              # %if.end.107
                                        #   in Loop: Header=BB10_19 Depth=1
	jmp	.LBB10_24
.LBB10_24:                              # %while.cond
                                        #   Parent Loop BB10_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	imull	-72(%rbp), %eax
	movl	-64(%rbp), %ecx
	imull	-68(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB10_26
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB10_24 Depth=2
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	movl	-56(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rcx
	movq	-32(%rbp), %rdx
	subl	(%rdx,%rcx,8), %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movl	4(%rdx,%rcx,8), %eax
	movl	-56(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rcx
	movq	-32(%rbp), %rdx
	subl	4(%rdx,%rcx,8), %eax
	movl	%eax, -68(%rbp)
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	addq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	movl	-56(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-32(%rbp), %rdx
	subl	(%rdx,%rcx,8), %eax
	movl	%eax, -64(%rbp)
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	addq	-40(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	-56(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-32(%rbp), %rdx
	subl	4(%rdx,%rcx,8), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB10_24
.LBB10_26:                              # %while.end
                                        #   in Loop: Header=BB10_19 Depth=1
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	addq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rcx,%rax,8)
	movl	-64(%rbp), %esi
	movl	%esi, -60(%rbp)
	movl	-72(%rbp), %esi
	movl	%esi, -68(%rbp)
.LBB10_27:                              # %for.inc.156
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB10_19
.LBB10_28:                              # %for.end.159
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ipolygon_convex_hull, .Lfunc_end10-ipolygon_convex_hull
	.cfi_endproc

	.align	16, 0x90
	.type	ipolygon_sort_func,@function
ipolygon_sort_func:                     # @ipolygon_sort_func
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.else
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB11_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.else.6
	movl	$0, -4(%rbp)
.LBB11_5:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ipolygon_sort_func, .Lfunc_end11-ipolygon_sort_func
	.cfi_endproc

	.globl	ipolygon_contains
	.align	16, 0x90
	.type	ipolygon_contains,@function
ipolygon_contains:                      # @ipolygon_contains
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$3, 8(%rdi)
	jge	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_13
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rax,8), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	4(%rdx,%rax,8), %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -60(%rbp)
.LBB12_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB12_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx,%rax,8), %edx
	movl	%edx, -28(%rbp)
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx,%rax,8), %edx
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	cmpl	-36(%rbp), %edx
	jle	.LBB12_6
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB12_7:                               # %if.end.19
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	-20(%rbp), %edx
	cmpl	-36(%rbp), %edx
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	%edx, %eax
	jne	.LBB12_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-24(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	-44(%rbp), %ecx
	imull	%ecx, %eax
	movl	-56(%rbp), %ecx
	subl	-48(%rbp), %ecx
	movl	-20(%rbp), %edx
	subl	-44(%rbp), %edx
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_10
# BB#9:                                 # %if.then.32
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -64(%rbp)
.LBB12_10:                              # %if.end.33
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB12_3
.LBB12_12:                              # %for.end
	movl	-64(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ipolygon_contains, .Lfunc_end12-ipolygon_contains
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff_element_compute_color_trans
	.align	16, 0x90
	.type	aff_element_compute_color_trans,@function
aff_element_compute_color_trans:        # @aff_element_compute_color_trans
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 232(%rdi)
	je	.LBB13_25
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	184(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	184(%rax), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	192(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	192(%rax), %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	200(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB13_11
	jp	.LBB13_11
# BB#2:                                 # %if.then.18
	movl	$0, -12(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
	cmpl	$3, -12(%rbp)
	jge	.LBB13_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	$0, -16(%rbp)
.LBB13_5:                               # %for.cond.20
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -16(%rbp)
	jge	.LBB13_8
# BB#6:                                 # %for.body.22
                                        #   in Loop: Header=BB13_5 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$296, %rdx              # imm = 0x128
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_5
.LBB13_8:                               # %for.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-8(%rbp), %rax
	movsd	216(%rax), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$296, %rdx              # imm = 0x128
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx,%rax,8)
# BB#9:                                 # %for.inc.32
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_3
.LBB13_10:                              # %for.end.34
	jmp	.LBB13_24
.LBB13_11:                              # %if.else
	movl	$0, -16(%rbp)
.LBB13_12:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -16(%rbp)
	jge	.LBB13_15
# BB#13:                                # %for.body.37
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	-8(%rbp), %rax
	movsd	184(%rax), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	224(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	216(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 296(%rcx,%rax,8)
# BB#14:                                # %for.inc.50
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_12
.LBB13_15:                              # %for.end.52
	movl	$0, -16(%rbp)
.LBB13_16:                              # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -16(%rbp)
	jge	.LBB13_19
# BB#17:                                # %for.body.55
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-8(%rbp), %rax
	movsd	192(%rax), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	224(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	216(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 328(%rcx,%rax,8)
# BB#18:                                # %for.inc.71
                                        #   in Loop: Header=BB13_16 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_16
.LBB13_19:                              # %for.end.73
	movl	$0, -16(%rbp)
.LBB13_20:                              # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -16(%rbp)
	jge	.LBB13_23
# BB#21:                                # %for.body.76
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-8(%rbp), %rax
	movsd	192(%rax), %xmm0        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	224(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	216(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 360(%rcx,%rax,8)
# BB#22:                                # %for.inc.92
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_20
.LBB13_23:                              # %for.end.94
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	216(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	296(%rax), %xmm1
	movsd	%xmm1, 296(%rax)
	movq	-8(%rbp), %rax
	movsd	216(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	336(%rax), %xmm1
	movsd	%xmm1, 336(%rax)
	movq	-8(%rbp), %rax
	movsd	216(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	376(%rax), %xmm1
	movsd	%xmm1, 376(%rax)
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	224(%rax), %xmm1
	movq	-8(%rbp), %rax
	mulsd	184(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 320(%rax)
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	224(%rax), %xmm1
	movq	-8(%rbp), %rax
	mulsd	192(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 352(%rax)
	movq	-8(%rbp), %rax
	subsd	224(%rax), %xmm0
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 384(%rax)
.LBB13_24:                              # %if.end
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	addq	$296, %rax              # imm = 0x128
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movq	-8(%rbp), %rdx
	addq	$56, %rdx
	addq	$8, %rdx
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	aff3_apply
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$296, %rax              # imm = 0x128
	movq	-8(%rbp), %rcx
	addq	$88, %rcx
	movq	-8(%rbp), %rdx
	addq	$88, %rdx
	addq	$8, %rdx
	movq	-8(%rbp), %rsi
	addq	$88, %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	aff3_apply
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$296, %rax              # imm = 0x128
	movq	-8(%rbp), %rcx
	addq	$120, %rcx
	movq	-8(%rbp), %rdx
	addq	$120, %rdx
	addq	$8, %rdx
	movq	-8(%rbp), %rsi
	addq	$120, %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	aff3_apply
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	addq	$296, %rax              # imm = 0x128
	movq	-8(%rbp), %rcx
	addq	$152, %rcx
	movq	-8(%rbp), %rdx
	addq	$152, %rdx
	addq	$8, %rdx
	movq	-8(%rbp), %rsi
	addq	$152, %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	aff3_apply
	jmp	.LBB13_26
.LBB13_25:                              # %if.else.185
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	152(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 296(%rax)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	160(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 328(%rax)
	movq	-8(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	168(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 360(%rax)
	movq	-8(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	152(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 304(%rax)
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	160(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 336(%rax)
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	168(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 368(%rax)
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	152(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 312(%rax)
	movq	-8(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	160(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 344(%rax)
	movq	-8(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	168(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 376(%rax)
	movq	-8(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 320(%rax)
	movq	-8(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 352(%rax)
	movq	-8(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 384(%rax)
.LBB13_26:                              # %if.end.306
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	aff_element_compute_color_trans, .Lfunc_end13-aff_element_compute_color_trans
	.cfi_endproc

	.globl	aff_element_compute_trans
	.align	16, 0x90
	.type	aff_element_compute_trans,@function
aff_element_compute_trans:              # @aff_element_compute_trans
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
	subq	$192, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	40(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	aff2_distort
	leaq	-136(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	callq	aff2_scale
	leaq	-184(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	aff2_compose
	leaq	-136(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	aff2_rotate
	leaq	-88(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	callq	aff2_compose
	leaq	-136(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm1
	mulsd	-16(%rbp), %xmm1
	callq	aff2_translate
	leaq	-184(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	callq	aff2_compose
	leaq	-136(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	callq	aff2_translate
	leaq	-136(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$248, %rax
	movq	%rax, %rdi
	callq	aff2_compose
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	aff_element_compute_trans, .Lfunc_end14-aff_element_compute_trans
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	-4616189618054758400    # double -1
.LCPI15_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	aff_element_decompose_trans
	.align	16, 0x90
	.type	aff_element_decompose_trans,@function
aff_element_decompose_trans:            # @aff_element_decompose_trans
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
	subq	$240, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movq	%rax, %rdi
	callq	aff2_translate
	leaq	-144(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rsi
	callq	aff2_compose
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-24(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, (%rax)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-24(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB15_2
	jp	.LBB15_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB15_9
.LBB15_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB15_4
# BB#3:                                 # %if.then.13
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	%xmm0, -160(%rbp)
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.LBB15_5
.LBB15_4:                               # %if.else.18
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	%xmm0, -160(%rbp)
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
.LBB15_5:                               # %if.end
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB15_7
	jp	.LBB15_7
# BB#6:                                 # %if.then.35
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	-160(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	mulsd	-120(%rbp), %xmm0
	divsd	-160(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 40(%rax)
	jmp	.LBB15_8
.LBB15_7:                               # %if.else.55
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	divsd	-160(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-160(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	callq	sin
	movq	-8(%rbp), %rax
	divsd	32(%rax), %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 40(%rax)
.LBB15_8:                               # %if.end.81
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.82
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	aff_element_decompose_trans, .Lfunc_end15-aff_element_decompose_trans
	.cfi_endproc

	.globl	aff_element_compute_boundary
	.align	16, 0x90
	.type	aff_element_compute_boundary,@function
aff_element_compute_boundary:           # @aff_element_compute_boundary
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	$0, 400(%rcx)
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	408(%rcx), %rax
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB16_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 408(%rax)
	je	.LBB16_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB16_5:                               # %if.end.7
	movl	$8, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	movslq	-28(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movslq	-28(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movslq	-28(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB16_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB16_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	-8(%rbp), %rax
	addq	$248, %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movslq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	-56(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$3, %rdx
	addq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	aff2_apply
	movslq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	cvttsd2si	(%rcx,%rax,8), %r8d
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%r8d, (%rcx,%rax,8)
	movslq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	cvttsd2si	(%rcx,%rax,8), %r8d
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%r8d, 4(%rcx,%rax,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB16_6 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB16_6
.LBB16_9:                               # %for.end
	leaq	-48(%rbp), %rdi
	callq	ipolygon_convex_hull
	movq	-8(%rbp), %rdi
	movq	%rax, 408(%rdi)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	aff_element_compute_click_boundary
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	aff_element_compute_boundary, .Lfunc_end16-aff_element_compute_boundary
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
.LCPI17_1:
	.quad	4620693217682128896     # double 8
.LCPI17_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	aff_element_compute_click_boundary,@function
aff_element_compute_click_boundary:     # @aff_element_compute_click_boundary
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
	subq	$176, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$0, -36(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB17_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB17_1
.LBB17_4:                               # %for.end
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$0, -36(%rbp)
.LBB17_5:                               # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB17_8
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB17_5 Depth=1
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	subsd	-64(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	subsd	-72(%rbp), %xmm2
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm3    # xmm3 = mem[0],zero
	subsd	-72(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
# BB#7:                                 # %for.inc.33
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB17_5
.LBB17_8:                               # %for.end.35
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	xorps	%xmm1, %xmm1
	movsd	.LCPI17_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -96(%rbp)
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -128(%rbp)
	movl	$0, -36(%rbp)
.LBB17_9:                               # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB17_20
# BB#10:                                # %for.body.42
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	mulsd	-88(%rbp), %xmm0
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	mulsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
.LBB17_12:                              # %if.end
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-120(%rbp), %xmm0
	jbe	.LBB17_14
# BB#13:                                # %if.then.66
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB17_14:                              # %if.end.67
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_16
# BB#15:                                # %if.then.70
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
.LBB17_16:                              # %if.end.71
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-128(%rbp), %xmm0
	jbe	.LBB17_18
# BB#17:                                # %if.then.74
                                        #   in Loop: Header=BB17_9 Depth=1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
.LBB17_18:                              # %if.end.75
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              # %for.inc.76
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB17_9
.LBB17_20:                              # %for.end.78
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-136(%rbp), %xmm2
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	movsd	%xmm3, -104(%rbp)
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-144(%rbp), %xmm2
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	movsd	%xmm3, -112(%rbp)
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	addsd	-136(%rbp), %xmm2
	mulsd	-96(%rbp), %xmm2
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	addsd	-144(%rbp), %xmm3
	mulsd	-88(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	-64(%rbp), %xmm3
	movsd	%xmm3, -64(%rbp)
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	addsd	-136(%rbp), %xmm2
	mulsd	-88(%rbp), %xmm2
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	addsd	-144(%rbp), %xmm3
	mulsd	-96(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	-72(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	ucomisd	-104(%rbp), %xmm0
	ja	.LBB17_22
# BB#21:                                # %lor.lhs.false
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB17_27
.LBB17_22:                              # %if.then.101
	movl	$4, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -168(%rbp)
	callq	g_malloc_n
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	%rax, 400(%rsi)
	movq	-168(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	400(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movl	$4, 8(%rax)
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB17_24
# BB#23:                                # %if.then.109
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
.LBB17_24:                              # %if.end.110
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB17_26
# BB#25:                                # %if.then.113
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
.LBB17_26:                              # %if.end.114
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 28(%rcx)
	jmp	.LBB17_28
.LBB17_27:                              # %if.else
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 400(%rcx)
.LBB17_28:                              # %if.end.170
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	aff_element_compute_click_boundary, .Lfunc_end17-aff_element_compute_click_boundary
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
.LCPI18_1:
	.quad	4613937818241073152     # double 3
	.text
	.globl	aff_element_draw
	.align	16, 0x90
	.type	aff_element_draw,@function
aff_element_draw:                       # @aff_element_draw
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
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rsi
	movl	%r10d, %edx
	callq	pango_layout_set_text
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	pango_layout_get_pixel_extents
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movl	$2, %ecx
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm1
	callq	cairo_move_to
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	pango_cairo_show_layout
	movq	-32(%rbp), %rdi
	callq	cairo_fill
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rsi
	movq	400(%rsi), %rsi
	movq	-8(%rbp), %rdi
	cmpq	408(%rdi), %rsi
	je	.LBB18_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	(%rax), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	(%rax), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	cairo_move_to
	movl	$1, -68(%rbp)
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	400(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB18_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	(%rcx), %rcx
	cvtsi2sdl	(%rcx,%rax,8), %xmm0
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	(%rcx), %rcx
	cvtsi2sdl	4(%rcx,%rax,8), %xmm1
	callq	cairo_line_to
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB18_2
.LBB18_5:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	cairo_close_path
	movq	-32(%rbp), %rdi
	callq	cairo_stroke
.LBB18_6:                               # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB18_8
# BB#7:                                 # %if.then.32
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
.LBB18_8:                               # %if.end.33
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	(%rax), %rax
	cvtsi2sdl	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	(%rax), %rax
	cvtsi2sdl	4(%rax), %xmm1
	callq	cairo_move_to
	movl	$1, -68(%rbp)
.LBB18_9:                               # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	408(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB18_12
# BB#10:                                # %for.body.49
                                        #   in Loop: Header=BB18_9 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	408(%rcx), %rcx
	movq	(%rcx), %rcx
	cvtsi2sdl	(%rcx,%rax,8), %xmm0
	movslq	-68(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	408(%rcx), %rcx
	movq	(%rcx), %rcx
	cvtsi2sdl	4(%rcx,%rax,8), %xmm1
	callq	cairo_line_to
# BB#11:                                # %for.inc.62
                                        #   in Loop: Header=BB18_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB18_9
.LBB18_12:                              # %for.end.64
	movq	-32(%rbp), %rdi
	callq	cairo_close_path
	movq	-32(%rbp), %rdi
	callq	cairo_stroke
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	aff_element_draw, .Lfunc_end18-aff_element_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	aff_element_new
	.align	16, 0x90
	.type	aff_element_new,@function
aff_element_new:                        # @aff_element_new
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
	subq	$80, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$416, %eax              # imm = 0x1A0
	movl	%eax, %edx
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI19_0, %xmm2        # xmm2 = mem[0],zero
	movq	%rax, -40(%rbp)
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm3, (%rax)
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm3, 8(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm2, 32(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm1, 40(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 64(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 80(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 120(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 128(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 144(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 96(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 112(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 160(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 168(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 176(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 192(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 200(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 208(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm0, 216(%rax)
	movq	-40(%rbp), %rax
	movsd	%xmm0, 224(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 232(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 408(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 400(%rax)
	movq	-40(%rbp), %rdi
	callq	aff_element_compute_color_trans
	movabsq	$.L.str, %rsi
	leaq	-64(%rbp), %rdi
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 240(%rax)
	movl	-28(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-64(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_strdup
	movq	-40(%rbp), %rcx
	movq	%rax, 392(%rcx)
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	aff_element_new, .Lfunc_end19-aff_element_new
	.cfi_endproc

	.globl	aff_element_free
	.align	16, 0x90
	.type	aff_element_free,@function
aff_element_free:                       # @aff_element_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	400(%rdi), %rdi
	movq	-8(%rbp), %rax
	cmpq	408(%rax), %rdi
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	aff_element_free, .Lfunc_end20-aff_element_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
.LCPI21_1:
	.quad	4602678819172646912     # double 0.5
.LCPI21_2:
	.quad	4643176031446892544     # double 255
.LCPI21_3:
	.quad	4751297606873776128     # double 4294967295
.LCPI21_4:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_5:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	ifs_render
	.align	16, 0x90
	.type	ifs_render,@function
ifs_render:                             # @ifs_render
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp66:
	.cfi_offset %rbx, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
	movl	56(%rbp), %eax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	xorps	%xmm0, %xmm0
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%r15d, -60(%rbp)
	movl	%r14d, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movl	%eax, -92(%rbp)
	movq	$0, -216(%rbp)
	movl	$1, -220(%rbp)
	movsd	%xmm0, -232(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$1, -204(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -204(%rbp)
.LBB21_3:                               # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -200(%rbp)
	movslq	-36(%rbp), %rdi
	callq	g_malloc_n
	xorps	%xmm0, %xmm0
	movq	%rax, -192(%rbp)
	movsd	%xmm0, -176(%rbp)
	movl	$0, -96(%rbp)
.LBB21_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB21_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB21_4 Depth=1
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-40(%rbp), %edx
	imull	-204(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movl	-44(%rbp), %edx
	imull	-204(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	movq	-56(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
	movsd	.LCPI21_4, %xmm0        # xmm0 = mem[0],zero
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsd	248(%rax), %xmm1        # xmm1 = mem[0],zero
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	mulsd	272(%rax), %xmm1
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsd	256(%rax), %xmm2        # xmm2 = mem[0],zero
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	mulsd	264(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI21_5(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	movslq	-96(%rbp), %rax
	movq	-200(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	movslq	-96(%rbp), %rax
	movq	-200(%rbp), %rcx
	ucomisd	(%rcx,%rax,8), %xmm0
	jbe	.LBB21_7
# BB#6:                                 # %if.then.28
                                        #   in Loop: Header=BB21_4 Depth=1
	movsd	.LCPI21_4, %xmm0        # xmm0 = mem[0],zero
	movslq	-96(%rbp), %rax
	movq	-200(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB21_7:                               # %if.end.31
                                        #   in Loop: Header=BB21_4 Depth=1
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsd	240(%rax), %xmm0        # xmm0 = mem[0],zero
	movslq	-96(%rbp), %rax
	movq	-200(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-96(%rbp), %rax
	movq	-200(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB21_4 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB21_4
.LBB21_9:                               # %for.end
	movl	$0, -164(%rbp)
	movl	$0, -96(%rbp)
.LBB21_10:                              # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB21_13
# BB#11:                                # %for.body.43
                                        #   in Loop: Header=BB21_10 Depth=1
	movslq	-96(%rbp), %rax
	movq	-200(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI21_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-164(%rbp), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movl	%eax, %edx
	movl	%edx, -164(%rbp)
	movl	-164(%rbp), %edx
	movslq	-96(%rbp), %rax
	movq	-192(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#12:                                # %for.inc.52
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB21_10
.LBB21_13:                              # %for.end.54
	movl	-96(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	movl	$-1, (%rdx,%rcx,4)
	cmpl	$0, -92(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.59
	leaq	-220(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	create_brush
	movq	%rax, -216(%rbp)
.LBB21_15:                              # %if.end.61
	movl	$32, %eax
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -136(%rbp)
	movsd	%xmm0, -128(%rbp)
	movl	-48(%rbp), %ecx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-296(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -104(%rbp)
	movl	$0, -96(%rbp)
.LBB21_16:                              # %for.cond.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_21 Depth 2
                                        #     Child Loop BB21_56 Depth 2
                                        #       Child Loop BB21_58 Depth 3
	movl	-96(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB21_71
# BB#17:                                # %for.body.66
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$0, -92(%rbp)
	jne	.LBB21_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-96(%rbp), %eax
	cltd
	idivl	-104(%rbp)
	cmpl	$0, %edx
	jne	.LBB21_20
# BB#19:                                # %if.then.70
                                        #   in Loop: Header=BB21_16 Depth=1
	cvtsi2sdl	-96(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB21_20:                              # %if.end.75
                                        #   in Loop: Header=BB21_16 Depth=1
	callq	g_random_int
	movl	%eax, -160(%rbp)
	movl	$0, -100(%rbp)
.LBB21_21:                              # %while.cond
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	movslq	-100(%rbp), %rcx
	movq	-192(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jbe	.LBB21_23
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB21_21 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB21_21
.LBB21_23:                              # %while.end
                                        #   in Loop: Header=BB21_16 Depth=1
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movslq	-100(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	aff2_apply
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movslq	-100(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	(%rdi,%rax,8), %rax
	addq	$296, %rax              # imm = 0x128
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	%rax, %rdi
	callq	aff3_apply
	cmpl	$50, -96(%rbp)
	jge	.LBB21_25
# BB#24:                                # %if.then.89
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_70
.LBB21_25:                              # %if.end.90
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_2, %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-128(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -148(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-136(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -152(%rbp)
	mulsd	-144(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
	cmpl	$0, -148(%rbp)
	jl	.LBB21_31
# BB#26:                                # %lor.lhs.false
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$255, -148(%rbp)
	jg	.LBB21_31
# BB#27:                                # %lor.lhs.false.104
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$0, -152(%rbp)
	jl	.LBB21_31
# BB#28:                                # %lor.lhs.false.107
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$255, -152(%rbp)
	jg	.LBB21_31
# BB#29:                                # %lor.lhs.false.110
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$0, -156(%rbp)
	jl	.LBB21_31
# BB#30:                                # %lor.lhs.false.113
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$255, -156(%rbp)
	jle	.LBB21_32
.LBB21_31:                              # %if.then.116
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_70
.LBB21_32:                              # %if.end.117
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB21_39
# BB#33:                                # %if.then.119
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_38
# BB#34:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_38
# BB#35:                                # %land.lhs.true.128
                                        #   in Loop: Header=BB21_16 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB21_38
# BB#36:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB21_38
# BB#37:                                # %if.then.135
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	-72(%rbp), %rax
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	imull	-40(%rbp), %ecx
	cvttsd2si	-112(%rbp), %edx
	addl	%edx, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -184(%rbp)
	movl	-148(%rbp), %ecx
	movb	%cl, %dil
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movb	%dil, (%rax)
	movl	-152(%rbp), %ecx
	movb	%cl, %dil
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movb	%dil, (%rax)
	movl	-156(%rbp), %ecx
	movb	%cl, %dil
	movq	-184(%rbp), %rax
	movb	%dil, (%rax)
.LBB21_38:                              # %if.end.147
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_69
.LBB21_39:                              # %if.else.148
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	imull	-204(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_68
# BB#40:                                # %land.lhs.true.153
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	imull	-204(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_68
# BB#41:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB21_16 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB21_68
# BB#42:                                # %land.lhs.true.161
                                        #   in Loop: Header=BB21_16 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB21_68
# BB#43:                                # %if.then.164
                                        #   in Loop: Header=BB21_16 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-232(%rbp), %xmm0
	movl	-60(%rbp), %eax
	imull	-204(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -244(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-232(%rbp), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -248(%rbp)
	movl	$0, -252(%rbp)
	movl	$0, -256(%rbp)
	cmpl	$0, -248(%rbp)
	jge	.LBB21_45
# BB#44:                                # %if.then.176
                                        #   in Loop: Header=BB21_16 Depth=1
	xorl	%eax, %eax
	subl	-248(%rbp), %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB21_46
.LBB21_45:                              # %if.else.178
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	$0, -256(%rbp)
.LBB21_46:                              # %if.end.179
                                        #   in Loop: Header=BB21_16 Depth=1
	cmpl	$0, -244(%rbp)
	jge	.LBB21_48
# BB#47:                                # %if.then.182
                                        #   in Loop: Header=BB21_16 Depth=1
	xorl	%eax, %eax
	subl	-244(%rbp), %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB21_49
.LBB21_48:                              # %if.else.184
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	$0, -252(%rbp)
.LBB21_49:                              # %if.end.185
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-244(%rbp), %eax
	addl	-220(%rbp), %eax
	movl	-204(%rbp), %ecx
	imull	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB21_51
# BB#50:                                # %if.then.190
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-204(%rbp), %eax
	imull	-64(%rbp), %eax
	subl	-244(%rbp), %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB21_52
.LBB21_51:                              # %if.else.193
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-220(%rbp), %eax
	movl	%eax, -260(%rbp)
.LBB21_52:                              # %if.end.194
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-248(%rbp), %eax
	addl	-220(%rbp), %eax
	movl	-204(%rbp), %ecx
	imull	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB21_54
# BB#53:                                # %if.then.199
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-204(%rbp), %eax
	imull	-40(%rbp), %eax
	subl	-248(%rbp), %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB21_55
.LBB21_54:                              # %if.else.202
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-220(%rbp), %eax
	movl	%eax, -264(%rbp)
.LBB21_55:                              # %if.end.203
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-252(%rbp), %eax
	movl	%eax, -240(%rbp)
.LBB21_56:                              # %for.cond.204
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_58 Depth 3
	movl	-240(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jge	.LBB21_67
# BB#57:                                # %for.body.207
                                        #   in Loop: Header=BB21_56 Depth=2
	movl	-256(%rbp), %eax
	movl	%eax, -236(%rbp)
.LBB21_58:                              # %for.cond.208
                                        #   Parent Loop BB21_16 Depth=1
                                        #     Parent Loop BB21_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-236(%rbp), %eax
	cmpl	-264(%rbp), %eax
	jge	.LBB21_65
# BB#59:                                # %for.body.211
                                        #   in Loop: Header=BB21_58 Depth=3
	movl	-244(%rbp), %eax
	addl	-240(%rbp), %eax
	imull	-40(%rbp), %eax
	imull	-204(%rbp), %eax
	addl	-248(%rbp), %eax
	addl	-236(%rbp), %eax
	movl	%eax, -292(%rbp)
	movslq	-292(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -280(%rbp)
	cmpl	$255, -280(%rbp)
	jne	.LBB21_61
# BB#60:                                # %if.then.222
                                        #   in Loop: Header=BB21_58 Depth=3
	jmp	.LBB21_64
.LBB21_61:                              # %if.end.223
                                        #   in Loop: Header=BB21_58 Depth=3
	movl	-240(%rbp), %eax
	imull	-220(%rbp), %eax
	addl	-236(%rbp), %eax
	movslq	%eax, %rcx
	movq	-216(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -276(%rbp)
	cmpl	$0, -276(%rbp)
	jne	.LBB21_63
# BB#62:                                # %if.then.230
                                        #   in Loop: Header=BB21_58 Depth=3
	jmp	.LBB21_64
.LBB21_63:                              # %if.end.231
                                        #   in Loop: Header=BB21_58 Depth=3
	movl	$255, %eax
	movl	-280(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -280(%rbp)
	movb	%cl, %dl
	movslq	-292(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
	movslq	-292(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	movl	%ecx, -268(%rbp)
	movl	-268(%rbp), %ecx
	addl	-276(%rbp), %ecx
	movl	-268(%rbp), %r8d
	imull	-276(%rbp), %r8d
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	xorl	%edx, %edx
	movl	-304(%rbp), %r8d        # 4-byte Reload
	divl	%r8d
	subl	%eax, %ecx
	movl	%ecx, -272(%rbp)
	movl	-272(%rbp), %eax
	movb	%al, %r9b
	movslq	-292(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movb	%r9b, (%rdi,%rsi)
	movl	-268(%rbp), %eax
	imull	$255, -280(%rbp), %ecx
	subl	-276(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -284(%rbp)
	movl	-276(%rbp), %eax
	subl	-268(%rbp), %r8d
	imull	-280(%rbp), %r8d
	addl	-268(%rbp), %r8d
	imull	%r8d, %eax
	movl	%eax, -288(%rbp)
	movq	-72(%rbp), %rsi
	imull	$3, -292(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -184(%rbp)
	movl	-284(%rbp), %eax
	movq	-184(%rbp), %rsi
	movzbl	(%rsi), %ecx
	imull	%ecx, %eax
	movl	-288(%rbp), %ecx
	imull	-148(%rbp), %ecx
	addl	%ecx, %eax
	movl	-284(%rbp), %ecx
	addl	-288(%rbp), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%ecx
	movb	%al, %r9b
	movq	-184(%rbp), %rsi
	movb	%r9b, (%rsi)
	movq	-184(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movl	-284(%rbp), %eax
	movq	-184(%rbp), %rsi
	movzbl	(%rsi), %ecx
	imull	%ecx, %eax
	movl	-288(%rbp), %ecx
	imull	-152(%rbp), %ecx
	addl	%ecx, %eax
	movl	-284(%rbp), %ecx
	addl	-288(%rbp), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%ecx
	movb	%al, %r9b
	movq	-184(%rbp), %rsi
	movb	%r9b, (%rsi)
	movq	-184(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movl	-284(%rbp), %eax
	movq	-184(%rbp), %rsi
	movzbl	(%rsi), %ecx
	imull	%ecx, %eax
	movl	-288(%rbp), %ecx
	imull	-156(%rbp), %ecx
	addl	%ecx, %eax
	movl	-284(%rbp), %ecx
	addl	-288(%rbp), %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%ecx
	movb	%al, %r9b
	movq	-184(%rbp), %rsi
	movb	%r9b, (%rsi)
.LBB21_64:                              # %for.inc.279
                                        #   in Loop: Header=BB21_58 Depth=3
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB21_58
.LBB21_65:                              # %for.end.281
                                        #   in Loop: Header=BB21_56 Depth=2
	jmp	.LBB21_66
.LBB21_66:                              # %for.inc.282
                                        #   in Loop: Header=BB21_56 Depth=2
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB21_56
.LBB21_67:                              # %for.end.284
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_68
.LBB21_68:                              # %if.end.285
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_69
.LBB21_69:                              # %if.end.286
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_70
.LBB21_70:                              # %for.inc.287
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB21_16
.LBB21_71:                              # %for.end.289
	cmpl	$0, -92(%rbp)
	jne	.LBB21_73
# BB#72:                                # %if.then.291
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB21_73:                              # %if.end.293
	movq	-216(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	g_free
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ifs_render, .Lfunc_end21-ifs_render
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
.LCPI22_1:
	.quad	4611686018427387904     # double 2
.LCPI22_2:
	.quad	4604544271217802189     # double 0.70710678118654757
.LCPI22_3:
	.quad	4636737291354636288     # double 100
.LCPI22_4:
	.quad	4601778099247172813     # double 0.45000000000000001
.LCPI22_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI22_6:
	.quad	4607182418800017408     # double 1
.LCPI22_7:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	create_brush,@function
create_brush:                           # @create_brush
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
	subq	$112, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_1, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdx
	cvtsi2sdl	12(%rdx), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, -56(%rbp)
	mulsd	-56(%rbp), %xmm1
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-16(%rbp), %rcx
	imull	(%rcx), %eax
	movslq	%eax, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_3 Depth 2
                                        #       Child Loop BB22_9 Depth 3
                                        #         Child Loop BB22_11 Depth 4
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB22_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	$0, -32(%rbp)
.LBB22_3:                               # %for.cond.10
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_9 Depth 3
                                        #         Child Loop BB22_11 Depth 4
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB22_20
# BB#4:                                 # %for.body.13
                                        #   in Loop: Header=BB22_3 Depth=2
	movsd	.LCPI22_2, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -64(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm3
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB22_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB22_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB22_18
.LBB22_6:                               # %if.else
                                        #   in Loop: Header=BB22_3 Depth=2
	movsd	.LCPI22_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_8
# BB#7:                                 # %if.then.31
                                        #   in Loop: Header=BB22_3 Depth=2
	movsd	.LCPI22_6, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB22_17
.LBB22_8:                               # %if.else.32
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	$0, -36(%rbp)
.LBB22_9:                               # %for.cond.33
                                        #   Parent Loop BB22_1 Depth=1
                                        #     Parent Loop BB22_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_11 Depth 4
	cmpl	$10, -36(%rbp)
	jge	.LBB22_16
# BB#10:                                # %for.body.36
                                        #   in Loop: Header=BB22_9 Depth=3
	movl	$0, -40(%rbp)
.LBB22_11:                              # %for.cond.37
                                        #   Parent Loop BB22_1 Depth=1
                                        #     Parent Loop BB22_3 Depth=2
                                        #       Parent Loop BB22_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$10, -40(%rbp)
	jge	.LBB22_14
# BB#12:                                # %for.body.40
                                        #   in Loop: Header=BB22_11 Depth=4
	movsd	.LCPI22_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI22_5, %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm3
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm3
	cvtsi2sdl	-36(%rbp), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	cvtsi2sdl	-28(%rbp), %xmm4
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm4
	cvtsi2sdl	-36(%rbp), %xmm5
	mulsd	%xmm2, %xmm5
	addsd	%xmm5, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm3
	cvtsi2sdl	-32(%rbp), %xmm4
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm4
	cvtsi2sdl	-40(%rbp), %xmm5
	mulsd	%xmm2, %xmm5
	addsd	%xmm5, %xmm4
	subsd	%xmm1, %xmm4
	cvtsi2sdl	-32(%rbp), %xmm5
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm5
	cvtsi2sdl	-40(%rbp), %xmm6
	mulsd	%xmm2, %xmm6
	addsd	%xmm6, %xmm5
	subsd	%xmm1, %xmm5
	mulsd	%xmm5, %xmm4
	addsd	%xmm4, %xmm3
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB22_11 Depth=4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB22_11
.LBB22_14:                              # %for.end
                                        #   in Loop: Header=BB22_9 Depth=3
	jmp	.LBB22_15
.LBB22_15:                              # %for.inc.73
                                        #   in Loop: Header=BB22_9 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB22_9
.LBB22_16:                              # %for.end.75
                                        #   in Loop: Header=BB22_3 Depth=2
	jmp	.LBB22_17
.LBB22_17:                              # %if.end
                                        #   in Loop: Header=BB22_3 Depth=2
	jmp	.LBB22_18
.LBB22_18:                              # %if.end.76
                                        #   in Loop: Header=BB22_3 Depth=2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI22_7(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	imull	(%rdx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#19:                                # %for.inc.81
                                        #   in Loop: Header=BB22_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB22_3
.LBB22_20:                              # %for.end.83
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_21
.LBB22_21:                              # %for.inc.84
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB22_1
.LBB22_22:                              # %for.end.86
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	create_brush, .Lfunc_end22-create_brush
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
