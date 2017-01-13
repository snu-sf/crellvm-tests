	.text
	.file	"cmslut.bc"
	.globl	_cmsStageAllocPlaceholder
	.align	16, 0x90
	.type	_cmsStageAllocPlaceholder,@function
_cmsStageAllocPlaceholder:              # @_cmsStageAllocPlaceholder
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$64, %esi
	callq	_cmsMallocZero
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	72(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	%rbx, (%rax)
	movl	%ebp, 8(%rax)
	movl	%ebp, 12(%rax)
	movl	%r13d, 16(%rax)
	movl	%r12d, 20(%rax)
	movq	%r15, 24(%rax)
	movq	%r14, 32(%rax)
	movq	%rdx, 40(%rax)
	movq	%rcx, 48(%rax)
	movq	%rax, %rcx
.LBB0_2:                                # %cleanup
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_cmsStageAllocPlaceholder, .Lfunc_end0-_cmsStageAllocPlaceholder
	.cfi_endproc

	.globl	cmsStageAllocIdentity
	.align	16, 0x90
	.type	cmsStageAllocIdentity,@function
cmsStageAllocIdentity:                  # @cmsStageAllocIdentity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$64, %esi
	callq	_cmsMallocZero
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.end.i
	movq	%rbx, (%rax)
	movl	$1768189472, 8(%rax)    # imm = 0x69646E20
	movl	$1768189472, 12(%rax)   # imm = 0x69646E20
	movl	%ebp, 16(%rax)
	movl	%ebp, 20(%rax)
	movq	$EvaluateIdentity, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	%rax, %rcx
.LBB1_2:                                # %_cmsStageAllocPlaceholder.exit
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmsStageAllocIdentity, .Lfunc_end1-cmsStageAllocIdentity
	.cfi_endproc

	.align	16, 0x90
	.type	EvaluateIdentity,@function
EvaluateIdentity:                       # @EvaluateIdentity
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	16(%rdx), %edx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memmove                 # TAILCALL
.Lfunc_end2:
	.size	EvaluateIdentity, .Lfunc_end2-EvaluateIdentity
	.cfi_endproc

	.globl	cmsPipelineCheckAndRetreiveStages
	.align	16, 0x90
	.type	cmsPipelineCheckAndRetreiveStages,@function
cmsPipelineCheckAndRetreiveStages:      # @cmsPipelineCheckAndRetreiveStages
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 80
	testb	%al, %al
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	%xmm0, -80(%rsp)
	movaps	%xmm1, -64(%rsp)
	movaps	%xmm2, -48(%rsp)
	movaps	%xmm3, -32(%rsp)
	movaps	%xmm4, -16(%rsp)
	movaps	%xmm5, (%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, 32(%rsp)
.LBB3_2:                                # %entry
	movq	%r9, -88(%rsp)
	movq	%r8, -96(%rsp)
	movq	%rcx, -104(%rsp)
	movq	%rdx, -112(%rsp)
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	movl	$0, %edx
	je	.LBB3_5
# BB#3:
	xorl	%edx, %edx
	.align	16, 0x90
.LBB3_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%edx
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB3_4
.LBB3_5:                                # %cmsPipelineStageCount.exit
	cmpl	%esi, %edx
	jne	.LBB3_22
# BB#6:                                 # %if.end
	leaq	-128(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 56(%rsp)
	movl	$48, 52(%rsp)
	movl	$16, 48(%rsp)
	testl	%esi, %esi
	je	.LBB3_21
# BB#7:                                 # %for.body.lr.ph
	xorl	%eax, %eax
	movl	48(%rsp), %r8d
	movq	%rdi, %rdx
	.align	16, 0x90
.LBB3_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdx
	cmpl	$40, %r8d
	ja	.LBB3_14
# BB#9:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB3_8 Depth=1
	movslq	%r8d, %r9
	addq	64(%rsp), %r9
	addl	$8, %r8d
	movl	%r8d, 48(%rsp)
	jmp	.LBB3_15
	.align	16, 0x90
.LBB3_14:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	56(%rsp), %r9
	leaq	8(%r9), %rcx
	movq	%rcx, 56(%rsp)
.LBB3_15:                               # %vaarg.end
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	8(%rdx), %ecx
	cmpl	(%r9), %ecx
	jne	.LBB3_16
# BB#10:                                # %if.end.9
                                        #   in Loop: Header=BB3_8 Depth=1
	addq	$56, %rdx
	incl	%eax
	cmpl	%esi, %eax
	jb	.LBB3_8
# BB#11:                                # %for.cond.11.preheader
	testl	%esi, %esi
	je	.LBB3_21
	.align	16, 0x90
.LBB3_12:                               # %for.body.13
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rdi
	movslq	48(%rsp), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_17
# BB#13:                                # %vaarg.in_reg.18
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	%rcx, %rax
	addq	64(%rsp), %rax
	leal	8(%rcx), %ecx
	movl	%ecx, 48(%rsp)
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_17:                               # %vaarg.in_mem.20
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	56(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
.LBB3_18:                               # %vaarg.end.24
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_20
# BB#19:                                # %if.then.27
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	%rdi, (%rax)
.LBB3_20:                               # %if.end.28
                                        #   in Loop: Header=BB3_12 Depth=1
	addq	$56, %rdi
	decl	%esi
	jne	.LBB3_12
.LBB3_21:                               # %for.end.32
	movl	$1, %eax
.LBB3_22:                               # %cleanup
	addq	$72, %rsp
	retq
.LBB3_16:                               # %if.then.6
	xorl	%eax, %eax
	addq	$72, %rsp
	retq
.Lfunc_end3:
	.size	cmsPipelineCheckAndRetreiveStages, .Lfunc_end3-cmsPipelineCheckAndRetreiveStages
	.cfi_endproc

	.globl	cmsPipelineStageCount
	.align	16, 0x90
	.type	cmsPipelineStageCount,@function
cmsPipelineStageCount:                  # @cmsPipelineStageCount
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %for.body
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	%eax
	movq	56(%rcx), %rcx
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	jne	.LBB4_1
# BB#3:                                 # %for.end
	retq
.Lfunc_end4:
	.size	cmsPipelineStageCount, .Lfunc_end4-cmsPipelineStageCount
	.cfi_endproc

	.globl	_cmsStageGetPtrToCurveSet
	.align	16, 0x90
	.type	_cmsStageGetPtrToCurveSet,@function
_cmsStageGetPtrToCurveSet:              # @_cmsStageGetPtrToCurveSet
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rax
	movq	8(%rax), %rax
	retq
.Lfunc_end5:
	.size	_cmsStageGetPtrToCurveSet, .Lfunc_end5-_cmsStageGetPtrToCurveSet
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	cmsStageAllocToneCurves
	.align	16, 0x90
	.type	cmsStageAllocToneCurves,@function
cmsStageAllocToneCurves:                # @cmsStageAllocToneCurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 64
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r15
	movl	$64, %esi
	callq	_cmsMallocZero
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB6_13
# BB#1:                                 # %_cmsStageAllocPlaceholder.exit
	movq	%rax, %r12
	movq	%r15, (%r12)
	movl	$1668707188, 8(%r12)    # imm = 0x63767374
	movl	$1668707188, 12(%r12)   # imm = 0x63767374
	movl	%ebp, 16(%r12)
	movl	%ebp, 20(%r12)
	movq	$EvaluateCurves, 24(%r12)
	movq	$CurveSetDup, 32(%r12)
	movq	$CurveSetElemTypeFree, 40(%r12)
	movq	$0, 48(%r12)
	movl	$16, %esi
	movq	%r15, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB6_10
# BB#2:                                 # %if.end.4
	movq	%rbx, 48(%r12)
	movl	%ebp, (%rbx)
	movl	$8, %edx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB6_10
# BB#3:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	je	.LBB6_13
# BB#4:                                 # %for.body.lr.ph
	movl	%ebp, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB6_7
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	(%r14,%rbp,8), %rdi
	callq	cmsDupToneCurve
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_7:                                # %if.then.12
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	%r15, %rdi
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	cmsBuildGamma
.LBB6_9:                                # %if.end.21
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	8(%rbx), %rax
	cmpq	$0, (%rax,%rbp,8)
	je	.LBB6_10
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB6_6 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB6_6
	jmp	.LBB6_13
.LBB6_10:                               # %if.then.26
	movq	40(%r12), %rax
	testq	%rax, %rax
	je	.LBB6_12
# BB#11:                                # %if.then.i.38
	movq	%r12, %rdi
	callq	*%rax
.LBB6_12:                               # %cmsStageFree.exit41
	movq	(%r12), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%r12d, %r12d
.LBB6_13:                               # %cleanup
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cmsStageAllocToneCurves, .Lfunc_end6-cmsStageAllocToneCurves
	.cfi_endproc

	.align	16, 0x90
	.type	EvaluateCurves,@function
EvaluateCurves:                         # @EvaluateCurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -48
.Ltmp38:
	.cfi_offset %r12, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%rdx, %rdx
	je	.LBB7_8
# BB#1:                                 # %cond.end
	movq	48(%rdx), %r12
	testq	%r12, %r12
	je	.LBB7_7
# BB#2:                                 # %if.end
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_7
# BB#3:                                 # %for.cond.preheader
	cmpl	$0, (%r12)
	je	.LBB7_7
# BB#4:                                 # %for.body.preheader
	movq	(%rax), %rdi
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	cmsEvalToneCurveFloat
	movss	%xmm0, (%r14)
	cmpl	$2, (%r12)
	jb	.LBB7_7
# BB#5:
	movl	$1, %ebp
	.align	16, 0x90
.LBB7_6:                                # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rax
	movl	%ebp, %ebx
	movq	(%rax,%rbx,8), %rdi
	movss	(%r15,%rbx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	callq	cmsEvalToneCurveFloat
	movss	%xmm0, (%r14,%rbx,4)
	incl	%ebp
	cmpl	(%r12), %ebp
	jb	.LBB7_6
.LBB7_7:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_8:                                # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$174, %edx
	movl	$.L__PRETTY_FUNCTION__.EvaluateCurves, %ecx
	callq	__assert_fail
.Lfunc_end7:
	.size	EvaluateCurves, .Lfunc_end7-EvaluateCurves
	.cfi_endproc

	.align	16, 0x90
	.type	CurveSetDup,@function
CurveSetDup:                            # @CurveSetDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -48
.Ltmp48:
	.cfi_offset %r12, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movq	48(%r14), %r15
	movl	$16, %esi
	callq	_cmsMallocZero
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB8_18
# BB#1:                                 # %if.end
	movl	(%r15), %esi
	movl	%esi, (%r12)
	movq	(%r14), %rdi
	movl	$8, %edx
	callq	_cmsCalloc
	movq	%rax, 8(%r12)
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB8_9
# BB#2:                                 # %for.cond.preheader
	cmpl	$0, (%r12)
	je	.LBB8_3
# BB#6:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	movq	8(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	cmsDupToneCurve
	movq	8(%r12), %rcx
	movq	%rax, (%rcx,%rbx,8)
	movq	8(%r12), %rax
	cmpq	$0, (%rax,%rbx,8)
	je	.LBB8_8
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB8_7 Depth=1
	incl	%ebp
	cmpl	(%r12), %ebp
	jb	.LBB8_7
# BB#5:
	movq	%r12, %rax
	jmp	.LBB8_18
.LBB8_3:
	movq	%r12, %rax
	jmp	.LBB8_18
.LBB8_8:                                # %Error.loopexit
	movq	%rax, %rsi
.LBB8_9:                                # %Error
	testq	%rax, %rax
	je	.LBB8_17
# BB#10:                                # %for.cond.26.preheader
	movl	(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB8_17
# BB#11:
	xorl	%ebp, %ebp
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_15:                               # %for.inc.38.for.body.29_crit_edge
                                        #   in Loop: Header=BB8_12 Depth=1
	movq	8(%r12), %rax
.LBB8_12:                               # %for.body.29
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edx
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB8_14
# BB#13:                                # %if.then.33
                                        #   in Loop: Header=BB8_12 Depth=1
	callq	cmsFreeToneCurve
	movl	(%r12), %ecx
.LBB8_14:                               # %for.inc.38
                                        #   in Loop: Header=BB8_12 Depth=1
	incl	%ebp
	cmpl	%ecx, %ebp
	jb	.LBB8_15
# BB#16:                                # %for.cond.26.if.end.41.loopexit_crit_edge
	movq	8(%r12), %rsi
.LBB8_17:                               # %if.end.41
	movq	(%r14), %rdi
	callq	_cmsFree
	movq	(%r14), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB8_18:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	CurveSetDup, .Lfunc_end8-CurveSetDup
	.cfi_endproc

	.align	16, 0x90
	.type	CurveSetElemTypeFree,@function
CurveSetElemTypeFree:                   # @CurveSetElemTypeFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -32
.Ltmp56:
	.cfi_offset %r14, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB9_12
# BB#1:                                 # %cond.end
	movq	48(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB9_11
# BB#2:                                 # %if.end
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB9_10
# BB#3:                                 # %for.cond.preheader
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB9_10
# BB#4:
	xorl	%ebp, %ebp
	jmp	.LBB9_5
	.align	16, 0x90
.LBB9_8:                                # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	8(%rbx), %rsi
.LBB9_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	movq	(%rsi,%rcx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB9_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB9_5 Depth=1
	callq	cmsFreeToneCurve
	movl	(%rbx), %eax
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB9_8
# BB#9:                                 # %for.cond.if.end.13.loopexit_crit_edge
	movq	8(%rbx), %rsi
.LBB9_10:                               # %if.end.13
	movq	(%r14), %rdi
	callq	_cmsFree
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_cmsFree                # TAILCALL
.LBB9_11:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_12:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$192, %edx
	movl	$.L__PRETTY_FUNCTION__.CurveSetElemTypeFree, %ecx
	callq	__assert_fail
.Lfunc_end9:
	.size	CurveSetElemTypeFree, .Lfunc_end9-CurveSetElemTypeFree
	.cfi_endproc

	.globl	cmsStageFree
	.align	16, 0x90
	.type	cmsStageFree,@function
cmsStageFree:                           # @cmsStageFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rax
.LBB10_2:                               # %if.end
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	_cmsFree                # TAILCALL
.Lfunc_end10:
	.size	cmsStageFree, .Lfunc_end10-cmsStageFree
	.cfi_endproc

	.globl	_cmsStageAllocIdentityCurves
	.align	16, 0x90
	.type	_cmsStageAllocIdentityCurves,@function
_cmsStageAllocIdentityCurves:           # @_cmsStageAllocIdentityCurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbx, -16
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	cmsStageAllocToneCurves
	testq	%rax, %rax
	je	.LBB11_2
# BB#1:                                 # %if.end
	movl	$1768189472, 12(%rax)   # imm = 0x69646E20
	movq	%rax, %rbx
.LBB11_2:                               # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end11:
	.size	_cmsStageAllocIdentityCurves, .Lfunc_end11-_cmsStageAllocIdentityCurves
	.cfi_endproc

	.globl	cmsStageAllocMatrix
	.align	16, 0x90
	.type	cmsStageAllocMatrix,@function
cmsStageAllocMatrix:                    # @cmsStageAllocMatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 64
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %r12
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %r13
	movl	%ebx, %ebp
	imull	%r14d, %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB12_24
# BB#1:                                 # %if.end
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %ebp
	jae	.LBB12_24
# BB#2:                                 # %if.end.3
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%r14d
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %ebp
	jae	.LBB12_24
# BB#3:                                 # %if.end.7
	xorl	%eax, %eax
	cmpl	%r14d, %ebp
	jb	.LBB12_24
# BB#4:                                 # %if.end.7
	cmpl	%ebx, %ebp
	jb	.LBB12_24
# BB#5:                                 # %if.end.11
	movl	$64, %esi
	movq	%r13, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB12_24
# BB#6:                                 # %_cmsStageAllocPlaceholder.exit
	movq	%r13, (%rcx)
	movl	$1835103334, 8(%rcx)    # imm = 0x6D617466
	movl	$1835103334, 12(%rcx)   # imm = 0x6D617466
	movl	%ebx, 16(%rcx)
	movl	%r14d, 20(%rcx)
	movq	$EvaluateMatrix, 24(%rcx)
	movq	$MatrixElemDup, 32(%rcx)
	movq	$MatrixElemTypeFree, 40(%rcx)
	movq	$0, 48(%rcx)
	movl	$16, %esi
	movq	%r13, %rdi
	movq	%rcx, %r14
	callq	_cmsMallocZero
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB12_24
# BB#7:                                 # %if.end.18
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	$8, %edx
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%rcx, %r14
	callq	_cmsCalloc
	movq	%r14, %r8
	movq	%rax, (%r8)
	testq	%rax, %rax
	je	.LBB12_25
# BB#8:                                 # %for.body.preheader
	leal	-1(%rbp), %ecx
	xorl	%edx, %edx
	testb	$3, %bpl
	je	.LBB12_11
# BB#9:                                 # %for.body.prol.preheader
	movl	%ebp, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB12_10:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rdx,8), %rdi
	movq	%rdi, (%rax,%rdx,8)
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB12_10
.LBB12_11:                              # %for.body.preheader.split
	cmpl	$3, %ecx
	jb	.LBB12_14
# BB#12:                                # %for.body.preheader.split.split
	subl	%edx, %ebp
	leaq	24(%rax,%rdx,8), %rax
	leaq	24(%r12,%rdx,8), %rcx
	.align	16, 0x90
.LBB12_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx), %rdx
	movq	%rdx, -24(%rax)
	movq	-16(%rcx), %rdx
	movq	%rdx, -16(%rax)
	movq	-8(%rcx), %rdx
	movq	%rdx, -8(%rax)
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	addq	$32, %rax
	addq	$32, %rcx
	addl	$-4, %ebp
	jne	.LBB12_13
.LBB12_14:                              # %for.end
	testq	%r15, %r15
	je	.LBB12_23
# BB#15:                                # %if.then.29
	movl	$8, %edx
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r8, %rbp
	callq	_cmsCalloc
	movq	%rbp, %r8
	movq	%rax, 8(%r8)
	testq	%rax, %rax
	je	.LBB12_25
# BB#16:                                # %for.cond.36.preheader
	testl	%ebx, %ebx
	je	.LBB12_23
# BB#17:                                # %for.body.38.preheader
	leal	-1(%rbx), %ecx
	xorl	%edx, %edx
	testb	$3, %bl
	je	.LBB12_20
# BB#18:                                # %for.body.38.prol.preheader
	movl	%ebx, %esi
	andl	$3, %esi
	xorl	%edx, %edx
.LBB12_19:                              # %for.body.38.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rdx,8), %rdi
	movq	%rdi, (%rax,%rdx,8)
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB12_19
.LBB12_20:                              # %for.body.38.preheader.split
	cmpl	$3, %ecx
	jb	.LBB12_23
# BB#21:                                # %for.body.38.preheader.split.split
	subl	%edx, %ebx
	leaq	24(%rax,%rdx,8), %rax
	leaq	24(%r15,%rdx,8), %rcx
.LBB12_22:                              # %for.body.38
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx), %rdx
	movq	%rdx, -24(%rax)
	movq	-16(%rcx), %rdx
	movq	%rdx, -16(%rax)
	movq	-8(%rcx), %rdx
	movq	%rdx, -8(%rax)
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	addq	$32, %rax
	addq	$32, %rcx
	addl	$-4, %ebx
	jne	.LBB12_22
.LBB12_23:                              # %if.end.47
	movq	(%rsp), %r14            # 8-byte Reload
	movq	%r8, 48(%r14)
	movq	%r14, %rax
	jmp	.LBB12_24
.LBB12_25:                              # %if.then.22
	movq	(%rsp), %r14            # 8-byte Reload
	movq	48(%r14), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB12_24
# BB#26:                                # %if.end.i.42
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB12_28
# BB#27:                                # %if.then.2.i
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB12_28:                              # %if.end.4.i
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB12_30
# BB#29:                                # %if.then.6.i
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB12_30:                              # %if.end.9.i
	movq	(%r14), %rdi
	movq	48(%r14), %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB12_24:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cmsStageAllocMatrix, .Lfunc_end12-cmsStageAllocMatrix
	.cfi_endproc

	.align	16, 0x90
	.type	EvaluateMatrix,@function
EvaluateMatrix:                         # @EvaluateMatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 48
.Ltmp80:
	.cfi_offset %rbx, -48
.Ltmp81:
	.cfi_offset %r12, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movl	20(%rdx), %r10d
	testq	%r10, %r10
	je	.LBB13_11
# BB#1:                                 # %for.cond.2.preheader.lr.ph
	movq	48(%rdx), %r8
	movl	16(%rdx), %r12d
	movq	8(%r8), %r11
	movl	%r12d, %r9d
	andl	$1, %r9d
	xorl	%r14d, %r14d
	xorpd	%xmm0, %xmm0
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB13_2:                               # %for.cond.2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	testl	%r12d, %r12d
	xorpd	%xmm1, %xmm1
	je	.LBB13_8
# BB#3:                                 # %for.body.4.lr.ph
                                        #   in Loop: Header=BB13_2 Depth=1
	testl	%r9d, %r9d
	movq	(%r8), %rbx
	xorpd	%xmm1, %xmm1
	movl	$0, %eax
	je	.LBB13_5
# BB#4:                                 # %for.body.4.prol
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	%r15d, %eax
	imull	%r12d, %eax
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	%eax, %eax
	mulsd	(%rbx,%rax,8), %xmm1
	addsd	%xmm0, %xmm1
	movl	$1, %eax
.LBB13_5:                               # %for.body.4.lr.ph.split
                                        #   in Loop: Header=BB13_2 Depth=1
	cmpl	$1, %r12d
	je	.LBB13_8
# BB#6:                                 # %for.body.4.lr.ph.split.split
                                        #   in Loop: Header=BB13_2 Depth=1
	leal	(%r14,%rax), %ebp
	leal	1(%r14,%rax), %ecx
	.align	16, 0x90
.LBB13_7:                               # %for.body.4
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdi,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movl	%ebp, %edx
	mulsd	(%rbx,%rdx,8), %xmm2
	addsd	%xmm1, %xmm2
	movss	4(%rdi,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	%ecx, %edx
	mulsd	(%rbx,%rdx,8), %xmm1
	addsd	%xmm2, %xmm1
	addq	$2, %rax
	addl	$2, %ebp
	addl	$2, %ecx
	cmpq	%r12, %rax
	jb	.LBB13_7
.LBB13_8:                               # %for.end
                                        #   in Loop: Header=BB13_2 Depth=1
	testq	%r11, %r11
	je	.LBB13_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB13_2 Depth=1
	addsd	(%r11,%r15,8), %xmm1
.LBB13_10:                              # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rsi,%r15,4)
	incq	%r15
	addl	%r12d, %r14d
	cmpq	%r10, %r15
	jb	.LBB13_2
.LBB13_11:                              # %for.end.21
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	EvaluateMatrix, .Lfunc_end13-EvaluateMatrix
	.cfi_endproc

	.align	16, 0x90
	.type	MatrixElemDup,@function
MatrixElemDup:                          # @MatrixElemDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 32
.Ltmp88:
	.cfi_offset %rbx, -32
.Ltmp89:
	.cfi_offset %r14, -24
.Ltmp90:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movq	48(%rbx), %r15
	movl	$16, %esi
	callq	_cmsMallocZero
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB14_4
# BB#1:                                 # %if.end
	movl	16(%rbx), %edx
	movq	(%rbx), %rdi
	movq	(%r15), %rsi
	imull	20(%rbx), %edx
	shll	$3, %edx
	callq	_cmsDupMem
	movq	%rax, (%r14)
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB14_3
# BB#2:                                 # %if.then.7
	movq	(%rbx), %rdi
	movl	20(%rbx), %edx
	shll	$3, %edx
	callq	_cmsDupMem
	movq	%rax, 8(%r14)
.LBB14_3:                               # %cleanup
	movq	%r14, %rax
.LBB14_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	MatrixElemDup, .Lfunc_end14-MatrixElemDup
	.cfi_endproc

	.align	16, 0x90
	.type	MatrixElemTypeFree,@function
MatrixElemTypeFree:                     # @MatrixElemTypeFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 32
.Ltmp94:
	.cfi_offset %rbx, -24
.Ltmp95:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	48(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB15_6
# BB#1:                                 # %if.end
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_3
# BB#2:                                 # %if.then.2
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB15_3:                               # %if.end.4
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_5
# BB#4:                                 # %if.then.6
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB15_5:                               # %if.end.9
	movq	(%r14), %rdi
	movq	48(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsFree                # TAILCALL
.LBB15_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	MatrixElemTypeFree, .Lfunc_end15-MatrixElemTypeFree
	.cfi_endproc

	.globl	cmsStageAllocCLut16bitGranular
	.align	16, 0x90
	.type	cmsStageAllocCLut16bitGranular,@function
cmsStageAllocCLut16bitGranular:         # @cmsStageAllocCLut16bitGranular
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 80
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	testq	%r13, %r13
	je	.LBB16_35
# BB#1:                                 # %cond.end
	cmpl	$9, %r12d
	jb	.LBB16_3
# BB#2:                                 # %if.then
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.2, %edx
	movl	$8, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r12d, %ecx
	callq	cmsSignalError
	jmp	.LBB16_34
.LBB16_3:                               # %if.end
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	$64, %esi
	movq	%rbx, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r14
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB16_34
# BB#4:                                 # %_cmsStageAllocPlaceholder.exit
	movq	%rbx, (%r14)
	movl	$1668052340, 8(%r14)    # imm = 0x636C7574
	movl	$1668052340, 12(%r14)   # imm = 0x636C7574
	movl	%r12d, 16(%r14)
	movl	%r15d, 20(%r14)
	movq	$EvaluateCLUTfloatIn16, 24(%r14)
	movq	$CLUTElemDup, 32(%r14)
	movq	$CLutElemTypeFree, 40(%r14)
	movq	$0, 48(%r14)
	movl	$24, %esi
	movq	%rbx, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB16_31
# BB#5:                                 # %for.cond.preheader.i
	movq	%rbx, (%rsp)            # 8-byte Spill
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%rbp, 48(%r14)
	movl	%r12d, %ecx
	movl	$1, %esi
	.align	16, 0x90
.LBB16_6:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB16_7
# BB#8:                                 # %for.body.i
                                        #   in Loop: Header=BB16_6 Depth=1
	leal	-1(%rcx), %eax
	movl	(%r13,%rax,4), %edi
	xorl	%r15d, %r15d
	testl	%edi, %edi
	je	.LBB16_10
# BB#9:                                 # %if.end.i.37
                                        #   in Loop: Header=BB16_6 Depth=1
	imull	%edi, %esi
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%edi
	decq	%rcx
	cmpl	%eax, %esi
	jbe	.LBB16_6
	jmp	.LBB16_10
.LBB16_7:
	movl	%esi, %r15d
.LBB16_10:                              # %CubeSize.exit
	imull	12(%rsp), %r15d         # 4-byte Folded Reload
	movl	%r15d, 16(%rbp)
	movl	$0, 20(%rbp)
	testl	%r15d, %r15d
	je	.LBB16_31
# BB#11:                                # %if.end.12
	movl	$2, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
	movl	%r15d, %esi
	callq	_cmsCalloc
	movq	%rax, (%rbp)
	testq	%rax, %rax
	je	.LBB16_31
# BB#12:                                # %if.end.18
	movq	16(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB16_30
# BB#13:                                # %for.body.preheader
	movq	%rbp, %r10
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r15), %edx
	leaq	1(%rdx), %rcx
	xorl	%edi, %edi
	movq	%rcx, %rsi
	andq	%r8, %rsi
	je	.LBB16_22
# BB#14:                                # %vector.memcheck
	leaq	(%rbx,%rdx,2), %rbp
	xorl	%edi, %edi
	cmpq	%rbp, %rax
	ja	.LBB16_16
# BB#15:                                # %vector.memcheck
	leaq	(%rax,%rdx,2), %rbp
	cmpq	%rbp, %rbx
	jbe	.LBB16_22
.LBB16_16:                              # %vector.body.preheader
	leaq	1(%rdx), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rbp
	shrq	$4, %rbp
	xorl	%r9d, %r9d
	btq	$4, %rdi
	jb	.LBB16_18
# BB#17:                                # %vector.body.prol
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movl	$16, %r9d
.LBB16_18:                              # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB16_21
# BB#19:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%r9, %rdx
	leaq	48(%rbx,%r9,2), %rdi
	leaq	48(%rax,%r9,2), %rbp
	.align	16, 0x90
.LBB16_20:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbp)
	movups	%xmm1, -32(%rbp)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rbp)
	movups	%xmm1, (%rbp)
	addq	$64, %rdi
	addq	$64, %rbp
	addq	$-32, %rdx
	jne	.LBB16_20
.LBB16_21:
	movq	%rsi, %rdi
.LBB16_22:                              # %middle.block
	cmpq	%rdi, %rcx
	movq	%r10, %rbp
	je	.LBB16_30
# BB#23:                                # %for.body.preheader67
	movq	%rbp, %r8
	leal	1(%r15), %ecx
	movl	%edi, %esi
	orl	$1, %esi
	movl	%ecx, %ebp
	subl	%esi, %ebp
	movl	%r15d, %edx
	subl	%esi, %edx
	testb	$3, %bpl
	je	.LBB16_24
# BB#25:                                # %for.body.prol.preheader
	leal	1(%rdi), %esi
	subl	%esi, %ecx
	andl	$3, %ecx
	negl	%ecx
	movq	%r8, %rbp
	.align	16, 0x90
.LBB16_26:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rbx,%rdi,2), %si
	movw	%si, (%rax,%rdi,2)
	incq	%rdi
	incl	%ecx
	jne	.LBB16_26
	jmp	.LBB16_27
.LBB16_24:
	movq	%r8, %rbp
.LBB16_27:                              # %for.body.preheader67.split
	cmpl	$3, %edx
	jb	.LBB16_30
# BB#28:                                # %for.body.preheader67.split.split
	subl	%edi, %r15d
	leaq	6(%rax,%rdi,2), %rcx
	leaq	6(%rbx,%rdi,2), %rdx
	.align	16, 0x90
.LBB16_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rdx), %si
	movw	%si, -6(%rcx)
	movw	-4(%rdx), %si
	movw	%si, -4(%rcx)
	movw	-2(%rdx), %si
	movw	%si, -2(%rcx)
	movw	(%rdx), %si
	movw	%si, (%rcx)
	addq	$8, %rcx
	addq	$8, %rdx
	addl	$-4, %r15d
	jne	.LBB16_29
.LBB16_30:                              # %if.end.26
	xorl	%r9d, %r9d
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	movq	%rax, %r8
	callq	_cmsComputeInterpParamsEx
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	movq	%r14, %rbp
	jne	.LBB16_34
.LBB16_31:                              # %if.then.32
	movq	40(%r14), %rax
	testq	%rax, %rax
	je	.LBB16_33
# BB#32:                                # %if.then.i.53
	movq	%r14, %rdi
	callq	*%rax
.LBB16_33:                              # %cmsStageFree.exit56
	movq	(%r14), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%ebp, %ebp
.LBB16_34:                              # %cleanup
	movq	%rbp, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_35:                              # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$560, %edx              # imm = 0x230
	movl	$.L__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular, %ecx
	callq	__assert_fail
.Lfunc_end16:
	.size	cmsStageAllocCLut16bitGranular, .Lfunc_end16-cmsStageAllocCLut16bitGranular
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
.LCPI17_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI17_2:
	.quad	-4548635898522107904    # double -3.276700e+04
	.quad	-4548635898522107904    # double -3.276700e+04
.LCPI17_3:
	.quad	4771563805199040512     # double 1.030792e+11
	.quad	4771563805199040512     # double 1.030792e+11
.LCPI17_4:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI17_5:
	.quad	32767                   # 0x7fff
	.quad	32767                   # 0x7fff
.LCPI17_6:
	.quad	65535                   # 0xffff
	.quad	65535                   # 0xffff
.LCPI17_11:
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_7:
	.quad	4679239875398991872     # double 65535
.LCPI17_8:
	.quad	4602678819172646912     # double 0.5
.LCPI17_9:
	.quad	-4548635898522107904    # double -32767
.LCPI17_10:
	.quad	4771563805199040512     # double 103079215104
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI17_12:
	.long	1199570688              # float 65535
	.text
	.align	16, 0x90
	.type	EvaluateCLUTfloatIn16,@function
EvaluateCLUTfloatIn16:                  # @EvaluateCLUTfloatIn16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 32
	subq	$512, %rsp              # imm = 0x200
.Ltmp112:
	.cfi_def_cfa_offset 544
.Ltmp113:
	.cfi_offset %rbx, -32
.Ltmp114:
	.cfi_offset %r14, -24
.Ltmp115:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	16(%rbx), %eax
	cmpl	$129, %eax
	jae	.LBB17_26
# BB#1:                                 # %cond.end
	cmpl	$129, 20(%rbx)
	jae	.LBB17_27
# BB#2:                                 # %cond.end.5
	movq	48(%rbx), %r8
	movabsq	$8589934584, %r15       # imm = 0x1FFFFFFF8
	testl	%eax, %eax
	je	.LBB17_14
# BB#3:                                 # %for.body.i.preheader
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r9
	leaq	6(%r15), %r10
	xorl	%ecx, %ecx
	andq	%r9, %r10
	je	.LBB17_7
# BB#4:                                 # %vector.body.preheader
	incq	%rdx
	movabsq	$8589934590, %rcx       # imm = 0x1FFFFFFFE
	andq	%rdx, %rcx
	leaq	256(%rsp), %rdx
	movapd	.LCPI17_0(%rip), %xmm3  # xmm3 = [6.553500e+04,6.553500e+04]
	movapd	.LCPI17_1(%rip), %xmm8  # xmm8 = [5.000000e-01,5.000000e-01]
	xorpd	%xmm9, %xmm9
	movapd	.LCPI17_2(%rip), %xmm10 # xmm10 = [-3.276700e+04,-3.276700e+04]
	movapd	.LCPI17_3(%rip), %xmm4  # xmm4 = [1.030792e+11,1.030792e+11]
	movapd	.LCPI17_4(%rip), %xmm5  # xmm5 = [4294967295,4294967295]
	movdqa	.LCPI17_5(%rip), %xmm6  # xmm6 = [32767,32767]
	movapd	.LCPI17_6(%rip), %xmm7  # xmm7 = [65535,65535]
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB17_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	(%rsi), %xmm1
	mulpd	%xmm3, %xmm1
	addpd	%xmm8, %xmm1
	movapd	%xmm1, %xmm2
	cmpnlepd	%xmm9, %xmm2
	movapd	%xmm3, %xmm0
	cmplepd	%xmm1, %xmm0
	addpd	%xmm10, %xmm1
	addpd	%xmm4, %xmm1
	andpd	%xmm5, %xmm1
	psrlq	$16, %xmm1
	paddq	%xmm6, %xmm1
	pand	%xmm2, %xmm1
	andpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	andnpd	%xmm1, %xmm2
	andpd	%xmm7, %xmm0
	orpd	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	movd	%xmm0, (%rdx)
	addq	$8, %rsi
	addq	$4, %rdx
	addq	$-2, %rcx
	jne	.LBB17_5
# BB#6:
	movq	%r10, %rcx
.LBB17_7:                               # %middle.block
	cmpq	%rcx, %r9
	je	.LBB17_14
# BB#8:                                 # %for.body.i.preheader48
	leaq	256(%rsp,%rcx,2), %rdx
	subl	%ecx, %eax
	leaq	(%rdi,%rcx,4), %rcx
	movsd	.LCPI17_7(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI17_8(%rip), %xmm1  # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	movsd	.LCPI17_9(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI17_10(%rip), %xmm4 # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB17_9:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	ucomisd	%xmm5, %xmm2
	jae	.LBB17_10
# BB#11:                                # %if.end.i.i
                                        #   in Loop: Header=BB17_9 Depth=1
	movw	$-1, %si
	ucomisd	.LCPI17_7(%rip), %xmm5
	jae	.LBB17_13
# BB#12:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB17_9 Depth=1
	addsd	%xmm3, %xmm5
	addsd	%xmm4, %xmm5
	movd	%xmm5, %rsi
	shrl	$16, %esi
	addl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB17_13
	.align	16, 0x90
.LBB17_10:                              #   in Loop: Header=BB17_9 Depth=1
	xorl	%esi, %esi
.LBB17_13:                              # %_cmsQuickSaturateWord.exit.i
                                        #   in Loop: Header=BB17_9 Depth=1
	movw	%si, (%rdx)
	addq	$2, %rdx
	addq	$4, %rcx
	decl	%eax
	jne	.LBB17_9
.LBB17_14:                              # %FromFloatTo16.exit
	movq	8(%r8), %rdx
	leaq	256(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	*128(%rdx)
	movl	20(%rbx), %eax
	testl	%eax, %eax
	je	.LBB17_25
# BB#15:                                # %for.body.i.15.preheader
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r8
	xorl	%edi, %edi
	movq	%r8, %rsi
	andq	%r15, %rsi
	je	.LBB17_22
# BB#16:                                # %vector.body22.preheader
	leaq	1(%rdx), %rdi
	andq	%r15, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rcx
	shrq	$3, %rcx
	xorl	%ebx, %ebx
	btq	$3, %rdi
	jb	.LBB17_18
# BB#17:                                # %vector.body22.prol
	movq	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	cvtdq2ps	%xmm0, %xmm0
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	cvtdq2ps	%xmm1, %xmm1
	movaps	.LCPI17_11(%rip), %xmm2 # xmm2 = [6.553500e+04,6.553500e+04,6.553500e+04,6.553500e+04]
	divps	%xmm2, %xmm0
	divps	%xmm2, %xmm1
	movups	%xmm0, (%r14)
	movups	%xmm1, 16(%r14)
	movl	$8, %ebx
.LBB17_18:                              # %vector.body22.preheader.split
	testq	%rcx, %rcx
	je	.LBB17_21
# BB#19:                                # %vector.body22.preheader.split.split
	incq	%rdx
	andq	%r15, %rdx
	subq	%rbx, %rdx
	leaq	24(%rsp,%rbx,2), %rdi
	leaq	48(%r14,%rbx,4), %rbx
	pxor	%xmm0, %xmm0
	movaps	.LCPI17_11(%rip), %xmm1 # xmm1 = [6.553500e+04,6.553500e+04,6.553500e+04,6.553500e+04]
	.align	16, 0x90
.LBB17_20:                              # %vector.body22
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rdi), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rdi), %xmm3        # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	cvtdq2ps	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	cvtdq2ps	%xmm3, %xmm3
	divps	%xmm1, %xmm2
	divps	%xmm1, %xmm3
	movups	%xmm2, -48(%rbx)
	movups	%xmm3, -32(%rbx)
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	movq	(%rdi), %xmm3           # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	cvtdq2ps	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	cvtdq2ps	%xmm3, %xmm3
	divps	%xmm1, %xmm2
	divps	%xmm1, %xmm3
	movups	%xmm2, -16(%rbx)
	movups	%xmm3, (%rbx)
	addq	$32, %rdi
	addq	$64, %rbx
	addq	$-16, %rdx
	jne	.LBB17_20
.LBB17_21:
	movq	%rsi, %rdi
.LBB17_22:                              # %middle.block23
	cmpq	%rdi, %r8
	je	.LBB17_25
# BB#23:                                # %for.body.i.15.preheader47
	leaq	(%rsp,%rdi,2), %rcx
	subl	%edi, %eax
	leaq	(%r14,%rdi,4), %rdx
	movss	.LCPI17_12(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB17_24:                              # %for.body.i.15
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	addq	$2, %rcx
	addq	$4, %rdx
	decl	%eax
	jne	.LBB17_24
.LBB17_25:                              # %From16ToFloat.exit
	addq	$512, %rsp              # imm = 0x200
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB17_26:                              # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$456, %edx              # imm = 0x1C8
	movl	$.L__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16, %ecx
	callq	__assert_fail
.LBB17_27:                              # %cond.false.4
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$457, %edx              # imm = 0x1C9
	movl	$.L__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16, %ecx
	callq	__assert_fail
.Lfunc_end17:
	.size	EvaluateCLUTfloatIn16, .Lfunc_end17-EvaluateCLUTfloatIn16
	.cfi_endproc

	.align	16, 0x90
	.type	CLUTElemDup,@function
CLUTElemDup:                            # @CLUTElemDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %rbx, -32
.Ltmp120:
	.cfi_offset %r14, -24
.Ltmp121:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movq	48(%r14), %rbx
	movl	$24, %esi
	callq	_cmsMallocZero
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB18_13
# BB#1:                                 # %if.end
	movl	16(%rbx), %eax
	movl	%eax, 16(%r15)
	movl	20(%rbx), %eax
	movl	%eax, 20(%r15)
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB18_2
# BB#3:                                 # %if.then.4
	cmpl	$0, 20(%rbx)
	movq	(%r14), %rdi
	je	.LBB18_5
# BB#4:                                 # %if.then.7
	movl	16(%rbx), %edx
	shll	$2, %edx
	jmp	.LBB18_6
.LBB18_2:                               # %if.end.if.end.38_crit_edge
	movq	(%r15), %r8
	jmp	.LBB18_7
.LBB18_5:                               # %if.else
	movl	16(%rbx), %edx
	addl	%edx, %edx
.LBB18_6:                               # %if.else
	callq	_cmsDupMem
	movq	%rax, %r8
	movq	%r8, (%r15)
	testq	%r8, %r8
	je	.LBB18_10
.LBB18_7:                               # %if.end.38
	movq	(%r14), %rdi
	movq	8(%rbx), %rax
	movl	8(%rax), %r9d
	movl	12(%rax), %edx
	movl	16(%rax), %ecx
	leaq	20(%rax), %rsi
	callq	_cmsComputeInterpParamsEx
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.LBB18_9
# BB#8:
	movq	%r15, %rax
	jmp	.LBB18_13
.LBB18_9:                               # %if.end.38.Error_crit_edge
	movq	(%r15), %r8
.LBB18_10:                              # %Error
	testq	%r8, %r8
	je	.LBB18_12
# BB#11:                                # %if.then.55
	movq	(%r14), %rdi
	movq	%r8, %rsi
	callq	_cmsFree
.LBB18_12:                              # %if.end.59
	movq	(%r14), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB18_13:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	CLUTElemDup, .Lfunc_end18-CLUTElemDup
	.cfi_endproc

	.align	16, 0x90
	.type	CLutElemTypeFree,@function
CLutElemTypeFree:                       # @CLutElemTypeFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp124:
	.cfi_def_cfa_offset 32
.Ltmp125:
	.cfi_offset %rbx, -24
.Ltmp126:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	48(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB19_4
# BB#1:                                 # %if.end
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB19_3
# BB#2:                                 # %if.then.2
	movq	(%r14), %rdi
	callq	_cmsFree
.LBB19_3:                               # %if.end.5
	movq	8(%rbx), %rdi
	callq	_cmsFreeInterpParams
	movq	(%r14), %rdi
	movq	48(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsFree                # TAILCALL
.LBB19_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	CLutElemTypeFree, .Lfunc_end19-CLutElemTypeFree
	.cfi_endproc

	.globl	cmsStageAllocCLut16bit
	.align	16, 0x90
	.type	cmsStageAllocCLut16bit,@function
cmsStageAllocCLut16bit:                 # @cmsStageAllocCLut16bit
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp127:
	.cfi_def_cfa_offset 48
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, (%rsp)
	movdqa	%xmm0, 16(%rsp)
	leaq	(%rsp), %rsi
	callq	cmsStageAllocCLut16bitGranular
	addq	$40, %rsp
	retq
.Lfunc_end20:
	.size	cmsStageAllocCLut16bit, .Lfunc_end20-cmsStageAllocCLut16bit
	.cfi_endproc

	.globl	cmsStageAllocCLutFloat
	.align	16, 0x90
	.type	cmsStageAllocCLutFloat,@function
cmsStageAllocCLutFloat:                 # @cmsStageAllocCLutFloat
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 48
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, (%rsp)
	movdqa	%xmm0, 16(%rsp)
	leaq	(%rsp), %rsi
	callq	cmsStageAllocCLutFloatGranular
	addq	$40, %rsp
	retq
.Lfunc_end21:
	.size	cmsStageAllocCLutFloat, .Lfunc_end21-cmsStageAllocCLutFloat
	.cfi_endproc

	.globl	cmsStageAllocCLutFloatGranular
	.align	16, 0x90
	.type	cmsStageAllocCLutFloatGranular,@function
cmsStageAllocCLutFloatGranular:         # @cmsStageAllocCLutFloatGranular
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 80
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbp
	testq	%r14, %r14
	je	.LBB22_24
# BB#1:                                 # %cond.end
	cmpl	$9, %r12d
	jb	.LBB22_3
# BB#2:                                 # %if.then
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.2, %edx
	movl	$8, %r8d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %ecx
	callq	cmsSignalError
	jmp	.LBB22_23
.LBB22_3:                               # %if.end
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	$64, %esi
	movq	%rbp, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r13
	xorl	%ebx, %ebx
	testq	%r13, %r13
	je	.LBB22_23
# BB#4:                                 # %_cmsStageAllocPlaceholder.exit
	movq	%rbp, (%r13)
	movl	$1668052340, 8(%r13)    # imm = 0x636C7574
	movl	$1668052340, 12(%r13)   # imm = 0x636C7574
	movl	%r12d, 16(%r13)
	movl	%r15d, 20(%r13)
	movq	$EvaluateCLUTfloat, 24(%r13)
	movq	$CLUTElemDup, 32(%r13)
	movq	$CLutElemTypeFree, 40(%r13)
	movq	$0, 48(%r13)
	movl	$24, %esi
	movq	%rbp, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB22_20
# BB#5:                                 # %for.cond.preheader.i
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%rbx, 48(%r13)
	movl	%r12d, %ecx
	movl	$1, %esi
	.align	16, 0x90
.LBB22_6:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB22_7
# BB#8:                                 # %for.body.i
                                        #   in Loop: Header=BB22_6 Depth=1
	leal	-1(%rcx), %eax
	movl	(%r14,%rax,4), %edi
	xorl	%r15d, %r15d
	testl	%edi, %edi
	je	.LBB22_10
# BB#9:                                 # %if.end.i.37
                                        #   in Loop: Header=BB22_6 Depth=1
	imull	%edi, %esi
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%edi
	decq	%rcx
	cmpl	%eax, %esi
	jbe	.LBB22_6
	jmp	.LBB22_10
.LBB22_7:
	movl	%esi, %r15d
.LBB22_10:                              # %CubeSize.exit
	imull	12(%rsp), %r15d         # 4-byte Folded Reload
	movl	%r15d, 16(%rbx)
	movl	$1, 20(%rbx)
	testl	%r15d, %r15d
	je	.LBB22_20
# BB#11:                                # %if.end.12
	movl	$4, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
	movl	%r15d, %esi
	callq	_cmsCalloc
	movq	%rbx, %rcx
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	.LBB22_20
# BB#12:                                # %if.end.18
	movq	%rcx, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB22_19
# BB#13:                                # %for.body.preheader
	leal	-1(%r15), %ecx
	xorl	%edx, %edx
	testb	$3, %r15b
	je	.LBB22_16
# BB#14:                                # %for.body.prol.preheader
	movl	%r15d, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB22_15:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rdx,4), %edi
	movl	%edi, (%rax,%rdx,4)
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB22_15
.LBB22_16:                              # %for.body.preheader.split
	cmpl	$3, %ecx
	jb	.LBB22_19
# BB#17:                                # %for.body.preheader.split.split
	subl	%edx, %r15d
	leaq	12(%rax,%rdx,4), %rcx
	leaq	12(%rbp,%rdx,4), %rdx
	.align	16, 0x90
.LBB22_18:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rdx), %esi
	movl	%esi, -12(%rcx)
	movl	-8(%rdx), %esi
	movl	%esi, -8(%rcx)
	movl	-4(%rdx), %esi
	movl	%esi, -4(%rcx)
	movl	(%rdx), %esi
	movl	%esi, (%rcx)
	addq	$16, %rcx
	addq	$16, %rdx
	addl	$-4, %r15d
	jne	.LBB22_18
.LBB22_19:                              # %if.end.26
	movl	$1, %r9d
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r14, %rsi
	movl	%r12d, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	movq	%rax, %r8
	callq	_cmsComputeInterpParamsEx
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	movq	%r13, %rbx
	jne	.LBB22_23
.LBB22_20:                              # %if.then.32
	movq	40(%r13), %rax
	testq	%rax, %rax
	je	.LBB22_22
# BB#21:                                # %if.then.i.53
	movq	%r13, %rdi
	callq	*%rax
.LBB22_22:                              # %cmsStageFree.exit56
	movq	(%r13), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	xorl	%ebx, %ebx
.LBB22_23:                              # %cleanup
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_24:                              # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$651, %edx              # imm = 0x28B
	movl	$.L__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular, %ecx
	callq	__assert_fail
.Lfunc_end22:
	.size	cmsStageAllocCLutFloatGranular, .Lfunc_end22-cmsStageAllocCLutFloatGranular
	.cfi_endproc

	.align	16, 0x90
	.type	EvaluateCLUTfloat,@function
EvaluateCLUTfloat:                      # @EvaluateCLUTfloat
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdx), %rax
	movq	8(%rax), %rdx
	movq	128(%rdx), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end23:
	.size	EvaluateCLUTfloat, .Lfunc_end23-EvaluateCLUTfloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_0:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.text
	.globl	_cmsStageAllocIdentityCLut
	.align	16, 0x90
	.type	_cmsStageAllocIdentityCLut,@function
_cmsStageAllocIdentityCLut:             # @_cmsStageAllocIdentityCLut
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp144:
	.cfi_def_cfa_offset 64
.Ltmp145:
	.cfi_offset %rbx, -24
.Ltmp146:
	.cfi_offset %r14, -16
	movl	%esi, %eax
	movl	%eax, 36(%rsp)
	movaps	.LCPI24_0(%rip), %xmm0  # xmm0 = [2,2,2,2]
	movaps	%xmm0, (%rsp)
	movaps	%xmm0, 16(%rsp)
	xorl	%r14d, %r14d
	leaq	(%rsp), %rsi
	xorl	%r8d, %r8d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	cmsStageAllocCLut16bitGranular
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB24_6
# BB#1:                                 # %if.end
	leaq	36(%rsp), %rdx
	movl	$IdentitySampler, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	cmsStageSampleCLut16bit
	testl	%eax, %eax
	je	.LBB24_2
# BB#5:                                 # %if.end.4
	movl	$1768189472, 12(%rbx)   # imm = 0x69646E20
	movq	%rbx, %r14
	jmp	.LBB24_6
.LBB24_2:                               # %if.then.3
	movq	40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB24_4
# BB#3:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	*%rax
.LBB24_4:                               # %cmsStageFree.exit
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%r14d, %r14d
.LBB24_6:                               # %cleanup
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	_cmsStageAllocIdentityCLut, .Lfunc_end24-_cmsStageAllocIdentityCLut
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4679239875398991872     # double 65535
.LCPI25_1:
	.quad	4602678819172646912     # double 0.5
.LCPI25_2:
	.quad	-4548635898522107904    # double -32767
.LCPI25_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsStageSampleCLut16bit
	.align	16, 0x90
	.type	cmsStageSampleCLut16bit,@function
cmsStageSampleCLut16bit:                # @cmsStageSampleCLut16bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 48
	subq	$512, %rsp              # imm = 0x200
.Ltmp152:
	.cfi_def_cfa_offset 560
.Ltmp153:
	.cfi_offset %rbx, -48
.Ltmp154:
	.cfi_offset %r12, -40
.Ltmp155:
	.cfi_offset %r13, -32
.Ltmp156:
	.cfi_offset %r15, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	je	.LBB25_55
# BB#1:                                 # %if.end
	movq	48(%rdi), %r10
	testq	%r10, %r10
	je	.LBB25_55
# BB#2:                                 # %if.end.3
	movq	8(%r10), %rbx
	movl	12(%rbx), %r9d
	movq	%r9, 208(%rsp)          # 8-byte Spill
	leal	-1(%r9), %eax
	cmpl	$7, %eax
	ja	.LBB25_55
# BB#3:                                 # %if.end.3
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movslq	16(%rbx), %r8
	leal	-1(%r8), %eax
	cmpl	$126, %eax
	ja	.LBB25_55
# BB#4:                                 # %if.end.20
	movl	$1, %r15d
	movq	%r9, %rsi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB25_5:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB25_8
# BB#6:                                 # %for.body.i
                                        #   in Loop: Header=BB25_5 Depth=1
	leal	-1(%rsi), %eax
	movl	20(%rbx,%rax,4), %edi
	testl	%edi, %edi
	je	.LBB25_55
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB25_5 Depth=1
	imull	%edi, %r15d
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%edi
	decq	%rsi
	cmpl	%eax, %r15d
	jbe	.LBB25_5
	jmp	.LBB25_55
.LBB25_8:                               # %CubeSize.exit
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	je	.LBB25_55
# BB#9:                                 # %for.cond.preheader
	jle	.LBB25_54
# BB#10:                                # %for.cond.25.preheader.lr.ph
	andl	$16777216, %ecx         # imm = 0x1000000
	movl	%ecx, 156(%rsp)         # 4-byte Spill
	movq	%r8, %rsi
	leal	-1(%rsi), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	224(%rsp,%rax,2), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leal	-1(%rsi), %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	224(%rsp,%rax,2), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leaq	-16(%rdx), %rdx
	shrq	$4, %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	andq	%rax, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	-16(%rcx), %rcx
	shrq	$4, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	testl	%esi, %esi
	setle	183(%rsp)               # 1-byte Folded Spill
	andl	$1, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	andl	$1, %edx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	leal	-1(%rsi), %ecx
	incq	%rcx
	andq	%rax, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	%r9d, %rax
	movq	%r9, 208(%rsp)          # 8-byte Spill
	incq	%rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movsd	.LCPI25_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI25_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI25_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI25_3(%rip), %xmm6  # xmm6 = mem[0],zero
	leal	1(%rsi), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	leal	1(%rsi), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	leal	1(%rsi), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	leal	1(%rsi), %eax
	movq	%rsi, %r9
	movl	%eax, 12(%rsp)          # 4-byte Spill
	xorl	%r8d, %r8d
	movl	$16, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB25_11:                              # %for.cond.25.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_12 Depth 2
                                        #     Child Loop BB25_25 Depth 2
                                        #     Child Loop BB25_30 Depth 2
                                        #     Child Loop BB25_33 Depth 2
                                        #     Child Loop BB25_44 Depth 2
                                        #     Child Loop BB25_49 Depth 2
                                        #     Child Loop BB25_52 Depth 2
	movq	208(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%r8d, %eax
	jle	.LBB25_17
	.align	16, 0x90
.LBB25_12:                              # %for.body.27
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rbx,%rcx,4), %esi
	xorl	%edx, %edx
	divl	%esi
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	mulsd	%xmm2, %xmm0
	decl	%esi
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm4
	jae	.LBB25_13
# BB#14:                                # %if.end.i.i
                                        #   in Loop: Header=BB25_12 Depth=2
	movw	$-1, %dx
	ucomisd	.LCPI25_0(%rip), %xmm0
	jae	.LBB25_16
# BB#15:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB25_12 Depth=2
	addsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	movd	%xmm0, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB25_16
	.align	16, 0x90
.LBB25_13:                              #   in Loop: Header=BB25_12 Depth=2
	xorl	%edx, %edx
.LBB25_16:                              # %_cmsQuantizeVal.exit
                                        #   in Loop: Header=BB25_12 Depth=2
	movw	%dx, 476(%rsp,%rcx,2)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB25_12
.LBB25_17:                              # %for.end
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	%r9, %r12
	imulq	%r8, %r12
	movq	%r8, 200(%rsp)          # 8-byte Spill
	movq	(%r10), %rax
	movq	%r10, 216(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	sete	%cl
	orb	183(%rsp), %cl          # 1-byte Folded Reload
	jne	.LBB25_34
# BB#18:                                # %overflow.checked102
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	je	.LBB25_27
# BB#19:                                # %vector.memcheck119
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	112(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r12), %rcx
	leaq	(%rax,%rcx,2), %rcx
	leaq	224(%rsp), %rdx
	cmpq	%rcx, %rdx
	ja	.LBB25_21
# BB#20:                                # %vector.memcheck119
                                        #   in Loop: Header=BB25_11 Depth=1
	leaq	(%rax,%r12,2), %rcx
	cmpq	88(%rsp), %rcx          # 8-byte Folded Reload
	movl	$0, %ecx
	jbe	.LBB25_27
.LBB25_21:                              # %vector.body98.preheader
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB25_23
# BB#22:                                # %vector.body98.prol
                                        #   in Loop: Header=BB25_11 Depth=1
	movupd	(%rax,%r13,2), %xmm0
	movupd	16(%rax,%r13,2), %xmm1
	movapd	%xmm0, 224(%rsp)
	movapd	%xmm1, 240(%rsp)
	movl	$16, %esi
.LBB25_23:                              # %vector.body98.preheader.split
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	je	.LBB25_27
# BB#24:                                # %vector.body98.preheader.split.split
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	subq	%rsi, %rcx
	movq	160(%rsp), %rdx         # 8-byte Reload
	leaq	(%rsi,%rdx), %rdx
	leaq	16(%rax,%rdx,2), %rdx
	leaq	272(%rsp), %rdi
	leaq	(%rdi,%rsi,2), %rsi
	.align	16, 0x90
.LBB25_25:                              # %vector.body98
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm1, -32(%rsi)
	movupd	-16(%rdx), %xmm0
	movupd	(%rdx), %xmm1
	movapd	%xmm0, -16(%rsi)
	movapd	%xmm1, (%rsi)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-32, %rcx
	jne	.LBB25_25
# BB#26:                                #   in Loop: Header=BB25_11 Depth=1
	movq	136(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB25_27:                              # %middle.block99
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	%rcx, 128(%rsp)         # 8-byte Folded Reload
	je	.LBB25_34
# BB#28:                                # %for.body.41.preheader
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	%ecx, %esi
	orl	$1, %esi
	movl	108(%rsp), %edi         # 4-byte Reload
	subl	%esi, %edi
	movl	%r9d, %edx
	subl	%esi, %edx
	testb	$3, %dil
	je	.LBB25_31
# BB#29:                                # %for.body.41.prol.preheader
                                        #   in Loop: Header=BB25_11 Depth=1
	leaq	(%rax,%r13,2), %rsi
	leal	1(%rcx), %r8d
	movl	68(%rsp), %edi          # 4-byte Reload
	subl	%r8d, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB25_30:                              # %for.body.41.prol
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	(%rsi,%rcx,2), %bp
	movw	%bp, 224(%rsp,%rcx,2)
	incq	%rcx
	incl	%edi
	jne	.LBB25_30
.LBB25_31:                              # %for.body.41.preheader.split
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$3, %edx
	jb	.LBB25_34
# BB#32:                                # %for.body.41.preheader.split.split
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	%r9d, %edx
	subl	%ecx, %edx
	leaq	230(%rsp), %rsi
	leaq	(%rsi,%rcx,2), %rsi
	addq	168(%rsp), %rcx         # 8-byte Folded Reload
	leaq	(%rax,%rcx,2), %rax
	.align	16, 0x90
.LBB25_33:                              # %for.body.41
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	-4(%rax), %cx
	movw	%cx, -6(%rsi)
	movw	-2(%rax), %cx
	movw	%cx, -4(%rsi)
	movw	(%rax), %cx
	movw	%cx, -2(%rsi)
	movw	2(%rax), %cx
	movw	%cx, (%rsi)
	addq	$8, %rsi
	addq	$8, %rax
	addl	$-4, %edx
	jne	.LBB25_33
	.align	16, 0x90
.LBB25_34:                              # %if.end.50
                                        #   in Loop: Header=BB25_11 Depth=1
	leaq	480(%rsp), %rdi
	leaq	224(%rsp), %rsi
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%r9, %rbp
	callq	*184(%rsp)              # 8-byte Folded Reload
	movq	%rbp, %r9
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movq	216(%rsp), %r10         # 8-byte Reload
	movl	156(%rsp), %eax         # 4-byte Reload
	je	.LBB25_55
# BB#35:                                # %if.end.55
                                        #   in Loop: Header=BB25_11 Depth=1
	testl	%eax, %eax
	movsd	.LCPI25_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI25_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI25_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI25_3(%rip), %xmm6  # xmm6 = mem[0],zero
	movq	200(%rsp), %r8          # 8-byte Reload
	jne	.LBB25_53
# BB#36:                                # %if.then.57
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	(%r10), %rax
	testq	%rax, %rax
	sete	%cl
	orb	183(%rsp), %cl          # 1-byte Folded Reload
	jne	.LBB25_53
# BB#37:                                # %overflow.checked
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	je	.LBB25_46
# BB#38:                                # %vector.memcheck
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r12), %rcx
	leaq	(%rax,%r12,2), %rdx
	leaq	(%rax,%rcx,2), %rcx
	leaq	224(%rsp), %rsi
	cmpq	%rcx, %rsi
	setbe	%cl
	cmpq	48(%rsp), %rdx          # 8-byte Folded Reload
	ja	.LBB25_40
# BB#39:                                # %vector.memcheck
                                        #   in Loop: Header=BB25_11 Depth=1
	testb	%cl, %cl
	movl	$0, %ecx
	jne	.LBB25_46
.LBB25_40:                              # %vector.body.preheader
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB25_42
# BB#41:                                # %vector.body.prol
                                        #   in Loop: Header=BB25_11 Depth=1
	movapd	224(%rsp), %xmm0
	movapd	240(%rsp), %xmm1
	movupd	%xmm0, (%rax,%r13,2)
	movupd	%xmm1, 16(%rax,%r13,2)
	movl	$16, %esi
.LBB25_42:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	je	.LBB25_46
# BB#43:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB25_11 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	subq	%rsi, %rcx
	movq	160(%rsp), %rdx         # 8-byte Reload
	leaq	(%rsi,%rdx), %rdx
	leaq	16(%rax,%rdx,2), %rdx
	leaq	272(%rsp), %rdi
	leaq	(%rdi,%rsi,2), %rsi
	.align	16, 0x90
.LBB25_44:                              # %vector.body
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movapd	-16(%rsi), %xmm0
	movapd	(%rsi), %xmm1
	movupd	%xmm0, -16(%rdx)
	movupd	%xmm1, (%rdx)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-32, %rcx
	jne	.LBB25_44
# BB#45:                                #   in Loop: Header=BB25_11 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
.LBB25_46:                              # %middle.block
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpq	%rcx, 96(%rsp)          # 8-byte Folded Reload
	je	.LBB25_53
# BB#47:                                # %for.body.66.preheader
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	%ecx, %esi
	orl	$1, %esi
	movl	44(%rsp), %edi          # 4-byte Reload
	subl	%esi, %edi
	movl	%r9d, %edx
	subl	%esi, %edx
	testb	$3, %dil
	je	.LBB25_50
# BB#48:                                # %for.body.66.prol.preheader
                                        #   in Loop: Header=BB25_11 Depth=1
	leaq	(%rax,%r13,2), %rsi
	leal	1(%rcx), %ebp
	movl	12(%rsp), %edi          # 4-byte Reload
	subl	%ebp, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB25_49:                              # %for.body.66.prol
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	224(%rsp,%rcx,2), %bp
	movw	%bp, (%rsi,%rcx,2)
	incq	%rcx
	incl	%edi
	jne	.LBB25_49
.LBB25_50:                              # %for.body.66.preheader.split
                                        #   in Loop: Header=BB25_11 Depth=1
	cmpl	$3, %edx
	jb	.LBB25_53
# BB#51:                                # %for.body.66.preheader.split.split
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	%r9d, %edx
	subl	%ecx, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	leaq	(%rcx,%rsi), %rsi
	leaq	(%rax,%rsi,2), %rax
	leaq	230(%rsp), %rsi
	leaq	(%rsi,%rcx,2), %rcx
	.align	16, 0x90
.LBB25_52:                              # %for.body.66
                                        #   Parent Loop BB25_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	-6(%rcx), %si
	movw	%si, -4(%rax)
	movw	-4(%rcx), %si
	movw	%si, -2(%rax)
	movw	-2(%rcx), %si
	movw	%si, (%rax)
	movw	(%rcx), %si
	movw	%si, 2(%rax)
	addq	$8, %rax
	addq	$8, %rcx
	addl	$-4, %edx
	jne	.LBB25_52
	.align	16, 0x90
.LBB25_53:                              # %if.end.78
                                        #   in Loop: Header=BB25_11 Depth=1
	addq	%r9, %r13
	incq	%r8
	addq	%r9, 160(%rsp)          # 8-byte Folded Spill
	addq	%r9, 168(%rsp)          # 8-byte Folded Spill
	cmpl	%r15d, %r8d
	jl	.LBB25_11
.LBB25_54:
	movl	$1, %ebp
.LBB25_55:                              # %cleanup
	movl	%ebp, %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	cmsStageSampleCLut16bit, .Lfunc_end25-cmsStageSampleCLut16bit
	.cfi_endproc

	.align	16, 0x90
	.type	IdentitySampler,@function
IdentitySampler:                        # @IdentitySampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbx, -16
	movl	(%rdx), %r11d
	testl	%r11d, %r11d
	jle	.LBB26_17
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r10       # imm = 0x1FFFFFFF0
	leal	-1(%r11), %edx
	leaq	1(%rdx), %r8
	xorl	%ecx, %ecx
	movq	%r8, %r9
	andq	%r10, %r9
	je	.LBB26_10
# BB#2:                                 # %vector.memcheck
	leaq	(%rdi,%rdx,2), %rax
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	jb	.LBB26_4
# BB#3:                                 # %vector.memcheck
	leaq	(%rsi,%rdx,2), %rax
	cmpq	%rdi, %rax
	jae	.LBB26_10
.LBB26_4:                               # %vector.body.preheader
	leaq	1(%rdx), %rbx
	andq	%r10, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rcx
	shrq	$4, %rcx
	xorl	%eax, %eax
	btq	$4, %rbx
	jb	.LBB26_6
# BB#5:                                 # %vector.body.prol
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm0, (%rsi)
	movups	%xmm1, 16(%rsi)
	movl	$16, %eax
.LBB26_6:                               # %vector.body.preheader.split
	testq	%rcx, %rcx
	je	.LBB26_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r10, %rdx
	subq	%rax, %rdx
	leaq	48(%rdi,%rax,2), %rcx
	leaq	48(%rsi,%rax,2), %rax
	.align	16, 0x90
.LBB26_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rcx), %xmm0
	movups	-32(%rcx), %xmm1
	movups	%xmm0, -48(%rax)
	movups	%xmm1, -32(%rax)
	movups	-16(%rcx), %xmm0
	movups	(%rcx), %xmm1
	movups	%xmm0, -16(%rax)
	movups	%xmm1, (%rax)
	addq	$64, %rcx
	addq	$64, %rax
	addq	$-32, %rdx
	jne	.LBB26_8
.LBB26_9:
	movq	%r9, %rcx
.LBB26_10:                              # %middle.block
	cmpq	%rcx, %r8
	je	.LBB26_17
# BB#11:                                # %for.body.preheader17
	leal	1(%r11), %edx
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%r11d, %r8d
	subl	%eax, %r8d
	testb	$3, %bl
	je	.LBB26_14
# BB#12:                                # %for.body.prol.preheader
	leal	1(%rcx), %eax
	subl	%eax, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB26_13:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rdi,%rcx,2), %ax
	movw	%ax, (%rsi,%rcx,2)
	incq	%rcx
	incl	%edx
	jne	.LBB26_13
.LBB26_14:                              # %for.body.preheader17.split
	cmpl	$3, %r8d
	jb	.LBB26_17
# BB#15:                                # %for.body.preheader17.split.split
	subl	%ecx, %r11d
	leaq	6(%rsi,%rcx,2), %rdx
	leaq	6(%rdi,%rcx,2), %rcx
	.align	16, 0x90
.LBB26_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rcx), %ax
	movw	%ax, -6(%rdx)
	movw	-4(%rcx), %ax
	movw	%ax, -4(%rdx)
	movw	-2(%rcx), %ax
	movw	%ax, -2(%rdx)
	movw	(%rcx), %ax
	movw	%ax, (%rdx)
	addq	$8, %rdx
	addq	$8, %rcx
	addl	$-4, %r11d
	jne	.LBB26_16
.LBB26_17:                              # %for.end
	movl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end26:
	.size	IdentitySampler, .Lfunc_end26-IdentitySampler
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4679239875398991872     # double 65535
.LCPI27_1:
	.quad	4602678819172646912     # double 0.5
.LCPI27_2:
	.quad	-4548635898522107904    # double -32767
.LCPI27_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	_cmsQuantizeVal
	.align	16, 0x90
	.type	_cmsQuantizeVal,@function
_cmsQuantizeVal:                        # @_cmsQuantizeVal
	.cfi_startproc
# BB#0:                                 # %entry
	mulsd	.LCPI27_0(%rip), %xmm0
	decl	%edi
	cvtsi2sdl	%edi, %xmm1
	divsd	%xmm1, %xmm0
	addsd	.LCPI27_1(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB27_1
# BB#2:                                 # %if.end.i
	movw	$-1, %ax
	ucomisd	.LCPI27_0(%rip), %xmm0
	jae	.LBB27_4
# BB#3:                                 # %if.end.3.i
	addsd	.LCPI27_2(%rip), %xmm0
	addsd	.LCPI27_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB27_4:                               # %_cmsQuickSaturateWord.exit
	movzwl	%ax, %eax
	retq
.LBB27_1:
	xorl	%eax, %eax
	movzwl	%ax, %eax
	retq
.Lfunc_end27:
	.size	_cmsQuantizeVal, .Lfunc_end27-_cmsQuantizeVal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4679239875398991872     # double 65535
.LCPI28_1:
	.quad	4602678819172646912     # double 0.5
.LCPI28_2:
	.quad	-4548635898522107904    # double -32767
.LCPI28_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsStageSampleCLutFloat
	.align	16, 0x90
	.type	cmsStageSampleCLutFloat,@function
cmsStageSampleCLutFloat:                # @cmsStageSampleCLutFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp161:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp163:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp164:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp166:
	.cfi_def_cfa_offset 704
.Ltmp167:
	.cfi_offset %rbx, -56
.Ltmp168:
	.cfi_offset %r12, -48
.Ltmp169:
	.cfi_offset %r13, -40
.Ltmp170:
	.cfi_offset %r14, -32
.Ltmp171:
	.cfi_offset %r15, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	48(%rdi), %r8
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	8(%r8), %r12
	movl	12(%r12), %r9d
	movq	%r9, 64(%rsp)           # 8-byte Spill
	leal	-1(%r9), %eax
	xorl	%ebp, %ebp
	cmpl	$7, %eax
	ja	.LBB28_33
# BB#1:                                 # %entry
	movslq	16(%r12), %rbx
	leal	-1(%rbx), %eax
	cmpl	$126, %eax
	ja	.LBB28_33
# BB#2:                                 # %if.end.14
	movl	$1, %r15d
	movq	%r9, %rsi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB28_3:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB28_6
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB28_3 Depth=1
	leal	-1(%rsi), %eax
	movl	20(%r12,%rax,4), %edi
	testl	%edi, %edi
	je	.LBB28_33
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB28_3 Depth=1
	imull	%edi, %r15d
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%edi
	decq	%rsi
	cmpl	%eax, %r15d
	jbe	.LBB28_3
	jmp	.LBB28_33
.LBB28_6:                               # %CubeSize.exit
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	je	.LBB28_33
# BB#7:                                 # %for.cond.preheader
	jle	.LBB28_32
# BB#8:                                 # %for.cond.19.preheader.lr.ph
	andl	$16777216, %ecx         # imm = 0x1000000
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	setle	63(%rsp)                # 1-byte Folded Spill
	movl	%ebx, %eax
	andl	$3, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	andl	$3, %ebx
	movslq	%r9d, %rax
	incq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$2, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movsd	.LCPI28_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI28_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI28_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI28_3(%rip), %xmm6  # xmm6 = mem[0],zero
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB28_9:                               # %for.cond.19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_10 Depth 2
                                        #     Child Loop BB28_18 Depth 2
                                        #     Child Loop BB28_21 Depth 2
                                        #     Child Loop BB28_27 Depth 2
                                        #     Child Loop BB28_30 Depth 2
	testl	%r9d, %r9d
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%r14d, %eax
	jle	.LBB28_15
	.align	16, 0x90
.LBB28_10:                              # %for.body.21
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%r12,%rcx,4), %esi
	xorl	%edx, %edx
	divl	%esi
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	mulsd	%xmm2, %xmm0
	decl	%esi
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm4
	jae	.LBB28_11
# BB#12:                                # %if.end.i.i
                                        #   in Loop: Header=BB28_10 Depth=2
	movw	$-1, %dx
	ucomisd	.LCPI28_0(%rip), %xmm0
	jae	.LBB28_14
# BB#13:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB28_10 Depth=2
	addsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	movd	%xmm0, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB28_14
	.align	16, 0x90
.LBB28_11:                              #   in Loop: Header=BB28_10 Depth=2
	xorl	%edx, %edx
.LBB28_14:                              # %_cmsQuantizeVal.exit
                                        #   in Loop: Header=BB28_10 Depth=2
	movzwl	%dx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 600(%rsp,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB28_10
.LBB28_15:                              # %for.end
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	(%r8), %rax
	testq	%rax, %rax
	sete	%cl
	orb	63(%rsp), %cl           # 1-byte Folded Reload
	jne	.LBB28_22
# BB#16:                                # %for.body.39.preheader
                                        #   in Loop: Header=BB28_9 Depth=1
	testl	%ebx, %ebx
	movl	$0, %esi
	je	.LBB28_19
# BB#17:                                # %for.body.39.prol.preheader
                                        #   in Loop: Header=BB28_9 Depth=1
	leaq	(%rax,%r13,4), %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB28_18:                              # %for.body.39.prol
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rsi,4), %edx
	movl	%edx, 96(%rsp,%rsi,4)
	incq	%rsi
	cmpl	%esi, %ebx
	jne	.LBB28_18
.LBB28_19:                              # %for.body.39.preheader.split
                                        #   in Loop: Header=BB28_9 Depth=1
	cmpl	$3, 12(%rsp)            # 4-byte Folded Reload
	jb	.LBB28_22
# BB#20:                                # %for.body.39.preheader.split.split
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	subl	%esi, %ecx
	leaq	108(%rsp), %rdx
	leaq	(%rdx,%rsi,4), %rdx
	addq	40(%rsp), %rsi          # 8-byte Folded Reload
	leaq	(%rax,%rsi,4), %rax
	.align	16, 0x90
.LBB28_21:                              # %for.body.39
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rax), %esi
	movl	%esi, -12(%rdx)
	movl	-4(%rax), %esi
	movl	%esi, -8(%rdx)
	movl	(%rax), %esi
	movl	%esi, -4(%rdx)
	movl	4(%rax), %esi
	movl	%esi, (%rdx)
	addq	$16, %rdx
	addq	$16, %rax
	addl	$-4, %ecx
	jne	.LBB28_21
.LBB28_22:                              # %if.end.48
                                        #   in Loop: Header=BB28_9 Depth=1
	leaq	608(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	*80(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	movl	36(%rsp), %eax          # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	je	.LBB28_33
# BB#23:                                # %if.end.53
                                        #   in Loop: Header=BB28_9 Depth=1
	testl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movsd	.LCPI28_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI28_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI28_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI28_3(%rip), %xmm6  # xmm6 = mem[0],zero
	jne	.LBB28_31
# BB#24:                                # %if.then.55
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	(%r8), %rax
	testq	%rax, %rax
	sete	%cl
	orb	63(%rsp), %cl           # 1-byte Folded Reload
	jne	.LBB28_31
# BB#25:                                # %for.body.64.preheader
                                        #   in Loop: Header=BB28_9 Depth=1
	testl	%edi, %edi
	movl	$0, %edx
	je	.LBB28_28
# BB#26:                                # %for.body.64.prol.preheader
                                        #   in Loop: Header=BB28_9 Depth=1
	leaq	(%rax,%r13,4), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB28_27:                              # %for.body.64.prol
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	96(%rsp,%rdx,4), %esi
	movl	%esi, (%rcx,%rdx,4)
	incq	%rdx
	cmpl	%edx, %edi
	jne	.LBB28_27
.LBB28_28:                              # %for.body.64.preheader.split
                                        #   in Loop: Header=BB28_9 Depth=1
	cmpl	$3, 12(%rsp)            # 4-byte Folded Reload
	jb	.LBB28_31
# BB#29:                                # %for.body.64.preheader.split.split
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	subl	%edx, %ecx
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdx,%rsi), %rsi
	leaq	(%rax,%rsi,4), %rax
	leaq	108(%rsp), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	.align	16, 0x90
.LBB28_30:                              # %for.body.64
                                        #   Parent Loop BB28_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rdx), %esi
	movl	%esi, -8(%rax)
	movl	-8(%rdx), %esi
	movl	%esi, -4(%rax)
	movl	-4(%rdx), %esi
	movl	%esi, (%rax)
	movl	(%rdx), %esi
	movl	%esi, 4(%rax)
	addq	$16, %rax
	addq	$16, %rdx
	addl	$-4, %ecx
	jne	.LBB28_30
	.align	16, 0x90
.LBB28_31:                              # %if.end.76
                                        #   in Loop: Header=BB28_9 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r13
	incl	%r14d
	addq	%rax, 40(%rsp)          # 8-byte Folded Spill
	cmpl	%r15d, %r14d
	jl	.LBB28_9
.LBB28_32:
	movl	$1, %ebp
.LBB28_33:                              # %cleanup
	movl	%ebp, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	cmsStageSampleCLutFloat, .Lfunc_end28-cmsStageSampleCLutFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4679239875398991872     # double 65535
.LCPI29_1:
	.quad	4602678819172646912     # double 0.5
.LCPI29_2:
	.quad	-4548635898522107904    # double -32767
.LCPI29_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsSliceSpace16
	.align	16, 0x90
	.type	cmsSliceSpace16,@function
cmsSliceSpace16:                        # @cmsSliceSpace16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp174:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp175:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp176:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp177:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp179:
	.cfi_def_cfa_offset 112
.Ltmp180:
	.cfi_offset %rbx, -56
.Ltmp181:
	.cfi_offset %r12, -48
.Ltmp182:
	.cfi_offset %r13, -40
.Ltmp183:
	.cfi_offset %r14, -32
.Ltmp184:
	.cfi_offset %r15, -24
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movl	%edi, %r13d
	xorl	%ebp, %ebp
	cmpl	$15, %r13d
	ja	.LBB29_19
# BB#1:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB29_20
# BB#2:                                 # %for.cond.preheader.i
	movl	%r13d, %ecx
	movl	$1, %r12d
	.align	16, 0x90
.LBB29_3:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB29_6
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB29_3 Depth=1
	leal	-1(%rcx), %eax
	movl	(%rbx,%rax,4), %esi
	xorl	%ebp, %ebp
	testl	%esi, %esi
	je	.LBB29_19
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB29_3 Depth=1
	imull	%esi, %r12d
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%esi
	decq	%rcx
	cmpl	%eax, %r12d
	jbe	.LBB29_3
	jmp	.LBB29_19
.LBB29_6:                               # %CubeSize.exit
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	je	.LBB29_19
# BB#7:                                 # %for.cond.preheader
	jle	.LBB29_8
# BB#11:                                # %for.cond.5.preheader.lr.ph
	movslq	%r13d, %rax
	decl	%r13d
	decq	%rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r14d, %r14d
	movsd	.LCPI29_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI29_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI29_3(%rip), %xmm6  # xmm6 = mem[0],zero
	.align	16, 0x90
.LBB29_12:                              # %for.cond.5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_13 Depth 2
	testl	%r13d, %r13d
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%r14d, %eax
	js	.LBB29_18
	.align	16, 0x90
.LBB29_13:                              # %for.body.7
                                        #   Parent Loop BB29_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rcx,4), %esi
	xorl	%edx, %edx
	divl	%esi
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	mulsd	%xmm2, %xmm0
	decl	%esi
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm4
	jae	.LBB29_14
# BB#15:                                # %if.end.i.i
                                        #   in Loop: Header=BB29_13 Depth=2
	movw	$-1, %dx
	ucomisd	.LCPI29_0(%rip), %xmm0
	jae	.LBB29_17
# BB#16:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB29_13 Depth=2
	addsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	movd	%xmm0, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB29_17
	.align	16, 0x90
.LBB29_14:                              #   in Loop: Header=BB29_13 Depth=2
	xorl	%edx, %edx
.LBB29_17:                              # %_cmsQuantizeVal.exit
                                        #   in Loop: Header=BB29_13 Depth=2
	movw	%dx, 16(%rsp,%rcx,2)
	decq	%rcx
	testl	%ecx, %ecx
	jns	.LBB29_13
.LBB29_18:                              # %for.end
                                        #   in Loop: Header=BB29_12 Depth=1
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	leaq	16(%rsp), %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	*%r15
	testl	%eax, %eax
	je	.LBB29_19
# BB#9:                                 # %for.cond
                                        #   in Loop: Header=BB29_12 Depth=1
	incl	%r14d
	cmpl	%r12d, %r14d
	movsd	.LCPI29_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI29_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI29_3(%rip), %xmm6  # xmm6 = mem[0],zero
	jl	.LBB29_12
# BB#10:
	movl	$1, %ebp
	jmp	.LBB29_19
.LBB29_8:
	movl	$1, %ebp
.LBB29_19:                              # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_20:                              # %cond.false.i
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$471, %edx              # imm = 0x1D7
	movl	$.L__PRETTY_FUNCTION__.CubeSize, %ecx
	callq	__assert_fail
.Lfunc_end29:
	.size	cmsSliceSpace16, .Lfunc_end29-cmsSliceSpace16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4679239875398991872     # double 65535
.LCPI30_1:
	.quad	4602678819172646912     # double 0.5
.LCPI30_2:
	.quad	-4548635898522107904    # double -32767
.LCPI30_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsSliceSpaceFloat
	.align	16, 0x90
	.type	cmsSliceSpaceFloat,@function
cmsSliceSpaceFloat:                     # @cmsSliceSpaceFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp187:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp188:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp189:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp190:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp191:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp192:
	.cfi_def_cfa_offset 144
.Ltmp193:
	.cfi_offset %rbx, -56
.Ltmp194:
	.cfi_offset %r12, -48
.Ltmp195:
	.cfi_offset %r13, -40
.Ltmp196:
	.cfi_offset %r14, -32
.Ltmp197:
	.cfi_offset %r15, -24
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movl	%edi, %r13d
	xorl	%ebp, %ebp
	cmpl	$15, %r13d
	ja	.LBB30_19
# BB#1:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB30_20
# BB#2:                                 # %for.cond.preheader.i
	movl	%r13d, %ecx
	movl	$1, %r12d
	.align	16, 0x90
.LBB30_3:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB30_6
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB30_3 Depth=1
	leal	-1(%rcx), %eax
	movl	(%rbx,%rax,4), %esi
	xorl	%ebp, %ebp
	testl	%esi, %esi
	je	.LBB30_19
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB30_3 Depth=1
	imull	%esi, %r12d
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%esi
	decq	%rcx
	cmpl	%eax, %r12d
	jbe	.LBB30_3
	jmp	.LBB30_19
.LBB30_6:                               # %CubeSize.exit
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	je	.LBB30_19
# BB#7:                                 # %for.cond.preheader
	jle	.LBB30_8
# BB#11:                                # %for.cond.5.preheader.lr.ph
	movslq	%r13d, %rax
	decl	%r13d
	decq	%rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r14d, %r14d
	movsd	.LCPI30_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI30_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI30_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI30_3(%rip), %xmm6  # xmm6 = mem[0],zero
	.align	16, 0x90
.LBB30_12:                              # %for.cond.5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_13 Depth 2
	testl	%r13d, %r13d
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%r14d, %eax
	js	.LBB30_18
	.align	16, 0x90
.LBB30_13:                              # %for.body.7
                                        #   Parent Loop BB30_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rcx,4), %esi
	xorl	%edx, %edx
	divl	%esi
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	mulsd	%xmm2, %xmm0
	decl	%esi
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm4
	jae	.LBB30_14
# BB#15:                                # %if.end.i.i
                                        #   in Loop: Header=BB30_13 Depth=2
	movw	$-1, %dx
	ucomisd	.LCPI30_0(%rip), %xmm0
	jae	.LBB30_17
# BB#16:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB30_13 Depth=2
	addsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	movd	%xmm0, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB30_17
	.align	16, 0x90
.LBB30_14:                              #   in Loop: Header=BB30_13 Depth=2
	xorl	%edx, %edx
.LBB30_17:                              # %_cmsQuantizeVal.exit
                                        #   in Loop: Header=BB30_13 Depth=2
	movzwl	%dx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsp,%rcx,4)
	decq	%rcx
	testl	%ecx, %ecx
	jns	.LBB30_13
.LBB30_18:                              # %for.end
                                        #   in Loop: Header=BB30_12 Depth=1
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	leaq	16(%rsp), %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	*%r15
	testl	%eax, %eax
	je	.LBB30_19
# BB#9:                                 # %for.cond
                                        #   in Loop: Header=BB30_12 Depth=1
	incl	%r14d
	cmpl	%r12d, %r14d
	movsd	.LCPI30_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI30_1(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm4, %xmm4
	movsd	.LCPI30_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI30_3(%rip), %xmm6  # xmm6 = mem[0],zero
	jl	.LBB30_12
# BB#10:
	movl	$1, %ebp
	jmp	.LBB30_19
.LBB30_8:
	movl	$1, %ebp
.LBB30_19:                              # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_20:                              # %cond.false.i
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$471, %edx              # imm = 0x1D7
	movl	$.L__PRETTY_FUNCTION__.CubeSize, %ecx
	callq	__assert_fail
.Lfunc_end30:
	.size	cmsSliceSpaceFloat, .Lfunc_end30-cmsSliceSpaceFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI31_0:
	.long	2016570400              # 0x78326c20
	.long	2016570400              # 0x78326c20
	.long	3                       # 0x3
	.long	3                       # 0x3
	.text
	.globl	_cmsStageAllocLab2XYZ
	.align	16, 0x90
	.type	_cmsStageAllocLab2XYZ,@function
_cmsStageAllocLab2XYZ:                  # @_cmsStageAllocLab2XYZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$64, %esi
	callq	_cmsMallocZero
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB31_2
# BB#1:                                 # %if.end.i
	movq	%rbx, (%rax)
	movaps	.LCPI31_0(%rip), %xmm0  # xmm0 = [2016570400,2016570400,3,3]
	movups	%xmm0, 8(%rax)
	movq	$EvaluateLab2XYZ, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	%rax, %rcx
.LBB31_2:                               # %_cmsStageAllocPlaceholder.exit
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end31:
	.size	_cmsStageAllocLab2XYZ, .Lfunc_end31-_cmsStageAllocLab2XYZ
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4636737291354636288     # double 100
.LCPI32_3:
	.quad	4611685880988434432     # double 1.999969482421875
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI32_1:
	.quad	4643176031446892544     # double 2.550000e+02
	.quad	4643176031446892544     # double 2.550000e+02
.LCPI32_2:
	.quad	-4584664420663164928    # double -1.280000e+02
	.quad	-4584664420663164928    # double -1.280000e+02
	.text
	.align	16, 0x90
	.type	EvaluateLab2XYZ,@function
EvaluateLab2XYZ:                        # @EvaluateLab2XYZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp201:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp202:
	.cfi_def_cfa_offset 64
.Ltmp203:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI32_0(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	cvtps2pd	4(%rdi), %xmm0
	mulpd	.LCPI32_1(%rip), %xmm0
	addpd	.LCPI32_2(%rip), %xmm0
	movupd	%xmm0, 32(%rsp)
	leaq	(%rsp), %rsi
	leaq	24(%rsp), %rdx
	xorl	%edi, %edi
	callq	cmsLab2XYZ
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI32_3(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rbx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end32:
	.size	EvaluateLab2XYZ, .Lfunc_end32-EvaluateLab2XYZ
	.cfi_endproc

	.globl	_cmsStageAllocLabV2ToV4curves
	.align	16, 0x90
	.type	_cmsStageAllocLabV2ToV4curves,@function
_cmsStageAllocLabV2ToV4curves:          # @_cmsStageAllocLabV2ToV4curves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp204:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp205:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp207:
	.cfi_def_cfa_offset 64
.Ltmp208:
	.cfi_offset %rbx, -32
.Ltmp209:
	.cfi_offset %r14, -24
.Ltmp210:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$258, %esi              # imm = 0x102
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, %rbx
	movq	%rbx, (%rsp)
	movl	$258, %esi              # imm = 0x102
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, %r15
	movq	%r15, 8(%rsp)
	movl	$258, %esi              # imm = 0x102
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 16(%rsp)
	testq	%rbx, %rbx
	je	.LBB33_4
# BB#1:                                 # %for.cond.7.preheader
	movq	48(%rbx), %rcx
	movq	$-16842495, %rdx        # imm = 0xFFFFFFFFFEFF0101
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB33_2:                               # %for.body.9
                                        # =>This Inner Loop Header: Depth=1
	leal	16842623(%rdx), %edi
	shrl	$8, %edi
	movw	%di, (%rsi)
	addq	$2, %rsi
	addq	$65535, %rdx            # imm = 0xFFFF
	jne	.LBB33_2
# BB#3:                                 # %for.end
	movw	$-1, 514(%rcx)
	testq	%r15, %r15
	je	.LBB33_4
# BB#7:                                 # %for.cond.7.preheader.1
	movq	48(%r15), %rcx
	movq	$-16842495, %rdx        # imm = 0xFFFFFFFFFEFF0101
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB33_8:                               # %for.body.9.1
                                        # =>This Inner Loop Header: Depth=1
	leal	16842623(%rdx), %edi
	shrl	$8, %edi
	movw	%di, (%rsi)
	addq	$2, %rsi
	addq	$65535, %rdx            # imm = 0xFFFF
	jne	.LBB33_8
# BB#9:                                 # %for.end.1
	movw	$-1, 514(%rcx)
	testq	%rax, %rax
	je	.LBB33_4
# BB#10:                                # %for.cond.7.preheader.2
	movq	48(%rax), %rax
	movq	$-16842495, %rcx        # imm = 0xFFFFFFFFFEFF0101
	movq	%rax, %rdx
	.align	16, 0x90
.LBB33_11:                              # %for.body.9.2
                                        # =>This Inner Loop Header: Depth=1
	leal	16842623(%rcx), %esi
	shrl	$8, %esi
	movw	%si, (%rdx)
	addq	$2, %rdx
	addq	$65535, %rcx            # imm = 0xFFFF
	jne	.LBB33_11
# BB#12:                                # %for.end.2
	movw	$-1, 514(%rax)
	leaq	(%rsp), %r15
	movl	$3, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	cmsStageAllocToneCurves
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	cmsFreeToneCurveTriple
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB33_6
# BB#5:                                 # %if.end.27
	movl	$840971296, 12(%rbx)    # imm = 0x32203420
	movq	%rbx, %rax
	jmp	.LBB33_6
.LBB33_4:                               # %if.then
	leaq	(%rsp), %rdi
	callq	cmsFreeToneCurveTriple
	xorl	%eax, %eax
.LBB33_6:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end33:
	.size	_cmsStageAllocLabV2ToV4curves, .Lfunc_end33-_cmsStageAllocLabV2ToV4curves
	.cfi_endproc

	.globl	_cmsStageAllocLabV2ToV4
	.align	16, 0x90
	.type	_cmsStageAllocLabV2ToV4,@function
_cmsStageAllocLabV2ToV4:                # @_cmsStageAllocLabV2ToV4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp211:
	.cfi_def_cfa_offset 16
	movl	$3, %esi
	movl	$3, %edx
	movl	$_cmsStageAllocLabV2ToV4.V2ToV4, %ecx
	xorl	%r8d, %r8d
	callq	cmsStageAllocMatrix
	testq	%rax, %rax
	je	.LBB34_2
# BB#1:                                 # %if.end
	movl	$840971296, 12(%rax)    # imm = 0x32203420
.LBB34_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end34:
	.size	_cmsStageAllocLabV2ToV4, .Lfunc_end34-_cmsStageAllocLabV2ToV4
	.cfi_endproc

	.globl	_cmsStageAllocLabV4ToV2
	.align	16, 0x90
	.type	_cmsStageAllocLabV4ToV2,@function
_cmsStageAllocLabV4ToV2:                # @_cmsStageAllocLabV4ToV2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp212:
	.cfi_def_cfa_offset 16
	movl	$3, %esi
	movl	$3, %edx
	movl	$_cmsStageAllocLabV4ToV2.V4ToV2, %ecx
	xorl	%r8d, %r8d
	callq	cmsStageAllocMatrix
	testq	%rax, %rax
	je	.LBB35_2
# BB#1:                                 # %if.end
	movl	$874525216, 12(%rax)    # imm = 0x34203220
.LBB35_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end35:
	.size	_cmsStageAllocLabV4ToV2, .Lfunc_end35-_cmsStageAllocLabV4ToV2
	.cfi_endproc

	.globl	_cmsStageNormalizeFromLabFloat
	.align	16, 0x90
	.type	_cmsStageNormalizeFromLabFloat,@function
_cmsStageNormalizeFromLabFloat:         # @_cmsStageNormalizeFromLabFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp213:
	.cfi_def_cfa_offset 16
	movl	$3, %esi
	movl	$3, %edx
	movl	$_cmsStageNormalizeFromLabFloat.a1, %ecx
	movl	$_cmsStageNormalizeFromLabFloat.o1, %r8d
	callq	cmsStageAllocMatrix
	testq	%rax, %rax
	je	.LBB36_2
# BB#1:                                 # %if.end
	movl	$1681026080, 12(%rax)   # imm = 0x64326C20
.LBB36_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end36:
	.size	_cmsStageNormalizeFromLabFloat, .Lfunc_end36-_cmsStageNormalizeFromLabFloat
	.cfi_endproc

	.globl	_cmsStageNormalizeFromXyzFloat
	.align	16, 0x90
	.type	_cmsStageNormalizeFromXyzFloat,@function
_cmsStageNormalizeFromXyzFloat:         # @_cmsStageNormalizeFromXyzFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp214:
	.cfi_def_cfa_offset 16
	movl	$3, %esi
	movl	$3, %edx
	movl	$_cmsStageNormalizeFromXyzFloat.a1, %ecx
	xorl	%r8d, %r8d
	callq	cmsStageAllocMatrix
	testq	%rax, %rax
	je	.LBB37_2
# BB#1:                                 # %if.end
	movl	$1681029152, 12(%rax)   # imm = 0x64327820
.LBB37_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end37:
	.size	_cmsStageNormalizeFromXyzFloat, .Lfunc_end37-_cmsStageNormalizeFromXyzFloat
	.cfi_endproc

	.globl	_cmsStageNormalizeToLabFloat
	.align	16, 0x90
	.type	_cmsStageNormalizeToLabFloat,@function
_cmsStageNormalizeToLabFloat:           # @_cmsStageNormalizeToLabFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp215:
	.cfi_def_cfa_offset 16
	movl	$3, %esi
	movl	$3, %edx
	movl	$_cmsStageNormalizeToLabFloat.a1, %ecx
	movl	$_cmsStageNormalizeToLabFloat.o1, %r8d
	callq	cmsStageAllocMatrix
	testq	%rax, %rax
	je	.LBB38_2
# BB#1:                                 # %if.end
	movl	$1815241760, 12(%rax)   # imm = 0x6C326420
.LBB38_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end38:
	.size	_cmsStageNormalizeToLabFloat, .Lfunc_end38-_cmsStageNormalizeToLabFloat
	.cfi_endproc

	.globl	_cmsStageNormalizeToXyzFloat
	.align	16, 0x90
	.type	_cmsStageNormalizeToXyzFloat,@function
_cmsStageNormalizeToXyzFloat:           # @_cmsStageNormalizeToXyzFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp216:
	.cfi_def_cfa_offset 16
	movl	$3, %esi
	movl	$3, %edx
	movl	$_cmsStageNormalizeToXyzFloat.a1, %ecx
	xorl	%r8d, %r8d
	callq	cmsStageAllocMatrix
	testq	%rax, %rax
	je	.LBB39_2
# BB#1:                                 # %if.end
	movl	$2016568352, 12(%rax)   # imm = 0x78326420
.LBB39_2:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end39:
	.size	_cmsStageNormalizeToXyzFloat, .Lfunc_end39-_cmsStageNormalizeToXyzFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI40_0:
	.long	1815246880              # 0x6c327820
	.long	1815246880              # 0x6c327820
	.long	3                       # 0x3
	.long	3                       # 0x3
	.text
	.globl	_cmsStageAllocXYZ2Lab
	.align	16, 0x90
	.type	_cmsStageAllocXYZ2Lab,@function
_cmsStageAllocXYZ2Lab:                  # @_cmsStageAllocXYZ2Lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$64, %esi
	callq	_cmsMallocZero
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB40_2
# BB#1:                                 # %if.end.i
	movq	%rbx, (%rax)
	movaps	.LCPI40_0(%rip), %xmm0  # xmm0 = [1815246880,1815246880,3,3]
	movups	%xmm0, 8(%rax)
	movq	$EvaluateXYZ2Lab, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	%rax, %rcx
.LBB40_2:                               # %_cmsStageAllocPlaceholder.exit
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end40:
	.size	_cmsStageAllocXYZ2Lab, .Lfunc_end40-_cmsStageAllocXYZ2Lab
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI41_0:
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_1:
	.quad	4611685880988434432     # double 1.999969482421875
.LCPI41_2:
	.quad	4636737291354636288     # double 100
.LCPI41_3:
	.quad	4638707616191610880     # double 128
.LCPI41_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	EvaluateXYZ2Lab,@function
EvaluateXYZ2Lab:                        # @EvaluateXYZ2Lab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp219:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp220:
	.cfi_def_cfa_offset 64
.Ltmp221:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cvtps2pd	(%rdi), %xmm0
	mulpd	.LCPI41_0(%rip), %xmm0
	movapd	%xmm0, (%rsp)
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI41_1(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	leaq	24(%rsp), %rsi
	leaq	(%rsp), %rdx
	xorl	%edi, %edi
	callq	cmsXYZ2Lab
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	.LCPI41_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	movsd	.LCPI41_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	.LCPI41_4(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rbx)
	addsd	40(%rsp), %xmm0
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end41:
	.size	EvaluateXYZ2Lab, .Lfunc_end41-EvaluateXYZ2Lab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI42_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	_cmsStageAllocLabPrelin
	.align	16, 0x90
	.type	_cmsStageAllocLabPrelin,@function
_cmsStageAllocLabPrelin:                # @_cmsStageAllocLabPrelin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 64
.Ltmp225:
	.cfi_offset %rbx, -24
.Ltmp226:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movabsq	$4612586738352862003, %rax # imm = 0x4003333333333333
	movq	%rax, 8(%rsp)
	movsd	.LCPI42_0(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	cmsBuildGamma
	movq	%rax, 16(%rsp)
	leaq	8(%rsp), %r14
	movl	$108, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	cmsBuildParametricToneCurve
	movq	%rax, 24(%rsp)
	movl	$108, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	cmsBuildParametricToneCurve
	movq	%rax, 32(%rsp)
	leaq	16(%rsp), %rdx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	cmsStageAllocToneCurves
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end42:
	.size	_cmsStageAllocLabPrelin, .Lfunc_end42-_cmsStageAllocLabPrelin
	.cfi_endproc

	.globl	cmsStageInputChannels
	.align	16, 0x90
	.type	cmsStageInputChannels,@function
cmsStageInputChannels:                  # @cmsStageInputChannels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	16(%rdi), %eax
	retq
.Lfunc_end43:
	.size	cmsStageInputChannels, .Lfunc_end43-cmsStageInputChannels
	.cfi_endproc

	.globl	cmsStageOutputChannels
	.align	16, 0x90
	.type	cmsStageOutputChannels,@function
cmsStageOutputChannels:                 # @cmsStageOutputChannels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	20(%rdi), %eax
	retq
.Lfunc_end44:
	.size	cmsStageOutputChannels, .Lfunc_end44-cmsStageOutputChannels
	.cfi_endproc

	.globl	cmsStageType
	.align	16, 0x90
	.type	cmsStageType,@function
cmsStageType:                           # @cmsStageType
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %eax
	retq
.Lfunc_end45:
	.size	cmsStageType, .Lfunc_end45-cmsStageType
	.cfi_endproc

	.globl	cmsStageData
	.align	16, 0x90
	.type	cmsStageData,@function
cmsStageData:                           # @cmsStageData
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rax
	retq
.Lfunc_end46:
	.size	cmsStageData, .Lfunc_end46-cmsStageData
	.cfi_endproc

	.globl	cmsStageNext
	.align	16, 0x90
	.type	cmsStageNext,@function
cmsStageNext:                           # @cmsStageNext
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rdi), %rax
	retq
.Lfunc_end47:
	.size	cmsStageNext, .Lfunc_end47-cmsStageNext
	.cfi_endproc

	.globl	cmsStageDup
	.align	16, 0x90
	.type	cmsStageDup,@function
cmsStageDup:                            # @cmsStageDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp228:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp229:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp230:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp231:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp232:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp233:
	.cfi_def_cfa_offset 96
.Ltmp234:
	.cfi_offset %rbx, -56
.Ltmp235:
	.cfi_offset %r12, -48
.Ltmp236:
	.cfi_offset %r13, -40
.Ltmp237:
	.cfi_offset %r14, -32
.Ltmp238:
	.cfi_offset %r15, -24
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB48_8
# BB#1:                                 # %if.end
	movq	(%rbx), %r15
	movl	8(%rbx), %ebp
	movl	16(%rbx), %r12d
	movl	20(%rbx), %r13d
	movups	24(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movq	40(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$64, %esi
	movq	%r15, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB48_8
# BB#2:                                 # %_cmsStageAllocPlaceholder.exit
	movq	%r15, (%r14)
	movl	%ebp, 8(%r14)
	movl	%ebp, 12(%r14)
	movl	%r12d, 16(%r14)
	movl	%r13d, 20(%r14)
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movups	%xmm0, 24(%r14)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 40(%r14)
	movq	$0, 48(%r14)
	movl	12(%rbx), %eax
	movl	%eax, 12(%r14)
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB48_7
# BB#3:                                 # %if.then.6
	movq	%rbx, %rdi
	callq	*%rax
	movq	%rax, 48(%r14)
	testq	%rax, %rax
	movq	%r14, %rax
	jne	.LBB48_8
# BB#4:                                 # %if.then.11
	movq	40(%r14), %rax
	testq	%rax, %rax
	je	.LBB48_6
# BB#5:                                 # %if.then.i
	movq	%r14, %rdi
	callq	*%rax
.LBB48_6:                               # %cmsStageFree.exit
	movq	(%r14), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
	jmp	.LBB48_8
.LBB48_7:                               # %if.else
	movq	$0, 48(%r14)
	movq	%r14, %rax
.LBB48_8:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	cmsStageDup, .Lfunc_end48-cmsStageDup
	.cfi_endproc

	.globl	cmsPipelineAlloc
	.align	16, 0x90
	.type	cmsPipelineAlloc,@function
cmsPipelineAlloc:                       # @cmsPipelineAlloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp241:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp242:
	.cfi_def_cfa_offset 32
.Ltmp243:
	.cfi_offset %rbx, -32
.Ltmp244:
	.cfi_offset %r14, -24
.Ltmp245:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	%ebp, %eax
	orl	%ebx, %eax
	xorl	%ecx, %ecx
	cmpl	$15, %eax
	ja	.LBB49_6
# BB#1:                                 # %if.end
	movl	$72, %esi
	movq	%r14, %rdi
	callq	_cmsMallocZero
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB49_6
# BB#2:                                 # %if.end.4
	movl	%ebx, 8(%rax)
	movl	%ebp, 12(%rax)
	movq	$_LUTeval16, 24(%rax)
	movq	$_LUTevalFloat, 32(%rax)
	movq	$0, 48(%rax)
	movq	$0, 40(%rax)
	movq	%rax, 16(%rax)
	movq	%r14, 56(%rax)
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	movq	%rax, %rcx
	je	.LBB49_6
# BB#3:
	movq	%rdx, %rsi
	.align	16, 0x90
.LBB49_4:                               # %for.cond.i.for.cond.i_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	movq	56(%rcx), %rsi
	testq	%rsi, %rsi
	jne	.LBB49_4
# BB#5:                                 # %if.then.6.i
	movl	16(%rdx), %edx
	movl	%edx, 8(%rax)
	movl	20(%rcx), %ecx
	movl	%ecx, 12(%rax)
	movq	%rax, %rcx
.LBB49_6:                               # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end49:
	.size	cmsPipelineAlloc, .Lfunc_end49-cmsPipelineAlloc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI50_0:
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
	.long	1199570688              # float 6.553500e+04
.LCPI50_2:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
.LCPI50_3:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI50_4:
	.quad	-4548635898522107904    # double -3.276700e+04
	.quad	-4548635898522107904    # double -3.276700e+04
.LCPI50_5:
	.quad	4771563805199040512     # double 1.030792e+11
	.quad	4771563805199040512     # double 1.030792e+11
.LCPI50_6:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI50_7:
	.quad	32767                   # 0x7fff
	.quad	32767                   # 0x7fff
.LCPI50_8:
	.quad	65535                   # 0xffff
	.quad	65535                   # 0xffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI50_1:
	.long	1199570688              # float 65535
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_9:
	.quad	4679239875398991872     # double 65535
.LCPI50_10:
	.quad	4602678819172646912     # double 0.5
.LCPI50_11:
	.quad	-4548635898522107904    # double -32767
.LCPI50_12:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	_LUTeval16,@function
_LUTeval16:                             # @_LUTeval16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp247:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp248:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp249:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp250:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 56
	subq	$1032, %rsp             # imm = 0x408
.Ltmp252:
	.cfi_def_cfa_offset 1088
.Ltmp253:
	.cfi_offset %rbx, -56
.Ltmp254:
	.cfi_offset %r12, -48
.Ltmp255:
	.cfi_offset %r13, -40
.Ltmp256:
	.cfi_offset %r14, -32
.Ltmp257:
	.cfi_offset %r15, -24
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movabsq	$8589934584, %r12       # imm = 0x1FFFFFFF8
	movl	8(%r15), %eax
	testl	%eax, %eax
	je	.LBB50_11
# BB#1:                                 # %for.body.i.preheader
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r8
	xorl	%esi, %esi
	movq	%r8, %r9
	andq	%r12, %r9
	je	.LBB50_8
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rdx), %rsi
	andq	%r12, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rcx
	shrq	$3, %rcx
	xorl	%ebp, %ebp
	btq	$3, %rsi
	jb	.LBB50_4
# BB#3:                                 # %vector.body.prol
	movq	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	cvtdq2ps	%xmm0, %xmm0
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	cvtdq2ps	%xmm1, %xmm1
	movaps	.LCPI50_0(%rip), %xmm2  # xmm2 = [6.553500e+04,6.553500e+04,6.553500e+04,6.553500e+04]
	divps	%xmm2, %xmm0
	divps	%xmm2, %xmm1
	movaps	%xmm0, (%rsp)
	movaps	%xmm1, 16(%rsp)
	movl	$8, %ebp
.LBB50_4:                               # %vector.body.preheader.split
	testq	%rcx, %rcx
	je	.LBB50_7
# BB#5:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r12, %rdx
	subq	%rbp, %rdx
	leaq	24(%rdi,%rbp,2), %rbx
	leaq	48(%rsp,%rbp,4), %rcx
	xorps	%xmm0, %xmm0
	movaps	.LCPI50_0(%rip), %xmm1  # xmm1 = [6.553500e+04,6.553500e+04,6.553500e+04,6.553500e+04]
	.align	16, 0x90
.LBB50_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbx), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbx), %xmm3        # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	cvtdq2ps	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	cvtdq2ps	%xmm3, %xmm3
	divps	%xmm1, %xmm2
	divps	%xmm1, %xmm3
	movaps	%xmm2, -48(%rcx)
	movaps	%xmm3, -32(%rcx)
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	movq	(%rbx), %xmm3           # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	cvtdq2ps	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	cvtdq2ps	%xmm3, %xmm3
	divps	%xmm1, %xmm2
	divps	%xmm1, %xmm3
	movaps	%xmm2, -16(%rcx)
	movaps	%xmm3, (%rcx)
	addq	$32, %rbx
	addq	$64, %rcx
	addq	$-16, %rdx
	jne	.LBB50_6
.LBB50_7:
	movq	%r9, %rsi
.LBB50_8:                               # %middle.block
	cmpq	%rsi, %r8
	je	.LBB50_11
# BB#9:                                 # %for.body.i.preheader58
	leaq	(%rsp,%rsi,4), %rcx
	subl	%esi, %eax
	leaq	(%rdi,%rsi,2), %rdx
	movss	.LCPI50_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB50_10:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rcx)
	addq	$4, %rcx
	addq	$2, %rdx
	decl	%eax
	jne	.LBB50_10
.LBB50_11:                              # %From16ToFloat.exit
	movq	(%r15), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	movl	$0, %r13d
	je	.LBB50_13
	.align	16, 0x90
.LBB50_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebp, %rax
	xorl	$1, %ebp
	shlq	$9, %rax
	leaq	(%rsp,%rax), %rdi
	movslq	%ebp, %r13
	movq	%r13, %rax
	shlq	$9, %rax
	leaq	(%rsp,%rax), %rsi
	movq	%rbx, %rdx
	callq	*24(%rbx)
	movq	56(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB50_12
.LBB50_13:                              # %for.end
	movl	12(%r15), %eax
	testl	%eax, %eax
	je	.LBB50_25
# BB#14:                                # %for.body.i.17.preheader
	leal	-1(%rax), %edi
	leaq	1(%rdi), %rcx
	addq	$6, %r12
	xorl	%edx, %edx
	andq	%rcx, %r12
	je	.LBB50_18
# BB#15:                                # %vector.body33.preheader
	movq	%r13, %rdx
	shlq	$9, %rdx
	leaq	(%rsp,%rdx), %rdx
	incq	%rdi
	movabsq	$8589934590, %rsi       # imm = 0x1FFFFFFFE
	andq	%rdi, %rsi
	movapd	.LCPI50_2(%rip), %xmm3  # xmm3 = [6.553500e+04,6.553500e+04]
	movapd	.LCPI50_3(%rip), %xmm8  # xmm8 = [5.000000e-01,5.000000e-01]
	xorpd	%xmm9, %xmm9
	movapd	.LCPI50_4(%rip), %xmm10 # xmm10 = [-3.276700e+04,-3.276700e+04]
	movapd	.LCPI50_5(%rip), %xmm4  # xmm4 = [1.030792e+11,1.030792e+11]
	movapd	.LCPI50_6(%rip), %xmm5  # xmm5 = [4294967295,4294967295]
	movdqa	.LCPI50_7(%rip), %xmm6  # xmm6 = [32767,32767]
	movapd	.LCPI50_8(%rip), %xmm7  # xmm7 = [65535,65535]
	movq	%r14, %rdi
	.align	16, 0x90
.LBB50_16:                              # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	(%rdx), %xmm1
	mulpd	%xmm3, %xmm1
	addpd	%xmm8, %xmm1
	movapd	%xmm1, %xmm2
	cmpnlepd	%xmm9, %xmm2
	movapd	%xmm3, %xmm0
	cmplepd	%xmm1, %xmm0
	addpd	%xmm10, %xmm1
	addpd	%xmm4, %xmm1
	andpd	%xmm5, %xmm1
	psrlq	$16, %xmm1
	paddq	%xmm6, %xmm1
	pand	%xmm2, %xmm1
	andpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	andnpd	%xmm1, %xmm2
	andpd	%xmm7, %xmm0
	orpd	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	movd	%xmm0, (%rdi)
	addq	$8, %rdx
	addq	$4, %rdi
	addq	$-2, %rsi
	jne	.LBB50_16
# BB#17:
	movq	%r12, %rdx
.LBB50_18:                              # %middle.block34
	cmpq	%rdx, %rcx
	je	.LBB50_25
# BB#19:                                # %for.body.i.17.preheader57
	shlq	$9, %r13
	leaq	(%rsp,%r13), %rcx
	leaq	(%rcx,%rdx,4), %rcx
	subl	%edx, %eax
	leaq	(%r14,%rdx,2), %rdx
	movsd	.LCPI50_9(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI50_10(%rip), %xmm1 # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	.LCPI50_11(%rip), %xmm3 # xmm3 = mem[0],zero
	movsd	.LCPI50_12(%rip), %xmm4 # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB50_20:                              # %for.body.i.17
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	ucomisd	%xmm5, %xmm2
	jae	.LBB50_21
# BB#22:                                # %if.end.i.i
                                        #   in Loop: Header=BB50_20 Depth=1
	movw	$-1, %si
	ucomisd	.LCPI50_9(%rip), %xmm5
	jae	.LBB50_24
# BB#23:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB50_20 Depth=1
	addsd	%xmm3, %xmm5
	addsd	%xmm4, %xmm5
	movd	%xmm5, %rsi
	shrl	$16, %esi
	addl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB50_24
	.align	16, 0x90
.LBB50_21:                              #   in Loop: Header=BB50_20 Depth=1
	xorl	%esi, %esi
.LBB50_24:                              # %_cmsQuickSaturateWord.exit.i
                                        #   in Loop: Header=BB50_20 Depth=1
	movw	%si, (%rdx)
	addq	$4, %rcx
	addq	$2, %rdx
	decl	%eax
	jne	.LBB50_20
.LBB50_25:                              # %FromFloatTo16.exit
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	_LUTeval16, .Lfunc_end50-_LUTeval16
	.cfi_endproc

	.align	16, 0x90
	.type	_LUTevalFloat,@function
_LUTevalFloat:                          # @_LUTevalFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp259:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp260:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp261:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp262:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp263:
	.cfi_def_cfa_offset 48
	subq	$1024, %rsp             # imm = 0x400
.Ltmp264:
	.cfi_def_cfa_offset 1072
.Ltmp265:
	.cfi_offset %rbx, -48
.Ltmp266:
	.cfi_offset %r12, -40
.Ltmp267:
	.cfi_offset %r13, -32
.Ltmp268:
	.cfi_offset %r14, -24
.Ltmp269:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rax
	movl	8(%r15), %edx
	shlq	$2, %rdx
	leaq	(%rsp), %rdi
	movq	%rax, %rsi
	callq	memmove
	movq	(%r15), %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	movl	$0, %r13d
	je	.LBB51_2
	.align	16, 0x90
.LBB51_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %rax
	xorl	$1, %r12d
	shlq	$9, %rax
	leaq	(%rsp,%rax), %rdi
	movslq	%r12d, %r13
	movq	%r13, %rax
	shlq	$9, %rax
	leaq	(%rsp,%rax), %rsi
	movq	%rbx, %rdx
	callq	*24(%rbx)
	movq	56(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB51_1
.LBB51_2:                               # %for.end
	shlq	$9, %r13
	leaq	(%rsp,%r13), %rsi
	movl	12(%r15), %edx
	shlq	$2, %rdx
	movq	%r14, %rdi
	callq	memmove
	addq	$1024, %rsp             # imm = 0x400
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end51:
	.size	_LUTevalFloat, .Lfunc_end51-_LUTevalFloat
	.cfi_endproc

	.globl	cmsGetPipelineContextID
	.align	16, 0x90
	.type	cmsGetPipelineContextID,@function
cmsGetPipelineContextID:                # @cmsGetPipelineContextID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp270:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB52_2
# BB#1:                                 # %cond.end
	movq	56(%rdi), %rax
	popq	%rdx
	retq
.LBB52_2:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1358, %edx             # imm = 0x54E
	movl	$.L__PRETTY_FUNCTION__.cmsGetPipelineContextID, %ecx
	callq	__assert_fail
.Lfunc_end52:
	.size	cmsGetPipelineContextID, .Lfunc_end52-cmsGetPipelineContextID
	.cfi_endproc

	.globl	cmsPipelineInputChannels
	.align	16, 0x90
	.type	cmsPipelineInputChannels,@function
cmsPipelineInputChannels:               # @cmsPipelineInputChannels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp271:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB53_2
# BB#1:                                 # %cond.end
	movl	8(%rdi), %eax
	popq	%rdx
	retq
.LBB53_2:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1364, %edx             # imm = 0x554
	movl	$.L__PRETTY_FUNCTION__.cmsPipelineInputChannels, %ecx
	callq	__assert_fail
.Lfunc_end53:
	.size	cmsPipelineInputChannels, .Lfunc_end53-cmsPipelineInputChannels
	.cfi_endproc

	.globl	cmsPipelineOutputChannels
	.align	16, 0x90
	.type	cmsPipelineOutputChannels,@function
cmsPipelineOutputChannels:              # @cmsPipelineOutputChannels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp272:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB54_2
# BB#1:                                 # %cond.end
	movl	12(%rdi), %eax
	popq	%rdx
	retq
.LBB54_2:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1370, %edx             # imm = 0x55A
	movl	$.L__PRETTY_FUNCTION__.cmsPipelineOutputChannels, %ecx
	callq	__assert_fail
.Lfunc_end54:
	.size	cmsPipelineOutputChannels, .Lfunc_end54-cmsPipelineOutputChannels
	.cfi_endproc

	.globl	cmsPipelineFree
	.align	16, 0x90
	.type	cmsPipelineFree,@function
cmsPipelineFree:                        # @cmsPipelineFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp273:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp274:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp275:
	.cfi_def_cfa_offset 32
.Ltmp276:
	.cfi_offset %rbx, -32
.Ltmp277:
	.cfi_offset %r14, -24
.Ltmp278:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB55_8
# BB#1:                                 # %if.end
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB55_5
	.align	16, 0x90
.LBB55_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	56(%rbx), %r15
	testq	%rax, %rax
	je	.LBB55_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB55_2 Depth=1
	movq	%rbx, %rdi
	callq	*%rax
.LBB55_4:                               # %cmsStageFree.exit
                                        #   in Loop: Header=BB55_2 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	testq	%r15, %r15
	movq	%r15, %rbx
	jne	.LBB55_2
.LBB55_5:                               # %for.end
	movq	40(%r14), %rax
	testq	%rax, %rax
	je	.LBB55_7
# BB#6:                                 # %if.then.3
	movq	16(%r14), %rsi
	movq	56(%r14), %rdi
	callq	*%rax
.LBB55_7:                               # %if.end.5
	movq	56(%r14), %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_cmsFree                # TAILCALL
.LBB55_8:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end55:
	.size	cmsPipelineFree, .Lfunc_end55-cmsPipelineFree
	.cfi_endproc

	.globl	cmsPipelineEval16
	.align	16, 0x90
	.type	cmsPipelineEval16,@function
cmsPipelineEval16:                      # @cmsPipelineEval16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp279:
	.cfi_def_cfa_offset 16
	testq	%rdx, %rdx
	je	.LBB56_1
# BB#2:                                 # %cond.end
	movq	16(%rdx), %rax
	movq	24(%rdx), %rcx
	movq	%rax, %rdx
	popq	%rax
	jmpq	*%rcx                   # TAILCALL
.LBB56_1:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1398, %edx             # imm = 0x576
	movl	$.L__PRETTY_FUNCTION__.cmsPipelineEval16, %ecx
	callq	__assert_fail
.Lfunc_end56:
	.size	cmsPipelineEval16, .Lfunc_end56-cmsPipelineEval16
	.cfi_endproc

	.globl	cmsPipelineEvalFloat
	.align	16, 0x90
	.type	cmsPipelineEvalFloat,@function
cmsPipelineEvalFloat:                   # @cmsPipelineEvalFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp280:
	.cfi_def_cfa_offset 16
	testq	%rdx, %rdx
	je	.LBB57_1
# BB#2:                                 # %cond.end
	movq	32(%rdx), %rax
	popq	%rcx
	jmpq	*%rax                   # TAILCALL
.LBB57_1:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1406, %edx             # imm = 0x57E
	movl	$.L__PRETTY_FUNCTION__.cmsPipelineEvalFloat, %ecx
	callq	__assert_fail
.Lfunc_end57:
	.size	cmsPipelineEvalFloat, .Lfunc_end57-cmsPipelineEvalFloat
	.cfi_endproc

	.globl	cmsPipelineDup
	.align	16, 0x90
	.type	cmsPipelineDup,@function
cmsPipelineDup:                         # @cmsPipelineDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp281:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp282:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp283:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp284:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp285:
	.cfi_def_cfa_offset 48
.Ltmp286:
	.cfi_offset %rbx, -48
.Ltmp287:
	.cfi_offset %r12, -40
.Ltmp288:
	.cfi_offset %r14, -32
.Ltmp289:
	.cfi_offset %r15, -24
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB58_27
# BB#1:                                 # %if.end
	movl	8(%r15), %ebp
	movl	12(%r15), %ebx
	movl	%ebx, %ecx
	orl	%ebp, %ecx
	xorl	%eax, %eax
	cmpl	$15, %ecx
	ja	.LBB58_27
# BB#2:                                 # %if.end.i
	movq	56(%r15), %r12
	movl	$72, %esi
	movq	%r12, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB58_27
# BB#3:                                 # %if.end.4.i
	movl	%ebp, 8(%r14)
	movl	%ebx, 12(%r14)
	movq	$_LUTeval16, 24(%r14)
	movq	$_LUTevalFloat, 32(%r14)
	movq	$0, 48(%r14)
	movq	$0, 40(%r14)
	movq	%r14, 16(%r14)
	movq	%r12, 56(%r14)
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB58_7
# BB#4:
	movq	%rax, %rdx
	.align	16, 0x90
.LBB58_5:                               # %for.cond.i.for.cond.i_crit_edge.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	56(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.LBB58_5
# BB#6:                                 # %if.then.6.i.i
	movl	16(%rax), %eax
	movl	%eax, 8(%r14)
	movl	20(%rcx), %eax
	movl	%eax, 12(%r14)
.LBB58_7:                               # %if.end.3
	movq	(%r15), %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB58_21
# BB#8:
	movl	$1, %ebp
	.align	16, 0x90
.LBB58_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	cmsStageDup
	testq	%rax, %rax
	je	.LBB58_10
# BB#17:                                # %if.end.8
                                        #   in Loop: Header=BB58_9 Depth=1
	testl	%ebp, %ebp
	je	.LBB58_19
# BB#18:                                # %if.then.9
                                        #   in Loop: Header=BB58_9 Depth=1
	movq	%rax, (%r14)
	jmp	.LBB58_20
	.align	16, 0x90
.LBB58_19:                              # %if.else
                                        #   in Loop: Header=BB58_9 Depth=1
	movq	%rax, 56(%r12)
.LBB58_20:                              # %if.end.11
                                        #   in Loop: Header=BB58_9 Depth=1
	movq	56(%rbx), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB58_9
.LBB58_21:                              # %for.end
	movups	24(%r15), %xmm0
	movups	%xmm0, 24(%r14)
	movdqu	40(%r15), %xmm0
	movdqu	%xmm0, 40(%r14)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rax
	testq	%rax, %rax
	je	.LBB58_23
# BB#22:                                # %if.then.19
	movq	16(%r15), %rsi
	movq	56(%r15), %rdi
	callq	*%rax
	movq	%rax, 16(%r14)
.LBB58_23:                              # %if.end.24
	movl	64(%r15), %eax
	movl	%eax, 64(%r14)
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	movq	%r14, %rax
	je	.LBB58_27
# BB#24:
	movq	%rcx, %rdx
	.align	16, 0x90
.LBB58_25:                              # %for.cond.i.for.cond.i_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rax
	movq	56(%rax), %rdx
	testq	%rdx, %rdx
	jne	.LBB58_25
# BB#26:                                # %if.then.6.i
	movl	16(%rcx), %ecx
	movl	%ecx, 8(%r14)
	movl	20(%rax), %eax
	movl	%eax, 12(%r14)
	movq	%r14, %rax
	jmp	.LBB58_27
.LBB58_10:                              # %if.end.i.33
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB58_14
	.align	16, 0x90
.LBB58_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rax
	movq	56(%rbx), %rbp
	testq	%rax, %rax
	je	.LBB58_13
# BB#12:                                # %if.then.i.i
                                        #   in Loop: Header=BB58_11 Depth=1
	movq	%rbx, %rdi
	callq	*%rax
.LBB58_13:                              # %cmsStageFree.exit.i
                                        #   in Loop: Header=BB58_11 Depth=1
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.LBB58_11
.LBB58_14:                              # %for.end.i
	movq	40(%r14), %rax
	testq	%rax, %rax
	je	.LBB58_16
# BB#15:                                # %if.then.3.i
	movq	16(%r14), %rsi
	movq	56(%r14), %rdi
	callq	*%rax
.LBB58_16:                              # %cmsPipelineFree.exit
	movq	56(%r14), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB58_27:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	cmsPipelineDup, .Lfunc_end58-cmsPipelineDup
	.cfi_endproc

	.globl	cmsPipelineInsertStage
	.align	16, 0x90
	.type	cmsPipelineInsertStage,@function
cmsPipelineInsertStage:                 # @cmsPipelineInsertStage
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB59_13
# BB#1:                                 # %entry
	testq	%rdx, %rdx
	je	.LBB59_13
# BB#2:                                 # %if.end
	cmpl	$1, %esi
	jne	.LBB59_3
# BB#5:                                 # %sw.bb.3
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB59_14
# BB#6:
	movq	%rax, %rcx
	.align	16, 0x90
.LBB59_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rsi
	movq	56(%rsi), %rcx
	testq	%rcx, %rcx
	jne	.LBB59_7
# BB#8:                                 # %for.end
	movq	%rdx, 56(%rsi)
	movq	$0, 56(%rdx)
	movq	%rax, %rdx
	jmp	.LBB59_9
.LBB59_3:                               # %if.end
	testl	%esi, %esi
	jne	.LBB59_13
# BB#4:                                 # %sw.epilog.thread
	movq	(%rdi), %rax
	movq	%rax, 56(%rdx)
	movq	%rdx, (%rdi)
	jmp	.LBB59_10
.LBB59_14:                              # %if.then.6
	movq	%rdx, (%rdi)
.LBB59_9:                               # %sw.epilog
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB59_13
.LBB59_10:                              # %for.cond.i.for.cond.i_crit_edge.i.lr.ph
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB59_11:                              # %for.cond.i.for.cond.i_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	56(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB59_11
# BB#12:                                # %if.then.6.i
	movl	16(%rdx), %ecx
	movl	%ecx, 8(%rdi)
	movl	20(%rax), %eax
	movl	%eax, 12(%rdi)
	movl	$1, %eax
.LBB59_13:                              # %cleanup
	retq
.Lfunc_end59:
	.size	cmsPipelineInsertStage, .Lfunc_end59-cmsPipelineInsertStage
	.cfi_endproc

	.globl	cmsPipelineUnlinkStage
	.align	16, 0x90
	.type	cmsPipelineUnlinkStage,@function
cmsPipelineUnlinkStage:                 # @cmsPipelineUnlinkStage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp292:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp293:
	.cfi_def_cfa_offset 32
.Ltmp294:
	.cfi_offset %rbx, -24
.Ltmp295:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB60_1
# BB#3:                                 # %if.end.2
	xorl	%ebx, %ebx
	cmpl	$1, %esi
	jne	.LBB60_4
	.align	16, 0x90
.LBB60_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	%rbx, %rsi
	movq	56(%rcx), %rax
	testq	%rax, %rax
	movq	%rcx, %rbx
	jne	.LBB60_6
# BB#7:                                 # %for.end
	testq	%rsi, %rsi
	je	.LBB60_9
# BB#8:                                 # %if.then.11
	movq	$0, 56(%rsi)
	jmp	.LBB60_10
.LBB60_1:                               # %if.then
	testq	%rdx, %rdx
	je	.LBB60_20
# BB#2:                                 # %if.then.1
	movq	$0, (%rdx)
	jmp	.LBB60_20
.LBB60_4:                               # %if.end.2
	testl	%esi, %esi
	jne	.LBB60_11
# BB#5:                                 # %sw.bb
	movq	56(%rax), %rcx
	movq	%rcx, (%r14)
	movq	$0, 56(%rax)
	movq	%rax, %rbx
	jmp	.LBB60_11
.LBB60_9:                               # %if.else
	movq	$0, (%r14)
.LBB60_10:                              # %sw.epilog
	movq	%rcx, %rbx
.LBB60_11:                              # %sw.epilog
	testq	%rdx, %rdx
	je	.LBB60_13
# BB#12:                                # %if.then.16
	movq	%rbx, (%rdx)
	jmp	.LBB60_16
.LBB60_13:                              # %if.else.17
	movq	40(%rbx), %rax
	testq	%rax, %rax
	je	.LBB60_15
# BB#14:                                # %if.then.i
	movq	%rbx, %rdi
	callq	*%rax
.LBB60_15:                              # %cmsStageFree.exit
	movq	(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB60_16:                              # %if.end.18
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB60_20
# BB#17:
	movq	%rax, %rdx
	.align	16, 0x90
.LBB60_18:                              # %for.cond.i.for.cond.i_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	movq	56(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.LBB60_18
# BB#19:                                # %if.then.6.i
	movl	16(%rax), %eax
	movl	%eax, 8(%r14)
	movl	20(%rcx), %eax
	movl	%eax, 12(%r14)
.LBB60_20:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end60:
	.size	cmsPipelineUnlinkStage, .Lfunc_end60-cmsPipelineUnlinkStage
	.cfi_endproc

	.globl	cmsPipelineCat
	.align	16, 0x90
	.type	cmsPipelineCat,@function
cmsPipelineCat:                         # @cmsPipelineCat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp296:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp297:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp298:
	.cfi_def_cfa_offset 32
.Ltmp299:
	.cfi_offset %rbx, -24
.Ltmp300:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	jne	.LBB61_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, (%rsi)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	movl	8(%rsi), %ecx
	movl	%ecx, 8(%r14)
	movl	12(%rsi), %ecx
	movl	%ecx, 12(%r14)
.LBB61_3:                               # %if.end
	movq	(%rsi), %rbx
	jmp	.LBB61_4
	.align	16, 0x90
.LBB61_13:                              # %for.inc
                                        #   in Loop: Header=BB61_4 Depth=1
	movq	56(%rbx), %rbx
.LBB61_4:                               # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_8 Depth 2
                                        #     Child Loop BB61_11 Depth 2
	testq	%rbx, %rbx
	je	.LBB61_14
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB61_4 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageDup
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB61_18
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB61_4 Depth=1
	movq	(%r14), %rcx
	testq	%rcx, %rcx
	movq	%rcx, %rdx
	je	.LBB61_7
	.align	16, 0x90
.LBB61_8:                               # %for.body.i
                                        #   Parent Loop BB61_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rsi
	movq	56(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.LBB61_8
# BB#9:                                 # %for.end.i
                                        #   in Loop: Header=BB61_4 Depth=1
	movq	%rax, 56(%rsi)
	movq	$0, 56(%rax)
	movq	%rcx, %rax
	jmp	.LBB61_10
	.align	16, 0x90
.LBB61_7:                               # %if.then.6.i
                                        #   in Loop: Header=BB61_4 Depth=1
	movq	%rax, (%r14)
.LBB61_10:                              # %sw.epilog.i
                                        #   in Loop: Header=BB61_4 Depth=1
	testq	%rax, %rax
	movq	%rax, %rdx
	je	.LBB61_13
	.align	16, 0x90
.LBB61_11:                              # %for.cond.i.for.cond.i_crit_edge.i.i
                                        #   Parent Loop BB61_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movq	56(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.LBB61_11
# BB#12:                                # %if.then.6.i.i
                                        #   in Loop: Header=BB61_4 Depth=1
	movl	16(%rax), %edx
	movl	%edx, 8(%r14)
	movl	20(%rcx), %ecx
	movl	%ecx, 12(%r14)
	jmp	.LBB61_13
.LBB61_14:                              # %for.end
	movl	$1, %ecx
	testq	%rax, %rax
	je	.LBB61_18
# BB#15:
	movq	%rax, %rsi
	.align	16, 0x90
.LBB61_16:                              # %for.cond.i.for.cond.i_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	movq	56(%rdx), %rsi
	testq	%rsi, %rsi
	jne	.LBB61_16
# BB#17:                                # %if.then.6.i.14
	movl	16(%rax), %eax
	movl	%eax, 8(%r14)
	movl	20(%rdx), %eax
	movl	%eax, 12(%r14)
.LBB61_18:                              # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end61:
	.size	cmsPipelineCat, .Lfunc_end61-cmsPipelineCat
	.cfi_endproc

	.globl	cmsPipelineSetSaveAs8bitsFlag
	.align	16, 0x90
	.type	cmsPipelineSetSaveAs8bitsFlag,@function
cmsPipelineSetSaveAs8bitsFlag:          # @cmsPipelineSetSaveAs8bitsFlag
	.cfi_startproc
# BB#0:                                 # %entry
	movl	64(%rdi), %eax
	movl	%esi, 64(%rdi)
	retq
.Lfunc_end62:
	.size	cmsPipelineSetSaveAs8bitsFlag, .Lfunc_end62-cmsPipelineSetSaveAs8bitsFlag
	.cfi_endproc

	.globl	cmsPipelineGetPtrToFirstStage
	.align	16, 0x90
	.type	cmsPipelineGetPtrToFirstStage,@function
cmsPipelineGetPtrToFirstStage:          # @cmsPipelineGetPtrToFirstStage
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	retq
.Lfunc_end63:
	.size	cmsPipelineGetPtrToFirstStage, .Lfunc_end63-cmsPipelineGetPtrToFirstStage
	.cfi_endproc

	.globl	cmsPipelineGetPtrToLastStage
	.align	16, 0x90
	.type	cmsPipelineGetPtrToLastStage,@function
cmsPipelineGetPtrToLastStage:           # @cmsPipelineGetPtrToLastStage
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB64_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	(%rdi), %rcx
	leaq	56(%rcx), %rdi
	testq	%rcx, %rcx
	jne	.LBB64_1
# BB#2:                                 # %for.end
	retq
.Lfunc_end64:
	.size	cmsPipelineGetPtrToLastStage, .Lfunc_end64-cmsPipelineGetPtrToLastStage
	.cfi_endproc

	.globl	_cmsPipelineSetOptimizationParameters
	.align	16, 0x90
	.type	_cmsPipelineSetOptimizationParameters,@function
_cmsPipelineSetOptimizationParameters:  # @_cmsPipelineSetOptimizationParameters
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 24(%rdi)
	movq	%r8, 48(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rdx, 16(%rdi)
	retq
.Lfunc_end65:
	.size	_cmsPipelineSetOptimizationParameters, .Lfunc_end65-_cmsPipelineSetOptimizationParameters
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI66_0:
	.quad	4906019910204099648     # double 1.0E+20
.LCPI66_1:
	.quad	4607173411600334848     # double 0.99899999995250255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI66_2:
	.long	981668463               # float 0.00100000005
.LCPI66_3:
	.long	3129152111              # float -0.00100000005
.LCPI66_4:
	.long	1065353216              # float 1
.LCPI66_5:
	.long	0                       # float 0
	.text
	.globl	cmsPipelineEvalReverseFloat
	.align	16, 0x90
	.type	cmsPipelineEvalReverseFloat,@function
cmsPipelineEvalReverseFloat:            # @cmsPipelineEvalReverseFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp302:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp303:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp304:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp305:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp306:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp307:
	.cfi_def_cfa_offset 272
.Ltmp308:
	.cfi_offset %rbx, -56
.Ltmp309:
	.cfi_offset %r12, -48
.Ltmp310:
	.cfi_offset %r13, -40
.Ltmp311:
	.cfi_offset %r14, -32
.Ltmp312:
	.cfi_offset %r15, -24
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	8(%r14), %ecx
	leal	-3(%rcx), %esi
	xorl	%eax, %eax
	cmpl	$1, %esi
	ja	.LBB66_39
# BB#1:                                 # %if.end
	cmpl	$3, 12(%r14)
	jne	.LBB66_39
# BB#2:                                 # %if.end.8
	testq	%rdx, %rdx
	je	.LBB66_4
# BB#3:                                 # %for.cond.preheader
	movl	(%rdx), %eax
	movl	%eax, 176(%rsp)
	movl	4(%rdx), %eax
	movl	%eax, 180(%rsp)
	movl	8(%rdx), %eax
	movl	%eax, 184(%rsp)
	jmp	.LBB66_5
.LBB66_4:                               # %if.then.10
	movl	$1050253722, 184(%rsp)  # imm = 0x3E99999A
	movabsq	$4510805389542529434, %rax # imm = 0x3E99999A3E99999A
	movq	%rax, 176(%rsp)
.LBB66_5:                               # %if.end.17
	cmpl	$4, %ecx
	jne	.LBB66_7
# BB#6:                                 # %if.then.20
	movl	12(%r15), %eax
	movl	%eax, 188(%rsp)
	jmp	.LBB66_8
.LBB66_7:                               # %if.else.23
	movl	$0, 188(%rsp)
.LBB66_8:                               # %for.cond.26.preheader.for.cond.26.preheader.split_crit_edge
	xorl	%r13d, %r13d
	movsd	.LCPI66_0(%rip), %xmm4  # xmm4 = mem[0],zero
	leaq	160(%rsp), %rbp
	leaq	144(%rsp), %r12
	.align	16, 0x90
.LBB66_9:                               # %cmsPipelineEvalFloat.exit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_15 Depth 2
                                        #     Child Loop BB66_17 Depth 2
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	leaq	176(%rsp), %rdi
	leaq	192(%rsp), %rsi
	movq	%r14, %rdx
	callq	*32(%r14)
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	subss	192(%rsp), %xmm0
	mulss	%xmm0, %xmm0
	addss	.LCPI66_5, %xmm0
	subss	196(%rsp), %xmm1
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	8(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	200(%rsp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	callq	sqrtf
	ucomiss	%xmm0, %xmm0
	jnp	.LBB66_11
# BB#10:                                # %call.sqrt
                                        #   in Loop: Header=BB66_9 Depth=1
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	sqrtf
.LBB66_11:                              # %cmsPipelineEvalFloat.exit.split
                                        #   in Loop: Header=BB66_9 Depth=1
	cvtss2sd	%xmm0, %xmm2
	movl	$1, %eax
	ucomisd	16(%rsp), %xmm2         # 8-byte Folded Reload
	jae	.LBB66_39
# BB#12:                                # %for.cond.35.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	8(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB66_18
# BB#13:                                # %for.body.39.lr.ph
                                        #   in Loop: Header=BB66_9 Depth=1
	movq	%rbp, %r8
	leaq	-1(%rcx), %rsi
	testb	$3, %cl
	movl	$0, %edx
	je	.LBB66_16
# BB#14:                                # %for.body.39.prol.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	%ecx, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB66_15:                              # %for.body.39.prol
                                        #   Parent Loop BB66_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	176(%rsp,%rdx,4), %ebp
	movl	%ebp, (%rbx,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rdi
	jne	.LBB66_15
.LBB66_16:                              # %for.body.39.lr.ph.split
                                        #   in Loop: Header=BB66_9 Depth=1
	cmpq	$3, %rsi
	movq	%r8, %rbp
	jb	.LBB66_18
	.align	16, 0x90
.LBB66_17:                              # %for.body.39
                                        #   Parent Loop BB66_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	176(%rsp,%rdx,4), %esi
	movl	%esi, (%rbx,%rdx,4)
	movl	180(%rsp,%rdx,4), %esi
	movl	%esi, 4(%rbx,%rdx,4)
	movl	184(%rsp,%rdx,4), %esi
	movl	%esi, 8(%rbx,%rdx,4)
	movl	188(%rsp,%rdx,4), %esi
	movl	%esi, 12(%rbx,%rdx,4)
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB66_17
.LBB66_18:                              # %for.end.46
                                        #   in Loop: Header=BB66_9 Depth=1
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB66_39
# BB#19:                                # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movl	180(%rsp), %eax
	movss	176(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, 164(%rsp)
	movq	184(%rsp), %rax
	movl	%eax, 168(%rsp)
	shrq	$32, %rax
	movl	%eax, 172(%rsp)
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI66_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movss	.LCPI66_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ja	.LBB66_21
# BB#20:                                # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	movss	.LCPI66_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB66_21:                              # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	addss	%xmm1, %xmm0
	movss	%xmm0, 160(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*32(%r14)
	movss	144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	192(%rsp), %xmm0
	movss	.LCPI66_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm3
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)
	movss	148(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	196(%rsp), %xmm0
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)
	movss	152(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	200(%rsp), %xmm0
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 72(%rsp)
	movl	176(%rsp), %eax
	movss	180(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, 160(%rsp)
	movq	184(%rsp), %rax
	movl	%eax, 168(%rsp)
	shrq	$32, %rax
	movl	%eax, 172(%rsp)
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI66_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movaps	%xmm3, %xmm1
	ja	.LBB66_23
# BB#22:                                # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	movss	.LCPI66_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB66_23:                              # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	addss	%xmm1, %xmm0
	movss	%xmm0, 164(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*32(%r14)
	movss	144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	192(%rsp), %xmm0
	movss	.LCPI66_2(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm3
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)
	movss	148(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	196(%rsp), %xmm0
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)
	movss	152(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	200(%rsp), %xmm0
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 80(%rsp)
	movq	176(%rsp), %rax
	movl	%eax, 160(%rsp)
	shrq	$32, %rax
	movl	%eax, 164(%rsp)
	movl	188(%rsp), %eax
	movss	184(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, 172(%rsp)
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI66_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movaps	%xmm3, %xmm1
	ja	.LBB66_25
# BB#24:                                # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	movss	.LCPI66_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB66_25:                              # %for.cond.51.preheader
                                        #   in Loop: Header=BB66_9 Depth=1
	addss	%xmm1, %xmm0
	movss	%xmm0, 168(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*32(%r14)
	movss	144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	192(%rsp), %xmm1
	subss	%xmm1, %xmm0
	movss	.LCPI66_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)
	movss	148(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	subss	%xmm2, %xmm0
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)
	movss	152(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	200(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	divss	%xmm3, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 88(%rsp)
	movq	(%r15), %xmm0           # xmm0 = mem[0],zero
	subps	%xmm0, %xmm1
	cvtps2pd	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
	subss	8(%r15), %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 112(%rsp)
	leaq	120(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	96(%rsp), %rdx
	callq	_cmsMAT3solve
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movsd	16(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	je	.LBB66_39
# BB#26:                                # %if.end.116
                                        #   in Loop: Header=BB66_9 Depth=1
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	176(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	movss	%xmm2, 176(%rsp)
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	180(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 180(%rsp)
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm3
	movss	184(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm0
	movss	%xmm0, 184(%rsp)
	xorps	%xmm3, %xmm3
	ucomiss	%xmm2, %xmm3
	jbe	.LBB66_28
# BB#27:                                # %if.then.140
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	$0, 176(%rsp)
	jmp	.LBB66_30
	.align	16, 0x90
.LBB66_28:                              # %if.else.143
                                        #   in Loop: Header=BB66_9 Depth=1
	ucomiss	.LCPI66_4(%rip), %xmm2
	jbe	.LBB66_30
# BB#29:                                # %if.then.149
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	$1065353216, 176(%rsp)  # imm = 0x3F800000
.LBB66_30:                              # %for.inc.154
                                        #   in Loop: Header=BB66_9 Depth=1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB66_31
# BB#33:                                # %if.then.140.1
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	$0, 180(%rsp)
	jmp	.LBB66_34
	.align	16, 0x90
.LBB66_31:                              # %if.else.143.1
                                        #   in Loop: Header=BB66_9 Depth=1
	ucomiss	.LCPI66_4(%rip), %xmm1
	jbe	.LBB66_34
# BB#32:                                # %if.then.149.1
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	$1065353216, 180(%rsp)  # imm = 0x3F800000
.LBB66_34:                              # %for.inc.154.1
                                        #   in Loop: Header=BB66_9 Depth=1
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB66_35
# BB#37:                                # %if.then.140.2
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	$0, 184(%rsp)
	jmp	.LBB66_38
	.align	16, 0x90
.LBB66_35:                              # %if.else.143.2
                                        #   in Loop: Header=BB66_9 Depth=1
	ucomiss	.LCPI66_4(%rip), %xmm0
	jbe	.LBB66_38
# BB#36:                                # %if.then.149.2
                                        #   in Loop: Header=BB66_9 Depth=1
	movl	$1065353216, 184(%rsp)  # imm = 0x3F800000
.LBB66_38:                              # %for.inc.154.2
                                        #   in Loop: Header=BB66_9 Depth=1
	incl	%r13d
	cmpl	$30, %r13d
	movl	$1, %eax
	jb	.LBB66_9
.LBB66_39:                              # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	cmsPipelineEvalReverseFloat, .Lfunc_end66-cmsPipelineEvalReverseFloat
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(clutPoints != ((void*)0))"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmslut.c"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular,@object # @__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular
.L__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular:
	.asciz	"cmsStage *cmsStageAllocCLut16bitGranular(cmsContext, const cmsUInt32Number *, cmsUInt32Number, cmsUInt32Number, const cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsStageAllocCLut16bitGranular, 137

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Too many input channels (%d channels, max=%d)"
	.size	.L.str.2, 46

	.type	.L__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular,@object # @__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular
.L__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular:
	.asciz	"cmsStage *cmsStageAllocCLutFloatGranular(cmsContext, const cmsUInt32Number *, cmsUInt32Number, cmsUInt32Number, const cmsFloat32Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsStageAllocCLutFloatGranular, 138

	.type	_cmsStageAllocLabV2ToV4.V2ToV4,@object # @_cmsStageAllocLabV2ToV4.V2ToV4
	.section	.rodata,"a",@progbits
	.align	16
_cmsStageAllocLabV2ToV4.V2ToV4:
	.quad	4607200010986061824     # double 1.003906e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607200010986061824     # double 1.003906e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607200010986061824     # double 1.003906e+00
	.size	_cmsStageAllocLabV2ToV4.V2ToV4, 72

	.type	_cmsStageAllocLabV4ToV2.V4ToV2,@object # @_cmsStageAllocLabV4ToV2.V4ToV2
	.align	16
_cmsStageAllocLabV4ToV2.V4ToV2:
	.quad	4607147371332100128     # double 9.961089e-01
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607147371332100128     # double 9.961089e-01
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607147371332100128     # double 9.961089e-01
	.size	_cmsStageAllocLabV4ToV2.V4ToV2, 72

	.type	_cmsStageNormalizeFromLabFloat.a1,@object # @_cmsStageNormalizeFromLabFloat.a1
	.align	16
_cmsStageNormalizeFromLabFloat.a1:
	.quad	4576918229304087675     # double 1.000000e-02
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4571171282956062736     # double 3.921569e-03
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4571171282956062736     # double 3.921569e-03
	.size	_cmsStageNormalizeFromLabFloat.a1, 72

	.type	_cmsStageNormalizeFromLabFloat.o1,@object # @_cmsStageNormalizeFromLabFloat.o1
	.align	16
_cmsStageNormalizeFromLabFloat.o1:
	.quad	0                       # double 0.000000e+00
	.quad	4602696480347656208     # double 5.019608e-01
	.quad	4602696480347656208     # double 5.019608e-01
	.size	_cmsStageNormalizeFromLabFloat.o1, 24

	.type	_cmsStageNormalizeFromXyzFloat.a1,@object # @_cmsStageNormalizeFromXyzFloat.a1
	.align	16
_cmsStageNormalizeFromXyzFloat.a1:
	.quad	4602678887893172240     # double 5.000076e-01
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4602678887893172240     # double 5.000076e-01
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4602678887893172240     # double 5.000076e-01
	.size	_cmsStageNormalizeFromXyzFloat.a1, 72

	.type	_cmsStageNormalizeToLabFloat.a1,@object # @_cmsStageNormalizeToLabFloat.a1
	.align	16
_cmsStageNormalizeToLabFloat.a1:
	.quad	4636737291354636288     # double 1.000000e+02
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4643176031446892544     # double 2.550000e+02
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4643176031446892544     # double 2.550000e+02
	.size	_cmsStageNormalizeToLabFloat.a1, 72

	.type	_cmsStageNormalizeToLabFloat.o1,@object # @_cmsStageNormalizeToLabFloat.o1
	.align	16
_cmsStageNormalizeToLabFloat.o1:
	.quad	0                       # double 0.000000e+00
	.quad	-4584664420663164928    # double -1.280000e+02
	.quad	-4584664420663164928    # double -1.280000e+02
	.size	_cmsStageNormalizeToLabFloat.o1, 24

	.type	_cmsStageNormalizeToXyzFloat.a1,@object # @_cmsStageNormalizeToXyzFloat.a1
	.align	16
_cmsStageNormalizeToXyzFloat.a1:
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.size	_cmsStageNormalizeToXyzFloat.a1, 72

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"(lut != ((void*)0))"
	.size	.L.str.3, 20

	.type	.L__PRETTY_FUNCTION__.cmsGetPipelineContextID,@object # @__PRETTY_FUNCTION__.cmsGetPipelineContextID
.L__PRETTY_FUNCTION__.cmsGetPipelineContextID:
	.asciz	"cmsContext cmsGetPipelineContextID(const cmsPipeline *)"
	.size	.L__PRETTY_FUNCTION__.cmsGetPipelineContextID, 56

	.type	.L__PRETTY_FUNCTION__.cmsPipelineInputChannels,@object # @__PRETTY_FUNCTION__.cmsPipelineInputChannels
.L__PRETTY_FUNCTION__.cmsPipelineInputChannels:
	.asciz	"cmsUInt32Number cmsPipelineInputChannels(const cmsPipeline *)"
	.size	.L__PRETTY_FUNCTION__.cmsPipelineInputChannels, 62

	.type	.L__PRETTY_FUNCTION__.cmsPipelineOutputChannels,@object # @__PRETTY_FUNCTION__.cmsPipelineOutputChannels
.L__PRETTY_FUNCTION__.cmsPipelineOutputChannels:
	.asciz	"cmsUInt32Number cmsPipelineOutputChannels(const cmsPipeline *)"
	.size	.L__PRETTY_FUNCTION__.cmsPipelineOutputChannels, 63

	.type	.L__PRETTY_FUNCTION__.cmsPipelineEval16,@object # @__PRETTY_FUNCTION__.cmsPipelineEval16
.L__PRETTY_FUNCTION__.cmsPipelineEval16:
	.asciz	"void cmsPipelineEval16(const cmsUInt16Number *, cmsUInt16Number *, const cmsPipeline *)"
	.size	.L__PRETTY_FUNCTION__.cmsPipelineEval16, 88

	.type	.L__PRETTY_FUNCTION__.cmsPipelineEvalFloat,@object # @__PRETTY_FUNCTION__.cmsPipelineEvalFloat
.L__PRETTY_FUNCTION__.cmsPipelineEvalFloat:
	.asciz	"void cmsPipelineEvalFloat(const cmsFloat32Number *, cmsFloat32Number *, const cmsPipeline *)"
	.size	.L__PRETTY_FUNCTION__.cmsPipelineEvalFloat, 93

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(mpe != ((void*)0))"
	.size	.L.str.4, 20

	.type	.L__PRETTY_FUNCTION__.EvaluateCurves,@object # @__PRETTY_FUNCTION__.EvaluateCurves
.L__PRETTY_FUNCTION__.EvaluateCurves:
	.asciz	"void EvaluateCurves(const cmsFloat32Number *, cmsFloat32Number *, const cmsStage *)"
	.size	.L__PRETTY_FUNCTION__.EvaluateCurves, 84

	.type	.L__PRETTY_FUNCTION__.CurveSetElemTypeFree,@object # @__PRETTY_FUNCTION__.CurveSetElemTypeFree
.L__PRETTY_FUNCTION__.CurveSetElemTypeFree:
	.asciz	"void CurveSetElemTypeFree(cmsStage *)"
	.size	.L__PRETTY_FUNCTION__.CurveSetElemTypeFree, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(mpe ->InputChannels <= 128)"
	.size	.L.str.5, 29

	.type	.L__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16,@object # @__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16
.L__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16:
	.asciz	"void EvaluateCLUTfloatIn16(const cmsFloat32Number *, cmsFloat32Number *, const cmsStage *)"
	.size	.L__PRETTY_FUNCTION__.EvaluateCLUTfloatIn16, 91

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(mpe ->OutputChannels <= 128)"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(Dims != ((void*)0))"
	.size	.L.str.7, 21

	.type	.L__PRETTY_FUNCTION__.CubeSize,@object # @__PRETTY_FUNCTION__.CubeSize
.L__PRETTY_FUNCTION__.CubeSize:
	.asciz	"cmsUInt32Number CubeSize(const cmsUInt32Number *, cmsUInt32Number)"
	.size	.L__PRETTY_FUNCTION__.CubeSize, 67


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
