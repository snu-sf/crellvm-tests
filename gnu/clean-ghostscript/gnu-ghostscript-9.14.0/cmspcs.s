	.text
	.file	"cmspcs.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	cmsXYZ2xyY
	.align	16, 0x90
	.type	cmsXYZ2xyY,@function
cmsXYZ2xyY:                             # @cmsXYZ2xyY
	.cfi_startproc
# BB#0:                                 # %entry
	movupd	(%rsi), %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	addsd	%xmm0, %xmm1
	addsd	16(%rsi), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	mulpd	%xmm0, %xmm2
	movupd	%xmm2, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 16(%rdi)
	retq
.Lfunc_end0:
	.size	cmsXYZ2xyY, .Lfunc_end0-cmsXYZ2xyY
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	cmsxyY2XYZ
	.align	16, 0x90
	.type	cmsxyY2XYZ,@function
cmsxyY2XYZ:                             # @cmsxyY2XYZ
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	divsd	8(%rsi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	(%rsi), %xmm0
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rdi)
	retq
.Lfunc_end1:
	.size	cmsxyY2XYZ, .Lfunc_end1-cmsxyY2XYZ
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4576259018578689238     # double 0.0088564516790356311
.LCPI2_1:
	.quad	4620453442701967967     # double 7.7870370370370372
.LCPI2_2:
	.quad	4594137509534530454     # double 0.13793103448275862
.LCPI2_3:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI2_4:
	.quad	4637863191261478912     # double 116
.LCPI2_5:
	.quad	-4598175219545276416    # double -16
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_6:
	.quad	4647503709213818880     # double 5.000000e+02
	.quad	4641240890982006784     # double 2.000000e+02
	.text
	.globl	cmsXYZ2Lab
	.align	16, 0x90
	.type	cmsXYZ2Lab,@function
cmsXYZ2Lab:                             # @cmsXYZ2Lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	cmsD50_XYZ
	movq	%rax, %rbx
.LBB2_2:                                # %if.end
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	divsd	(%rbx), %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB2_3
# BB#4:                                 # %if.else.i
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB2_5
.LBB2_3:                                # %if.then.i
	mulsd	.LCPI2_1(%rip), %xmm0
	addsd	.LCPI2_2(%rip), %xmm0
.LBB2_5:                                # %f.exit
	movsd	8(%r15), %xmm2          # xmm2 = mem[0],zero
	divsd	8(%rbx), %xmm2
	ucomisd	%xmm2, %xmm1
	jae	.LBB2_6
# BB#7:                                 # %if.else.i.18
	movapd	%xmm0, (%rsp)           # 16-byte Spill
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	jmp	.LBB2_8
.LBB2_6:                                # %if.then.i.16
	movapd	%xmm0, (%rsp)           # 16-byte Spill
	mulsd	.LCPI2_1(%rip), %xmm2
	addsd	.LCPI2_2(%rip), %xmm2
.LBB2_8:                                # %f.exit20
	movsd	16(%r15), %xmm0         # xmm0 = mem[0],zero
	divsd	16(%rbx), %xmm0
	ucomisd	%xmm0, %xmm1
	jae	.LBB2_9
# BB#10:                                # %if.else.i.26
	movapd	%xmm2, 16(%rsp)         # 16-byte Spill
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	jmp	.LBB2_11
.LBB2_9:                                # %if.then.i.24
	movapd	%xmm2, 16(%rsp)         # 16-byte Spill
	mulsd	.LCPI2_1(%rip), %xmm0
	addsd	.LCPI2_2(%rip), %xmm0
.LBB2_11:                               # %f.exit28
	movapd	(%rsp), %xmm2           # 16-byte Reload
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	16(%rsp), %xmm3         # 16-byte Reload
	mulsd	%xmm3, %xmm1
	addsd	.LCPI2_5(%rip), %xmm1
	movsd	%xmm1, (%r14)
	unpcklpd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	unpcklpd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0]
	subpd	%xmm3, %xmm2
	mulpd	.LCPI2_6(%rip), %xmm2
	movupd	%xmm2, 8(%r14)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	cmsXYZ2Lab, .Lfunc_end2-cmsXYZ2Lab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4625196817309499392     # double 16
.LCPI3_1:
	.quad	4637863191261478912     # double 116
.LCPI3_2:
	.quad	4566758108544739836     # double 0.002
.LCPI3_3:
	.quad	-4650957407178058629    # double -0.0050000000000000001
.LCPI3_7:
	.quad	-4629234527320245354    # double -0.13793103448275862
.LCPI3_8:
	.quad	4593794786138392866     # double 0.12841854934601665
.LCPI3_9:
	.quad	4596622254156527969     # double 0.20689655172413793
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_4:
	.quad	4596622254156527969     # double 2.068966e-01
	.quad	4596622254156527969     # double 2.068966e-01
.LCPI3_5:
	.quad	-4629234527320245354    # double -1.379310e-01
	.quad	-4629234527320245354    # double -1.379310e-01
.LCPI3_6:
	.quad	4593794786138392866     # double 1.284185e-01
	.quad	4593794786138392866     # double 1.284185e-01
	.text
	.globl	cmsLab2XYZ
	.align	16, 0x90
	.type	cmsLab2XYZ,@function
cmsLab2XYZ:                             # @cmsLab2XYZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -24
.Ltmp11:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	testq	%rdi, %rdi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	cmsD50_XYZ
	movq	%rax, %rdi
.LBB3_2:                                # %if.end
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	addsd	.LCPI3_0(%rip), %xmm1
	divsd	.LCPI3_1(%rip), %xmm1
	mulsd	.LCPI3_2(%rip), %xmm2
	addsd	%xmm1, %xmm2
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI3_3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	movapd	.LCPI3_5(%rip), %xmm1   # xmm1 = [-1.379310e-01,-1.379310e-01]
	addpd	%xmm2, %xmm1
	movapd	%xmm2, %xmm3
	mulpd	%xmm3, %xmm3
	mulpd	%xmm2, %xmm3
	cmpnlepd	.LCPI3_4(%rip), %xmm2
	mulpd	.LCPI3_6(%rip), %xmm1
	andpd	%xmm2, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movupd	(%rdi), %xmm1
	mulpd	%xmm2, %xmm1
	movupd	%xmm1, (%r14)
	movsd	.LCPI3_7(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	mulsd	.LCPI3_8(%rip), %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	cmpnlesd	.LCPI3_9(%rip), %xmm0
	andpd	%xmm0, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	mulsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	cmsLab2XYZ, .Lfunc_end3-cmsLab2XYZ
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4648953305343878758     # double 652.79999999999995
.LCPI4_1:
	.quad	4571153621781053440     # double 0.00390625
.LCPI4_2:
	.quad	-4584664420663164928    # double -128
	.text
	.globl	cmsLabEncoded2FloatV2
	.align	16, 0x90
	.type	cmsLabEncoded2FloatV2,@function
cmsLabEncoded2FloatV2:                  # @cmsLabEncoded2FloatV2
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI4_0(%rip), %xmm0
	movsd	%xmm0, (%rdi)
	movzwl	2(%rsi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rdi)
	movzwl	4(%rsi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rdi)
	retq
.Lfunc_end4:
	.size	cmsLabEncoded2FloatV2, .Lfunc_end4-cmsLabEncoded2FloatV2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4648975735381085389     # double 655.35000000000002
.LCPI5_1:
	.quad	4643228808005025792     # double 257
.LCPI5_2:
	.quad	-4584664420663164928    # double -128
	.text
	.globl	cmsLabEncoded2Float
	.align	16, 0x90
	.type	cmsLabEncoded2Float,@function
cmsLabEncoded2Float:                    # @cmsLabEncoded2Float
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	movsd	%xmm0, (%rdi)
	movzwl	2(%rsi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI5_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rdi)
	movzwl	4(%rsi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rdi)
	retq
.Lfunc_end5:
	.size	cmsLabEncoded2Float, .Lfunc_end5-cmsLabEncoded2Float
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4636764779145330688     # double 100.390625
.LCPI6_1:
	.quad	-4584664420663164928    # double -128
.LCPI6_2:
	.quad	4638707341313703936     # double 127.99609375
.LCPI6_3:
	.quad	4648953305343878758     # double 652.79999999999995
.LCPI6_4:
	.quad	4602678819172646912     # double 0.5
.LCPI6_5:
	.quad	4679239875398991872     # double 65535
.LCPI6_6:
	.quad	-4548635898522107904    # double -32767
.LCPI6_7:
	.quad	4771563805199040512     # double 103079215104
.LCPI6_8:
	.quad	4638707616191610880     # double 128
.LCPI6_9:
	.quad	4643211215818981376     # double 256
	.text
	.globl	cmsFloat2LabEncodedV2
	.align	16, 0x90
	.type	cmsFloat2LabEncodedV2,@function
cmsFloat2LabEncodedV2:                  # @cmsFloat2LabEncodedV2
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm2, %xmm2
	xorpd	%xmm0, %xmm0
	maxsd	(%rsi), %xmm0
	movsd	.LCPI6_0(%rip), %xmm4   # xmm4 = mem[0],zero
	minsd	%xmm0, %xmm4
	movsd	.LCPI6_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm5
	maxsd	8(%rsi), %xmm5
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	minsd	%xmm5, %xmm1
	maxsd	16(%rsi), %xmm3
	mulsd	.LCPI6_3(%rip), %xmm4
	addsd	.LCPI6_4(%rip), %xmm4
	ucomisd	%xmm4, %xmm2
	jae	.LBB6_1
# BB#2:                                 # %if.end.i.i.27
	movw	$-1, %ax
	ucomisd	.LCPI6_5(%rip), %xmm4
	jae	.LBB6_4
# BB#3:                                 # %if.end.3.i.i.34
	addsd	.LCPI6_6(%rip), %xmm4
	addsd	.LCPI6_7(%rip), %xmm4
	movd	%xmm4, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB6_4
.LBB6_1:
	xorl	%eax, %eax
.LBB6_4:                                # %L2Fix2.exit
	minsd	%xmm3, %xmm0
	movw	%ax, (%rdi)
	addsd	.LCPI6_8(%rip), %xmm1
	mulsd	.LCPI6_9(%rip), %xmm1
	addsd	.LCPI6_4(%rip), %xmm1
	ucomisd	%xmm1, %xmm2
	jae	.LBB6_5
# BB#6:                                 # %if.end.i.i.13
	movw	$-1, %ax
	ucomisd	.LCPI6_5(%rip), %xmm1
	jae	.LBB6_8
# BB#7:                                 # %if.end.3.i.i.20
	addsd	.LCPI6_6(%rip), %xmm1
	addsd	.LCPI6_7(%rip), %xmm1
	movd	%xmm1, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB6_8
.LBB6_5:
	xorl	%eax, %eax
.LBB6_8:                                # %ab2Fix2.exit22
	movw	%ax, 2(%rdi)
	addsd	.LCPI6_8(%rip), %xmm0
	mulsd	.LCPI6_9(%rip), %xmm0
	addsd	.LCPI6_4(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB6_9
# BB#10:                                # %if.end.i.i
	movw	$-1, %ax
	ucomisd	.LCPI6_5(%rip), %xmm0
	jae	.LBB6_12
# BB#11:                                # %if.end.3.i.i
	addsd	.LCPI6_6(%rip), %xmm0
	addsd	.LCPI6_7(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB6_12:                               # %ab2Fix2.exit
	movw	%ax, 4(%rdi)
	retq
.LBB6_9:
	xorl	%eax, %eax
	movw	%ax, 4(%rdi)
	retq
.Lfunc_end6:
	.size	cmsFloat2LabEncodedV2, .Lfunc_end6-cmsFloat2LabEncodedV2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
.LCPI7_1:
	.quad	-4584664420663164928    # double -128
.LCPI7_2:
	.quad	4638637247447433216     # double 127
.LCPI7_3:
	.quad	4648975735381085389     # double 655.35000000000002
.LCPI7_4:
	.quad	4602678819172646912     # double 0.5
.LCPI7_5:
	.quad	4679239875398991872     # double 65535
.LCPI7_6:
	.quad	-4548635898522107904    # double -32767
.LCPI7_7:
	.quad	4771563805199040512     # double 103079215104
.LCPI7_8:
	.quad	4638707616191610880     # double 128
.LCPI7_9:
	.quad	4643228808005025792     # double 257
	.text
	.globl	cmsFloat2LabEncoded
	.align	16, 0x90
	.type	cmsFloat2LabEncoded,@function
cmsFloat2LabEncoded:                    # @cmsFloat2LabEncoded
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm2, %xmm2
	xorpd	%xmm0, %xmm0
	maxsd	(%rsi), %xmm0
	movsd	.LCPI7_0(%rip), %xmm4   # xmm4 = mem[0],zero
	minsd	%xmm0, %xmm4
	movsd	.LCPI7_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm5
	maxsd	8(%rsi), %xmm5
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	minsd	%xmm5, %xmm1
	maxsd	16(%rsi), %xmm3
	mulsd	.LCPI7_3(%rip), %xmm4
	addsd	.LCPI7_4(%rip), %xmm4
	ucomisd	%xmm4, %xmm2
	jae	.LBB7_1
# BB#2:                                 # %if.end.i.i.27
	movw	$-1, %ax
	ucomisd	.LCPI7_5(%rip), %xmm4
	jae	.LBB7_4
# BB#3:                                 # %if.end.3.i.i.34
	addsd	.LCPI7_6(%rip), %xmm4
	addsd	.LCPI7_7(%rip), %xmm4
	movd	%xmm4, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB7_4
.LBB7_1:
	xorl	%eax, %eax
.LBB7_4:                                # %L2Fix4.exit
	minsd	%xmm3, %xmm0
	movw	%ax, (%rdi)
	addsd	.LCPI7_8(%rip), %xmm1
	mulsd	.LCPI7_9(%rip), %xmm1
	addsd	.LCPI7_4(%rip), %xmm1
	ucomisd	%xmm1, %xmm2
	jae	.LBB7_5
# BB#6:                                 # %if.end.i.i.13
	movw	$-1, %ax
	ucomisd	.LCPI7_5(%rip), %xmm1
	jae	.LBB7_8
# BB#7:                                 # %if.end.3.i.i.20
	addsd	.LCPI7_6(%rip), %xmm1
	addsd	.LCPI7_7(%rip), %xmm1
	movd	%xmm1, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB7_8
.LBB7_5:
	xorl	%eax, %eax
.LBB7_8:                                # %ab2Fix4.exit22
	movw	%ax, 2(%rdi)
	addsd	.LCPI7_8(%rip), %xmm0
	mulsd	.LCPI7_9(%rip), %xmm0
	addsd	.LCPI7_4(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB7_9
# BB#10:                                # %if.end.i.i
	movw	$-1, %ax
	ucomisd	.LCPI7_5(%rip), %xmm0
	jae	.LBB7_12
# BB#11:                                # %if.end.3.i.i
	addsd	.LCPI7_6(%rip), %xmm0
	addsd	.LCPI7_7(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB7_12:                               # %ab2Fix4.exit
	movw	%ax, 4(%rdi)
	retq
.LBB7_9:
	xorl	%eax, %eax
	movw	%ax, 4(%rdi)
	retq
.Lfunc_end7:
	.size	cmsFloat2LabEncoded, .Lfunc_end7-cmsFloat2LabEncoded
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
.LCPI8_1:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI8_2:
	.quad	4645040803167600640     # double 360
.LCPI8_3:
	.quad	-4578331233687175168    # double -360
	.text
	.globl	cmsLab2LCh
	.align	16, 0x90
	.type	cmsLab2LCh,@function
cmsLab2LCh:                             # @cmsLab2LCh
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 8(%r14)
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jne	.LBB8_2
	jp	.LBB8_2
# BB#1:                                 # %entry
	xorps	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm1
	jne	.LBB8_2
	jnp	.LBB8_8
.LBB8_2:                                # %while.cond.preheader.i
	movapd	%xmm2, %xmm0
	callq	atan2
	mulsd	.LCPI8_1(%rip), %xmm0
	ucomisd	.LCPI8_2(%rip), %xmm0
	jbe	.LBB8_5
# BB#3:
	movsd	.LCPI8_3(%rip), %xmm1   # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB8_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI8_2(%rip), %xmm0
	ja	.LBB8_4
.LBB8_5:                                # %while.cond.3.preheader.i
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_8
# BB#6:
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB8_7:                                # %while.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.LBB8_7
.LBB8_8:                                # %atan2deg.exit
	movsd	%xmm0, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	cmsLab2LCh, .Lfunc_end8-cmsLab2LCh
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI9_1:
	.quad	4640537203540230144     # double 180
	.text
	.globl	cmsLCh2Lab
	.align	16, 0x90
	.type	cmsLCh2Lab,@function
cmsLCh2Lab:                             # @cmsLCh2Lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -24
.Ltmp21:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI9_0(%rip), %xmm0
	divsd	.LCPI9_1(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	cos
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%r14)
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 16(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	cmsLCh2Lab, .Lfunc_end9-cmsLCh2Lab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611685880988434432     # double 1.999969482421875
.LCPI10_1:
	.quad	4674736413210574848     # double 32768
.LCPI10_2:
	.quad	4602678819172646912     # double 0.5
.LCPI10_3:
	.quad	4679239875398991872     # double 65535
.LCPI10_4:
	.quad	-4548635898522107904    # double -32767
.LCPI10_5:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsFloat2XYZEncoded
	.align	16, 0x90
	.type	cmsFloat2XYZEncoded,@function
cmsFloat2XYZEncoded:                    # @cmsFloat2XYZEncoded
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jb	.LBB10_1
# BB#2:                                 # %entry
	xorpd	%xmm3, %xmm3
	jmp	.LBB10_3
.LBB10_1:
	movsd	16(%rsi), %xmm3         # xmm3 = mem[0],zero
.LBB10_3:                               # %entry
	movapd	%xmm2, %xmm5
	cmpnlesd	%xmm0, %xmm5
	andpd	%xmm2, %xmm5
	jb	.LBB10_5
# BB#4:                                 # %entry
	xorpd	%xmm1, %xmm1
.LBB10_5:                               # %entry
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm6
	minsd	%xmm1, %xmm6
	xorpd	%xmm4, %xmm4
	maxsd	%xmm6, %xmm4
	movapd	%xmm2, %xmm6
	minsd	%xmm5, %xmm6
	xorpd	%xmm1, %xmm1
	maxsd	%xmm6, %xmm1
	minsd	%xmm3, %xmm2
	mulsd	.LCPI10_1(%rip), %xmm4
	addsd	.LCPI10_2(%rip), %xmm4
	ucomisd	%xmm4, %xmm0
	jae	.LBB10_6
# BB#7:                                 # %if.end.i.i
	movw	$-1, %ax
	ucomisd	.LCPI10_3(%rip), %xmm4
	jae	.LBB10_9
# BB#8:                                 # %if.end.3.i.i
	addsd	.LCPI10_4(%rip), %xmm4
	addsd	.LCPI10_5(%rip), %xmm4
	movd	%xmm4, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB10_9
.LBB10_6:
	xorl	%eax, %eax
.LBB10_9:                               # %XYZ2Fix.exit
	maxsd	%xmm2, %xmm0
	movw	%ax, (%rdi)
	mulsd	.LCPI10_1(%rip), %xmm1
	addsd	.LCPI10_2(%rip), %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jae	.LBB10_10
# BB#11:                                # %if.end.i.i.33
	movw	$-1, %ax
	ucomisd	.LCPI10_3(%rip), %xmm1
	jae	.LBB10_13
# BB#12:                                # %if.end.3.i.i.40
	addsd	.LCPI10_4(%rip), %xmm1
	addsd	.LCPI10_5(%rip), %xmm1
	movd	%xmm1, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB10_13
.LBB10_10:
	xorl	%eax, %eax
.LBB10_13:                              # %XYZ2Fix.exit42
	movw	%ax, 2(%rdi)
	mulsd	.LCPI10_1(%rip), %xmm0
	addsd	.LCPI10_2(%rip), %xmm0
	ucomisd	%xmm0, %xmm2
	jae	.LBB10_14
# BB#15:                                # %if.end.i.i.19
	movw	$-1, %ax
	ucomisd	.LCPI10_3(%rip), %xmm0
	jae	.LBB10_17
# BB#16:                                # %if.end.3.i.i.26
	addsd	.LCPI10_4(%rip), %xmm0
	addsd	.LCPI10_5(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB10_17:                              # %XYZ2Fix.exit28
	movw	%ax, 4(%rdi)
	retq
.LBB10_14:
	xorl	%eax, %eax
	movw	%ax, 4(%rdi)
	retq
.Lfunc_end10:
	.size	cmsFloat2XYZEncoded, .Lfunc_end10-cmsFloat2XYZEncoded
	.cfi_endproc

	.globl	cmsXYZEncoded2Float
	.align	16, 0x90
	.type	cmsXYZEncoded2Float,@function
cmsXYZEncoded2Float:                    # @cmsXYZEncoded2Float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -24
.Ltmp26:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzwl	(%rbx), %edi
	addl	%edi, %edi
	callq	_cms15Fixed16toDouble
	movsd	%xmm0, (%r14)
	movzwl	2(%rbx), %edi
	addl	%edi, %edi
	callq	_cms15Fixed16toDouble
	movsd	%xmm0, 8(%r14)
	movzwl	4(%rbx), %edi
	addl	%edi, %edi
	callq	_cms15Fixed16toDouble
	movsd	%xmm0, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	cmsXYZEncoded2Float, .Lfunc_end11-cmsXYZEncoded2Float
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	cmsDeltaE
	.align	16, 0x90
	.type	cmsDeltaE,@function
cmsDeltaE:                              # @cmsDeltaE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -24
.Ltmp31:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%r14), %xmm0
	callq	fabs
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%r14), %xmm0
	callq	fabs
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%r14), %xmm0
	callq	fabs
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	jmp	pow                     # TAILCALL
.Lfunc_end12:
	.size	cmsDeltaE, .Lfunc_end12-cmsDeltaE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
.LCPI13_1:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI13_2:
	.quad	4645040803167600640     # double 360
.LCPI13_3:
	.quad	-4578331233687175168    # double -360
.LCPI13_4:
	.quad	4587078350063435514     # double 0.048000000000000001
.LCPI13_5:
	.quad	4607182418800017408     # double 1
.LCPI13_6:
	.quad	4579224072313301369     # double 0.014
	.text
	.globl	cmsCIE94DeltaE
	.align	16, 0x90
	.type	cmsCIE94DeltaE,@function
cmsCIE94DeltaE:                         # @cmsCIE94DeltaE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 80
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%r14), %xmm0
	callq	fabs
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB13_2
	jp	.LBB13_2
# BB#1:                                 # %entry
	ucomisd	%xmm2, %xmm1
	jne	.LBB13_2
	jnp	.LBB13_8
.LBB13_2:                               # %while.cond.preheader.i.i
	callq	atan2
	mulsd	.LCPI13_1(%rip), %xmm0
	ucomisd	.LCPI13_2(%rip), %xmm0
	jbe	.LBB13_5
# BB#3:
	movsd	.LCPI13_3(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB13_4:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI13_2(%rip), %xmm0
	ja	.LBB13_4
.LBB13_5:                               # %while.cond.3.preheader.i.i
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_8
# BB#6:
	movsd	.LCPI13_2(%rip), %xmm2  # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB13_7:                               # %while.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.LBB13_7
.LBB13_8:                               # %cmsLab2LCh.exit
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB13_10
	jp	.LBB13_10
# BB#9:                                 # %cmsLab2LCh.exit
	ucomisd	%xmm2, %xmm1
	jne	.LBB13_10
	jnp	.LBB13_16
.LBB13_10:                              # %while.cond.preheader.i.i.30
	callq	atan2
	mulsd	.LCPI13_1(%rip), %xmm0
	ucomisd	.LCPI13_2(%rip), %xmm0
	jbe	.LBB13_13
# BB#11:
	movsd	.LCPI13_3(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB13_12:                              # %while.body.i.i.37
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI13_2(%rip), %xmm0
	ja	.LBB13_12
.LBB13_13:                              # %while.cond.3.preheader.i.i.33
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_16
# BB#14:
	movsd	.LCPI13_2(%rip), %xmm2  # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB13_15:                              # %while.body.5.i.i.41
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.LBB13_15
.LBB13_16:                              # %cmsLab2LCh.exit44
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	callq	fabs
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%r14), %xmm0
	callq	fabs
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%r14), %xmm0
	callq	fabs
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%r14), %xmm0
	callq	fabs
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	mulsd	%xmm0, %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	subsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	subsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB13_18
# BB#17:                                # %if.else
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm1
.LBB13_18:                              # %if.end
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB13_20
# BB#19:                                # %call.sqrt
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB13_20:                              # %if.end.split
	movsd	.LCPI13_4(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	.LCPI13_5(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	mulsd	.LCPI13_6(%rip), %xmm0
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm1
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm2, %xmm1
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB13_22
# BB#21:                                # %if.end.split.split
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB13_22:                              # %call.sqrt64
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	jmp	sqrt                    # TAILCALL
.Lfunc_end13:
	.size	cmsCIE94DeltaE, .Lfunc_end13-cmsCIE94DeltaE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4620689805079511256     # double 7.9969689999999999
.LCPI14_1:
	.quad	4651156726645941862     # double 903.29999999999995
.LCPI14_2:
	.quad	4625196817309499392     # double 16
.LCPI14_3:
	.quad	4637863191261478912     # double 116
.LCPI14_4:
	.quad	4636737291354636288     # double 100
.LCPI14_5:
	.quad	4609434218613702656     # double 1.5
.LCPI14_6:
	.quad	4601495173785380110     # double 0.43429448190325182
.LCPI14_7:
	.quad	4632881084173700301     # double 54.600000000000001
.LCPI14_8:
	.quad	-4601778099247172813    # double -9.5999999999999996
.LCPI14_9:
	.quad	4602678819172646912     # double 0.5
.LCPI14_10:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI14_11:
	.quad	4645040803167600640     # double 360
.LCPI14_12:
	.quad	-4578331233687175168    # double -360
.LCPI14_13:
	.quad	4585204852618449388     # double 0.035000000000000003
.LCPI14_14:
	.quad	4570562749509942431     # double 0.00365
.LCPI14_15:
	.quad	4607182418800017408     # double 1
.LCPI14_16:
	.quad	4602867970356996473     # double 0.52100000000000002
.LCPI14_17:
	.quad	4668922195722895360     # double 14000
.LCPI14_18:
	.quad	-4580231189779972096    # double -254
.LCPI14_19:
	.quad	4588087156379966505     # double 0.055
.LCPI14_20:
	.quad	-4584382945686454272    # double -136
.LCPI14_21:
	.quad	-4637446608295947141    # double -0.040000000000000001
.LCPI14_22:
	.quad	4613937818241073152     # double 3
.LCPI14_23:
	.quad	-4593953094894616576    # double -31
.LCPI14_24:
	.quad	4589708452245819884     # double 0.070000000000000007
.LCPI14_25:
	.quad	4616189618054758400     # double 4
.LCPI14_26:
	.quad	4637722453773123584     # double 114
.LCPI14_27:
	.quad	4587222465251511370     # double 0.049000000000000002
.LCPI14_28:
	.quad	4617315517961601024     # double 5
.LCPI14_29:
	.quad	-4586423639267606528    # double -103
.LCPI14_30:
	.quad	-4643571503789171016    # double -0.014999999999999999
.LCPI14_31:
	.quad	4603822733477999018     # double 0.627
.LCPI14_32:
	.quad	-4579246027361484800    # double -308
.LCPI14_33:
	.quad	-4625016673324404572    # double -0.26000000000000001
.LCPI14_34:
	.quad	-4583538520756322304    # double -160
.LCPI14_35:
	.quad	-4622872959901776216    # double -0.379
.LCPI14_36:
	.quad	4643140847074803712     # double 254
.LCPI14_37:
	.quad	-4619468238583484121    # double -0.63600000000000001
.LCPI14_38:
	.quad	4639129828656676864     # double 140
.LCPI14_39:
	.quad	4597310528416821281     # double 0.22600000000000001
.LCPI14_40:
	.quad	4643633428284047360     # double 280
.LCPI14_41:
	.quad	-4627214429942561374    # double -0.19400000000000001
.LCPI14_42:
	.quad	4724470029964279808     # double 7.0E+7
	.text
	.globl	cmsBFDdeltaE
	.align	16, 0x90
	.type	cmsBFDdeltaE,@function
cmsBFDdeltaE:                           # @cmsBFDdeltaE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 128
.Ltmp40:
	.cfi_offset %rbx, -24
.Ltmp41:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	ucomisd	.LCPI14_0(%rip), %xmm1
	jbe	.LBB14_2
# BB#1:                                 # %if.then.i
	addsd	.LCPI14_2(%rip), %xmm1
	divsd	.LCPI14_3(%rip), %xmm1
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.LBB14_3
.LBB14_2:                               # %if.else.i
	divsd	.LCPI14_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
.LBB14_3:                               # %ComputeLBFD.exit
	mulsd	.LCPI14_4(%rip), %xmm0
	addsd	.LCPI14_5(%rip), %xmm0
	callq	log
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	.LCPI14_0(%rip), %xmm1
	jbe	.LBB14_5
# BB#4:                                 # %if.then.i.64
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	addsd	.LCPI14_2(%rip), %xmm1
	divsd	.LCPI14_3(%rip), %xmm1
	movapd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.LBB14_6
.LBB14_5:                               # %if.else.i.66
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	divsd	.LCPI14_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
.LBB14_6:                               # %ComputeLBFD.exit74
	mulsd	.LCPI14_4(%rip), %xmm0
	addsd	.LCPI14_5(%rip), %xmm0
	callq	log
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI14_9(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm0
	jne	.LBB14_8
	jp	.LBB14_8
# BB#7:                                 # %ComputeLBFD.exit74
	xorps	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB14_8
	jnp	.LBB14_14
.LBB14_8:                               # %while.cond.preheader.i.i
	callq	atan2
	movapd	%xmm0, %xmm3
	mulsd	.LCPI14_10(%rip), %xmm3
	ucomisd	.LCPI14_11(%rip), %xmm3
	jbe	.LBB14_11
# BB#9:
	movsd	.LCPI14_12(%rip), %xmm0 # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB14_10:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm3
	ucomisd	.LCPI14_11(%rip), %xmm3
	ja	.LBB14_10
.LBB14_11:                              # %while.cond.3.preheader.i.i
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm3, %xmm0
	jbe	.LBB14_14
# BB#12:
	movsd	.LCPI14_11(%rip), %xmm1 # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB14_13:                              # %while.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm3
	ucomisd	%xmm3, %xmm0
	ja	.LBB14_13
.LBB14_14:                              # %cmsLab2LCh.exit
	movsd	%xmm3, 96(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI14_6(%rip), %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI14_6(%rip), %xmm0
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI14_9(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm4
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jne	.LBB14_16
	jp	.LBB14_16
# BB#15:                                # %cmsLab2LCh.exit
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm1
	jne	.LBB14_16
	jnp	.LBB14_21
.LBB14_16:                              # %while.cond.preheader.i.i.90
	movsd	%xmm4, 64(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	atan2
	mulsd	.LCPI14_10(%rip), %xmm0
	ucomisd	.LCPI14_11(%rip), %xmm0
	jbe	.LBB14_17
# BB#30:
	movsd	.LCPI14_12(%rip), %xmm1 # xmm1 = mem[0],zero
	movsd	64(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB14_31:                              # %while.body.i.i.97
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI14_11(%rip), %xmm0
	ja	.LBB14_31
	jmp	.LBB14_18
.LBB14_17:
	movsd	64(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
.LBB14_18:                              # %while.cond.3.preheader.i.i.93
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_21
# BB#19:
	movsd	.LCPI14_11(%rip), %xmm2 # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB14_20:                              # %while.body.5.i.i.101
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.LBB14_20
.LBB14_21:                              # %cmsLab2LCh.exit104
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI14_7(%rip), %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI14_7(%rip), %xmm1
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movapd	%xmm4, %xmm2
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	addsd	%xmm4, %xmm1
	movsd	.LCPI14_9(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rbx), %xmm0
	callq	fabs
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rbx), %xmm0
	callq	fabs
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rbx), %xmm0
	callq	fabs
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LCPI14_9(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	movsd	(%rbx), %xmm3           # xmm3 = mem[0],zero
	subsd	(%r14), %xmm3
	mulsd	%xmm3, %xmm3
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movapd	%xmm1, %xmm2
	addsd	%xmm3, %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm4
	jbe	.LBB14_24
# BB#22:                                # %if.then
	subsd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	movsd	%xmm4, 64(%rsp)         # 8-byte Spill
	movapd	%xmm4, %xmm0
	callq	sqrt
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jnp	.LBB14_24
# BB#23:                                # %call.sqrt
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB14_24:                              # %if.end
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_8(%rip), %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_8(%rip), %xmm0
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI14_9(%rip), %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	.LCPI14_13(%rip), %xmm1 # xmm1 = mem[0],zero
	movsd	72(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	.LCPI14_14(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	.LCPI14_15(%rip), %xmm0
	divsd	%xmm0, %xmm1
	addsd	.LCPI14_16(%rip), %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	mulsd	%xmm0, %xmm0
	movsd	.LCPI14_17(%rip), %xmm1 # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB14_26
# BB#25:                                # %call.sqrt130
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB14_26:                              # %if.end.split
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movsd	.LCPI14_18(%rip), %xmm0 # xmm0 = mem[0],zero
	addsd	96(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_19(%rip), %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	.LCPI14_20(%rip), %xmm0 # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_21(%rip), %xmm0
	addsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI14_22(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	96(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	.LCPI14_23(%rip), %xmm0 # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_24(%rip), %xmm0
	addsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI14_25(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	96(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	.LCPI14_26(%rip), %xmm0 # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_27(%rip), %xmm0
	addsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI14_28(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	96(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movsd	.LCPI14_29(%rip), %xmm0 # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_30(%rip), %xmm0
	addsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	.LCPI14_31(%rip), %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI14_15(%rip), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_32(%rip), %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_33(%rip), %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_34(%rip), %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_35(%rip), %xmm0
	addsd	96(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_36(%rip), %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_37(%rip), %xmm0
	addsd	96(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_38(%rip), %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_39(%rip), %xmm0
	addsd	96(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI14_40(%rip), %xmm0
	divsd	.LCPI14_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI14_41(%rip), %xmm0
	addsd	96(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LCPI14_42(%rip), %xmm1 # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB14_28
# BB#27:                                # %call.sqrt131
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB14_28:                              # %if.end.split.split
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	40(%rsp), %xmm3         # 8-byte Folded Reload
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm3
	addsd	%xmm1, %xmm3
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB14_29
# BB#32:                                # %if.end.split.split.split
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB14_29:                              # %call.sqrt132
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	jmp	sqrt                    # TAILCALL
.Lfunc_end14:
	.size	cmsBFDdeltaE, .Lfunc_end14-cmsBFDdeltaE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
.LCPI15_1:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI15_2:
	.quad	4645040803167600640     # double 360
.LCPI15_3:
	.quad	-4578331233687175168    # double -360
.LCPI15_4:
	.quad	4639974253586808832     # double 164
.LCPI15_5:
	.quad	4644776920376934400     # double 345
.LCPI15_6:
	.quad	4630122629401935872     # double 35
.LCPI15_7:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI15_8:
	.quad	4600156803381319434     # double 0.35999999999999999
.LCPI15_9:
	.quad	4640114991075164160     # double 168
.LCPI15_10:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI15_11:
	.quad	4603219251127931372     # double 0.56000000000000005
.LCPI15_12:
	.quad	4589261695162784730     # double 0.063799999999999996
.LCPI15_13:
	.quad	4578705257636228288     # double 0.013100000000000001
.LCPI15_14:
	.quad	4607182418800017408     # double 1
.LCPI15_15:
	.quad	4603921812669801169     # double 0.63800000000000001
.LCPI15_16:
	.quad	4586065940867202626     # double 0.040974999999999998
.LCPI15_17:
	.quad	4580744487547501648     # double 0.017649999999999999
.LCPI15_18:
	.quad	4625196817309499392     # double 16
.LCPI15_19:
	.quad	4602777898364449063     # double 0.51100000000000001
.LCPI15_20:
	.quad	4656071103817449472     # double 1900
	.text
	.globl	cmsCMCdeltaE
	.align	16, 0x90
	.type	cmsCMCdeltaE,@function
cmsCMCdeltaE:                           # @cmsCMCdeltaE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 96
.Ltmp45:
	.cfi_offset %rbx, -24
.Ltmp46:
	.cfi_offset %r14, -16
	movapd	%xmm0, %xmm3
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB15_2
	jp	.LBB15_2
# BB#1:                                 # %land.lhs.true
	movsd	(%rbx), %xmm2           # xmm2 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jne	.LBB15_2
	jnp	.LBB15_28
.LBB15_2:                               # %if.end
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	xorpd	%xmm3, %xmm3
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jne	.LBB15_4
	jp	.LBB15_4
# BB#3:                                 # %if.end
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB15_4
	jnp	.LBB15_10
.LBB15_4:                               # %while.cond.preheader.i.i
	callq	atan2
	movapd	%xmm0, %xmm3
	mulsd	.LCPI15_1(%rip), %xmm3
	ucomisd	.LCPI15_2(%rip), %xmm3
	jbe	.LBB15_7
# BB#5:
	movsd	.LCPI15_3(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB15_6:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm3
	ucomisd	.LCPI15_2(%rip), %xmm3
	ja	.LBB15_6
.LBB15_7:                               # %while.cond.3.preheader.i.i
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm3, %xmm0
	jbe	.LBB15_10
# BB#8:
	movsd	.LCPI15_2(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB15_9:                               # %while.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm3
	ucomisd	%xmm3, %xmm0
	ja	.LBB15_9
.LBB15_10:                              # %cmsLab2LCh.exit
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB15_12
	jp	.LBB15_12
# BB#11:                                # %cmsLab2LCh.exit
	ucomisd	%xmm2, %xmm1
	jne	.LBB15_12
	jnp	.LBB15_18
.LBB15_12:                              # %while.cond.preheader.i.i.40
	callq	atan2
	mulsd	.LCPI15_1(%rip), %xmm0
	ucomisd	.LCPI15_2(%rip), %xmm0
	jbe	.LBB15_15
# BB#13:
	movsd	.LCPI15_3(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB15_14:                              # %while.body.i.i.47
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	ucomisd	.LCPI15_2(%rip), %xmm0
	ja	.LBB15_14
.LBB15_15:                              # %while.cond.3.preheader.i.i.43
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_18
# BB#16:
	movsd	.LCPI15_2(%rip), %xmm2  # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB15_17:                              # %while.body.5.i.i.51
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	ja	.LBB15_17
.LBB15_18:                              # %cmsLab2LCh.exit54
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	48(%rsp), %xmm2         # 8-byte Folded Reload
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	subsd	8(%rbx), %xmm0
	callq	fabs
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rbx), %xmm0
	callq	fabs
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm4
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm3
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movapd	%xmm1, %xmm2
	addsd	%xmm3, %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm4
	jbe	.LBB15_21
# BB#19:                                # %if.then.11
	subsd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	movsd	%xmm4, 56(%rsp)         # 8-byte Spill
	movapd	%xmm4, %xmm0
	callq	sqrt
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jnp	.LBB15_21
# BB#20:                                # %call.sqrt
	movapd	%xmm1, %xmm0
	callq	sqrt
.LBB15_21:                              # %if.end.18
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI15_4(%rip), %xmm0
	jbe	.LBB15_24
# BB#22:                                # %if.end.18
	movsd	.LCPI15_5(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_24
# BB#23:                                # %if.then.23
	addsd	.LCPI15_9(%rip), %xmm0
	divsd	.LCPI15_1(%rip), %xmm0
	callq	cos
	mulsd	.LCPI15_10(%rip), %xmm0
	callq	fabs
	addsd	.LCPI15_11(%rip), %xmm0
	jmp	.LBB15_25
.LBB15_24:                              # %if.else.29
	addsd	.LCPI15_6(%rip), %xmm0
	divsd	.LCPI15_1(%rip), %xmm0
	callq	cos
	mulsd	.LCPI15_7(%rip), %xmm0
	callq	fabs
	addsd	.LCPI15_8(%rip), %xmm0
.LBB15_25:                              # %if.end.37
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	.LCPI15_12(%rip), %xmm2 # xmm2 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movsd	.LCPI15_13(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	.LCPI15_14(%rip), %xmm1 # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	addsd	.LCPI15_15(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	(%r14), %xmm4           # xmm4 = mem[0],zero
	movsd	.LCPI15_16(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm4, %xmm0
	movsd	.LCPI15_17(%rip), %xmm2 # xmm2 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	cmpltsd	.LCPI15_18(%rip), %xmm4
	movsd	.LCPI15_19(%rip), %xmm1 # xmm1 = mem[0],zero
	andpd	%xmm4, %xmm1
	andnpd	%xmm0, %xmm4
	orpd	%xmm1, %xmm4
	movsd	%xmm4, (%rsp)           # 8-byte Spill
	movapd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LCPI15_20(%rip), %xmm1 # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB15_27
# BB#26:                                # %call.sqrt76
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB15_27:                              # %if.end.37.split
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	addsd	.LCPI15_14(%rip), %xmm3
	subsd	%xmm0, %xmm3
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm3
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB15_29
.LBB15_28:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB15_29:                              # %call.sqrt77
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	jmp	sqrt                    # TAILCALL
.Lfunc_end15:
	.size	cmsCMCdeltaE, .Lfunc_end15-cmsCMCdeltaE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
.LCPI16_1:
	.quad	4619567317775286272     # double 7
.LCPI16_2:
	.quad	4627730092099895296     # double 25
.LCPI16_3:
	.quad	4607182418800017408     # double 1
.LCPI16_4:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI16_5:
	.quad	4645040803167600640     # double 360
.LCPI16_6:
	.quad	-4578331233687175168    # double -360
.LCPI16_7:
	.quad	4640537203575414516     # double 180.000001
.LCPI16_9:
	.quad	-4582834833279361292    # double -180.000001
.LCPI16_10:
	.quad	4640537203540230144     # double 180
.LCPI16_11:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI16_12:
	.quad	-4594234569871327232    # double -30
.LCPI16_13:
	.quad	-4628079121071016509    # double -0.17000000000000001
.LCPI16_14:
	.quad	4597814931575086776     # double 0.23999999999999999
.LCPI16_15:
	.quad	4613937818241073152     # double 3
.LCPI16_16:
	.quad	4618441417868443648     # double 6
.LCPI16_17:
	.quad	4599436227440940155     # double 0.32000000000000001
.LCPI16_18:
	.quad	4616189618054758400     # double 4
.LCPI16_19:
	.quad	-4589308757778890752    # double -63
.LCPI16_20:
	.quad	-4626998257160447590    # double -0.20000000000000001
.LCPI16_21:
	.quad	-4591138345127510016    # double -50
.LCPI16_22:
	.quad	4579800533065604792     # double 0.014999999999999999
.LCPI16_23:
	.quad	4626322717216342016     # double 20
.LCPI16_24:
	.quad	4586646004499207946     # double 0.044999999999999998
.LCPI16_25:
	.quad	-4579826569500950528    # double -275
.LCPI16_27:
	.quad	4629137466983448576     # double 30
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_8:
	.quad	-4578331233687175168    # double -3.600000e+02
	.quad	4645040803167600640     # double 3.600000e+02
.LCPI16_26:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	cmsCIE2000DeltaE
	.align	16, 0x90
	.type	cmsCIE2000DeltaE,@function
cmsCIE2000DeltaE:                       # @cmsCIE2000DeltaE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 144
.Ltmp49:
	.cfi_offset %rbx, -16
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movq	%rsi, %rbx
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_2
# BB#1:                                 # %call.sqrt
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_2:                               # %entry.split
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	mulsd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_4
# BB#3:                                 # %call.sqrt122
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_4:                               # %entry.split.split
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	mulsd	.LCPI16_0(%rip), %xmm2
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	addsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_6
# BB#5:                                 # %call.sqrt123
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_6:                               # %entry.split.split.split
	movsd	.LCPI16_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	mulsd	.LCPI16_0(%rip), %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movsd	104(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_8
# BB#7:                                 # %call.sqrt124
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
.LBB16_8:                               # %entry.split.split.split.split
	xorpd	%xmm3, %xmm3
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	movsd	104(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jne	.LBB16_10
	jp	.LBB16_10
# BB#9:                                 # %entry.split.split.split.split
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB16_10
	jnp	.LBB16_18
.LBB16_10:                              # %while.cond.preheader.i.104
	callq	atan2
	movapd	%xmm0, %xmm3
	mulsd	.LCPI16_4(%rip), %xmm3
	ucomisd	.LCPI16_5(%rip), %xmm3
	jbe	.LBB16_11
# BB#14:
	movsd	.LCPI16_6(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB16_15:                              # %while.body.i.111
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm3
	ucomisd	.LCPI16_5(%rip), %xmm3
	ja	.LBB16_15
	jmp	.LBB16_12
.LBB16_11:
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB16_12:                              # %while.cond.3.preheader.i.107
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm3, %xmm0
	jbe	.LBB16_13
# BB#16:
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	movsd	.LCPI16_5(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB16_17:                              # %while.body.5.i.115
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm3
	ucomisd	%xmm3, %xmm0
	ja	.LBB16_17
	jmp	.LBB16_18
.LBB16_13:
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
.LBB16_18:                              # %atan2deg.exit117
	movsd	%xmm3, 80(%rsp)         # 8-byte Spill
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_20
# BB#19:                                # %call.sqrt125
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_20:                              # %atan2deg.exit117.split
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
	xorpd	%xmm4, %xmm4
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	80(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jne	.LBB16_22
	jp	.LBB16_22
# BB#21:                                # %atan2deg.exit117.split
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB16_22
	jnp	.LBB16_27
.LBB16_22:                              # %while.cond.preheader.i
	callq	atan2
	movapd	%xmm0, %xmm4
	mulsd	.LCPI16_4(%rip), %xmm4
	ucomisd	.LCPI16_5(%rip), %xmm4
	jbe	.LBB16_23
# BB#29:
	movsd	.LCPI16_6(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.align	16, 0x90
.LBB16_30:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm0, %xmm4
	ucomisd	.LCPI16_5(%rip), %xmm4
	ja	.LBB16_30
	jmp	.LBB16_24
.LBB16_23:
	movsd	80(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB16_24:                              # %while.cond.3.preheader.i
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.LBB16_27
# BB#25:
	movsd	.LCPI16_5(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB16_26:                              # %while.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm4
	ucomisd	%xmm4, %xmm0
	ja	.LBB16_26
.LBB16_27:                              # %atan2deg.exit
	movapd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	movapd	%xmm0, 112(%rsp)        # 16-byte Spill
	subsd	%xmm3, %xmm4
	movsd	%xmm4, 64(%rsp)         # 8-byte Spill
	movapd	%xmm4, %xmm0
	callq	fabs
	movsd	.LCPI16_7(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB16_28
# BB#31:                                # %cond.false
	movsd	.LCPI16_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	ucomisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	addsd	.LCPI16_8(,%rax,8), %xmm1
	movapd	%xmm1, %xmm3
	jmp	.LBB16_32
.LBB16_28:
	movapd	112(%rsp), %xmm3        # 16-byte Reload
.LBB16_32:                              # %cond.end.46
	movsd	.LCPI16_9(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jae	.LBB16_33
# BB#34:                                # %cond.false.51
	movsd	.LCPI16_6(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	.LCPI16_10(%rip), %xmm1 # xmm1 = mem[0],zero
	cmpltsd	%xmm2, %xmm1
	andpd	%xmm1, %xmm0
	andnpd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	jmp	.LBB16_35
.LBB16_33:                              # %cond.true.49
	addsd	.LCPI16_5(%rip), %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
.LBB16_35:                              # %cond.end.58
	movsd	104(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, 104(%rsp)        # 8-byte Spill
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	addsd	%xmm4, %xmm2
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	mulsd	.LCPI16_0(%rip), %xmm3
	movapd	%xmm3, 112(%rsp)        # 16-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	%xmm4, %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_37
# BB#36:                                # %call.sqrt126
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_37:                              # %cond.end.58.split
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	80(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI16_11(%rip), %xmm0
	divsd	.LCPI16_10(%rip), %xmm0
	mulsd	.LCPI16_0(%rip), %xmm0
	callq	sin
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	.LCPI16_12(%rip), %xmm0 # xmm0 = mem[0],zero
	addsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	mulsd	.LCPI16_11(%rip), %xmm0
	divsd	.LCPI16_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI16_13(%rip), %xmm0
	addsd	.LCPI16_3(%rip), %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movapd	112(%rsp), %xmm0        # 16-byte Reload
	addsd	%xmm0, %xmm0
	mulsd	.LCPI16_11(%rip), %xmm0
	divsd	.LCPI16_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI16_14(%rip), %xmm0
	addsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	.LCPI16_15(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	addsd	.LCPI16_16(%rip), %xmm0
	mulsd	.LCPI16_11(%rip), %xmm0
	divsd	.LCPI16_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI16_17(%rip), %xmm0
	addsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	.LCPI16_18(%rip), %xmm0 # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0        # 16-byte Folded Reload
	addsd	.LCPI16_19(%rip), %xmm0
	mulsd	.LCPI16_11(%rip), %xmm0
	divsd	.LCPI16_10(%rip), %xmm0
	callq	cos
	mulsd	.LCPI16_20(%rip), %xmm0
	addsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	88(%rsp), %xmm0         # 8-byte Folded Reload
	mulsd	.LCPI16_0(%rip), %xmm0
	addsd	.LCPI16_21(%rip), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	.LCPI16_22(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	addsd	.LCPI16_23(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_39
# BB#38:                                # %call.sqrt127
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_39:                              # %cond.end.58.split.split
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	48(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movsd	104(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	56(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 104(%rsp)        # 8-byte Spill
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	16(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI16_3(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI16_24(%rip), %xmm1
	mulsd	.LCPI16_0(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	.LCPI16_22(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	72(%rsp), %xmm1         # 8-byte Folded Reload
	mulsd	8(%rsp), %xmm1          # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	addsd	.LCPI16_25(%rip), %xmm1
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	xorpd	.LCPI16_26(%rip), %xmm1
	movapd	%xmm1, %xmm0
	callq	exp
	mulsd	.LCPI16_27(%rip), %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	pow
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	callq	pow
	addsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB16_41
# BB#40:                                # %call.sqrt128
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB16_41:                              # %cond.end.58.split.split.split
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI16_11(%rip), %xmm0
	divsd	.LCPI16_10(%rip), %xmm0
	addsd	%xmm0, %xmm0
	callq	sin
	mulsd	112(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	88(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm2
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	32(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	104(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm3
	addsd	%xmm2, %xmm3
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	40(%rsp), %xmm2         # 8-byte Folded Reload
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm3, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jp	.LBB16_43
# BB#42:                                # %cond.end.58.split.split.split.split
	addq	$128, %rsp
	popq	%rbx
	retq
.LBB16_43:                              # %call.sqrt129
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbx
	jmp	sqrt                    # TAILCALL
.Lfunc_end16:
	.size	cmsCIE2000DeltaE, .Lfunc_end16-cmsCIE2000DeltaE
	.cfi_endproc

	.globl	_cmsReasonableGridpointsByColorspace
	.align	16, 0x90
	.type	_cmsReasonableGridpointsByColorspace,@function
_cmsReasonableGridpointsByColorspace:   # @_cmsReasonableGridpointsByColorspace
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	testl	$16711680, %eax         # imm = 0xFF0000
	je	.LBB17_2
# BB#1:                                 # %if.then
	shrl	$16, %eax
	movzbl	%al, %eax
	retq
.LBB17_2:                               # %if.end
	movl	$1, %ecx
	cmpl	$1282766367, %edi       # imm = 0x4C75761F
	jg	.LBB17_37
# BB#3:                                 # %if.end
	cmpl	$1111706705, %edi       # imm = 0x42434C51
	jle	.LBB17_4
# BB#21:                                # %if.end
	cmpl	$1162038353, %edi       # imm = 0x45434C51
	jle	.LBB17_22
# BB#30:                                # %if.end
	cmpl	$1212961567, %edi       # imm = 0x484C531F
	jg	.LBB17_34
# BB#31:                                # %if.end
	cmpl	$1162038354, %edi       # imm = 0x45434C52
	je	.LBB17_52
# BB#32:                                # %if.end
	cmpl	$1178815570, %edi       # imm = 0x46434C52
	je	.LBB17_53
# BB#33:                                # %if.end
	cmpl	$1196573017, %edi       # imm = 0x47524159
	jne	.LBB17_47
	jmp	.LBB17_54
.LBB17_37:                              # %if.end
	cmpl	$1380401695, %edi       # imm = 0x5247421F
	jg	.LBB17_42
# BB#38:                                # %if.end
	leal	-1296255025(%rdi), %edx
	cmpl	$21, %edx
	jbe	.LBB17_64
# BB#39:                                # %if.end
	cmpl	$1282766368, %edi       # imm = 0x4C757620
	je	.LBB17_47
# BB#40:                                # %if.end
	cmpl	$1282766411, %edi       # imm = 0x4C75764B
	je	.LBB17_41
.LBB17_47:                              # %sw.default.i
	movl	$3, %ecx
.LBB17_54:                              # %cmsChannelsOf.exit
	testb	$4, %ah
	jne	.LBB17_55
# BB#57:                                # %if.end.10
	testb	$8, %ah
	jne	.LBB17_58
# BB#60:                                # %if.end.20
	movl	$7, %eax
	cmpl	$4, %ecx
	ja	.LBB17_63
# BB#61:                                # %if.end.23
	movl	$17, %ecx
	movl	$33, %eax
	jmp	.LBB17_62
.LBB17_55:                              # %if.then.4
	movl	$7, %eax
	cmpl	$4, %ecx
	ja	.LBB17_63
# BB#56:                                # %if.end.6
	movl	$23, %ecx
	movl	$49, %eax
	jmp	.LBB17_62
.LBB17_58:                              # %if.then.13
	movl	$6, %eax
	cmpl	$4, %ecx
	ja	.LBB17_63
# BB#59:                                # %if.end.16
	cmpl	$1, %ecx
	movl	$33, %ecx
	movl	$17, %eax
.LBB17_62:                              # %cleanup
	cmovel	%ecx, %eax
.LBB17_63:                              # %cleanup
	retq
.LBB17_4:                               # %if.end
	cmpl	$910380113, %edi        # imm = 0x36434C51
	jg	.LBB17_13
# BB#5:                                 # %if.end
	cmpl	$860048465, %edi        # imm = 0x33434C51
	jle	.LBB17_6
# BB#9:                                 # %if.end
	cmpl	$860048466, %edi        # imm = 0x33434C52
	je	.LBB17_47
# BB#10:                                # %if.end
	cmpl	$876825682, %edi        # imm = 0x34434C52
	je	.LBB17_41
# BB#11:                                # %if.end
	cmpl	$893602898, %edi        # imm = 0x35434C52
	jne	.LBB17_47
	jmp	.LBB17_12
.LBB17_64:                              # %if.end
	jmpq	*.LJTI17_0(,%rdx,8)
.LBB17_12:                              # %sw.bb.4.i
	movl	$5, %ecx
	jmp	.LBB17_54
.LBB17_22:                              # %if.end
	cmpl	$1129142559, %edi       # imm = 0x434D591F
	jle	.LBB17_23
# BB#26:                                # %if.end
	cmpl	$1129142560, %edi       # imm = 0x434D5920
	je	.LBB17_47
# BB#27:                                # %if.end
	cmpl	$1129142603, %edi       # imm = 0x434D594B
	jne	.LBB17_28
.LBB17_41:                              # %sw.bb.3.i
	movl	$4, %ecx
	jmp	.LBB17_54
.LBB17_13:                              # %if.end
	cmpl	$943934545, %edi        # imm = 0x38434C51
	jle	.LBB17_14
# BB#17:                                # %if.end
	cmpl	$943934546, %edi        # imm = 0x38434C52
	je	.LBB17_49
# BB#18:                                # %if.end
	cmpl	$960711762, %edi        # imm = 0x39434C52
	jne	.LBB17_19
.LBB17_50:                              # %sw.bb.8.i
	movl	$9, %ecx
	jmp	.LBB17_54
.LBB17_42:                              # %if.end
	cmpl	$1497588337, %edi       # imm = 0x59436271
	jg	.LBB17_45
# BB#43:                                # %if.end
	cmpl	$1380401696, %edi       # imm = 0x52474220
	je	.LBB17_47
# BB#44:                                # %if.end
	cmpl	$1482250784, %edi       # imm = 0x58595A20
	movl	$3, %ecx
	jmp	.LBB17_54
.LBB17_34:                              # %if.end
	cmpl	$1212961568, %edi       # imm = 0x484C5320
	je	.LBB17_47
# BB#35:                                # %if.end
	cmpl	$1213421088, %edi       # imm = 0x48535620
	je	.LBB17_47
# BB#36:                                # %if.end
	cmpl	$1281450528, %edi       # imm = 0x4C616220
	movl	$3, %ecx
	jmp	.LBB17_54
.LBB17_6:                               # %if.end
	cmpl	$826494034, %edi        # imm = 0x31434C52
	je	.LBB17_54
# BB#7:                                 # %if.end
	cmpl	$843271250, %edi        # imm = 0x32434C52
	jne	.LBB17_47
.LBB17_8:                               # %sw.bb.1.i
	movl	$2, %ecx
	jmp	.LBB17_54
.LBB17_23:                              # %if.end
	cmpl	$1111706706, %edi       # imm = 0x42434C52
	jne	.LBB17_24
.LBB17_51:                              # %sw.bb.10.i
	movl	$11, %ecx
	jmp	.LBB17_54
.LBB17_14:                              # %if.end
	cmpl	$910380114, %edi        # imm = 0x36434C52
	jne	.LBB17_15
.LBB17_48:                              # %sw.bb.5.i
	movl	$6, %ecx
	jmp	.LBB17_54
.LBB17_45:                              # %if.end
	cmpl	$1497588338, %edi       # imm = 0x59436272
	je	.LBB17_47
# BB#46:                                # %if.end
	cmpl	$1501067552, %edi       # imm = 0x59787920
	jmp	.LBB17_47
.LBB17_52:                              # %sw.bb.13.i
	movl	$14, %ecx
	jmp	.LBB17_54
.LBB17_53:                              # %sw.bb.14.i
	movl	$15, %ecx
	jmp	.LBB17_54
.LBB17_49:                              # %sw.bb.7.i
	movl	$8, %ecx
	jmp	.LBB17_54
.LBB17_28:                              # %if.end
	cmpl	$1145261138, %edi       # imm = 0x44434C52
	jne	.LBB17_47
.LBB17_29:                              # %sw.bb.12.i
	movl	$13, %ecx
	jmp	.LBB17_54
.LBB17_19:                              # %if.end
	cmpl	$1094929490, %edi       # imm = 0x41434C52
	jne	.LBB17_47
.LBB17_20:                              # %sw.bb.9.i
	movl	$10, %ecx
	jmp	.LBB17_54
.LBB17_24:                              # %if.end
	cmpl	$1128483922, %edi       # imm = 0x43434C52
	jne	.LBB17_47
.LBB17_25:                              # %sw.bb.11.i
	movl	$12, %ecx
	jmp	.LBB17_54
.LBB17_15:                              # %if.end
	cmpl	$927157330, %edi        # imm = 0x37434C52
	jne	.LBB17_47
.LBB17_16:                              # %sw.bb.6.i
	movl	$7, %ecx
	jmp	.LBB17_54
.Lfunc_end17:
	.size	_cmsReasonableGridpointsByColorspace, .Lfunc_end17-_cmsReasonableGridpointsByColorspace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_54
	.quad	.LBB17_8
	.quad	.LBB17_47
	.quad	.LBB17_41
	.quad	.LBB17_12
	.quad	.LBB17_48
	.quad	.LBB17_16
	.quad	.LBB17_49
	.quad	.LBB17_50
	.quad	.LBB17_47
	.quad	.LBB17_47
	.quad	.LBB17_47
	.quad	.LBB17_47
	.quad	.LBB17_47
	.quad	.LBB17_47
	.quad	.LBB17_47
	.quad	.LBB17_20
	.quad	.LBB17_51
	.quad	.LBB17_25
	.quad	.LBB17_29
	.quad	.LBB17_52
	.quad	.LBB17_53

	.text
	.globl	cmsChannelsOf
	.align	16, 0x90
	.type	cmsChannelsOf,@function
cmsChannelsOf:                          # @cmsChannelsOf
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	cmpl	$1282766367, %edi       # imm = 0x4C75761F
	jg	.LBB18_35
# BB#1:                                 # %entry
	cmpl	$1111706705, %edi       # imm = 0x42434C51
	jle	.LBB18_2
# BB#19:                                # %entry
	cmpl	$1162038353, %edi       # imm = 0x45434C51
	jle	.LBB18_20
# BB#28:                                # %entry
	cmpl	$1212961567, %edi       # imm = 0x484C531F
	jg	.LBB18_32
# BB#29:                                # %entry
	cmpl	$1162038354, %edi       # imm = 0x45434C52
	je	.LBB18_50
# BB#30:                                # %entry
	cmpl	$1178815570, %edi       # imm = 0x46434C52
	je	.LBB18_51
# BB#31:                                # %entry
	cmpl	$1196573017, %edi       # imm = 0x47524159
	jne	.LBB18_45
	jmp	.LBB18_52
.LBB18_35:                              # %entry
	cmpl	$1380401695, %edi       # imm = 0x5247421F
	jg	.LBB18_40
# BB#36:                                # %entry
	leal	-1296255025(%rdi), %ecx
	cmpl	$21, %ecx
	jbe	.LBB18_53
# BB#37:                                # %entry
	cmpl	$1282766368, %edi       # imm = 0x4C757620
	je	.LBB18_45
# BB#38:                                # %entry
	cmpl	$1282766411, %edi       # imm = 0x4C75764B
	je	.LBB18_39
.LBB18_45:                              # %sw.default
	movl	$3, %eax
	retq
.LBB18_2:                               # %entry
	cmpl	$910380113, %edi        # imm = 0x36434C51
	jg	.LBB18_11
# BB#3:                                 # %entry
	cmpl	$860048465, %edi        # imm = 0x33434C51
	jle	.LBB18_4
# BB#7:                                 # %entry
	cmpl	$860048466, %edi        # imm = 0x33434C52
	je	.LBB18_45
# BB#8:                                 # %entry
	cmpl	$876825682, %edi        # imm = 0x34434C52
	je	.LBB18_39
# BB#9:                                 # %entry
	cmpl	$893602898, %edi        # imm = 0x35434C52
	jne	.LBB18_45
	jmp	.LBB18_10
.LBB18_53:                              # %entry
	jmpq	*.LJTI18_0(,%rcx,8)
.LBB18_10:                              # %sw.bb.4
	movl	$5, %eax
	retq
.LBB18_20:                              # %entry
	cmpl	$1129142559, %edi       # imm = 0x434D591F
	jle	.LBB18_21
# BB#24:                                # %entry
	cmpl	$1129142560, %edi       # imm = 0x434D5920
	je	.LBB18_45
# BB#25:                                # %entry
	cmpl	$1129142603, %edi       # imm = 0x434D594B
	jne	.LBB18_26
.LBB18_39:                              # %sw.bb.3
	movl	$4, %eax
	retq
.LBB18_11:                              # %entry
	cmpl	$943934545, %edi        # imm = 0x38434C51
	jle	.LBB18_12
# BB#15:                                # %entry
	cmpl	$943934546, %edi        # imm = 0x38434C52
	je	.LBB18_47
# BB#16:                                # %entry
	cmpl	$960711762, %edi        # imm = 0x39434C52
	jne	.LBB18_17
.LBB18_48:                              # %sw.bb.8
	movl	$9, %eax
	retq
.LBB18_40:                              # %entry
	cmpl	$1497588337, %edi       # imm = 0x59436271
	jg	.LBB18_43
# BB#41:                                # %entry
	cmpl	$1380401696, %edi       # imm = 0x52474220
	je	.LBB18_45
# BB#42:                                # %entry
	cmpl	$1482250784, %edi       # imm = 0x58595A20
	movl	$3, %eax
	retq
.LBB18_32:                              # %entry
	cmpl	$1212961568, %edi       # imm = 0x484C5320
	je	.LBB18_45
# BB#33:                                # %entry
	cmpl	$1213421088, %edi       # imm = 0x48535620
	je	.LBB18_45
# BB#34:                                # %entry
	cmpl	$1281450528, %edi       # imm = 0x4C616220
	movl	$3, %eax
	retq
.LBB18_4:                               # %entry
	cmpl	$826494034, %edi        # imm = 0x31434C52
	je	.LBB18_52
# BB#5:                                 # %entry
	cmpl	$843271250, %edi        # imm = 0x32434C52
	jne	.LBB18_45
.LBB18_6:                               # %sw.bb.1
	movl	$2, %eax
	retq
.LBB18_21:                              # %entry
	cmpl	$1111706706, %edi       # imm = 0x42434C52
	jne	.LBB18_22
.LBB18_49:                              # %sw.bb.10
	movl	$11, %eax
	retq
.LBB18_12:                              # %entry
	cmpl	$910380114, %edi        # imm = 0x36434C52
	jne	.LBB18_13
.LBB18_46:                              # %sw.bb.5
	movl	$6, %eax
	retq
.LBB18_43:                              # %entry
	cmpl	$1497588338, %edi       # imm = 0x59436272
	je	.LBB18_45
# BB#44:                                # %entry
	cmpl	$1501067552, %edi       # imm = 0x59787920
	jmp	.LBB18_45
.LBB18_50:                              # %sw.bb.13
	movl	$14, %eax
	retq
.LBB18_51:                              # %sw.bb.14
	movl	$15, %eax
.LBB18_52:                              # %return
	retq
.LBB18_47:                              # %sw.bb.7
	movl	$8, %eax
	retq
.LBB18_26:                              # %entry
	cmpl	$1145261138, %edi       # imm = 0x44434C52
	jne	.LBB18_45
.LBB18_27:                              # %sw.bb.12
	movl	$13, %eax
	retq
.LBB18_17:                              # %entry
	cmpl	$1094929490, %edi       # imm = 0x41434C52
	jne	.LBB18_45
.LBB18_18:                              # %sw.bb.9
	movl	$10, %eax
	retq
.LBB18_22:                              # %entry
	cmpl	$1128483922, %edi       # imm = 0x43434C52
	jne	.LBB18_45
.LBB18_23:                              # %sw.bb.11
	movl	$12, %eax
	retq
.LBB18_13:                              # %entry
	cmpl	$927157330, %edi        # imm = 0x37434C52
	jne	.LBB18_45
.LBB18_14:                              # %sw.bb.6
	movl	$7, %eax
	retq
.Lfunc_end18:
	.size	cmsChannelsOf, .Lfunc_end18-cmsChannelsOf
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_52
	.quad	.LBB18_6
	.quad	.LBB18_45
	.quad	.LBB18_39
	.quad	.LBB18_10
	.quad	.LBB18_46
	.quad	.LBB18_14
	.quad	.LBB18_47
	.quad	.LBB18_48
	.quad	.LBB18_45
	.quad	.LBB18_45
	.quad	.LBB18_45
	.quad	.LBB18_45
	.quad	.LBB18_45
	.quad	.LBB18_45
	.quad	.LBB18_45
	.quad	.LBB18_18
	.quad	.LBB18_49
	.quad	.LBB18_23
	.quad	.LBB18_27
	.quad	.LBB18_50
	.quad	.LBB18_51

	.text
	.globl	_cmsEndPointsBySpace
	.align	16, 0x90
	.type	_cmsEndPointsBySpace,@function
_cmsEndPointsBySpace:                   # @_cmsEndPointsBySpace
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1196573016, %edi       # imm = 0x47524158
	jle	.LBB19_1
# BB#9:                                 # %entry
	cmpl	$1380401696, %edi       # imm = 0x52474220
	je	.LBB19_18
# BB#10:                                # %entry
	cmpl	$1281450528, %edi       # imm = 0x4C616220
	jne	.LBB19_11
# BB#22:                                # %sw.bb.17
	testq	%rsi, %rsi
	je	.LBB19_24
# BB#23:                                # %if.then.19
	movq	$_cmsEndPointsBySpace.LABwhite, (%rsi)
.LBB19_24:                              # %if.end.20
	testq	%rdx, %rdx
	je	.LBB19_30
# BB#25:                                # %if.then.22
	movq	$_cmsEndPointsBySpace.LABblack, (%rdx)
	jmp	.LBB19_30
.LBB19_1:                               # %entry
	cmpl	$1129142560, %edi       # imm = 0x434D5920
	jne	.LBB19_2
# BB#26:                                # %sw.bb.37
	testq	%rsi, %rsi
	je	.LBB19_28
# BB#27:                                # %if.then.39
	movq	$_cmsEndPointsBySpace.CMYwhite, (%rsi)
.LBB19_28:                              # %if.end.40
	testq	%rdx, %rdx
	je	.LBB19_30
# BB#29:                                # %if.then.42
	movq	$_cmsEndPointsBySpace.CMYblack, (%rdx)
	jmp	.LBB19_30
.LBB19_18:                              # %sw.bb.7
	testq	%rsi, %rsi
	je	.LBB19_20
# BB#19:                                # %if.then.9
	movq	$_cmsEndPointsBySpace.RGBwhite, (%rsi)
.LBB19_20:                              # %if.end.10
	testq	%rdx, %rdx
	je	.LBB19_30
# BB#21:                                # %if.then.12
	movq	$_cmsEndPointsBySpace.RGBblack, (%rdx)
.LBB19_30:                              # %if.end.43
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB19_32
# BB#31:                                # %if.then.45
	movl	$3, (%rcx)
	jmp	.LBB19_32
.LBB19_11:                              # %entry
	cmpl	$1196573017, %edi       # imm = 0x47524159
	jne	.LBB19_32
# BB#12:                                # %sw.bb
	testq	%rsi, %rsi
	je	.LBB19_14
# BB#13:                                # %if.then
	movq	$_cmsEndPointsBySpace.GrayWhite, (%rsi)
.LBB19_14:                              # %if.end
	testq	%rdx, %rdx
	je	.LBB19_16
# BB#15:                                # %if.then.2
	movq	$_cmsEndPointsBySpace.Grayblack, (%rdx)
.LBB19_16:                              # %if.end.3
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB19_32
# BB#17:                                # %if.then.5
	movl	$1, (%rcx)
	retq
.LBB19_2:                               # %entry
	cmpl	$1129142603, %edi       # imm = 0x434D594B
	jne	.LBB19_32
# BB#3:                                 # %sw.bb.27
	testq	%rsi, %rsi
	je	.LBB19_5
# BB#4:                                 # %if.then.29
	movq	$_cmsEndPointsBySpace.CMYKwhite, (%rsi)
.LBB19_5:                               # %if.end.30
	testq	%rdx, %rdx
	je	.LBB19_7
# BB#6:                                 # %if.then.32
	movq	$_cmsEndPointsBySpace.CMYKblack, (%rdx)
.LBB19_7:                               # %if.end.33
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB19_32
# BB#8:                                 # %if.then.35
	movl	$4, (%rcx)
	retq
.LBB19_32:                              # %return
	retq
.Lfunc_end19:
	.size	_cmsEndPointsBySpace, .Lfunc_end19-_cmsEndPointsBySpace
	.cfi_endproc

	.globl	_cmsICCcolorSpace
	.align	16, 0x90
	.type	_cmsICCcolorSpace,@function
_cmsICCcolorSpace:                      # @_cmsICCcolorSpace
	.cfi_startproc
# BB#0:                                 # %entry
	decl	%edi
	cmpl	$29, %edi
	ja	.LBB20_2
# BB#1:                                 # %switch.lookup
	movslq	%edi, %rax
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB20_2:                               # %return
	movl	$-1, %eax
	retq
.Lfunc_end20:
	.size	_cmsICCcolorSpace, .Lfunc_end20-_cmsICCcolorSpace
	.cfi_endproc

	.globl	_cmsLCMScolorSpace
	.align	16, 0x90
	.type	_cmsLCMScolorSpace,@function
_cmsLCMScolorSpace:                     # @_cmsLCMScolorSpace
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1282766367, %edi       # imm = 0x4C75761F
	jg	.LBB21_37
# BB#1:                                 # %entry
	cmpl	$1111706705, %edi       # imm = 0x42434C51
	jle	.LBB21_2
# BB#19:                                # %entry
	cmpl	$1162038353, %edi       # imm = 0x45434C51
	jle	.LBB21_20
# BB#28:                                # %entry
	cmpl	$1212961567, %edi       # imm = 0x484C531F
	jg	.LBB21_33
# BB#29:                                # %entry
	cmpl	$1162038354, %edi       # imm = 0x45434C52
	je	.LBB21_63
# BB#30:                                # %entry
	cmpl	$1178815570, %edi       # imm = 0x46434C52
	je	.LBB21_64
# BB#31:                                # %entry
	movl	$3, %eax
	cmpl	$1196573017, %edi       # imm = 0x47524159
	je	.LBB21_65
	jmp	.LBB21_32
.LBB21_37:                              # %entry
	cmpl	$1380401695, %edi       # imm = 0x5247421F
	jg	.LBB21_42
# BB#38:                                # %entry
	leal	-1296255025(%rdi), %eax
	cmpl	$21, %eax
	jbe	.LBB21_66
# BB#39:                                # %entry
	cmpl	$1282766368, %edi       # imm = 0x4C757620
	je	.LBB21_53
# BB#40:                                # %entry
	cmpl	$1282766411, %edi       # imm = 0x4C75764B
	je	.LBB21_41
.LBB21_32:                              # %sw.default
	movl	$-1, %eax
	retq
.LBB21_2:                               # %entry
	cmpl	$910380113, %edi        # imm = 0x36434C51
	jg	.LBB21_11
# BB#3:                                 # %entry
	cmpl	$860048465, %edi        # imm = 0x33434C51
	jle	.LBB21_4
# BB#7:                                 # %entry
	cmpl	$860048466, %edi        # imm = 0x33434C52
	je	.LBB21_57
# BB#8:                                 # %entry
	cmpl	$876825682, %edi        # imm = 0x34434C52
	je	.LBB21_58
# BB#9:                                 # %entry
	cmpl	$893602898, %edi        # imm = 0x35434C52
	jne	.LBB21_32
	jmp	.LBB21_10
.LBB21_66:                              # %entry
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_57:                              # %sw.bb.14
	movl	$17, %eax
	retq
.LBB21_20:                              # %entry
	cmpl	$1129142559, %edi       # imm = 0x434D591F
	jle	.LBB21_21
# BB#24:                                # %entry
	cmpl	$1129142560, %edi       # imm = 0x434D5920
	je	.LBB21_50
# BB#25:                                # %entry
	cmpl	$1129142603, %edi       # imm = 0x434D594B
	jne	.LBB21_26
# BB#51:                                # %sw.bb.3
	movl	$6, %eax
	retq
.LBB21_11:                              # %entry
	cmpl	$943934545, %edi        # imm = 0x38434C51
	jle	.LBB21_12
# BB#15:                                # %entry
	cmpl	$943934546, %edi        # imm = 0x38434C52
	je	.LBB21_60
# BB#16:                                # %entry
	cmpl	$960711762, %edi        # imm = 0x39434C52
	jne	.LBB21_17
.LBB21_61:                              # %sw.bb.20
	movl	$23, %eax
	retq
.LBB21_42:                              # %entry
	cmpl	$1497588337, %edi       # imm = 0x59436271
	jg	.LBB21_46
# BB#43:                                # %entry
	cmpl	$1380401696, %edi       # imm = 0x52474220
	jne	.LBB21_44
# BB#49:                                # %sw.bb.1
	movl	$4, %eax
	retq
.LBB21_33:                              # %entry
	cmpl	$1212961568, %edi       # imm = 0x484C5320
	je	.LBB21_55
# BB#34:                                # %entry
	cmpl	$1213421088, %edi       # imm = 0x48535620
	jne	.LBB21_35
# BB#54:                                # %sw.bb.9
	movl	$12, %eax
	retq
.LBB21_4:                               # %entry
	cmpl	$826494034, %edi        # imm = 0x31434C52
	jne	.LBB21_5
.LBB21_56:                              # %sw.bb.12
	movl	$15, %eax
	retq
.LBB21_21:                              # %entry
	cmpl	$1111706706, %edi       # imm = 0x42434C52
	jne	.LBB21_22
.LBB21_62:                              # %sw.bb.22
	movl	$25, %eax
	retq
.LBB21_12:                              # %entry
	cmpl	$910380114, %edi        # imm = 0x36434C52
	jne	.LBB21_13
.LBB21_59:                              # %sw.bb.17
	movl	$20, %eax
	retq
.LBB21_46:                              # %entry
	cmpl	$1497588338, %edi       # imm = 0x59436272
	jne	.LBB21_47
# BB#52:                                # %sw.bb.4
	movl	$7, %eax
	retq
.LBB21_58:                              # %sw.bb.15
	movl	$18, %eax
	retq
.LBB21_63:                              # %sw.bb.25
	movl	$28, %eax
	retq
.LBB21_64:                              # %sw.bb.26
	movl	$29, %eax
.LBB21_65:                              # %return
	retq
.LBB21_60:                              # %sw.bb.19
	movl	$22, %eax
	retq
.LBB21_10:                              # %sw.bb.16
	movl	$19, %eax
	retq
.LBB21_50:                              # %sw.bb.2
	movl	$5, %eax
	retq
.LBB21_26:                              # %entry
	cmpl	$1145261138, %edi       # imm = 0x44434C52
	jne	.LBB21_32
.LBB21_27:                              # %sw.bb.24
	movl	$27, %eax
	retq
.LBB21_17:                              # %entry
	cmpl	$1094929490, %edi       # imm = 0x41434C52
	jne	.LBB21_32
.LBB21_18:                              # %sw.bb.21
	movl	$24, %eax
	retq
.LBB21_44:                              # %entry
	cmpl	$1482250784, %edi       # imm = 0x58595A20
	jne	.LBB21_32
# BB#45:                                # %sw.bb.6
	movl	$9, %eax
	retq
.LBB21_55:                              # %sw.bb.10
	movl	$13, %eax
	retq
.LBB21_35:                              # %entry
	cmpl	$1281450528, %edi       # imm = 0x4C616220
	jne	.LBB21_32
# BB#36:                                # %sw.bb.7
	movl	$10, %eax
	retq
.LBB21_5:                               # %entry
	cmpl	$843271250, %edi        # imm = 0x32434C52
	jne	.LBB21_32
.LBB21_6:                               # %sw.bb.13
	movl	$16, %eax
	retq
.LBB21_22:                              # %entry
	cmpl	$1128483922, %edi       # imm = 0x43434C52
	jne	.LBB21_32
.LBB21_23:                              # %sw.bb.23
	movl	$26, %eax
	retq
.LBB21_13:                              # %entry
	cmpl	$927157330, %edi        # imm = 0x37434C52
	jne	.LBB21_32
.LBB21_14:                              # %sw.bb.18
	movl	$21, %eax
	retq
.LBB21_47:                              # %entry
	cmpl	$1501067552, %edi       # imm = 0x59787920
	jne	.LBB21_32
# BB#48:                                # %sw.bb.11
	movl	$14, %eax
	retq
.LBB21_53:                              # %sw.bb.5
	movl	$8, %eax
	retq
.LBB21_41:                              # %sw.bb.8
	movl	$11, %eax
	retq
.Lfunc_end21:
	.size	_cmsLCMScolorSpace, .Lfunc_end21-_cmsLCMScolorSpace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_56
	.quad	.LBB21_6
	.quad	.LBB21_57
	.quad	.LBB21_58
	.quad	.LBB21_10
	.quad	.LBB21_59
	.quad	.LBB21_14
	.quad	.LBB21_60
	.quad	.LBB21_61
	.quad	.LBB21_32
	.quad	.LBB21_32
	.quad	.LBB21_32
	.quad	.LBB21_32
	.quad	.LBB21_32
	.quad	.LBB21_32
	.quad	.LBB21_32
	.quad	.LBB21_18
	.quad	.LBB21_62
	.quad	.LBB21_23
	.quad	.LBB21_27
	.quad	.LBB21_63
	.quad	.LBB21_64

	.type	_cmsEndPointsBySpace.RGBblack,@object # @_cmsEndPointsBySpace.RGBblack
	.local	_cmsEndPointsBySpace.RGBblack
	.comm	_cmsEndPointsBySpace.RGBblack,8,2
	.type	_cmsEndPointsBySpace.RGBwhite,@object # @_cmsEndPointsBySpace.RGBwhite
	.data
	.align	2
_cmsEndPointsBySpace.RGBwhite:
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.size	_cmsEndPointsBySpace.RGBwhite, 8

	.type	_cmsEndPointsBySpace.CMYKblack,@object # @_cmsEndPointsBySpace.CMYKblack
	.align	2
_cmsEndPointsBySpace.CMYKblack:
	.zero	8,255
	.size	_cmsEndPointsBySpace.CMYKblack, 8

	.type	_cmsEndPointsBySpace.CMYKwhite,@object # @_cmsEndPointsBySpace.CMYKwhite
	.local	_cmsEndPointsBySpace.CMYKwhite
	.comm	_cmsEndPointsBySpace.CMYKwhite,8,2
	.type	_cmsEndPointsBySpace.LABblack,@object # @_cmsEndPointsBySpace.LABblack
	.align	2
_cmsEndPointsBySpace.LABblack:
	.short	0                       # 0x0
	.short	32896                   # 0x8080
	.short	32896                   # 0x8080
	.short	0                       # 0x0
	.size	_cmsEndPointsBySpace.LABblack, 8

	.type	_cmsEndPointsBySpace.LABwhite,@object # @_cmsEndPointsBySpace.LABwhite
	.align	2
_cmsEndPointsBySpace.LABwhite:
	.short	65535                   # 0xffff
	.short	32896                   # 0x8080
	.short	32896                   # 0x8080
	.short	0                       # 0x0
	.size	_cmsEndPointsBySpace.LABwhite, 8

	.type	_cmsEndPointsBySpace.CMYblack,@object # @_cmsEndPointsBySpace.CMYblack
	.align	2
_cmsEndPointsBySpace.CMYblack:
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.size	_cmsEndPointsBySpace.CMYblack, 8

	.type	_cmsEndPointsBySpace.CMYwhite,@object # @_cmsEndPointsBySpace.CMYwhite
	.local	_cmsEndPointsBySpace.CMYwhite
	.comm	_cmsEndPointsBySpace.CMYwhite,8,2
	.type	_cmsEndPointsBySpace.Grayblack,@object # @_cmsEndPointsBySpace.Grayblack
	.local	_cmsEndPointsBySpace.Grayblack
	.comm	_cmsEndPointsBySpace.Grayblack,8,2
	.type	_cmsEndPointsBySpace.GrayWhite,@object # @_cmsEndPointsBySpace.GrayWhite
	.align	2
_cmsEndPointsBySpace.GrayWhite:
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.size	_cmsEndPointsBySpace.GrayWhite, 8

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	1196573017              # 0x47524159
	.long	1380401696              # 0x52474220
	.long	1196573017              # 0x47524159
	.long	1380401696              # 0x52474220
	.long	1129142560              # 0x434d5920
	.long	1129142603              # 0x434d594b
	.long	1497588338              # 0x59436272
	.long	1282766368              # 0x4c757620
	.long	1482250784              # 0x58595a20
	.long	1281450528              # 0x4c616220
	.long	1282766411              # 0x4c75764b
	.long	1213421088              # 0x48535620
	.long	1212961568              # 0x484c5320
	.long	1501067552              # 0x59787920
	.long	1296255025              # 0x4d434831
	.long	1296255026              # 0x4d434832
	.long	1296255027              # 0x4d434833
	.long	1296255028              # 0x4d434834
	.long	1296255029              # 0x4d434835
	.long	1296255030              # 0x4d434836
	.long	1296255031              # 0x4d434837
	.long	1296255032              # 0x4d434838
	.long	1296255033              # 0x4d434839
	.long	1296255041              # 0x4d434841
	.long	1296255042              # 0x4d434842
	.long	1296255043              # 0x4d434843
	.long	1296255044              # 0x4d434844
	.long	1296255045              # 0x4d434845
	.long	1296255046              # 0x4d434846
	.long	1281450528              # 0x4c616220
	.size	.Lswitch.table, 120


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
