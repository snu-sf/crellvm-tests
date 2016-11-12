	.text
	.file	"gsmatrix.bc"
	.globl	gs_make_identity
	.align	16, 0x90
	.type	gs_make_identity,@function
gs_make_identity:                       # @gs_make_identity
	.cfi_startproc
# BB#0:                                 # %entry
	movq	gs_identity_matrix+16(%rip), %rax
	movq	%rax, 16(%rdi)
	movups	gs_identity_matrix(%rip), %xmm0
	movups	%xmm0, (%rdi)
	retq
.Lfunc_end0:
	.size	gs_make_identity, .Lfunc_end0-gs_make_identity
	.cfi_endproc

	.globl	gs_make_translation
	.align	16, 0x90
	.type	gs_make_translation,@function
gs_make_translation:                    # @gs_make_translation
	.cfi_startproc
# BB#0:                                 # %entry
	movl	gs_identity_matrix+16(%rip), %eax
	movl	%eax, 16(%rdi)
	movups	gs_identity_matrix(%rip), %xmm2
	movups	%xmm2, (%rdi)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 20(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	gs_make_translation, .Lfunc_end1-gs_make_translation
	.cfi_endproc

	.globl	gs_make_scaling
	.align	16, 0x90
	.type	gs_make_scaling,@function
gs_make_scaling:                        # @gs_make_scaling
	.cfi_startproc
# BB#0:                                 # %entry
	movq	gs_identity_matrix+16(%rip), %rax
	movq	%rax, 16(%rdi)
	movups	gs_identity_matrix(%rip), %xmm2
	movups	%xmm2, (%rdi)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 12(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gs_make_scaling, .Lfunc_end2-gs_make_scaling
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gs_make_rotation
	.align	16, 0x90
	.type	gs_make_rotation,@function
gs_make_rotation:                       # @gs_make_rotation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 48
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	gs_sincos_degrees
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	movss	%xmm0, 12(%rbx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rbx)
	xorps	.LCPI3_0(%rip), %xmm0
	movss	%xmm0, 8(%rbx)
	movq	$0, 16(%rbx)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	gs_make_rotation, .Lfunc_end3-gs_make_rotation
	.cfi_endproc

	.globl	gs_matrix_multiply
	.align	16, 0x90
	.type	gs_matrix_multiply,@function
gs_matrix_multiply:                     # @gs_matrix_multiply
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movss	12(%rdi), %xmm10        # xmm10 = mem[0],zero,zero,zero
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm12
	movss	20(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm13
	movss	(%rsi), %xmm11          # xmm11 = mem[0],zero,zero,zero
	movss	4(%rsi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm11, %xmm6
	movss	12(%rsi), %xmm9         # xmm9 = mem[0],zero,zero,zero
	cvtss2sd	%xmm9, %xmm5
	cvtss2sd	%xmm3, %xmm8
	movss	8(%rsi), %xmm14         # xmm14 = mem[0],zero,zero,zero
	cvtss2sd	%xmm14, %xmm15
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm7, %xmm7
	ucomiss	%xmm7, %xmm2
	jne	.LBB4_8
	jp	.LBB4_8
# BB#1:                                 # %entry
	ucomiss	%xmm7, %xmm0
	jne	.LBB4_8
	jp	.LBB4_8
# BB#2:                                 # %if.then
	mulsd	%xmm12, %xmm6
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, 16(%rdx)
	mulsd	%xmm13, %xmm5
	movss	20(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm5, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	xorpd	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm3
	jne	.LBB4_4
	jp	.LBB4_4
# BB#3:
	xorps	%xmm3, %xmm3
	jmp	.LBB4_5
.LBB4_8:                                # %if.else.59
	cvtss2sd	%xmm4, %xmm4
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm10, %xmm3
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm4, %xmm7
	mulsd	%xmm6, %xmm7
	movapd	%xmm15, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm7, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rdx)
	mulsd	%xmm8, %xmm4
	mulsd	%xmm5, %xmm2
	addsd	%xmm4, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 4(%rdx)
	movapd	%xmm8, %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm3, %xmm2
	mulsd	%xmm5, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 12(%rdx)
	mulsd	%xmm6, %xmm0
	mulsd	%xmm15, %xmm3
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 8(%rdx)
	mulsd	%xmm12, %xmm6
	mulsd	%xmm13, %xmm15
	addsd	%xmm6, %xmm15
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm15, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdx)
	mulsd	%xmm8, %xmm12
	mulsd	%xmm5, %xmm13
	addsd	%xmm12, %xmm13
	movss	20(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm13, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rdx)
	xorl	%eax, %eax
	retq
.LBB4_4:                                # %if.else
	mulss	%xmm4, %xmm3
	mulsd	%xmm8, %xmm12
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	addsd	%xmm12, %xmm0
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm2
.LBB4_5:                                # %if.end
	movss	%xmm2, 20(%rdx)
	movss	%xmm3, 4(%rdx)
	mulss	%xmm11, %xmm4
	movss	%xmm4, (%rdx)
	ucomiss	%xmm5, %xmm14
	jne	.LBB4_6
	jnp	.LBB4_7
.LBB4_6:                                # %if.else.46
	mulss	%xmm10, %xmm14
	mulsd	%xmm15, %xmm13
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm6, %xmm0
	addsd	%xmm13, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdx)
	movaps	%xmm14, %xmm5
.LBB4_7:                                # %if.end.55
	movss	%xmm5, 8(%rdx)
	mulss	%xmm9, %xmm10
	movss	%xmm10, 12(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gs_matrix_multiply, .Lfunc_end4-gs_matrix_multiply
	.cfi_endproc

	.globl	gs_matrix_multiply_double
	.align	16, 0x90
	.type	gs_matrix_multiply_double,@function
gs_matrix_multiply_double:              # @gs_matrix_multiply_double
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rdi), %xmm4           # xmm4 = mem[0],zero
	movsd	8(%rdi), %xmm6          # xmm6 = mem[0],zero
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movupd	32(%rdi), %xmm13
	movq	(%rsi), %xmm5           # xmm5 = mem[0],zero
	cvtps2pd	%xmm5, %xmm2
	movq	8(%rsi), %xmm10         # xmm10 = mem[0],zero
	cvtps2pd	%xmm10, %xmm0
	movsd	16(%rdi), %xmm3         # xmm3 = mem[0],zero
	xorps	%xmm7, %xmm7
	ucomisd	%xmm7, %xmm6
	jne	.LBB5_8
	jp	.LBB5_8
# BB#1:                                 # %entry
	ucomisd	%xmm7, %xmm3
	jne	.LBB5_8
	jp	.LBB5_8
# BB#2:                                 # %if.then
	movapd	%xmm13, %xmm3
	mulsd	%xmm2, %xmm3
	movss	16(%rsi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm8
	addsd	%xmm3, %xmm8
	movsd	%xmm8, 32(%rdx)
	movapd	%xmm0, %xmm11
	shufpd	$1, %xmm11, %xmm11      # xmm11 = xmm11[1,0]
	movapd	%xmm13, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movapd	%xmm3, %xmm7
	mulsd	%xmm11, %xmm7
	movss	20(%rsi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm6
	addsd	%xmm7, %xmm6
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	xorpd	%xmm9, %xmm9
	xorps	%xmm12, %xmm12
	ucomiss	%xmm12, %xmm5
	jne	.LBB5_4
	jp	.LBB5_4
# BB#3:
	xorps	%xmm5, %xmm5
	jmp	.LBB5_5
.LBB5_8:                                # %if.else.45
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	mulpd	%xmm2, %xmm4
	movlhps	%xmm6, %xmm6            # xmm6 = xmm6[0,0]
	mulpd	%xmm0, %xmm6
	addpd	%xmm4, %xmm6
	movupd	%xmm6, (%rdx)
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	mulpd	%xmm2, %xmm3
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm0, %xmm1
	addpd	%xmm3, %xmm1
	movupd	%xmm1, 16(%rdx)
	movapd	%xmm13, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movapd	%xmm2, %xmm3
	movsd	%xmm0, %xmm3            # xmm3 = xmm0[0],xmm3[1]
	mulpd	%xmm1, %xmm3
	movsd	%xmm2, %xmm0            # xmm0 = xmm2[0],xmm0[1]
	mulpd	%xmm13, %xmm0
	addpd	%xmm3, %xmm0
	cvtps2pd	16(%rsi), %xmm1
	addpd	%xmm0, %xmm1
	movupd	%xmm1, 32(%rdx)
	xorl	%eax, %eax
	retq
.LBB5_4:                                # %if.else
	movapd	%xmm2, %xmm7
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	movapd	%xmm4, %xmm5
	mulsd	%xmm7, %xmm5
	mulsd	%xmm13, %xmm7
	addsd	%xmm7, %xmm6
.LBB5_5:                                # %if.end
	movsd	%xmm6, 40(%rdx)
	movsd	%xmm5, 8(%rdx)
	mulsd	%xmm2, %xmm4
	movsd	%xmm4, (%rdx)
	ucomiss	%xmm12, %xmm10
	jne	.LBB5_6
	jnp	.LBB5_7
.LBB5_6:                                # %if.else.36
	movapd	%xmm1, %xmm9
	mulsd	%xmm0, %xmm9
	mulsd	%xmm0, %xmm3
	addsd	%xmm8, %xmm3
	movsd	%xmm3, 32(%rdx)
.LBB5_7:                                # %if.end.42
	movsd	%xmm9, 16(%rdx)
	mulsd	%xmm11, %xmm1
	movsd	%xmm1, 24(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gs_matrix_multiply_double, .Lfunc_end5-gs_matrix_multiply_double
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_matrix_invert
	.align	16, 0x90
	.type	gs_matrix_invert,@function
gs_matrix_invert:                       # @gs_matrix_invert
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm9           # xmm9 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm1
	jne	.LBB6_5
	jp	.LBB6_5
# BB#1:                                 # %entry
	ucomiss	%xmm5, %xmm2
	jne	.LBB6_5
	jp	.LBB6_5
# BB#2:                                 # %if.then
	movl	$-23, %eax
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm9
	jne	.LBB6_3
	jnp	.LBB6_8
.LBB6_3:                                # %lor.lhs.false
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jne	.LBB6_4
	jnp	.LBB6_8
.LBB6_4:                                # %if.end
	movss	.LCPI6_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	divss	%xmm9, %xmm3
	movss	%xmm3, (%rsi)
	mulss	16(%rdi), %xmm3
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm3
	movss	%xmm3, 16(%rsi)
	movl	$0, 4(%rsi)
	movl	$0, 8(%rsi)
	divss	%xmm1, %xmm2
	movss	%xmm2, 12(%rsi)
	mulss	20(%rdi), %xmm2
	xorps	%xmm0, %xmm2
	movss	%xmm2, 20(%rsi)
	jmp	.LBB6_7
.LBB6_5:                                # %if.else
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm9, %xmm3
	mulss	%xmm0, %xmm3
	movaps	%xmm1, %xmm6
	mulss	%xmm2, %xmm6
	subss	%xmm6, %xmm3
	movl	$-23, %eax
	ucomiss	%xmm5, %xmm3
	jne	.LBB6_6
	jnp	.LBB6_8
.LBB6_6:                                # %if.end.40
	movss	16(%rdi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movss	20(%rdi), %xmm8         # xmm8 = mem[0],zero,zero,zero
	movaps	.LCPI6_0(%rip), %xmm7   # xmm7 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm1, %xmm6
	xorps	%xmm7, %xmm6
	xorps	%xmm2, %xmm7
	unpcklps	%xmm9, %xmm6    # xmm6 = xmm6[0],xmm9[0],xmm6[1],xmm9[1]
	movaps	%xmm0, %xmm4
	unpcklps	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	unpcklps	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	movaps	%xmm3, %xmm6
	shufps	$0, %xmm6, %xmm6        # xmm6 = xmm6[0,0,0,0]
	divps	%xmm6, %xmm4
	movups	%xmm4, (%rsi)
	mulss	%xmm8, %xmm2
	mulss	%xmm5, %xmm0
	subss	%xmm0, %xmm2
	divss	%xmm3, %xmm2
	movss	%xmm2, 16(%rsi)
	mulss	%xmm5, %xmm1
	mulss	%xmm8, %xmm9
	subss	%xmm9, %xmm1
	divss	%xmm3, %xmm1
	movss	%xmm1, 20(%rsi)
.LBB6_7:                                # %return
	xorl	%eax, %eax
.LBB6_8:                                # %return
	retq
.Lfunc_end6:
	.size	gs_matrix_invert, .Lfunc_end6-gs_matrix_invert
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI7_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.globl	gs_matrix_invert_to_double
	.align	16, 0x90
	.type	gs_matrix_invert_to_double,@function
gs_matrix_invert_to_double:             # @gs_matrix_invert_to_double
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm0
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm1
	jne	.LBB7_5
	jp	.LBB7_5
# BB#1:                                 # %entry
	ucomiss	%xmm3, %xmm4
	jne	.LBB7_5
	jp	.LBB7_5
# BB#2:                                 # %if.then
	movl	$-23, %eax
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB7_3
	jnp	.LBB7_8
.LBB7_3:                                # %lor.lhs.false
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm1
	jne	.LBB7_4
	jnp	.LBB7_8
.LBB7_4:                                # %if.end
	cvtss2sd	%xmm1, %xmm1
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	movapd	.LCPI7_1(%rip), %xmm1   # xmm1 = [1.000000e+00,1.000000e+00]
	divpd	%xmm0, %xmm1
	movlpd	%xmm1, (%rsi)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 8(%rsi)
	movhpd	%xmm1, 24(%rsi)
	cvtps2pd	16(%rdi), %xmm0
	mulpd	%xmm1, %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	movupd	%xmm0, 32(%rsi)
	jmp	.LBB7_7
.LBB7_5:                                # %if.else
	movss	12(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm3
	unpcklps	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	cvtps2pd	%xmm4, %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	movapd	%xmm1, %xmm4
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	movapd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	subsd	%xmm5, %xmm2
	movl	$-23, %eax
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm2
	jne	.LBB7_6
	jnp	.LBB7_8
.LBB7_6:                                # %if.end.45
	movss	16(%rdi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	movss	20(%rdi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	cvtps2pd	%xmm6, %xmm5
	movapd	.LCPI7_0(%rip), %xmm6   # xmm6 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm6, %xmm4
	movapd	%xmm3, %xmm7
	unpcklpd	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0]
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	divpd	%xmm2, %xmm7
	movupd	%xmm7, (%rsi)
	xorpd	%xmm1, %xmm6
	unpcklpd	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0]
	divpd	%xmm2, %xmm6
	movupd	%xmm6, 16(%rsi)
	mulpd	%xmm5, %xmm1
	unpcklpd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0]
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	mulpd	%xmm3, %xmm5
	subpd	%xmm5, %xmm1
	divpd	%xmm2, %xmm1
	movupd	%xmm1, 32(%rsi)
.LBB7_7:                                # %return
	xorl	%eax, %eax
.LBB7_8:                                # %return
	retq
.Lfunc_end7:
	.size	gs_matrix_invert_to_double, .Lfunc_end7-gs_matrix_invert_to_double
	.cfi_endproc

	.globl	gs_matrix_translate
	.align	16, 0x90
	.type	gs_matrix_translate,@function
gs_matrix_translate:                    # @gs_matrix_translate
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm5          # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm3
	mulsd	%xmm0, %xmm3
	movss	12(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm5
	jne	.LBB8_1
	jnp	.LBB8_2
.LBB8_1:                                # %if.then.i
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm1, %xmm5
	addsd	%xmm5, %xmm3
.LBB8_2:                                # %if.end.i
	mulsd	%xmm1, %xmm2
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm1
	jne	.LBB8_3
	jnp	.LBB8_4
.LBB8_3:                                # %if.then.12.i
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
.LBB8_4:                                # %gs_distance_transform.exit
	cmpq	%rdi, %rsi
	je	.LBB8_6
# BB#5:                                 # %if.then.2
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsi)
	movupd	(%rdi), %xmm0
	movupd	%xmm0, (%rsi)
.LBB8_6:                                # %if.end.3
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 16(%rsi)
	movss	20(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 20(%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	gs_matrix_translate, .Lfunc_end8-gs_matrix_translate
	.cfi_endproc

	.globl	gs_distance_transform
	.align	16, 0x90
	.type	gs_distance_transform,@function
gs_distance_transform:                  # @gs_distance_transform
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	cvtps2pd	%xmm2, %xmm3
	movapd	%xmm0, %xmm2
	unpcklpd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	mulpd	%xmm3, %xmm2
	movupd	%xmm2, (%rsi)
	movss	8(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm4
	jne	.LBB9_1
	jnp	.LBB9_2
.LBB9_1:                                # %if.then
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm2, %xmm4
	movsd	%xmm4, (%rsi)
.LBB9_2:                                # %if.end
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm1
	jne	.LBB9_3
	jnp	.LBB9_4
.LBB9_3:                                # %if.then.12
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 8(%rsi)
.LBB9_4:                                # %if.end.18
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	gs_distance_transform, .Lfunc_end9-gs_distance_transform
	.cfi_endproc

	.globl	gs_matrix_scale
	.align	16, 0x90
	.type	gs_matrix_scale,@function
gs_matrix_scale:                        # @gs_matrix_scale
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, (%rsi)
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsi)
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rsi)
	cmpq	%rdi, %rsi
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	16(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	20(%rdi), %eax
	movl	%eax, 20(%rsi)
.LBB10_2:                               # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	gs_matrix_scale, .Lfunc_end10-gs_matrix_scale
	.cfi_endproc

	.globl	gs_matrix_rotate
	.align	16, 0x90
	.type	gs_matrix_rotate,@function
gs_matrix_rotate:                       # @gs_matrix_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 48
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	callq	gs_sincos_degrees
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	(%rsp), %xmm4           # xmm4 = mem[0],zero
	movsd	8(%rsp), %xmm2          # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm5
	mulsd	%xmm2, %xmm5
	movss	8(%rbx), %xmm3          # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movapd	%xmm0, %xmm6
	movapd	%xmm4, %xmm7
	mulsd	%xmm4, %xmm1
	mulsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm4
	addsd	%xmm5, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	movss	%xmm4, (%r14)
	mulsd	%xmm2, %xmm6
	movss	12(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm4, %xmm7
	addsd	%xmm6, %xmm7
	cvtsd2ss	%xmm7, %xmm5
	movss	%xmm5, 4(%r14)
	mulsd	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
	movss	%xmm1, 8(%r14)
	mulsd	%xmm4, %xmm2
	subsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 12(%r14)
	cmpq	%rbx, %r14
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	16(%rbx), %eax
	movl	%eax, 16(%r14)
	movl	20(%rbx), %eax
	movl	%eax, 20(%r14)
.LBB11_2:                               # %if.end
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	gs_matrix_rotate, .Lfunc_end11-gs_matrix_rotate
	.cfi_endproc

	.globl	gs_point_transform
	.align	16, 0x90
	.type	gs_point_transform,@function
gs_point_transform:                     # @gs_point_transform
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	cvtps2pd	%xmm2, %xmm2
	movapd	%xmm0, %xmm3
	unpcklpd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0]
	mulpd	%xmm2, %xmm3
	cvtpd2ps	%xmm3, %xmm2
	movq	16(%rdi), %xmm3         # xmm3 = mem[0],zero
	addps	%xmm2, %xmm3
	cvtps2pd	%xmm3, %xmm2
	movupd	%xmm2, (%rsi)
	movss	8(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm4
	jne	.LBB12_1
	jnp	.LBB12_2
.LBB12_1:                               # %if.then
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm1, %xmm4
	cvtsd2ss	%xmm4, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, (%rsi)
.LBB12_2:                               # %if.end
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm1
	jne	.LBB12_3
	jnp	.LBB12_4
.LBB12_3:                               # %if.then.22
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%rsi)
.LBB12_4:                               # %if.end.30
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	gs_point_transform, .Lfunc_end12-gs_point_transform
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_point_transform_inverse
	.align	16, 0x90
	.type	gs_point_transform_inverse,@function
gs_point_transform_inverse:             # @gs_point_transform_inverse
	.cfi_startproc
# BB#0:                                 # %entry
	movss	4(%rdi), %xmm7          # xmm7 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm7
	jne	.LBB13_5
	jp	.LBB13_5
# BB#1:                                 # %land.lhs.true
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jne	.LBB13_5
	jp	.LBB13_5
# BB#2:                                 # %if.then
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movl	$-23, %eax
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm2
	jne	.LBB13_3
	jnp	.LBB13_21
.LBB13_3:                               # %lor.lhs.false
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jne	.LBB13_4
	jnp	.LBB13_21
.LBB13_4:                               # %if.end
	cvtss2sd	%xmm2, %xmm2
	cvtps2pd	16(%rdi), %xmm4
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	subpd	%xmm4, %xmm0
	cvtss2sd	%xmm3, %xmm1
	unpcklpd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	divpd	%xmm2, %xmm0
	movupd	%xmm0, (%rsi)
	xorl	%eax, %eax
	retq
.LBB13_5:                               # %if.else
	movss	(%rdi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jne	.LBB13_10
	jp	.LBB13_10
# BB#6:                                 # %land.lhs.true.26
	movss	12(%rdi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm5
	jne	.LBB13_10
	jp	.LBB13_10
# BB#7:                                 # %if.then.31
	movl	$-23, %eax
	ucomiss	%xmm4, %xmm7
	jne	.LBB13_8
	jnp	.LBB13_21
.LBB13_8:                               # %lor.lhs.false.36
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm3
	jne	.LBB13_9
	jnp	.LBB13_21
.LBB13_9:                               # %if.end.42
	cvtss2sd	%xmm7, %xmm2
	movss	16(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	20(%rdi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	cvtps2pd	%xmm5, %xmm4
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	subpd	%xmm4, %xmm1
	cvtss2sd	%xmm3, %xmm0
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	divpd	%xmm2, %xmm1
	movupd	%xmm1, (%rsi)
	xorl	%eax, %eax
	retq
.LBB13_10:                              # %if.else.57
	movss	8(%rdi), %xmm5          # xmm5 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm7
	jne	.LBB13_15
	jp	.LBB13_15
# BB#11:                                # %if.else.57
	ucomiss	%xmm4, %xmm5
	jne	.LBB13_15
	jp	.LBB13_15
# BB#12:                                # %if.then.i
	movl	$-23, %eax
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm3
	jne	.LBB13_13
	jnp	.LBB13_21
.LBB13_13:                              # %lor.lhs.false.i
	movss	12(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm2
	jne	.LBB13_14
	jnp	.LBB13_21
.LBB13_14:                              # %if.end.i
	movss	.LCPI13_1(%rip), %xmm8  # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm8, %xmm5
	divss	%xmm2, %xmm5
	divss	%xmm3, %xmm8
	unpcklps	%xmm5, %xmm8    # xmm8 = xmm8[0],xmm5[0],xmm8[1],xmm5[1]
	movq	16(%rdi), %xmm3         # xmm3 = mem[0],zero
	mulps	%xmm8, %xmm3
	xorps	.LCPI13_0(%rip), %xmm3
	xorps	%xmm2, %xmm2
	jmp	.LBB13_17
.LBB13_15:                              # %if.else.i
	movss	12(%rdi), %xmm8         # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm6
	mulss	%xmm8, %xmm6
	movaps	%xmm7, %xmm2
	mulss	%xmm5, %xmm2
	subss	%xmm2, %xmm6
	movl	$-23, %eax
	ucomiss	%xmm4, %xmm6
	jne	.LBB13_16
	jnp	.LBB13_21
.LBB13_16:                              # %if.end.40.i
	movss	16(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	20(%rdi), %xmm9         # xmm9 = mem[0],zero,zero,zero
	unpcklps	%xmm7, %xmm5    # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1]
	movaps	.LCPI13_0(%rip), %xmm7  # xmm7 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm7
	movaps	%xmm7, %xmm2
	divss	%xmm6, %xmm2
	shufps	$229, %xmm7, %xmm7      # xmm7 = xmm7[1,1,2,3]
	divss	%xmm6, %xmm7
	unpcklps	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	movaps	%xmm8, %xmm10
	unpcklps	%xmm3, %xmm10   # xmm10 = xmm10[0],xmm3[0],xmm10[1],xmm3[1]
	divss	%xmm6, %xmm3
	divss	%xmm6, %xmm8
	unpcklps	%xmm3, %xmm8    # xmm8 = xmm8[0],xmm3[0],xmm8[1],xmm3[1]
	movaps	%xmm9, %xmm7
	unpcklps	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	mulps	%xmm5, %xmm7
	unpcklps	%xmm9, %xmm4    # xmm4 = xmm4[0],xmm9[0],xmm4[1],xmm9[1]
	mulps	%xmm10, %xmm4
	subps	%xmm4, %xmm7
	movaps	%xmm7, %xmm3
	divss	%xmm6, %xmm3
	shufps	$229, %xmm7, %xmm7      # xmm7 = xmm7[1,1,2,3]
	divss	%xmm6, %xmm7
	unpcklps	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
.LBB13_17:                              # %if.end.61
	cvtps2pd	%xmm8, %xmm4
	movapd	%xmm0, %xmm5
	unpcklpd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0]
	mulpd	%xmm4, %xmm5
	cvtpd2ps	%xmm5, %xmm4
	addps	%xmm3, %xmm4
	cvtps2pd	%xmm4, %xmm3
	movupd	%xmm3, (%rsi)
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm2
	jne	.LBB13_18
	jnp	.LBB13_19
.LBB13_18:                              # %if.then.i.34
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm2, %xmm5
	mulsd	%xmm1, %xmm5
	cvtsd2ss	%xmm5, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm3, %xmm1
	movsd	%xmm1, (%rsi)
.LBB13_19:                              # %if.end.i.36
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	xorl	%eax, %eax
	ucomiss	%xmm4, %xmm2
	jne	.LBB13_20
	jnp	.LBB13_21
.LBB13_20:                              # %if.then.22.i
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	addsd	%xmm0, %xmm3
	movsd	%xmm3, 8(%rsi)
.LBB13_21:                              # %return
	retq
.Lfunc_end13:
	.size	gs_point_transform_inverse, .Lfunc_end13-gs_point_transform_inverse
	.cfi_endproc

	.globl	gs_distance_transform_inverse
	.align	16, 0x90
	.type	gs_distance_transform_inverse,@function
gs_distance_transform_inverse:          # @gs_distance_transform_inverse
	.cfi_startproc
# BB#0:                                 # %entry
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm2
	jne	.LBB14_5
	jp	.LBB14_5
# BB#1:                                 # %land.lhs.true
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm3
	jne	.LBB14_5
	jp	.LBB14_5
# BB#2:                                 # %if.then
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movl	$-23, %eax
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm2
	jne	.LBB14_3
	jnp	.LBB14_13
.LBB14_3:                               # %lor.lhs.false
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jne	.LBB14_4
	jnp	.LBB14_13
.LBB14_4:                               # %if.end
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	unpcklpd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	divpd	%xmm2, %xmm0
	movupd	%xmm0, (%rsi)
	jmp	.LBB14_12
.LBB14_5:                               # %if.else
	movss	(%rdi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	12(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm3
	jne	.LBB14_10
	jp	.LBB14_10
# BB#6:                                 # %if.else
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm4
	jne	.LBB14_10
	jp	.LBB14_10
# BB#7:                                 # %if.then.26
	movl	$-23, %eax
	ucomiss	%xmm5, %xmm2
	jne	.LBB14_8
	jnp	.LBB14_13
.LBB14_8:                               # %lor.lhs.false.31
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm3
	jne	.LBB14_9
	jnp	.LBB14_13
.LBB14_9:                               # %if.end.37
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	unpcklpd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	divpd	%xmm2, %xmm1
	movupd	%xmm1, (%rsi)
	jmp	.LBB14_12
.LBB14_10:                              # %if.else.46
	movaps	%xmm3, %xmm6
	mulss	%xmm4, %xmm6
	movss	8(%rdi), %xmm5          # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm7
	mulss	%xmm5, %xmm7
	subss	%xmm7, %xmm6
	movl	$-23, %eax
	xorps	%xmm7, %xmm7
	ucomiss	%xmm7, %xmm6
	jne	.LBB14_11
	jnp	.LBB14_13
.LBB14_11:                              # %if.end.56
	cvtss2sd	%xmm6, %xmm6
	unpcklps	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	cvtps2pd	%xmm4, %xmm3
	movapd	%xmm0, %xmm4
	unpcklpd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0]
	mulpd	%xmm3, %xmm4
	unpcklps	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1]
	cvtps2pd	%xmm5, %xmm2
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	mulpd	%xmm2, %xmm1
	subpd	%xmm1, %xmm4
	movlhps	%xmm6, %xmm6            # xmm6 = xmm6[0,0]
	divpd	%xmm6, %xmm4
	movupd	%xmm4, (%rsi)
.LBB14_12:                              # %return
	xorl	%eax, %eax
.LBB14_13:                              # %return
	retq
.Lfunc_end14:
	.size	gs_distance_transform_inverse, .Lfunc_end14-gs_distance_transform_inverse
	.cfi_endproc

	.globl	gs_points_bbox
	.align	16, 0x90
	.type	gs_points_bbox,@function
gs_points_bbox:                         # @gs_points_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	movupd	(%rdi), %xmm0
	movupd	16(%rdi), %xmm1
	movupd	32(%rdi), %xmm2
	movupd	48(%rdi), %xmm3
	movapd	%xmm0, %xmm4
	minpd	%xmm1, %xmm4
	maxpd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	minpd	%xmm3, %xmm0
	maxpd	%xmm2, %xmm3
	minpd	%xmm0, %xmm4
	movupd	%xmm4, (%rsi)
	maxpd	%xmm3, %xmm1
	movupd	%xmm1, 16(%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	gs_points_bbox, .Lfunc_end15-gs_points_bbox
	.cfi_endproc

	.globl	gs_bbox_transform
	.align	16, 0x90
	.type	gs_bbox_transform,@function
gs_bbox_transform:                      # @gs_bbox_transform
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rdi), %xmm13          # xmm13 = mem[0],zero
	movsd	8(%rdi), %xmm10         # xmm10 = mem[0],zero
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	8(%rsi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movapd	%xmm13, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	16(%rsi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	12(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm7
	movapd	%xmm10, %xmm1
	mulsd	%xmm7, %xmm1
	cvtsd2ss	%xmm1, %xmm5
	movss	20(%rsi), %xmm6         # xmm6 = mem[0],zero,zero,zero
	addss	%xmm6, %xmm5
	xorps	%xmm9, %xmm9
	ucomiss	%xmm9, %xmm4
	movapd	%xmm0, %xmm8
	jne	.LBB16_1
	jnp	.LBB16_2
.LBB16_1:                               # %if.then.i.27
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	%xmm10, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm8, %xmm8
	cvtss2sd	%xmm1, %xmm8
	addsd	%xmm0, %xmm8
.LBB16_2:                               # %if.end.i.30
	cvtss2sd	%xmm5, %xmm11
	movss	4(%rsi), %xmm5          # xmm5 = mem[0],zero,zero,zero
	ucomiss	%xmm9, %xmm5
	movapd	%xmm11, %xmm9
	jne	.LBB16_3
	jnp	.LBB16_4
.LBB16_3:                               # %if.then.22.i.36
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	mulsd	%xmm13, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm9, %xmm9
	cvtss2sd	%xmm1, %xmm9
	addsd	%xmm11, %xmm9
.LBB16_4:                               # %lor.lhs.false.i.i
	movsd	24(%rdi), %xmm12        # xmm12 = mem[0],zero
	mulsd	%xmm12, %xmm7
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm7, %xmm1
	addss	%xmm1, %xmm6
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm4
	jne	.LBB16_5
	jnp	.LBB16_6
.LBB16_5:                               # %if.then.i
	xorps	%xmm7, %xmm7
	cvtss2sd	%xmm4, %xmm7
	mulsd	%xmm12, %xmm7
	cvtsd2ss	%xmm7, %xmm7
	cvtss2sd	%xmm7, %xmm7
	addsd	%xmm7, %xmm0
.LBB16_6:                               # %if.end.i.3
	cvtss2sd	%xmm6, %xmm6
	ucomiss	%xmm1, %xmm5
	movapd	%xmm6, %xmm7
	jne	.LBB16_7
	jnp	.LBB16_8
.LBB16_7:                               # %if.then.22.i
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	mulsd	%xmm1, %xmm13
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm13, %xmm1
	xorps	%xmm7, %xmm7
	cvtss2sd	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
.LBB16_8:                               # %lor.lhs.false.8.i.i
	movsd	16(%rdi), %xmm13        # xmm13 = mem[0],zero
	mulsd	%xmm13, %xmm3
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
	addss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm4
	movapd	%xmm1, %xmm2
	jne	.LBB16_9
	jnp	.LBB16_10
.LBB16_9:                               # %if.then.i.61
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm10
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm10, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
.LBB16_10:                              # %if.end.i.64
	ucomiss	%xmm3, %xmm5
	jne	.LBB16_11
	jnp	.LBB16_12
.LBB16_11:                              # %if.then.22.i.70
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm5, %xmm3
	mulsd	%xmm13, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	cvtss2sd	%xmm3, %xmm3
	addsd	%xmm3, %xmm11
.LBB16_12:                              # %bbox_transform_either_only.exit.i
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm4
	jne	.LBB16_13
	jnp	.LBB16_14
.LBB16_13:                              # %if.then.i.95
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm4, %xmm12
	xorps	%xmm4, %xmm4
	cvtsd2ss	%xmm12, %xmm4
	cvtss2sd	%xmm4, %xmm4
	addsd	%xmm4, %xmm1
.LBB16_14:                              # %if.end.i.98
	ucomiss	%xmm3, %xmm5
	jne	.LBB16_15
	jnp	.LBB16_16
.LBB16_15:                              # %if.then.22.i.104
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm5, %xmm3
	mulsd	%xmm3, %xmm13
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm13, %xmm3
	cvtss2sd	%xmm3, %xmm3
	addsd	%xmm3, %xmm6
.LBB16_16:                              # %bbox_transform_either.exit
	movapd	%xmm8, %xmm3
	minsd	%xmm0, %xmm3
	maxsd	%xmm8, %xmm0
	movapd	%xmm2, %xmm4
	minsd	%xmm1, %xmm4
	maxsd	%xmm2, %xmm1
	minsd	%xmm4, %xmm3
	movsd	%xmm3, (%rdx)
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rdx)
	movapd	%xmm9, %xmm0
	minsd	%xmm7, %xmm0
	maxsd	%xmm9, %xmm7
	movapd	%xmm11, %xmm1
	minsd	%xmm6, %xmm1
	maxsd	%xmm11, %xmm6
	minsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rdx)
	maxsd	%xmm6, %xmm7
	movsd	%xmm7, 24(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	gs_bbox_transform, .Lfunc_end16-gs_bbox_transform
	.cfi_endproc

	.globl	gs_bbox_transform_only
	.align	16, 0x90
	.type	gs_bbox_transform_only,@function
gs_bbox_transform_only:                 # @gs_bbox_transform_only
	.cfi_startproc
# BB#0:                                 # %entry
	movupd	(%rdi), %xmm4
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	12(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	cvtps2pd	%xmm0, %xmm3
	movq	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movapd	%xmm4, %xmm0
	mulpd	%xmm3, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	addps	%xmm1, %xmm0
	cvtps2pd	%xmm0, %xmm5
	movupd	%xmm5, (%rdx)
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm0
	jne	.LBB17_1
	jnp	.LBB17_2
.LBB17_1:                               # %if.then.i.93
	cvtss2sd	%xmm0, %xmm2
	movapd	%xmm4, %xmm7
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	mulsd	%xmm2, %xmm7
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm7, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm5, %xmm2
	movsd	%xmm2, (%rdx)
.LBB17_2:                               # %if.end.i.96
	movss	4(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm6, %xmm2
	jne	.LBB17_3
	jnp	.LBB17_4
.LBB17_3:                               # %if.then.22.i.102
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm2, %xmm6
	mulsd	%xmm6, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	cvtss2sd	%xmm4, %xmm4
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	addsd	%xmm4, %xmm5
	movsd	%xmm5, 8(%rdx)
.LBB17_4:                               # %lor.lhs.false.i
	movsd	(%rdi), %xmm4           # xmm4 = mem[0],zero
	movsd	24(%rdi), %xmm6         # xmm6 = mem[0],zero
	movapd	%xmm4, %xmm5
	unpcklpd	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0]
	mulpd	%xmm3, %xmm5
	cvtpd2ps	%xmm5, %xmm5
	addps	%xmm1, %xmm5
	cvtps2pd	%xmm5, %xmm5
	movupd	%xmm5, 16(%rdx)
	xorps	%xmm8, %xmm8
	ucomiss	%xmm8, %xmm0
	jne	.LBB17_5
	jnp	.LBB17_6
.LBB17_5:                               # %if.then.i.59
	cvtss2sd	%xmm0, %xmm7
	mulsd	%xmm7, %xmm6
	cvtsd2ss	%xmm6, %xmm6
	cvtss2sd	%xmm6, %xmm6
	addsd	%xmm5, %xmm6
	movsd	%xmm6, 16(%rdx)
.LBB17_6:                               # %if.end.i.62
	ucomiss	%xmm8, %xmm2
	jne	.LBB17_7
	jnp	.LBB17_8
.LBB17_7:                               # %if.then.22.i.68
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm2, %xmm6
	mulsd	%xmm6, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	cvtss2sd	%xmm4, %xmm4
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	addsd	%xmm4, %xmm5
	movsd	%xmm5, 24(%rdx)
.LBB17_8:                               # %lor.lhs.false.8.i
	movsd	8(%rdi), %xmm6          # xmm6 = mem[0],zero
	movsd	16(%rdi), %xmm4         # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm5
	unpcklpd	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0]
	mulpd	%xmm3, %xmm5
	cvtpd2ps	%xmm5, %xmm5
	addps	%xmm1, %xmm5
	cvtps2pd	%xmm5, %xmm5
	movupd	%xmm5, 32(%rdx)
	xorps	%xmm8, %xmm8
	ucomiss	%xmm8, %xmm0
	jne	.LBB17_9
	jnp	.LBB17_10
.LBB17_9:                               # %if.then.i.25
	cvtss2sd	%xmm0, %xmm7
	mulsd	%xmm7, %xmm6
	cvtsd2ss	%xmm6, %xmm6
	cvtss2sd	%xmm6, %xmm6
	addsd	%xmm5, %xmm6
	movsd	%xmm6, 32(%rdx)
.LBB17_10:                              # %if.end.i.28
	ucomiss	%xmm8, %xmm2
	jne	.LBB17_11
	jnp	.LBB17_12
.LBB17_11:                              # %if.then.22.i.34
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm2, %xmm6
	mulsd	%xmm6, %xmm4
	cvtsd2ss	%xmm4, %xmm4
	cvtss2sd	%xmm4, %xmm4
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	addsd	%xmm4, %xmm5
	movsd	%xmm5, 40(%rdx)
.LBB17_12:                              # %lor.lhs.false.16.i
	movupd	16(%rdi), %xmm4
	mulpd	%xmm4, %xmm3
	cvtpd2ps	%xmm3, %xmm3
	addps	%xmm3, %xmm1
	cvtps2pd	%xmm1, %xmm1
	movupd	%xmm1, 48(%rdx)
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm0
	jne	.LBB17_13
	jnp	.LBB17_14
.LBB17_13:                              # %if.then.i
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm4, %xmm5
	shufpd	$1, %xmm5, %xmm5        # xmm5 = xmm5[1,0]
	mulsd	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm5, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rdx)
.LBB17_14:                              # %if.end.i
	ucomiss	%xmm3, %xmm2
	jne	.LBB17_15
	jnp	.LBB17_16
.LBB17_15:                              # %if.then.22.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm4
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm4, %xmm0
	cvtss2sd	%xmm0, %xmm0
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rdx)
.LBB17_16:                              # %bbox_transform_either_only.exit
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	gs_bbox_transform_only, .Lfunc_end17-gs_bbox_transform_only
	.cfi_endproc

	.globl	gs_bbox_transform_inverse
	.align	16, 0x90
	.type	gs_bbox_transform_inverse,@function
gs_bbox_transform_inverse:              # @gs_bbox_transform_inverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 96
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB18_5
# BB#1:                                 # %lor.lhs.false.i.i
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB18_5
# BB#2:                                 # %lor.lhs.false.8.i.i
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB18_5
# BB#3:                                 # %bbox_transform_either_only.exit.i
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB18_5
# BB#4:                                 # %if.end.i
	movapd	(%rsp), %xmm0
	movapd	16(%rsp), %xmm1
	movapd	32(%rsp), %xmm2
	movapd	48(%rsp), %xmm3
	movapd	%xmm0, %xmm4
	minpd	%xmm1, %xmm4
	maxpd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	minpd	%xmm3, %xmm0
	maxpd	%xmm2, %xmm3
	minpd	%xmm0, %xmm4
	movupd	%xmm4, (%r14)
	maxpd	%xmm3, %xmm1
	movupd	%xmm1, 16(%r14)
	xorl	%eax, %eax
.LBB18_5:                               # %bbox_transform_either.exit
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	gs_bbox_transform_inverse, .Lfunc_end18-gs_bbox_transform_inverse
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	3405774848              # float -8388608
.LCPI19_1:
	.long	1258291200              # float 8388608
.LCPI19_2:
	.long	1132462080              # float 256
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_3:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_matrix_fixed_from_matrix
	.align	16, 0x90
	.type	gs_matrix_fixed_from_matrix,@function
gs_matrix_fixed_from_matrix:            # @gs_matrix_fixed_from_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	movss	16(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI19_0(%rip), %xmm0
	jb	.LBB19_5
# BB#1:                                 # %entry
	movss	.LCPI19_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB19_5
# BB#2:                                 # %land.lhs.true.6
	movss	20(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI19_0(%rip), %xmm1
	jb	.LBB19_5
# BB#3:                                 # %land.lhs.true.6
	ucomiss	%xmm1, %xmm2
	jbe	.LBB19_5
# BB#4:                                 # %if.then
	movss	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 24(%rdi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI19_3(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rdi)
	mulss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 28(%rdi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rdi)
	movl	$1, 32(%rdi)
	xorl	%eax, %eax
	retq
.LBB19_5:                               # %if.else
	movl	$0, 32(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	gs_matrix_fixed_from_matrix, .Lfunc_end19-gs_matrix_fixed_from_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	-4512606826625236992    # double -8388608
.LCPI20_1:
	.quad	4710765210229538816     # double 8388608
.LCPI20_2:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_point_transform2fixed
	.align	16, 0x90
	.type	gs_point_transform2fixed,@function
gs_point_transform2fixed:               # @gs_point_transform2fixed
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 32(%rdi)
	je	.LBB20_1
# BB#10:                                # %if.end.17
	movss	4(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jne	.LBB20_11
	jnp	.LBB20_27
.LBB20_11:                              # %if.then.21
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm5
	mulsd	%xmm1, %xmm5
	movl	$-13, %eax
	ucomisd	.LCPI20_0(%rip), %xmm5
	jb	.LBB20_45
# BB#12:                                # %if.then.21
	movsd	.LCPI20_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm5, %xmm2
	jbe	.LBB20_45
# BB#13:                                # %lor.lhs.false
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm3
	ucomisd	.LCPI20_0(%rip), %xmm3
	jb	.LBB20_45
# BB#14:                                # %lor.lhs.false
	ucomisd	%xmm3, %xmm2
	jbe	.LBB20_45
# BB#15:                                # %if.end.43
	movsd	.LCPI20_2(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %edx
	movss	(%rdi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	xorpd	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm6
	jne	.LBB20_17
	jp	.LBB20_17
# BB#16:
	movl	%edx, %ecx
.LBB20_21:                              # %if.end.83
	mulsd	%xmm4, %xmm3
	cvttsd2si	%xmm3, %edx
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm0
	jne	.LBB20_23
	jp	.LBB20_23
# BB#22:
	movl	%edx, %r8d
	jmp	.LBB20_37
.LBB20_27:                              # %if.else
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	movl	$-13, %eax
	ucomisd	.LCPI20_0(%rip), %xmm2
	jb	.LBB20_45
# BB#28:                                # %if.else
	movsd	.LCPI20_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB20_45
# BB#29:                                # %lor.lhs.false.137
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	ucomisd	.LCPI20_0(%rip), %xmm3
	jb	.LBB20_45
# BB#30:                                # %lor.lhs.false.137
	ucomisd	%xmm3, %xmm0
	jbe	.LBB20_45
# BB#31:                                # %if.end.151
	movsd	.LCPI20_2(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %edx
	mulsd	%xmm4, %xmm3
	cvttsd2si	%xmm3, %r8d
	movss	8(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB20_33
	jp	.LBB20_33
# BB#32:
	movl	%edx, %ecx
.LBB20_37:                              # %if.end.198
	movl	24(%rdi), %edx
	leal	(%rdx,%rcx), %eax
	xorl	%ecx, %edx
	js	.LBB20_40
# BB#38:                                # %if.end.198
	movl	%eax, %edx
	xorl	%ecx, %edx
	jns	.LBB20_40
# BB#39:                                # %cond.end.217.thread
	shrl	$31, %ecx
	addl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, (%rsi)
	movl	$-13, %eax
	retq
.LBB20_1:                               # %if.then
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	addss	16(%rdi), %xmm2
	cvtss2sd	%xmm2, %xmm2
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	addss	20(%rdi), %xmm3
	xorpd	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm4
	jne	.LBB20_2
	jnp	.LBB20_3
.LBB20_2:                               # %if.then.i
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm1, %xmm4
	cvtsd2ss	%xmm4, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm2
.LBB20_3:                               # %if.end.i
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	movss	4(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm3
	jne	.LBB20_4
	jnp	.LBB20_5
.LBB20_4:                               # %if.then.22.i
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
.LBB20_5:                               # %gs_point_transform.exit
	movl	$-13, %eax
	ucomisd	.LCPI20_0(%rip), %xmm2
	jb	.LBB20_45
# BB#6:                                 # %gs_point_transform.exit
	movsd	.LCPI20_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB20_45
# BB#7:                                 # %land.lhs.true.4
	ucomisd	.LCPI20_0(%rip), %xmm1
	jb	.LBB20_45
# BB#8:                                 # %land.lhs.true.4
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_45
# BB#9:                                 # %if.end
	movsd	.LCPI20_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, (%rsi)
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 4(%rsi)
	xorl	%eax, %eax
	retq
.LBB20_40:                              # %lor.lhs.false.221
	movl	%eax, (%rsi)
	movl	28(%rdi), %ecx
	leal	(%rcx,%r8), %eax
	xorl	%r8d, %ecx
	js	.LBB20_43
# BB#41:                                # %lor.lhs.false.221
	movl	%eax, %ecx
	xorl	%r8d, %ecx
	jns	.LBB20_43
# BB#42:                                # %cond.true.231
	shrl	$31, %r8d
	addl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	%r8d, 4(%rsi)
	movl	$-13, %ecx
	jmp	.LBB20_44
.LBB20_33:                              # %if.then.160
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	ucomisd	.LCPI20_0(%rip), %xmm2
	jb	.LBB20_45
# BB#34:                                # %if.then.160
	ucomisd	%xmm2, %xmm0
	jbe	.LBB20_45
# BB#35:                                # %if.end.174
	mulsd	.LCPI20_2(%rip), %xmm2
	cvttsd2si	%xmm2, %r9d
	leal	(%r9,%rdx), %ecx
	xorl	%edx, %r9d
	js	.LBB20_37
# BB#36:                                # %if.end.174
	xorl	%ecx, %edx
	js	.LBB20_45
	jmp	.LBB20_37
.LBB20_43:                              # %cond.false.236
	movl	%eax, 4(%rsi)
	xorl	%ecx, %ecx
.LBB20_44:                              # %cond.end.240
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB20_45:                              # %cleanup.246
	retq
.LBB20_17:                              # %if.then.51
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm0, %xmm6
	ucomisd	.LCPI20_0(%rip), %xmm6
	jb	.LBB20_45
# BB#18:                                # %if.then.51
	ucomisd	%xmm6, %xmm2
	jbe	.LBB20_45
# BB#19:                                # %if.end.65
	mulsd	.LCPI20_2(%rip), %xmm6
	cvttsd2si	%xmm6, %r8d
	leal	(%r8,%rdx), %ecx
	xorl	%edx, %r8d
	js	.LBB20_21
# BB#20:                                # %if.end.65
	xorl	%ecx, %edx
	js	.LBB20_45
	jmp	.LBB20_21
.LBB20_23:                              # %if.then.87
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	ucomisd	.LCPI20_0(%rip), %xmm0
	jb	.LBB20_45
# BB#24:                                # %if.then.87
	ucomisd	%xmm0, %xmm2
	jbe	.LBB20_45
# BB#25:                                # %if.end.101
	mulsd	.LCPI20_2(%rip), %xmm0
	cvttsd2si	%xmm0, %r9d
	leal	(%r9,%rdx), %r8d
	xorl	%edx, %r9d
	js	.LBB20_37
# BB#26:                                # %if.end.101
	xorl	%r8d, %edx
	jns	.LBB20_37
	jmp	.LBB20_45
.Lfunc_end20:
	.size	gs_point_transform2fixed, .Lfunc_end20-gs_point_transform2fixed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	-4512606826625236992    # double -8388608
.LCPI21_1:
	.quad	4710765210229538816     # double 8388608
.LCPI21_2:
	.quad	4643211215818981376     # double 256
.LCPI21_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_point_transform2fixed_rounding
	.align	16, 0x90
	.type	gs_point_transform2fixed_rounding,@function
gs_point_transform2fixed_rounding:      # @gs_point_transform2fixed_rounding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movapd	%xmm0, %xmm2
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	addss	16(%rdi), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	addss	20(%rdi), %xmm3
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm4
	jne	.LBB21_1
	jnp	.LBB21_2
.LBB21_1:                               # %if.then.i
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm1, %xmm4
	cvtsd2ss	%xmm4, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
.LBB21_2:                               # %if.end.i
	cvtss2sd	%xmm3, %xmm3
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm1
	jne	.LBB21_3
	jnp	.LBB21_4
.LBB21_3:                               # %if.then.22.i
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm3
.LBB21_4:                               # %gs_point_transform.exit
	movl	$-13, %eax
	ucomisd	.LCPI21_0(%rip), %xmm0
	jb	.LBB21_9
# BB#5:                                 # %gs_point_transform.exit
	movsd	.LCPI21_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_9
# BB#6:                                 # %land.lhs.true.4
	ucomisd	.LCPI21_0(%rip), %xmm3
	jb	.LBB21_9
# BB#7:                                 # %land.lhs.true.4
	ucomisd	%xmm3, %xmm1
	jbe	.LBB21_9
# BB#8:                                 # %if.end
	mulsd	.LCPI21_2(%rip), %xmm0
	addsd	.LCPI21_3(%rip), %xmm0
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%rbx)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI21_2(%rip), %xmm0
	addsd	.LCPI21_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 4(%rbx)
	xorl	%eax, %eax
.LBB21_9:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end21:
	.size	gs_point_transform2fixed_rounding, .Lfunc_end21-gs_point_transform2fixed_rounding
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	-4512606826625236992    # double -8388608
.LCPI22_1:
	.quad	4710765210229538816     # double 8388608
.LCPI22_2:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_distance_transform2fixed
	.align	16, 0x90
	.type	gs_distance_transform2fixed,@function
gs_distance_transform2fixed:            # @gs_distance_transform2fixed
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm5
	mulsd	%xmm0, %xmm5
	movl	$-13, %eax
	ucomisd	.LCPI22_0(%rip), %xmm5
	jb	.LBB22_17
# BB#1:                                 # %entry
	movsd	.LCPI22_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm5, %xmm2
	jbe	.LBB22_17
# BB#2:                                 # %lor.lhs.false
	movss	12(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	ucomisd	.LCPI22_0(%rip), %xmm3
	jb	.LBB22_17
# BB#3:                                 # %lor.lhs.false
	ucomisd	%xmm3, %xmm2
	jbe	.LBB22_17
# BB#4:                                 # %if.end
	movsd	.LCPI22_2(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %edx
	movss	8(%rdi), %xmm6          # xmm6 = mem[0],zero,zero,zero
	xorpd	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm6
	jne	.LBB22_6
	jp	.LBB22_6
# BB#5:
	movl	%edx, %r8d
.LBB22_10:                              # %if.end.55
	mulsd	%xmm4, %xmm3
	cvttsd2si	%xmm3, %edx
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm1
	jne	.LBB22_12
	jp	.LBB22_12
# BB#11:
	movl	%edx, %edi
.LBB22_16:                              # %if.end.96
	movl	%r8d, (%rsi)
	movl	%edi, 4(%rsi)
	xorl	%eax, %eax
.LBB22_17:                              # %cleanup
	retq
.LBB22_6:                               # %if.then.24
	cvtss2sd	%xmm6, %xmm6
	mulsd	%xmm1, %xmm6
	ucomisd	.LCPI22_0(%rip), %xmm6
	jb	.LBB22_17
# BB#7:                                 # %if.then.24
	ucomisd	%xmm6, %xmm2
	jbe	.LBB22_17
# BB#8:                                 # %if.end.38
	mulsd	.LCPI22_2(%rip), %xmm6
	cvttsd2si	%xmm6, %ecx
	leal	(%rcx,%rdx), %r8d
	xorl	%edx, %ecx
	js	.LBB22_10
# BB#9:                                 # %if.end.38
	xorl	%r8d, %edx
	js	.LBB22_17
	jmp	.LBB22_10
.LBB22_12:                              # %if.then.59
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	ucomisd	.LCPI22_0(%rip), %xmm1
	jb	.LBB22_17
# BB#13:                                # %if.then.59
	ucomisd	%xmm1, %xmm2
	jbe	.LBB22_17
# BB#14:                                # %if.end.73
	mulsd	.LCPI22_2(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	leal	(%rcx,%rdx), %edi
	xorl	%edx, %ecx
	js	.LBB22_16
# BB#15:                                # %if.end.73
	xorl	%edi, %edx
	js	.LBB22_17
	jmp	.LBB22_16
.Lfunc_end22:
	.size	gs_distance_transform2fixed, .Lfunc_end22-gs_distance_transform2fixed
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI23_1:
	.long	0                       # float 0
	.text
	.globl	sput_matrix
	.align	16, 0x90
	.type	sput_matrix,@function
sput_matrix:                            # @sput_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 176
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	81(%rsp), %r13
	movdqu	(%rsi), %xmm2
	movdqa	%xmm2, 48(%rsp)
	movl	16(%rsi), %r15d
	movl	%r15d, 64(%rsp)
	movl	20(%rsi), %eax
	movl	%eax, 68(%rsp)
	movd	%xmm2, 40(%rsp)
	pshufd	$231, %xmm2, %xmm0      # xmm0 = xmm2[3,1,2,3]
	movd	%xmm0, %eax
	movd	%eax, %xmm1
	movd	%xmm0, 36(%rsp)
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm0, %r12d
	movd	%r12d, %xmm3
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB23_2
	jp	.LBB23_2
# BB#1:                                 # %entry
	movd	%xmm2, %eax
	movd	%eax, %xmm1
	xorl	%ebp, %ebp
	ucomiss	%xmm0, %xmm1
	jne	.LBB23_2
	jnp	.LBB23_6
.LBB23_2:                               # %if.then
	movss	%xmm3, 12(%rsp)         # 4-byte Spill
	movdqa	%xmm2, 16(%rsp)         # 16-byte Spill
	leaq	40(%rsp), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	leaq	85(%rsp), %r13
	movss	36(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	40(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movb	$4, %bpl
	ucomiss	%xmm1, %xmm0
	jne	.LBB23_3
	jnp	.LBB23_5
.LBB23_3:                               # %if.else
	xorps	.LCPI23_0(%rip), %xmm1
	movb	$8, %bpl
	ucomiss	%xmm1, %xmm0
	jne	.LBB23_4
	jnp	.LBB23_5
.LBB23_4:                               # %if.else.26
	leaq	36(%rsp), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	movb	$12, %bpl
	leaq	89(%rsp), %r13
.LBB23_5:                               # %if.end.33
	movdqa	16(%rsp), %xmm2         # 16-byte Reload
	movss	12(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
.LBB23_6:                               # %if.end.33
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movd	%xmm0, 40(%rsp)
	movl	%r12d, 36(%rsp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm3
	jne	.LBB23_9
	jp	.LBB23_9
# BB#7:                                 # %if.end.33
	movd	%xmm0, %eax
	movd	%eax, %xmm0
	ucomiss	%xmm1, %xmm0
	jne	.LBB23_9
	jnp	.LBB23_12
	jmp	.LBB23_9
.LBB23_9:                               # %if.then.1
	leaq	40(%rsp), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	leaq	4(%r13), %rdi
	movss	36(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	40(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jne	.LBB23_10
	jnp	.LBB23_18
.LBB23_10:                              # %if.else.1
	xorps	.LCPI23_0(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB23_11
	jnp	.LBB23_17
.LBB23_11:                              # %if.else.26.1
	orb	$3, %bpl
	leaq	36(%rsp), %rsi
	movl	$4, %edx
	callq	memcpy
	addq	$8, %r13
	jmp	.LBB23_12
.LBB23_18:                              # %if.then.17.1
	orb	$1, %bpl
	movq	%rdi, %r13
	jmp	.LBB23_12
.LBB23_17:                              # %if.then.22.1
	orb	$2, %bpl
	movq	%rdi, %r13
.LBB23_12:                              # %for.body.38.lr.ph
	movd	%r15d, %xmm0
	xorl	%ebx, %ebx
	leaq	40(%rsp), %r15
	jmp	.LBB23_13
	.align	16, 0x90
.LBB23_16:                              # %if.end.50.for.body.38_crit_edge
                                        #   in Loop: Header=BB23_13 Depth=1
	movss	68(%rsp,%rbx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	incq	%rbx
.LBB23_13:                              # %for.body.38
                                        # =>This Inner Loop Header: Depth=1
	movss	%xmm0, 40(%rsp)
	addb	%bpl, %bpl
	ucomiss	.LCPI23_1, %xmm0
	jne	.LBB23_14
	jnp	.LBB23_15
.LBB23_14:                              # %if.then.47
                                        #   in Loop: Header=BB23_13 Depth=1
	orb	$1, %bpl
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$4, %r13
.LBB23_15:                              # %if.end.50
                                        #   in Loop: Header=BB23_13 Depth=1
	cmpl	$1, %ebx
	jne	.LBB23_16
# BB#8:                                 # %for.end.53
	shlb	$2, %bpl
	movb	%bpl, 80(%rsp)
	leaq	80(%rsp), %rsi
	subl	%esi, %r13d
	leaq	44(%rsp), %rcx
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	sputs
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	sput_matrix, .Lfunc_end23-sput_matrix
	.cfi_endproc

	.globl	sget_matrix
	.align	16, 0x90
	.type	sget_matrix,@function
sget_matrix:                            # @sget_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 80
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	112(%rbx), %rax
	movq	120(%rbx), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB24_2
# BB#1:                                 # %cond.end.thread
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%rbx)
	movzbl	1(%rax), %ebp
	jmp	.LBB24_3
.LBB24_2:                               # %cond.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	spgetcc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_11
.LBB24_3:                               # %for.cond.preheader
	testb	$-64, %bpl
	je	.LBB24_4
# BB#5:                                 # %if.else
	leaq	8(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sgets
	cmpl	$-1, %eax
	jl	.LBB24_10
# BB#6:                                 # %if.end.22
	movl	8(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	%ebp, %ecx
	shrl	$6, %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	je	.LBB24_9
# BB#7:                                 # %if.end.22
	cmpl	$2, %ecx
	jne	.LBB24_8
# BB#12:                                # %sw.bb.29
	xorl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jmp	.LBB24_13
.LBB24_4:                               # %if.then.13
	movl	$0, 28(%rsp)
	movl	$0, 16(%rsp)
	jmp	.LBB24_14
.LBB24_9:                               # %sw.bb.33
	leaq	28(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sgets
	cmpl	$-2, %eax
	jg	.LBB24_14
	jmp	.LBB24_10
.LBB24_8:                               # %if.end.22
	cmpl	$1, %ecx
	jne	.LBB24_14
.LBB24_13:                              # %for.inc
	movl	%eax, 28(%rsp)
.LBB24_14:                              # %for.inc
	testb	$48, %bpl
	je	.LBB24_27
# BB#15:                                # %if.else.1
	leaq	8(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sgets
	cmpl	$-1, %eax
	jl	.LBB24_10
# BB#16:                                # %if.end.22.1
	movl	8(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%ebp, %ecx
	shrl	$4, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	.LBB24_26
# BB#17:                                # %if.end.22.1
	cmpl	$2, %ecx
	jne	.LBB24_18
# BB#25:                                # %sw.bb.29.1
	xorl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
.LBB24_26:                              # %sw.bb.1
	movl	%eax, 20(%rsp)
	jmp	.LBB24_20
.LBB24_27:                              # %if.then.13.1
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
.LBB24_20:                              # %for.body.49
	testb	$8, %bpl
	jne	.LBB24_21
# BB#22:                                # %if.else.63
	movl	$0, 32(%rsp)
	jmp	.LBB24_23
.LBB24_21:                              # %if.then.52
	leaq	32(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sgets
	movl	%eax, %ecx
	movl	$-12, %eax
	cmpl	$-1, %ecx
	jl	.LBB24_11
.LBB24_23:                              # %for.inc.67
	testb	$4, %bpl
	jne	.LBB24_24
# BB#28:                                # %if.else.63.1
	movl	$0, 36(%rsp)
	jmp	.LBB24_29
.LBB24_24:                              # %if.then.52.1
	leaq	36(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sgets
	movl	%eax, %ecx
	movl	$-12, %eax
	cmpl	$-1, %ecx
	jl	.LBB24_11
.LBB24_29:                              # %for.inc.67.1
	movq	16(%rsp), %rax
	movl	%eax, (%r14)
	shrq	$32, %rax
	movl	%eax, 4(%r14)
	movq	24(%rsp), %rax
	movl	%eax, 8(%r14)
	shrq	$32, %rax
	movl	%eax, 12(%r14)
	movq	32(%rsp), %rax
	movl	%eax, 16(%r14)
	shrq	$32, %rax
	movl	%eax, 20(%r14)
	xorl	%eax, %eax
	jmp	.LBB24_11
.LBB24_18:                              # %if.end.22.1
	cmpl	$3, %ecx
	jne	.LBB24_20
# BB#19:                                # %sw.bb.33.1
	leaq	20(%rsp), %rsi
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	sgets
	cmpl	$-1, %eax
	jge	.LBB24_20
.LBB24_10:                              # %cleanup
	movl	$-12, %eax
.LBB24_11:                              # %cleanup.76
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	sget_matrix, .Lfunc_end24-sget_matrix
	.cfi_endproc

	.globl	gs_matrix_compare
	.align	16, 0x90
	.type	gs_matrix_compare,@function
gs_matrix_compare:                      # @gs_matrix_compare
	.cfi_startproc
# BB#0:                                 # %entry
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	$1, %eax
	ucomiss	(%rsi), %xmm0
	jne	.LBB25_6
	jp	.LBB25_6
# BB#1:                                 # %if.end
	movss	4(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%rsi), %xmm0
	jne	.LBB25_6
	jp	.LBB25_6
# BB#2:                                 # %if.end.5
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	8(%rsi), %xmm0
	jne	.LBB25_6
	jp	.LBB25_6
# BB#3:                                 # %if.end.9
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	12(%rsi), %xmm0
	jne	.LBB25_6
	jp	.LBB25_6
# BB#4:                                 # %if.end.13
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	16(%rsi), %xmm0
	jne	.LBB25_6
	jp	.LBB25_6
# BB#5:                                 # %if.end.17
	movss	20(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cmpneqss	20(%rsi), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB25_6:                               # %return
	retq
.Lfunc_end25:
	.size	gs_matrix_compare, .Lfunc_end25-gs_matrix_compare
	.cfi_endproc

	.type	gs_identity_matrix,@object # @gs_identity_matrix
	.section	.rodata,"a",@progbits
	.align	4
gs_identity_matrix:
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.size	gs_identity_matrix, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
