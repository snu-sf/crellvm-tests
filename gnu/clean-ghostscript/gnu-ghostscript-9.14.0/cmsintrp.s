	.text
	.file	"cmsintrp.bc"
	.globl	_cmsAllocInterpPluginChunk
	.align	16, 0x90
	.type	_cmsAllocInterpPluginChunk,@function
_cmsAllocInterpPluginChunk:             # @_cmsAllocInterpPluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %cond.end
	movl	$_cmsAllocInterpPluginChunk.InterpPluginChunk, %esi
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:                                 # %if.end
	movq	56(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB0_5
.LBB0_3:                                # %cond.end.5
	movq	8(%rbx), %rdi
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 56(%rbx)
	popq	%rbx
	retq
.LBB0_4:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$43, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk, %ecx
	callq	__assert_fail
.LBB0_5:                                # %cond.false.4
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$54, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_cmsAllocInterpPluginChunk, .Lfunc_end0-_cmsAllocInterpPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterInterpPlugin
	.align	16, 0x90
	.type	_cmsRegisterInterpPlugin,@function
_cmsRegisterInterpPlugin:               # @_cmsRegisterInterpPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$5, %esi
	callq	_cmsContextGetClientChunk
	testq	%rbx, %rbx
	je	.LBB1_1
# BB#2:                                 # %if.end
	movq	24(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB1_3
.LBB1_1:                                # %if.then
	movq	$0, (%rax)
.LBB1_3:                                # %cleanup
	movl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	_cmsRegisterInterpPlugin, .Lfunc_end1-_cmsRegisterInterpPlugin
	.cfi_endproc

	.globl	_cmsSetInterpolationRoutine
	.align	16, 0x90
	.type	_cmsSetInterpolationRoutine,@function
_cmsSetInterpolationRoutine:            # @_cmsSetInterpolationRoutine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 48
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	$5, %esi
	callq	_cmsContextGetClientChunk
	movq	$0, 128(%rbx)
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_2
# BB#1:                                 # %if.end
	movl	8(%rbx), %edx
	movl	12(%rbx), %edi
	movl	16(%rbx), %esi
	callq	*%rax
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	jne	.LBB2_41
.LBB2_2:                                # %if.then.7
	movl	8(%rbx), %r14d
	movl	12(%rbx), %ebp
	movl	16(%rbx), %r15d
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset
	cmpl	$4, %ebp
	jb	.LBB2_5
# BB#3:                                 # %if.then.7
	cmpl	$128, %r15d
	jb	.LBB2_5
# BB#4:                                 # %if.then.i
	movq	(%rsp), %rax
	jmp	.LBB2_40
.LBB2_5:                                # %if.end.i
	decl	%ebp
	cmpl	$7, %ebp
	jbe	.LBB2_6
# BB#39:                                # %sw.default.i
	movq	$0, (%rsp)
	xorl	%eax, %eax
.LBB2_40:                               # %DefaultInterpolatorsFactory.exit
	movq	%rax, 128(%rbx)
.LBB2_41:                               # %if.end.15
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_6:                                # %if.end.i
	movl	%r14d, %eax
	andl	$1, %eax
	jmpq	*.LJTI2_0(,%rbp,8)
.LBB2_7:                                # %sw.bb.i
	cmpl	$1, %r15d
	jne	.LBB2_11
# BB#8:                                 # %if.then.4.i
	testl	%eax, %eax
	je	.LBB2_10
# BB#9:                                 # %if.then.5.i
	movq	$LinLerp1Dfloat, (%rsp)
	movl	$LinLerp1Dfloat, %eax
	jmp	.LBB2_40
.LBB2_14:                               # %sw.bb.15.i
	testl	%eax, %eax
	jne	.LBB2_15
# BB#16:                                # %if.else.19.i
	movq	$BilinearInterp16, (%rsp)
	movl	$BilinearInterp16, %eax
	jmp	.LBB2_40
.LBB2_17:                               # %sw.bb.22.i
	andl	$256, %r14d             # imm = 0x100
	jne	.LBB2_18
# BB#21:                                # %if.else.31.i
	testl	%eax, %eax
	je	.LBB2_23
# BB#22:                                # %if.then.33.i
	movq	$TetrahedralInterpFloat, (%rsp)
	movl	$TetrahedralInterpFloat, %eax
	jmp	.LBB2_40
.LBB2_24:                               # %sw.bb.39.i
	testl	%eax, %eax
	jne	.LBB2_25
# BB#26:                                # %if.else.43.i
	movq	$Eval4Inputs, (%rsp)
	movl	$Eval4Inputs, %eax
	jmp	.LBB2_40
.LBB2_27:                               # %sw.bb.46.i
	testl	%eax, %eax
	jne	.LBB2_28
# BB#29:                                # %if.else.50.i
	movq	$Eval5Inputs, (%rsp)
	movl	$Eval5Inputs, %eax
	jmp	.LBB2_40
.LBB2_30:                               # %sw.bb.53.i
	testl	%eax, %eax
	jne	.LBB2_31
# BB#32:                                # %if.else.57.i
	movq	$Eval6Inputs, (%rsp)
	movl	$Eval6Inputs, %eax
	jmp	.LBB2_40
.LBB2_33:                               # %sw.bb.60.i
	testl	%eax, %eax
	jne	.LBB2_34
# BB#35:                                # %if.else.64.i
	movq	$Eval7Inputs, (%rsp)
	movl	$Eval7Inputs, %eax
	jmp	.LBB2_40
.LBB2_36:                               # %sw.bb.67.i
	testl	%eax, %eax
	jne	.LBB2_37
# BB#38:                                # %if.else.71.i
	movq	$Eval8Inputs, (%rsp)
	movl	$Eval8Inputs, %eax
	jmp	.LBB2_40
.LBB2_11:                               # %if.else.7.i
	testl	%eax, %eax
	je	.LBB2_13
# BB#12:                                # %if.then.9.i
	movq	$Eval1InputFloat, (%rsp)
	movl	$Eval1InputFloat, %eax
	jmp	.LBB2_40
.LBB2_15:                               # %if.then.17.i
	movq	$BilinearInterpFloat, (%rsp)
	movl	$BilinearInterpFloat, %eax
	jmp	.LBB2_40
.LBB2_18:                               # %if.then.24.i
	testl	%eax, %eax
	je	.LBB2_20
# BB#19:                                # %if.then.26.i
	movq	$TrilinearInterpFloat, (%rsp)
	movl	$TrilinearInterpFloat, %eax
	jmp	.LBB2_40
.LBB2_25:                               # %if.then.41.i
	movq	$Eval4InputsFloat, (%rsp)
	movl	$Eval4InputsFloat, %eax
	jmp	.LBB2_40
.LBB2_28:                               # %if.then.48.i
	movq	$Eval5InputsFloat, (%rsp)
	movl	$Eval5InputsFloat, %eax
	jmp	.LBB2_40
.LBB2_31:                               # %if.then.55.i
	movq	$Eval6InputsFloat, (%rsp)
	movl	$Eval6InputsFloat, %eax
	jmp	.LBB2_40
.LBB2_34:                               # %if.then.62.i
	movq	$Eval7InputsFloat, (%rsp)
	movl	$Eval7InputsFloat, %eax
	jmp	.LBB2_40
.LBB2_37:                               # %if.then.69.i
	movq	$Eval8InputsFloat, (%rsp)
	movl	$Eval8InputsFloat, %eax
	jmp	.LBB2_40
.LBB2_10:                               # %if.else.i
	movq	$LinLerp1D, (%rsp)
	movl	$LinLerp1D, %eax
	jmp	.LBB2_40
.LBB2_23:                               # %if.else.35.i
	movq	$TetrahedralInterp16, (%rsp)
	movl	$TetrahedralInterp16, %eax
	jmp	.LBB2_40
.LBB2_13:                               # %if.else.11.i
	movq	$Eval1Input, (%rsp)
	movl	$Eval1Input, %eax
	jmp	.LBB2_40
.LBB2_20:                               # %if.else.28.i
	movq	$TrilinearInterp16, (%rsp)
	movl	$TrilinearInterp16, %eax
	jmp	.LBB2_40
.Lfunc_end2:
	.size	_cmsSetInterpolationRoutine, .Lfunc_end2-_cmsSetInterpolationRoutine
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_7
	.quad	.LBB2_14
	.quad	.LBB2_17
	.quad	.LBB2_24
	.quad	.LBB2_27
	.quad	.LBB2_30
	.quad	.LBB2_33
	.quad	.LBB2_36

	.text
	.globl	_cmsComputeInterpParamsEx
	.align	16, 0x90
	.type	_cmsComputeInterpParamsEx,@function
_cmsComputeInterpParamsEx:              # @_cmsComputeInterpParamsEx
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movl	%r9d, %r12d
	movq	%r8, %r15
	movl	%edx, %ebp
	cmpl	$9, %ebp
	jl	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.3, %edx
	movl	$8, %r8d
	xorl	%eax, %eax
	movl	%ebp, %ecx
	callq	cmsSignalError
	jmp	.LBB3_28
.LBB3_2:                                # %if.end
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	%ecx, %r14d
	movl	$136, %esi
	movq	%rdi, %r13
	callq	_cmsMallocZero
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB3_28
# BB#3:                                 # %if.end.3
	movl	%r12d, 8(%rax)
	movq	%rbp, %rbx
	movl	%ebx, 12(%rax)
	movl	%r14d, 16(%rax)
	movq	%r15, 120(%rax)
	movq	%r13, (%rax)
	testl	%ebx, %ebx
	jle	.LBB3_4
# BB#5:                                 # %for.body.lr.ph
	movl	%r14d, %r15d
	movabsq	$8589934588, %r8        # imm = 0x1FFFFFFFC
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %r9
	xorl	%edx, %edx
	movq	%r9, %r11
	andq	%r8, %r11
	movq	(%rsp), %r14            # 8-byte Reload
	je	.LBB3_14
# BB#6:                                 # %vector.memcheck
	leaq	20(%rax), %rbp
	leaq	(%r14,%rcx,4), %rsi
	xorl	%edx, %edx
	cmpq	%rsi, %rbp
	ja	.LBB3_8
# BB#7:                                 # %vector.memcheck
	leaq	52(%rax,%rcx,4), %rsi
	cmpq	%rsi, %r14
	jbe	.LBB3_14
.LBB3_8:                                # %vector.body.preheader
	leaq	1(%rcx), %rsi
	andq	%r8, %rsi
	addq	$-4, %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	xorl	%r10d, %r10d
	btq	$2, %rsi
	jb	.LBB3_10
# BB#9:                                 # %vector.body.prol
	movups	(%r14), %xmm0
	movups	%xmm0, 20(%rax)
	movdqu	(%r14), %xmm0
	pcmpeqd	%xmm1, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, 52(%rax)
	movl	$4, %r10d
.LBB3_10:                               # %vector.body.preheader.split
	testq	%rdx, %rdx
	je	.LBB3_13
# BB#11:                                # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%r10, %rcx
	leaq	16(%r14,%r10,4), %rsi
	leaq	68(%rax,%r10,4), %rdx
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB3_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi), %xmm1
	movups	%xmm1, -48(%rdx)
	movdqu	-16(%rsi), %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, -16(%rdx)
	movups	(%rsi), %xmm1
	movups	%xmm1, -32(%rdx)
	movdqu	(%rsi), %xmm1
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, (%rdx)
	addq	$32, %rsi
	addq	$32, %rdx
	addq	$-8, %rcx
	jne	.LBB3_12
.LBB3_13:
	movq	%r11, %rdx
.LBB3_14:                               # %middle.block
	cmpq	%rdx, %r9
	je	.LBB3_20
# BB#15:                                # %for.body.preheader
	leal	1(%rbx), %ecx
	movl	%edx, %esi
	orl	$1, %esi
	subl	%esi, %ecx
	testb	$1, %cl
	je	.LBB3_17
# BB#16:                                # %for.body.prol
	movl	(%r14,%rdx,4), %ecx
	movl	%ecx, 20(%rax,%rdx,4)
	movl	(%r14,%rdx,4), %ecx
	decl	%ecx
	movl	%ecx, 52(%rax,%rdx,4)
	orq	$1, %rdx
.LBB3_17:                               # %for.body.preheader.split
	cmpl	%ebx, %esi
	je	.LBB3_20
# BB#18:                                # %for.body.preheader.split.split
	movl	%ebx, %ebp
	subl	%edx, %ebp
	leaq	4(%r14,%rdx,4), %rcx
	leaq	56(%rax,%rdx,4), %rdx
	.align	16, 0x90
.LBB3_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rcx), %esi
	movl	%esi, -36(%rdx)
	movl	-4(%rcx), %esi
	decl	%esi
	movl	%esi, -4(%rdx)
	movl	(%rcx), %esi
	movl	%esi, -32(%rdx)
	movl	(%rcx), %esi
	decl	%esi
	movl	%esi, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	addl	$-2, %ebp
	jne	.LBB3_19
.LBB3_20:                               # %for.end
	movl	16(%rax), %ebp
	movl	%ebp, 84(%rax)
	cmpl	$2, %ebx
	jl	.LBB3_26
# BB#21:                                # %for.body.19.lr.ph
	movslq	%ebx, %rdx
	movl	$1, %esi
	testb	$1, %bl
	jne	.LBB3_23
# BB#22:                                # %for.body.19.prol
	imull	-4(%r14,%rdx,4), %ebp
	movl	%ebp, 88(%rax)
	movl	$2, %esi
.LBB3_23:                               # %for.body.19.lr.ph.split
	cmpl	$2, %ebx
	je	.LBB3_26
# BB#24:                                # %for.body.19.lr.ph.split.split
	movl	%ebx, %ecx
	subl	%esi, %ecx
	subq	%rsi, %rdx
	leaq	(%r14,%rdx,4), %rdx
	leaq	88(%rax,%rsi,4), %rsi
	.align	16, 0x90
.LBB3_25:                               # %for.body.19
                                        # =>This Inner Loop Header: Depth=1
	imull	(%rdx), %ebp
	movl	%ebp, -4(%rsi)
	imull	-4(%rdx), %ebp
	movl	%ebp, (%rsi)
	addq	$-8, %rdx
	addq	$8, %rsi
	addl	$-2, %ecx
	jne	.LBB3_25
	jmp	.LBB3_26
.LBB3_4:                                # %for.end.thread
	movl	%r14d, 84(%rax)
	movl	%r14d, %r15d
.LBB3_26:                               # %for.end.32
	movq	%rbx, %r12
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rax, %rbx
	callq	_cmsSetInterpolationRoutine
	movq	%rbx, %rbp
	testl	%eax, %eax
	jne	.LBB3_28
# BB#27:                                # %if.then.34
	xorl	%ebx, %ebx
	movl	$8, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	cmsSignalError
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
.LBB3_28:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_cmsComputeInterpParamsEx, .Lfunc_end3-_cmsComputeInterpParamsEx
	.cfi_endproc

	.globl	_cmsComputeInterpParams
	.align	16, 0x90
	.type	_cmsComputeInterpParams,@function
_cmsComputeInterpParams:                # @_cmsComputeInterpParams
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 48
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, (%rsp)
	movdqa	%xmm0, 16(%rsp)
	leaq	(%rsp), %rsi
	callq	_cmsComputeInterpParamsEx
	addq	$40, %rsp
	retq
.Lfunc_end4:
	.size	_cmsComputeInterpParams, .Lfunc_end4-_cmsComputeInterpParams
	.cfi_endproc

	.globl	_cmsFreeInterpParams
	.align	16, 0x90
	.type	_cmsFreeInterpParams,@function
_cmsFreeInterpParams:                   # @_cmsFreeInterpParams
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB5_1
# BB#2:                                 # %if.then
	movq	(%rax), %rdi
	movq	%rax, %rsi
	jmp	_cmsFree                # TAILCALL
.LBB5_1:                                # %if.end
	retq
.Lfunc_end5:
	.size	_cmsFreeInterpParams, .Lfunc_end5-_cmsFreeInterpParams
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	LinLerp1Dfloat,@function
LinLerp1Dfloat:                         # @LinLerp1Dfloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	120(%rdx), %rbx
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	cmpltss	%xmm3, %xmm0
	andnps	%xmm2, %xmm0
	movl	52(%rdx), %eax
	ucomiss	%xmm1, %xmm0
	jne	.LBB6_2
	jp	.LBB6_2
# BB#1:                                 # %if.then
	movss	(%rbx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movss	12(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	movslq	%ebp, %rcx
	movss	(%rbx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cltq
	movss	(%rbx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
.LBB6_3:                                # %cleanup
	movss	%xmm0, (%r14)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	LinLerp1Dfloat, .Lfunc_end6-LinLerp1Dfloat
	.cfi_endproc

	.align	16, 0x90
	.type	LinLerp1D,@function
LinLerp1D:                              # @LinLerp1D
	.cfi_startproc
# BB#0:                                 # %entry
	movq	120(%rdx), %rax
	movzwl	(%rdi), %edi
	cmpl	$65535, %edi            # imm = 0xFFFF
	movl	52(%rdx), %ecx
	je	.LBB7_1
# BB#2:                                 # %if.end
	imull	%edi, %ecx
	leal	32767(%rcx), %edx
	movslq	%edx, %rdx
	imulq	$-2147450879, %rdx, %rdx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdx
	leal	32767(%rdx,%rcx), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	sarl	$15, %edx
	addl	%edi, %edx
	addl	%ecx, %edx
	movzwl	%dx, %ecx
	sarl	$16, %edx
	movslq	%edx, %rdx
	leal	1(%rdx), %edi
	movslq	%edi, %rdi
	movzwl	(%rax,%rdx,2), %edx
	movzwl	(%rax,%rdi,2), %eax
	subl	%edx, %eax
	imull	%ecx, %eax
	addl	$32768, %eax            # imm = 0x8000
	shrl	$16, %eax
	addl	%edx, %eax
	movw	%ax, (%rsi)
	retq
.LBB7_1:                                # %if.then
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, (%rsi)
	retq
.Lfunc_end7:
	.size	LinLerp1D, .Lfunc_end7-LinLerp1D
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	Eval1InputFloat,@function
Eval1InputFloat:                        # @Eval1InputFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 64
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	120(%r15), %rbx
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	cmpltss	%xmm3, %xmm0
	andnps	%xmm2, %xmm0
	movl	52(%r15), %eax
	ucomiss	%xmm1, %xmm0
	jne	.LBB8_2
	jp	.LBB8_2
# BB#1:                                 # %if.then
	movl	(%rbx,%rax,4), %eax
	movl	%eax, (%r14)
	jmp	.LBB8_8
.LBB8_2:                                # %if.end
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 28(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	floor
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	movss	28(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movl	16(%r15), %r8d
	testq	%r8, %r8
	je	.LBB8_8
# BB#3:                                 # %for.body.lr.ph
	cvttsd2si	8(%rsp), %ecx   # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	subss	%xmm0, %xmm2
	movl	84(%r15), %edx
	imull	%edx, %ecx
	imull	%edx, %eax
	xorl	%r9d, %r9d
	testb	$1, %r8b
	je	.LBB8_5
# BB#4:                                 # %for.body.prol
	movl	%ecx, %edx
	movss	(%rbx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	%eax, %edx
	movss	(%rbx,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r14)
	movl	$1, %r9d
.LBB8_5:                                # %for.body.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB8_8
# BB#6:                                 # %for.body.lr.ph.split.split
	leaq	4(%r14,%r9,4), %rdx
	leaq	(%r9,%rax), %r10
	leaq	(%r9,%rcx), %r11
	leaq	1(%rax,%r9), %rax
	leaq	1(%rcx,%r9), %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r11,%rsi), %edi
	movss	(%rbx,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	leal	(%r10,%rsi), %edi
	movss	(%rbx,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -4(%rdx,%rsi,4)
	leal	(%rcx,%rsi), %edi
	movss	(%rbx,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	leal	(%rax,%rsi), %edi
	movss	(%rbx,%rdi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rdx,%rsi,4)
	leaq	2(%r9,%rsi), %rdi
	addq	$2, %rsi
	cmpq	%r8, %rdi
	jb	.LBB8_7
.LBB8_8:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	Eval1InputFloat, .Lfunc_end8-Eval1InputFloat
	.cfi_endproc

	.align	16, 0x90
	.type	Eval1Input,@function
Eval1Input:                             # @Eval1Input
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rdi), %r10d
	movl	52(%rdx), %eax
	imull	%r10d, %eax
	leal	32767(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %rdi # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdi
	movl	16(%rdx), %r8d
	testq	%r8, %r8
	je	.LBB9_3
# BB#1:                                 # %for.body.lr.ph
	movq	120(%rdx), %rcx
	leal	32767(%rdi,%rax), %edi
	movl	%edi, %r9d
	shrl	$31, %r9d
	sarl	$15, %edi
	addl	%r9d, %edi
	addl	%eax, %edi
	movzwl	%di, %r9d
	movl	%edi, %r11d
	sarl	$16, %r11d
	movl	84(%rdx), %edi
	movzwl	%r10w, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	setne	%dl
	movzbl	%dl, %edx
	leal	(%rdx,%r11), %r10d
	imull	%edi, %r10d
	imull	%edi, %r11d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r11,%rdi), %eax
	movzwl	(%rcx,%rax,2), %eax
	leal	(%r10,%rdi), %edx
	movzwl	(%rcx,%rdx,2), %edx
	subl	%eax, %edx
	imull	%r9d, %edx
	addl	$32768, %edx            # imm = 0x8000
	shrl	$16, %edx
	addl	%eax, %edx
	movw	%dx, (%rsi,%rdi,2)
	incq	%rdi
	cmpq	%r8, %rdi
	jb	.LBB9_2
.LBB9_3:                                # %for.end
	retq
.Lfunc_end9:
	.size	Eval1Input, .Lfunc_end9-Eval1Input
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	BilinearInterpFloat,@function
BilinearInterpFloat:                    # @BilinearInterpFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	16(%rdx), %r12d
	movl	52(%rdx), %eax
	movss	(%rdi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	56(%rdx), %ecx
	movl	88(%rdx), %r9d
	xorl	%edi, %edi
	ucomiss	%xmm1, %xmm3
	movl	$0, %r10d
	cmovbl	%r9d, %r10d
	movl	84(%rdx), %r11d
	ucomiss	%xmm1, %xmm2
	cmovbl	%r11d, %edi
	testl	%r12d, %r12d
	jle	.LBB10_15
# BB#1:                                 # %for.body.lr.ph
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	movq	120(%rdx), %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	minss	%xmm3, %xmm0
	xorps	%xmm4, %xmm4
	cmpltss	%xmm4, %xmm3
	andnps	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	mulss	%xmm3, %xmm0
	minss	%xmm2, %xmm1
	cmpltss	%xmm4, %xmm2
	andnps	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rcx, %xmm1
	mulss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI10_1(%rip), %xmm3  # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	movd	%xmm2, %r13
	sarl	$16, %r13d
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%r13d, %xmm2
	subss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	addsd	%xmm3, %xmm2
	movd	%xmm2, %rax
	sarl	$16, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm2, %xmm1
	leal	-1(%r12), %ebx
	leaq	1(%rbx), %r8
	xorl	%r15d, %r15d
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	movq	%r8, %rdx
	andq	%rdi, %rdx
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	je	.LBB10_12
# BB#2:                                 # %vector.memcheck
	movq	%r8, -80(%rsp)          # 8-byte Spill
	leaq	(%rsi,%rbx,4), %r15
	movq	-8(%rsp), %r14          # 8-byte Reload
	leal	(%r10,%r14), %edx
	movl	%r9d, %r8d
	movq	%r9, -40(%rsp)          # 8-byte Spill
	imull	%r13d, %r8d
	movq	%r13, -64(%rsp)         # 8-byte Spill
	addl	%r8d, %edx
	movl	%r11d, %ecx
	movq	%r11, -48(%rsp)         # 8-byte Spill
	imull	%eax, %ecx
	movq	%rax, -24(%rsp)         # 8-byte Spill
	addl	%ecx, %edx
	movslq	%edx, %rdx
	movq	%r10, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	-16(%rsp), %r10         # 8-byte Reload
	leaq	(%r10,%rdx,4), %rdi
	addq	%rbx, %rdx
	leaq	(%r10,%rdx,4), %r11
	leal	(%rax,%r8), %edx
	addl	%ecx, %edx
	movslq	%edx, %rbp
	leaq	(%r10,%rbp,4), %rdx
	addq	%rbx, %rbp
	leaq	(%r10,%rbp,4), %r9
	leal	(%r14,%rcx), %ebp
	addl	%r8d, %ebp
	movslq	%ebp, %rax
	leaq	(%r10,%rax,4), %rbp
	addq	%rbx, %rax
	leaq	(%r10,%rax,4), %rax
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	leaq	(%r10,%rcx,4), %r14
	addq	%rbx, %rcx
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	leaq	(%r10,%rcx,4), %r8
	cmpq	%rsi, %r11
	setae	%r13b
	cmpq	%r15, %rdi
	setbe	%r11b
	cmpq	%rsi, %r9
	setae	%cl
	cmpq	%r15, %rdx
	setbe	%r9b
	cmpq	%rsi, %rax
	setae	%al
	cmpq	%r15, %rbp
	setbe	%r10b
	cmpq	%rsi, %r8
	setae	%r8b
	cmpq	%r15, %r14
	setbe	%sil
	xorl	%r15d, %r15d
	testb	%r11b, %r13b
	jne	.LBB10_3
# BB#4:                                 # %vector.memcheck
	andb	%r9b, %cl
	jne	.LBB10_3
# BB#5:                                 # %vector.memcheck
	andb	%r10b, %al
	movq	-40(%rsp), %r9          # 8-byte Reload
	movq	-48(%rsp), %r11         # 8-byte Reload
	movq	-56(%rsp), %r10         # 8-byte Reload
	movq	-64(%rsp), %r13         # 8-byte Reload
	jne	.LBB10_6
# BB#8:                                 # %vector.memcheck
	andb	%sil, %r8b
	movq	-72(%rsp), %rsi         # 8-byte Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	-80(%rsp), %r8          # 8-byte Reload
	jne	.LBB10_12
# BB#9:                                 # %vector.ph
	movaps	%xmm0, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm1, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	incq	%rbx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rbx
	movq	%rsi, %rax
	.align	16, 0x90
.LBB10_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r14), %xmm4
	movups	(%rbp), %xmm5
	movups	(%rdx), %xmm6
	movups	(%rdi), %xmm7
	subps	%xmm4, %xmm6
	mulps	%xmm2, %xmm6
	addps	%xmm4, %xmm6
	subps	%xmm5, %xmm7
	mulps	%xmm2, %xmm7
	addps	%xmm5, %xmm7
	subps	%xmm6, %xmm7
	mulps	%xmm3, %xmm7
	addps	%xmm6, %xmm7
	movups	%xmm7, (%rax)
	addq	$16, %rdi
	addq	$16, %rdx
	addq	$16, %rbp
	addq	$16, %r14
	addq	$16, %rax
	addq	$-4, %rbx
	jne	.LBB10_10
# BB#11:
	movq	-32(%rsp), %r15         # 8-byte Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	jmp	.LBB10_12
.LBB10_3:
	movq	-72(%rsp), %rsi         # 8-byte Reload
	movq	-40(%rsp), %r9          # 8-byte Reload
	movq	-48(%rsp), %r11         # 8-byte Reload
	movq	-56(%rsp), %r10         # 8-byte Reload
	movq	-64(%rsp), %r13         # 8-byte Reload
	jmp	.LBB10_7
.LBB10_6:
	movq	-72(%rsp), %rsi         # 8-byte Reload
.LBB10_7:                               # %middle.block
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	-80(%rsp), %r8          # 8-byte Reload
.LBB10_12:                              # %middle.block
	cmpq	%r15, %r8
	movq	-8(%rsp), %rbx          # 8-byte Reload
	je	.LBB10_15
# BB#13:                                # %for.body.preheader
	imull	%eax, %r11d
	imull	%r13d, %r9d
	leal	(%r11,%r9), %eax
	cltq
	leaq	(%rax,%r15), %rax
	movq	-16(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %r8
	leal	(%rbx,%r11), %eax
	addl	%r9d, %eax
	cltq
	leaq	(%rax,%r15), %rax
	leaq	(%rcx,%rax,4), %rdx
	leal	(%r10,%r9), %eax
	addl	%r11d, %eax
	cltq
	leaq	(%rax,%r15), %rax
	leaq	(%rcx,%rax,4), %rdi
	addl	%ebx, %r10d
	addl	%r9d, %r10d
	addl	%r11d, %r10d
	movslq	%r10d, %rax
	leaq	(%rax,%r15), %rax
	leaq	(%rcx,%rax,4), %rcx
	leaq	(%rsi,%r15,4), %rbp
	subl	%r15d, %r12d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB10_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r8,%rbx,4), %xmm2     # xmm2 = mem[0],zero,zero,zero
	movss	(%rdx,%rbx,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movss	(%rdi,%rbx,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movss	(%rcx,%rbx,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm4
	mulss	%xmm0, %xmm4
	addss	%xmm2, %xmm4
	subss	%xmm3, %xmm5
	mulss	%xmm0, %xmm5
	addss	%xmm3, %xmm5
	subss	%xmm4, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm4, %xmm5
	movss	%xmm5, (%rbp,%rbx,4)
	incq	%rbx
	cmpl	%ebx, %r12d
	jne	.LBB10_14
.LBB10_15:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	BilinearInterpFloat, .Lfunc_end10-BilinearInterpFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI11_1:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	BilinearInterp16,@function
BilinearInterp16:                       # @BilinearInterp16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
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
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	movl	16(%rdx), %r10d
	movl	84(%rdx), %r8d
	movq	%r8, -16(%rsp)          # 8-byte Spill
	movzwl	(%rdi), %eax
	movl	52(%rdx), %ebp
	imull	%eax, %ebp
	leal	32767(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %rbx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rbx
	movzwl	2(%rdi), %ecx
	movl	56(%rdx), %esi
	imull	%ecx, %esi
	leal	32767(%rsi), %edi
	movslq	%edi, %rdi
	imulq	$-2147450879, %rdi, %r9 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r9
	xorl	%edi, %edi
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	88(%rdx), %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	cmovel	%edi, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	cmpl	$65535, %ecx            # imm = 0xFFFF
	cmovnel	%r8d, %edi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	testl	%r10d, %r10d
	jle	.LBB11_14
# BB#1:                                 # %for.body.lr.ph
	movq	120(%rdx), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	leal	32767(%rbx,%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$15, %eax
	addl	%ecx, %eax
	addl	%ebp, %eax
	movzwl	%ax, %r11d
	sarl	$16, %eax
	movl	%eax, -52(%rsp)         # 4-byte Spill
	leal	32767(%r9,%rsi), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$15, %eax
	addl	%ecx, %eax
	addl	%esi, %eax
	movzwl	%ax, %r8d
	sarl	$16, %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	leal	-1(%r10), %ebx
	leaq	1(%rbx), %rax
	xorl	%r13d, %r13d
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	movq	%rax, %rcx
	andq	%rdx, %rcx
	je	.LBB11_11
# BB#2:                                 # %vector.memcheck
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movl	%r8d, -60(%rsp)         # 4-byte Spill
	movq	-8(%rsp), %r9           # 8-byte Reload
	leaq	(%r9,%rbx,2), %rsi
	movq	-24(%rsp), %rdx         # 8-byte Reload
	movq	-32(%rsp), %r15         # 8-byte Reload
	leal	(%rdx,%r15), %ecx
	movq	-40(%rsp), %rdi         # 8-byte Reload
	imull	-52(%rsp), %edi         # 4-byte Folded Reload
	addl	%edi, %ecx
	movq	-16(%rsp), %rax         # 8-byte Reload
	imull	-56(%rsp), %eax         # 4-byte Folded Reload
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	-48(%rsp), %r8          # 8-byte Reload
	leaq	(%r8,%rcx,2), %rbp
	addq	%rbx, %rcx
	leaq	(%r8,%rcx,2), %r13
	leal	(%rdx,%rdi), %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	leaq	(%r8,%rdx,2), %r14
	addq	%rbx, %rdx
	leaq	(%r8,%rdx,2), %rdx
	leal	(%r15,%rax), %ecx
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	leaq	(%r8,%rcx,2), %r12
	addq	%rbx, %rcx
	leaq	(%r8,%rcx,2), %rcx
	addl	%edi, %eax
	cltq
	leaq	(%r8,%rax,2), %r15
	addq	%rbx, %rax
	leaq	(%r8,%rax,2), %rdi
	cmpq	%r9, %r13
	setae	%r8b
	cmpq	%rsi, %rbp
	setbe	-61(%rsp)               # 1-byte Folded Spill
	cmpq	%r9, %rdx
	setae	%al
	cmpq	%rsi, %r14
	setbe	-73(%rsp)               # 1-byte Folded Spill
	cmpq	%r9, %rcx
	setae	%dl
	cmpq	%rsi, %r12
	setbe	-74(%rsp)               # 1-byte Folded Spill
	cmpq	%r9, %rdi
	setae	%cl
	cmpq	%rsi, %r15
	setbe	%sil
	xorl	%r13d, %r13d
	testb	-61(%rsp), %r8b         # 1-byte Folded Reload
	jne	.LBB11_3
# BB#4:                                 # %vector.memcheck
	andb	-73(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB11_3
# BB#5:                                 # %vector.memcheck
	andb	-74(%rsp), %dl          # 1-byte Folded Reload
	movl	-60(%rsp), %r8d         # 4-byte Reload
	jne	.LBB11_6
# BB#7:                                 # %vector.memcheck
	andb	%sil, %cl
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	-88(%rsp), %rcx         # 8-byte Reload
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	jne	.LBB11_11
# BB#8:                                 # %vector.ph
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm8        # xmm8 = xmm1[0,0,0,0]
	incq	%rbx
	andq	%rdx, %rbx
	pxor	%xmm2, %xmm2
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	movdqa	.LCPI11_0(%rip), %xmm11 # xmm11 = [32768,32768,32768,32768]
	movdqa	.LCPI11_1(%rip), %xmm9  # xmm9 = [65535,65535,65535,65535]
	pshufd	$245, %xmm8, %xmm10     # xmm10 = xmm8[1,1,3,3]
	movq	-8(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB11_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %xmm5           # xmm5 = mem[0],zero
	punpcklwd	%xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	movq	(%r12), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movq	(%r14), %xmm7           # xmm7 = mem[0],zero
	punpcklwd	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	movq	(%rbp), %xmm6           # xmm6 = mem[0],zero
	punpcklwd	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	psubd	%xmm5, %xmm7
	pshufd	$245, %xmm7, %xmm4      # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	paddd	%xmm11, %xmm7
	psrld	$16, %xmm7
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, %xmm4
	pand	%xmm9, %xmm4
	psubd	%xmm1, %xmm6
	pshufd	$245, %xmm6, %xmm5      # xmm5 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	paddd	%xmm11, %xmm6
	psrld	$16, %xmm6
	paddd	%xmm1, %xmm6
	pand	%xmm9, %xmm6
	psubd	%xmm4, %xmm6
	pshufd	$245, %xmm6, %xmm1      # xmm1 = xmm6[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm4      # xmm4 = xmm6[0,2,2,3]
	pmuludq	%xmm10, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm11, %xmm4
	psrld	$16, %xmm4
	paddw	%xmm7, %xmm4
	pshuflw	$232, %xmm4, %xmm1      # xmm1 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%rsi)
	addq	$8, %rbp
	addq	$8, %r14
	addq	$8, %r12
	addq	$8, %r15
	addq	$8, %rsi
	addq	$-4, %rbx
	jne	.LBB11_9
# BB#10:
	movq	%rcx, %r13
	jmp	.LBB11_11
.LBB11_3:
	movl	-60(%rsp), %r8d         # 4-byte Reload
	movq	-72(%rsp), %rax         # 8-byte Reload
	jmp	.LBB11_11
.LBB11_6:
	movq	-72(%rsp), %rax         # 8-byte Reload
.LBB11_11:                              # %middle.block
	cmpq	%r13, %rax
	je	.LBB11_14
# BB#12:                                # %for.body.preheader
	movq	-16(%rsp), %rcx         # 8-byte Reload
	imull	-56(%rsp), %ecx         # 4-byte Folded Reload
	movq	-40(%rsp), %rdi         # 8-byte Reload
	imull	-52(%rsp), %edi         # 4-byte Folded Reload
	leal	(%rcx,%rdi), %eax
	cltq
	leaq	(%rax,%r13), %rax
	movq	-48(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbp,%rax,2), %r14
	movq	-32(%rsp), %rsi         # 8-byte Reload
	leal	(%rsi,%rcx), %eax
	addl	%edi, %eax
	cltq
	leaq	(%rax,%r13), %rax
	leaq	(%rbp,%rax,2), %r15
	movq	-24(%rsp), %rdx         # 8-byte Reload
	leal	(%rdx,%rdi), %eax
	addl	%ecx, %eax
	cltq
	leaq	(%rax,%r13), %rax
	leaq	(%rbp,%rax,2), %r12
	addl	%esi, %edx
	addl	%edi, %edx
	addl	%ecx, %edx
	movslq	%edx, %rax
	leaq	(%rax,%r13), %rax
	leaq	(%rbp,%rax,2), %rcx
	movq	-8(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r13,2), %rdi
	subl	%r13d, %r10d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB11_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14,%rax,2), %esi
	movzwl	(%r15,%rax,2), %ebx
	movzwl	(%r12,%rax,2), %edx
	movzwl	(%rcx,%rax,2), %ebp
	subl	%esi, %edx
	imull	%r11d, %edx
	addl	$32768, %edx            # imm = 0x8000
	shrl	$16, %edx
	addl	%esi, %edx
	movzwl	%dx, %esi
	subl	%ebx, %ebp
	imull	%r11d, %ebp
	addl	$32768, %ebp            # imm = 0x8000
	shrl	$16, %ebp
	addl	%ebx, %ebp
	movzwl	%bp, %ebp
	subl	%esi, %ebp
	imull	%r8d, %ebp
	addl	$32768, %ebp            # imm = 0x8000
	shrl	$16, %ebp
	addl	%edx, %ebp
	movw	%bp, (%rdi,%rax,2)
	incq	%rax
	cmpl	%eax, %r10d
	jne	.LBB11_13
.LBB11_14:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	BilinearInterp16, .Lfunc_end11-BilinearInterp16
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	TrilinearInterpFloat,@function
TrilinearInterpFloat:                   # @TrilinearInterpFloat
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
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 96
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	16(%rdx), %ebp
	movl	52(%rdx), %esi
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI12_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movl	56(%rdx), %r9d
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movl	60(%rdx), %r8d
	movl	92(%rdx), %edi
	xorl	%eax, %eax
	ucomiss	%xmm2, %xmm1
	movl	$0, %r12d
	cmovbl	%edi, %r12d
	movl	88(%rdx), %ebx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	ucomiss	%xmm2, %xmm4
	movl	$0, %ecx
	cmovbl	%ebx, %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	84(%rdx), %ebx
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	ucomiss	%xmm2, %xmm3
	cmovbl	%ebx, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB12_19
# BB#1:                                 # %for.body.lr.ph
	movq	120(%rdx), %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movaps	%xmm2, %xmm0
	minss	%xmm1, %xmm0
	xorps	%xmm5, %xmm5
	cmpltss	%xmm5, %xmm1
	andnps	%xmm0, %xmm1
	cvtsi2ssq	%rsi, %xmm11
	mulss	%xmm1, %xmm11
	movaps	%xmm2, %xmm1
	minss	%xmm4, %xmm1
	cmpltss	%xmm5, %xmm4
	andnps	%xmm1, %xmm4
	cvtsi2ssq	%r9, %xmm9
	mulss	%xmm4, %xmm9
	minss	%xmm3, %xmm2
	cmpltss	%xmm5, %xmm3
	andnps	%xmm2, %xmm3
	cvtsi2ssq	%r8, %xmm8
	mulss	%xmm3, %xmm8
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm11, %xmm1
	movsd	.LCPI12_1(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	movd	%xmm1, %rdx
	sarl	$16, %edx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	subss	%xmm1, %xmm11
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm9, %xmm1
	addsd	%xmm2, %xmm1
	movd	%xmm1, %rax
	sarl	$16, %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm9
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm8, %xmm1
	addsd	%xmm2, %xmm1
	movd	%xmm1, %rax
	sarl	$16, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm8
	leal	-1(%rbp), %ebx
	movq	%rbp, -32(%rsp)         # 8-byte Spill
	leaq	1(%rbx), %rbp
	xorl	%r11d, %r11d
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	movq	%rbp, %rax
	andq	%rcx, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	je	.LBB12_16
# BB#2:                                 # %vector.memcheck
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	movq	(%rsp), %r8             # 8-byte Reload
	leal	(%r12,%r8), %eax
	movq	8(%rsp), %r9            # 8-byte Reload
	leal	(%rax,%r9), %esi
	movq	%rdi, -120(%rsp)        # 8-byte Spill
	imull	%edx, %edi
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	addl	%edi, %esi
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	-16(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %ecx
	addl	%ecx, %esi
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	-24(%rsp), %rbp         # 8-byte Reload
	imull	%ebp, %edx
	addl	%edx, %esi
	movslq	%esi, %rsi
	movq	-8(%rsp), %r11          # 8-byte Reload
	leaq	(%r11,%rsi,4), %rbp
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	addq	%rbx, %rsi
	leaq	(%r11,%rsi,4), %rsi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	addl	%edi, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	cltq
	leaq	(%r11,%rax,4), %rsi
	addq	%rbx, %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	leal	(%r12,%r9), %eax
	addl	%edi, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	cltq
	leaq	(%r11,%rax,4), %r14
	addq	%rbx, %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	leal	(%r12,%rdi), %eax
	movq	%r12, -112(%rsp)        # 8-byte Spill
	addl	%ecx, %eax
	addl	%edx, %eax
	cltq
	leaq	(%r11,%rax,4), %r15
	addq	%rbx, %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leal	(%r8,%r9), %eax
	addl	%ecx, %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cltq
	leaq	(%r11,%rax,4), %r13
	addq	%rbx, %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leal	(%r8,%rcx), %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cltq
	leal	(%r9,%rcx), %ebp
	addl	%edi, %ebp
	addl	%edi, %ecx
	leaq	(%r11,%rax,4), %r8
	addq	%rbx, %rax
	addl	%edx, %ebp
	movslq	%ebp, %rdi
	addl	%edx, %ecx
	leaq	(%r11,%rdi,4), %r9
	addq	%rbx, %rdi
	movslq	%ecx, %rbp
	leaq	(%r11,%rbp,4), %r10
	addq	%rbx, %rbp
	movq	32(%rsp), %r12          # 8-byte Reload
	cmpq	%r12, -72(%rsp)         # 8-byte Folded Reload
	movq	-80(%rsp), %rcx         # 8-byte Reload
	leaq	(%r11,%rcx,4), %rcx
	setae	-72(%rsp)               # 1-byte Folded Spill
	leaq	(%r12,%rbx,4), %rdx
	cmpq	%rdx, -48(%rsp)         # 8-byte Folded Reload
	setbe	-80(%rsp)               # 1-byte Folded Spill
	cmpq	%r12, %rcx
	movq	-88(%rsp), %rcx         # 8-byte Reload
	leaq	(%r11,%rcx,4), %rcx
	setae	-88(%rsp)               # 1-byte Folded Spill
	cmpq	%rdx, %rsi
	setbe	-121(%rsp)              # 1-byte Folded Spill
	cmpq	%r12, %rcx
	movq	-96(%rsp), %rcx         # 8-byte Reload
	leaq	(%r11,%rcx,4), %rcx
	setae	-96(%rsp)               # 1-byte Folded Spill
	cmpq	%rdx, %r14
	setbe	-122(%rsp)              # 1-byte Folded Spill
	cmpq	%r12, %rcx
	movq	-104(%rsp), %rcx        # 8-byte Reload
	leaq	(%r11,%rcx,4), %rcx
	setae	-104(%rsp)              # 1-byte Folded Spill
	cmpq	%rdx, %r15
	setbe	-123(%rsp)              # 1-byte Folded Spill
	cmpq	%r12, %rcx
	leaq	(%r11,%rax,4), %rcx
	setae	%al
	cmpq	%rdx, %r13
	setbe	-124(%rsp)              # 1-byte Folded Spill
	cmpq	%r12, %rcx
	leaq	(%r11,%rdi,4), %rcx
	setae	-125(%rsp)              # 1-byte Folded Spill
	cmpq	%rdx, %r8
	setbe	-126(%rsp)              # 1-byte Folded Spill
	cmpq	%r12, %rcx
	leaq	(%r11,%rbp,4), %rcx
	setae	%bpl
	cmpq	%rdx, %r9
	setbe	-127(%rsp)              # 1-byte Folded Spill
	cmpq	%r12, %rcx
	setae	%dil
	cmpq	%rdx, %r10
	setbe	%dl
	xorl	%r11d, %r11d
	movb	-80(%rsp), %cl          # 1-byte Reload
	testb	-72(%rsp), %cl          # 1-byte Folded Reload
	jne	.LBB12_3
# BB#4:                                 # %vector.memcheck
	movb	-121(%rsp), %cl         # 1-byte Reload
	andb	%cl, -88(%rsp)          # 1-byte Folded Spill
	jne	.LBB12_3
# BB#5:                                 # %vector.memcheck
	movb	%dl, -72(%rsp)          # 1-byte Spill
	movb	%al, %r12b
	movb	%bpl, %cl
	movb	-122(%rsp), %dl         # 1-byte Reload
	andb	%dl, -96(%rsp)          # 1-byte Folded Spill
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movq	-40(%rsp), %rbp         # 8-byte Reload
	jne	.LBB12_6
# BB#7:                                 # %vector.memcheck
	movb	-123(%rsp), %al         # 1-byte Reload
	andb	%al, -104(%rsp)         # 1-byte Folded Spill
	jne	.LBB12_6
# BB#8:                                 # %vector.memcheck
	andb	-124(%rsp), %r12b       # 1-byte Folded Reload
	jne	.LBB12_6
# BB#9:                                 # %vector.memcheck
	movb	-126(%rsp), %al         # 1-byte Reload
	andb	%al, -125(%rsp)         # 1-byte Folded Spill
	jne	.LBB12_6
# BB#10:                                # %vector.memcheck
	andb	-127(%rsp), %cl         # 1-byte Folded Reload
	jne	.LBB12_6
# BB#11:                                # %vector.memcheck
	andb	-72(%rsp), %dil         # 1-byte Folded Reload
	movq	-120(%rsp), %rdi        # 8-byte Reload
	movq	-112(%rsp), %r12        # 8-byte Reload
	jne	.LBB12_16
# BB#12:                                # %vector.ph
	movaps	%xmm11, %xmm13
	shufps	$0, %xmm13, %xmm13      # xmm13 = xmm13[0,0,0,0]
	movaps	%xmm9, %xmm12
	shufps	$0, %xmm12, %xmm12      # xmm12 = xmm12[0,0,0,0]
	movaps	%xmm8, %xmm10
	shufps	$0, %xmm10, %xmm10      # xmm10 = xmm10[0,0,0,0]
	incq	%rbx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rbx
	xorl	%ecx, %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	-48(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB12_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r10,%rcx,4), %xmm5
	movups	(%r9,%rcx,4), %xmm0
	movups	(%r8,%rcx,4), %xmm4
	movups	(%r13,%rcx,4), %xmm3
	movups	(%r15,%rcx,4), %xmm1
	movups	(%r14,%rcx,4), %xmm2
	movups	(%rsi,%rcx,4), %xmm6
	movups	(%rbp,%rcx,4), %xmm7
	subps	%xmm5, %xmm1
	mulps	%xmm13, %xmm1
	addps	%xmm5, %xmm1
	subps	%xmm0, %xmm2
	mulps	%xmm13, %xmm2
	addps	%xmm0, %xmm2
	subps	%xmm4, %xmm6
	mulps	%xmm13, %xmm6
	addps	%xmm4, %xmm6
	subps	%xmm3, %xmm7
	mulps	%xmm13, %xmm7
	addps	%xmm3, %xmm7
	subps	%xmm1, %xmm6
	mulps	%xmm12, %xmm6
	addps	%xmm1, %xmm6
	subps	%xmm2, %xmm7
	mulps	%xmm12, %xmm7
	addps	%xmm2, %xmm7
	subps	%xmm6, %xmm7
	mulps	%xmm10, %xmm7
	addps	%xmm6, %xmm7
	movups	%xmm7, (%rax,%rcx,4)
	addq	$4, %rcx
	cmpq	%rcx, %rbx
	jne	.LBB12_13
# BB#14:
	movq	-56(%rsp), %r11         # 8-byte Reload
.LBB12_15:                              # %middle.block
	movq	-40(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB12_16
.LBB12_6:
	movq	-120(%rsp), %rdi        # 8-byte Reload
	movq	-112(%rsp), %r12        # 8-byte Reload
.LBB12_16:                              # %middle.block
	cmpq	%r11, %rbp
	movq	-32(%rsp), %r14         # 8-byte Reload
	je	.LBB12_19
# BB#17:                                # %for.body.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	-16(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %eax
	imull	%edx, %edi
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	-24(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %esi
	movq	8(%rsp), %rbp           # 8-byte Reload
	leal	(%rbp,%rax), %r8d
	addl	%edi, %r8d
	leal	(%r12,%rdi), %r13d
	leal	(%r12,%rbp), %edx
	movq	(%rsp), %rbx            # 8-byte Reload
	addl	%ebx, %r12d
	movq	%rdi, %rcx
	leal	(%r12,%rcx), %edi
	addl	%ebp, %r12d
	leal	(%rbx,%rbp), %ebp
	leal	(%rbx,%rax), %ebx
	addl	%ecx, %ebx
	addl	%eax, %ebp
	addl	%ecx, %ebp
	addl	%ecx, %edx
	addl	%ecx, %r12d
	leal	(%rax,%rcx), %ecx
	addl	%eax, %r13d
	addl	%eax, %edx
	addl	%eax, %edi
	addl	%eax, %r12d
	addl	%esi, %ecx
	addl	%esi, %r8d
	addl	%esi, %ebx
	addl	%esi, %ebp
	addl	%esi, %r13d
	addl	%esi, %edx
	addl	%esi, %edi
	addl	%esi, %r12d
	movslq	%ecx, %rcx
	movq	-8(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx,4), %r9
	movslq	%r8d, %rcx
	leaq	(%rsi,%rcx,4), %r10
	movslq	%ebx, %rbx
	leaq	(%rsi,%rbx,4), %r15
	movslq	%ebp, %rbp
	leaq	(%rsi,%rbp,4), %rbp
	movslq	%r13d, %rax
	leaq	(%rsi,%rax,4), %rax
	movslq	%edx, %rdx
	leaq	(%rsi,%rdx,4), %rbx
	movslq	%edi, %rdi
	leaq	(%rsi,%rdi,4), %rcx
	movslq	%r12d, %rdi
	leaq	(%rsi,%rdi,4), %rdx
	leaq	(%r9,%r11,4), %r8
	leaq	(%r10,%r11,4), %r9
	leaq	(%r15,%r11,4), %r10
	leaq	(%rbp,%r11,4), %rdi
	leaq	(%rax,%r11,4), %rbp
	leaq	(%rbx,%r11,4), %rbx
	leaq	(%rcx,%r11,4), %rax
	leaq	(%rdx,%r11,4), %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%r11,4), %rdx
	subl	%r11d, %r14d
	xorl	%esi, %esi
	.align	16, 0x90
.LBB12_18:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r8,%rsi,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movss	(%r9,%rsi,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movss	(%r10,%rsi,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movss	(%rdi,%rsi,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	movss	(%rbp,%rsi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%rbx,%rsi,4), %xmm7    # xmm7 = mem[0],zero,zero,zero
	movss	(%rax,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movss	(%rcx,%rsi,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm6
	mulss	%xmm11, %xmm6
	addss	%xmm0, %xmm6
	subss	%xmm1, %xmm7
	mulss	%xmm11, %xmm7
	addss	%xmm1, %xmm7
	subss	%xmm4, %xmm2
	mulss	%xmm11, %xmm2
	addss	%xmm4, %xmm2
	subss	%xmm5, %xmm3
	mulss	%xmm11, %xmm3
	addss	%xmm5, %xmm3
	subss	%xmm6, %xmm2
	mulss	%xmm9, %xmm2
	addss	%xmm6, %xmm2
	subss	%xmm7, %xmm3
	mulss	%xmm9, %xmm3
	addss	%xmm7, %xmm3
	subss	%xmm2, %xmm3
	mulss	%xmm8, %xmm3
	addss	%xmm2, %xmm3
	movss	%xmm3, (%rdx,%rsi,4)
	incq	%rsi
	cmpl	%esi, %r14d
	jne	.LBB12_18
.LBB12_19:                              # %for.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_3:
	movq	-112(%rsp), %r12        # 8-byte Reload
	movq	-120(%rsp), %rdi        # 8-byte Reload
	movq	-64(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB12_15
.Lfunc_end12:
	.size	TrilinearInterpFloat, .Lfunc_end12-TrilinearInterpFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
.LCPI13_1:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	TrilinearInterp16,@function
TrilinearInterp16:                      # @TrilinearInterp16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 112
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	16(%rdx), %r12d
	movzwl	(%rdi), %r9d
	movl	52(%rdx), %ebp
	imull	%r9d, %ebp
	leal	32767(%rbp), %eax
	cltq
	imulq	$-2147450879, %rax, %r11 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r11
	movzwl	2(%rdi), %esi
	movl	56(%rdx), %r14d
	imull	%esi, %r14d
	leal	32767(%r14), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %r8 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r8
	movzwl	4(%rdi), %edi
	movl	60(%rdx), %ecx
	imull	%edi, %ecx
	leal	32767(%rcx), %ebx
	movslq	%ebx, %rbx
	imulq	$-2147450879, %rbx, %r10 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r10
	xorl	%eax, %eax
	cmpl	$65535, %r9d            # imm = 0xFFFF
	movl	92(%rdx), %r9d
	movq	%r9, 32(%rsp)           # 8-byte Spill
	cmovel	%eax, %r9d
	cmpl	$65535, %esi            # imm = 0xFFFF
	movl	88(%rdx), %esi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	cmovel	%eax, %esi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	cmpl	$65535, %edi            # imm = 0xFFFF
	movl	84(%rdx), %esi
	movl	%esi, 24(%rsp)          # 4-byte Spill
	cmovnel	%esi, %eax
	testl	%r12d, %r12d
	jle	.LBB13_18
# BB#1:                                 # %for.body.lr.ph
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	120(%rdx), %rdx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	leal	32767(%r11,%rbp), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	sarl	$15, %edx
	addl	%esi, %edx
	addl	%ebp, %edx
	movzwl	%dx, %r13d
	movl	%edx, %ebx
	sarl	$16, %ebx
	leal	32767(%r8,%r14), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	sarl	$15, %edx
	addl	%esi, %edx
	addl	%r14d, %edx
	movzwl	%dx, %eax
	movl	%eax, -12(%rsp)         # 4-byte Spill
	sarl	$16, %edx
	movl	%edx, -28(%rsp)         # 4-byte Spill
	leal	32767(%r10,%rcx), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	sarl	$15, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movzwl	%ax, %edx
	movl	%eax, %edi
	sarl	$16, %edi
	leal	-1(%r12), %r15d
	leaq	1(%r15), %rsi
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	movq	%rsi, %rax
	andq	%rcx, %rax
	je	.LBB13_15
# BB#2:                                 # %vector.memcheck
	movq	%rax, -128(%rsp)        # 8-byte Spill
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	-8(%rsp), %rbp          # 8-byte Reload
	leal	(%r9,%rbp), %eax
	movq	16(%rsp), %r14          # 8-byte Reload
	leal	(%rax,%r14), %ecx
	movq	32(%rsp), %rdx          # 8-byte Reload
	imull	%ebx, %edx
	movl	%ebx, -32(%rsp)         # 4-byte Spill
	addl	%edx, %ecx
	movl	24(%rsp), %esi          # 4-byte Reload
	imull	%edi, %esi
	movl	%edi, -108(%rsp)        # 4-byte Spill
	addl	%esi, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	imull	-28(%rsp), %edi         # 4-byte Folded Reload
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	movq	%rbp, %r8
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leaq	(%rbx,%rcx,2), %rbp
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	addq	%r15, %rcx
	leaq	(%rbx,%rcx,2), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leal	(%r9,%r14), %ecx
	addl	%edx, %ecx
	addl	%edi, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %r11
	leaq	(%rbx,%r11,2), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	addq	%r15, %r11
	addl	%edx, %eax
	addl	%edi, %eax
	addl	%esi, %eax
	movslq	%eax, %rcx
	leaq	(%rbx,%rcx,2), %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	addq	%r15, %rcx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	leal	(%r9,%rdx), %eax
	movq	%r9, -104(%rsp)         # 8-byte Spill
	addl	%edi, %eax
	addl	%esi, %eax
	movslq	%eax, %r10
	leaq	(%rbx,%r10,2), %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	addq	%r15, %r10
	leal	(%r8,%r14), %eax
	addl	%esi, %eax
	addl	%edi, %eax
	addl	%edx, %eax
	movslq	%eax, %r9
	leaq	(%rbx,%r9,2), %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	addq	%r15, %r9
	leal	(%r14,%rdi), %eax
	addl	%edx, %eax
	addl	%esi, %eax
	cltq
	leal	(%r8,%rdi), %ebp
	addl	%edx, %ebp
	addl	%edx, %edi
	leaq	(%rbx,%rax,2), %rcx
	addq	%r15, %rax
	addl	%esi, %ebp
	movslq	%ebp, %rdx
	addl	%esi, %edi
	leaq	(%rbx,%rdx,2), %rbp
	addq	%r15, %rdx
	movslq	%edi, %rsi
	leaq	(%rbx,%rsi,2), %r8
	addq	%r15, %rsi
	movq	(%rsp), %r14            # 8-byte Reload
	cmpq	%r14, 8(%rsp)           # 8-byte Folded Reload
	leaq	(%rbx,%r11,2), %rdi
	setae	-89(%rsp)               # 1-byte Folded Spill
	leaq	(%r14,%r15,2), %r11
	cmpq	%r11, -48(%rsp)         # 8-byte Folded Reload
	setbe	-90(%rsp)               # 1-byte Folded Spill
	cmpq	%r14, %rdi
	movq	-88(%rsp), %rdi         # 8-byte Reload
	leaq	(%rbx,%rdi,2), %rdi
	setae	-88(%rsp)               # 1-byte Folded Spill
	cmpq	%r11, -56(%rsp)         # 8-byte Folded Reload
	setbe	-109(%rsp)              # 1-byte Folded Spill
	cmpq	%r14, %rdi
	leaq	(%rbx,%r10,2), %rdi
	setae	%r10b
	cmpq	%r11, -64(%rsp)         # 8-byte Folded Reload
	setbe	-110(%rsp)              # 1-byte Folded Spill
	cmpq	%r14, %rdi
	leaq	(%rbx,%r9,2), %rdi
	setae	%r9b
	cmpq	%r11, -72(%rsp)         # 8-byte Folded Reload
	setbe	-111(%rsp)              # 1-byte Folded Spill
	cmpq	%r14, %rdi
	leaq	(%rbx,%rax,2), %rdi
	setae	%al
	cmpq	%r11, -80(%rsp)         # 8-byte Folded Reload
	setbe	-112(%rsp)              # 1-byte Folded Spill
	cmpq	%r14, %rdi
	leaq	(%rbx,%rdx,2), %rdi
	setae	%dl
	cmpq	%r11, %rcx
	setbe	-113(%rsp)              # 1-byte Folded Spill
	cmpq	%r14, %rdi
	leaq	(%rbx,%rsi,2), %rsi
	setae	%dil
	cmpq	%r11, %rbp
	setbe	-114(%rsp)              # 1-byte Folded Spill
	cmpq	%r14, %rsi
	setae	%r14b
	cmpq	%r11, %r8
	setbe	%r11b
	xorl	%esi, %esi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movb	-90(%rsp), %bl          # 1-byte Reload
	testb	-89(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB13_3
# BB#4:                                 # %vector.memcheck
	movb	-109(%rsp), %bl         # 1-byte Reload
	andb	%bl, -88(%rsp)          # 1-byte Folded Spill
	jne	.LBB13_3
# BB#5:                                 # %vector.memcheck
	andb	-110(%rsp), %r10b       # 1-byte Folded Reload
	movl	-32(%rsp), %ebx         # 4-byte Reload
	movq	-40(%rsp), %rsi         # 8-byte Reload
	jne	.LBB13_6
# BB#7:                                 # %vector.memcheck
	andb	-111(%rsp), %r9b        # 1-byte Folded Reload
	jne	.LBB13_6
# BB#8:                                 # %vector.memcheck
	andb	-112(%rsp), %al         # 1-byte Folded Reload
	jne	.LBB13_6
# BB#9:                                 # %vector.memcheck
	andb	-113(%rsp), %dl         # 1-byte Folded Reload
	jne	.LBB13_6
# BB#10:                                # %vector.memcheck
	andb	-114(%rsp), %dil        # 1-byte Folded Reload
	jne	.LBB13_6
# BB#11:                                # %vector.memcheck
	andb	%r11b, %r14b
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	-104(%rsp), %r9         # 8-byte Reload
	movl	-108(%rsp), %edi        # 4-byte Reload
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	jne	.LBB13_15
# BB#12:                                # %vector.ph
	movd	%r13d, %xmm0
	pshufd	$0, %xmm0, %xmm14       # xmm14 = xmm0[0,0,0,0]
	movd	-12(%rsp), %xmm1        # 4-byte Folded Reload
                                        # xmm1 = mem[0],zero,zero,zero
	pshufd	$0, %xmm1, %xmm10       # xmm10 = xmm1[0,0,0,0]
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm8        # xmm8 = xmm1[0,0,0,0]
	incq	%r15
	andq	%rax, %r15
	xorl	%r10d, %r10d
	pxor	%xmm15, %xmm15
	pshufd	$245, %xmm14, %xmm4     # xmm4 = xmm14[1,1,3,3]
	movdqa	.LCPI13_0(%rip), %xmm13 # xmm13 = [32768,32768,32768,32768]
	movdqa	.LCPI13_1(%rip), %xmm12 # xmm12 = [65535,65535,65535,65535]
	pshufd	$245, %xmm10, %xmm11    # xmm11 = xmm10[1,1,3,3]
	pshufd	$245, %xmm8, %xmm9      # xmm9 = xmm8[1,1,3,3]
	movq	(%rsp), %rax            # 8-byte Reload
	movq	-48(%rsp), %r14         # 8-byte Reload
	movq	-56(%rsp), %rdx         # 8-byte Reload
	movq	-64(%rsp), %rbx         # 8-byte Reload
	movq	-72(%rsp), %rsi         # 8-byte Reload
	movq	-80(%rsp), %r11         # 8-byte Reload
	.align	16, 0x90
.LBB13_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r8,%r10,2), %xmm7     # xmm7 = mem[0],zero
	punpcklwd	%xmm15, %xmm7   # xmm7 = xmm7[0],xmm15[0],xmm7[1],xmm15[1],xmm7[2],xmm15[2],xmm7[3],xmm15[3]
	movq	(%rbp,%r10,2), %xmm5    # xmm5 = mem[0],zero
	punpcklwd	%xmm15, %xmm5   # xmm5 = xmm5[0],xmm15[0],xmm5[1],xmm15[1],xmm5[2],xmm15[2],xmm5[3],xmm15[3]
	movq	(%rcx,%r10,2), %xmm6    # xmm6 = mem[0],zero
	punpcklwd	%xmm15, %xmm6   # xmm6 = xmm6[0],xmm15[0],xmm6[1],xmm15[1],xmm6[2],xmm15[2],xmm6[3],xmm15[3]
	movq	(%r11,%r10,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm15, %xmm2   # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1],xmm2[2],xmm15[2],xmm2[3],xmm15[3]
	movq	(%rsi,%r10,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm15, %xmm1   # xmm1 = xmm1[0],xmm15[0],xmm1[1],xmm15[1],xmm1[2],xmm15[2],xmm1[3],xmm15[3]
	psubd	%xmm7, %xmm1
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm14, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movq	(%rbx,%r10,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm15, %xmm0   # xmm0 = xmm0[0],xmm15[0],xmm0[1],xmm15[1],xmm0[2],xmm15[2],xmm0[3],xmm15[3]
	paddd	%xmm13, %xmm1
	psrld	$16, %xmm1
	paddd	%xmm7, %xmm1
	psubd	%xmm5, %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm14, %xmm0
	pshufd	$232, %xmm0, %xmm7      # xmm7 = xmm0[0,2,2,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1]
	movq	(%rdx,%r10,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm15, %xmm0   # xmm0 = xmm0[0],xmm15[0],xmm0[1],xmm15[1],xmm0[2],xmm15[2],xmm0[3],xmm15[3]
	paddd	%xmm13, %xmm7
	psrld	$16, %xmm7
	paddd	%xmm5, %xmm7
	psubd	%xmm6, %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm14, %xmm0
	pshufd	$232, %xmm0, %xmm5      # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	movq	(%r14,%r10,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm15, %xmm0   # xmm0 = xmm0[0],xmm15[0],xmm0[1],xmm15[1],xmm0[2],xmm15[2],xmm0[3],xmm15[3]
	paddd	%xmm13, %xmm5
	psrld	$16, %xmm5
	paddd	%xmm6, %xmm5
	psubd	%xmm2, %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm14, %xmm0
	pshufd	$232, %xmm0, %xmm6      # xmm6 = xmm0[0,2,2,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	paddd	%xmm13, %xmm6
	psrld	$16, %xmm6
	paddd	%xmm2, %xmm6
	movdqa	%xmm1, %xmm0
	pand	%xmm12, %xmm0
	pand	%xmm12, %xmm5
	psubd	%xmm0, %xmm5
	pshufd	$245, %xmm5, %xmm0      # xmm0 = xmm5[1,1,3,3]
	pmuludq	%xmm10, %xmm5
	pshufd	$232, %xmm5, %xmm2      # xmm2 = xmm5[0,2,2,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	paddd	%xmm13, %xmm2
	psrld	$16, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm7, %xmm0
	pand	%xmm12, %xmm0
	pand	%xmm12, %xmm6
	psubd	%xmm0, %xmm6
	pshufd	$245, %xmm6, %xmm0      # xmm0 = xmm6[1,1,3,3]
	pmuludq	%xmm10, %xmm6
	pshufd	$232, %xmm6, %xmm1      # xmm1 = xmm6[0,2,2,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	paddd	%xmm13, %xmm1
	psrld	$16, %xmm1
	paddd	%xmm7, %xmm1
	movdqa	%xmm2, %xmm0
	pand	%xmm12, %xmm0
	pand	%xmm12, %xmm1
	psubd	%xmm0, %xmm1
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	paddd	%xmm13, %xmm1
	psrld	$16, %xmm1
	paddw	%xmm2, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rax,%r10,2)
	addq	$4, %r10
	cmpq	%r10, %r15
	jne	.LBB13_13
# BB#14:
	movq	-128(%rsp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	-32(%rsp), %ebx         # 4-byte Reload
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	jmp	.LBB13_15
.LBB13_6:
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	-104(%rsp), %r9         # 8-byte Reload
	movl	-108(%rsp), %edi        # 4-byte Reload
.LBB13_15:                              # %middle.block
	movl	%edx, 52(%rsp)          # 4-byte Spill
	cmpq	8(%rsp), %rsi           # 8-byte Folded Reload
	movl	-12(%rsp), %r14d        # 4-byte Reload
	movq	-8(%rsp), %rcx          # 8-byte Reload
	je	.LBB13_18
# BB#16:                                # %for.body.preheader
	movq	40(%rsp), %rsi          # 8-byte Reload
	imull	-28(%rsp), %esi         # 4-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	imull	%ebx, %eax
	movl	24(%rsp), %edx          # 4-byte Reload
	imull	%edi, %edx
	leal	(%rcx,%rsi), %r10d
	addl	%eax, %r10d
	movq	%rcx, %rdi
	movq	16(%rsp), %rbx          # 8-byte Reload
	leal	(%rdi,%rbx), %ecx
	leal	(%r9,%rax), %r15d
	leal	(%rdi,%r9), %edi
	leal	(%rdi,%rax), %ebp
	addl	%ebx, %r9d
	addl	%ebx, %edi
	leal	(%rbx,%rsi), %ebx
	addl	%eax, %ebx
	addl	%edx, %ecx
	addl	%esi, %ecx
	addl	%eax, %ecx
	addl	%eax, %r9d
	addl	%eax, %edi
	leal	(%rsi,%rax), %eax
	addl	%edx, %eax
	addl	%edx, %r10d
	addl	%edx, %ebx
	addl	%esi, %r15d
	addl	%edx, %r15d
	addl	%esi, %ebp
	addl	%edx, %ebp
	addl	%esi, %r9d
	addl	%edx, %r9d
	addl	%edx, %edi
	addl	%esi, %edi
	cltq
	movq	8(%rsp), %r11           # 8-byte Reload
	movq	-24(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax,2), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%r10d, %rax
	leaq	(%rsi,%rax,2), %r10
	movslq	%ebx, %rbx
	leaq	(%rsi,%rbx,2), %r8
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx,2), %rcx
	movslq	%r15d, %rdx
	leaq	(%rsi,%rdx,2), %rdx
	movslq	%ebp, %rbp
	leaq	(%rsi,%rbp,2), %rbp
	movslq	%r9d, %rax
	leaq	(%rsi,%rax,2), %rax
	movslq	%edi, %rdi
	leaq	(%rsi,%rdi,2), %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%r11,2), %rsi
	leaq	(%r10,%r11,2), %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	leaq	(%r8,%r11,2), %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leaq	(%rcx,%r11,2), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	(%rdx,%r11,2), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	(%rbp,%r11,2), %r10
	leaq	(%rax,%r11,2), %r8
	leaq	(%rdi,%r11,2), %r9
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%rax,%r11,2), %r15
	subl	%r11d, %r12d
	movq	%rsi, %r11
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r11,%rax,2), %esi
	movq	%r12, %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	movzwl	(%rdx,%rax,2), %r12d
	movl	%r13d, %ebx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movzwl	(%rdx,%rax,2), %r13d
	movq	24(%rsp), %rdx          # 8-byte Reload
	movzwl	(%rdx,%rax,2), %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movzwl	(%rdi,%rax,2), %edi
	subl	%esi, %edi
	imull	%ebx, %edi
	addl	$32768, %edi            # imm = 0x8000
	shrl	$16, %edi
	addl	%esi, %edi
	movzwl	(%r10,%rax,2), %esi
	subl	%r12d, %esi
	imull	%ebx, %esi
	addl	$32768, %esi            # imm = 0x8000
	shrl	$16, %esi
	addl	%r12d, %esi
	movq	%rcx, %r12
	movzwl	(%r8,%rax,2), %ecx
	subl	%r13d, %ecx
	imull	%ebx, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	shrl	$16, %ecx
	addl	%r13d, %ecx
	movl	%ebx, %r13d
	movzwl	(%r9,%rax,2), %ebp
	subl	%edx, %ebp
	imull	%r13d, %ebp
	addl	$32768, %ebp            # imm = 0x8000
	shrl	$16, %ebp
	addl	%edx, %ebp
	movzwl	%di, %ebx
	movzwl	%cx, %edx
	subl	%ebx, %edx
	imull	%r14d, %edx
	addl	$32768, %edx            # imm = 0x8000
	shrl	$16, %edx
	addl	%edi, %edx
	movzwl	%si, %ecx
	movzwl	%bp, %edi
	subl	%ecx, %edi
	imull	%r14d, %edi
	addl	$32768, %edi            # imm = 0x8000
	shrl	$16, %edi
	addl	%esi, %edi
	movzwl	%dx, %ecx
	movzwl	%di, %esi
	subl	%ecx, %esi
	imull	52(%rsp), %esi          # 4-byte Folded Reload
	addl	$32768, %esi            # imm = 0x8000
	shrl	$16, %esi
	addl	%edx, %esi
	movw	%si, (%r15,%rax,2)
	incq	%rax
	cmpl	%eax, %r12d
	jne	.LBB13_17
.LBB13_18:                              # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_3:
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	-104(%rsp), %r9         # 8-byte Reload
	movl	-32(%rsp), %ebx         # 4-byte Reload
	movl	-108(%rsp), %edi        # 4-byte Reload
	movq	-40(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB13_15
.Lfunc_end13:
	.size	TrilinearInterp16, .Lfunc_end13-TrilinearInterp16
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	TetrahedralInterpFloat,@function
TetrahedralInterpFloat:                 # @TetrahedralInterpFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 56
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rdx, %rcx
	movl	16(%rcx), %r12d
	movl	52(%rcx), %ebx
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm4          # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI14_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movl	56(%rcx), %edx
	movss	8(%rdi), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movl	60(%rcx), %ebp
	movl	92(%rcx), %r14d
	xorl	%edi, %edi
	ucomiss	%xmm2, %xmm1
	movl	$0, %eax
	cmovbl	%r14d, %eax
	movl	88(%rcx), %r15d
	ucomiss	%xmm2, %xmm4
	movl	$0, %r8d
	cmovbl	%r15d, %r8d
	movl	84(%rcx), %r13d
	ucomiss	%xmm2, %xmm3
	cmovbl	%r13d, %edi
	testl	%r12d, %r12d
	jle	.LBB14_16
# BB#1:                                 # %for.body.lr.ph
	movaps	%xmm2, %xmm0
	minss	%xmm1, %xmm0
	xorps	%xmm5, %xmm5
	cmpltss	%xmm5, %xmm1
	andnps	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rbx, %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	minss	%xmm4, %xmm1
	cmpltss	%xmm5, %xmm4
	andnps	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2ssq	%rdx, %xmm1
	mulss	%xmm4, %xmm1
	minss	%xmm3, %xmm2
	cmpltss	%xmm5, %xmm3
	andnps	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsi2ssq	%rbp, %xmm2
	mulss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI14_1(%rip), %xmm4  # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm3
	movd	%xmm3, %r11
	sarl	$16, %r11d
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%r11d, %xmm3
	subss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	addsd	%xmm4, %xmm3
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	movd	%xmm3, %rdi
	sarl	$16, %edi
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edi, %xmm3
	subss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm3
	addsd	%xmm4, %xmm3
	movd	%xmm3, %rbp
	sarl	$16, %ebp
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ebp, %xmm3
	subss	%xmm3, %xmm2
	ucomiss	%xmm1, %xmm0
	movq	%rax, -32(%rsp)         # 8-byte Spill
	sbbb	%r9b, %r9b
	ucomiss	%xmm0, %xmm2
	sbbb	%r10b, %r10b
	movb	%r9b, %bl
	orb	%r10b, %bl
	ucomiss	%xmm2, %xmm1
	sbbb	%al, %al
	orb	%al, %r9b
	orb	%r10b, %al
	movb	%al, -17(%rsp)          # 1-byte Spill
	andb	$1, %r9b
	ucomiss	%xmm2, %xmm0
	sbbb	%al, %al
	movb	%al, -33(%rsp)          # 1-byte Spill
	ucomiss	%xmm1, %xmm2
	sbbb	%dl, %dl
	movb	%dl, -18(%rsp)          # 1-byte Spill
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	orb	%dl, %al
	andb	$1, %al
	movb	%al, -1(%rsp)           # 1-byte Spill
	andb	$1, %bl
	movb	%bl, -2(%rsp)           # 1-byte Spill
	ucomiss	%xmm0, %xmm1
	sbbb	%dl, %dl
	imull	%edi, %r15d
	imull	%r11d, %r14d
	leal	(%r15,%r14), %edi
	imull	%ebp, %r13d
	addl	%r13d, %edi
	movq	-32(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%r14), %eax
	addl	%r15d, %eax
	addl	%r13d, %eax
	leal	(%rcx,%r8), %ebx
	addl	%r14d, %ebx
	addl	%r15d, %ebx
	addl	%r13d, %ebx
	movq	-48(%rsp), %r10         # 8-byte Reload
	addl	%r10d, %ecx
	leal	(%rcx,%r8), %r11d
	addl	%r14d, %r11d
	addl	%r13d, %r11d
	addl	%r14d, %ecx
	addl	%r13d, %ecx
	movq	%r14, %rbp
	leal	(%r8,%r15), %r14d
	addl	%r10d, %r8d
	leal	(%r10,%r15), %r10d
	addl	%ebp, %r10d
	addl	%r13d, %r10d
	addl	%ebp, %r14d
	addl	%r13d, %r14d
	addl	%r13d, %r8d
	addl	%r15d, %r11d
	addl	%r15d, %ecx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	addl	%r15d, %r8d
	addl	%ebp, %r8d
	movb	-18(%rsp), %bpl         # 1-byte Reload
	movb	%dl, %cl
	orb	%cl, %bpl
	orb	-33(%rsp), %cl          # 1-byte Folded Reload
	movq	-16(%rsp), %rdx         # 8-byte Reload
	movq	120(%rdx), %r13
	andb	$1, %cl
	movb	%cl, -16(%rsp)          # 1-byte Spill
	andb	$1, -17(%rsp)           # 1-byte Folded Spill
	andb	$1, %bpl
	movb	%bpl, -18(%rsp)         # 1-byte Spill
	movslq	%edi, %rdx
	leaq	(%r13,%rdx,4), %rdx
	cltq
	leaq	(%r13,%rax,4), %rbp
	movslq	%ebx, %rax
	leaq	(%r13,%rax,4), %rbx
	movslq	%r11d, %rax
	leaq	(%r13,%rax,4), %rdi
	movq	-32(%rsp), %rax         # 8-byte Reload
	cltq
	leaq	(%r13,%rax,4), %rcx
	movslq	%r10d, %rax
	leaq	(%r13,%rax,4), %r15
	movslq	%r14d, %rax
	leaq	(%r13,%rax,4), %r11
	movslq	%r8d, %rax
	leaq	(%r13,%rax,4), %r8
	xorl	%eax, %eax
	.align	16, 0x90
.LBB14_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	testb	%r9b, %r9b
	je	.LBB14_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$0, -1(%rsp)            # 1-byte Folded Reload
	je	.LBB14_5
# BB#6:                                 # %if.else.132
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$0, -2(%rsp)            # 1-byte Folded Reload
	je	.LBB14_7
# BB#8:                                 # %if.else.167
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$0, -16(%rsp)           # 1-byte Folded Reload
	je	.LBB14_9
# BB#10:                                # %if.else.202
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$0, -17(%rsp)           # 1-byte Folded Reload
	je	.LBB14_11
# BB#12:                                # %if.else.237
                                        #   in Loop: Header=BB14_2 Depth=1
	xorpd	%xmm4, %xmm4
	cmpb	$0, -18(%rsp)           # 1-byte Folded Reload
	xorps	%xmm5, %xmm5
	xorps	%xmm6, %xmm6
	jne	.LBB14_15
# BB#13:                                # %if.then.243
                                        #   in Loop: Header=BB14_2 Depth=1
	movss	(%rdi,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%r8,%rax,4), %xmm4     # xmm4 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm6
	movss	(%r15,%rax,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm4
	jmp	.LBB14_14
	.align	16, 0x90
.LBB14_3:                               # %if.then
                                        #   in Loop: Header=BB14_2 Depth=1
	movss	(%rbp,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%rbx,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movss	(%rdi,%rax,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm5
	subss	%xmm6, %xmm4
	subss	%xmm3, %xmm6
	jmp	.LBB14_15
	.align	16, 0x90
.LBB14_5:                               # %if.then.103
                                        #   in Loop: Header=BB14_2 Depth=1
	movss	(%rbp,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%rdi,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movss	(%rcx,%rax,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm4
	subss	%xmm6, %xmm5
	subss	%xmm3, %xmm6
	jmp	.LBB14_15
.LBB14_7:                               # %if.then.138
                                        #   in Loop: Header=BB14_2 Depth=1
	movss	(%rcx,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%r15,%rax,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	movss	(%rdi,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm4
	subss	%xmm5, %xmm6
.LBB14_14:                              # %if.end.277
                                        #   in Loop: Header=BB14_2 Depth=1
	subss	%xmm3, %xmm5
	jmp	.LBB14_15
.LBB14_9:                               # %if.then.173
                                        #   in Loop: Header=BB14_2 Depth=1
	movss	(%rbx,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%r11,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movss	(%rdi,%rax,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm5
	subss	%xmm4, %xmm6
	subss	%xmm3, %xmm4
	jmp	.LBB14_15
.LBB14_11:                              # %if.then.208
                                        #   in Loop: Header=BB14_2 Depth=1
	movss	(%rdi,%rax,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	movss	(%r8,%rax,4), %xmm5     # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm6
	movss	(%r11,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm5
	subss	%xmm3, %xmm4
	.align	16, 0x90
.LBB14_15:                              # %if.end.277
                                        #   in Loop: Header=BB14_2 Depth=1
	mulss	%xmm0, %xmm6
	addss	%xmm6, %xmm3
	mulss	%xmm1, %xmm4
	addss	%xmm3, %xmm4
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm5
	movss	%xmm5, (%rsi,%rax,4)
	incq	%rax
	cmpl	%eax, %r12d
	jne	.LBB14_2
.LBB14_16:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	TetrahedralInterpFloat, .Lfunc_end14-TetrahedralInterpFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.long	32769                   # 0x8001
	.long	32769                   # 0x8001
	.long	32769                   # 0x8001
	.long	32769                   # 0x8001
	.text
	.align	16, 0x90
	.type	TetrahedralInterp16,@function
TetrahedralInterp16:                    # @TetrahedralInterp16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movzwl	(%rdi), %r8d
	movl	52(%rdx), %eax
	imull	%r8d, %eax
	leal	32767(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %rcx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rcx
	leal	32767(%rcx,%rax), %r11d
	movl	%r11d, %ecx
	shrl	$31, %ecx
	sarl	$15, %r11d
	addl	%ecx, %r11d
	addl	%eax, %r11d
	movzwl	2(%rdi), %r9d
	movl	56(%rdx), %eax
	imull	%r9d, %eax
	leal	32767(%rax), %ebx
	movslq	%ebx, %rbx
	imulq	$-2147450879, %rbx, %rbx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rbx
	leal	32767(%rbx,%rax), %r12d
	movl	%r12d, %ebx
	shrl	$31, %ebx
	sarl	$15, %r12d
	addl	%ebx, %r12d
	addl	%eax, %r12d
	movzwl	4(%rdi), %r10d
	movl	60(%rdx), %ebx
	imull	%r10d, %ebx
	leal	32767(%rbx), %eax
	cltq
	imulq	$-2147450879, %rax, %rax # imm = 0xFFFFFFFF80008001
	shrq	$32, %rax
	leal	32767(%rax,%rbx), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	sarl	$15, %eax
	addl	%edi, %eax
	addl	%ebx, %eax
	movl	%r11d, %r13d
	sarl	$16, %r13d
	movl	%r12d, %ecx
	sarl	$16, %ecx
	movl	%eax, %ebx
	sarl	$16, %ebx
	movl	92(%rdx), %edi
	imull	%edi, %r13d
	xorl	%r15d, %r15d
	cmpl	$65535, %r8d            # imm = 0xFFFF
	cmovel	%r15d, %edi
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	movl	88(%rdx), %ebp
	imull	%ebp, %ecx
	cmpl	$65535, %r9d            # imm = 0xFFFF
	movl	84(%rdx), %edi
	cmovel	%r15d, %ebp
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	imull	%edi, %ebx
	cmpl	$65535, %r10d           # imm = 0xFFFF
	movzwl	%r11w, %r14d
	movzwl	%r12w, %r12d
	movzwl	%ax, %r8d
	cmovel	%r15d, %edi
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	movabsq	$8589934588, %r11       # imm = 0x1FFFFFFFC
	addl	%r13d, %ecx
	movq	120(%rdx), %r10
	movl	16(%rdx), %edx
	addl	%ebx, %ecx
	movslq	%ecx, %r15
	leaq	(%r10,%r15,2), %rdi
	cmpl	%r12d, %r14d
	jae	.LBB15_1
# BB#42:                                # %if.else.163
	cmpl	%r8d, %r14d
	jae	.LBB15_43
# BB#56:                                # %if.else.203
	cmpl	%r8d, %r12d
	jae	.LBB15_57
# BB#70:                                # %if.else.243
	testl	%edx, %edx
	je	.LBB15_83
# BB#71:                                # %for.body.248.lr.ph
	leal	-1(%rdx), %r13d
	leaq	1(%r13), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB15_80
# BB#72:                                # %vector.memcheck745
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movq	%rax, -72(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r13,2), %rbp
	leaq	(%r15,%r13), %rax
	leaq	(%r10,%rax,2), %r11
	movq	-8(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rcx
	leaq	(%r10,%rcx,2), %rbx
	movq	%rbx, -40(%rsp)         # 8-byte Spill
	addq	%r13, %rcx
	leaq	(%r10,%rcx,2), %r9
	movq	-16(%rsp), %rbx         # 8-byte Reload
	leal	(%rax,%rbx), %ebx
	movslq	%ebx, %rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	leaq	(%r15,%rcx), %rbx
	leaq	(%r10,%rbx,2), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	addq	%r13, %rbx
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	cltq
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leaq	(%rax,%r15), %rax
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	(%r10,%rax,2), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	addq	%r13, %rax
	cmpq	%rsi, %r11
	setae	-64(%rsp)               # 1-byte Folded Spill
	cmpq	%rbp, %rdi
	setbe	%r15b
	cmpq	%rsi, %r9
	setae	%r9b
	cmpq	%rbp, -40(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rbx,2), %rcx
	setbe	%bl
	cmpq	%rsi, %rcx
	setae	%r11b
	cmpq	%rbp, -48(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rax,2), %rcx
	setbe	%al
	cmpq	%rsi, %rcx
	setae	%cl
	cmpq	%rbp, -56(%rsp)         # 8-byte Folded Reload
	setbe	-40(%rsp)               # 1-byte Folded Spill
	xorl	%ebp, %ebp
	testb	-64(%rsp), %r15b        # 1-byte Folded Reload
	jne	.LBB15_79
# BB#73:                                # %vector.memcheck745
	andb	%bl, %r9b
	jne	.LBB15_79
# BB#74:                                # %vector.memcheck745
	andb	%al, %r11b
	jne	.LBB15_79
# BB#75:                                # %vector.memcheck745
	andb	-40(%rsp), %cl          # 1-byte Folded Reload
	jne	.LBB15_79
# BB#76:                                # %vector.ph746
	movq	-80(%rsp), %r9          # 8-byte Reload
	subl	%r9d, %edx
	leaq	(%rsi,%r9,2), %r11
	leaq	(%rdi,%r9,2), %rdi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm10       # xmm10 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax,2), %rbx
	movq	-104(%rsp), %rax        # 8-byte Reload
	leaq	(%rbx,%rax,2), %r15
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rcx
	movq	-88(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rbp
	incq	%r13
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %r13
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	pshufd	$245, %xmm9, %xmm12     # xmm12 = xmm9[1,1,3,3]
	pshufd	$245, %xmm10, %xmm5     # xmm5 = xmm10[1,1,3,3]
	pshufd	$245, %xmm11, %xmm6     # xmm6 = xmm11[1,1,3,3]
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [32769,32769,32769,32769]
	.align	16, 0x90
.LBB15_77:                              # %vector.body700
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movq	(%rcx,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movq	(%rbp,%rax,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movq	(%rbx,%rax,2), %xmm7    # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	psubd	%xmm2, %xmm1
	psubd	%xmm0, %xmm2
	psubd	%xmm7, %xmm0
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm12, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	paddd	%xmm8, %xmm2
	movdqa	%xmm2, %xmm0
	psrad	$16, %xmm0
	paddd	%xmm2, %xmm0
	psrld	$16, %xmm0
	paddw	%xmm7, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.LBB15_77
# BB#78:
	movq	%r11, %rsi
	movq	%r9, %rbp
.LBB15_79:                              # %middle.block701
	movq	-72(%rsp), %rax         # 8-byte Reload
.LBB15_80:                              # %middle.block701
	cmpq	%rbp, %rax
	je	.LBB15_83
# BB#81:                                # %for.body.248.preheader
	movq	-8(%rsp), %rbp          # 8-byte Reload
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %ecx
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movslq	%eax, %r9
	movslq	%ecx, %r10
	movslq	%ebp, %r11
	.align	16, 0x90
.LBB15_82:                              # %for.body.248
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r9,2), %ebx
	movzwl	(%rdi,%r10,2), %eax
	movzwl	(%rdi,%r11,2), %ecx
	movzwl	(%rdi), %ebp
	addq	$2, %rdi
	subl	%eax, %ebx
	subl	%ecx, %eax
	subl	%ebp, %ecx
	imull	%r14d, %ebx
	imull	%r12d, %eax
	imull	%r8d, %ecx
	addl	%ebx, %eax
	leal	(%rax,%rcx), %ebx
	leal	32769(%rcx,%rax), %eax
	sarl	$16, %eax
	leal	32769(%rax,%rbx), %eax
	shrl	$16, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %rsi
	decl	%edx
	jne	.LBB15_82
	jmp	.LBB15_83
.LBB15_1:                               # %if.then
	cmpl	%r8d, %r12d
	jae	.LBB15_2
# BB#15:                                # %if.else
	cmpl	%r14d, %r8d
	jae	.LBB15_16
# BB#29:                                # %if.else.125
	testl	%edx, %edx
	je	.LBB15_83
# BB#30:                                # %for.body.130.lr.ph
	leal	-1(%rdx), %r13d
	leaq	1(%r13), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB15_39
# BB#31:                                # %vector.memcheck463
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	%rax, -80(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r13,2), %rbp
	leaq	(%r15,%r13), %rax
	leaq	(%r10,%rax,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leal	(%rax,%rbx), %ecx
	movslq	%ecx, %r9
	movq	%r9, -96(%rsp)          # 8-byte Spill
	leaq	(%r15,%r9), %rcx
	leaq	(%r10,%rcx,2), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	addq	%r13, %rcx
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	(%r10,%rcx,2), %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%r9,%rax), %eax
	movslq	%eax, %r9
	leaq	(%r9,%r15), %rcx
	leaq	(%r10,%rcx,2), %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	addq	%r13, %rcx
	movslq	%ebx, %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leaq	(%rax,%r15), %rax
	leaq	(%r10,%rax,2), %rbx
	movq	%rbx, -72(%rsp)         # 8-byte Spill
	addq	%r13, %rax
	cmpq	%rsi, -40(%rsp)         # 8-byte Folded Reload
	setae	-40(%rsp)               # 1-byte Folded Spill
	cmpq	%rbp, %rdi
	setbe	%bl
	cmpq	%rsi, -56(%rsp)         # 8-byte Folded Reload
	setae	%r15b
	cmpq	%rbp, -48(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rcx,2), %rcx
	setbe	-48(%rsp)               # 1-byte Folded Spill
	cmpq	%rsi, %rcx
	setae	%cl
	cmpq	%rbp, -64(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rax,2), %rax
	setbe	-56(%rsp)               # 1-byte Folded Spill
	cmpq	%rsi, %rax
	setae	%al
	cmpq	%rbp, -72(%rsp)         # 8-byte Folded Reload
	setbe	-64(%rsp)               # 1-byte Folded Spill
	xorl	%ebp, %ebp
	testb	-40(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB15_38
# BB#32:                                # %vector.memcheck463
	andb	-48(%rsp), %r15b        # 1-byte Folded Reload
	jne	.LBB15_38
# BB#33:                                # %vector.memcheck463
	andb	-56(%rsp), %cl          # 1-byte Folded Reload
	jne	.LBB15_38
# BB#34:                                # %vector.memcheck463
	movq	%r9, %rcx
	andb	-64(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB15_38
# BB#35:                                # %vector.ph464
	movq	-88(%rsp), %r9          # 8-byte Reload
	subl	%r9d, %edx
	leaq	(%rsi,%r9,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leaq	(%rdi,%r9,2), %rdi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm10       # xmm10 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax,2), %rbx
	movq	-104(%rsp), %rax        # 8-byte Reload
	leaq	(%rbx,%rax,2), %r15
	leaq	(%rbx,%rcx,2), %rcx
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rbp
	incq	%r13
	andq	%r11, %r13
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	pshufd	$245, %xmm9, %xmm12     # xmm12 = xmm9[1,1,3,3]
	pshufd	$245, %xmm10, %xmm5     # xmm5 = xmm10[1,1,3,3]
	pshufd	$245, %xmm11, %xmm6     # xmm6 = xmm11[1,1,3,3]
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [32769,32769,32769,32769]
	.align	16, 0x90
.LBB15_36:                              # %vector.body418
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movq	(%rcx,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movq	(%rbp,%rax,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movq	(%rbx,%rax,2), %xmm7    # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	psubd	%xmm0, %xmm2
	psubd	%xmm1, %xmm0
	psubd	%xmm7, %xmm1
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm12, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$16, %xmm1
	paddd	%xmm0, %xmm1
	psrld	$16, %xmm1
	paddw	%xmm7, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.LBB15_36
# BB#37:
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movq	%r9, %rbp
.LBB15_38:                              # %middle.block419
	movq	-80(%rsp), %rax         # 8-byte Reload
.LBB15_39:                              # %middle.block419
	cmpq	%rbp, %rax
	je	.LBB15_83
# BB#40:                                # %for.body.130.preheader
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	movslq	%ecx, %r9
	movq	-8(%rsp), %rax          # 8-byte Reload
	addl	%ecx, %eax
	movq	-16(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	movslq	%ecx, %r10
	movslq	%eax, %r11
	.align	16, 0x90
.LBB15_41:                              # %for.body.130
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r9,2), %ebx
	movzwl	(%rdi,%r10,2), %eax
	movzwl	(%rdi,%r11,2), %ecx
	movzwl	(%rdi), %ebp
	addq	$2, %rdi
	subl	%ecx, %eax
	subl	%ebx, %ecx
	subl	%ebp, %ebx
	imull	%r14d, %ebx
	imull	%r12d, %eax
	imull	%r8d, %ecx
	addl	%eax, %ecx
	leal	(%rcx,%rbx), %eax
	leal	32769(%rbx,%rcx), %ecx
	sarl	$16, %ecx
	leal	32769(%rcx,%rax), %eax
	shrl	$16, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %rsi
	decl	%edx
	jne	.LBB15_41
	jmp	.LBB15_83
.LBB15_43:                              # %if.then.166
	testl	%edx, %edx
	je	.LBB15_83
# BB#44:                                # %for.body.171.lr.ph
	leal	-1(%rdx), %r13d
	leaq	1(%r13), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB15_53
# BB#45:                                # %vector.memcheck557
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movq	%rax, -72(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r13,2), %rbp
	leaq	(%r15,%r13), %rax
	leaq	(%r10,%rax,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %r9d
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	(%r9,%rax), %ebx
	movslq	%ebx, %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	leaq	(%rax,%r15), %rbx
	leaq	(%r10,%rbx,2), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	addq	%r13, %rbx
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	(%r10,%rbx,2), %r11
	movslq	%ecx, %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leaq	(%rax,%r15), %rax
	leaq	(%r10,%rax,2), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	addq	%r13, %rax
	movslq	%r9d, %rcx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	leaq	(%r15,%rcx), %r9
	leaq	(%r10,%r9,2), %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	addq	%r13, %r9
	cmpq	%rsi, -40(%rsp)         # 8-byte Folded Reload
	setae	-40(%rsp)               # 1-byte Folded Spill
	cmpq	%rbp, %rdi
	setbe	%bl
	cmpq	%rsi, %r11
	setae	%cl
	cmpq	%rbp, -48(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rax,2), %rax
	setbe	%r15b
	cmpq	%rsi, %rax
	setae	%r11b
	cmpq	%rbp, -56(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%r9,2), %rax
	setbe	%r9b
	cmpq	%rsi, %rax
	setae	%al
	cmpq	%rbp, -64(%rsp)         # 8-byte Folded Reload
	setbe	-48(%rsp)               # 1-byte Folded Spill
	xorl	%ebp, %ebp
	testb	-40(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB15_52
# BB#46:                                # %vector.memcheck557
	andb	%r15b, %cl
	jne	.LBB15_52
# BB#47:                                # %vector.memcheck557
	andb	%r9b, %r11b
	jne	.LBB15_52
# BB#48:                                # %vector.memcheck557
	andb	-48(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB15_52
# BB#49:                                # %vector.ph558
	movq	-80(%rsp), %r9          # 8-byte Reload
	subl	%r9d, %edx
	leaq	(%rsi,%r9,2), %r11
	leaq	(%rdi,%r9,2), %rdi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm10       # xmm10 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax,2), %rbx
	movq	-104(%rsp), %rax        # 8-byte Reload
	leaq	(%rbx,%rax,2), %r15
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rcx
	movq	-88(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rbp
	incq	%r13
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %r13
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	pshufd	$245, %xmm9, %xmm12     # xmm12 = xmm9[1,1,3,3]
	pshufd	$245, %xmm10, %xmm5     # xmm5 = xmm10[1,1,3,3]
	pshufd	$245, %xmm11, %xmm6     # xmm6 = xmm11[1,1,3,3]
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [32769,32769,32769,32769]
	.align	16, 0x90
.LBB15_50:                              # %vector.body512
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movq	(%rcx,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movq	(%rbp,%rax,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movq	(%rbx,%rax,2), %xmm7    # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	psubd	%xmm1, %xmm0
	psubd	%xmm2, %xmm1
	psubd	%xmm7, %xmm2
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm12, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$16, %xmm1
	paddd	%xmm0, %xmm1
	psrld	$16, %xmm1
	paddw	%xmm7, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.LBB15_50
# BB#51:
	movq	%r11, %rsi
	movq	%r9, %rbp
.LBB15_52:                              # %middle.block513
	movq	-72(%rsp), %rax         # 8-byte Reload
.LBB15_53:                              # %middle.block513
	cmpq	%rbp, %rax
	je	.LBB15_83
# BB#54:                                # %for.body.171.preheader
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movslq	%eax, %r10
	movslq	%ecx, %r9
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r10), %ebp
	movslq	%ebp, %r11
	.align	16, 0x90
.LBB15_55:                              # %for.body.171
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r10,2), %ebx
	movzwl	(%rdi,%r9,2), %ecx
	movzwl	(%rdi,%r11,2), %eax
	movzwl	(%rdi), %ebp
	addq	$2, %rdi
	subl	%ebx, %eax
	subl	%ecx, %ebx
	subl	%ebp, %ecx
	imull	%r14d, %ebx
	imull	%r12d, %ecx
	imull	%r8d, %eax
	addl	%ebx, %eax
	leal	(%rax,%rcx), %ebx
	leal	32769(%rcx,%rax), %eax
	sarl	$16, %eax
	leal	32769(%rax,%rbx), %eax
	shrl	$16, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %rsi
	decl	%edx
	jne	.LBB15_55
	jmp	.LBB15_83
.LBB15_2:                               # %if.then.57
	testl	%edx, %edx
	je	.LBB15_83
# BB#3:                                 # %for.body.lr.ph
	leal	-1(%rdx), %r13d
	leaq	1(%r13), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB15_12
# BB#4:                                 # %vector.memcheck
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movq	%rax, -72(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r13,2), %r9
	leaq	(%r15,%r13), %rax
	leaq	(%r10,%rax,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	-24(%rsp), %rbp         # 8-byte Reload
	leal	(%rax,%rbp), %ecx
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	(%rcx,%rax), %ebx
	movslq	%ebx, %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	leaq	(%rax,%r15), %rbx
	leaq	(%r10,%rbx,2), %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	addq	%r13, %rbx
	leaq	(%r10,%rbx,2), %r11
	movslq	%ecx, %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leaq	(%r15,%rax), %rax
	leaq	(%r10,%rax,2), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	addq	%r13, %rax
	movslq	%ebp, %rcx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	(%rcx,%r15), %r15
	leaq	(%r10,%r15,2), %rbp
	addq	%r13, %r15
	cmpq	%rsi, -40(%rsp)         # 8-byte Folded Reload
	setae	-40(%rsp)               # 1-byte Folded Spill
	cmpq	%r9, %rdi
	setbe	-64(%rsp)               # 1-byte Folded Spill
	cmpq	%rsi, %r11
	setae	%cl
	cmpq	%r9, -48(%rsp)          # 8-byte Folded Reload
	leaq	(%r10,%rax,2), %rax
	setbe	-48(%rsp)               # 1-byte Folded Spill
	cmpq	%rsi, %rax
	setae	%bl
	cmpq	%r9, -56(%rsp)          # 8-byte Folded Reload
	leaq	(%r10,%r15,2), %rax
	setbe	%r15b
	cmpq	%rsi, %rax
	setae	%r11b
	cmpq	%r9, %rbp
	setbe	%r9b
	xorl	%ebp, %ebp
	movb	-64(%rsp), %al          # 1-byte Reload
	testb	-40(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB15_11
# BB#5:                                 # %vector.memcheck
	andb	-48(%rsp), %cl          # 1-byte Folded Reload
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	jne	.LBB15_11
# BB#6:                                 # %vector.memcheck
	andb	%r15b, %bl
	jne	.LBB15_11
# BB#7:                                 # %vector.memcheck
	andb	%r9b, %r11b
	jne	.LBB15_11
# BB#8:                                 # %vector.ph
	movq	-80(%rsp), %r9          # 8-byte Reload
	subl	%r9d, %edx
	leaq	(%rsi,%r9,2), %r11
	leaq	(%rdi,%r9,2), %rdi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm10       # xmm10 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movq	-32(%rsp), %rcx         # 8-byte Reload
	leaq	(%r10,%rcx,2), %rbx
	movq	-104(%rsp), %rcx        # 8-byte Reload
	leaq	(%rbx,%rcx,2), %r15
	movq	-96(%rsp), %rcx         # 8-byte Reload
	leaq	(%rbx,%rcx,2), %rcx
	movq	-88(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbx,%rbp,2), %rbp
	incq	%r13
	andq	%rax, %r13
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	pshufd	$245, %xmm9, %xmm12     # xmm12 = xmm9[1,1,3,3]
	pshufd	$245, %xmm10, %xmm5     # xmm5 = xmm10[1,1,3,3]
	pshufd	$245, %xmm11, %xmm6     # xmm6 = xmm11[1,1,3,3]
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [32769,32769,32769,32769]
	.align	16, 0x90
.LBB15_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movq	(%rcx,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movq	(%rbp,%rax,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movq	(%rbx,%rax,2), %xmm7    # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	psubd	%xmm2, %xmm0
	psubd	%xmm1, %xmm2
	psubd	%xmm7, %xmm1
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm12, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$16, %xmm1
	paddd	%xmm0, %xmm1
	psrld	$16, %xmm1
	paddw	%xmm7, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.LBB15_9
# BB#10:
	movq	%r11, %rsi
	movq	%r9, %rbp
.LBB15_11:                              # %middle.block
	movq	-72(%rsp), %rax         # 8-byte Reload
.LBB15_12:                              # %middle.block
	cmpq	%rbp, %rax
	je	.LBB15_83
# BB#13:                                # %for.body.preheader
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	movslq	%ecx, %r9
	movq	-16(%rsp), %rax         # 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %r10
	movq	-8(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r10), %ebp
	movslq	%ebp, %r11
	.align	16, 0x90
.LBB15_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r9,2), %ebx
	movzwl	(%rdi,%r10,2), %eax
	movzwl	(%rdi,%r11,2), %ecx
	movzwl	(%rdi), %ebp
	addq	$2, %rdi
	subl	%eax, %ecx
	subl	%ebx, %eax
	subl	%ebp, %ebx
	imull	%r14d, %ebx
	imull	%r12d, %eax
	imull	%r8d, %ecx
	addl	%eax, %ecx
	leal	(%rcx,%rbx), %eax
	leal	32769(%rbx,%rcx), %ecx
	sarl	$16, %ecx
	leal	32769(%rcx,%rax), %eax
	shrl	$16, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %rsi
	decl	%edx
	jne	.LBB15_14
	jmp	.LBB15_83
.LBB15_57:                              # %if.then.206
	testl	%edx, %edx
	je	.LBB15_83
# BB#58:                                # %for.body.211.lr.ph
	leal	-1(%rdx), %r13d
	leaq	1(%r13), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB15_67
# BB#59:                                # %vector.memcheck651
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	movq	%rax, -72(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r13,2), %rbp
	leaq	(%r15,%r13), %rax
	leaq	(%r10,%rax,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	movq	-16(%rsp), %rbx         # 8-byte Reload
	leal	(%rax,%rbx), %ecx
	movslq	%ecx, %r9
	movq	%r9, -88(%rsp)          # 8-byte Spill
	leaq	(%r15,%r9), %rcx
	leaq	(%r10,%rcx,2), %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	addq	%r13, %rcx
	leaq	(%r10,%rcx,2), %r11
	movslq	%ebx, %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leaq	(%rax,%r15), %rax
	leaq	(%r10,%rax,2), %rbx
	movq	%rbx, -48(%rsp)         # 8-byte Spill
	addq	%r13, %rax
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leal	(%r9,%rbx), %ebx
	movslq	%ebx, %rbx
	movq	%rbx, -104(%rsp)        # 8-byte Spill
	leaq	(%rbx,%r15), %rbx
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	(%r10,%rbx,2), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	addq	%r13, %rbx
	cmpq	%rsi, -40(%rsp)         # 8-byte Folded Reload
	setae	-40(%rsp)               # 1-byte Folded Spill
	cmpq	%rbp, %rdi
	setbe	%r9b
	cmpq	%rsi, %r11
	setae	%cl
	cmpq	%rbp, -64(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rax,2), %rax
	setbe	%r15b
	cmpq	%rsi, %rax
	setae	%r11b
	cmpq	%rbp, -48(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rbx,2), %rax
	setbe	%bl
	cmpq	%rsi, %rax
	setae	%al
	cmpq	%rbp, -56(%rsp)         # 8-byte Folded Reload
	setbe	-48(%rsp)               # 1-byte Folded Spill
	xorl	%ebp, %ebp
	testb	-40(%rsp), %r9b         # 1-byte Folded Reload
	jne	.LBB15_66
# BB#60:                                # %vector.memcheck651
	andb	%r15b, %cl
	movabsq	$8589934588, %r9        # imm = 0x1FFFFFFFC
	jne	.LBB15_66
# BB#61:                                # %vector.memcheck651
	andb	%bl, %r11b
	jne	.LBB15_66
# BB#62:                                # %vector.memcheck651
	andb	-48(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB15_66
# BB#63:                                # %vector.ph652
	movq	-80(%rsp), %r11         # 8-byte Reload
	subl	%r11d, %edx
	leaq	(%rsi,%r11,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leaq	(%rdi,%r11,2), %rdi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm10       # xmm10 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax,2), %rbx
	movq	-104(%rsp), %rax        # 8-byte Reload
	leaq	(%rbx,%rax,2), %r15
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rcx
	movq	-88(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rbp
	incq	%r13
	andq	%r9, %r13
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	pshufd	$245, %xmm9, %xmm12     # xmm12 = xmm9[1,1,3,3]
	pshufd	$245, %xmm10, %xmm5     # xmm5 = xmm10[1,1,3,3]
	pshufd	$245, %xmm11, %xmm6     # xmm6 = xmm11[1,1,3,3]
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [32769,32769,32769,32769]
	.align	16, 0x90
.LBB15_64:                              # %vector.body606
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movq	(%rcx,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movq	(%rbp,%rax,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movq	(%rbx,%rax,2), %xmm7    # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	psubd	%xmm0, %xmm1
	psubd	%xmm2, %xmm0
	psubd	%xmm7, %xmm2
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm12, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$16, %xmm1
	paddd	%xmm0, %xmm1
	psrld	$16, %xmm1
	paddw	%xmm7, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.LBB15_64
# BB#65:
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movq	%r11, %rbp
.LBB15_66:                              # %middle.block607
	movq	-72(%rsp), %rax         # 8-byte Reload
.LBB15_67:                              # %middle.block607
	cmpq	%rbp, %rax
	je	.LBB15_83
# BB#68:                                # %for.body.211.preheader
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rbp
	addl	%ebp, %ecx
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movslq	%eax, %r9
	movslq	%ebp, %r10
	movslq	%ecx, %r11
	.align	16, 0x90
.LBB15_69:                              # %for.body.211
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r9,2), %ebx
	movzwl	(%rdi,%r10,2), %eax
	movzwl	(%rdi,%r11,2), %ecx
	movzwl	(%rdi), %ebp
	addq	$2, %rdi
	subl	%ecx, %ebx
	subl	%eax, %ecx
	subl	%ebp, %eax
	imull	%r14d, %ebx
	imull	%r12d, %eax
	imull	%r8d, %ecx
	addl	%ebx, %ecx
	leal	(%rcx,%rax), %ebx
	leal	32769(%rax,%rcx), %eax
	sarl	$16, %eax
	leal	32769(%rax,%rbx), %eax
	shrl	$16, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %rsi
	decl	%edx
	jne	.LBB15_69
	jmp	.LBB15_83
.LBB15_16:                              # %if.then.88
	testl	%edx, %edx
	je	.LBB15_83
# BB#17:                                # %for.body.93.lr.ph
	leal	-1(%rdx), %r13d
	leaq	1(%r13), %rax
	xorl	%ebp, %ebp
	movq	%rax, %rcx
	andq	%r11, %rcx
	je	.LBB15_26
# BB#18:                                # %vector.memcheck369
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	%rax, -80(%rsp)         # 8-byte Spill
	leaq	(%rsi,%r13,2), %rbp
	leaq	(%r15,%r13), %rax
	leaq	(%r10,%rax,2), %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rcx
	leaq	(%r10,%rcx,2), %rbx
	movq	%rbx, -40(%rsp)         # 8-byte Spill
	addq	%r13, %rcx
	leaq	(%r10,%rcx,2), %rcx
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %rbx         # 8-byte Reload
	leal	(%rax,%rbx), %ebx
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %eax
	cltq
	movq	%rax, -104(%rsp)        # 8-byte Spill
	leaq	(%rax,%r15), %rax
	leaq	(%r10,%rax,2), %r9
	movq	%r9, -48(%rsp)          # 8-byte Spill
	addq	%r13, %rax
	movslq	%ebx, %rbx
	movq	%rbx, -112(%rsp)        # 8-byte Spill
	leaq	(%r15,%rbx), %rbx
	movq	%r15, -32(%rsp)         # 8-byte Spill
	leaq	(%r10,%rbx,2), %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	addq	%r13, %rbx
	cmpq	%rsi, -56(%rsp)         # 8-byte Folded Reload
	setae	-56(%rsp)               # 1-byte Folded Spill
	cmpq	%rbp, %rdi
	setbe	%r15b
	cmpq	%rsi, -72(%rsp)         # 8-byte Folded Reload
	setae	%cl
	cmpq	%rbp, -40(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rax,2), %rax
	setbe	-40(%rsp)               # 1-byte Folded Spill
	cmpq	%rsi, %rax
	setae	%r9b
	cmpq	%rbp, -48(%rsp)         # 8-byte Folded Reload
	leaq	(%r10,%rbx,2), %rax
	setbe	%bl
	cmpq	%rsi, %rax
	setae	%al
	cmpq	%rbp, -64(%rsp)         # 8-byte Folded Reload
	setbe	-48(%rsp)               # 1-byte Folded Spill
	xorl	%ebp, %ebp
	testb	-56(%rsp), %r15b        # 1-byte Folded Reload
	jne	.LBB15_25
# BB#19:                                # %vector.memcheck369
	andb	-40(%rsp), %cl          # 1-byte Folded Reload
	jne	.LBB15_25
# BB#20:                                # %vector.memcheck369
	andb	%bl, %r9b
	jne	.LBB15_25
# BB#21:                                # %vector.memcheck369
	andb	-48(%rsp), %al          # 1-byte Folded Reload
	jne	.LBB15_25
# BB#22:                                # %vector.ph370
	movq	-88(%rsp), %r9          # 8-byte Reload
	subl	%r9d, %edx
	leaq	(%rsi,%r9,2), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leaq	(%rdi,%r9,2), %rdi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9        # xmm9 = xmm0[0,0,0,0]
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm10       # xmm10 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm11       # xmm11 = xmm0[0,0,0,0]
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax,2), %rbx
	movq	-112(%rsp), %rax        # 8-byte Reload
	leaq	(%rbx,%rax,2), %r15
	movq	-104(%rsp), %rax        # 8-byte Reload
	leaq	(%rbx,%rax,2), %rcx
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax,2), %rbp
	incq	%r13
	andq	%r11, %r13
	xorl	%eax, %eax
	pxor	%xmm3, %xmm3
	pshufd	$245, %xmm9, %xmm12     # xmm12 = xmm9[1,1,3,3]
	pshufd	$245, %xmm10, %xmm5     # xmm5 = xmm10[1,1,3,3]
	pshufd	$245, %xmm11, %xmm6     # xmm6 = xmm11[1,1,3,3]
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [32769,32769,32769,32769]
	.align	16, 0x90
.LBB15_23:                              # %vector.body324
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,2), %xmm1    # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	movq	(%rcx,%rax,2), %xmm2    # xmm2 = mem[0],zero
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movq	(%rbp,%rax,2), %xmm0    # xmm0 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movq	(%rbx,%rax,2), %xmm7    # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	psubd	%xmm1, %xmm2
	psubd	%xmm0, %xmm1
	psubd	%xmm7, %xmm0
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm12, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4      # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	paddd	%xmm8, %xmm2
	movdqa	%xmm2, %xmm0
	psrad	$16, %xmm0
	paddd	%xmm2, %xmm0
	psrld	$16, %xmm0
	paddw	%xmm7, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.LBB15_23
# BB#24:
	movq	-40(%rsp), %rsi         # 8-byte Reload
	movq	%r9, %rbp
.LBB15_25:                              # %middle.block325
	movq	-80(%rsp), %rax         # 8-byte Reload
.LBB15_26:                              # %middle.block325
	cmpq	%rbp, %rax
	je	.LBB15_83
# BB#27:                                # %for.body.93.preheader
	movq	-8(%rsp), %rbp          # 8-byte Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movslq	%eax, %r9
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r9), %ecx
	movslq	%ecx, %r10
	movslq	%ebp, %r11
	.align	16, 0x90
.LBB15_28:                              # %for.body.93
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r9,2), %ebx
	movzwl	(%rdi,%r10,2), %eax
	movzwl	(%rdi,%r11,2), %ecx
	movzwl	(%rdi), %ebp
	addq	$2, %rdi
	subl	%ebx, %eax
	subl	%ecx, %ebx
	subl	%ebp, %ecx
	imull	%r14d, %ebx
	imull	%r12d, %eax
	imull	%r8d, %ecx
	addl	%ebx, %eax
	leal	(%rax,%rcx), %ebx
	leal	32769(%rcx,%rax), %eax
	sarl	$16, %eax
	leal	32769(%rax,%rbx), %eax
	shrl	$16, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %rsi
	decl	%edx
	jne	.LBB15_28
.LBB15_83:                              # %if.end.282
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	TetrahedralInterp16, .Lfunc_end15-TetrahedralInterp16
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	Eval4InputsFloat,@function
Eval4InputsFloat:                       # @Eval4InputsFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$1208, %rsp             # imm = 0x4B8
.Ltmp121:
	.cfi_def_cfa_offset 1264
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	120(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm3, %xmm4
	andnps	%xmm2, %xmm4
	movl	52(%rbx), %eax
	movl	96(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm4, %xmm2
	movaps	%xmm2, 16(%rsp)         # 16-byte Spill
	cvtss2sd	%xmm2, %xmm2
	addsd	.LCPI16_1(%rip), %xmm2
	movd	%xmm2, %r12
	sarl	$16, %r12d
	movl	%r12d, %ebp
	imull	%ecx, %ebp
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	cmovbl	%ecx, %eax
	leal	(%rax,%rbp), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leaq	40(%rsp), %r13
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	92(%rsp), %rdi
	leaq	56(%rbx), %rsi
	movl	$12, %edx
	callq	memmove
	movslq	%ebp, %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	addq	$4, %r15
	leaq	688(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	TetrahedralInterpFloat
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	TetrahedralInterpFloat
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movl	16(%rbx), %ebx
	testq	%rbx, %rbx
	je	.LBB16_6
# BB#1:                                 # %for.body.lr.ph
	cvtsi2ssl	%r12d, %xmm0
	subss	%xmm0, %xmm5
	movl	%ebx, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	je	.LBB16_4
# BB#2:                                 # %vector.ph
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movaps	%xmm5, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	704(%rsp), %rdx
	leaq	192(%rsp), %rsi
	leaq	16(%r14), %rdi
	movl	%ebx, %ebp
	andl	$7, %ebp
	movq	%rbx, %rax
	subq	%rbp, %rax
	.align	16, 0x90
.LBB16_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-16(%rdx), %xmm1
	movaps	(%rdx), %xmm2
	movaps	-16(%rsi), %xmm3
	movaps	(%rsi), %xmm4
	subps	%xmm1, %xmm3
	subps	%xmm2, %xmm4
	mulps	%xmm0, %xmm3
	mulps	%xmm0, %xmm4
	addps	%xmm1, %xmm3
	addps	%xmm2, %xmm4
	movups	%xmm3, -16(%rdi)
	movups	%xmm4, (%rdi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-8, %rax
	jne	.LBB16_3
.LBB16_4:                               # %middle.block
	cmpq	%rcx, %rbx
	je	.LBB16_6
	.align	16, 0x90
.LBB16_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	688(%rsp,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	176(%rsp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rbx, %rcx
	jb	.LBB16_5
.LBB16_6:                               # %for.end
	addq	$1208, %rsp             # imm = 0x4B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Eval4InputsFloat, .Lfunc_end16-Eval4InputsFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.text
	.align	16, 0x90
	.type	Eval4Inputs,@function
Eval4Inputs:                            # @Eval4Inputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$600, %rsp              # imm = 0x258
.Ltmp134:
	.cfi_def_cfa_offset 656
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsi, -64(%rsp)         # 8-byte Spill
	movzwl	(%rdi), %r11d
	movl	52(%rdx), %r9d
	imull	%r11d, %r9d
	leal	32767(%r9), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %r15 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r15
	movzwl	2(%rdi), %r10d
	movl	56(%rdx), %ecx
	imull	%r10d, %ecx
	leal	32767(%rcx), %esi
	movslq	%esi, %rsi
	imulq	$-2147450879, %rsi, %r8 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r8
	movzwl	4(%rdi), %esi
	movl	60(%rdx), %ebx
	imull	%esi, %ebx
	leal	32767(%rbx), %ebp
	movslq	%ebp, %rbp
	imulq	$-2147450879, %rbp, %r14 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r14
	movzwl	6(%rdi), %ebp
	movl	64(%rdx), %r13d
	imull	%ebp, %r13d
	leal	32767(%r13), %eax
	cltq
	imulq	$-2147450879, %rax, %r12 # imm = 0xFFFFFFFF80008001
	shrq	$32, %r12
	xorl	%edi, %edi
	cmpl	$65535, %r11d           # imm = 0xFFFF
	movl	96(%rdx), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmovel	%edi, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	$65535, %r10d           # imm = 0xFFFF
	movl	92(%rdx), %r10d
	movl	%r10d, %eax
	cmovel	%edi, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	cmpl	$65535, %esi            # imm = 0xFFFF
	movl	88(%rdx), %r11d
	movl	%r11d, %esi
	cmovel	%edi, %esi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	cmpl	$65535, %ebp            # imm = 0xFFFF
	movl	84(%rdx), %ebp
	cmovnel	%ebp, %edi
	movl	16(%rdx), %esi
	testq	%rsi, %rsi
	je	.LBB17_28
# BB#1:                                 # %for.body.lr.ph
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	leal	32767(%r15,%r9), %esi
	movl	%esi, %eax
	shrl	$31, %eax
	sarl	$15, %esi
	addl	%eax, %esi
	addl	%r9d, %esi
	leal	32767(%r8,%rcx), %eax
	movq	%rbp, -32(%rsp)         # 8-byte Spill
	movl	%eax, %ebp
	shrl	$31, %ebp
	sarl	$15, %eax
	addl	%ebp, %eax
	addl	%ecx, %eax
	leal	32767(%r14,%rbx), %ecx
	movl	%ecx, %ebp
	shrl	$31, %ebp
	sarl	$15, %ecx
	addl	%ebp, %ecx
	addl	%ebx, %ecx
	leal	32767(%r12,%r13), %ebp
	movl	%ebp, %ebx
	shrl	$31, %ebx
	sarl	$15, %ebp
	addl	%ebx, %ebp
	addl	%r13d, %ebp
	movl	%esi, %r8d
	sarl	$16, %r8d
	movzwl	%ax, %r15d
	sarl	$16, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movzwl	%cx, %eax
	sarl	$16, %ecx
	movq	%r11, %r9
	movzwl	%bp, %r11d
	movl	%r11d, -80(%rsp)        # 4-byte Spill
	sarl	$16, %ebp
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r13          # 8-byte Reload
	imull	%r8d, %r13d
	movl	%eax, %edi
	cmpl	%edi, %r15d
	sbbb	%r14b, %r14b
	cmpl	%r15d, %r11d
	sbbb	%r8b, %r8b
	movb	%r14b, %al
	orb	%r8b, %al
	cmpl	%r11d, %edi
	sbbb	%r12b, %r12b
	orb	%r12b, %r14b
	orb	%r8b, %r12b
	andb	$1, %r14b
	cmpl	%r11d, %r15d
	movq	%r10, %r8
	sbbb	%r10b, %r10b
	cmpl	%edi, %r11d
	movl	%edi, %r11d
	sbbb	%bl, %bl
	movb	%r10b, %dil
	orb	%bl, %dil
	andb	$1, %dil
	movb	%dil, 56(%rsp)          # 1-byte Spill
	andb	$1, %al
	movb	%al, 31(%rsp)           # 1-byte Spill
	cmpl	%r15d, %r11d
	sbbb	%dil, %dil
	orb	%dil, %bl
	orb	%r10b, %dil
	movzwl	%si, %eax
	movl	%eax, -84(%rsp)         # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r13), %eax
	movl	%eax, -116(%rsp)        # 4-byte Spill
	movq	120(%rdx), %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movslq	%r13d, %rdx
	leaq	(%rax,%rdx,2), %rdx
	andb	$1, %dil
	movb	%dil, 7(%rsp)           # 1-byte Spill
	andb	$1, %r12b
	movb	%r12b, -41(%rsp)        # 1-byte Spill
	andb	$1, %bl
	movb	%bl, -73(%rsp)          # 1-byte Spill
	movq	-32(%rsp), %rax         # 8-byte Reload
	imull	%ebp, %eax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	imull	32(%rsp), %r8d          # 4-byte Folded Reload
	movq	%r8, -72(%rsp)          # 8-byte Spill
	imull	%ecx, %r9d
	movq	%r9, -96(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%r9), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	(%rax,%r8), %rax
	addq	%rdi, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rbp          # 8-byte Reload
	leal	(%rcx,%rbp), %eax
	addl	%r9d, %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	leaq	(%rax,%rdi), %rax
	addq	%r8, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rsi          # 8-byte Reload
	leal	(%rcx,%rsi), %eax
	leal	(%rax,%rbp), %ecx
	addl	%r9d, %ecx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	leaq	(%rcx,%r8), %r13
	addq	%rdi, %r13
	leal	(%rbp,%r9), %ecx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	leaq	(%rcx,%r8), %rcx
	addq	%rdi, %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	leal	(%rbp,%rsi), %ecx
	addl	%r9d, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	(%rcx,%r8), %rcx
	addq	%rdi, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	addl	%r9d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	(%rax,%rdi), %rax
	addq	%r8, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	addl	%r9d, %esi
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	leaq	(%rsi,%r8), %rbp
	addq	%rdi, %rbp
	leaq	(%r9,%r8), %r9
	movl	%r15d, %r8d
	movl	%r11d, %r15d
	movl	-80(%rsp), %r11d        # 4-byte Reload
	addq	%rdi, %r9
	xorl	%esi, %esi
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r9,%rsi), %edi
	movzwl	(%rdx,%rdi,2), %ebx
	testb	%r14b, %r14b
	je	.LBB17_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpb	$0, 56(%rsp)            # 1-byte Folded Reload
	je	.LBB17_5
# BB#6:                                 # %if.else.157
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpb	$0, 31(%rsp)            # 1-byte Folded Reload
	je	.LBB17_7
# BB#8:                                 # %if.else.197
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpb	$0, 7(%rsp)             # 1-byte Folded Reload
	je	.LBB17_9
# BB#10:                                # %if.else.237
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpb	$0, -41(%rsp)           # 1-byte Folded Reload
	je	.LBB17_11
# BB#12:                                # %if.else.277
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%r10d, %r10d
	cmpb	$0, -73(%rsp)           # 1-byte Folded Reload
	movl	$0, %r12d
	movl	$0, %edi
	jne	.LBB17_15
# BB#13:                                # %if.then.283
                                        #   in Loop: Header=BB17_2 Depth=1
	leal	(%r13,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r10d
	movq	-56(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r12d
	subl	%r12d, %r10d
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %edi
	subl	%edi, %r12d
	jmp	.LBB17_14
	.align	16, 0x90
.LBB17_3:                               # %if.then
                                        #   in Loop: Header=BB17_2 Depth=1
	leal	(%rbp,%rsi), %edi
	movzwl	(%rdx,%rdi,2), %r10d
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %edi
	movzwl	(%rdx,%rdi,2), %ecx
	leal	(%r13,%rsi), %edi
	movzwl	(%rdx,%rdi,2), %edi
	subl	%ecx, %edi
	movl	%ecx, %r12d
	subl	%r10d, %r12d
	subl	%ebx, %r10d
	jmp	.LBB17_15
	.align	16, 0x90
.LBB17_5:                               # %if.then.123
                                        #   in Loop: Header=BB17_2 Depth=1
	leal	(%rbp,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r10d
	leal	(%r13,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r12d
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %edi
	subl	%edi, %r12d
	subl	%r10d, %edi
	subl	%ebx, %r10d
	jmp	.LBB17_15
.LBB17_7:                               # %if.then.163
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r10d
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %edi
	leal	(%r13,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r12d
	subl	%r10d, %r12d
	subl	%edi, %r10d
.LBB17_14:                              # %if.end.322
                                        #   in Loop: Header=BB17_2 Depth=1
	subl	%ebx, %edi
	jmp	.LBB17_15
.LBB17_9:                               # %if.then.203
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r10d
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r12d
	leal	(%r13,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %edi
	subl	%r10d, %edi
	subl	%r12d, %r10d
	subl	%ebx, %r12d
	jmp	.LBB17_15
.LBB17_11:                              # %if.then.243
                                        #   in Loop: Header=BB17_2 Depth=1
	leal	(%r13,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r10d
	movq	-56(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %edi
	subl	%edi, %r10d
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rsi), %ecx
	movzwl	(%rdx,%rcx,2), %r12d
	subl	%r12d, %edi
	subl	%ebx, %r12d
	.align	16, 0x90
.LBB17_15:                              # %if.end.322
                                        #   in Loop: Header=BB17_2 Depth=1
	imull	%r8d, %r10d
	imull	%r15d, %r12d
	addl	%r10d, %r12d
	imull	%r11d, %edi
	leal	(%r12,%rdi), %ecx
	leal	32767(%rdi,%r12), %edi
	movslq	%edi, %rdi
	imulq	$-2147450879, %rdi, %rdi # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdi
	leal	32767(%rdi,%rcx), %edi
	movl	%edi, %eax
	shrl	$31, %eax
	sarl	$15, %edi
	addl	%eax, %edi
	leal	32768(%rdi,%rcx), %eax
	shrl	$16, %eax
	addl	%ebx, %eax
	movw	%ax, 336(%rsp,%rsi,2)
	incq	%rsi
	cmpq	72(%rsp), %rsi          # 8-byte Folded Reload
	jb	.LBB17_2
# BB#16:                                # %for.end
	movq	72(%rsp), %r13          # 8-byte Reload
	testl	%r13d, %r13d
	movq	-72(%rsp), %r12         # 8-byte Reload
	movq	-32(%rsp), %rbx         # 8-byte Reload
	je	.LBB17_28
# BB#17:                                # %for.body.344.lr.ph
	movslq	-116(%rsp), %rax        # 4-byte Folded Reload
	movq	-112(%rsp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rax,2), %rsi
	cmpl	%r15d, %r8d
	sbbb	%r9b, %r9b
	cmpl	%r8d, %r11d
	sbbb	%al, %al
	movb	%r9b, %cl
	orb	%al, %cl
	cmpl	%r11d, %r15d
	sbbb	%dl, %dl
	orb	%dl, %r9b
	orb	%al, %dl
	movb	%dl, 31(%rsp)           # 1-byte Spill
	andb	$1, %r9b
	cmpl	%r11d, %r8d
	sbbb	%al, %al
	movb	%al, 40(%rsp)           # 1-byte Spill
	cmpl	%r15d, %r11d
	sbbb	%dl, %dl
	movb	%dl, 16(%rsp)           # 1-byte Spill
	orb	%dl, %al
	andb	$1, %al
	movb	%al, 64(%rsp)           # 1-byte Spill
	andb	$1, %cl
	movb	%cl, 56(%rsp)           # 1-byte Spill
	cmpl	%r8d, %r15d
	sbbb	%al, %al
	movq	8(%rsp), %r14           # 8-byte Reload
	addq	%r12, %r14
	movq	-40(%rsp), %rbp         # 8-byte Reload
	addq	%rbx, %rbp
	addq	%r12, %rbp
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	movq	-104(%rsp), %rdi        # 8-byte Reload
	addq	%r12, %rdi
	movq	-16(%rsp), %rcx         # 8-byte Reload
	addq	%r12, %rcx
	movq	-96(%rsp), %r10         # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	addq	%r12, %rdx
	movq	32(%rsp), %rbp          # 8-byte Reload
	addq	%rbx, %rbp
	addq	%r12, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	-8(%rsp), %rbp          # 8-byte Reload
	addq	%r12, %rbp
	addq	%r12, %r10
	movb	16(%rsp), %r12b         # 1-byte Reload
	orb	%al, %r12b
	orb	40(%rsp), %al           # 1-byte Folded Reload
	andb	$1, %al
	movb	%al, 40(%rsp)           # 1-byte Spill
	andb	$1, 31(%rsp)            # 1-byte Folded Spill
	andb	$1, %r12b
	movb	%r12b, 16(%rsp)         # 1-byte Spill
	addq	%rbx, %r14
	movq	%r14, 8(%rsp)           # 8-byte Spill
	addq	%rbx, %rdi
	movq	%rdi, %r12
	addq	%rbx, %rcx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	addq	%rbx, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	addq	%rbx, %rbp
	movq	%rbp, %r14
	addq	%rbx, %r10
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_18:                              # %for.body.344
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rbp), %eax
	movzwl	(%rsi,%rax,2), %ebx
	testb	%r9b, %r9b
	je	.LBB17_19
# BB#29:                                # %if.else.390
                                        #   in Loop: Header=BB17_18 Depth=1
	cmpb	$0, 64(%rsp)            # 1-byte Folded Reload
	je	.LBB17_30
# BB#31:                                # %if.else.430
                                        #   in Loop: Header=BB17_18 Depth=1
	cmpb	$0, 56(%rsp)            # 1-byte Folded Reload
	je	.LBB17_32
# BB#33:                                # %if.else.470
                                        #   in Loop: Header=BB17_18 Depth=1
	cmpb	$0, 40(%rsp)            # 1-byte Folded Reload
	je	.LBB17_34
# BB#35:                                # %if.else.510
                                        #   in Loop: Header=BB17_18 Depth=1
	cmpb	$0, 31(%rsp)            # 1-byte Folded Reload
	je	.LBB17_36
# BB#37:                                # %if.else.550
                                        #   in Loop: Header=BB17_18 Depth=1
	xorl	%edx, %edx
	cmpb	$0, 16(%rsp)            # 1-byte Folded Reload
	movl	$0, %edi
	movl	$0, %ecx
	jne	.LBB17_40
# BB#38:                                # %if.then.556
                                        #   in Loop: Header=BB17_18 Depth=1
	leal	(%r12,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edx
	movq	-40(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edi
	subl	%edi, %edx
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %ecx
	subl	%ecx, %edi
	jmp	.LBB17_39
	.align	16, 0x90
.LBB17_19:                              # %if.then.356
                                        #   in Loop: Header=BB17_18 Depth=1
	leal	(%r14,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edx
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %eax
	leal	(%r12,%rbp), %ecx
	movzwl	(%rsi,%rcx,2), %ecx
	subl	%eax, %ecx
	movl	%eax, %edi
	subl	%edx, %edi
	subl	%ebx, %edx
	jmp	.LBB17_40
	.align	16, 0x90
.LBB17_30:                              # %if.then.396
                                        #   in Loop: Header=BB17_18 Depth=1
	leal	(%r14,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edx
	leal	(%r12,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edi
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %ecx
	subl	%ecx, %edi
	subl	%edx, %ecx
	subl	%ebx, %edx
	jmp	.LBB17_40
.LBB17_32:                              # %if.then.436
                                        #   in Loop: Header=BB17_18 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edx
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %ecx
	leal	(%r12,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edi
	subl	%edx, %edi
	subl	%ecx, %edx
.LBB17_39:                              # %if.end.596
                                        #   in Loop: Header=BB17_18 Depth=1
	subl	%ebx, %ecx
	jmp	.LBB17_40
.LBB17_34:                              # %if.then.476
                                        #   in Loop: Header=BB17_18 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edx
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edi
	leal	(%r12,%rbp), %eax
	movzwl	(%rsi,%rax,2), %ecx
	subl	%edx, %ecx
	subl	%edi, %edx
	subl	%ebx, %edi
	jmp	.LBB17_40
.LBB17_36:                              # %if.then.516
                                        #   in Loop: Header=BB17_18 Depth=1
	leal	(%r12,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edx
	movq	-40(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %ecx
	subl	%ecx, %edx
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %eax
	movzwl	(%rsi,%rax,2), %edi
	subl	%edi, %ecx
	subl	%ebx, %edi
	.align	16, 0x90
.LBB17_40:                              # %if.end.596
                                        #   in Loop: Header=BB17_18 Depth=1
	imull	%r8d, %edx
	imull	%r15d, %edi
	addl	%edx, %edi
	imull	%r11d, %ecx
	leal	(%rdi,%rcx), %eax
	leal	32767(%rcx,%rdi), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %rcx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rcx
	leal	32767(%rcx,%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$15, %ecx
	addl	%edx, %ecx
	leal	32768(%rcx,%rax), %eax
	shrl	$16, %eax
	addl	%ebx, %eax
	movw	%ax, 80(%rsp,%rbp,2)
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB17_18
# BB#20:                                # %for.cond.614.preheader
	movq	%r13, %rsi
	testl	%esi, %esi
	movq	-64(%rsp), %r13         # 8-byte Reload
	movl	-84(%rsp), %ebp         # 4-byte Reload
	je	.LBB17_28
# BB#21:                                # %for.body.618.lr.ph
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB17_27
# BB#22:                                # %overflow.checked
	movl	%esi, %ecx
	andl	$7, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	je	.LBB17_26
# BB#23:                                # %vector.ph
	movq	%rsi, %rax
	subq	%rcx, %rax
	movd	%ebp, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	344(%rsp), %rcx
	leaq	88(%rsp), %rdx
	movq	%rsi, %rbx
	leaq	8(%r13), %rsi
	movl	%ebx, %r8d
	andl	$7, %r8d
	movq	%rbx, %rdi
	subq	%r8, %rdi
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI17_0(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB17_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %xmm5         # xmm5 = mem[0],zero
	movq	(%rcx), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	movq	-8(%rdx), %xmm6         # xmm6 = mem[0],zero
	movq	(%rdx), %xmm7           # xmm7 = mem[0],zero
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psubd	%xmm5, %xmm6
	psubd	%xmm4, %xmm7
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	paddd	%xmm8, %xmm6
	paddd	%xmm8, %xmm7
	psrld	$16, %xmm6
	psrld	$16, %xmm7
	paddw	%xmm5, %xmm6
	pshuflw	$232, %xmm6, %xmm3      # xmm3 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rsi)
	paddw	%xmm4, %xmm7
	pshuflw	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rsi)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$16, %rsi
	addq	$-8, %rdi
	jne	.LBB17_24
# BB#25:
	movq	%rbx, %rsi
.LBB17_26:                              # %middle.block
	cmpq	%rax, %rsi
	je	.LBB17_28
	.align	16, 0x90
.LBB17_27:                              # %for.body.618
                                        # =>This Inner Loop Header: Depth=1
	movzwl	336(%rsp,%rax,2), %ecx
	movzwl	80(%rsp,%rax,2), %edx
	subl	%ecx, %edx
	imull	%ebp, %edx
	addl	$32768, %edx            # imm = 0x8000
	shrl	$16, %edx
	addl	%ecx, %edx
	movw	%dx, (%r13,%rax,2)
	incq	%rax
	cmpq	%rsi, %rax
	jb	.LBB17_27
.LBB17_28:                              # %for.end.630
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Eval4Inputs, .Lfunc_end17-Eval4Inputs
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	Eval5InputsFloat,@function
Eval5InputsFloat:                       # @Eval5InputsFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	subq	$1208, %rsp             # imm = 0x4B8
.Ltmp147:
	.cfi_def_cfa_offset 1264
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	120(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm3, %xmm4
	andnps	%xmm2, %xmm4
	movl	52(%rbx), %eax
	movl	100(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm4, %xmm2
	movaps	%xmm2, 16(%rsp)         # 16-byte Spill
	cvtss2sd	%xmm2, %xmm2
	addsd	.LCPI18_1(%rip), %xmm2
	movd	%xmm2, %r12
	sarl	$16, %r12d
	movl	%r12d, %ebp
	imull	%ecx, %ebp
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	cmovbl	%ecx, %eax
	leal	(%rax,%rbp), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leaq	40(%rsp), %r13
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	92(%rsp), %rdi
	leaq	56(%rbx), %rsi
	movl	$16, %edx
	callq	memmove
	movslq	%ebp, %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	addq	$4, %r15
	leaq	688(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval4InputsFloat
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval4InputsFloat
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movl	16(%rbx), %ebx
	testq	%rbx, %rbx
	je	.LBB18_6
# BB#1:                                 # %for.body.lr.ph
	cvtsi2ssl	%r12d, %xmm0
	subss	%xmm0, %xmm5
	movl	%ebx, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	je	.LBB18_4
# BB#2:                                 # %vector.ph
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movaps	%xmm5, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	704(%rsp), %rdx
	leaq	192(%rsp), %rsi
	leaq	16(%r14), %rdi
	movl	%ebx, %ebp
	andl	$7, %ebp
	movq	%rbx, %rax
	subq	%rbp, %rax
	.align	16, 0x90
.LBB18_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-16(%rdx), %xmm1
	movaps	(%rdx), %xmm2
	movaps	-16(%rsi), %xmm3
	movaps	(%rsi), %xmm4
	subps	%xmm1, %xmm3
	subps	%xmm2, %xmm4
	mulps	%xmm0, %xmm3
	mulps	%xmm0, %xmm4
	addps	%xmm1, %xmm3
	addps	%xmm2, %xmm4
	movups	%xmm3, -16(%rdi)
	movups	%xmm4, (%rdi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-8, %rax
	jne	.LBB18_3
.LBB18_4:                               # %middle.block
	cmpq	%rcx, %rbx
	je	.LBB18_6
	.align	16, 0x90
.LBB18_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	688(%rsp,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	176(%rsp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rbx, %rcx
	jb	.LBB18_5
.LBB18_6:                               # %for.end
	addq	$1208, %rsp             # imm = 0x4B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Eval5InputsFloat, .Lfunc_end18-Eval5InputsFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.text
	.align	16, 0x90
	.type	Eval5Inputs,@function
Eval5Inputs:                            # @Eval5Inputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp157:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp158:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp160:
	.cfi_def_cfa_offset 720
.Ltmp161:
	.cfi_offset %rbx, -56
.Ltmp162:
	.cfi_offset %r12, -48
.Ltmp163:
	.cfi_offset %r13, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movq	120(%r14), %rbx
	movzwl	(%r15), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	setne	%cl
	imull	52(%r14), %eax
	leal	32767(%rax), %edx
	movslq	%edx, %rdx
	imulq	$-2147450879, %rdx, %rdx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdx
	leal	32767(%rdx,%rax), %ebp
	movl	%ebp, %edx
	shrl	$31, %edx
	sarl	$15, %ebp
	addl	%edx, %ebp
	addl	%eax, %ebp
	movl	%ebp, %r12d
	sarl	$16, %r12d
	movl	100(%r14), %edx
	movzbl	%cl, %r13d
	addl	%r12d, %r13d
	imull	%edx, %r12d
	imull	%edx, %r13d
	leaq	8(%rsp), %rdi
	movl	$136, %edx
	movq	%r14, %rsi
	callq	memcpy
	leaq	60(%rsp), %rdi
	leaq	56(%r14), %rsi
	movl	$16, %edx
	callq	memmove
	movslq	%r12d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	addq	$2, %r15
	leaq	400(%rsp), %rsi
	movq	%r15, %rdi
	leaq	8(%rsp), %r12
	movq	%r12, %rdx
	callq	Eval4Inputs
	movslq	%r13d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	leaq	144(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	Eval4Inputs
	movq	(%rsp), %r9             # 8-byte Reload
	movl	16(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB19_6
# BB#1:                                 # %for.body.lr.ph
	movzwl	%bp, %r8d
	movl	%ecx, %eax
	andl	$7, %eax
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	je	.LBB19_4
# BB#2:                                 # %vector.ph
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	408(%rsp), %rsi
	leaq	152(%rsp), %rdi
	leaq	8(%r9), %rbx
	movl	%ecx, %ebp
	andl	$7, %ebp
	movq	%rcx, %rax
	subq	%rbp, %rax
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI19_0(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB19_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm5         # xmm5 = mem[0],zero
	movq	(%rsi), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	movq	-8(%rdi), %xmm6         # xmm6 = mem[0],zero
	movq	(%rdi), %xmm7           # xmm7 = mem[0],zero
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psubd	%xmm5, %xmm6
	psubd	%xmm4, %xmm7
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	paddd	%xmm8, %xmm6
	paddd	%xmm8, %xmm7
	psrld	$16, %xmm6
	psrld	$16, %xmm7
	paddw	%xmm5, %xmm6
	pshuflw	$232, %xmm6, %xmm3      # xmm3 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rbx)
	paddw	%xmm4, %xmm7
	pshuflw	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rbx)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbx
	addq	$-8, %rax
	jne	.LBB19_3
.LBB19_4:                               # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB19_6
	.align	16, 0x90
.LBB19_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	400(%rsp,%rdx,2), %eax
	movzwl	144(%rsp,%rdx,2), %esi
	subl	%eax, %esi
	imull	%r8d, %esi
	addl	$32768, %esi            # imm = 0x8000
	shrl	$16, %esi
	addl	%eax, %esi
	movw	%si, (%r9,%rdx,2)
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB19_5
.LBB19_6:                               # %for.end
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Eval5Inputs, .Lfunc_end19-Eval5Inputs
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	Eval6InputsFloat,@function
Eval6InputsFloat:                       # @Eval6InputsFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp171:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 56
	subq	$1208, %rsp             # imm = 0x4B8
.Ltmp173:
	.cfi_def_cfa_offset 1264
.Ltmp174:
	.cfi_offset %rbx, -56
.Ltmp175:
	.cfi_offset %r12, -48
.Ltmp176:
	.cfi_offset %r13, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	120(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm3, %xmm4
	andnps	%xmm2, %xmm4
	movl	52(%rbx), %eax
	movl	104(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm4, %xmm2
	movaps	%xmm2, 16(%rsp)         # 16-byte Spill
	cvtss2sd	%xmm2, %xmm2
	addsd	.LCPI20_1(%rip), %xmm2
	movd	%xmm2, %r12
	sarl	$16, %r12d
	movl	%r12d, %ebp
	imull	%ecx, %ebp
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	cmovbl	%ecx, %eax
	leal	(%rax,%rbp), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leaq	40(%rsp), %r13
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	92(%rsp), %rdi
	leaq	56(%rbx), %rsi
	movl	$20, %edx
	callq	memmove
	movslq	%ebp, %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	addq	$4, %r15
	leaq	688(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval5InputsFloat
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval5InputsFloat
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movl	16(%rbx), %ebx
	testq	%rbx, %rbx
	je	.LBB20_6
# BB#1:                                 # %for.body.lr.ph
	cvtsi2ssl	%r12d, %xmm0
	subss	%xmm0, %xmm5
	movl	%ebx, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	je	.LBB20_4
# BB#2:                                 # %vector.ph
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movaps	%xmm5, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	704(%rsp), %rdx
	leaq	192(%rsp), %rsi
	leaq	16(%r14), %rdi
	movl	%ebx, %ebp
	andl	$7, %ebp
	movq	%rbx, %rax
	subq	%rbp, %rax
	.align	16, 0x90
.LBB20_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-16(%rdx), %xmm1
	movaps	(%rdx), %xmm2
	movaps	-16(%rsi), %xmm3
	movaps	(%rsi), %xmm4
	subps	%xmm1, %xmm3
	subps	%xmm2, %xmm4
	mulps	%xmm0, %xmm3
	mulps	%xmm0, %xmm4
	addps	%xmm1, %xmm3
	addps	%xmm2, %xmm4
	movups	%xmm3, -16(%rdi)
	movups	%xmm4, (%rdi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-8, %rax
	jne	.LBB20_3
.LBB20_4:                               # %middle.block
	cmpq	%rcx, %rbx
	je	.LBB20_6
	.align	16, 0x90
.LBB20_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	688(%rsp,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	176(%rsp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rbx, %rcx
	jb	.LBB20_5
.LBB20_6:                               # %for.end
	addq	$1208, %rsp             # imm = 0x4B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Eval6InputsFloat, .Lfunc_end20-Eval6InputsFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.text
	.align	16, 0x90
	.type	Eval6Inputs,@function
Eval6Inputs:                            # @Eval6Inputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp183:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp184:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp186:
	.cfi_def_cfa_offset 720
.Ltmp187:
	.cfi_offset %rbx, -56
.Ltmp188:
	.cfi_offset %r12, -48
.Ltmp189:
	.cfi_offset %r13, -40
.Ltmp190:
	.cfi_offset %r14, -32
.Ltmp191:
	.cfi_offset %r15, -24
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movq	120(%r14), %rbx
	movzwl	(%r15), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	setne	%cl
	imull	52(%r14), %eax
	leal	32767(%rax), %edx
	movslq	%edx, %rdx
	imulq	$-2147450879, %rdx, %rdx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdx
	leal	32767(%rdx,%rax), %ebp
	movl	%ebp, %edx
	shrl	$31, %edx
	sarl	$15, %ebp
	addl	%edx, %ebp
	addl	%eax, %ebp
	movl	%ebp, %r12d
	sarl	$16, %r12d
	movl	104(%r14), %edx
	movzbl	%cl, %r13d
	addl	%r12d, %r13d
	imull	%edx, %r12d
	imull	%edx, %r13d
	leaq	8(%rsp), %rdi
	movl	$136, %edx
	movq	%r14, %rsi
	callq	memcpy
	leaq	60(%rsp), %rdi
	leaq	56(%r14), %rsi
	movl	$20, %edx
	callq	memmove
	movslq	%r12d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	addq	$2, %r15
	leaq	400(%rsp), %rsi
	movq	%r15, %rdi
	leaq	8(%rsp), %r12
	movq	%r12, %rdx
	callq	Eval5Inputs
	movslq	%r13d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	leaq	144(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	Eval5Inputs
	movq	(%rsp), %r9             # 8-byte Reload
	movl	16(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB21_6
# BB#1:                                 # %for.body.lr.ph
	movzwl	%bp, %r8d
	movl	%ecx, %eax
	andl	$7, %eax
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	je	.LBB21_4
# BB#2:                                 # %vector.ph
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	408(%rsp), %rsi
	leaq	152(%rsp), %rdi
	leaq	8(%r9), %rbx
	movl	%ecx, %ebp
	andl	$7, %ebp
	movq	%rcx, %rax
	subq	%rbp, %rax
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI21_0(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB21_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm5         # xmm5 = mem[0],zero
	movq	(%rsi), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	movq	-8(%rdi), %xmm6         # xmm6 = mem[0],zero
	movq	(%rdi), %xmm7           # xmm7 = mem[0],zero
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psubd	%xmm5, %xmm6
	psubd	%xmm4, %xmm7
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	paddd	%xmm8, %xmm6
	paddd	%xmm8, %xmm7
	psrld	$16, %xmm6
	psrld	$16, %xmm7
	paddw	%xmm5, %xmm6
	pshuflw	$232, %xmm6, %xmm3      # xmm3 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rbx)
	paddw	%xmm4, %xmm7
	pshuflw	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rbx)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbx
	addq	$-8, %rax
	jne	.LBB21_3
.LBB21_4:                               # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB21_6
	.align	16, 0x90
.LBB21_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	400(%rsp,%rdx,2), %eax
	movzwl	144(%rsp,%rdx,2), %esi
	subl	%eax, %esi
	imull	%r8d, %esi
	addl	$32768, %esi            # imm = 0x8000
	shrl	$16, %esi
	addl	%eax, %esi
	movw	%si, (%r9,%rdx,2)
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB21_5
.LBB21_6:                               # %for.end
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Eval6Inputs, .Lfunc_end21-Eval6Inputs
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI22_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	Eval7InputsFloat,@function
Eval7InputsFloat:                       # @Eval7InputsFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp195:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp196:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp197:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 56
	subq	$1208, %rsp             # imm = 0x4B8
.Ltmp199:
	.cfi_def_cfa_offset 1264
.Ltmp200:
	.cfi_offset %rbx, -56
.Ltmp201:
	.cfi_offset %r12, -48
.Ltmp202:
	.cfi_offset %r13, -40
.Ltmp203:
	.cfi_offset %r14, -32
.Ltmp204:
	.cfi_offset %r15, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	120(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm3, %xmm4
	andnps	%xmm2, %xmm4
	movl	52(%rbx), %eax
	movl	108(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm4, %xmm2
	movaps	%xmm2, 16(%rsp)         # 16-byte Spill
	cvtss2sd	%xmm2, %xmm2
	addsd	.LCPI22_1(%rip), %xmm2
	movd	%xmm2, %r12
	sarl	$16, %r12d
	movl	%r12d, %ebp
	imull	%ecx, %ebp
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	cmovbl	%ecx, %eax
	leal	(%rax,%rbp), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leaq	40(%rsp), %r13
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	92(%rsp), %rdi
	leaq	56(%rbx), %rsi
	movl	$24, %edx
	callq	memmove
	movslq	%ebp, %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	addq	$4, %r15
	leaq	688(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval6InputsFloat
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval6InputsFloat
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movl	16(%rbx), %ebx
	testq	%rbx, %rbx
	je	.LBB22_6
# BB#1:                                 # %for.body.lr.ph
	cvtsi2ssl	%r12d, %xmm0
	subss	%xmm0, %xmm5
	movl	%ebx, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	je	.LBB22_4
# BB#2:                                 # %vector.ph
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movaps	%xmm5, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	704(%rsp), %rdx
	leaq	192(%rsp), %rsi
	leaq	16(%r14), %rdi
	movl	%ebx, %ebp
	andl	$7, %ebp
	movq	%rbx, %rax
	subq	%rbp, %rax
	.align	16, 0x90
.LBB22_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-16(%rdx), %xmm1
	movaps	(%rdx), %xmm2
	movaps	-16(%rsi), %xmm3
	movaps	(%rsi), %xmm4
	subps	%xmm1, %xmm3
	subps	%xmm2, %xmm4
	mulps	%xmm0, %xmm3
	mulps	%xmm0, %xmm4
	addps	%xmm1, %xmm3
	addps	%xmm2, %xmm4
	movups	%xmm3, -16(%rdi)
	movups	%xmm4, (%rdi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-8, %rax
	jne	.LBB22_3
.LBB22_4:                               # %middle.block
	cmpq	%rcx, %rbx
	je	.LBB22_6
	.align	16, 0x90
.LBB22_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	688(%rsp,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	176(%rsp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rbx, %rcx
	jb	.LBB22_5
.LBB22_6:                               # %for.end
	addq	$1208, %rsp             # imm = 0x4B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Eval7InputsFloat, .Lfunc_end22-Eval7InputsFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.text
	.align	16, 0x90
	.type	Eval7Inputs,@function
Eval7Inputs:                            # @Eval7Inputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp207:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp208:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp209:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp210:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp211:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp212:
	.cfi_def_cfa_offset 720
.Ltmp213:
	.cfi_offset %rbx, -56
.Ltmp214:
	.cfi_offset %r12, -48
.Ltmp215:
	.cfi_offset %r13, -40
.Ltmp216:
	.cfi_offset %r14, -32
.Ltmp217:
	.cfi_offset %r15, -24
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movq	120(%r14), %rbx
	movzwl	(%r15), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	setne	%cl
	imull	52(%r14), %eax
	leal	32767(%rax), %edx
	movslq	%edx, %rdx
	imulq	$-2147450879, %rdx, %rdx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdx
	leal	32767(%rdx,%rax), %ebp
	movl	%ebp, %edx
	shrl	$31, %edx
	sarl	$15, %ebp
	addl	%edx, %ebp
	addl	%eax, %ebp
	movl	%ebp, %r12d
	sarl	$16, %r12d
	movl	108(%r14), %edx
	movzbl	%cl, %r13d
	addl	%r12d, %r13d
	imull	%edx, %r12d
	imull	%edx, %r13d
	leaq	8(%rsp), %rdi
	movl	$136, %edx
	movq	%r14, %rsi
	callq	memcpy
	leaq	60(%rsp), %rdi
	leaq	56(%r14), %rsi
	movl	$24, %edx
	callq	memmove
	movslq	%r12d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	addq	$2, %r15
	leaq	400(%rsp), %rsi
	movq	%r15, %rdi
	leaq	8(%rsp), %r12
	movq	%r12, %rdx
	callq	Eval6Inputs
	movslq	%r13d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	leaq	144(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	Eval6Inputs
	movq	(%rsp), %r9             # 8-byte Reload
	movl	16(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB23_6
# BB#1:                                 # %for.body.lr.ph
	movzwl	%bp, %r8d
	movl	%ecx, %eax
	andl	$7, %eax
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	je	.LBB23_4
# BB#2:                                 # %vector.ph
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	408(%rsp), %rsi
	leaq	152(%rsp), %rdi
	leaq	8(%r9), %rbx
	movl	%ecx, %ebp
	andl	$7, %ebp
	movq	%rcx, %rax
	subq	%rbp, %rax
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI23_0(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB23_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm5         # xmm5 = mem[0],zero
	movq	(%rsi), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	movq	-8(%rdi), %xmm6         # xmm6 = mem[0],zero
	movq	(%rdi), %xmm7           # xmm7 = mem[0],zero
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psubd	%xmm5, %xmm6
	psubd	%xmm4, %xmm7
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	paddd	%xmm8, %xmm6
	paddd	%xmm8, %xmm7
	psrld	$16, %xmm6
	psrld	$16, %xmm7
	paddw	%xmm5, %xmm6
	pshuflw	$232, %xmm6, %xmm3      # xmm3 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rbx)
	paddw	%xmm4, %xmm7
	pshuflw	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rbx)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbx
	addq	$-8, %rax
	jne	.LBB23_3
.LBB23_4:                               # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB23_6
	.align	16, 0x90
.LBB23_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	400(%rsp,%rdx,2), %eax
	movzwl	144(%rsp,%rdx,2), %esi
	subl	%eax, %esi
	imull	%r8d, %esi
	addl	$32768, %esi            # imm = 0x8000
	shrl	$16, %esi
	addl	%eax, %esi
	movw	%si, (%r9,%rdx,2)
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB23_5
.LBB23_6:                               # %for.end
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Eval7Inputs, .Lfunc_end23-Eval7Inputs
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI24_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_1:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	Eval8InputsFloat,@function
Eval8InputsFloat:                       # @Eval8InputsFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp220:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp222:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp223:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 56
	subq	$1208, %rsp             # imm = 0x4B8
.Ltmp225:
	.cfi_def_cfa_offset 1264
.Ltmp226:
	.cfi_offset %rbx, -56
.Ltmp227:
	.cfi_offset %r12, -48
.Ltmp228:
	.cfi_offset %r13, -40
.Ltmp229:
	.cfi_offset %r14, -32
.Ltmp230:
	.cfi_offset %r15, -24
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	120(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI24_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	minss	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm3, %xmm4
	andnps	%xmm2, %xmm4
	movl	52(%rbx), %eax
	movl	112(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm4, %xmm2
	movaps	%xmm2, 16(%rsp)         # 16-byte Spill
	cvtss2sd	%xmm2, %xmm2
	addsd	.LCPI24_1(%rip), %xmm2
	movd	%xmm2, %r12
	sarl	$16, %r12d
	movl	%r12d, %ebp
	imull	%ecx, %ebp
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	cmovbl	%ecx, %eax
	leal	(%rax,%rbp), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leaq	40(%rsp), %r13
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	92(%rsp), %rdi
	leaq	56(%rbx), %rsi
	movl	$28, %edx
	callq	memmove
	movslq	%ebp, %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	addq	$4, %r15
	leaq	688(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval7InputsFloat
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	leaq	(%rbp,%rax,4), %rax
	movq	%rax, 160(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	Eval7InputsFloat
	movaps	16(%rsp), %xmm5         # 16-byte Reload
	movl	16(%rbx), %ebx
	testq	%rbx, %rbx
	je	.LBB24_6
# BB#1:                                 # %for.body.lr.ph
	cvtsi2ssl	%r12d, %xmm0
	subss	%xmm0, %xmm5
	movl	%ebx, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	je	.LBB24_4
# BB#2:                                 # %vector.ph
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movaps	%xmm5, %xmm0
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	704(%rsp), %rdx
	leaq	192(%rsp), %rsi
	leaq	16(%r14), %rdi
	movl	%ebx, %ebp
	andl	$7, %ebp
	movq	%rbx, %rax
	subq	%rbp, %rax
	.align	16, 0x90
.LBB24_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-16(%rdx), %xmm1
	movaps	(%rdx), %xmm2
	movaps	-16(%rsi), %xmm3
	movaps	(%rsi), %xmm4
	subps	%xmm1, %xmm3
	subps	%xmm2, %xmm4
	mulps	%xmm0, %xmm3
	mulps	%xmm0, %xmm4
	addps	%xmm1, %xmm3
	addps	%xmm2, %xmm4
	movups	%xmm3, -16(%rdi)
	movups	%xmm4, (%rdi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-8, %rax
	jne	.LBB24_3
.LBB24_4:                               # %middle.block
	cmpq	%rcx, %rbx
	je	.LBB24_6
	.align	16, 0x90
.LBB24_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	688(%rsp,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	176(%rsp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%r14,%rcx,4)
	incq	%rcx
	cmpq	%rbx, %rcx
	jb	.LBB24_5
.LBB24_6:                               # %for.end
	addq	$1208, %rsp             # imm = 0x4B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Eval8InputsFloat, .Lfunc_end24-Eval8InputsFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_0:
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.long	32768                   # 0x8000
	.text
	.align	16, 0x90
	.type	Eval8Inputs,@function
Eval8Inputs:                            # @Eval8Inputs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp234:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp235:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp236:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp237:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp238:
	.cfi_def_cfa_offset 720
.Ltmp239:
	.cfi_offset %rbx, -56
.Ltmp240:
	.cfi_offset %r12, -48
.Ltmp241:
	.cfi_offset %r13, -40
.Ltmp242:
	.cfi_offset %r14, -32
.Ltmp243:
	.cfi_offset %r15, -24
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movq	120(%r14), %rbx
	movzwl	(%r15), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	setne	%cl
	imull	52(%r14), %eax
	leal	32767(%rax), %edx
	movslq	%edx, %rdx
	imulq	$-2147450879, %rdx, %rdx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdx
	leal	32767(%rdx,%rax), %ebp
	movl	%ebp, %edx
	shrl	$31, %edx
	sarl	$15, %ebp
	addl	%edx, %ebp
	addl	%eax, %ebp
	movl	%ebp, %r12d
	sarl	$16, %r12d
	movl	112(%r14), %edx
	movzbl	%cl, %r13d
	addl	%r12d, %r13d
	imull	%edx, %r12d
	imull	%edx, %r13d
	leaq	8(%rsp), %rdi
	movl	$136, %edx
	movq	%r14, %rsi
	callq	memcpy
	leaq	60(%rsp), %rdi
	leaq	56(%r14), %rsi
	movl	$28, %edx
	callq	memmove
	movslq	%r12d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	addq	$2, %r15
	leaq	400(%rsp), %rsi
	movq	%r15, %rdi
	leaq	8(%rsp), %r12
	movq	%r12, %rdx
	callq	Eval7Inputs
	movslq	%r13d, %rax
	leaq	(%rbx,%rax,2), %rax
	movq	%rax, 128(%rsp)
	leaq	144(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	Eval7Inputs
	movq	(%rsp), %r9             # 8-byte Reload
	movl	16(%r14), %ecx
	testq	%rcx, %rcx
	je	.LBB25_6
# BB#1:                                 # %for.body.lr.ph
	movzwl	%bp, %r8d
	movl	%ecx, %eax
	andl	$7, %eax
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	je	.LBB25_4
# BB#2:                                 # %vector.ph
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	408(%rsp), %rsi
	leaq	152(%rsp), %rdi
	leaq	8(%r9), %rbx
	movl	%ecx, %ebp
	andl	$7, %ebp
	movq	%rcx, %rax
	subq	%rbp, %rax
	pxor	%xmm1, %xmm1
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI25_0(%rip), %xmm8  # xmm8 = [32768,32768,32768,32768]
	.align	16, 0x90
.LBB25_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm5         # xmm5 = mem[0],zero
	movq	(%rsi), %xmm4           # xmm4 = mem[0],zero
	punpcklwd	%xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	movq	-8(%rdi), %xmm6         # xmm6 = mem[0],zero
	movq	(%rdi), %xmm7           # xmm7 = mem[0],zero
	punpcklwd	%xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	punpcklwd	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psubd	%xmm5, %xmm6
	psubd	%xmm4, %xmm7
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6      # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm7, %xmm3      # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm7      # xmm7 = xmm7[0,2,2,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	paddd	%xmm8, %xmm6
	paddd	%xmm8, %xmm7
	psrld	$16, %xmm6
	psrld	$16, %xmm7
	paddw	%xmm5, %xmm6
	pshuflw	$232, %xmm6, %xmm3      # xmm3 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, -8(%rbx)
	paddw	%xmm4, %xmm7
	pshuflw	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	movq	%xmm3, (%rbx)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbx
	addq	$-8, %rax
	jne	.LBB25_3
.LBB25_4:                               # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB25_6
	.align	16, 0x90
.LBB25_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	400(%rsp,%rdx,2), %eax
	movzwl	144(%rsp,%rdx,2), %esi
	subl	%eax, %esi
	imull	%r8d, %esi
	addl	$32768, %esi            # imm = 0x8000
	shrl	$16, %esi
	addl	%eax, %esi
	movw	%si, (%r9,%rdx,2)
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB25_5
.LBB25_6:                               # %for.end
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Eval8Inputs, .Lfunc_end25-Eval8Inputs
	.cfi_endproc

	.type	_cmsInterpPluginChunk,@object # @_cmsInterpPluginChunk
	.bss
	.globl	_cmsInterpPluginChunk
	.align	8
_cmsInterpPluginChunk:
	.zero	8
	.size	_cmsInterpPluginChunk, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(ctx != ((void*)0))"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsintrp.c"
	.size	.L.str.1, 23

	.type	.L__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk,@object # @__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk
.L__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk:
	.asciz	"void _cmsAllocInterpPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__._cmsAllocInterpPluginChunk, 96

	.type	_cmsAllocInterpPluginChunk.InterpPluginChunk,@object # @_cmsAllocInterpPluginChunk.InterpPluginChunk
	.local	_cmsAllocInterpPluginChunk.InterpPluginChunk
	.comm	_cmsAllocInterpPluginChunk.InterpPluginChunk,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(from != ((void*)0))"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Too many input channels (%d channels, max=%d)"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unsupported interpolation (%d->%d channels)"
	.size	.L.str.4, 44


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
