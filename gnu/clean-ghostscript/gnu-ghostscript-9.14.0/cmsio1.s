	.text
	.file	"cmsio1.bc"
	.globl	_cmsReadMediaWhitePoint
	.align	16, 0x90
	.type	_cmsReadMediaWhitePoint,@function
_cmsReadMediaWhitePoint:                # @_cmsReadMediaWhitePoint
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
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB0_7
# BB#1:                                 # %cond.end
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%r15, %rdi
	callq	cmsReadTag
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#3:                                 # %if.end
	movq	%r15, %rdi
	callq	cmsGetEncodedICCversion
	cmpl	$67108863, %eax         # imm = 0x3FFFFFF
	ja	.LBB0_5
# BB#4:                                 # %if.then.5
	movq	%r15, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1835955314, %eax       # imm = 0x6D6E7472
	jne	.LBB0_5
.LBB0_2:                                # %if.then
	callq	cmsD50_XYZ
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r14)
	movups	(%rax), %xmm0
	jmp	.LBB0_6
.LBB0_5:                                # %if.end.11
	movq	16(%rbx), %rax
	movq	%rax, 16(%r14)
	movups	(%rbx), %xmm0
.LBB0_6:                                # %cleanup
	movups	%xmm0, (%r14)
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_7:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$68, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadMediaWhitePoint, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_cmsReadMediaWhitePoint, .Lfunc_end0-_cmsReadMediaWhitePoint
	.cfi_endproc

	.globl	_cmsReadCHAD
	.align	16, 0x90
	.type	_cmsReadCHAD,@function
_cmsReadCHAD:                           # @_cmsReadCHAD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB1_8
# BB#1:                                 # %cond.end
	movl	$1667785060, %esi       # imm = 0x63686164
	movq	%r14, %rdi
	callq	cmsReadTag
	testq	%rax, %rax
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	64(%rax), %rcx
	movq	%rcx, 64(%rbx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	jmp	.LBB1_7
.LBB1_3:                                # %if.end
	movq	%rbx, %rdi
	callq	_cmsMAT3identity
	movq	%r14, %rdi
	callq	cmsGetEncodedICCversion
	cmpl	$67108863, %eax         # imm = 0x3FFFFFF
	ja	.LBB1_7
# BB#4:                                 # %if.then.4
	movq	%r14, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1835955314, %eax       # imm = 0x6D6E7472
	jne	.LBB1_7
# BB#5:                                 # %if.then.7
	movl	$2004119668, %esi       # imm = 0x77747074
	movq	%r14, %rdi
	callq	cmsReadTag
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_6
# BB#9:                                 # %if.end.11
	callq	cmsD50_XYZ
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsAdaptationMatrix    # TAILCALL
.LBB1_6:                                # %if.then.10
	movq	%rbx, %rdi
	callq	_cmsMAT3identity
.LBB1_7:                                # %cleanup.16
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB1_8:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$98, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadCHAD, %ecx
	callq	__assert_fail
.Lfunc_end1:
	.size	_cmsReadCHAD, .Lfunc_end1-_cmsReadCHAD
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	4602678887893172240     # double 5.000076e-01
	.quad	4602678887893172240     # double 5.000076e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4602678887893172240     # double 0.50000762951094835
	.text
	.globl	_cmsReadInputLUT
	.align	16, 0x90
	.type	_cmsReadInputLUT,@function
_cmsReadInputLUT:                       # @_cmsReadInputLUT
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
	subq	$104, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 160
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
	movl	%esi, %ebp
	movq	%rdi, %r13
	callq	cmsGetProfileContextID
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	jne	.LBB2_8
# BB#1:                                 # %if.then
	movl	$1852009522, %esi       # imm = 0x6E636C32
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB2_56
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB2_3
# BB#4:                                 # %if.end.10
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	_cmsStageAllocNamedColor
.LBB2_5:                                # %if.end.10
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	jne	.LBB2_6
	jmp	.LBB2_7
.LBB2_8:                                # %if.end.19
	cmpl	$-1, %ebp
	je	.LBB2_30
# BB#9:                                 # %if.then.21
	movslq	%ebp, %rbx
	movl	Device2PCSFloat(,%rbx,4), %ebp
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB2_24
# BB#10:                                # %if.then.24
	movq	%r13, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %r12
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsReadTag
	movq	%rax, %rdi
	callq	cmsPipelineDup
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ebp
	movq	%r13, %rdi
	callq	cmsGetPCS
	movl	%eax, %ebx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB2_56
# BB#11:                                # %if.end.i
	cmpl	$1482250784, %ebp       # imm = 0x58595A20
	jne	.LBB2_12
# BB#14:                                # %if.then.12.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeToXyzFloat
	jmp	.LBB2_15
.LBB2_3:                                # %if.then.9
	movq	%rbx, %rdi
	callq	cmsFreeNamedColorList
	jmp	.LBB2_55
.LBB2_24:                               # %if.end.26
	movl	Device2PCS16(,%rbx,4), %r14d
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	movl	$1093812784, %ebp       # imm = 0x41324230
	cmovnel	%r14d, %ebp
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB2_30
# BB#25:                                # %if.then.33
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsReadTag
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB2_56
# BB#26:                                # %if.end.38
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	_cmsGetTagTrueType
	movl	%eax, %ebp
	movq	%r12, %rdi
	callq	cmsPipelineDup
	movq	%rax, %r14
	cmpl	$1835430962, %ebp       # imm = 0x6D667432
	jne	.LBB2_56
# BB#27:                                # %lor.lhs.false.42
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB2_56
# BB#28:                                # %if.end.46
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB2_6
# BB#29:                                # %land.lhs.true
	movq	%r15, %rdi
	callq	_cmsStageAllocLabV4ToV2
	jmp	.LBB2_5
.LBB2_30:                               # %if.end.61
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	movq	%r13, %rdi
	cmpl	$1196573017, %eax       # imm = 0x47524159
	jne	.LBB2_42
# BB#31:                                # %if.then.64
	callq	cmsGetProfileContextID
	movq	%rax, %r15
	movl	$1800688195, %esi       # imm = 0x6B545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, 32(%rsp)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB2_56
# BB#32:                                # %if.end.i.44
	movl	$1, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB2_41
# BB#33:                                # %if.end.5.i
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB2_39
# BB#34:                                # %if.then.8.i
	movl	$-2139062144, 28(%rsp)  # imm = 0xFFFFFFFF80808080
	leaq	28(%rsp), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_41
# BB#35:                                # %if.end.12.i
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$3, %esi
	movl	$1, %edx
	movl	$OneToThreeInputMatrix, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_37
# BB#36:                                # %lor.lhs.false.i
	leaq	(%rsp), %rdx
	movl	$3, %esi
	movq	%r15, %rdi
	callq	cmsStageAllocToneCurves
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_37
# BB#38:                                # %cleanup.i
	movq	%rbx, %rdi
	callq	cmsFreeToneCurve
	jmp	.LBB2_56
.LBB2_6:                                # %lor.lhs.false
	movq	%r15, %rdi
	callq	_cmsStageAllocLabV2ToV4
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	jne	.LBB2_56
.LBB2_7:                                # %if.then.16
	movq	%r14, %rdi
	jmp	.LBB2_54
.LBB2_42:                               # %if.end.66
	callq	cmsGetProfileContextID
	movq	%rax, %r15
	leaq	32(%rsp), %rdi
	movq	%r13, %rsi
	callq	ReadICCMatrixRGB2XYZ
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB2_56
# BB#43:                                # %for.cond.preheader.i
	movapd	.LCPI2_0(%rip), %xmm0   # xmm0 = [5.000076e-01,5.000076e-01]
	movapd	32(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)
	movapd	48(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 48(%rsp)
	movapd	64(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 64(%rsp)
	mulpd	80(%rsp), %xmm0
	movapd	%xmm0, 80(%rsp)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, 96(%rsp)
	movl	$1918128707, %esi       # imm = 0x72545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %r12
	movq	%r12, (%rsp)
	movl	$1733579331, %esi       # imm = 0x67545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %rbp
	movq	%rbp, 8(%rsp)
	movl	$1649693251, %esi       # imm = 0x62545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, 16(%rsp)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB2_56
# BB#44:                                # %for.cond.preheader.i
	testq	%r12, %r12
	je	.LBB2_56
# BB#45:                                # %for.cond.preheader.i
	testq	%rbp, %rbp
	je	.LBB2_56
# BB#46:                                # %if.end.24.i
	movl	$3, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB2_56
# BB#47:                                # %if.then.27.i
	leaq	(%rsp), %rdx
	movl	$3, %esi
	movq	%r15, %rdi
	callq	cmsStageAllocToneCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_53
# BB#48:                                # %lor.lhs.false.31.i
	leaq	32(%rsp), %rcx
	movl	$3, %esi
	movl	$3, %edx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_53
# BB#49:                                # %if.end.36.i
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB2_50
# BB#51:                                # %if.then.39.i
	movq	%r15, %rdi
	callq	_cmsStageAllocXYZ2Lab
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_53
# BB#52:
	movq	%r12, %r14
	jmp	.LBB2_56
.LBB2_12:                               # %if.end.i
	cmpl	$1281450528, %ebp       # imm = 0x4C616220
	jne	.LBB2_16
# BB#13:                                # %if.then.6.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeToLabFloat
.LBB2_15:                               # %if.then.12.i
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_23
.LBB2_16:                               # %if.end.19.i
	cmpl	$1482250784, %ebx       # imm = 0x58595A20
	jne	.LBB2_17
# BB#21:                                # %if.then.29.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeFromXyzFloat
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_23
# BB#22:
	movq	%r15, %r14
	jmp	.LBB2_56
.LBB2_17:                               # %if.end.19.i
	cmpl	$1281450528, %ebx       # imm = 0x4C616220
	jne	.LBB2_18
# BB#19:                                # %if.then.21.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeFromLabFloat
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_23
# BB#20:
	movq	%r15, %r14
	jmp	.LBB2_56
.LBB2_23:                               # %Error.i
	movq	%r15, %rdi
	jmp	.LBB2_54
.LBB2_39:                               # %if.else.i
	leaq	32(%rsp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	cmsStageAllocToneCurves
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB2_41
# BB#40:                                # %lor.lhs.false.28.i
	movl	$3, %esi
	movl	$1, %edx
	movl	$GrayInputMatrix, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	jne	.LBB2_56
	jmp	.LBB2_41
.LBB2_18:
	movq	%r15, %r14
	jmp	.LBB2_56
.LBB2_53:                               # %Error.i.57
	movq	%r12, %rdi
	jmp	.LBB2_54
.LBB2_37:                               # %if.then.21.i.46
	movq	%rbx, %rdi
	callq	cmsFreeToneCurve
.LBB2_41:                               # %Error.i.48
	movq	32(%rsp), %rdi
	callq	cmsFreeToneCurve
	movq	%r14, %rdi
.LBB2_54:                               # %cleanup.68
	callq	cmsPipelineFree
.LBB2_55:                               # %cleanup.68
	xorl	%r14d, %r14d
.LBB2_56:                               # %cleanup.68
	movq	%r14, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_50:
	movq	%r12, %r14
	jmp	.LBB2_56
.Lfunc_end2:
	.size	_cmsReadInputLUT, .Lfunc_end2-_cmsReadInputLUT
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4611685880988434432     # double 1.999969482421875
	.text
	.globl	_cmsReadOutputLUT
	.align	16, 0x90
	.type	_cmsReadOutputLUT,@function
_cmsReadOutputLUT:                      # @_cmsReadOutputLUT
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
	subq	$184, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 240
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
	movl	%esi, %ebp
	movq	%rdi, %r13
	callq	cmsGetProfileContextID
	movq	%rax, %r15
	cmpl	$-1, %ebp
	je	.LBB3_35
# BB#1:                                 # %if.then
	movslq	%ebp, %rbx
	movl	PCS2DeviceFloat(,%rbx,4), %ebp
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB3_16
# BB#2:                                 # %if.then.4
	movq	%r13, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %r12
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsReadTag
	movq	%rax, %rdi
	callq	cmsPipelineDup
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	cmsGetPCS
	movl	%eax, %ebp
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ebx
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB3_65
# BB#3:                                 # %if.end.i
	cmpl	$1482250784, %ebp       # imm = 0x58595A20
	jne	.LBB3_4
# BB#6:                                 # %if.then.12.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeToXyzFloat
	jmp	.LBB3_7
.LBB3_16:                               # %if.end
	movl	PCS2Device16(,%rbx,4), %ebx
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	movl	$1110589744, %ebp       # imm = 0x42324130
	cmovnel	%ebx, %ebp
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB3_35
# BB#17:                                # %if.then.12
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsReadTag
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB3_65
# BB#18:                                # %if.end.16
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	_cmsGetTagTrueType
	movl	%eax, %ebx
	movq	%r12, %rdi
	callq	cmsPipelineDup
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB3_65
# BB#19:                                # %if.end.21
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB3_25
# BB#20:                                # %if.then.24
	movq	%r12, %rdi
	callq	cmsPipelineGetPtrToFirstStage
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_24:                               # %for.inc.i
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	%rbp, %rdi
	callq	cmsStageNext
.LBB3_21:                               # %if.then.24
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_25
# BB#22:                                # %for.body.i
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	%rbp, %rdi
	callq	cmsStageType
	cmpl	$1668052340, %eax       # imm = 0x636C7574
	jne	.LBB3_24
# BB#23:                                # %if.then.i
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	48(%rbp), %rax
	movq	8(%rax), %rsi
	orl	$256, 8(%rsi)           # imm = 0x100
	movq	56(%r12), %rdi
	callq	_cmsSetInterpolationRoutine
	jmp	.LBB3_24
.LBB3_35:                               # %if.end.46
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	movq	%r13, %rdi
	cmpl	$1196573017, %eax       # imm = 0x47524159
	jne	.LBB3_47
# BB#36:                                # %if.then.49
	callq	cmsGetProfileContextID
	movq	%rax, %r15
	movl	$1800688195, %esi       # imm = 0x6B545243
	movq	%r13, %rdi
	callq	cmsReadTag
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB3_65
# BB#37:                                # %if.end.i.39
	movq	%rax, %rdi
	callq	cmsReverseToneCurve
	movq	%rax, %r12
	movq	%r12, 88(%rsp)
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB3_65
# BB#38:                                # %if.end.5.i
	movl	$3, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB3_39
# BB#40:                                # %if.end.9.i
	movq	%r13, %rdi
	callq	cmsGetPCS
	movl	$1, %esi
	movl	$3, %edx
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB3_42
# BB#41:                                # %if.then.12.i.43
	movl	$PickLstarMatrix, %ecx
	jmp	.LBB3_43
.LBB3_47:                               # %if.end.51
	callq	cmsGetProfileContextID
	movq	%rax, %r15
	leaq	88(%rsp), %rdi
	movq	%r13, %rsi
	callq	ReadICCMatrixRGB2XYZ
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB3_65
# BB#48:                                # %if.end.i.51
	leaq	88(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_cmsMAT3inverse
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB3_65
# BB#49:                                # %for.cond.preheader.i
	movapd	.LCPI3_0(%rip), %xmm0   # xmm0 = [1.999969e+00,1.999969e+00]
	movapd	16(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 16(%rsp)
	movapd	32(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 32(%rsp)
	movapd	48(%rsp), %xmm1
	mulpd	%xmm0, %xmm1
	movapd	%xmm1, 48(%rsp)
	mulpd	64(%rsp), %xmm0
	movapd	%xmm0, 64(%rsp)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI3_1(%rip), %xmm0
	movsd	%xmm0, 80(%rsp)
	movl	$1918128707, %esi       # imm = 0x72545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %rbp
	movl	$1733579331, %esi       # imm = 0x67545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %r12
	movl	$1649693251, %esi       # imm = 0x62545243
	movq	%r13, %rdi
	callq	cmsReadTag
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB3_65
# BB#50:                                # %for.cond.preheader.i
	testq	%r12, %r12
	je	.LBB3_65
# BB#51:                                # %for.cond.preheader.i
	testq	%rbx, %rbx
	je	.LBB3_65
# BB#52:                                # %if.end.28.i
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%rbp, %rdi
	callq	cmsReverseToneCurve
	movq	%rax, %r15
	movq	%r15, 160(%rsp)
	movq	%r12, %rdi
	callq	cmsReverseToneCurve
	movq	%rax, %rbp
	movq	%rbp, 168(%rsp)
	movq	%rbx, %rdi
	callq	cmsReverseToneCurve
	movq	%rax, 176(%rsp)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB3_65
# BB#53:                                # %if.end.28.i
	testq	%r15, %r15
	je	.LBB3_65
# BB#54:                                # %if.end.28.i
	testq	%rbp, %rbp
	movq	8(%rsp), %rbx           # 8-byte Reload
	je	.LBB3_65
# BB#55:                                # %if.end.47.i
	movl	$3, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB3_60
# BB#56:                                # %if.then.50.i
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB3_58
# BB#57:                                # %if.then.53.i
	movq	%rbx, %rdi
	callq	_cmsStageAllocLab2XYZ
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_61
.LBB3_58:                               # %if.end.59.i
	leaq	16(%rsp), %rcx
	movl	$3, %esi
	movl	$3, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_61
# BB#59:                                # %lor.lhs.false.63.i
	leaq	160(%rsp), %rdx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	cmsStageAllocToneCurves
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_61
.LBB3_60:                               # %if.end.69.i
	leaq	160(%rsp), %rdi
	callq	cmsFreeToneCurveTriple
	jmp	.LBB3_65
.LBB3_4:                                # %if.end.i
	cmpl	$1281450528, %ebp       # imm = 0x4C616220
	jne	.LBB3_8
# BB#5:                                 # %if.then.6.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeToLabFloat
.LBB3_7:                                # %if.then.12.i
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_15
.LBB3_8:                                # %if.end.19.i
	cmpl	$1482250784, %ebx       # imm = 0x58595A20
	jne	.LBB3_9
# BB#13:                                # %if.then.29.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeFromXyzFloat
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_15
# BB#14:
	movq	%r15, %r14
	jmp	.LBB3_65
.LBB3_9:                                # %if.end.19.i
	cmpl	$1281450528, %ebx       # imm = 0x4C616220
	jne	.LBB3_10
# BB#11:                                # %if.then.21.i
	movq	%r12, %rdi
	callq	_cmsStageNormalizeFromLabFloat
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_15
# BB#12:
	movq	%r15, %r14
	jmp	.LBB3_65
.LBB3_15:                               # %Error.i
	movq	%r15, %rdi
	jmp	.LBB3_63
.LBB3_25:                               # %if.end.25
	cmpl	$1835430962, %ebx       # imm = 0x6D667432
	jne	.LBB3_26
# BB#27:                                # %lor.lhs.false
	movq	%r13, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB3_28
# BB#29:                                # %if.end.30
	movq	%r15, %rdi
	callq	_cmsStageAllocLabV4ToV2
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_34
# BB#30:                                # %if.end.35
	movq	%r13, %rdi
	callq	cmsGetColorSpace
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB3_31
# BB#32:                                # %if.then.38
	movq	%r15, %rdi
	callq	_cmsStageAllocLabV2ToV4
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_34
# BB#33:
	movq	%r12, %r14
	jmp	.LBB3_65
.LBB3_10:
	movq	%r15, %r14
	jmp	.LBB3_65
.LBB3_39:                               # %if.then.8.i
	movq	%r12, %rdi
	callq	cmsFreeToneCurve
	jmp	.LBB3_64
.LBB3_26:
	movq	%r12, %r14
	jmp	.LBB3_65
.LBB3_42:                               # %if.else.i
	movl	$PickYMatrix, %ecx
.LBB3_43:                               # %if.else.i
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_46
# BB#44:                                # %if.end.22.i
	leaq	88(%rsp), %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	cmsStageAllocToneCurves
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	movq	88(%rsp), %r12
	je	.LBB3_46
# BB#45:                                # %if.end.27.i
	movq	%r12, %rdi
	callq	cmsFreeToneCurve
	jmp	.LBB3_65
.LBB3_46:                               # %Error.i.45
	movq	%r12, %rdi
	callq	cmsFreeToneCurve
	jmp	.LBB3_62
.LBB3_28:
	movq	%r12, %r14
	jmp	.LBB3_65
.LBB3_61:                               # %Error.i.55
	leaq	160(%rsp), %rdi
	callq	cmsFreeToneCurveTriple
.LBB3_62:                               # %cleanup.53
	movq	%r14, %rdi
.LBB3_63:                               # %cleanup.53
	callq	cmsPipelineFree
.LBB3_64:                               # %cleanup.53
	xorl	%r14d, %r14d
.LBB3_65:                               # %cleanup.53
	movq	%r14, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_34:                               # %Error
	movq	%r12, %rdi
	jmp	.LBB3_63
.LBB3_31:
	movq	%r12, %r14
	jmp	.LBB3_65
.Lfunc_end3:
	.size	_cmsReadOutputLUT, .Lfunc_end3-_cmsReadOutputLUT
	.cfi_endproc

	.globl	_cmsReadDevicelinkLUT
	.align	16, 0x90
	.type	_cmsReadDevicelinkLUT,@function
_cmsReadDevicelinkLUT:                  # @_cmsReadDevicelinkLUT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -48
.Ltmp43:
	.cfi_offset %r12, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r12
	callq	cmsGetProfileContextID
	movq	%rax, %r14
	movq	%r12, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	jne	.LBB4_7
# BB#1:                                 # %if.then
	movl	$1852009522, %esi       # imm = 0x6E636C32
	movq	%r12, %rdi
	callq	cmsReadTag
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	je	.LBB4_44
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_6
# BB#3:                                 # %if.end.10
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	_cmsStageAllocNamedColor
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_6
# BB#4:                                 # %if.end.14
	movq	%r12, %rdi
	callq	cmsGetColorSpace
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB4_44
# BB#5:                                 # %if.then.17
	movq	%r14, %rdi
	callq	_cmsStageAllocLabV2ToV4
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	jne	.LBB4_44
.LBB4_6:                                # %Error
	movq	%rbx, %rdi
	callq	cmsPipelineFree
	movq	%rbp, %rdi
	callq	cmsFreeNamedColorList
	jmp	.LBB4_43
.LBB4_7:                                # %if.end.24
	movslq	%ebx, %rbp
	movl	Device2PCSFloat(,%rbp,4), %ebx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB4_22
# BB#8:                                 # %if.then.27
	movq	%r12, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %r14
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	cmsReadTag
	movq	%rax, %rdi
	callq	cmsPipelineDup
	movq	%rax, %rbp
	movq	%r12, %rdi
	callq	cmsGetPCS
	movl	%eax, %r15d
	movq	%r12, %rdi
	callq	cmsGetColorSpace
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	je	.LBB4_44
# BB#9:                                 # %if.end.i
	cmpl	$1482250784, %eax       # imm = 0x58595A20
	jne	.LBB4_10
# BB#12:                                # %if.then.12.i
	movq	%r14, %rdi
	callq	_cmsStageNormalizeToXyzFloat
	jmp	.LBB4_13
.LBB4_22:                               # %if.end.29
	movl	$1144144432, %esi       # imm = 0x44324230
	movq	%r12, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB4_23
# BB#45:                                # %if.then.32
	movl	$1144144432, %esi       # imm = 0x44324230
	movq	%r12, %rdi
	callq	cmsReadTag
	movq	%rax, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmsPipelineDup          # TAILCALL
.LBB4_10:                               # %if.end.i
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB4_14
# BB#11:                                # %if.then.6.i
	movq	%r14, %rdi
	callq	_cmsStageNormalizeToLabFloat
.LBB4_13:                               # %if.then.12.i
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_21
.LBB4_14:                               # %if.end.19.i
	cmpl	$1482250784, %r15d      # imm = 0x58595A20
	jne	.LBB4_15
# BB#19:                                # %if.then.29.i
	movq	%r14, %rdi
	callq	_cmsStageNormalizeFromXyzFloat
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_21
# BB#20:
	movq	%rbp, %rbx
	jmp	.LBB4_44
.LBB4_23:                               # %if.end.35
	movl	Device2PCS16(,%rbp,4), %ebp
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	cmsIsTag
	testl	%eax, %eax
	jne	.LBB4_25
# BB#24:                                # %if.then.38
	movl	$1093812784, %ebp       # imm = 0x41324230
	movl	$1093812784, %esi       # imm = 0x41324230
	movq	%r12, %rdi
	callq	cmsIsTag
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB4_44
.LBB4_25:                               # %if.end.43
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	cmsReadTag
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB4_44
# BB#26:                                # %if.end.47
	movq	%rax, %rdi
	callq	cmsPipelineDup
	movq	%rax, %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB4_44
# BB#27:                                # %if.end.51
	movq	%r12, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB4_33
# BB#28:                                # %if.then.54
	movq	%r15, %rdi
	callq	cmsPipelineGetPtrToFirstStage
	jmp	.LBB4_29
	.align	16, 0x90
.LBB4_32:                               # %for.inc.i
                                        #   in Loop: Header=BB4_29 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageNext
.LBB4_29:                               # %if.then.54
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_33
# BB#30:                                # %for.body.i
                                        #   in Loop: Header=BB4_29 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	$1668052340, %eax       # imm = 0x636C7574
	jne	.LBB4_32
# BB#31:                                # %if.then.i
                                        #   in Loop: Header=BB4_29 Depth=1
	movq	48(%rbx), %rax
	movq	8(%rax), %rsi
	orl	$256, 8(%rsi)           # imm = 0x100
	movq	56(%r15), %rdi
	callq	_cmsSetInterpolationRoutine
	jmp	.LBB4_32
.LBB4_15:                               # %if.end.19.i
	cmpl	$1281450528, %r15d      # imm = 0x4C616220
	jne	.LBB4_16
# BB#17:                                # %if.then.21.i
	movq	%r14, %rdi
	callq	_cmsStageNormalizeFromLabFloat
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_21
# BB#18:
	movq	%rbp, %rbx
	jmp	.LBB4_44
.LBB4_21:                               # %Error.i
	movq	%rbp, %rdi
.LBB4_42:                               # %cleanup.78
	callq	cmsPipelineFree
.LBB4_43:                               # %cleanup.78
	xorl	%ebx, %ebx
.LBB4_44:                               # %cleanup.78
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_16:
	movq	%rbp, %rbx
	jmp	.LBB4_44
.LBB4_33:                               # %if.end.55
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	_cmsGetTagTrueType
	cmpl	$1835430962, %eax       # imm = 0x6D667432
	jne	.LBB4_34
# BB#35:                                # %if.end.59
	movq	%r12, %rdi
	callq	cmsGetColorSpace
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB4_37
# BB#36:                                # %if.then.62
	movq	%r14, %rdi
	callq	_cmsStageAllocLabV4ToV2
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_41
.LBB4_37:                               # %if.end.68
	movq	%r12, %rdi
	callq	cmsGetPCS
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	jne	.LBB4_38
# BB#39:                                # %if.then.71
	movq	%r14, %rdi
	callq	_cmsStageAllocLabV2ToV4
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_41
# BB#40:
	movq	%r15, %rbx
	jmp	.LBB4_44
.LBB4_34:
	movq	%r15, %rbx
	jmp	.LBB4_44
.LBB4_38:
	movq	%r15, %rbx
	jmp	.LBB4_44
.LBB4_41:                               # %Error2
	movq	%r15, %rdi
	jmp	.LBB4_42
.Lfunc_end4:
	.size	_cmsReadDevicelinkLUT, .Lfunc_end4-_cmsReadDevicelinkLUT
	.cfi_endproc

	.globl	cmsIsMatrixShaper
	.align	16, 0x90
	.type	cmsIsMatrixShaper,@function
cmsIsMatrixShaper:                      # @cmsIsMatrixShaper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	cmsGetColorSpace
	movl	%eax, %ecx
	cmpl	$1380401696, %ecx       # imm = 0x52474220
	jne	.LBB5_1
# BB#3:                                 # %sw.bb.2
	movl	$1918392666, %esi       # imm = 0x7258595A
	movq	%rbx, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB5_4
# BB#5:                                 # %land.lhs.true
	movl	$1733843290, %esi       # imm = 0x6758595A
	movq	%rbx, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB5_6
# BB#7:                                 # %land.lhs.true.6
	movl	$1649957210, %esi       # imm = 0x6258595A
	movq	%rbx, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB5_8
# BB#9:                                 # %land.lhs.true.9
	movl	$1918128707, %esi       # imm = 0x72545243
	movq	%rbx, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB5_10
# BB#11:                                # %land.lhs.true.12
	movl	$1733579331, %esi       # imm = 0x67545243
	movq	%rbx, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB5_12
# BB#13:                                # %land.rhs
	movl	$1649693251, %esi       # imm = 0x62545243
	movq	%rbx, %rdi
	callq	cmsIsTag
	testl	%eax, %eax
	setne	%al
	jmp	.LBB5_14
.LBB5_1:                                # %entry
	xorl	%eax, %eax
	cmpl	$1196573017, %ecx       # imm = 0x47524159
	jne	.LBB5_15
# BB#2:                                 # %sw.bb
	movl	$1800688195, %esi       # imm = 0x6B545243
	movq	%rbx, %rdi
	popq	%rbx
	jmp	cmsIsTag                # TAILCALL
.LBB5_4:
	xorl	%eax, %eax
	jmp	.LBB5_14
.LBB5_6:
	xorl	%eax, %eax
	jmp	.LBB5_14
.LBB5_8:
	xorl	%eax, %eax
	jmp	.LBB5_14
.LBB5_10:
	xorl	%eax, %eax
	jmp	.LBB5_14
.LBB5_12:
	xorl	%eax, %eax
.LBB5_14:                               # %land.end
	movzbl	%al, %eax
.LBB5_15:                               # %return
	popq	%rbx
	retq
.Lfunc_end5:
	.size	cmsIsMatrixShaper, .Lfunc_end5-cmsIsMatrixShaper
	.cfi_endproc

	.globl	cmsIsCLUT
	.align	16, 0x90
	.type	cmsIsCLUT,@function
cmsIsCLUT:                              # @cmsIsCLUT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 32
.Ltmp52:
	.cfi_offset %rbx, -32
.Ltmp53:
	.cfi_offset %r14, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	cmsGetDeviceClass
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	cmsGetHeaderRenderingIntent
	cmpl	%r14d, %eax
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB6_20
.LBB6_2:                                # %if.end
	movl	$Device2PCS16, %eax
	testl	%ebp, %ebp
	je	.LBB6_6
# BB#3:                                 # %if.end
	cmpl	$2, %ebp
	jne	.LBB6_4
# BB#7:                                 # %sw.bb.4
	movq	%rbx, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	jne	.LBB6_9
# BB#8:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	cmsGetHeaderRenderingIntent
	cmpl	%r14d, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB6_10
.LBB6_4:                                # %if.end
	cmpl	$1, %ebp
	jne	.LBB6_19
# BB#5:                                 # %sw.bb.3
	movl	$PCS2Device16, %eax
.LBB6_6:                                # %sw.epilog
	movl	%r14d, %ecx
	movl	(%rax,%rcx,4), %esi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	cmsIsTag                # TAILCALL
.LBB6_9:                                # %if.end.i.18
	movl	%r14d, %eax
	movl	Device2PCS16(,%rax,4), %esi
	movq	%rbx, %rdi
	callq	cmsIsTag
.LBB6_10:                               # %cmsIsCLUT.exit
	testl	%eax, %eax
	jne	.LBB6_13
# BB#11:                                # %cmsIsIntentSupported.exit
	movq	%rbx, %rdi
	callq	cmsIsMatrixShaper
	testl	%eax, %eax
	je	.LBB6_12
.LBB6_13:                               # %land.rhs
	movq	%rbx, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	jne	.LBB6_15
# BB#14:                                # %if.then.i.24
	movq	%rbx, %rdi
	callq	cmsGetHeaderRenderingIntent
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB6_16
.LBB6_19:                               # %sw.default
	movq	%rbx, %rdi
	callq	cmsGetProfileContextID
	movq	%rax, %rcx
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movl	%ebp, %ecx
	callq	cmsSignalError
	jmp	.LBB6_20
.LBB6_15:                               # %if.end.i.25
	movl	$1110589745, %esi       # imm = 0x42324131
	movq	%rbx, %rdi
	callq	cmsIsTag
.LBB6_16:                               # %cmsIsCLUT.exit29
	movb	$1, %cl
	testl	%eax, %eax
	jne	.LBB6_18
# BB#17:                                # %if.end.i.13
	movq	%rbx, %rdi
	callq	cmsIsMatrixShaper
	testl	%eax, %eax
	setne	%cl
.LBB6_18:                               # %land.end
	movzbl	%cl, %ebx
.LBB6_20:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_12:
	xorl	%ecx, %ecx
	movzbl	%cl, %ebx
	jmp	.LBB6_20
.Lfunc_end6:
	.size	cmsIsCLUT, .Lfunc_end6-cmsIsCLUT
	.cfi_endproc

	.globl	cmsIsIntentSupported
	.align	16, 0x90
	.type	cmsIsIntentSupported,@function
cmsIsIntentSupported:                   # @cmsIsIntentSupported
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	cmsIsCLUT
	testl	%eax, %eax
	je	.LBB7_2
# BB#1:                                 # %return
	movl	$1, %eax
	popq	%rbx
	retq
.LBB7_2:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	cmsIsMatrixShaper       # TAILCALL
.Lfunc_end7:
	.size	cmsIsIntentSupported, .Lfunc_end7-cmsIsIntentSupported
	.cfi_endproc

	.globl	_cmsReadProfileSequence
	.align	16, 0x90
	.type	_cmsReadProfileSequence,@function
_cmsReadProfileSequence:                # @_cmsReadProfileSequence
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 64
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1886610801, %esi       # imm = 0x70736571
	callq	cmsReadTag
	movq	%rax, %r14
	movl	$1886611812, %esi       # imm = 0x70736964
	movq	%rbx, %rdi
	callq	cmsReadTag
	movq	%rax, %r13
	xorl	%r15d, %r15d
	movq	%r14, %rax
	orq	%r13, %rax
	je	.LBB8_11
# BB#1:                                 # %if.end
	testq	%r14, %r14
	je	.LBB8_2
# BB#4:                                 # %if.end.6
	testq	%r13, %r13
	je	.LBB8_5
# BB#6:                                 # %if.end.10
	movl	(%r14), %r12d
	movl	(%r13), %ebp
	movq	%r14, %rdi
	callq	cmsDupProfileSequenceDescription
	movq	%rax, %r15
	cmpl	%ebp, %r12d
	jne	.LBB8_11
# BB#7:                                 # %if.end.10
	testq	%r15, %r15
	je	.LBB8_11
# BB#8:                                 # %for.cond.preheader
	cmpl	$0, (%r14)
	je	.LBB8_11
# BB#9:                                 # %for.body.lr.ph
	movq	16(%r15), %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	shlq	$6, %rbx
	leaq	20(%rcx,%rbx), %rdi
	movq	16(%r13), %rax
	leaq	20(%rax,%rbx), %rsi
	movl	$16, %edx
	callq	memmove
	movq	16(%r13), %rax
	movq	56(%rax,%rbx), %rdi
	callq	cmsMLUdup
	movq	16(%r15), %rcx
	movq	%rax, 56(%rcx,%rbx)
	incl	%ebp
	cmpl	(%r14), %ebp
	jb	.LBB8_10
.LBB8_11:                               # %cleanup
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_2:                                # %if.then.4
	movq	%r13, %rdi
	jmp	.LBB8_3
.LBB8_5:                                # %if.then.8
	movq	%r14, %rdi
.LBB8_3:                                # %if.then.4
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmsDupProfileSequenceDescription # TAILCALL
.Lfunc_end8:
	.size	_cmsReadProfileSequence, .Lfunc_end8-_cmsReadProfileSequence
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4616189618054758400     # double 4
	.text
	.globl	_cmsWriteProfileSequence
	.align	16, 0x90
	.type	_cmsWriteProfileSequence,@function
_cmsWriteProfileSequence:               # @_cmsWriteProfileSequence
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 32
.Ltmp73:
	.cfi_offset %rbx, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$1886610801, %esi       # imm = 0x70736571
	movq	%rbx, %rdx
	callq	cmsWriteTag
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB9_4
# BB#1:                                 # %if.end
	movq	%rbp, %rdi
	callq	cmsGetProfileVersion
	ucomisd	.LCPI9_0(%rip), %xmm0
	jb	.LBB9_3
# BB#2:                                 # %if.then.2
	movl	$1886611812, %esi       # imm = 0x70736964
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	cmsWriteTag
	testl	%eax, %eax
	je	.LBB9_4
.LBB9_3:                                # %if.end.7
	movl	$1, %r14d
.LBB9_4:                                # %return
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_cmsWriteProfileSequence, .Lfunc_end9-_cmsWriteProfileSequence
	.cfi_endproc

	.globl	_cmsCompileProfileSequence
	.align	16, 0x90
	.type	_cmsCompileProfileSequence,@function
_cmsCompileProfileSequence:             # @_cmsCompileProfileSequence
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp82:
	.cfi_def_cfa_offset 64
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %r15d
	callq	cmsAllocProfileSequenceDescription
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB10_13
# BB#1:                                 # %for.cond.preheader
	testl	%r15d, %r15d
	je	.LBB10_12
# BB#2:                                 # %for.body.lr.ph
	movl	$56, %ebx
	.align	16, 0x90
.LBB10_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %r13
	movq	(%r12), %rbp
	leaq	-48(%r13,%rbx), %rsi
	movq	%rbp, %rdi
	callq	cmsGetHeaderAttributes
	leaq	-36(%r13,%rbx), %rsi
	movq	%rbp, %rdi
	callq	cmsGetHeaderProfileID
	movq	%rbp, %rdi
	callq	cmsGetHeaderManufacturer
	movl	%eax, -56(%r13,%rbx)
	movq	%rbp, %rdi
	callq	cmsGetHeaderModel
	movl	%eax, -52(%r13,%rbx)
	movl	$1952801640, %esi       # imm = 0x74656368
	movq	%rbp, %rdi
	callq	cmsReadTag
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB10_5
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	(%rax), %ecx
.LBB10_5:                               # %if.end.11
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	%ecx, -40(%r13,%rbx)
	movl	$1684893284, %esi       # imm = 0x646D6E64
	movq	%rbp, %rdi
	callq	cmsReadTag
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB10_7
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	%rax, %rdi
	callq	cmsMLUdup
	movq	%rax, %rcx
.LBB10_7:                               # %GetMLUFromProfile.exit
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	%rcx, -16(%r13,%rbx)
	movl	$1684890724, %esi       # imm = 0x646D6464
	movq	%rbp, %rdi
	callq	cmsReadTag
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB10_9
# BB#8:                                 # %if.end.i.31
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	%rax, %rdi
	callq	cmsMLUdup
	movq	%rax, %rcx
.LBB10_9:                               # %GetMLUFromProfile.exit33
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	%rcx, -8(%r13,%rbx)
	movl	$1684370275, %esi       # imm = 0x64657363
	movq	%rbp, %rdi
	callq	cmsReadTag
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB10_11
# BB#10:                                # %if.end.i.37
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	%rax, %rdi
	callq	cmsMLUdup
	movq	%rax, %rcx
.LBB10_11:                              # %GetMLUFromProfile.exit39
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	%rcx, (%r13,%rbx)
	addq	$64, %rbx
	addq	$8, %r12
	decl	%r15d
	jne	.LBB10_3
.LBB10_12:
	movq	%r14, %rax
.LBB10_13:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_cmsCompileProfileSequence, .Lfunc_end10-_cmsCompileProfileSequence
	.cfi_endproc

	.globl	cmsGetProfileInfo
	.align	16, 0x90
	.type	cmsGetProfileInfo,@function
cmsGetProfileInfo:                      # @cmsGetProfileInfo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 48
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	cmpl	$3, %esi
	ja	.LBB11_2
# BB#1:                                 # %GetInfo.exit
	movslq	%esi, %rax
	movl	.Lswitch.table(,%rax,4), %esi
	callq	cmsReadTag
	testq	%rax, %rax
	je	.LBB11_2
# BB#3:                                 # %if.end
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movl	%r14d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmsMLUgetWide           # TAILCALL
.LBB11_2:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cmsGetProfileInfo, .Lfunc_end11-cmsGetProfileInfo
	.cfi_endproc

	.globl	cmsGetProfileInfoASCII
	.align	16, 0x90
	.type	cmsGetProfileInfoASCII,@function
cmsGetProfileInfoASCII:                 # @cmsGetProfileInfoASCII
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 48
.Ltmp103:
	.cfi_offset %rbx, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	cmpl	$3, %esi
	ja	.LBB12_2
# BB#1:                                 # %GetInfo.exit
	movslq	%esi, %rax
	movl	.Lswitch.table(,%rax,4), %esi
	callq	cmsReadTag
	testq	%rax, %rax
	je	.LBB12_2
# BB#3:                                 # %if.end
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movl	%r14d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmsMLUgetASCII          # TAILCALL
.LBB12_2:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cmsGetProfileInfoASCII, .Lfunc_end12-cmsGetProfileInfoASCII
	.cfi_endproc

	.align	16, 0x90
	.type	ReadICCMatrixRGB2XYZ,@function
ReadICCMatrixRGB2XYZ:                   # @ReadICCMatrixRGB2XYZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp111:
	.cfi_def_cfa_offset 48
.Ltmp112:
	.cfi_offset %rbx, -40
.Ltmp113:
	.cfi_offset %r12, -32
.Ltmp114:
	.cfi_offset %r14, -24
.Ltmp115:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB13_6
# BB#1:                                 # %cond.end
	movl	$1918392666, %esi       # imm = 0x7258595A
	movq	%rbx, %rdi
	callq	cmsReadTag
	movq	%rax, %r14
	movl	$1733843290, %esi       # imm = 0x6758595A
	movq	%rbx, %rdi
	callq	cmsReadTag
	movq	%rax, %r15
	movl	$1649957210, %esi       # imm = 0x6258595A
	movq	%rbx, %rdi
	callq	cmsReadTag
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB13_5
# BB#2:                                 # %cond.end
	testq	%r15, %r15
	je	.LBB13_5
# BB#3:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB13_5
# BB#4:                                 # %if.end
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r15), %xmm1           # xmm1 = mem[0],zero
	movsd	(%rbx), %xmm2           # xmm2 = mem[0],zero
	movq	%r12, %rdi
	callq	_cmsVEC3init
	leaq	24(%r12), %rdi
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	callq	_cmsVEC3init
	addq	$48, %r12
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	movsd	16(%r15), %xmm1         # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm2         # xmm2 = mem[0],zero
	movq	%r12, %rdi
	callq	_cmsVEC3init
	movl	$1, %eax
.LBB13_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB13_6:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$137, %edx
	movl	$.L__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ, %ecx
	callq	__assert_fail
.Lfunc_end13:
	.size	ReadICCMatrixRGB2XYZ, .Lfunc_end13-ReadICCMatrixRGB2XYZ
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(Dest != ((void*)0))"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsio1.c"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__._cmsReadMediaWhitePoint,@object # @__PRETTY_FUNCTION__._cmsReadMediaWhitePoint
.L__PRETTY_FUNCTION__._cmsReadMediaWhitePoint:
	.asciz	"cmsBool _cmsReadMediaWhitePoint(cmsCIEXYZ *, cmsHPROFILE)"
	.size	.L__PRETTY_FUNCTION__._cmsReadMediaWhitePoint, 58

	.type	.L__PRETTY_FUNCTION__._cmsReadCHAD,@object # @__PRETTY_FUNCTION__._cmsReadCHAD
.L__PRETTY_FUNCTION__._cmsReadCHAD:
	.asciz	"cmsBool _cmsReadCHAD(cmsMAT3 *, cmsHPROFILE)"
	.size	.L__PRETTY_FUNCTION__._cmsReadCHAD, 45

	.type	Device2PCS16,@object    # @Device2PCS16
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
Device2PCS16:
	.long	1093812784              # 0x41324230
	.long	1093812785              # 0x41324231
	.long	1093812786              # 0x41324232
	.long	1093812785              # 0x41324231
	.size	Device2PCS16, 16

	.type	Device2PCSFloat,@object # @Device2PCSFloat
	.align	16
Device2PCSFloat:
	.long	1144144432              # 0x44324230
	.long	1144144433              # 0x44324231
	.long	1144144434              # 0x44324232
	.long	1144144435              # 0x44324233
	.size	Device2PCSFloat, 16

	.type	PCS2Device16,@object    # @PCS2Device16
	.align	16
PCS2Device16:
	.long	1110589744              # 0x42324130
	.long	1110589745              # 0x42324131
	.long	1110589746              # 0x42324132
	.long	1110589745              # 0x42324131
	.size	PCS2Device16, 16

	.type	PCS2DeviceFloat,@object # @PCS2DeviceFloat
	.align	16
PCS2DeviceFloat:
	.long	1110590512              # 0x42324430
	.long	1110590513              # 0x42324431
	.long	1110590514              # 0x42324432
	.long	1110590515              # 0x42324433
	.size	PCS2DeviceFloat, 16

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Unexpected direction (%d)"
	.size	.L.str.2, 26

	.type	OneToThreeInputMatrix,@object # @OneToThreeInputMatrix
	.section	.rodata,"a",@progbits
	.align	16
OneToThreeInputMatrix:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	OneToThreeInputMatrix, 24

	.type	GrayInputMatrix,@object # @GrayInputMatrix
	.align	16
GrayInputMatrix:
	.quad	4602356493959988227     # double 4.821074e-01
	.quad	4602678887893172240     # double 5.000076e-01
	.quad	4601101771958264450     # double 4.124563e-01
	.size	GrayInputMatrix, 24

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"(r != ((void*)0))"
	.size	.L.str.3, 18

	.type	.L__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ,@object # @__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ
.L__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ:
	.asciz	"cmsBool ReadICCMatrixRGB2XYZ(cmsMAT3 *, cmsHPROFILE)"
	.size	.L__PRETTY_FUNCTION__.ReadICCMatrixRGB2XYZ, 53

	.type	PickLstarMatrix,@object # @PickLstarMatrix
	.section	.rodata,"a",@progbits
	.align	16
PickLstarMatrix:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.size	PickLstarMatrix, 24

	.type	PickYMatrix,@object     # @PickYMatrix
	.align	16
PickYMatrix:
	.quad	0                       # double 0.000000e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	0                       # double 0.000000e+00
	.size	PickYMatrix, 24

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lswitch.table:
	.long	1684370275              # 0x64657363
	.long	1684893284              # 0x646d6e64
	.long	1684890724              # 0x646d6464
	.long	1668313716              # 0x63707274
	.size	.Lswitch.table, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
