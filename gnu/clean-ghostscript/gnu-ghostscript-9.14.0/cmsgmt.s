	.text
	.file	"cmsgmt.bc"
	.globl	_cmsChain2Lab
	.align	16, 0x90
	.type	_cmsChain2Lab,@function
_cmsChain2Lab:                          # @_cmsChain2Lab
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$6200, %rsp             # imm = 0x1838
.Ltmp6:
	.cfi_def_cfa_offset 6256
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r12
	movl	%esi, %eax
	xorl	%r13d, %r13d
	cmpl	$254, %eax
	ja	.LBB0_6
# BB#1:                                 # %if.end
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	%edx, %ebx
	movl	%ecx, %r14d
	movq	%rdi, %r15
	movl	%eax, 44(%rsp)          # 4-byte Spill
	callq	cmsCreateLab4ProfileTHR
	movl	44(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %r10d
	movl	%ebx, %r9d
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_6
# BB#2:                                 # %for.cond.preheader
	movl	6272(%rsp), %r8d
	testl	%esi, %esi
	je	.LBB0_5
# BB#3:                                 # %for.body.preheader
	movq	6264(%rsp), %r11
	movq	6256(%rsp), %rdx
	movl	%esi, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%rbx,8), %rax
	movq	%rax, 4144(%rsp,%rbx,8)
	movl	(%rdx,%rbx,4), %eax
	movl	%eax, 3120(%rsp,%rbx,4)
	movq	(%r11,%rbx,8), %rax
	movq	%rax, 1072(%rsp,%rbx,8)
	movl	(%r12,%rbx,4), %eax
	movl	%eax, 48(%rsp,%rbx,4)
	incq	%rbx
	cmpl	%ebx, %ecx
	jne	.LBB0_4
.LBB0_5:                                # %for.end
	movl	%esi, %eax
	movq	%r14, 4144(%rsp,%rax,8)
	movl	$0, 3120(%rsp,%rax,4)
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	movq	%rcx, 1072(%rsp,%rax,8)
	movl	$1, 48(%rsp,%rax,4)
	incl	%esi
	movl	%r8d, 32(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	4144(%rsp), %rdx
	leaq	3120(%rsp), %rcx
	leaq	48(%rsp), %r8
	leaq	1072(%rsp), %r9
	movq	%r15, %rdi
	callq	cmsCreateExtendedTransform
	movq	%rax, %r13
	movq	%r14, %rdi
	callq	cmsCloseProfile
.LBB0_6:                                # %cleanup
	movq	%r13, %rax
	addq	$6200, %rsp             # imm = 0x1838
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_cmsChain2Lab, .Lfunc_end0-_cmsChain2Lab
	.cfi_endproc

	.globl	_cmsBuildKToneCurve
	.align	16, 0x90
	.type	_cmsBuildKToneCurve,@function
_cmsBuildKToneCurve:                    # @_cmsBuildKToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %rbp
	movq	%rcx, %r13
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1129142603, %ecx       # imm = 0x434D594B
	jne	.LBB1_11
# BB#1:                                 # %lor.lhs.false
	decl	%ebx
	movq	(%rbp,%rbx,8), %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1129142603, %ecx       # imm = 0x434D594B
	jne	.LBB1_11
# BB#2:                                 # %if.end
	leaq	(%rbp,%rbx,8), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	(%rax), %rdi
	callq	cmsGetDeviceClass
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1886549106, %ecx       # imm = 0x70727472
	jne	.LBB1_11
# BB#3:                                 # %if.end.10
	movl	88(%rsp), %eax
	movq	80(%rsp), %rcx
	movl	%eax, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%r12, %r9
	callq	ComputeKToLstar
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB1_11
# BB#4:                                 # %if.end.15
	leaq	(%r13,%rbx,4), %rcx
	leaq	(%r12,%rbx,4), %r9
	movq	80(%rsp), %rax
	leaq	(%rax,%rbx,8), %rax
	movl	88(%rsp), %edx
	movl	%edx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	16(%rsp), %r8           # 8-byte Reload
	callq	ComputeKToLstar
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_5
# BB#6:                                 # %if.end.29
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	cmsJoinToneCurve
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	cmsFreeToneCurve
	movq	%rbx, %rdi
	callq	cmsFreeToneCurve
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB1_11
# BB#7:                                 # %if.end.33
	movq	%r14, %rdi
	callq	cmsIsToneCurveMonotonic
	testl	%eax, %eax
	je	.LBB1_9
# BB#8:
	movq	%r14, %rax
	jmp	.LBB1_11
.LBB1_5:                                # %if.then.28
	movq	%rbp, %rdi
	jmp	.LBB1_10
.LBB1_9:                                # %if.then.35
	movq	%r14, %rdi
.LBB1_10:                               # %cleanup
	callq	cmsFreeToneCurve
	xorl	%eax, %eax
.LBB1_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_cmsBuildKToneCurve, .Lfunc_end1-_cmsBuildKToneCurve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
.LCPI2_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ComputeKToLstar,@function
ComputeKToLstar:                        # @ComputeKToLstar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 144
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r8, %rax
	movq	%rcx, %rbp
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	144(%rsp), %rcx
	movl	152(%rsp), %edx
	movl	%edx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r9, (%rsp)
	movl	$4587556, %edx          # imm = 0x460024
	movl	$4849688, %ecx          # imm = 0x4A0018
	movl	%ebx, %esi
	movq	%rbp, %r8
	movq	%rax, %r9
	callq	_cmsChain2Lab
	movq	%rax, %r12
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB2_6
# BB#1:                                 # %if.end
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_cmsCalloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_7
# BB#2:                                 # %for.cond.preheader
	movq	%r14, 24(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	movq	%r15, 32(%rsp)          # 8-byte Spill
	je	.LBB2_5
# BB#3:                                 # %for.body.lr.ph
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movl	%ecx, %r14d
	xorl	%r15d, %r15d
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	leaq	48(%rsp), %r13
	leaq	64(%rsp), %rbp
	.align	16, 0x90
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 48(%rsp)
	movl	$0, 52(%rsp)
	movl	$0, 56(%rsp)
	movl	%r15d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm2, %xmm0
	divsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 60(%rsp)
	movl	$1, %ecx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	cmsDoTransform
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rbx,%r15,4)
	incq	%r15
	cmpl	%r15d, %r14d
	jne	.LBB2_4
.LBB2_5:                                # %if.then.16
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	cmsBuildTabulatedToneCurveFloat
	movq	%rax, %rbp
	movq	%r12, %rdi
	callq	cmsDeleteTransform
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	jmp	.LBB2_6
.LBB2_7:                                # %Error.thread
	movq	%r12, %rdi
	callq	cmsDeleteTransform
	xorl	%ebp, %ebp
.LBB2_6:                                # %cleanup
	movq	%rbp, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ComputeKToLstar, .Lfunc_end2-ComputeKToLstar
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4617315517961601024     # double 5.000000e+00
	.text
	.globl	_cmsCreateGamutCheckPipeline
	.align	16, 0x90
	.type	_cmsCreateGamutCheckPipeline,@function
_cmsCreateGamutCheckPipeline:           # @_cmsCreateGamutCheckPipeline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$6248, %rsp             # imm = 0x1868
.Ltmp45:
	.cfi_def_cfa_offset 6304
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%r8, %rbp
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	leaq	6216(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	leal	-1(%r12), %eax
	xorl	%r13d, %r13d
	cmpl	$255, %eax
	jb	.LBB3_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%eax, %eax
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %ecx
	callq	cmsSignalError
	jmp	.LBB3_20
.LBB3_2:                                # %if.end
	xorl	%esi, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB3_20
# BB#3:                                 # %if.end.5
	movq	6304(%rsp), %rdi
	callq	cmsIsMatrixShaper
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movsd	.LCPI3_0(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, 6240(%rsp)
	movq	%r12, %r13
	testl	%r13d, %r13d
	je	.LBB3_6
# BB#4:                                 # %for.body.preheader
	movl	%r13d, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rdx
	movq	%rdx, 4160(%rsp,%rcx,8)
	movl	(%r14,%rcx,4), %edx
	movl	%edx, 3136(%rsp,%rcx,4)
	movq	(%rbp,%rcx,8), %rdx
	movq	%rdx, 1088(%rsp,%rcx,8)
	movl	(%rbx,%rcx,4), %edx
	movl	%edx, 64(%rsp,%rcx,4)
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB3_5
.LBB3_6:                                # %for.end
	movl	%r13d, %eax
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%r15, 4160(%rsp,%rax,8)
	movl	$0, 3136(%rsp,%rax,4)
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	movq	%rcx, 1088(%rsp,%rax,8)
	movl	$1, 64(%rsp,%rax,4)
	movq	6304(%rsp), %r14
	movq	%r14, %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	cmsChannelsOf
	movl	%eax, %r12d
	movl	$1024, %esi             # imm = 0x400
	movl	%ebp, %edi
	callq	_cmsReasonableGridpointsByColorspace
	movl	%eax, 44(%rsp)          # 4-byte Spill
	leal	2(,%r12,8), %ebp
	incl	%r13d
	movl	%ebp, 16(%rsp)
	movl	$64, 32(%rsp)
	movl	$4849688, 24(%rsp)      # imm = 0x4A0018
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	4160(%rsp), %rdx
	leaq	3136(%rsp), %rcx
	leaq	64(%rsp), %r8
	leaq	1088(%rsp), %r9
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	cmsCreateExtendedTransform
	movq	%rax, 6216(%rsp)
	movl	$64, (%rsp)
	movl	$4849688, %edx          # imm = 0x4A0018
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movl	%ebp, %r8d
	callq	cmsCreateTransformTHR
	movq	%rax, 6224(%rsp)
	movl	$64, (%rsp)
	movl	$4849688, %r8d          # imm = 0x4A0018
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	cmsCreateTransformTHR
	movq	%rax, 6232(%rsp)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB3_13
# BB#7:                                 # %for.end
	movq	6216(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_13
# BB#8:                                 # %for.end
	movq	6224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_13
# BB#9:                                 # %if.then.51
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %rbp
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	je	.LBB3_13
# BB#10:                                # %if.then.54
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	movl	%r12d, %edx
	callq	cmsStageAllocCLut16bit
	movq	%rax, %r14
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB3_11
# BB#12:                                # %if.else.59
	leaq	6216(%rsp), %rdx
	movl	$GamutSampler, %esi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	cmsStageSampleCLut16bit
	movq	%rbp, %r13
	jmp	.LBB3_13
.LBB3_11:                               # %if.then.58
	movq	%rbp, %rdi
	callq	cmsPipelineFree
	xorl	%r13d, %r13d
.LBB3_13:                               # %if.end.64
	movq	6216(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_15
# BB#14:                                # %if.then.67
	callq	cmsDeleteTransform
.LBB3_15:                               # %if.end.69
	movq	6224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_17
# BB#16:                                # %if.then.72
	callq	cmsDeleteTransform
.LBB3_17:                               # %if.end.74
	movq	6232(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_19
# BB#18:                                # %if.then.77
	callq	cmsDeleteTransform
.LBB3_19:                               # %if.then.81
	movq	%r15, %rdi
	callq	cmsCloseProfile
.LBB3_20:                               # %cleanup
	movq	%r13, %rax
	addq	$6248, %rsp             # imm = 0x1868
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_cmsCreateGamutCheckPipeline, .Lfunc_end3-_cmsCreateGamutCheckPipeline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
.LCPI4_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	GamutSampler,@function
GamutSampler:                           # @GamutSampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 240
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rax
	movq	(%rbx), %rdi
	leaq	160(%rsp), %r15
	movl	$1, %ecx
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	cmsDoTransform
	movq	8(%rbx), %rdi
	leaq	48(%rsp), %r13
	movl	$1, %ecx
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	cmsDoTransform
	movq	16(%rbx), %rdi
	leaq	136(%rsp), %r12
	movl	$1, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	cmsDoTransform
	leaq	112(%rsp), %r13
	movl	$24, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memmove
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rbp
	movl	$1, %ecx
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	cmsDoTransform
	movq	16(%rbx), %rdi
	leaq	88(%rsp), %r14
	movl	$1, %ecx
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	cmsDoTransform
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	cmsDeltaE
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	cmsDeltaE
	movsd	(%rsp), %xmm4           # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	24(%rbx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm4, %xmm1
	jbe	.LBB4_2
# BB#1:                                 # %entry
	ucomisd	%xmm0, %xmm1
	ja	.LBB4_10
.LBB4_2:                                # %if.else
	ucomisd	%xmm4, %xmm1
	jbe	.LBB4_4
# BB#3:                                 # %if.else
	ucomisd	%xmm1, %xmm0
	ja	.LBB4_10
.LBB4_4:                                # %if.else.17
	ucomisd	%xmm1, %xmm4
	jbe	.LBB4_8
# BB#5:                                 # %if.else.17
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_8
# BB#6:                                 # %if.then.23
	subsd	%xmm1, %xmm4
	addsd	.LCPI4_0(%rip), %xmm4
	addsd	.LCPI4_1(%rip), %xmm4
	movd	%xmm4, %rax
	jmp	.LBB4_7
.LBB4_8:                                # %if.else.27
	movapd	%xmm4, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	cmpeqsd	%xmm3, %xmm0
	movapd	%xmm0, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm4, %xmm0
	orpd	%xmm3, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_10
# BB#9:                                 # %if.then.35
	subsd	%xmm1, %xmm0
	addsd	.LCPI4_0(%rip), %xmm0
	addsd	.LCPI4_1(%rip), %xmm0
	movd	%xmm0, %rax
.LBB4_7:                                # %if.end.47
	shrl	$16, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movw	%ax, (%rcx)
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.42
	movq	8(%rsp), %rax           # 8-byte Reload
	movw	$0, (%rax)
.LBB4_11:                               # %if.end.47
	movl	$1, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	GamutSampler, .Lfunc_end4-GamutSampler
	.cfi_endproc

	.globl	cmsDetectTAC
	.align	16, 0x90
	.type	cmsDetectTAC,@function
cmsDetectTAC:                           # @cmsDetectTAC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 176
.Ltmp70:
	.cfi_offset %rbx, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	cmsGetProfileContextID
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	cmsGetDeviceClass
	xorps	%xmm0, %xmm0
	cmpl	$1886549106, %eax       # imm = 0x70727472
	jne	.LBB5_7
# BB#1:                                 # %if.end
	movl	$4, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	cmsFormatterForColorspaceOfProfile
	movl	%eax, %r15d
	shrl	$3, %eax
	andl	$15, %eax
	movl	%eax, 48(%rsp)
	movl	$0, 64(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB5_2
# BB#3:                                 # %if.end.10
	movl	$320, (%rsp)            # imm = 0x140
	movl	$655386, %edx           # imm = 0xA001A
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	callq	cmsCreateTransformTHR
	movq	%rax, %rbx
	movq	%rbx, 56(%rsp)
	movq	%rbp, %rdi
	callq	cmsCloseProfile
	testq	%rbx, %rbx
	xorps	%xmm0, %xmm0
	je	.LBB5_7
# BB#4:                                 # %if.end.16
	movabsq	$317827579910, %rax     # imm = 0x4A00000006
	movq	%rax, 16(%rsp)
	movl	$74, 24(%rsp)
	leaq	16(%rsp), %rsi
	leaq	48(%rsp), %rcx
	movl	$3, %edi
	movl	$EstimateTAC, %edx
	callq	cmsSliceSpace16
	testl	%eax, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.20
	movl	$0, 64(%rsp)
.LBB5_6:                                # %if.end.22
	movq	56(%rsp), %rdi
	callq	cmsDeleteTransform
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB5_7
.LBB5_2:
	xorps	%xmm0, %xmm0
.LBB5_7:                                # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cmsDetectTAC, .Lfunc_end5-cmsDetectTAC
	.cfi_endproc

	.align	16, 0x90
	.type	EstimateTAC,@function
EstimateTAC:                            # @EstimateTAC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 96
.Ltmp77:
	.cfi_offset %rbx, -24
.Ltmp78:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	8(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$1, %ecx
	movq	%r14, %rsi
	callq	cmsDoTransform
	movl	(%rbx), %eax
	testq	%rax, %rax
	xorps	%xmm0, %xmm0
	je	.LBB6_7
# BB#1:                                 # %for.body.lr.ph
	leaq	-1(%rax), %rdx
	xorl	%ecx, %ecx
	testb	$3, %al
	je	.LBB6_2
# BB#3:                                 # %for.body.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	addss	(%rsp,%rcx,4), %xmm0
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB6_4
	jmp	.LBB6_5
.LBB6_2:
	xorps	%xmm0, %xmm0
.LBB6_5:                                # %for.body.lr.ph.split
	cmpq	$3, %rdx
	jb	.LBB6_7
	.align	16, 0x90
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addss	(%rsp,%rcx,4), %xmm0
	addss	4(%rsp,%rcx,4), %xmm0
	addss	8(%rsp,%rcx,4), %xmm0
	addss	12(%rsp,%rcx,4), %xmm0
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB6_6
.LBB6_7:                                # %for.end
	ucomiss	16(%rbx), %xmm0
	jbe	.LBB6_11
# BB#8:                                 # %if.then
	testl	%eax, %eax
	movss	%xmm0, 16(%rbx)
	je	.LBB6_11
# BB#9:                                 # %for.body.6.lr.ph
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_10:                               # %for.body.6
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movzwl	(%r14,%rcx,2), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 20(%rbx,%rcx,4)
	incl	%eax
	cmpl	(%rbx), %eax
	jb	.LBB6_10
.LBB6_11:                               # %if.end
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	EstimateTAC, .Lfunc_end6-EstimateTAC
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
.LCPI7_1:
	.quad	4631530004285489152     # double 45
.LCPI7_2:
	.quad	4644249154795601920     # double 315
.LCPI7_3:
	.quad	4645040803167600640     # double 360
.LCPI7_4:
	.quad	4638953906796232704     # double 135
.LCPI7_5:
	.quad	4642120500284227584     # double 225
.LCPI7_6:
	.quad	0                       # double 0
	.text
	.globl	cmsDesaturateLab
	.align	16, 0x90
	.type	cmsDesaturateLab,@function
cmsDesaturateLab:                       # @cmsDesaturateLab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 80
.Ltmp82:
	.cfi_offset %rbx, -24
.Ltmp83:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movsd	(%r14), %xmm5           # xmm5 = mem[0],zero
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm5, %xmm4
	jbe	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, 16(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_29
.LBB7_2:                                # %if.end
	ucomisd	.LCPI7_0(%rip), %xmm5
	jbe	.LBB7_4
# BB#3:                                 # %if.then.4
	movabsq	$4636737291354636288, %rax # imm = 0x4059000000000000
	movq	%rax, (%r14)
.LBB7_4:                                # %if.end.6
	movsd	8(%r14), %xmm5          # xmm5 = mem[0],zero
	ucomisd	%xmm5, %xmm1
	ja	.LBB7_8
# BB#5:                                 # %if.end.6
	ucomisd	%xmm0, %xmm5
	ja	.LBB7_8
# BB#6:                                 # %lor.lhs.false.11
	movsd	16(%r14), %xmm4         # xmm4 = mem[0],zero
	ucomisd	%xmm4, %xmm3
	ja	.LBB7_8
# BB#7:                                 # %lor.lhs.false.11
	movl	$1, %ebx
	ucomisd	%xmm2, %xmm4
	jbe	.LBB7_29
.LBB7_8:                                # %if.then.17
	xorpd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm5
	jne	.LBB7_12
	jp	.LBB7_12
# BB#9:                                 # %if.then.20
	ucomisd	16(%r14), %xmm4
	ja	.LBB7_11
# BB#10:                                # %select.mid
	movapd	%xmm2, %xmm3
.LBB7_11:                               # %select.end
	movsd	%xmm3, 16(%r14)
	movl	$1, %ebx
	jmp	.LBB7_29
.LBB7_12:                               # %if.end.24
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	callq	cmsLab2LCh
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	divsd	8(%r14), %xmm0
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	.LCPI7_6, %xmm1
	jb	.LBB7_14
# BB#13:                                # %if.end.24
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	ja	.LBB7_16
.LBB7_14:                               # %lor.lhs.false.30
	ucomisd	.LCPI7_2(%rip), %xmm1
	jb	.LBB7_18
# BB#15:                                # %lor.lhs.false.30
	movsd	.LCPI7_3(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jb	.LBB7_18
.LBB7_16:                               # %if.then.34
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB7_17:                               # %cleanup.thread
	movsd	%xmm1, 8(%r14)
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%r14)
	movl	$1, %ebx
.LBB7_29:                               # %return
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB7_18:                               # %if.else
	ucomisd	.LCPI7_1(%rip), %xmm1
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jb	.LBB7_21
# BB#19:                                # %if.else
	movsd	.LCPI7_4(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jbe	.LBB7_21
# BB#20:                                # %if.then.40
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%r14)
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%r14)
	movl	$1, %ebx
	jmp	.LBB7_29
.LBB7_21:                               # %if.else.44
	ucomisd	.LCPI7_4(%rip), %xmm1
	jb	.LBB7_24
# BB#22:                                # %if.else.44
	movsd	.LCPI7_5(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jbe	.LBB7_24
# BB#23:                                # %if.then.48
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB7_17
.LBB7_24:                               # %if.else.52
	ucomisd	.LCPI7_5(%rip), %xmm1
	jb	.LBB7_28
# BB#25:                                # %if.else.52
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jbe	.LBB7_28
# BB#26:                                # %if.then.56
	movsd	%xmm3, 16(%r14)
	divsd	%xmm0, %xmm3
	movsd	%xmm3, 8(%r14)
	movl	$1, %ebx
	jmp	.LBB7_29
.LBB7_28:                               # %if.else.60
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB7_29
.Lfunc_end7:
	.size	cmsDesaturateLab, .Lfunc_end7-cmsDesaturateLab
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Wrong position of PCS. 1..255 expected, %d found."
	.size	.L.str, 50

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid angle"
	.size	.L.str.1, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
