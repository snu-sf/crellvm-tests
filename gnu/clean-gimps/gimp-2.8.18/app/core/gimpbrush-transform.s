	.text
	.file	"gimpbrush-transform.bc"
	.globl	gimp_brush_real_transform_size
	.align	16, 0x90
	.type	gimp_brush_real_transform_size,@function
gimp_brush_real_transform_size:         # @gimp_brush_real_transform_size
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
	subq	$128, %rsp
	leaq	-120(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	cvtsi2sdl	4(%rdx), %xmm0
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	cvtsi2sdl	8(%rdx), %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-32(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_brush_transform_matrix
	leaq	-120(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	gimp_brush_transform_bounding_box
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_real_transform_size, .Lfunc_end0-gimp_brush_real_transform_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4607182418800017408     # double 1
.LCPI1_2:
	.quad	4626322717216342016     # double 20
.LCPI1_4:
	.quad	-4604611780675359464    # double -6.2831853071795862
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_brush_transform_matrix
	.align	16, 0x90
	.type	gimp_brush_transform_matrix,@function
gimp_brush_transform_matrix:            # @gimp_brush_transform_matrix
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
	xorps	%xmm5, %xmm5
	movsd	.LCPI1_0, %xmm6         # xmm6 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm6, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm6, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	ucomisd	-32(%rbp), %xmm5
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movapd	.LCPI1_3(%rip), %xmm4   # xmm4 = [9223372036854775807,9223372036854775807]
	andpd	%xmm4, %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -72(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.8
	movq	-48(%rbp), %rdi
	callq	gimp_matrix3_identity
	movq	-48(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	movq	-48(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	mulsd	-72(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	mulsd	-80(%rbp), %xmm1
	callq	gimp_matrix3_translate
	movsd	.LCPI1_4, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	mulsd	-40(%rbp), %xmm0
	callq	gimp_matrix3_rotate
	movq	-48(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	callq	gimp_matrix3_translate
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_transform_matrix, .Lfunc_end1-gimp_brush_transform_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_transform_bounding_box,@function
gimp_brush_transform_bounding_box:      # @gimp_brush_transform_bounding_box
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
	subq	$368, %rsp              # imm = 0x170
	xorps	%xmm0, %xmm0
	leaq	-72(%rbp), %rax
	leaq	-104(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	8(%rcx), %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, %rsi
	movq	%r10, %rdx
	callq	gimp_matrix3_transform_point
	xorps	%xmm1, %xmm1
	leaq	-80(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_matrix3_transform_point
	xorps	%xmm0, %xmm0
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_2
# BB#1:                                 # %cond.true
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB2_3:                                # %cond.end
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jbe	.LBB2_5
# BB#4:                                 # %cond.true.7
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.8
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB2_6:                                # %cond.end.9
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_11
# BB#7:                                 # %cond.true.13
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_9
# BB#8:                                 # %cond.true.16
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.17
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB2_10:                               # %cond.end.18
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB2_15
.LBB2_11:                               # %cond.false.20
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_13
# BB#12:                                # %cond.true.23
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.24
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB2_14:                               # %cond.end.25
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB2_15:                               # %cond.end.27
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_17
# BB#16:                                # %cond.true.31
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false.32
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB2_18:                               # %cond.end.33
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jbe	.LBB2_20
# BB#19:                                # %cond.true.37
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB2_21
.LBB2_20:                               # %cond.false.38
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB2_21:                               # %cond.end.39
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_26
# BB#22:                                # %cond.true.43
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_24
# BB#23:                                # %cond.true.46
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false.47
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB2_25:                               # %cond.end.48
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB2_30
.LBB2_26:                               # %cond.false.50
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_28
# BB#27:                                # %cond.true.53
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB2_29
.LBB2_28:                               # %cond.false.54
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB2_29:                               # %cond.end.55
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB2_30:                               # %cond.end.57
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB2_32
# BB#31:                                # %cond.true.61
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB2_33
.LBB2_32:                               # %cond.false.62
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB2_33:                               # %cond.end.63
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-96(%rbp), %xmm1
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jbe	.LBB2_35
# BB#34:                                # %cond.true.67
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB2_36
.LBB2_35:                               # %cond.false.68
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB2_36:                               # %cond.end.69
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_41
# BB#37:                                # %cond.true.73
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB2_39
# BB#38:                                # %cond.true.76
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB2_40
.LBB2_39:                               # %cond.false.77
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB2_40:                               # %cond.end.78
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB2_45
.LBB2_41:                               # %cond.false.80
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB2_43
# BB#42:                                # %cond.true.83
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB2_44
.LBB2_43:                               # %cond.false.84
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB2_44:                               # %cond.end.85
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB2_45:                               # %cond.end.87
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB2_47
# BB#46:                                # %cond.true.92
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false.93
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB2_48:                               # %cond.end.94
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	-128(%rbp), %xmm1
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jbe	.LBB2_50
# BB#49:                                # %cond.true.98
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB2_51
.LBB2_50:                               # %cond.false.99
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB2_51:                               # %cond.end.100
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_56
# BB#52:                                # %cond.true.104
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB2_54
# BB#53:                                # %cond.true.107
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB2_55
.LBB2_54:                               # %cond.false.108
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB2_55:                               # %cond.end.109
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	jmp	.LBB2_60
.LBB2_56:                               # %cond.false.111
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-128(%rbp), %xmm0
	jbe	.LBB2_58
# BB#57:                                # %cond.true.114
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB2_59
.LBB2_58:                               # %cond.false.115
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB2_59:                               # %cond.end.116
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
.LBB2_60:                               # %cond.end.118
	movsd	-336(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %eax
	subsd	-144(%rbp), %xmm0
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movl	-348(%rbp), %eax        # 4-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB2_62
# BB#61:                                # %cond.true.129
	movl	$1, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB2_63
.LBB2_62:                               # %cond.false.130
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
.LBB2_63:                               # %cond.end.131
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rdx
	cmpl	(%rdx), %ecx
	jle	.LBB2_65
# BB#64:                                # %cond.true.135
	movl	$1, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB2_66
.LBB2_65:                               # %cond.false.136
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
.LBB2_66:                               # %cond.end.137
	movl	-356(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_transform_bounding_box, .Lfunc_end2-gimp_brush_transform_bounding_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4611686018427387904     # double 2
.LCPI3_1:
	.quad	4622945017495814144     # double 12
.LCPI3_2:
	.quad	-4616189618054758400    # double -1
.LCPI3_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_brush_real_transform_mask
	.align	16, 0x90
	.type	gimp_brush_real_transform_mask,@function
gimp_brush_real_transform_mask:         # @gimp_brush_real_transform_mask
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
	subq	$592, %rsp              # imm = 0x250
	leaq	-152(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	$12, -372(%rbp)
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movsd	%xmm1, -552(%rbp)       # 8-byte Spill
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	pow
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -376(%rbp)
	movl	$24, -380(%rbp)
	movsd	-544(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	%ecx, -384(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-64(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	-560(%rbp), %rdi        # 8-byte Reload
	callq	gimp_brush_transform_matrix
	leaq	-152(%rbp), %rdi
	callq	gimp_matrix3_is_identity
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	temp_buf_copy
	movq	%rax, -8(%rbp)
	jmp	.LBB3_29
.LBB3_2:                                # %if.end
	leaq	-152(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-172(%rbp), %r8
	leaq	-176(%rbp), %r9
	movq	-64(%rbp), %rax
	movl	4(%rax), %edi
	movl	%edi, -156(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %edi
	movl	%edi, -160(%rbp)
	movl	-156(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -164(%rbp)
	movl	-160(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -168(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_brush_transform_bounding_box
	leaq	-152(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	subl	-180(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm0
	subl	-184(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm1
	callq	gimp_matrix3_translate
	leaq	-152(%rbp), %rdi
	callq	gimp_matrix3_invert
	movl	$1, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movl	-172(%rbp), %edi
	movl	-176(%rbp), %esi
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	temp_buf_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	temp_buf_get_data
	leaq	-152(%rbp), %rdi
	xorps	%xmm0, %xmm0
	leaq	-208(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-152(%rbp), %rdi
	xorps	%xmm1, %xmm1
	leaq	-216(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	cvtsi2sdl	-172(%rbp), %xmm0
	callq	gimp_matrix3_transform_point
	leaq	-152(%rbp), %rdi
	xorps	%xmm0, %xmm0
	leaq	-192(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	cvtsi2sdl	-176(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-152(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	cvtsi2sdl	-172(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-208(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-208(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -284(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -288(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -292(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -296(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -308(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -312(%rbp)
	movl	-308(%rbp), %ecx
	sarl	$12, %ecx
	movl	%ecx, -300(%rbp)
	movl	-312(%rbp), %ecx
	sarl	$12, %ecx
	movl	%ecx, -304(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -316(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -320(%rbp)
	movl	$0, -184(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	movl	-184(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB3_26
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$0, -180(%rbp)
.LBB3_5:                                # %for.cond.58
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB3_24
# BB#6:                                 # %for.body.61
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-300(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jg	.LBB3_10
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_5 Depth=2
	cmpl	$0, -300(%rbp)
	jl	.LBB3_10
# BB#8:                                 # %lor.lhs.false.66
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-304(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jg	.LBB3_10
# BB#9:                                 # %lor.lhs.false.69
                                        #   in Loop: Header=BB3_5 Depth=2
	cmpl	$0, -304(%rbp)
	jge	.LBB3_11
.LBB3_10:                               # %if.then.72
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB3_22
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-80(%rbp), %rax
	movl	-304(%rbp), %ecx
	imull	-156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-300(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movl	-304(%rbp), %ecx
	cmpl	-168(%rbp), %ecx
	jne	.LBB3_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-300(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.80
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-328(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB3_21
.LBB3_14:                               # %if.else.81
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-304(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB3_16
# BB#15:                                # %if.then.84
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB3_20
.LBB3_16:                               # %if.else.87
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-300(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jne	.LBB3_18
# BB#17:                                # %if.then.90
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-328(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movslq	-156(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.93
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movslq	-156(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
.LBB3_19:                               # %if.end.98
                                        #   in Loop: Header=BB3_5 Depth=2
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.99
                                        #   in Loop: Header=BB3_5 Depth=2
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.100
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-308(%rbp), %eax
	andl	-384(%rbp), %eax
	movl	%eax, -360(%rbp)
	movl	-312(%rbp), %eax
	andl	-384(%rbp), %eax
	movl	%eax, -368(%rbp)
	movl	-376(%rbp), %eax
	subl	-360(%rbp), %eax
	movl	%eax, -356(%rbp)
	movl	-376(%rbp), %eax
	subl	-368(%rbp), %eax
	movl	%eax, -364(%rbp)
	movq	-328(%rbp), %rcx
	movzbl	(%rcx), %eax
	imull	-356(%rbp), %eax
	movq	-336(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-360(%rbp), %edx
	addl	%edx, %eax
	imull	-364(%rbp), %eax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-356(%rbp), %edx
	movq	-352(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	-360(%rbp), %esi
	addl	%esi, %edx
	imull	-368(%rbp), %edx
	addl	%edx, %eax
	sarl	$24, %eax
	movb	%al, %dil
	movq	-72(%rbp), %rcx
	movb	%dil, (%rcx)
.LBB3_22:                               # %if.end.121
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-284(%rbp), %eax
	addl	-308(%rbp), %eax
	movl	%eax, -308(%rbp)
	movl	-288(%rbp), %eax
	addl	-312(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-308(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -300(%rbp)
	movl	-312(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -304(%rbp)
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB3_5
.LBB3_24:                               # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-292(%rbp), %eax
	addl	-316(%rbp), %eax
	movl	%eax, -316(%rbp)
	movl	-296(%rbp), %eax
	addl	-320(%rbp), %eax
	movl	%eax, -320(%rbp)
	movl	-316(%rbp), %eax
	movl	%eax, -308(%rbp)
	movl	-320(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-308(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -300(%rbp)
	movl	-312(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -304(%rbp)
# BB#25:                                # %for.inc.130
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB3_3
.LBB3_26:                               # %for.end.132
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB3_28
# BB#27:                                # %if.then.135
	movq	-56(%rbp), %rax
	movl	4(%rax), %esi
	movl	8(%rax), %edi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_brush_transform_blur_kernel_size
	movl	%eax, -524(%rbp)
	imull	%eax, %eax
	movl	%eax, -528(%rbp)
	movl	-528(%rbp), %eax
	movl	%eax, %ecx
	movq	%rsp, %rdx
	movq	%rdx, -536(%rbp)
	leaq	15(,%rcx,4), %rcx
	movabsq	$34359738352, %rdx      # imm = 0x7FFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movl	-528(%rbp), %esi
	movq	%rdx, %rdi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	callq	gimp_brush_transform_fill_blur_kernel
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	temp_buf_copy
	leaq	-456(%rbp), %rdi
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rsi
	movq	-392(%rbp), %rax
	movl	12(%rax), %edx
	movq	-392(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-392(%rbp), %rax
	movl	8(%rax), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-520(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-56(%rbp), %rax
	movl	8(%rax), %r9d
	callq	pixel_region_init_temp_buf
	movl	-524(%rbp), %ecx
	movl	-528(%rbp), %esi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	callq	gimp_brush_transform_array_sum
	leaq	-456(%rbp), %rdi
	leaq	-520(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movl	-580(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -584(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-584(%rbp), %r8d        # 4-byte Reload
	movl	-584(%rbp), %r9d        # 4-byte Reload
	callq	convolve_region
	movq	-392(%rbp), %rdi
	callq	temp_buf_free
	movq	-536(%rbp), %rax
	movq	%rax, %rsp
.LBB3_28:                               # %if.end.150
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_29:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_real_transform_mask, .Lfunc_end3-gimp_brush_real_transform_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_brush_transform_blur_kernel_size,@function
gimp_brush_transform_blur_kernel_size:  # @gimp_brush_transform_blur_kernel_size
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-4(%rbp), %esi
	jge	.LBB4_2
# BB#1:                                 # %cond.true
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	$15, %ecx
	cmpl	%eax, %ecx
	jge	.LBB4_5
# BB#4:                                 # %cond.true.2
	movl	$15, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB4_9
.LBB4_5:                                # %cond.false.3
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_7
# BB#6:                                 # %cond.true.5
	movl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false.6
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB4_8:                                # %cond.end.7
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB4_9:                                # %cond.end.9
	movl	-28(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jge	.LBB4_11
# BB#10:                                # %cond.true.13
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.14
	movl	-4(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB4_12:                               # %cond.end.15
	movl	-44(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	subsd	-16(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	jge	.LBB4_14
# BB#13:                                # %cond.true.20
	movl	-8(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false.21
	movl	-4(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_15:                               # %cond.end.22
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_17
# BB#16:                                # %if.then
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB4_17:                               # %if.end
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_transform_blur_kernel_size, .Lfunc_end4-gimp_brush_transform_blur_kernel_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_transform_fill_blur_kernel,@function
gimp_brush_transform_fill_blur_kernel:  # @gimp_brush_transform_fill_blur_kernel
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
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-24(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_6
.LBB5_6:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_7:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_transform_fill_blur_kernel, .Lfunc_end5-gimp_brush_transform_fill_blur_kernel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_transform_array_sum,@function
gimp_brush_transform_array_sum:         # @gimp_brush_transform_array_sum
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	cvtss2sd	-16(%rbp), %xmm0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_transform_array_sum, .Lfunc_end6-gimp_brush_transform_array_sum
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
.LCPI7_1:
	.quad	4622945017495814144     # double 12
.LCPI7_2:
	.quad	-4616189618054758400    # double -1
.LCPI7_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_brush_real_transform_pixmap
	.align	16, 0x90
	.type	gimp_brush_real_transform_pixmap,@function
gimp_brush_real_transform_pixmap:       # @gimp_brush_real_transform_pixmap
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
	subq	$592, %rsp              # imm = 0x250
	leaq	-152(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	$12, -372(%rbp)
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movsd	%xmm1, -552(%rbp)       # 8-byte Spill
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	pow
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -376(%rbp)
	movl	$24, -380(%rbp)
	movsd	-544(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	%ecx, -384(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-64(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	-560(%rbp), %rdi        # 8-byte Reload
	callq	gimp_brush_transform_matrix
	leaq	-152(%rbp), %rdi
	callq	gimp_matrix3_is_identity
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	temp_buf_copy
	movq	%rax, -8(%rbp)
	jmp	.LBB7_29
.LBB7_2:                                # %if.end
	leaq	-152(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-172(%rbp), %r8
	leaq	-176(%rbp), %r9
	movq	-64(%rbp), %rax
	movl	4(%rax), %edi
	movl	%edi, -156(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %edi
	movl	%edi, -160(%rbp)
	movl	-156(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -164(%rbp)
	movl	-160(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -168(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_brush_transform_bounding_box
	leaq	-152(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	subl	-180(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm0
	subl	-184(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm1
	callq	gimp_matrix3_translate
	leaq	-152(%rbp), %rdi
	callq	gimp_matrix3_invert
	movl	$3, %edx
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movl	-172(%rbp), %edi
	movl	-176(%rbp), %esi
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	temp_buf_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	temp_buf_get_data
	leaq	-152(%rbp), %rdi
	xorps	%xmm0, %xmm0
	leaq	-208(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_matrix3_transform_point
	leaq	-152(%rbp), %rdi
	xorps	%xmm1, %xmm1
	leaq	-216(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	cvtsi2sdl	-172(%rbp), %xmm0
	callq	gimp_matrix3_transform_point
	leaq	-152(%rbp), %rdi
	xorps	%xmm0, %xmm0
	leaq	-192(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	cvtsi2sdl	-176(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	leaq	-152(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	cvtsi2sdl	-172(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	callq	gimp_matrix3_transform_point
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-208(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-208(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -284(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -288(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -292(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -296(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -308(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -312(%rbp)
	movl	-308(%rbp), %ecx
	sarl	$12, %ecx
	movl	%ecx, -300(%rbp)
	movl	-312(%rbp), %ecx
	sarl	$12, %ecx
	movl	%ecx, -304(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -316(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -320(%rbp)
	movl	$0, -184(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	movl	-184(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB7_26
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$0, -180(%rbp)
.LBB7_5:                                # %for.cond.58
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB7_24
# BB#6:                                 # %for.body.61
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-300(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jg	.LBB7_10
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, -300(%rbp)
	jl	.LBB7_10
# BB#8:                                 # %lor.lhs.false.66
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-304(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jg	.LBB7_10
# BB#9:                                 # %lor.lhs.false.69
                                        #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, -304(%rbp)
	jge	.LBB7_11
.LBB7_10:                               # %if.then.72
                                        #   in Loop: Header=BB7_5 Depth=2
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-72(%rbp), %rax
	movb	$0, 2(%rax)
	jmp	.LBB7_22
.LBB7_11:                               # %if.else
                                        #   in Loop: Header=BB7_5 Depth=2
	movq	-80(%rbp), %rax
	movl	-304(%rbp), %ecx
	imull	-156(%rbp), %ecx
	addl	-300(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movl	-304(%rbp), %ecx
	cmpl	-168(%rbp), %ecx
	jne	.LBB7_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-300(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jne	.LBB7_14
# BB#13:                                # %if.then.81
                                        #   in Loop: Header=BB7_5 Depth=2
	movq	-328(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB7_21
.LBB7_14:                               # %if.else.82
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-304(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jne	.LBB7_16
# BB#15:                                # %if.then.85
                                        #   in Loop: Header=BB7_5 Depth=2
	movq	-328(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-328(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB7_20
.LBB7_16:                               # %if.else.88
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-300(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jne	.LBB7_18
# BB#17:                                # %if.then.91
                                        #   in Loop: Header=BB7_5 Depth=2
	movq	-328(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	imull	$3, -156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -352(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.95
                                        #   in Loop: Header=BB7_5 Depth=2
	movq	-328(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	imull	$3, -156(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -352(%rbp)
.LBB7_19:                               # %if.end.101
                                        #   in Loop: Header=BB7_5 Depth=2
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.102
                                        #   in Loop: Header=BB7_5 Depth=2
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.103
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-308(%rbp), %eax
	andl	-384(%rbp), %eax
	movl	%eax, -360(%rbp)
	movl	-312(%rbp), %eax
	andl	-384(%rbp), %eax
	movl	%eax, -368(%rbp)
	movl	-376(%rbp), %eax
	subl	-360(%rbp), %eax
	movl	%eax, -356(%rbp)
	movl	-376(%rbp), %eax
	subl	-368(%rbp), %eax
	movl	%eax, -364(%rbp)
	movq	-328(%rbp), %rcx
	movzbl	(%rcx), %eax
	imull	-356(%rbp), %eax
	movq	-336(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-360(%rbp), %edx
	addl	%edx, %eax
	imull	-364(%rbp), %eax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	-356(%rbp), %edx
	movq	-352(%rbp), %rcx
	movzbl	(%rcx), %esi
	imull	-360(%rbp), %esi
	addl	%esi, %edx
	imull	-368(%rbp), %edx
	addl	%edx, %eax
	sarl	$24, %eax
	movb	%al, %dil
	movq	-72(%rbp), %rcx
	movb	%dil, (%rcx)
	movq	-328(%rbp), %rcx
	movzbl	1(%rcx), %eax
	imull	-356(%rbp), %eax
	movq	-336(%rbp), %rcx
	movzbl	1(%rcx), %edx
	imull	-360(%rbp), %edx
	addl	%edx, %eax
	imull	-364(%rbp), %eax
	movq	-344(%rbp), %rcx
	movzbl	1(%rcx), %edx
	imull	-356(%rbp), %edx
	movq	-352(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	-360(%rbp), %esi
	addl	%esi, %edx
	imull	-368(%rbp), %edx
	addl	%edx, %eax
	sarl	$24, %eax
	movb	%al, %dil
	movq	-72(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movq	-328(%rbp), %rcx
	movzbl	2(%rcx), %eax
	imull	-356(%rbp), %eax
	movq	-336(%rbp), %rcx
	movzbl	2(%rcx), %edx
	imull	-360(%rbp), %edx
	addl	%edx, %eax
	imull	-364(%rbp), %eax
	movq	-344(%rbp), %rcx
	movzbl	2(%rcx), %edx
	imull	-356(%rbp), %edx
	movq	-352(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	-360(%rbp), %esi
	addl	%esi, %edx
	imull	-368(%rbp), %edx
	addl	%edx, %eax
	sarl	$24, %eax
	movb	%al, %dil
	movq	-72(%rbp), %rcx
	movb	%dil, 2(%rcx)
.LBB7_22:                               # %if.end.167
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-284(%rbp), %eax
	addl	-308(%rbp), %eax
	movl	%eax, -308(%rbp)
	movl	-288(%rbp), %eax
	addl	-312(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-308(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -300(%rbp)
	movl	-312(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -304(%rbp)
	movq	-72(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -72(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB7_5
.LBB7_24:                               # %for.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-292(%rbp), %eax
	addl	-316(%rbp), %eax
	movl	%eax, -316(%rbp)
	movl	-296(%rbp), %eax
	addl	-320(%rbp), %eax
	movl	%eax, -320(%rbp)
	movl	-316(%rbp), %eax
	movl	%eax, -308(%rbp)
	movl	-320(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-308(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -300(%rbp)
	movl	-312(%rbp), %eax
	sarl	$12, %eax
	movl	%eax, -304(%rbp)
# BB#25:                                # %for.inc.177
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB7_3
.LBB7_26:                               # %for.end.179
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB7_28
# BB#27:                                # %if.then.182
	movq	-56(%rbp), %rax
	movl	4(%rax), %esi
	movl	8(%rax), %edi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_brush_transform_blur_kernel_size
	movl	%eax, -524(%rbp)
	imull	%eax, %eax
	movl	%eax, -528(%rbp)
	movl	-528(%rbp), %eax
	movl	%eax, %ecx
	movq	%rsp, %rdx
	movq	%rdx, -536(%rbp)
	leaq	15(,%rcx,4), %rcx
	movabsq	$34359738352, %rdx      # imm = 0x7FFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movl	-528(%rbp), %esi
	movq	%rdx, %rdi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	callq	gimp_brush_transform_fill_blur_kernel
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	temp_buf_copy
	leaq	-456(%rbp), %rdi
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rsi
	movq	-392(%rbp), %rax
	movl	12(%rax), %edx
	movq	-392(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-392(%rbp), %rax
	movl	8(%rax), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-520(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-56(%rbp), %rax
	movl	8(%rax), %r9d
	callq	pixel_region_init_temp_buf
	movl	-524(%rbp), %ecx
	movl	-528(%rbp), %esi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	callq	gimp_brush_transform_array_sum
	leaq	-456(%rbp), %rdi
	leaq	-520(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movl	-580(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -584(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-584(%rbp), %r8d        # 4-byte Reload
	movl	-584(%rbp), %r9d        # 4-byte Reload
	callq	convolve_region
	movq	-392(%rbp), %rdi
	callq	temp_buf_free
	movq	-536(%rbp), %rax
	movq	%rax, %rsp
.LBB7_28:                               # %if.end.197
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_29:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_real_transform_pixmap, .Lfunc_end7-gimp_brush_real_transform_pixmap
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
