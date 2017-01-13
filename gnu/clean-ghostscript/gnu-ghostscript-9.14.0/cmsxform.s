	.text
	.file	"cmsxform.bc"
	.globl	_cmsAllocAdaptationStateChunk
	.align	16, 0x90
	.type	_cmsAllocAdaptationStateChunk,@function
_cmsAllocAdaptationStateChunk:          # @_cmsAllocAdaptationStateChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$_cmsAllocAdaptationStateChunk.AdaptationStateChunk, %esi
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	40(%rax), %rsi
.LBB0_2:                                # %if.end
	movq	8(%rbx), %rdi
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 40(%rbx)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	_cmsAllocAdaptationStateChunk, .Lfunc_end0-_cmsAllocAdaptationStateChunk
	.cfi_endproc

	.globl	cmsSetAdaptationStateTHR
	.align	16, 0x90
	.type	cmsSetAdaptationStateTHR,@function
cmsSetAdaptationStateTHR:               # @cmsSetAdaptationStateTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	$3, %esi
	callq	_cmsContextGetClientChunk
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	jb	.LBB1_2
# BB#1:                                 # %if.then
	movsd	%xmm1, (%rax)
.LBB1_2:                                # %if.end
	popq	%rax
	retq
.Lfunc_end1:
	.size	cmsSetAdaptationStateTHR, .Lfunc_end1-cmsSetAdaptationStateTHR
	.cfi_endproc

	.globl	cmsSetAdaptationState
	.align	16, 0x90
	.type	cmsSetAdaptationState,@function
cmsSetAdaptationState:                  # @cmsSetAdaptationState
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp3:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	xorl	%edi, %edi
	movl	$3, %esi
	callq	_cmsContextGetClientChunk
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	jb	.LBB2_2
# BB#1:                                 # %if.then.i
	movsd	%xmm1, (%rax)
.LBB2_2:                                # %cmsSetAdaptationStateTHR.exit
	popq	%rax
	retq
.Lfunc_end2:
	.size	cmsSetAdaptationState, .Lfunc_end2-cmsSetAdaptationState
	.cfi_endproc

	.globl	cmsSetAlarmCodesTHR
	.align	16, 0x90
	.type	cmsSetAlarmCodesTHR,@function
cmsSetAlarmCodesTHR:                    # @cmsSetAlarmCodesTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB3_1
# BB#2:                                 # %cond.end
	movl	$32, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	memcpy                  # TAILCALL
.LBB3_1:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$97, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	cmsSetAlarmCodesTHR, .Lfunc_end3-cmsSetAlarmCodesTHR
	.cfi_endproc

	.globl	cmsGetAlarmCodesTHR
	.align	16, 0x90
	.type	cmsGetAlarmCodesTHR,@function
cmsGetAlarmCodesTHR:                    # @cmsGetAlarmCodesTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB4_1
# BB#2:                                 # %cond.end
	movl	$32, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	jmp	memcpy                  # TAILCALL
.LBB4_1:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$108, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	cmsGetAlarmCodesTHR, .Lfunc_end4-cmsGetAlarmCodesTHR
	.cfi_endproc

	.globl	cmsSetAlarmCodes
	.align	16, 0x90
	.type	cmsSetAlarmCodes,@function
cmsSetAlarmCodes:                       # @cmsSetAlarmCodes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_3
# BB#1:                                 # %cond.end
	xorl	%edi, %edi
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB5_4
# BB#2:                                 # %cmsSetAlarmCodesTHR.exit
	movl	$32, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	memcpy                  # TAILCALL
.LBB5_3:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsSetAlarmCodes, %ecx
	callq	__assert_fail
.LBB5_4:                                # %cond.false.i
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$97, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR, %ecx
	callq	__assert_fail
.Lfunc_end5:
	.size	cmsSetAlarmCodes, .Lfunc_end5-cmsSetAlarmCodes
	.cfi_endproc

	.globl	cmsGetAlarmCodes
	.align	16, 0x90
	.type	cmsGetAlarmCodes,@function
cmsGetAlarmCodes:                       # @cmsGetAlarmCodes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB6_3
# BB#1:                                 # %cond.end
	xorl	%edi, %edi
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB6_4
# BB#2:                                 # %cmsGetAlarmCodesTHR.exit
	movl	$32, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	jmp	memcpy                  # TAILCALL
.LBB6_3:                                # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$122, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsGetAlarmCodes, %ecx
	callq	__assert_fail
.LBB6_4:                                # %cond.false.i
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$108, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	cmsGetAlarmCodes, .Lfunc_end6-cmsGetAlarmCodes
	.cfi_endproc

	.globl	_cmsAllocAlarmCodesChunk
	.align	16, 0x90
	.type	_cmsAllocAlarmCodesChunk,@function
_cmsAllocAlarmCodesChunk:               # @_cmsAllocAlarmCodesChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$_cmsAllocAlarmCodesChunk.AlarmCodesChunk, %esi
	testq	%rax, %rax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	32(%rax), %rsi
.LBB7_2:                                # %if.end
	movq	8(%rbx), %rdi
	movl	$32, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 32(%rbx)
	popq	%rbx
	retq
.Lfunc_end7:
	.size	_cmsAllocAlarmCodesChunk, .Lfunc_end7-_cmsAllocAlarmCodesChunk
	.cfi_endproc

	.globl	cmsDeleteTransform
	.align	16, 0x90
	.type	cmsDeleteTransform,@function
cmsDeleteTransform:                     # @cmsDeleteTransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB8_14
# BB#1:                                 # %cond.end
	movq	120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_3
# BB#2:                                 # %if.then
	callq	cmsPipelineFree
.LBB8_3:                                # %if.end
	movq	112(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_5
# BB#4:                                 # %if.then.3
	callq	cmsPipelineFree
.LBB8_5:                                # %if.end.5
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_7
# BB#6:                                 # %if.then.7
	callq	cmsFreeNamedColorList
.LBB8_7:                                # %if.end.9
	movq	136(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_9
# BB#8:                                 # %if.then.11
	callq	cmsFreeNamedColorList
.LBB8_9:                                # %if.end.13
	movq	200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_11
# BB#10:                                # %if.then.15
	callq	cmsFreeProfileSequenceDescription
.LBB8_11:                               # %if.end.17
	movq	240(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB8_13
# BB#12:                                # %if.then.19
	movq	232(%rbx), %rdi
	callq	*248(%rbx)
.LBB8_13:                               # %if.end.21
	movq	232(%rbx), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	_cmsFree                # TAILCALL
.LBB8_14:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$151, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsDeleteTransform, %ecx
	callq	__assert_fail
.Lfunc_end8:
	.size	cmsDeleteTransform, .Lfunc_end8-cmsDeleteTransform
	.cfi_endproc

	.globl	cmsDoTransform
	.align	16, 0x90
	.type	cmsDoTransform,@function
cmsDoTransform:                         # @cmsDoTransform
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	%ecx, %r8d
	jmpq	*%rax                   # TAILCALL
.Lfunc_end9:
	.size	cmsDoTransform, .Lfunc_end9-cmsDoTransform
	.cfi_endproc

	.globl	cmsDoTransformStride
	.align	16, 0x90
	.type	cmsDoTransformStride,@function
cmsDoTransformStride:                   # @cmsDoTransformStride
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end10:
	.size	cmsDoTransformStride, .Lfunc_end10-cmsDoTransformStride
	.cfi_endproc

	.globl	_cmsAllocTransformPluginChunk
	.align	16, 0x90
	.type	_cmsAllocTransformPluginChunk,@function
_cmsAllocTransformPluginChunk:          # @_cmsAllocTransformPluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r12, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB11_10
# BB#1:                                 # %if.then
	movq	$0, (%rsp)
	movq	120(%rsi), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	movq	8(%r14), %rdi
	je	.LBB11_9
# BB#2:                                 # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB11_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB11_12
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	$0, 8(%rax)
	testq	%r12, %r12
	je	.LBB11_6
# BB#5:                                 # %if.then.3.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	%rax, 8(%r12)
.LBB11_6:                               # %if.end.5.i
                                        #   in Loop: Header=BB11_3 Depth=1
	testq	%r15, %r15
	jne	.LBB11_8
# BB#7:                                 # %if.then.8.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	%rax, (%rsp)
	movq	%rax, %r15
.LBB11_8:                               # %for.inc.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	8(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB11_3
.LBB11_9:                               # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB11_11
.LBB11_10:                              # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocTransformPluginChunk.TransformPluginChunkType, %esi
.LBB11_11:                              # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 120(%r14)
.LBB11_12:                              # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	_cmsAllocTransformPluginChunk, .Lfunc_end11-_cmsAllocTransformPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterTransformPlugin
	.align	16, 0x90
	.type	_cmsRegisterTransformPlugin,@function
_cmsRegisterTransformPlugin:            # @_cmsRegisterTransformPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$13, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB12_1
# BB#2:                                 # %if.end
	xorl	%r15d, %r15d
	cmpq	$0, 24(%rbx)
	je	.LBB12_6
# BB#3:                                 # %if.end.3
	movl	$16, %esi
	movq	%rbp, %rdi
	callq	_cmsPluginMalloc
	testq	%rax, %rax
	je	.LBB12_6
# BB#4:                                 # %if.end.7
	movq	24(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	(%r14), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, (%r14)
	jmp	.LBB12_5
.LBB12_1:                               # %if.then
	movq	$0, (%r14)
.LBB12_5:                               # %cleanup
	movl	$1, %r15d
.LBB12_6:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_cmsRegisterTransformPlugin, .Lfunc_end12-_cmsRegisterTransformPlugin
	.cfi_endproc

	.globl	_cmsSetTransformUserData
	.align	16, 0x90
	.type	_cmsSetTransformUserData,@function
_cmsSetTransformUserData:               # @_cmsSetTransformUserData
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB13_2
# BB#1:                                 # %cond.end
	movq	%rsi, 240(%rdi)
	movq	%rdx, 248(%rdi)
	popq	%rax
	retq
.LBB13_2:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$475, %edx              # imm = 0x1DB
	movl	$.L__PRETTY_FUNCTION__._cmsSetTransformUserData, %ecx
	callq	__assert_fail
.Lfunc_end13:
	.size	_cmsSetTransformUserData, .Lfunc_end13-_cmsSetTransformUserData
	.cfi_endproc

	.globl	_cmsGetTransformUserData
	.align	16, 0x90
	.type	_cmsGetTransformUserData,@function
_cmsGetTransformUserData:               # @_cmsGetTransformUserData
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB14_2
# BB#1:                                 # %cond.end
	movq	240(%rdi), %rax
	popq	%rdx
	retq
.LBB14_2:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$483, %edx              # imm = 0x1E3
	movl	$.L__PRETTY_FUNCTION__._cmsGetTransformUserData, %ecx
	callq	__assert_fail
.Lfunc_end14:
	.size	_cmsGetTransformUserData, .Lfunc_end14-_cmsGetTransformUserData
	.cfi_endproc

	.globl	_cmsGetTransformFormatters16
	.align	16, 0x90
	.type	_cmsGetTransformFormatters16,@function
_cmsGetTransformFormatters16:           # @_cmsGetTransformFormatters16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB15_6
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB15_3
# BB#2:                                 # %if.then
	movq	16(%rdi), %rax
	movq	%rax, (%rsi)
.LBB15_3:                               # %if.end
	testq	%rdx, %rdx
	je	.LBB15_5
# BB#4:                                 # %if.then.3
	movq	24(%rdi), %rax
	movq	%rax, (%rdx)
.LBB15_5:                               # %if.end.5
	popq	%rax
	retq
.LBB15_6:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$490, %edx              # imm = 0x1EA
	movl	$.L__PRETTY_FUNCTION__._cmsGetTransformFormatters16, %ecx
	callq	__assert_fail
.Lfunc_end15:
	.size	_cmsGetTransformFormatters16, .Lfunc_end15-_cmsGetTransformFormatters16
	.cfi_endproc

	.globl	_cmsGetTransformFormattersFloat
	.align	16, 0x90
	.type	_cmsGetTransformFormattersFloat,@function
_cmsGetTransformFormattersFloat:        # @_cmsGetTransformFormattersFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB16_6
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	32(%rdi), %rax
	movq	%rax, (%rsi)
.LBB16_3:                               # %if.end
	testq	%rdx, %rdx
	je	.LBB16_5
# BB#4:                                 # %if.then.2
	movq	40(%rdi), %rax
	movq	%rax, (%rdx)
.LBB16_5:                               # %if.end.3
	popq	%rax
	retq
.LBB16_6:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$497, %edx              # imm = 0x1F1
	movl	$.L__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat, %ecx
	callq	__assert_fail
.Lfunc_end16:
	.size	_cmsGetTransformFormattersFloat, .Lfunc_end16-_cmsGetTransformFormattersFloat
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.quad	4606859961066697680     # double 9.642000e-01
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.globl	cmsCreateExtendedTransform
	.align	16, 0x90
	.type	cmsCreateExtendedTransform,@function
cmsCreateExtendedTransform:             # @cmsCreateExtendedTransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 176
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movl	208(%rsp), %ecx
	movl	200(%rsp), %eax
	movl	192(%rsp), %edi
	movl	%edi, 112(%rsp)
	movl	%eax, 108(%rsp)
	movl	%ecx, 104(%rsp)
	leal	-1(%rsi), %ebp
	testb	$2, %ch
	jne	.LBB17_1
# BB#2:                                 # %if.end
	movl	(%rbx,%rbp,4), %eax
	cmpq	$0, 176(%rsp)
	jne	.LBB17_3
# BB#4:                                 # %if.end
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	andl	$4096, %eax             # imm = 0x1000
	je	.LBB17_5
# BB#6:                                 # %if.then.4
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%ecx, 104(%rsp)
	jmp	.LBB17_7
.LBB17_1:                               # %if.then
	leaq	112(%rsp), %rcx
	leaq	108(%rsp), %r8
	leaq	104(%rsp), %r9
	movl	$0, %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	AllocEmptyTransform
	movq	%rax, %rbx
	jmp	.LBB17_75
.LBB17_3:
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jmp	.LBB17_7
.LBB17_5:
	movl	%ecx, 84(%rsp)          # 4-byte Spill
.LBB17_7:                               # %if.end.7
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	jne	.LBB17_10
# BB#8:                                 # %lor.lhs.false
	movl	200(%rsp), %edi
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	je	.LBB17_9
.LBB17_10:                              # %if.then.12
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	orl	$64, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%eax, 104(%rsp)
.LBB17_11:                              # %if.end.13
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB17_31
# BB#12:                                # %if.end.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB17_31
# BB#13:                                # %for.body.lr.ph.i
	callq	cmsGetColorSpace
	movl	%eax, %ebp
	movq	96(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movl	%ebp, %eax
	movq	%r15, %r12
	.align	16, 0x90
.LBB17_14:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %r13
	movq	(%r13,%r14,8), %r12
	cmpl	$1482250784, %eax       # imm = 0x58595A20
	setne	%bl
	cmpl	$1281450528, %eax       # imm = 0x4C616220
	setne	%r15b
	testq	%r12, %r12
	je	.LBB17_31
# BB#15:                                # %if.end.11.i
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	%r12, %rdi
	callq	cmsGetDeviceClass
	cmpl	$1852662636, %eax       # imm = 0x6E6D636C
	jne	.LBB17_20
# BB#16:                                # %if.then.14.i
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%r12, %rdi
	cmpl	$2, %eax
	jl	.LBB17_19
# BB#17:                                # %cond.true.i
                                        #   in Loop: Header=BB17_14 Depth=1
	callq	cmsGetPCS
	movl	$826494034, %r15d       # imm = 0x31434C52
	jmp	.LBB17_23
	.align	16, 0x90
.LBB17_20:                              # %if.else.i
                                        #   in Loop: Header=BB17_14 Depth=1
	andb	%r15b, %bl
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	sete	%al
	orb	%bl, %al
	movzbl	%al, %eax
	movq	%r12, %rdi
	cmpl	$1, %eax
	jne	.LBB17_22
# BB#21:                                # %if.then.19.i
                                        #   in Loop: Header=BB17_14 Depth=1
	callq	cmsGetColorSpace
	movl	%eax, %r15d
	movq	%r12, %rdi
	callq	cmsGetPCS
	jmp	.LBB17_23
	.align	16, 0x90
.LBB17_19:                              # %cond.false.i
                                        #   in Loop: Header=BB17_14 Depth=1
	callq	cmsGetColorSpace
	movl	$826494034, %r15d       # imm = 0x31434C52
	jmp	.LBB17_23
	.align	16, 0x90
.LBB17_22:                              # %if.else.22.i
                                        #   in Loop: Header=BB17_14 Depth=1
	callq	cmsGetPCS
	movl	%eax, %r15d
	movq	%r12, %rdi
	callq	cmsGetColorSpace
.LBB17_23:                              # %if.end.26.i
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	%r13, %r12
	testl	%r14d, %r14d
	cmovel	%r15d, %ebp
	incq	%r14
	cmpq	88(%rsp), %r14          # 8-byte Folded Reload
	jl	.LBB17_14
# BB#24:                                # %if.end.17
	movl	%eax, %r15d
	movl	192(%rsp), %eax
	movl	%eax, %ebx
	shrl	$16, %ebx
	movl	%ebp, %edi
	callq	_cmsLCMScolorSpace
	movl	%ebx, %ecx
	andl	$31, %ecx
	je	.LBB17_33
# BB#25:                                # %if.end.17
	cmpl	%eax, %ecx
	je	.LBB17_33
# BB#26:                                # %if.end.3.i
	cmpl	$10, %eax
	jne	.LBB17_28
# BB#27:                                # %if.end.3.i
	cmpl	$30, %ecx
	je	.LBB17_33
.LBB17_28:                              # %IsProperColorSpace.exit
	cmpl	$30, %eax
	jne	.LBB17_30
# BB#29:                                # %IsProperColorSpace.exit
	cmpl	$10, %ecx
	jne	.LBB17_30
.LBB17_33:                              # %if.end.21
	movl	200(%rsp), %eax
	movl	%eax, %ebx
	shrl	$16, %ebx
	movl	%r15d, %edi
	callq	_cmsLCMScolorSpace
	movl	%ebx, %ecx
	andl	$31, %ecx
	je	.LBB17_40
# BB#34:                                # %if.end.21
	cmpl	%eax, %ecx
	je	.LBB17_40
# BB#35:                                # %if.end.3.i.78
	cmpl	$10, %eax
	jne	.LBB17_37
# BB#36:                                # %if.end.3.i.78
	cmpl	$30, %ecx
	je	.LBB17_40
.LBB17_37:                              # %IsProperColorSpace.exit85
	cmpl	$30, %eax
	jne	.LBB17_39
# BB#38:                                # %IsProperColorSpace.exit85
	cmpl	$10, %ecx
	jne	.LBB17_39
.LBB17_40:                              # %if.end.25
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	%r13, %r9
	callq	_cmsLinkProfiles
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB17_41
# BB#42:                                # %if.end.29
	movl	%ebp, %edi
	callq	cmsChannelsOf
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	cmsPipelineInputChannels
	cmpl	%eax, %r14d
	jne	.LBB17_44
# BB#43:                                # %lor.lhs.false.33
	movl	%r15d, %edi
	callq	cmsChannelsOf
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	cmsPipelineOutputChannels
	cmpl	%eax, %r14d
	jne	.LBB17_44
# BB#45:                                # %if.end.38
	leaq	112(%rsp), %rcx
	leaq	108(%rsp), %r8
	leaq	104(%rsp), %r9
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	44(%rsp), %edx          # 4-byte Reload
	callq	AllocEmptyTransform
	movq	%rax, %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB17_75
# BB#46:                                # %if.end.42
	movl	%ebp, 144(%r14)
	movl	%r15d, 148(%r14)
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rbx,4), %eax
	movl	%eax, 224(%r14)
	movq	(%r12), %rdi
	movl	$2004119668, %esi       # imm = 0x77747074
	callq	cmsReadTag
	testq	%rax, %rax
	je	.LBB17_47
# BB#48:                                # %if.else.i.87
	movups	(%rax), %xmm0
	movups	%xmm0, 152(%r14)
	movq	16(%rax), %rax
	jmp	.LBB17_49
.LBB17_31:                              # %if.then.16
	xorl	%ebx, %ebx
	movl	$4, %esi
	movl	$.L.str.6, %edx
.LBB17_32:                              # %cleanup
	xorl	%eax, %eax
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	cmsSignalError
.LBB17_75:                              # %cleanup
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_9:
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%r13, 72(%rsp)          # 8-byte Spill
	jmp	.LBB17_11
.LBB17_44:                              # %if.then.37
	movq	%rbx, %rdi
	callq	cmsPipelineFree
	xorl	%ebx, %ebx
	movl	$13, %esi
	movl	$.L.str.10, %edx
	jmp	.LBB17_32
.LBB17_41:                              # %if.then.28
	xorl	%ebx, %ebx
	movl	$13, %esi
	movl	$.L.str.9, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
	jmp	.LBB17_75
.LBB17_30:                              # %if.then.20
	xorl	%ebx, %ebx
	movl	$9, %esi
	movl	$.L.str.7, %edx
	jmp	.LBB17_32
.LBB17_39:                              # %if.then.24
	xorl	%ebx, %ebx
	movl	$9, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB17_32
.LBB17_47:                              # %if.then.i
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [9.642000e-01,1.000000e+00]
	movups	%xmm0, 152(%r14)
	movabsq	$4605605258210512260, %rax # imm = 0x3FEA6594AF4F0D84
.LBB17_49:                              # %SetWhitePoint.exit
	movq	%rax, 168(%r14)
	movq	(%r12,%rbx,8), %rdi
	movl	$2004119668, %esi       # imm = 0x77747074
	callq	cmsReadTag
	testq	%rax, %rax
	je	.LBB17_50
# BB#51:                                # %if.else.i.98
	movups	(%rax), %xmm0
	movups	%xmm0, 176(%r14)
	movq	16(%rax), %rax
	jmp	.LBB17_52
.LBB17_50:                              # %if.then.i.93
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [9.642000e-01,1.000000e+00]
	movups	%xmm0, 176(%r14)
	movabsq	$4605605258210512260, %rax # imm = 0x3FEA6594AF4F0D84
.LBB17_52:                              # %SetWhitePoint.exit100
	movq	%rax, 192(%r14)
	movq	176(%rsp), %rax
	testq	%rax, %rax
	je	.LBB17_55
# BB#53:                                # %land.lhs.true
	testb	$16, 105(%rsp)
	je	.LBB17_55
# BB#54:                                # %if.then.57
	movq	%rax, (%rsp)
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%r13, %r8
	movl	184(%rsp), %r9d
	callq	_cmsCreateGamutCheckPipeline
	movq	%rax, 120(%r14)
.LBB17_55:                              # %if.end.59
	movq	(%r12), %rdi
	movl	$1668051572, %esi       # imm = 0x636C7274
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB17_57
# BB#56:                                # %if.then.63
	movq	(%r12), %rdi
	movl	$1668051572, %esi       # imm = 0x636C7274
	callq	cmsReadTag
	movq	%rax, %rdi
	callq	cmsDupNamedColorList
	movq	%rax, 128(%r14)
.LBB17_57:                              # %if.end.67
	movq	(%r12,%rbx,8), %rdi
	callq	cmsGetDeviceClass
	movq	(%r12,%rbx,8), %rdi
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	jne	.LBB17_60
# BB#58:                                # %if.then.73
	movl	$1668050804, %esi       # imm = 0x636C6F74
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB17_63
# BB#59:                                # %if.then.79
	movq	(%r12,%rbx,8), %rdi
	movl	$1668050804, %esi       # imm = 0x636C6F74
	jmp	.LBB17_62
.LBB17_60:                              # %if.else
	movl	$1668051572, %esi       # imm = 0x636C7274
	callq	cmsIsTag
	testl	%eax, %eax
	je	.LBB17_63
# BB#61:                                # %if.then.91
	movq	(%r12,%rbx,8), %rdi
	movl	$1668051572, %esi       # imm = 0x636C7274
.LBB17_62:                              # %if.end.99
	callq	cmsReadTag
	movq	%rax, %rdi
	callq	cmsDupNamedColorList
	movq	%rax, 136(%r14)
.LBB17_63:                              # %if.end.99
	movl	104(%rsp), %ecx
	xorl	%eax, %eax
	testb	$-128, %cl
	je	.LBB17_65
# BB#64:                                # %if.then.102
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	callq	_cmsCompileProfileSequence
	movl	104(%rsp), %ecx
.LBB17_65:                              # %if.end.106
	movq	%rax, 200(%r14)
	testb	$64, %cl
	jne	.LBB17_74
# BB#66:                                # %if.then.109
	leaq	48(%r14), %rbx
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	120(%r14), %rax
	testq	%rax, %rax
	je	.LBB17_72
# BB#67:                                # %if.then.113
	movq	16(%rax), %rdx
	leaq	118(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*24(%rax)
	cmpw	$0, 118(%rsp)
	je	.LBB17_71
# BB#68:                                # %if.then.i.103
	movq	232(%r14), %rdi
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	movq	112(%r14), %rcx
	movl	12(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB17_74
# BB#69:                                # %for.body.lr.ph.i.104
	movw	$1, %dx
.LBB17_70:                              # %for.body.i.106
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rdx), %esi
	movzwl	%si, %esi
	movw	(%rax,%rsi,2), %di
	movw	%di, 80(%r14,%rsi,2)
	movzwl	%dx, %esi
	leal	1(%rdx), %edx
	cmpl	%ecx, %esi
	jb	.LBB17_70
	jmp	.LBB17_74
.LBB17_72:                              # %if.else.118
	movq	112(%r14), %rax
	movq	%r14, %rsi
	addq	$80, %rsi
	jmp	.LBB17_73
.LBB17_71:                              # %if.else.i.107
	movq	%r14, %rsi
	addq	$80, %rsi
	movq	112(%r14), %rax
.LBB17_73:                              # %if.end.128
	movq	16(%rax), %rdx
	movq	%rbx, %rdi
	callq	*24(%rax)
.LBB17_74:                              # %if.end.128
	movq	%r14, %rbx
	jmp	.LBB17_75
.Lfunc_end17:
	.size	cmsCreateExtendedTransform, .Lfunc_end17-cmsCreateExtendedTransform
	.cfi_endproc

	.align	16, 0x90
	.type	AllocEmptyTransform,@function
AllocEmptyTransform:                    # @AllocEmptyTransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 112
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$13, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r13
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdi
	callq	_cmsMallocZero
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB18_42
# BB#1:                                 # %if.end
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leaq	112(%rax), %r12
	movq	%r14, 112(%rax)
	movq	(%r13), %r13
	testq	%r13, %r13
	je	.LBB18_7
# BB#2:                                 # %for.body.lr.ph
	leaq	8(%rax), %r14
	leaq	240(%rax), %rbp
	leaq	248(%rax), %rbx
	movq	%rax, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB18_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	*(%r13)
	testl	%eax, %eax
	jne	.LBB18_5
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	8(%r13), %r13
	testq	%r13, %r13
	jne	.LBB18_4
# BB#6:                                 # %for.cond.for.end_crit_edge
	movq	(%r12), %r14
	movq	16(%rsp), %rax          # 8-byte Reload
.LBB18_7:                               # %for.end
	movq	%rax, %rbp
	testq	%r14, %r14
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%r15, %r14
	movq	40(%rsp), %r15          # 8-byte Reload
	je	.LBB18_9
# BB#8:                                 # %if.then.24
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	%r14, %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%r15, %r9
	callq	_cmsOptimizePipeline
.LBB18_9:                               # %if.end.27
	movl	(%r14), %edi
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	je	.LBB18_17
# BB#10:                                # %land.lhs.true
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	je	.LBB18_17
# BB#11:                                # %if.then.32
	movl	(%r14), %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 32(%rbp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movl	$1, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 40(%rbp)
	movl	(%r15), %ecx
	movl	%ecx, %edx
	orl	$33554432, %edx         # imm = 0x2000000
	movl	%edx, (%r15)
	movq	%rbp, %rdx
	cmpq	$0, 32(%rdx)
	je	.LBB18_13
# BB#12:                                # %if.then.32
	testq	%rax, %rax
	je	.LBB18_13
# BB#14:                                # %if.end.48
	testb	$2, %ch
	jne	.LBB18_15
# BB#16:                                # %if.else
	movq	$FloatXFORM, 8(%rdx)
	jmp	.LBB18_41
.LBB18_17:                              # %if.else.54
	movl	(%r14), %esi
	testl	%esi, %esi
	jne	.LBB18_20
# BB#18:                                # %land.lhs.true.56
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB18_19
.LBB18_20:                              # %if.else.62
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 16(%rbp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rbp, %rdx
	movq	%rax, 24(%rdx)
	testq	%rax, %rax
	je	.LBB18_13
# BB#21:                                # %if.else.62
	movq	16(%rdx), %rax
	testq	%rax, %rax
	je	.LBB18_13
# BB#22:                                # %if.end.79
	movl	(%rdx), %eax
	andl	$7, %eax
	cmpl	$1, %eax
	movl	(%r15), %eax
	je	.LBB18_25
# BB#23:                                # %if.then.85
	orl	$33554432, %eax         # imm = 0x2000000
	jmp	.LBB18_24
.LBB18_5:                               # %if.then.5
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbx, 232(%rbp)
	movq	%r15, %r14
	movl	(%r14), %eax
	movl	%eax, (%rbp)
	movq	48(%rsp), %r15          # 8-byte Reload
	movl	(%r15), %eax
	movl	%eax, 4(%rbp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 208(%rbp)
	movl	(%r14), %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 16(%rbp)
	movl	(%r15), %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 24(%rbp)
	movl	(%r14), %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 32(%rbp)
	movl	(%r15), %esi
	movl	$1, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	_cmsGetFormatter
	movq	%rax, 40(%rbp)
	jmp	.LBB18_42
.LBB18_13:                              # %if.then.47
	xorl	%ebp, %ebp
	movl	$8, %esi
	movq	%rdx, %r14
	movl	$.L.str.13, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	cmsSignalError
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	jmp	.LBB18_42
.LBB18_15:                              # %if.then.50
	movq	$NullFloatXFORM, 8(%rdx)
	jmp	.LBB18_41
.LBB18_19:                              # %if.then.58
	xorps	%xmm0, %xmm0
	movq	%rbp, %rdx
	movups	%xmm0, 16(%rdx)
	movl	$33554432, %eax         # imm = 0x2000000
	orl	(%r15), %eax
.LBB18_24:                              # %if.end.88
	movl	%eax, (%r15)
.LBB18_25:                              # %if.end.88
	testb	$2, %ah
	jne	.LBB18_26
# BB#27:                                # %if.else.93
	movb	%al, %cl
	andl	$4096, %eax             # imm = 0x1000
	testb	$64, %cl
	jne	.LBB18_28
# BB#31:                                # %if.else.104
	testl	%eax, %eax
	je	.LBB18_33
# BB#32:                                # %if.then.107
	movq	$CachedXFORMGamutCheck, 8(%rdx)
	jmp	.LBB18_41
.LBB18_26:                              # %if.then.91
	movq	$NullXFORM, 8(%rdx)
	jmp	.LBB18_41
.LBB18_28:                              # %if.then.96
	testl	%eax, %eax
	je	.LBB18_30
# BB#29:                                # %if.then.99
	movq	$PrecalculatedXFORMGamutCheck, 8(%rdx)
	jmp	.LBB18_41
.LBB18_33:                              # %if.else.109
	movl	(%r14), %eax
	movl	%eax, %ecx
	andl	$-2031617, %ecx         # imm = 0xFFFFFFFFFFE0FFFF
	cmpl	$25, %ecx
	jne	.LBB18_36
# BB#34:                                # %land.lhs.true.112
	movl	$-2031617, %ecx         # imm = 0xFFFFFFFFFFE0FFFF
	movq	48(%rsp), %rsi          # 8-byte Reload
	andl	(%rsi), %ecx
	cmpl	$9, %ecx
	jne	.LBB18_36
# BB#35:                                # %if.then.115
	movq	$CachedXFORM3to1, 8(%rdx)
	jmp	.LBB18_41
.LBB18_30:                              # %if.else.101
	movq	$PrecalculatedXFORM, 8(%rdx)
	jmp	.LBB18_41
.LBB18_36:                              # %if.else.117
	shrl	$3, %eax
	andl	$15, %eax
	cmpl	$2, %eax
	ja	.LBB18_38
# BB#37:                                # %if.then.120
	movq	$CachedXFORM4, 8(%rdx)
	jmp	.LBB18_41
.LBB18_38:                              # %if.else.122
	cmpl	$4, %eax
	ja	.LBB18_40
# BB#39:                                # %if.then.124
	movq	$CachedXFORM8, 8(%rdx)
	jmp	.LBB18_41
.LBB18_40:                              # %if.else.126
	movq	$CachedXFORM, 8(%rdx)
.LBB18_41:                              # %if.end.134
	movl	(%r14), %eax
	movl	%eax, (%rdx)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 4(%rdx)
	movl	(%r15), %eax
	movl	%eax, 208(%rdx)
	movq	%rbx, 232(%rdx)
	movq	$0, 240(%rdx)
	movq	%rdx, %rbp
.LBB18_42:                              # %cleanup.140
	movq	%rbp, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	AllocEmptyTransform, .Lfunc_end18-AllocEmptyTransform
	.cfi_endproc

	.globl	cmsCreateMultiprofileTransformTHR
	.align	16, 0x90
	.type	cmsCreateMultiprofileTransformTHR,@function
cmsCreateMultiprofileTransformTHR:      # @cmsCreateMultiprofileTransformTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$4184, %rsp             # imm = 0x1058
.Ltmp70:
	.cfi_def_cfa_offset 4240
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%edx, %ebx
	leal	-1(%rbx), %eax
	cmpl	$254, %eax
	jbe	.LBB19_1
# BB#6:                                 # %if.then
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	movl	%ebx, %ecx
	callq	cmsSignalError
	jmp	.LBB19_5
.LBB19_1:                               # %for.cond.preheader
	movl	%r8d, 48(%rsp)          # 4-byte Spill
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	je	.LBB19_4
# BB#2:                                 # %for.body.lr.ph
	movl	4240(%rsp), %eax
	shrl	$13, %eax
	andl	$1, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	leaq	3152(%rsp), %r12
	leaq	2128(%rsp), %r13
	leaq	80(%rsp), %r14
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	.align	16, 0x90
.LBB19_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%r12)
	movl	%r15d, (%r13)
	movl	$3, %esi
	movq	%rdi, %rbp
	callq	_cmsContextGetClientChunk
	movq	%rbp, %rdi
	movq	(%rax), %rax
	movq	%rax, (%r14)
	addq	$4, %r12
	addq	$4, %r13
	addq	$8, %r14
	decl	%ebx
	jne	.LBB19_3
.LBB19_4:                               # %for.end
	movl	4240(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	3152(%rsp), %rcx
	leaq	2128(%rsp), %r8
	leaq	80(%rsp), %r9
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	cmsCreateExtendedTransform
	movq	%rax, %rbp
.LBB19_5:                               # %cleanup
	movq	%rbp, %rax
	addq	$4184, %rsp             # imm = 0x1058
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cmsCreateMultiprofileTransformTHR, .Lfunc_end19-cmsCreateMultiprofileTransformTHR
	.cfi_endproc

	.globl	cmsCreateMultiprofileTransform
	.align	16, 0x90
	.type	cmsCreateMultiprofileTransform,@function
cmsCreateMultiprofileTransform:         # @cmsCreateMultiprofileTransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 64
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	leal	-1(%rbx), %eax
	cmpl	$254, %eax
	jbe	.LBB20_1
# BB#2:                                 # %return
	xorl	%edi, %edi
	movl	$2, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	movl	%ebx, %ecx
	callq	cmsSignalError
	xorl	%eax, %eax
	jmp	.LBB20_3
.LBB20_1:                               # %if.end
	movq	(%rbp), %rdi
	callq	cmsGetProfileContextID
	movl	%r13d, (%rsp)
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	cmsCreateMultiprofileTransformTHR
.LBB20_3:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	cmsCreateMultiprofileTransform, .Lfunc_end20-cmsCreateMultiprofileTransform
	.cfi_endproc

	.globl	cmsCreateTransformTHR
	.align	16, 0x90
	.type	cmsCreateTransformTHR,@function
cmsCreateTransformTHR:                  # @cmsCreateTransformTHR
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 48
	movl	%edx, %eax
	movl	48(%rsp), %r10d
	movq	%rsi, 16(%rsp)
	movq	%rcx, 24(%rsp)
	cmpq	$1, %rcx
	movl	$1, %edx
	sbbl	$-1, %edx
	movl	%r10d, (%rsp)
	leaq	16(%rsp), %rsi
	movl	%eax, %ecx
	callq	cmsCreateMultiprofileTransformTHR
	addq	$40, %rsp
	retq
.Lfunc_end21:
	.size	cmsCreateTransformTHR, .Lfunc_end21-cmsCreateTransformTHR
	.cfi_endproc

	.globl	cmsCreateTransform
	.align	16, 0x90
	.type	cmsCreateTransform,@function
cmsCreateTransform:                     # @cmsCreateTransform
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
	subq	$40, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 96
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdx, %rbp
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	cmsGetProfileContextID
	movq	%rbx, 16(%rsp)
	movq	%rbp, 24(%rsp)
	cmpq	$1, %rbp
	movl	$1, %edx
	sbbl	$-1, %edx
	movl	%r13d, (%rsp)
	leaq	16(%rsp), %rsi
	movq	%rax, %rdi
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	cmsCreateMultiprofileTransformTHR
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	cmsCreateTransform, .Lfunc_end22-cmsCreateTransform
	.cfi_endproc

	.globl	cmsCreateProofingTransformTHR
	.align	16, 0x90
	.type	cmsCreateProofingTransformTHR,@function
cmsCreateProofingTransformTHR:          # @cmsCreateProofingTransformTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 224
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%r8d, 44(%rsp)          # 4-byte Spill
	movq	%rcx, %rbx
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	240(%rsp), %r14d
	movl	224(%rsp), %edx
	movl	232(%rsp), %eax
	movl	%r14d, %ecx
	shrl	$13, %ecx
	andl	$1, %ecx
	movq	%r15, 112(%rsp)
	movq	%rbp, 120(%rsp)
	movq	%rbp, 128(%rsp)
	movq	%rbx, 136(%rsp)
	movl	%edx, 96(%rsp)
	movl	%edx, 100(%rsp)
	movl	$1, 104(%rsp)
	movl	%eax, 108(%rsp)
	movl	%ecx, 80(%rsp)
	movl	%ecx, 84(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 92(%rsp)
	movl	$3, %esi
	callq	_cmsContextGetClientChunk
	movl	%r14d, %ecx
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rax, 48(%rsp)
	testb	$80, %ch
	je	.LBB23_1
# BB#2:                                 # %if.end
	movl	%ecx, 32(%rsp)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movq	%rbp, (%rsp)
	movl	$1, 8(%rsp)
	leaq	112(%rsp), %rdx
	leaq	80(%rsp), %rcx
	leaq	96(%rsp), %r8
	leaq	48(%rsp), %r9
	movl	$4, %esi
	movq	%r13, %rdi
	callq	cmsCreateExtendedTransform
	jmp	.LBB23_3
.LBB23_1:                               # %if.then
	movq	%r15, 144(%rsp)
	movq	%rbx, 152(%rsp)
	cmpq	$1, %rbx
	movl	$1, %edx
	sbbl	$-1, %edx
	movl	%ecx, (%rsp)
	leaq	144(%rsp), %rsi
	movq	%r13, %rdi
	movl	%r12d, %ecx
	movl	44(%rsp), %r8d          # 4-byte Reload
	movl	224(%rsp), %r9d
	callq	cmsCreateMultiprofileTransformTHR
.LBB23_3:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	cmsCreateProofingTransformTHR, .Lfunc_end23-cmsCreateProofingTransformTHR
	.cfi_endproc

	.globl	cmsCreateProofingTransform
	.align	16, 0x90
	.type	cmsCreateProofingTransform,@function
cmsCreateProofingTransform:             # @cmsCreateProofingTransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp123:
	.cfi_def_cfa_offset 80
.Ltmp124:
	.cfi_offset %rbx, -56
.Ltmp125:
	.cfi_offset %r12, -48
.Ltmp126:
	.cfi_offset %r13, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
.Ltmp129:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	cmsGetProfileContextID
	movl	88(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movl	80(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%r13d, (%rsp)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	movq	%r14, %r9
	callq	cmsCreateProofingTransformTHR
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	cmsCreateProofingTransform, .Lfunc_end24-cmsCreateProofingTransform
	.cfi_endproc

	.globl	cmsGetTransformContextID
	.align	16, 0x90
	.type	cmsGetTransformContextID,@function
cmsGetTransformContextID:               # @cmsGetTransformContextID
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB25_2
# BB#1:                                 # %if.end
	movq	232(%rdi), %rax
.LBB25_2:                               # %cleanup
	retq
.Lfunc_end25:
	.size	cmsGetTransformContextID, .Lfunc_end25-cmsGetTransformContextID
	.cfi_endproc

	.globl	cmsGetTransformInputFormat
	.align	16, 0x90
	.type	cmsGetTransformInputFormat,@function
cmsGetTransformInputFormat:             # @cmsGetTransformInputFormat
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB26_2
# BB#1:                                 # %if.end
	movl	(%rdi), %eax
.LBB26_2:                               # %cleanup
	retq
.Lfunc_end26:
	.size	cmsGetTransformInputFormat, .Lfunc_end26-cmsGetTransformInputFormat
	.cfi_endproc

	.globl	cmsGetTransformOutputFormat
	.align	16, 0x90
	.type	cmsGetTransformOutputFormat,@function
cmsGetTransformOutputFormat:            # @cmsGetTransformOutputFormat
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB27_2
# BB#1:                                 # %if.end
	movl	4(%rdi), %eax
.LBB27_2:                               # %cleanup
	retq
.Lfunc_end27:
	.size	cmsGetTransformOutputFormat, .Lfunc_end27-cmsGetTransformOutputFormat
	.cfi_endproc

	.globl	cmsChangeBuffersFormat
	.align	16, 0x90
	.type	cmsChangeBuffersFormat,@function
cmsChangeBuffersFormat:                 # @cmsChangeBuffersFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 48
.Ltmp135:
	.cfi_offset %rbx, -48
.Ltmp136:
	.cfi_offset %r12, -40
.Ltmp137:
	.cfi_offset %r14, -32
.Ltmp138:
	.cfi_offset %r15, -24
.Ltmp139:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	232(%rbx), %rdi
	testb	$2, 211(%rbx)
	jne	.LBB28_3
# BB#1:                                 # %if.then
	xorl	%r15d, %r15d
	movl	$13, %esi
	movl	$.L.str.12, %edx
	jmp	.LBB28_2
.LBB28_3:                               # %if.end
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ebp, %esi
	callq	_cmsGetFormatter
	movq	%rax, %r12
	movq	232(%rbx), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%r14d, %esi
	callq	_cmsGetFormatter
	testq	%r12, %r12
	je	.LBB28_5
# BB#4:                                 # %if.end
	testq	%rax, %rax
	je	.LBB28_5
# BB#6:                                 # %if.end.10
	movl	%ebp, (%rbx)
	movl	%r14d, 4(%rbx)
	movq	%r12, 16(%rbx)
	movq	%rax, 24(%rbx)
	movl	$1, %r15d
	jmp	.LBB28_7
.LBB28_5:                               # %if.then.8
	movq	232(%rbx), %rdi
	movl	$8, %esi
	movl	$.L.str.13, %edx
.LBB28_2:                               # %cleanup
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB28_7:                               # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	cmsChangeBuffersFormat, .Lfunc_end28-cmsChangeBuffersFormat
	.cfi_endproc

	.align	16, 0x90
	.type	NullFloatXFORM,@function
NullFloatXFORM:                         # @NullFloatXFORM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp143:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp144:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 128
.Ltmp147:
	.cfi_offset %rbx, -56
.Ltmp148:
	.cfi_offset %r12, -48
.Ltmp149:
	.cfi_offset %r13, -40
.Ltmp150:
	.cfi_offset %r14, -32
.Ltmp151:
	.cfi_offset %r15, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testl	%ebp, %ebp
	je	.LBB29_3
# BB#1:                                 # %for.body.lr.ph
	leaq	(%rsp), %r13
	.align	16, 0x90
.LBB29_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	*32(%r15)
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	*40(%r15)
	movq	%rax, %r12
	decl	%ebp
	jne	.LBB29_2
.LBB29_3:                               # %for.end
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	NullFloatXFORM, .Lfunc_end29-NullFloatXFORM
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI30_0:
	.long	3212836864              # float -1.000000e+00
	.long	3212836864              # float -1.000000e+00
	.long	3212836864              # float -1.000000e+00
	.long	3212836864              # float -1.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI30_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	FloatXFORM,@function
FloatXFORM:                             # @FloatXFORM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp156:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp157:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp159:
	.cfi_def_cfa_offset 224
.Ltmp160:
	.cfi_offset %rbx, -56
.Ltmp161:
	.cfi_offset %r12, -48
.Ltmp162:
	.cfi_offset %r13, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
.Ltmp165:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	testl	%ebp, %ebp
	je	.LBB30_8
# BB#1:                                 # %for.body.lr.ph
	leaq	96(%rsp), %r14
	leaq	32(%rsp), %r13
	.align	16, 0x90
.LBB30_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %ecx
	callq	*32(%r12)
	movq	120(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB30_5
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	leaq	28(%rsp), %rsi
	callq	cmsPipelineEvalFloat
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI30_1, %xmm0
	jbe	.LBB30_6
# BB#4:                                 # %for.cond.7.preheader
                                        #   in Loop: Header=BB30_2 Depth=1
	movaps	.LCPI30_0(%rip), %xmm0  # xmm0 = [-1.000000e+00,-1.000000e+00,-1.000000e+00,-1.000000e+00]
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 80(%rsp)
	jmp	.LBB30_7
	.align	16, 0x90
.LBB30_5:                               # %if.else.13
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB30_6:                               # %if.end.17
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	112(%r12), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	cmsPipelineEvalFloat
.LBB30_7:                               # %if.end.17
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	*40(%r12)
	movq	%rax, %r15
	decl	%ebp
	movq	16(%rsp), %rdx          # 8-byte Reload
	jne	.LBB30_2
.LBB30_8:                               # %for.end.22
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	FloatXFORM, .Lfunc_end30-FloatXFORM
	.cfi_endproc

	.align	16, 0x90
	.type	NullXFORM,@function
NullXFORM:                              # @NullXFORM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp172:
	.cfi_def_cfa_offset 96
.Ltmp173:
	.cfi_offset %rbx, -56
.Ltmp174:
	.cfi_offset %r12, -48
.Ltmp175:
	.cfi_offset %r13, -40
.Ltmp176:
	.cfi_offset %r14, -32
.Ltmp177:
	.cfi_offset %r15, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testl	%ebp, %ebp
	je	.LBB31_3
# BB#1:                                 # %for.body.lr.ph
	leaq	(%rsp), %r13
	.align	16, 0x90
.LBB31_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	*16(%r15)
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	*24(%r15)
	movq	%rax, %r12
	decl	%ebp
	jne	.LBB31_2
.LBB31_3:                               # %for.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	NullXFORM, .Lfunc_end31-NullXFORM
	.cfi_endproc

	.align	16, 0x90
	.type	PrecalculatedXFORMGamutCheck,@function
PrecalculatedXFORMGamutCheck:           # @PrecalculatedXFORMGamutCheck
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp181:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp182:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp183:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp184:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp185:
	.cfi_def_cfa_offset 208
.Ltmp186:
	.cfi_offset %rbx, -56
.Ltmp187:
	.cfi_offset %r12, -48
.Ltmp188:
	.cfi_offset %r13, -40
.Ltmp189:
	.cfi_offset %r14, -32
.Ltmp190:
	.cfi_offset %r15, -24
.Ltmp191:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, %rdx
	movq	%rdi, %r12
	testl	%ebp, %ebp
	je	.LBB32_7
# BB#1:                                 # %if.end
	movq	112(%r12), %rax
	movq	120(%r12), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	112(%rsp), %r14
	leaq	48(%rsp), %r13
	.align	16, 0x90
.LBB32_2:                               # %do.body.3
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %ecx
	callq	*16(%r12)
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	120(%r12), %rax
	movq	16(%rax), %rdx
	movq	%r14, %rdi
	leaq	46(%rsp), %rsi
	callq	*24(%rsp)               # 8-byte Folded Reload
	cmpw	$0, 46(%rsp)
	je	.LBB32_5
# BB#3:                                 # %if.then.8
                                        #   in Loop: Header=BB32_2 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB32_8
# BB#4:                                 # %cmsGetAlarmCodes.exit
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$32, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB32_6
	.align	16, 0x90
.LBB32_5:                               # %if.else
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
.LBB32_6:                               # %if.end.11
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	*24(%r12)
	movq	%rax, %r15
	decl	%ebp
	movq	32(%rsp), %rdx          # 8-byte Reload
	jne	.LBB32_2
.LBB32_7:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_8:                               # %cond.false.i.i
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$108, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR, %ecx
	callq	__assert_fail
.Lfunc_end32:
	.size	PrecalculatedXFORMGamutCheck, .Lfunc_end32-PrecalculatedXFORMGamutCheck
	.cfi_endproc

	.align	16, 0x90
	.type	PrecalculatedXFORM,@function
PrecalculatedXFORM:                     # @PrecalculatedXFORM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp195:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp196:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp198:
	.cfi_def_cfa_offset 192
.Ltmp199:
	.cfi_offset %rbx, -56
.Ltmp200:
	.cfi_offset %r12, -48
.Ltmp201:
	.cfi_offset %r13, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r12
	testl	%ebp, %ebp
	je	.LBB33_3
# BB#1:                                 # %if.end
	movq	112(%r12), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	96(%rsp), %r13
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB33_2:                               # %do.body.2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	*16(%r12)
	movq	%rax, %r15
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%ebx, %ecx
	callq	*24(%r12)
	movq	%rax, %rdx
	decl	%ebp
	jne	.LBB33_2
.LBB33_3:                               # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	PrecalculatedXFORM, .Lfunc_end33-PrecalculatedXFORM
	.cfi_endproc

	.align	16, 0x90
	.type	CachedXFORMGamutCheck,@function
CachedXFORMGamutCheck:                  # @CachedXFORMGamutCheck
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp208:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp209:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp211:
	.cfi_def_cfa_offset 208
.Ltmp212:
	.cfi_offset %rbx, -56
.Ltmp213:
	.cfi_offset %r12, -48
.Ltmp214:
	.cfi_offset %r13, -40
.Ltmp215:
	.cfi_offset %r14, -32
.Ltmp216:
	.cfi_offset %r15, -24
.Ltmp217:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r15
	testl	%ecx, %ecx
	je	.LBB34_10
# BB#1:                                 # %if.end
	movq	112(%r15), %rax
	movq	120(%r15), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	16(%rax), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	80(%rsp), %r12
	leaq	112(%rsp), %r13
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	memset
	leaq	48(%r15), %rsi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	memcpy
	leaq	80(%r15), %rsi
	leaq	48(%rsp), %rdi
	movl	$32, %edx
	callq	memcpy
	.align	16, 0x90
.LBB34_2:                               # %do.body.15
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	*16(%r15)
	movq	%rax, %rbp
	movl	$32, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB34_3
# BB#4:                                 # %if.then.18
                                        #   in Loop: Header=BB34_2 Depth=1
	movq	120(%r15), %rax
	movq	16(%rax), %rdx
	movq	%r13, %rdi
	leaq	46(%rsp), %rsi
	callq	*16(%rsp)               # 8-byte Folded Reload
	cmpw	$0, 46(%rsp)
	je	.LBB34_7
# BB#5:                                 # %if.then.23
                                        #   in Loop: Header=BB34_2 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB34_11
# BB#6:                                 # %cmsGetAlarmCodes.exit
                                        #   in Loop: Header=BB34_2 Depth=1
	movl	$32, %edx
	leaq	48(%rsp), %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB34_8
	.align	16, 0x90
.LBB34_3:                               #   in Loop: Header=BB34_2 Depth=1
	movq	%r12, %r14
	movq	%r13, %r12
	jmp	.LBB34_9
	.align	16, 0x90
.LBB34_7:                               # %if.else
                                        #   in Loop: Header=BB34_2 Depth=1
	movq	%r13, %rdi
	leaq	48(%rsp), %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	*(%rsp)                 # 8-byte Folded Reload
.LBB34_8:                               # %if.end.26
                                        #   in Loop: Header=BB34_2 Depth=1
	movq	%r13, %r14
.LBB34_9:                               # %do.body.28
                                        #   in Loop: Header=BB34_2 Depth=1
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %r13
	movq	%r15, %rdi
	leaq	48(%rsp), %rsi
	movl	%ebx, %ecx
	callq	*24(%r15)
	movq	%rax, 32(%rsp)          # 8-byte Spill
	decl	28(%rsp)                # 4-byte Folded Spill
	movq	%r14, %r12
	jne	.LBB34_2
.LBB34_10:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_11:                              # %cond.false.i.i
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$108, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR, %ecx
	callq	__assert_fail
.Lfunc_end34:
	.size	CachedXFORMGamutCheck, .Lfunc_end34-CachedXFORMGamutCheck
	.cfi_endproc

	.align	16, 0x90
	.type	CachedXFORM3to1,@function
CachedXFORM3to1:                        # @CachedXFORM3to1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp219:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp220:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp221:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp222:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 176
.Ltmp225:
	.cfi_offset %rbx, -56
.Ltmp226:
	.cfi_offset %r12, -48
.Ltmp227:
	.cfi_offset %r13, -40
.Ltmp228:
	.cfi_offset %r14, -32
.Ltmp229:
	.cfi_offset %r15, -24
.Ltmp230:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r12
	movq	%rsi, %rbp
	testl	%r14d, %r14d
	je	.LBB35_7
# BB#1:                                 # %if.end
	movq	112(%rdi), %rax
	movq	16(%rax), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	48(%rsp), %r13
	leaq	80(%rsp), %rbx
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	memset
	leaq	48(%r15), %rsi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$80, %r15
	movq	%r15, %rsi
	leaq	16(%rsp), %r15
	movl	$32, %edx
	movq	%r15, %rdi
	callq	memcpy
	.align	16, 0x90
.LBB35_2:                               # %do.body.14
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rbx)
	movzbl	1(%rbp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rbx)
	movzbl	2(%rbp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rbx)
	movl	(%rbx), %eax
	cmpl	(%r13), %eax
	jne	.LBB35_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	4(%rbx), %eax
	cmpl	4(%r13), %eax
	jne	.LBB35_5
# BB#4:                                 #   in Loop: Header=BB35_2 Depth=1
	movq	%r13, %rax
	movq	%rbx, %r13
	jmp	.LBB35_6
	.align	16, 0x90
.LBB35_5:                               # %if.then.43
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%rbx, %rax
.LBB35_6:                               # %do.body.46
                                        #   in Loop: Header=BB35_2 Depth=1
	movq	%r13, %rbx
	movzwl	16(%rsp), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, (%r12)
	incq	%r12
	addq	$3, %rbp
	decl	%r14d
	movq	%rax, %r13
	jne	.LBB35_2
.LBB35_7:                               # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	CachedXFORM3to1, .Lfunc_end35-CachedXFORM3to1
	.cfi_endproc

	.align	16, 0x90
	.type	CachedXFORM4,@function
CachedXFORM4:                           # @CachedXFORM4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp232:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp233:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp234:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp235:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp236:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp237:
	.cfi_def_cfa_offset 208
.Ltmp238:
	.cfi_offset %rbx, -56
.Ltmp239:
	.cfi_offset %r12, -48
.Ltmp240:
	.cfi_offset %r13, -40
.Ltmp241:
	.cfi_offset %r14, -32
.Ltmp242:
	.cfi_offset %r15, -24
.Ltmp243:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbp
	testl	%ecx, %ecx
	je	.LBB36_6
# BB#1:                                 # %if.end
	movq	112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	80(%rsp), %r14
	leaq	112(%rsp), %r13
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	memset
	leaq	48(%rbp), %rsi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memcpy
	leaq	80(%rbp), %rsi
	leaq	48(%rsp), %r15
	movl	$32, %edx
	movq	%r15, %rdi
	callq	memcpy
	.align	16, 0x90
.LBB36_2:                               # %do.body.14
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	*16(%rbp)
	movl	(%r13), %ecx
	cmpl	(%r14), %ecx
	jne	.LBB36_4
# BB#3:                                 #   in Loop: Header=BB36_2 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	%r13, %r14
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r15, %rsi
	jmp	.LBB36_5
	.align	16, 0x90
.LBB36_4:                               # %if.then.19
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%r15, %rsi
	movq	%r13, %r12
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB36_5:                               # %do.body.22
                                        #   in Loop: Header=BB36_2 Depth=1
	movq	%r14, %r13
	movq	%rbp, %rdi
	movq	%rsi, %r15
	movl	%ebx, %ecx
	callq	*24(%rbp)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	decl	28(%rsp)                # 4-byte Folded Spill
	movq	%r12, %r14
	movq	32(%rsp), %r12          # 8-byte Reload
	jne	.LBB36_2
.LBB36_6:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	CachedXFORM4, .Lfunc_end36-CachedXFORM4
	.cfi_endproc

	.align	16, 0x90
	.type	CachedXFORM8,@function
CachedXFORM8:                           # @CachedXFORM8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp245:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp247:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp248:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp250:
	.cfi_def_cfa_offset 208
.Ltmp251:
	.cfi_offset %rbx, -56
.Ltmp252:
	.cfi_offset %r12, -48
.Ltmp253:
	.cfi_offset %r13, -40
.Ltmp254:
	.cfi_offset %r14, -32
.Ltmp255:
	.cfi_offset %r15, -24
.Ltmp256:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbp
	testl	%ecx, %ecx
	je	.LBB37_7
# BB#1:                                 # %if.end
	movq	112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	80(%rsp), %r14
	leaq	112(%rsp), %r13
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	memset
	leaq	48(%rbp), %rsi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memcpy
	leaq	80(%rbp), %rsi
	leaq	48(%rsp), %r15
	movl	$32, %edx
	movq	%r15, %rdi
	callq	memcpy
	.align	16, 0x90
.LBB37_2:                               # %do.body.14
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%ebx, %ecx
	callq	*16(%rbp)
	movl	(%r13), %ecx
	cmpl	(%r14), %ecx
	jne	.LBB37_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB37_2 Depth=1
	movl	4(%r13), %ecx
	cmpl	4(%r14), %ecx
	jne	.LBB37_5
# BB#4:                                 #   in Loop: Header=BB37_2 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	%r13, %r14
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r15, %rsi
	jmp	.LBB37_6
	.align	16, 0x90
.LBB37_5:                               # %if.then.22
                                        #   in Loop: Header=BB37_2 Depth=1
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%r15, %rsi
	movq	%r13, %r12
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB37_6:                               # %do.body.25
                                        #   in Loop: Header=BB37_2 Depth=1
	movq	%r14, %r13
	movq	%rbp, %rdi
	movq	%rsi, %r15
	movl	%ebx, %ecx
	callq	*24(%rbp)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	decl	28(%rsp)                # 4-byte Folded Spill
	movq	%r12, %r14
	movq	32(%rsp), %r12          # 8-byte Reload
	jne	.LBB37_2
.LBB37_7:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	CachedXFORM8, .Lfunc_end37-CachedXFORM8
	.cfi_endproc

	.align	16, 0x90
	.type	CachedXFORM,@function
CachedXFORM:                            # @CachedXFORM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp258:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp259:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp260:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp261:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp262:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp263:
	.cfi_def_cfa_offset 208
.Ltmp264:
	.cfi_offset %rbx, -56
.Ltmp265:
	.cfi_offset %r12, -48
.Ltmp266:
	.cfi_offset %r13, -40
.Ltmp267:
	.cfi_offset %r14, -32
.Ltmp268:
	.cfi_offset %r15, -24
.Ltmp269:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	testl	%ecx, %ecx
	je	.LBB38_6
# BB#1:                                 # %if.end
	movq	112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	80(%rsp), %r14
	leaq	112(%rsp), %r13
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	memset
	leaq	48(%rbp), %rsi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memcpy
	leaq	80(%rbp), %rsi
	leaq	48(%rsp), %r15
	movl	$32, %edx
	movq	%r15, %rdi
	callq	memcpy
	.align	16, 0x90
.LBB38_2:                               # %do.body.14
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	callq	*16(%rbp)
	movq	%rax, %rbx
	movl	$32, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB38_3
# BB#4:                                 # %if.then.17
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	%r12d, %ebx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%r15, %rsi
	movq	%r13, %r12
	movq	40(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB38_5
	.align	16, 0x90
.LBB38_3:                               #   in Loop: Header=BB38_2 Depth=1
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	%r12d, %ebx
	movq	%r14, %r12
	movq	%r13, %r14
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r15, %rsi
.LBB38_5:                               # %do.body.20
                                        #   in Loop: Header=BB38_2 Depth=1
	movq	%r14, %r13
	movq	%rbp, %rdi
	movq	%rsi, %r15
	movl	%ebx, %ecx
	callq	*24(%rbp)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	decl	28(%rsp)                # 4-byte Folded Spill
	movq	%r12, %r14
	movl	%ebx, %r12d
	movq	32(%rsp), %rbx          # 8-byte Reload
	jne	.LBB38_2
.LBB38_6:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	CachedXFORM, .Lfunc_end38-CachedXFORM
	.cfi_endproc

	.type	_cmsAdaptationStateChunk,@object # @_cmsAdaptationStateChunk
	.data
	.globl	_cmsAdaptationStateChunk
	.align	8
_cmsAdaptationStateChunk:
	.quad	4607182418800017408     # double 1
	.size	_cmsAdaptationStateChunk, 8

	.type	_cmsAllocAdaptationStateChunk.AdaptationStateChunk,@object # @_cmsAllocAdaptationStateChunk.AdaptationStateChunk
	.align	8
_cmsAllocAdaptationStateChunk.AdaptationStateChunk:
	.quad	4607182418800017408     # double 1
	.size	_cmsAllocAdaptationStateChunk.AdaptationStateChunk, 8

	.type	_cmsAlarmCodesChunk,@object # @_cmsAlarmCodesChunk
	.globl	_cmsAlarmCodesChunk
	.align	2
_cmsAlarmCodesChunk:
	.short	32512                   # 0x7f00
	.short	32512                   # 0x7f00
	.short	32512                   # 0x7f00
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.size	_cmsAlarmCodesChunk, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(ContextAlarmCodes != ((void*)0))"
	.size	.L.str, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsxform.c"
	.size	.L.str.1, 23

	.type	.L__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR,@object # @__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR
.L__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR:
	.asciz	"void cmsSetAlarmCodesTHR(cmsContext, const cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsSetAlarmCodesTHR, 62

	.type	.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR,@object # @__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR
.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR:
	.asciz	"void cmsGetAlarmCodesTHR(cmsContext, cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsGetAlarmCodesTHR, 56

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(NewAlarm != ((void*)0))"
	.size	.L.str.2, 25

	.type	.L__PRETTY_FUNCTION__.cmsSetAlarmCodes,@object # @__PRETTY_FUNCTION__.cmsSetAlarmCodes
.L__PRETTY_FUNCTION__.cmsSetAlarmCodes:
	.asciz	"void cmsSetAlarmCodes(const cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsSetAlarmCodes, 47

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(OldAlarm != ((void*)0))"
	.size	.L.str.3, 25

	.type	.L__PRETTY_FUNCTION__.cmsGetAlarmCodes,@object # @__PRETTY_FUNCTION__.cmsGetAlarmCodes
.L__PRETTY_FUNCTION__.cmsGetAlarmCodes:
	.asciz	"void cmsGetAlarmCodes(cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsGetAlarmCodes, 41

	.type	_cmsAllocAlarmCodesChunk.AlarmCodesChunk,@object # @_cmsAllocAlarmCodesChunk.AlarmCodesChunk
	.data
	.align	2
_cmsAllocAlarmCodesChunk.AlarmCodesChunk:
	.short	32512                   # 0x7f00
	.short	32512                   # 0x7f00
	.short	32512                   # 0x7f00
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.size	_cmsAllocAlarmCodesChunk.AlarmCodesChunk, 32

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"(p != ((void*)0))"
	.size	.L.str.4, 18

	.type	.L__PRETTY_FUNCTION__.cmsDeleteTransform,@object # @__PRETTY_FUNCTION__.cmsDeleteTransform
.L__PRETTY_FUNCTION__.cmsDeleteTransform:
	.asciz	"void cmsDeleteTransform(cmsHTRANSFORM)"
	.size	.L__PRETTY_FUNCTION__.cmsDeleteTransform, 39

	.type	_cmsTransformPluginChunk,@object # @_cmsTransformPluginChunk
	.bss
	.globl	_cmsTransformPluginChunk
	.align	8
_cmsTransformPluginChunk:
	.zero	8
	.size	_cmsTransformPluginChunk, 8

	.type	_cmsAllocTransformPluginChunk.TransformPluginChunkType,@object # @_cmsAllocTransformPluginChunk.TransformPluginChunkType
	.local	_cmsAllocTransformPluginChunk.TransformPluginChunkType
	.comm	_cmsAllocTransformPluginChunk.TransformPluginChunkType,8,8
	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"(CMMcargo != ((void*)0))"
	.size	.L.str.5, 25

	.type	.L__PRETTY_FUNCTION__._cmsSetTransformUserData,@object # @__PRETTY_FUNCTION__._cmsSetTransformUserData
.L__PRETTY_FUNCTION__._cmsSetTransformUserData:
	.asciz	"void _cmsSetTransformUserData(struct _cmstransform_struct *, void *, _cmsFreeUserDataFn)"
	.size	.L__PRETTY_FUNCTION__._cmsSetTransformUserData, 89

	.type	.L__PRETTY_FUNCTION__._cmsGetTransformUserData,@object # @__PRETTY_FUNCTION__._cmsGetTransformUserData
.L__PRETTY_FUNCTION__._cmsGetTransformUserData:
	.asciz	"void *_cmsGetTransformUserData(struct _cmstransform_struct *)"
	.size	.L__PRETTY_FUNCTION__._cmsGetTransformUserData, 62

	.type	.L__PRETTY_FUNCTION__._cmsGetTransformFormatters16,@object # @__PRETTY_FUNCTION__._cmsGetTransformFormatters16
.L__PRETTY_FUNCTION__._cmsGetTransformFormatters16:
	.asciz	"void _cmsGetTransformFormatters16(struct _cmstransform_struct *, cmsFormatter16 *, cmsFormatter16 *)"
	.size	.L__PRETTY_FUNCTION__._cmsGetTransformFormatters16, 101

	.type	.L__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat,@object # @__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat
.L__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat:
	.asciz	"void _cmsGetTransformFormattersFloat(struct _cmstransform_struct *, cmsFormatterFloat *, cmsFormatterFloat *)"
	.size	.L__PRETTY_FUNCTION__._cmsGetTransformFormattersFloat, 110

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"NULL input profiles on transform"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Wrong input color space on transform"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Wrong output color space on transform"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Couldn't link the profiles"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Channel count doesn't match. Profile is corrupted"
	.size	.L.str.10, 50

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Wrong number of profiles. 1..255 expected, %d found."
	.size	.L.str.11, 53

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cmsChangeBuffersFormat works only on transforms created originally with at least 16 bits of precision"
	.size	.L.str.12, 102

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unsupported raster format"
	.size	.L.str.13, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
