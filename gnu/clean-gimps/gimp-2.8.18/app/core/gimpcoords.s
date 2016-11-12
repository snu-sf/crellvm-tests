	.text
	.file	"gimpcoords.bc"
	.globl	gimp_coords_mix
	.align	16, 0x90
	.type	gimp_coords_mix,@function
gimp_coords_mix:                        # @gimp_coords_mix
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
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	32(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	40(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	40(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	48(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	48(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	56(%rax), %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	56(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	40(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	48(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	56(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB0_3:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_coords_mix, .Lfunc_end0-gimp_coords_mix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_coords_average
	.align	16, 0x90
	.type	gimp_coords_average,@function
gimp_coords_average:                    # @gimp_coords_average
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
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_coords_average, .Lfunc_end1-gimp_coords_average
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_coords_add
	.align	16, 0x90
	.type	gimp_coords_add,@function
gimp_coords_add:                        # @gimp_coords_add
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
	subq	$32, %rsp
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_coords_mix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_coords_add, .Lfunc_end2-gimp_coords_add
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_coords_difference
	.align	16, 0x90
	.type	gimp_coords_difference,@function
gimp_coords_difference:                 # @gimp_coords_difference
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
	subq	$32, %rsp
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_coords_mix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_coords_difference, .Lfunc_end3-gimp_coords_difference
	.cfi_endproc

	.globl	gimp_coords_scale
	.align	16, 0x90
	.type	gimp_coords_scale,@function
gimp_coords_scale:                      # @gimp_coords_scale
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	callq	gimp_coords_mix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_coords_scale, .Lfunc_end4-gimp_coords_scale
	.cfi_endproc

	.globl	gimp_coords_scalarprod
	.align	16, 0x90
	.type	gimp_coords_scalarprod,@function
gimp_coords_scalarprod:                 # @gimp_coords_scalarprod
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
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	32(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	32(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	40(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	40(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	48(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	56(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	56(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_coords_scalarprod, .Lfunc_end5-gimp_coords_scalarprod
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gimp_coords_length_squared
	.align	16, 0x90
	.type	gimp_coords_length_squared,@function
gimp_coords_length_squared:             # @gimp_coords_length_squared
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
	subq	$80, %rsp
	leaq	-72(%rbp), %rax
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	16(%rdi), %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	24(%rdi), %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	32(%rdi), %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	40(%rdi), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	48(%rdi), %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	56(%rdi), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_coords_scalarprod
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_coords_length_squared, .Lfunc_end6-gimp_coords_length_squared
	.cfi_endproc

	.globl	gimp_coords_length
	.align	16, 0x90
	.type	gimp_coords_length,@function
gimp_coords_length:                     # @gimp_coords_length
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_coords_length_squared
	callq	sqrt
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_coords_length, .Lfunc_end7-gimp_coords_length
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gimp_coords_manhattan_dist
	.align	16, 0x90
	.type	gimp_coords_manhattan_dist,@function
gimp_coords_manhattan_dist:             # @gimp_coords_manhattan_dist
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	16(%rsi), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB8_3:                                # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	24(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_5
# BB#4:                                 # %cond.true.12
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	24(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false.17
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	24(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB8_6:                                # %cond.end.21
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	32(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_8
# BB#7:                                 # %cond.true.27
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	32(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB8_9
.LBB8_8:                                # %cond.false.32
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	32(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB8_9:                                # %cond.end.36
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	40(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_11
# BB#10:                                # %cond.true.42
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	40(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false.47
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	40(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB8_12:                               # %cond.end.51
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	48(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_14
# BB#13:                                # %cond.true.57
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	48(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false.62
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB8_15:                               # %cond.end.66
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	56(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_17
# BB#16:                                # %cond.true.72
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	56(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_18
.LBB8_17:                               # %cond.false.77
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB8_18:                               # %cond.end.81
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_0, %xmm2         # xmm2 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	mulsd	-24(%rbp), %xmm2
	movsd	%xmm2, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_20
# BB#19:                                # %cond.true.87
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB8_21
.LBB8_20:                               # %cond.false.92
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB8_21:                               # %cond.end.96
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_23
# BB#22:                                # %cond.true.102
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false.107
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB8_24:                               # %cond.end.111
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_coords_manhattan_dist, .Lfunc_end8-gimp_coords_manhattan_dist
	.cfi_endproc

	.globl	gimp_coords_equal
	.align	16, 0x90
	.type	gimp_coords_equal,@function
gimp_coords_equal:                      # @gimp_coords_equal
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	ucomisd	(%rsi), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	ucomisd	8(%rdx), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#2:                                 # %land.lhs.true.4
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	ucomisd	16(%rdx), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#3:                                 # %land.lhs.true.7
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	ucomisd	24(%rdx), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#4:                                 # %land.lhs.true.10
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsd	32(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	ucomisd	32(%rdx), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#5:                                 # %land.lhs.true.13
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsd	40(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	ucomisd	40(%rdx), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#6:                                 # %land.lhs.true.16
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsd	48(%rdx), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	ucomisd	48(%rdx), %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB9_8
	jp	.LBB9_8
# BB#7:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	56(%rax), %xmm0
	sete	%cl
	setnp	%dl
	andb	%dl, %cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB9_8:                                # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_coords_equal, .Lfunc_end9-gimp_coords_equal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI10_1:
	.quad	-4616189618054758400    # double -1
.LCPI10_2:
	.quad	4602678819172646912     # double 0.5
.LCPI10_3:
	.quad	4607182418800017408     # double 1
.LCPI10_4:
	.quad	4604930618986332160     # double 0.75
.LCPI10_5:
	.quad	4598175219545276416     # double 0.25
	.text
	.globl	gimp_coords_direction
	.align	16, 0x90
	.type	gimp_coords_direction,@function
gimp_coords_direction:                  # @gimp_coords_direction
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
	subq	$48, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	(%rsi), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	8(%rsi), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_3
	jp	.LBB10_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_3
	jp	.LBB10_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB10_20
.LBB10_3:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_8
	jp	.LBB10_8
# BB#4:                                 # %if.then.7
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_6
# BB#5:                                 # %if.then.9
	movsd	.LCPI10_5, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.10
	movsd	.LCPI10_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_19
.LBB10_8:                               # %if.else.11
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_13
	jp	.LBB10_13
# BB#9:                                 # %if.then.13
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB10_11
# BB#10:                                # %if.then.15
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.16
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB10_12:                              # %if.end.17
	jmp	.LBB10_18
.LBB10_13:                              # %if.else.18
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	callq	atan
	xorps	%xmm1, %xmm1
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_15
# BB#14:                                # %if.then.21
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB10_15:                              # %if.end.22
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB10_17
# BB#16:                                # %if.then.24
	movsd	.LCPI10_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB10_17:                              # %if.end.26
	jmp	.LBB10_18
.LBB10_18:                              # %if.end.27
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.28
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.29
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_coords_direction, .Lfunc_end10-gimp_coords_direction
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
