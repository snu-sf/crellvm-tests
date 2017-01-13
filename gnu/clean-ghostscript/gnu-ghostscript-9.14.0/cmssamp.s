	.text
	.file	"cmssamp.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI0_2:
	.quad	4569894055037270460     # double 3.360000e-03
	.quad	4570154845881612528     # double 3.473100e-03
.LCPI0_3:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4632233691727265792     # double 50
	.text
	.globl	cmsDetectBlackPoint
	.align	16, 0x90
	.type	cmsDetectBlackPoint,@function
cmsDetectBlackPoint:                    # @cmsDetectBlackPoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$224, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 272
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1633842036, %eax       # imm = 0x61627374
	je	.LBB0_3
# BB#1:                                 # %entry
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	je	.LBB0_3
# BB#2:                                 # %entry
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	je	.LBB0_3
# BB#4:                                 # %if.end
	cmpl	$3, %ebp
	jb	.LBB0_5
.LBB0_3:                                # %if.then
	movq	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	xorl	%r15d, %r15d
.LBB0_24:                               # %cleanup
	movl	%r15d, %eax
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:                                # %if.end.12
	movq	%rbx, %rdi
	callq	cmsGetEncodedICCversion
	testl	$-3, %ebp
	jne	.LBB0_10
# BB#6:                                 # %if.end.12
	cmpl	$67108864, %eax         # imm = 0x4000000
	jb	.LBB0_10
# BB#7:                                 # %if.then.19
	movq	%rbx, %rdi
	callq	cmsIsMatrixShaper
	testl	%eax, %eax
	je	.LBB0_22
# BB#8:                                 # %if.then.21
	movl	$1, %esi
	movq	%rbx, %rdi
	jmp	.LBB0_9
.LBB0_10:                               # %if.end.27
	cmpl	$1, %ebp
	jne	.LBB0_21
# BB#11:                                # %land.lhs.true.29
	movq	%rbx, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1886549106, %eax       # imm = 0x70727472
	jne	.LBB0_21
# BB#12:                                # %land.lhs.true.32
	movq	%rbx, %rdi
	callq	cmsGetColorSpace
	cmpl	$1129142603, %eax       # imm = 0x434D594B
	jne	.LBB0_21
# BB#13:                                # %if.then.35
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cmsIsIntentSupported
	testl	%eax, %eax
	je	.LBB0_14
# BB#15:                                # %if.end.i
	movq	%rbx, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %r12
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, %rbp
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)
	movaps	.LCreateRoundtripXForm.States+16(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movaps	.LCreateRoundtripXForm.States(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movq	%rbp, 144(%rsp)
	movq	%rbx, 152(%rsp)
	movq	%rbx, 160(%rsp)
	movq	%rbp, 168(%rsp)
	movapd	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,0,1,1]
	movapd	%xmm0, 128(%rsp)
	movl	$320, 32(%rsp)          # imm = 0x140
	movl	$4849688, 24(%rsp)      # imm = 0x4A0018
	movl	$4849688, 16(%rsp)      # imm = 0x4A0018
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	144(%rsp), %rdx
	leaq	208(%rsp), %rcx
	leaq	128(%rsp), %r8
	leaq	176(%rsp), %r9
	movl	$4, %esi
	movq	%r12, %rdi
	callq	cmsCreateExtendedTransform
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	cmsCloseProfile
	testq	%rbx, %rbx
	je	.LBB0_16
# BB#17:                                # %if.end.6.i
	movq	$0, 112(%rsp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rsi
	leaq	72(%rsp), %rdx
	movl	$1, %r15d
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	cmsDoTransform
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI0_1(%rip), %xmm0
	jbe	.LBB0_19
# BB#18:                                # %if.then.9.i
	movabsq	$4632233691727265792, %rax # imm = 0x4049000000000000
	movq	%rax, 72(%rsp)
.LBB0_19:                               # %if.end.11.i
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 80(%rsp)
	movq	%rbx, %rdi
	callq	cmsDeleteTransform
	leaq	48(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%edi, %edi
	callq	cmsLab2XYZ
	testq	%r14, %r14
	je	.LBB0_24
# BB#20:                                # %if.then.15.i
	movq	64(%rsp), %rax
	movq	%rax, 16(%r14)
	movupd	48(%rsp), %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB0_24
.LBB0_21:                               # %if.end.37
	movq	%rbx, %rdi
	movl	%ebp, %esi
.LBB0_9:                                # %if.then.21
	movq	%r14, %rdx
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	BlackPointAsDarkerColorant # TAILCALL
.LBB0_22:                               # %if.end.23
	movapd	.LCPI0_2(%rip), %xmm0   # xmm0 = [3.360000e-03,3.473100e-03]
	movupd	%xmm0, (%r14)
	movabsq	$4568764191962755750, %rax # imm = 0x3F6782D38476F2A6
	movq	%rax, 16(%r14)
.LBB0_23:                               # %cleanup
	movl	$1, %r15d
	jmp	.LBB0_24
.LBB0_14:                               # %if.then.i
	movq	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB0_23
.LBB0_16:                               # %if.then.2.i
	movq	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB0_24
.Lfunc_end0:
	.size	cmsDetectBlackPoint, .Lfunc_end0-cmsDetectBlackPoint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4632233691727265792     # double 50
	.text
	.align	16, 0x90
	.type	BlackPointAsDarkerColorant,@function
BlackPointAsDarkerColorant:             # @BlackPointAsDarkerColorant
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 128
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbp
	callq	cmsGetProfileContextID
	movq	%rax, %r12
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	cmsIsIntentSupported
	testl	%eax, %eax
	je	.LBB1_1
# BB#2:                                 # %if.end
	xorl	%ebx, %ebx
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	cmsFormatterForColorspaceOfProfile
	movl	%eax, %r13d
	movq	%rbp, %rdi
	callq	cmsGetColorSpace
	leaq	64(%rsp), %rdx
	leaq	60(%rsp), %rcx
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	_cmsEndPointsBySpace
	testl	%eax, %eax
	je	.LBB1_1
# BB#3:                                 # %if.end.10
	movl	%r13d, %eax
	shrl	$3, %eax
	andl	$15, %eax
	cmpl	%eax, 60(%rsp)
	jne	.LBB1_4
# BB#5:                                 # %if.end.15
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	cmsCreateLab2ProfileTHR
	movq	%r12, %rdi
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB1_1
# BB#6:                                 # %if.end.22
	movl	$320, (%rsp)            # imm = 0x140
	movl	$4849688, %r8d          # imm = 0x4A0018
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movq	%r12, %rcx
	movl	%r15d, %r9d
	callq	cmsCreateTransformTHR
	movq	%rax, %rbp
	movq	%r12, %rdi
	callq	cmsCloseProfile
	testq	%rbp, %rbp
	je	.LBB1_4
# BB#7:                                 # %if.end.30
	movq	64(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movl	$1, %ebx
	movl	$1, %ecx
	movq	%rbp, %rdi
	callq	cmsDoTransform
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0(%rip), %xmm0
	jbe	.LBB1_9
# BB#8:                                 # %if.then.32
	movabsq	$4632233691727265792, %rax # imm = 0x4049000000000000
	movq	%rax, 32(%rsp)
.LBB1_9:                                # %if.end.34
	movq	%rbp, %rdi
	callq	cmsDeleteTransform
	leaq	8(%rsp), %rsi
	leaq	32(%rsp), %rdx
	xorl	%edi, %edi
	callq	cmsLab2XYZ
	testq	%r14, %r14
	je	.LBB1_11
# BB#10:                                # %if.then.36
	movq	24(%rsp), %rax
	movq	%rax, 16(%r14)
	movupd	8(%rsp), %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB1_11
.LBB1_1:                                # %if.then
	movq	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB1_11
.LBB1_4:                                # %if.then.11
	movq	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	xorl	%ebx, %ebx
.LBB1_11:                               # %cleanup
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	BlackPointAsDarkerColorant, .Lfunc_end1-BlackPointAsDarkerColorant
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
.LCPI2_1:
	.quad	4643176031446892544     # double 255
.LCPI2_4:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI2_5:
	.quad	4616189618054758400     # double 4
.LCPI2_8:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI2_9:
	.quad	-4607182418800017408    # double -4
.LCPI2_10:
	.quad	4632233691727265792     # double 50
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_2:
	.quad	-4591138345127510016    # double -5.000000e+01
	.quad	-4591138345127510016    # double -5.000000e+01
.LCPI2_3:
	.quad	4632233691727265792     # double 5.000000e+01
	.quad	4632233691727265792     # double 5.000000e+01
.LCPI2_6:
	.quad	4584304132692975288     # double 3.000000e-02
	.quad	4591870180066957722     # double 1.000000e-01
.LCPI2_7:
	.quad	4598175219545276416     # double 2.500000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI2_11:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI2_12:
	.quad	4569894055037270460     # double 3.360000e-03
	.quad	4570154845881612528     # double 3.473100e-03
	.text
	.globl	cmsDetectDestinationBlackPoint
	.align	16, 0x90
	.type	cmsDetectDestinationBlackPoint,@function
cmsDetectDestinationBlackPoint:         # @cmsDetectDestinationBlackPoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$10600, %rsp            # imm = 0x2968
.Ltmp30:
	.cfi_def_cfa_offset 10656
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	%rbp, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1633842036, %eax       # imm = 0x61627374
	je	.LBB2_3
# BB#1:                                 # %entry
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	je	.LBB2_3
# BB#2:                                 # %entry
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	je	.LBB2_3
# BB#4:                                 # %if.end
	cmpl	$3, %r15d
	jae	.LBB2_3
# BB#5:                                 # %if.end.12
	movq	%rbp, %rdi
	callq	cmsGetEncodedICCversion
	testl	$-3, %r15d
	jne	.LBB2_10
# BB#6:                                 # %if.end.12
	cmpl	$67108864, %eax         # imm = 0x4000000
	jb	.LBB2_10
# BB#7:                                 # %if.then.19
	movq	%rbp, %rdi
	callq	cmsIsMatrixShaper
	testl	%eax, %eax
	je	.LBB2_9
# BB#8:                                 # %if.then.21
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	BlackPointAsDarkerColorant
	movl	%eax, %ebx
	jmp	.LBB2_58
.LBB2_10:                               # %if.end.27
	movq	%rbp, %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ebx
	movl	$1, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	cmsIsCLUT
	testl	%eax, %eax
	je	.LBB2_14
# BB#11:                                # %lor.lhs.false.31
	cmpl	$1129142603, %ebx       # imm = 0x434D594B
	je	.LBB2_15
# BB#12:                                # %lor.lhs.false.31
	cmpl	$1196573017, %ebx       # imm = 0x47524159
	je	.LBB2_15
# BB#13:                                # %lor.lhs.false.31
	cmpl	$1380401696, %ebx       # imm = 0x52474220
	jne	.LBB2_14
.LBB2_15:                               # %if.end.39
	cmpl	$1, %r15d
	jne	.LBB2_19
# BB#16:                                # %if.then.41
	leaq	10528(%rsp), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	cmsDetectBlackPoint
	testl	%eax, %eax
	je	.LBB2_18
# BB#17:                                # %if.end.45
	leaq	10416(%rsp), %rsi
	leaq	10528(%rsp), %rdx
	xorl	%edi, %edi
	callq	cmsXYZ2Lab
	jmp	.LBB2_20
.LBB2_14:                               # %if.then.37
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%r15d, %edx
	callq	cmsDetectBlackPoint
	movl	%eax, %ebx
	jmp	.LBB2_58
.LBB2_9:                                # %if.end.23
	movapd	.LCPI2_12(%rip), %xmm0  # xmm0 = [3.360000e-03,3.473100e-03]
	movupd	%xmm0, (%r12)
	movabsq	$4568764191962755750, %rax # imm = 0x3F6782D38476F2A6
	movq	%rax, 16(%r12)
	jmp	.LBB2_57
.LBB2_19:                               # %if.else
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 10416(%rsp)
	movq	$0, 10432(%rsp)
.LBB2_20:                               # %if.end.46
	movq	%rbp, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %r14
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, %r13
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 10496(%rsp)
	movaps	.LCreateRoundtripXForm.States+16(%rip), %xmm0
	movaps	%xmm0, 10544(%rsp)
	movapd	.LCreateRoundtripXForm.States(%rip), %xmm0
	movapd	%xmm0, 10528(%rsp)
	movq	%r13, 10464(%rsp)
	movq	%rbp, 10472(%rsp)
	movq	%rbp, 10480(%rsp)
	movq	%r13, 10488(%rsp)
	movl	$1, 10448(%rsp)
	movl	%r15d, 10452(%rsp)
	movl	$1, 10456(%rsp)
	movl	$1, 10460(%rsp)
	movl	$320, 32(%rsp)          # imm = 0x140
	movl	$4849688, 24(%rsp)      # imm = 0x4A0018
	movl	$4849688, 16(%rsp)      # imm = 0x4A0018
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	10464(%rsp), %rdx
	leaq	10496(%rsp), %rcx
	leaq	10448(%rsp), %r8
	leaq	10528(%rsp), %r9
	movl	$4, %esi
	movq	%r14, %rdi
	callq	cmsCreateExtendedTransform
	movq	%rax, %r14
	movq	%r13, %rdi
	callq	cmsCloseProfile
	testq	%r14, %r14
	je	.LBB2_58
# BB#21:                                # %for.cond.preheader
	xorl	%ebx, %ebx
	leaq	10368(%rsp), %r13
	leaq	10392(%rsp), %rbp
	.align	16, 0x90
.LBB2_22:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	divsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, 10368(%rsp)
	movupd	10424(%rsp), %xmm0
	movapd	.LCPI2_2(%rip), %xmm1   # xmm1 = [-5.000000e+01,-5.000000e+01]
	maxpd	%xmm0, %xmm1
	movapd	.LCPI2_3(%rip), %xmm0   # xmm0 = [5.000000e+01,5.000000e+01]
	minpd	%xmm1, %xmm0
	movupd	%xmm0, 10376(%rsp)
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	cmsDoTransform
	movq	10368(%rsp), %rax
	movq	%rax, 8320(%rsp,%rbx,8)
	movq	10392(%rsp), %rax
	movq	%rax, 6272(%rsp,%rbx,8)
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB2_22
# BB#23:                                # %for.cond.99.preheader
	movsd	8312(%rsp), %xmm0       # xmm0 = mem[0],zero
	movl	$255, %eax
	.align	16, 0x90
.LBB2_24:                               # %for.body.102
                                        # =>This Inner Loop Header: Depth=1
	movsd	6264(%rsp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 6264(%rsp,%rax,8)
	movsd	6256(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	minsd	%xmm1, %xmm0
	movsd	%xmm0, 6256(%rsp,%rax,8)
	addq	$-2, %rax
	cmpq	$1, %rax
	jg	.LBB2_24
# BB#25:                                # %for.end.121
	movsd	6272(%rsp), %xmm5       # xmm5 = mem[0],zero
	movapd	%xmm5, 96(%rsp)         # 16-byte Spill
	movsd	8312(%rsp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm5, %xmm0
	jbe	.LBB2_26
# BB#27:                                # %if.end.130
	subsd	%xmm5, %xmm0
	cmpl	$1, %r15d
	jne	.LBB2_34
# BB#28:                                # %for.cond.136.preheader
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movapd	%xmm0, 80(%rsp)         # 16-byte Spill
	addsd	%xmm5, %xmm1
	movsd	%xmm1, 120(%rsp)        # 8-byte Spill
	movl	$1, %ebp
	xorl	%ebx, %ebx
.LBB2_29:                               # %for.body.139
                                        # =>This Inner Loop Header: Depth=1
	movsd	8320(%rsp,%rbx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB2_32
# BB#30:                                # %lor.lhs.false.146
                                        #   in Loop: Header=BB2_29 Depth=1
	subsd	6272(%rsp,%rbx,8), %xmm0
	callq	fabs
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_32
# BB#31:                                # %if.then.155
                                        #   in Loop: Header=BB2_29 Depth=1
	xorl	%ebp, %ebp
.LBB2_32:                               # %for.inc.157
                                        #   in Loop: Header=BB2_29 Depth=1
	movsd	8328(%rsp,%rbx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB2_33
# BB#59:                                # %lor.lhs.false.146.1
                                        #   in Loop: Header=BB2_29 Depth=1
	subsd	6280(%rsp,%rbx,8), %xmm0
	callq	fabs
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	96(%rsp), %xmm5         # 16-byte Reload
	ja	.LBB2_61
# BB#60:                                # %if.then.155.1
                                        #   in Loop: Header=BB2_29 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_61
.LBB2_33:                               #   in Loop: Header=BB2_29 Depth=1
	movapd	96(%rsp), %xmm5         # 16-byte Reload
.LBB2_61:                               # %for.inc.157.1
                                        #   in Loop: Header=BB2_29 Depth=1
	addq	$2, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB2_29
# BB#48:                                # %for.end.159
	testl	%ebp, %ebp
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	je	.LBB2_34
# BB#49:                                # %if.then.161
	leaq	10416(%rsp), %rdx
	jmp	.LBB2_56
.LBB2_18:                               # %cleanup
	xorl	%ebx, %ebx
	jmp	.LBB2_58
.LBB2_34:                               # %for.cond.164.preheader
	movapd	%xmm0, %xmm2
	movapd	%xmm5, %xmm0
	subsd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 4224(%rsp)
	movapd	%xmm5, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movapd	%xmm2, %xmm1
	movapd	%xmm2, %xmm4
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movl	$3, %eax
.LBB2_35:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	6256(%rsp,%rax,8), %xmm2
	movupd	6272(%rsp,%rax,8), %xmm3
	subpd	%xmm0, %xmm2
	subpd	%xmm0, %xmm3
	divpd	%xmm1, %xmm2
	divpd	%xmm1, %xmm3
	movupd	%xmm2, 4208(%rsp,%rax,8)
	movupd	%xmm3, 4224(%rsp,%rax,8)
	addq	$4, %rax
	cmpq	$255, %rax
	jne	.LBB2_35
# BB#36:                                # %for.body.167.for.body.167_crit_edge
	cmpl	$1, %r15d
	sete	%al
	movsd	8296(%rsp), %xmm0       # xmm0 = mem[0],zero
	subsd	%xmm5, %xmm0
	divsd	%xmm4, %xmm0
	movsd	%xmm0, 6248(%rsp)
	movsd	8304(%rsp), %xmm0       # xmm0 = mem[0],zero
	subsd	%xmm5, %xmm0
	divsd	%xmm4, %xmm0
	movsd	%xmm0, 6256(%rsp)
	movsd	8312(%rsp), %xmm0       # xmm0 = mem[0],zero
	subsd	%xmm5, %xmm0
	divsd	%xmm4, %xmm0
	movsd	%xmm0, 6264(%rsp)
	movzbl	%al, %eax
	movsd	.LCPI2_6(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI2_7(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB2_37:                               # %for.body.186
                                        # =>This Inner Loop Header: Depth=1
	movsd	4224(%rsp,%rax,8), %xmm2 # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jb	.LBB2_40
# BB#38:                                # %for.body.186
                                        #   in Loop: Header=BB2_37 Depth=1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB2_40
# BB#39:                                # %if.then.194
                                        #   in Loop: Header=BB2_37 Depth=1
	movq	8320(%rsp,%rax,8), %rdx
	movslq	%ecx, %rcx
	movq	%rdx, 2176(%rsp,%rcx,8)
	movsd	%xmm2, 128(%rsp,%rcx,8)
	incl	%ecx
.LBB2_40:                               # %if.end.204
                                        #   in Loop: Header=BB2_37 Depth=1
	incq	%rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB2_37
# BB#41:                                # %for.end.207
	movl	%ecx, %eax
	cmpl	$2, %ecx
	jg	.LBB2_42
.LBB2_26:                               # %if.then.126
	movq	%r14, %rdi
	callq	cmsDeleteTransform
.LBB2_3:                                # %if.then
	movq	$0, 16(%r12)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r12)
	xorl	%ebx, %ebx
.LBB2_58:                               # %cleanup.228
	movl	%ebx, %eax
	addq	$10600, %rsp            # imm = 0x2968
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_42:                               # %if.end.214
	xorpd	%xmm3, %xmm3
	cmpl	$4, %ecx
	xorpd	%xmm2, %xmm2
	jl	.LBB2_55
# BB#43:                                # %for.body.i.preheader
	xorpd	%xmm1, %xmm1
	xorl	%ecx, %ecx
	xorpd	%xmm2, %xmm2
	xorpd	%xmm8, %xmm8
	xorpd	%xmm9, %xmm9
	xorpd	%xmm3, %xmm3
	xorpd	%xmm4, %xmm4
	xorpd	%xmm5, %xmm5
.LBB2_44:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movsd	2176(%rsp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	128(%rsp,%rcx,8), %xmm7 # xmm7 = mem[0],zero
	addsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm6
	mulsd	%xmm6, %xmm6
	addsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm6
	addsd	%xmm6, %xmm8
	mulsd	%xmm0, %xmm6
	addsd	%xmm6, %xmm9
	addsd	%xmm7, %xmm3
	mulsd	%xmm0, %xmm7
	addsd	%xmm7, %xmm4
	mulsd	%xmm0, %xmm7
	addsd	%xmm7, %xmm5
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB2_44
# BB#45:                                # %for.end.i
	cvtsi2sdl	%eax, %xmm0
	leaq	10528(%rsp), %rbx
	movq	%rbx, %rdi
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm4, 72(%rsp)         # 8-byte Spill
	movsd	%xmm5, 80(%rsp)         # 8-byte Spill
	movsd	%xmm2, 96(%rsp)         # 8-byte Spill
	movsd	%xmm8, 120(%rsp)        # 8-byte Spill
	movsd	%xmm9, 56(%rsp)         # 8-byte Spill
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	callq	_cmsVEC3init
	leaq	10552(%rsp), %rdi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	120(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	_cmsVEC3init
	leaq	10576(%rsp), %rdi
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	_cmsVEC3init
	leaq	10464(%rsp), %rbp
	movq	%rbp, %rdi
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	_cmsVEC3init
	leaq	10496(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	_cmsMAT3solve
	xorpd	%xmm2, %xmm2
	testl	%eax, %eax
	xorpd	%xmm3, %xmm3
	je	.LBB2_55
# BB#46:                                # %if.end.25.i
	movsd	10512(%rsp), %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	10496(%rsp), %xmm0      # xmm0 = mem[0],zero
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	movsd	10504(%rsp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI2_8(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_50
# BB#47:                                # %if.then.35.i
	movapd	96(%rsp), %xmm2         # 16-byte Reload
	xorpd	.LCPI2_11(%rip), %xmm2
	divsd	120(%rsp), %xmm2        # 8-byte Folded Reload
	xorpd	%xmm0, %xmm0
	minsd	%xmm2, %xmm0
	cmpltsd	.LCPI2_10(%rip), %xmm2
	andnpd	%xmm0, %xmm2
	jmp	.LBB2_54
.LBB2_50:                               # %if.else.i
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	.LCPI2_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	96(%rsp), %xmm0         # 16-byte Folded Reload
	addsd	%xmm1, %xmm0
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	xorpd	%xmm3, %xmm3
	jae	.LBB2_55
# BB#51:                                # %if.else.63.i
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_53
# BB#52:                                # %call.sqrt
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_53:                               # %if.else.63.i.split
	subsd	120(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI2_10(%rip), %xmm1  # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	maxsd	%xmm1, %xmm2
.LBB2_54:                               # %RootOfLeastSquaresFitQuadraticCurve.exit
	xorpd	%xmm3, %xmm3
.LBB2_55:                               # %RootOfLeastSquaresFitQuadraticCurve.exit
	maxsd	%xmm2, %xmm3
	movsd	%xmm3, 10368(%rsp)
	movupd	10424(%rsp), %xmm0
	movupd	%xmm0, 10376(%rsp)
	leaq	10368(%rsp), %rdx
.LBB2_56:                               # %cleanup.228
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	cmsLab2XYZ
	movq	%r14, %rdi
	callq	cmsDeleteTransform
.LBB2_57:                               # %cleanup.228
	movl	$1, %ebx
	jmp	.LBB2_58
.Lfunc_end2:
	.size	cmsDetectDestinationBlackPoint, .Lfunc_end2-cmsDetectDestinationBlackPoint
	.cfi_endproc

	.type	.LCreateRoundtripXForm.States,@object # @CreateRoundtripXForm.States
	.section	.rodata,"a",@progbits
	.align	16
.LCreateRoundtripXForm.States:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	.LCreateRoundtripXForm.States, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
