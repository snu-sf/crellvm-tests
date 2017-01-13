	.text
	.file	"gimpcoords-interpolate.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_coords_interpolate_bezier
	.align	16, 0x90
	.type	gimp_coords_interpolate_bezier,@function
gimp_coords_interpolate_bezier:         # @gimp_coords_interpolate_bezier
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
	subq	$320, %rsp              # imm = 0x140
	leaq	208(%rbp), %rax
	leaq	144(%rbp), %rcx
	leaq	80(%rbp), %rdx
	leaq	16(%rbp), %r8
	xorps	%xmm1, %xmm1
	movsd	.LCPI0_0, %xmm2         # xmm2 = mem[0],zero
	movl	$10, %r9d
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movups	(%rax), %xmm3
	movups	16(%rax), %xmm4
	movups	32(%rax), %xmm5
	movups	48(%rax), %xmm6
	movq	%rsp, %rax
	movups	%xmm6, 240(%rax)
	movups	%xmm5, 224(%rax)
	movups	%xmm4, 208(%rax)
	movups	%xmm3, 192(%rax)
	movups	(%rcx), %xmm3
	movups	16(%rcx), %xmm4
	movups	32(%rcx), %xmm5
	movups	48(%rcx), %xmm6
	movups	%xmm6, 176(%rax)
	movups	%xmm5, 160(%rax)
	movups	%xmm4, 144(%rax)
	movups	%xmm3, 128(%rax)
	movups	(%rdx), %xmm3
	movups	16(%rdx), %xmm4
	movups	32(%rdx), %xmm5
	movups	48(%rdx), %xmm6
	movups	%xmm6, 112(%rax)
	movups	%xmm5, 96(%rax)
	movups	%xmm4, 80(%rax)
	movups	%xmm3, 64(%rax)
	movups	(%r8), %xmm3
	movups	16(%r8), %xmm4
	movups	32(%r8), %xmm5
	movups	48(%r8), %xmm6
	movups	%xmm6, 48(%rax)
	movups	%xmm5, 32(%rax)
	movups	%xmm4, 16(%rax)
	movups	%xmm3, (%rax)
	xorps	%xmm3, %xmm3
	movsd	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movl	$10, %edx
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	-32(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm2
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	callq	gimp_coords_interpolate_bezier_internal
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_coords_interpolate_bezier, .Lfunc_end0-gimp_coords_interpolate_bezier
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_coords_interpolate_bezier_internal,@function
gimp_coords_interpolate_bezier_internal: # @gimp_coords_interpolate_bezier_internal
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
	pushq	%rbx
	subq	$968, %rsp              # imm = 0x3C8
.Ltmp6:
	.cfi_offset %rbx, -24
	leaq	208(%rbp), %rax
	leaq	144(%rbp), %rcx
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %r9
	leaq	-576(%rbp), %r10
	movl	$64, %r11d
	movl	%r11d, %ebx
	movsd	.LCPI1_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -584(%rbp)
	movq	%r10, %rsi
	movq	%r9, %rdi
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-648(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rbx, -656(%rbp)        # 8-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	movq	%r8, -672(%rbp)         # 8-byte Spill
	movq	%r9, -680(%rbp)         # 8-byte Spill
	movq	%r10, -688(%rbp)        # 8-byte Spill
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-688(%rbp), %rax        # 8-byte Reload
	addq	$384, %rax              # imm = 0x180
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-656(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-688(%rbp), %rax        # 8-byte Reload
	addq	$64, %rax
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	-672(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	addq	$448, %rax              # imm = 0x1C0
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	addq	$320, %rax              # imm = 0x140
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	-696(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	%rax, %rdx
	addq	$448, %rdx              # imm = 0x1C0
	addq	$128, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$448, %rcx              # imm = 0x1C0
	movq	%rax, %rdx
	addq	$320, %rdx              # imm = 0x140
	addq	$256, %rax              # imm = 0x100
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_average
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$128, %rcx
	movq	%rax, %rdx
	addq	$256, %rdx              # imm = 0x100
	addq	$192, %rax
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	gimp_coords_average
	cmpl	$0, -52(%rbp)
	je	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	%rax, %rdx
	addq	$128, %rdx
	movq	%rax, %rsi
	addq	$192, %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movups	32(%rsi), %xmm3
	movups	48(%rsi), %xmm4
	movq	%rsp, %rsi
	movups	%xmm4, 240(%rsi)
	movups	%xmm3, 224(%rsi)
	movups	%xmm2, 208(%rsi)
	movups	%xmm1, 192(%rsi)
	movups	(%rdx), %xmm1
	movups	16(%rdx), %xmm2
	movups	32(%rdx), %xmm3
	movups	48(%rdx), %xmm4
	movups	%xmm4, 176(%rsi)
	movups	%xmm3, 160(%rsi)
	movups	%xmm2, 144(%rsi)
	movups	%xmm1, 128(%rsi)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 112(%rsi)
	movups	%xmm3, 96(%rsi)
	movups	%xmm2, 80(%rsi)
	movups	%xmm1, 64(%rsi)
	movups	(%rax), %xmm1
	movups	16(%rax), %xmm2
	movups	32(%rax), %xmm3
	movups	48(%rax), %xmm4
	movups	%xmm4, 48(%rsi)
	movups	%xmm3, 32(%rsi)
	movups	%xmm2, 16(%rsi)
	movups	%xmm1, (%rsi)
	callq	gimp_coords_bezier_is_straight
	cmpl	$0, %eax
	je	.LBB1_5
.LBB1_2:                                # %if.then
	movl	$3, %edx
	leaq	-576(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.22
	movl	$3, %edx
	leaq	-608(%rbp), %rax
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -608(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-16(%rbp), %xmm2
	addsd	-584(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -600(%rbp)
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -592(%rbp)
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_4:                                # %if.end
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	%rax, %rdx
	addq	$128, %rdx
	movq	%rax, %rsi
	addq	$192, %rsi
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-24(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	subl	$1, %r9d
	movups	(%rsi), %xmm3
	movups	16(%rsi), %xmm4
	movups	32(%rsi), %xmm5
	movups	48(%rsi), %xmm6
	movq	%rsp, %rsi
	movups	%xmm6, 240(%rsi)
	movups	%xmm5, 224(%rsi)
	movups	%xmm4, 208(%rsi)
	movups	%xmm3, 192(%rsi)
	movups	(%rdx), %xmm3
	movups	16(%rdx), %xmm4
	movups	32(%rdx), %xmm5
	movups	48(%rdx), %xmm6
	movups	%xmm6, 176(%rsi)
	movups	%xmm5, 160(%rsi)
	movups	%xmm4, 144(%rsi)
	movups	%xmm3, 128(%rsi)
	movups	(%rcx), %xmm3
	movups	16(%rcx), %xmm4
	movups	32(%rcx), %xmm5
	movups	48(%rcx), %xmm6
	movups	%xmm6, 112(%rsi)
	movups	%xmm5, 96(%rsi)
	movups	%xmm4, 80(%rsi)
	movups	%xmm3, 64(%rsi)
	movups	(%rax), %xmm3
	movups	16(%rax), %xmm4
	movups	32(%rax), %xmm5
	movups	48(%rax), %xmm6
	movups	%xmm6, 48(%rsi)
	movups	%xmm5, 32(%rsi)
	movups	%xmm4, 16(%rsi)
	movups	%xmm3, (%rsi)
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-704(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%r8, %rsi
	movl	%r9d, %edx
	callq	gimp_coords_interpolate_bezier_internal
.LBB1_6:                                # %if.end.39
	cmpl	$0, -52(%rbp)
	je	.LBB1_8
# BB#7:                                 # %lor.lhs.false.41
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	%rax, %rdx
	addq	$256, %rdx              # imm = 0x100
	movq	%rax, %rsi
	addq	$320, %rsi              # imm = 0x140
	addq	$384, %rax              # imm = 0x180
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movups	(%rax), %xmm1
	movups	16(%rax), %xmm2
	movups	32(%rax), %xmm3
	movups	48(%rax), %xmm4
	movq	%rsp, %rax
	movups	%xmm4, 240(%rax)
	movups	%xmm3, 224(%rax)
	movups	%xmm2, 208(%rax)
	movups	%xmm1, 192(%rax)
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movups	32(%rsi), %xmm3
	movups	48(%rsi), %xmm4
	movups	%xmm4, 176(%rax)
	movups	%xmm3, 160(%rax)
	movups	%xmm2, 144(%rax)
	movups	%xmm1, 128(%rax)
	movups	(%rdx), %xmm1
	movups	16(%rdx), %xmm2
	movups	32(%rdx), %xmm3
	movups	48(%rdx), %xmm4
	movups	%xmm4, 112(%rax)
	movups	%xmm3, 96(%rax)
	movups	%xmm2, 80(%rax)
	movups	%xmm1, 64(%rax)
	movups	(%rcx), %xmm1
	movups	16(%rcx), %xmm2
	movups	32(%rcx), %xmm3
	movups	48(%rcx), %xmm4
	movups	%xmm4, 48(%rax)
	movups	%xmm3, 32(%rax)
	movups	%xmm2, 16(%rax)
	movups	%xmm1, (%rax)
	callq	gimp_coords_bezier_is_straight
	cmpl	$0, %eax
	je	.LBB1_11
.LBB1_8:                                # %if.then.48
	movl	$3, %edx
	leaq	-576(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	addq	$192, %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.52
	movl	$3, %edx
	leaq	-640(%rbp), %rax
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm2, -640(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-584(%rbp), %xmm2
	addsd	-24(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -632(%rbp)
	movsd	-584(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -624(%rbp)
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_10:                               # %if.end.65
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.66
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-576(%rbp), %rax
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	%rax, %rdx
	addq	$256, %rdx              # imm = 0x100
	movq	%rax, %rsi
	addq	$320, %rsi              # imm = 0x140
	addq	$384, %rax              # imm = 0x180
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-24(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	subl	$1, %r9d
	movups	(%rax), %xmm3
	movups	16(%rax), %xmm4
	movups	32(%rax), %xmm5
	movups	48(%rax), %xmm6
	movq	%rsp, %rax
	movups	%xmm6, 240(%rax)
	movups	%xmm5, 224(%rax)
	movups	%xmm4, 208(%rax)
	movups	%xmm3, 192(%rax)
	movups	(%rsi), %xmm3
	movups	16(%rsi), %xmm4
	movups	32(%rsi), %xmm5
	movups	48(%rsi), %xmm6
	movups	%xmm6, 176(%rax)
	movups	%xmm5, 160(%rax)
	movups	%xmm4, 144(%rax)
	movups	%xmm3, 128(%rax)
	movups	(%rdx), %xmm3
	movups	16(%rdx), %xmm4
	movups	32(%rdx), %xmm5
	movups	48(%rdx), %xmm6
	movups	%xmm6, 112(%rax)
	movups	%xmm5, 96(%rax)
	movups	%xmm4, 80(%rax)
	movups	%xmm3, 64(%rax)
	movups	(%rcx), %xmm3
	movups	16(%rcx), %xmm4
	movups	32(%rcx), %xmm5
	movups	48(%rcx), %xmm6
	movups	%xmm6, 48(%rax)
	movups	%xmm5, 32(%rax)
	movups	%xmm4, 16(%rax)
	movups	%xmm3, (%rax)
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-712(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r8, %rsi
	movl	%r9d, %edx
	callq	gimp_coords_interpolate_bezier_internal
.LBB1_12:                               # %if.end.74
	addq	$968, %rsp              # imm = 0x3C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_coords_interpolate_bezier_internal, .Lfunc_end1-gimp_coords_interpolate_bezier_internal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI2_1:
	.quad	4604180019048437077     # double 0.66666666666666663
	.text
	.globl	gimp_coords_bezier_is_straight
	.align	16, 0x90
	.type	gimp_coords_bezier_is_straight,@function
gimp_coords_bezier_is_straight:         # @gimp_coords_bezier_is_straight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	leaq	208(%rbp), %rax
	leaq	144(%rbp), %rdi
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_0, %xmm2         # xmm2 = mem[0],zero
	leaq	-72(%rbp), %rsi
	movsd	%xmm0, -8(%rbp)
	movaps	%xmm1, %xmm0
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movaps	%xmm2, %xmm1
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_coords_mix
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	leaq	-136(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	gimp_coords_mix
	leaq	-72(%rbp), %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	gimp_coords_manhattan_dist
	xorl	%r9d, %r9d
	movb	%r9b, %r10b
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%r10b, -177(%rbp)       # 1-byte Spill
	jbe	.LBB2_2
# BB#1:                                 # %land.rhs
	leaq	-136(%rbp), %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_coords_manhattan_dist
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -177(%rbp)         # 1-byte Spill
.LBB2_2:                                # %land.end
	movb	-177(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_coords_bezier_is_straight, .Lfunc_end2-gimp_coords_bezier_is_straight
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	-4620693217682128896    # double -0.5
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_coords_interpolate_catmull
	.align	16, 0x90
	.type	gimp_coords_interpolate_catmull,@function
gimp_coords_interpolate_catmull:        # @gimp_coords_interpolate_catmull
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	leaq	208(%rbp), %rax
	leaq	144(%rbp), %rcx
	leaq	80(%rbp), %rdx
	leaq	16(%rbp), %r8
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movl	$64, %r9d
	movl	%r9d, %r10d
	leaq	-352(%rbp), %r11
	leaq	-288(%rbp), %rbx
	leaq	-224(%rbp), %r14
	leaq	-160(%rbp), %r15
	movsd	%xmm0, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rdx), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rdx), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	%r15, %rdi
	movq	%r8, %rsi
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%r14, -456(%rbp)        # 8-byte Spill
	movq	%rbx, -464(%rbp)        # 8-byte Spill
	movq	%r11, -472(%rbp)        # 8-byte Spill
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movsd	%xmm1, -496(%rbp)       # 8-byte Spill
	movq	%r10, -504(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -92(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-496(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jb	.LBB3_2
# BB#1:                                 # %if.then
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %if.else
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_4
# BB#3:                                 # %if.then.11
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.13
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	$1, -96(%rbp)
.LBB3_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.LBB3_23
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB3_6 Depth=1
	cvtsi2sdl	-96(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -440(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-288(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-352(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	%xmm0, -416(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-216(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-280(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-344(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	%xmm0, -408(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-336(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -432(%rbp)
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	jmp	.LBB3_13
.LBB3_9:                                # %cond.false
                                        #   in Loop: Header=BB3_6 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-432(%rbp), %xmm0
	jbe	.LBB3_11
# BB#10:                                # %cond.true.42
                                        #   in Loop: Header=BB3_6 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false.43
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
.LBB3_12:                               # %cond.end
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	-520(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
.LBB3_13:                               # %cond.end.44
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	-512(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-200(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-264(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-328(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	%xmm0, -392(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-256(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-320(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	%xmm0, -384(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-248(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-312(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	%xmm0, -376(%rbp)
	movsd	-440(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-240(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-304(%rbp), %xmm4       # xmm4 = mem[0],zero
	callq	gimp_coords_get_catmull_spline_point
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -424(%rbp)
	movsd	-424(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_15
# BB#14:                                # %cond.true.69
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
	jmp	.LBB3_19
.LBB3_15:                               # %cond.false.70
                                        #   in Loop: Header=BB3_6 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-424(%rbp), %xmm0
	jbe	.LBB3_17
# BB#16:                                # %cond.true.73
                                        #   in Loop: Header=BB3_6 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.74
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	-424(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
.LBB3_18:                               # %cond.end.75
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	-536(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
.LBB3_19:                               # %cond.end.77
                                        #   in Loop: Header=BB3_6 Depth=1
	movsd	-528(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %edx
	leaq	-416(%rbp), %rax
	movsd	%xmm0, -368(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-96(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -360(%rbp)
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-360(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movl	%edx, -556(%rbp)        # 4-byte Spill
	callq	floor
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -360(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rsi
	movl	-556(%rbp), %edx        # 4-byte Reload
	callq	g_array_append_vals
	cmpq	$0, -48(%rbp)
	movq	%rax, -568(%rbp)        # 8-byte Spill
	je	.LBB3_21
# BB#20:                                # %if.then.91
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$1, %edx
	leaq	-440(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB3_21:                               # %if.end.93
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB3_6
.LBB3_23:                               # %for.end
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_coords_interpolate_catmull, .Lfunc_end3-gimp_coords_interpolate_catmull
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4616189618054758400     # double 4
.LCPI4_3:
	.quad	-4609434218613702656    # double -3
.LCPI4_4:
	.quad	4617315517961601024     # double 5
.LCPI4_5:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_coords_get_catmull_spline_point,@function
gimp_coords_get_catmull_spline_point:   # @gimp_coords_get_catmull_spline_point
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
	movsd	.LCPI4_0, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI4_1, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI4_2, %xmm7         # xmm7 = mem[0],zero
	movsd	.LCPI4_3, %xmm8         # xmm8 = mem[0],zero
	movsd	.LCPI4_4, %xmm9         # xmm9 = mem[0],zero
	movsd	.LCPI4_5, %xmm10        # xmm10 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	%xmm5, %xmm0
	mulsd	-8(%rbp), %xmm0
	subsd	%xmm6, %xmm0
	mulsd	-8(%rbp), %xmm0
	divsd	%xmm5, %xmm0
	mulsd	-16(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm10
	subsd	%xmm9, %xmm10
	mulsd	-8(%rbp), %xmm10
	mulsd	-8(%rbp), %xmm10
	addsd	%xmm5, %xmm10
	divsd	%xmm5, %xmm10
	mulsd	-24(%rbp), %xmm10
	addsd	%xmm10, %xmm0
	mulsd	-8(%rbp), %xmm8
	addsd	%xmm7, %xmm8
	mulsd	-8(%rbp), %xmm8
	addsd	%xmm6, %xmm8
	mulsd	-8(%rbp), %xmm8
	divsd	%xmm5, %xmm8
	mulsd	-32(%rbp), %xmm8
	addsd	%xmm8, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm6, %xmm1
	mulsd	-8(%rbp), %xmm1
	mulsd	-8(%rbp), %xmm1
	divsd	%xmm5, %xmm1
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_coords_get_catmull_spline_point, .Lfunc_end4-gimp_coords_get_catmull_spline_point
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
