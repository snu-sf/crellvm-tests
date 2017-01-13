	.text
	.file	"cmsgamma.bc"
	.globl	_cmsAllocCurvesPluginChunk
	.align	16, 0x90
	.type	_cmsAllocCurvesPluginChunk,@function
_cmsAllocCurvesPluginChunk:             # @_cmsAllocCurvesPluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB0_15
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB0_12
# BB#2:                                 # %if.then
	movq	$0, (%rsp)
	movq	64(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_16
# BB#3:                                 # %cond.end.i
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	movq	8(%r14), %rdi
	je	.LBB0_11
# BB#4:                                 # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$184, %edx
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB0_14
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$0, 176(%rax)
	testq	%r12, %r12
	je	.LBB0_8
# BB#7:                                 # %if.then.4.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, 176(%r12)
.LBB0_8:                                # %if.end.6.i
                                        #   in Loop: Header=BB0_5 Depth=1
	testq	%r15, %r15
	jne	.LBB0_10
# BB#9:                                 # %if.then.9.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, (%rsp)
	movq	%rax, %r15
.LBB0_10:                               # %for.inc.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	176(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB0_5
.LBB0_11:                               # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB0_13
.LBB0_12:                               # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocCurvesPluginChunk.CurvesPluginChunk, %esi
.LBB0_13:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 64(%r14)
.LBB0_14:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB0_15:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$108, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk, %ecx
	callq	__assert_fail
.LBB0_16:                               # %cond.false.i
	movl	$.L.str.15, %edi
	movl	$.L.str.1, %esi
	movl	$78, %edx
	movl	$.L__PRETTY_FUNCTION__.DupPluginCurvesList, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_cmsAllocCurvesPluginChunk, .Lfunc_end0-_cmsAllocCurvesPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterParametricCurvesPlugin
	.align	16, 0x90
	.type	_cmsRegisterParametricCurvesPlugin,@function
_cmsRegisterParametricCurvesPlugin:     # @_cmsRegisterParametricCurvesPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$6, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB1_1
# BB#2:                                 # %if.end
	movl	$184, %esi
	movq	%rbx, %rdi
	callq	_cmsPluginMalloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_5
# BB#3:                                 # %if.end.4
	movq	192(%r15), %rax
	movq	%rax, 168(%rbx)
	movl	24(%r15), %eax
	cmpl	$20, %eax
	movl	$20, %ecx
	cmovlel	%eax, %ecx
	movl	%ecx, (%rbx)
	leaq	4(%rbx), %rdi
	leaq	28(%r15), %rsi
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	callq	memmove
	movq	%rbx, %rdi
	addq	$84, %rdi
	addq	$108, %r15
	movslq	(%rbx), %rdx
	shlq	$2, %rdx
	movq	%r15, %rsi
	callq	memmove
	movq	(%r14), %rax
	movq	%rax, 176(%rbx)
	movq	%rbx, (%r14)
	jmp	.LBB1_4
.LBB1_1:                                # %if.then
	movq	$0, (%r14)
.LBB1_4:                                # %cleanup
	movl	$1, %eax
.LBB1_5:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	_cmsRegisterParametricCurvesPlugin, .Lfunc_end1-_cmsRegisterParametricCurvesPlugin
	.cfi_endproc

	.globl	cmsGetToneCurveEstimatedTableEntries
	.align	16, 0x90
	.type	cmsGetToneCurveEstimatedTableEntries,@function
cmsGetToneCurveEstimatedTableEntries:   # @cmsGetToneCurveEstimatedTableEntries
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB2_2
# BB#1:                                 # %cond.end
	movl	40(%rdi), %eax
	popq	%rdx
	retq
.LBB2_2:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$606, %edx              # imm = 0x25E
	movl	$.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	cmsGetToneCurveEstimatedTableEntries, .Lfunc_end2-cmsGetToneCurveEstimatedTableEntries
	.cfi_endproc

	.globl	cmsGetToneCurveEstimatedTable
	.align	16, 0x90
	.type	cmsGetToneCurveEstimatedTable,@function
cmsGetToneCurveEstimatedTable:          # @cmsGetToneCurveEstimatedTable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB3_2
# BB#1:                                 # %cond.end
	movq	48(%rdi), %rax
	popq	%rdx
	retq
.LBB3_2:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$612, %edx              # imm = 0x264
	movl	$.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	cmsGetToneCurveEstimatedTable, .Lfunc_end3-cmsGetToneCurveEstimatedTable
	.cfi_endproc

	.globl	cmsBuildTabulatedToneCurve16
	.align	16, 0x90
	.type	cmsBuildTabulatedToneCurve16,@function
cmsBuildTabulatedToneCurve16:           # @cmsBuildTabulatedToneCurve16
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %r8
	jmp	AllocateToneCurveStruct # TAILCALL
.Lfunc_end4:
	.size	cmsBuildTabulatedToneCurve16, .Lfunc_end4-cmsBuildTabulatedToneCurve16
	.cfi_endproc

	.align	16, 0x90
	.type	AllocateToneCurveStruct,@function
AllocateToneCurveStruct:                # @AllocateToneCurveStruct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 80
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	movl	%esi, %r12d
	movq	%rdi, %r14
	cmpl	$65531, %r12d           # imm = 0xFFFB
	jb	.LBB5_3
# BB#1:                                 # %if.then
	xorl	%r13d, %r13d
	movl	$2, %esi
	movl	$.L.str.16, %edx
	jmp	.LBB5_2
.LBB5_3:                                # %if.end
	testl	%r12d, %r12d
	jg	.LBB5_6
# BB#4:                                 # %if.end
	testl	%ebp, %ebp
	jg	.LBB5_6
# BB#5:                                 # %if.then.4
	xorl	%r13d, %r13d
	movl	$2, %esi
	movl	$.L.str.17, %edx
.LBB5_2:                                # %cleanup.139
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
.LBB5_67:                               # %cleanup.139
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_6:                                # %if.end.5
	movl	$56, %esi
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r15
	movq	%r15, (%rsp)            # 8-byte Spill
	xorl	%r13d, %r13d
	testq	%r15, %r15
	je	.LBB5_67
# BB#7:                                 # %if.end.7
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#9:                                 # %if.else
	movl	$112, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 16(%r15)
	testq	%rax, %rax
	je	.LBB5_60
# BB#10:                                # %if.end.16
	movl	$8, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 32(%r15)
	testq	%rax, %rax
	jne	.LBB5_11
	jmp	.LBB5_60
.LBB5_8:                                # %if.then.9
	movq	$0, 16(%r15)
	movq	$0, 32(%r15)
.LBB5_11:                               # %if.end.23
	movl	%ebp, 8(%r15)
	testl	%r12d, %r12d
	jle	.LBB5_12
# BB#13:                                # %if.else.27
	movl	$2, %edx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	_cmsCalloc
	movq	%rax, 48(%r15)
	testq	%rax, %rax
	je	.LBB5_60
# BB#14:                                # %if.end.34
	movl	%r12d, 40(%r15)
	testq	%rbx, %rbx
	je	.LBB5_31
# BB#15:                                # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r12), %edx
	leaq	1(%rdx), %r11
	xorl	%edi, %edi
	movq	%r11, %rsi
	andq	%r8, %rsi
	je	.LBB5_24
# BB#16:                                # %vector.memcheck
	leaq	(%rbx,%rdx,2), %rcx
	xorl	%edi, %edi
	cmpq	%rcx, %rax
	ja	.LBB5_18
# BB#17:                                # %vector.memcheck
	movq	%rbx, %rcx
	leaq	(%rax,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	movq	%rcx, %rbx
	jbe	.LBB5_24
.LBB5_18:                               # %vector.body.preheader
	movq	%rbx, %r10
	leaq	1(%rdx), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rbx
	shrq	$4, %rbx
	xorl	%r9d, %r9d
	btq	$4, %rdi
	jb	.LBB5_20
# BB#19:                                # %vector.body.prol
	movups	(%r10), %xmm0
	movups	16(%r10), %xmm1
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movl	$16, %r9d
.LBB5_20:                               # %vector.body.preheader.split
	testq	%rbx, %rbx
	je	.LBB5_23
# BB#21:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%r9, %rdx
	leaq	48(%r10,%r9,2), %rdi
	leaq	48(%rax,%r9,2), %rbx
.LBB5_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rbx)
	movups	%xmm1, -32(%rbx)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rbx)
	movups	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$64, %rbx
	addq	$-32, %rdx
	jne	.LBB5_22
.LBB5_23:
	movq	%rsi, %rdi
	movq	%r10, %rbx
.LBB5_24:                               # %middle.block
	movq	%rbx, %r8
	cmpq	%rdi, %r11
	je	.LBB5_31
# BB#25:                                # %for.body.preheader140
	leal	1(%r12), %ecx
	movl	%edi, %esi
	orl	$1, %esi
	movl	%ecx, %ebx
	subl	%esi, %ebx
	movl	%r12d, %edx
	subl	%esi, %edx
	testb	$3, %bl
	je	.LBB5_28
# BB#26:                                # %for.body.prol.preheader
	leal	1(%rdi), %esi
	subl	%esi, %ecx
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB5_27:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	(%r8,%rdi,2), %si
	movw	%si, (%rax,%rdi,2)
	incq	%rdi
	incl	%ecx
	jne	.LBB5_27
.LBB5_28:                               # %for.body.preheader140.split
	cmpl	$3, %edx
	jb	.LBB5_31
# BB#29:                                # %for.body.preheader140.split.split
	movl	%r12d, %ecx
	subl	%edi, %ecx
	leaq	6(%rax,%rdi,2), %rdx
	leaq	6(%r8,%rdi,2), %rsi
.LBB5_30:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rsi), %di
	movw	%di, -6(%rdx)
	movw	-4(%rsi), %di
	movw	%di, -4(%rdx)
	movw	-2(%rsi), %di
	movw	%di, -2(%rdx)
	movw	(%rsi), %di
	movw	%di, (%rdx)
	addq	$8, %rdx
	addq	$8, %rsi
	addl	$-4, %ecx
	jne	.LBB5_30
	jmp	.LBB5_31
.LBB5_12:                               # %if.end.34.thread
	movq	$0, 48(%r15)
	movl	%r12d, 40(%r15)
	xorl	%eax, %eax
.LBB5_31:                               # %if.end.44
	testl	%ebp, %ebp
	jle	.LBB5_59
# BB#32:                                # %if.end.44
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	je	.LBB5_59
# BB#33:                                # %if.then.48
	movl	$8, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 24(%r15)
	testq	%rax, %rax
	je	.LBB5_60
# BB#34:                                # %for.body.56.lr.ph
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_35:                               # %for.body.56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_42 Depth 2
                                        #       Child Loop BB5_45 Depth 3
                                        #     Child Loop BB5_49 Depth 2
                                        #       Child Loop BB5_51 Depth 3
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%r14, %r12
	imulq	$112, %r13, %rbx
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx), %rbp
	leaq	8(%rax,%rbx), %r14
	cmpl	$0, 8(%rax,%rbx)
	jne	.LBB5_37
# BB#36:                                # %if.then.60
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	96(%rax,%rbx), %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r12, %rdi
	callq	_cmsComputeInterpParams
	movq	24(%r15), %rcx
	movq	%rax, (%rcx,%r13,8)
.LBB5_37:                               # %if.end.67
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	16(%r15), %rdi
	addq	%rbx, %rdi
	movl	$112, %edx
	movq	%rbp, %rsi
	callq	memmove
	movq	%r15, %rbp
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jne	.LBB5_40
# BB#38:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	104(%rax,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_40
# BB#39:                                # %if.then.82
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	96(%rax,%rbx), %edx
	shll	$2, %edx
	movq	%r12, %rdi
	callq	_cmsDupMem
	movq	16(%rbp), %rcx
	movq	%rax, 104(%rcx,%rbx)
	movl	(%r14), %r15d
	jmp	.LBB5_41
	.align	16, 0x90
.LBB5_40:                               # %if.else.95
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	16(%rbp), %rax
	movq	$0, 104(%rax,%rbx)
.LBB5_41:                               # %if.end.100
                                        #   in Loop: Header=BB5_35 Depth=1
	movl	$6, %esi
	movq	%r12, %r14
	movq	%r14, %rdi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rbp
	jmp	.LBB5_42
	.align	16, 0x90
.LBB5_47:                               # %for.inc.i
                                        #   in Loop: Header=BB5_42 Depth=2
	movq	176(%rbp), %rbp
.LBB5_42:                               # %if.end.100
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_45 Depth 3
	testq	%rbp, %rbp
	movl	$DefaultCurves, %ebx
	je	.LBB5_49
# BB#43:                                # %for.body.i
                                        #   in Loop: Header=BB5_42 Depth=2
	movslq	(%rbp), %rbx
	testq	%rbx, %rbx
	jle	.LBB5_47
# BB#44:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB5_42 Depth=2
	movl	%r15d, %edi
	callq	abs
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_45:                               # %for.body.i.i
                                        #   Parent Loop BB5_35 Depth=1
                                        #     Parent Loop BB5_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	4(%rbp,%rcx,4), %eax
	je	.LBB5_48
# BB#46:                                # %for.inc.i.i
                                        #   in Loop: Header=BB5_45 Depth=3
	incq	%rcx
	cmpq	%rbx, %rcx
	jl	.LBB5_45
	jmp	.LBB5_47
	.align	16, 0x90
.LBB5_48:                               # %IsInSet.exit.i
                                        #   in Loop: Header=BB5_42 Depth=2
	cmpl	$-1, %ecx
	je	.LBB5_47
	jmp	.LBB5_56
	.align	16, 0x90
.LBB5_49:                               # %for.body.8.i
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_51 Depth 3
	movslq	(%rbx), %rbp
	testq	%rbp, %rbp
	jle	.LBB5_53
# BB#50:                                # %for.body.lr.ph.i.21.i
                                        #   in Loop: Header=BB5_49 Depth=2
	movl	%r15d, %edi
	callq	abs
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_51:                               # %for.body.i.25.i
                                        #   Parent Loop BB5_35 Depth=1
                                        #     Parent Loop BB5_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	4(%rbx,%rcx,4), %eax
	je	.LBB5_54
# BB#52:                                # %for.inc.i.28.i
                                        #   in Loop: Header=BB5_51 Depth=3
	incq	%rcx
	cmpq	%rbp, %rcx
	jl	.LBB5_51
	jmp	.LBB5_53
	.align	16, 0x90
.LBB5_54:                               # %IsInSet.exit31.i
                                        #   in Loop: Header=BB5_49 Depth=2
	cmpl	$-1, %ecx
	jne	.LBB5_55
.LBB5_53:                               # %for.inc.16.i
                                        #   in Loop: Header=BB5_49 Depth=2
	movq	176(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB5_49
	jmp	.LBB5_57
.LBB5_55:                               #   in Loop: Header=BB5_35 Depth=1
	movq	%rbx, %rbp
.LBB5_56:                               # %if.then.107
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	168(%rbp), %rax
	movq	32(%rcx), %rcx
	movq	%rax, (%rcx,%r13,8)
.LBB5_57:                               # %for.inc.112
                                        #   in Loop: Header=BB5_35 Depth=1
	incq	%r13
	movl	12(%rsp), %ebp          # 4-byte Reload
	cmpl	%ebp, %r13d
	movq	(%rsp), %r15            # 8-byte Reload
	jne	.LBB5_35
# BB#58:                                # %if.end.115.loopexit
	movl	40(%r15), %r12d
	movq	48(%r15), %rax
.LBB5_59:                               # %if.end.115
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%rax, %r8
	callq	_cmsComputeInterpParams
	movq	%rax, (%r15)
	testq	%rax, %rax
	movq	%r15, %r13
	jne	.LBB5_67
.LBB5_60:                               # %Error
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB5_62
# BB#61:                                # %if.then.126
	movq	%r14, %rdi
	callq	_cmsFree
.LBB5_62:                               # %if.end.128
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB5_64
# BB#63:                                # %if.then.131
	movq	%r14, %rdi
	callq	_cmsFree
.LBB5_64:                               # %if.end.133
	movq	48(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB5_66
# BB#65:                                # %if.then.136
	movq	%r14, %rdi
	callq	_cmsFree
.LBB5_66:                               # %if.end.138
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	xorl	%r13d, %r13d
	jmp	.LBB5_67
.Lfunc_end5:
	.size	AllocateToneCurveStruct, .Lfunc_end5-AllocateToneCurveStruct
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4616189618054758400    # double -1
.LCPI6_1:
	.quad	4562254508917369340     # double 0.001
.LCPI6_2:
	.quad	4679239875398991872     # double 65535
.LCPI6_3:
	.quad	4602678819172646912     # double 0.5
.LCPI6_4:
	.quad	-4548635898522107904    # double -32767
.LCPI6_5:
	.quad	4771563805199040512     # double 103079215104
.LCPI6_6:
	.quad	0                       # double 0
	.text
	.globl	cmsBuildSegmentedToneCurve
	.align	16, 0x90
	.type	cmsBuildSegmentedToneCurve,@function
cmsBuildSegmentedToneCurve:             # @cmsBuildSegmentedToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 64
.Ltmp36:
	.cfi_offset %rbx, -48
.Ltmp37:
	.cfi_offset %r12, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB6_13
# BB#1:                                 # %cond.end
	movl	$4096, %ebp             # imm = 0x1000
	cmpl	$1, %r15d
	jne	.LBB6_4
# BB#2:                                 # %land.lhs.true
	cmpl	$1, 8(%rbx)
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	addsd	.LCPI6_0(%rip), %xmm0
	callq	fabs
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$2, %eax
	movl	$4096, %ebp             # imm = 0x1000
	cmoval	%eax, %ebp
.LBB6_4:                                # %if.end
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movq	%rbx, %rcx
	callq	AllocateToneCurveStruct
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB6_12
# BB#5:                                 # %for.cond.preheader
	leal	-1(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	%ebp, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	EvalSegmentedFn
	mulsd	.LCPI6_2(%rip), %xmm0
	addsd	.LCPI6_3(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB6_7
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB6_6 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI6_2(%rip), %xmm0
	jae	.LBB6_10
# BB#9:                                 # %if.end.3.i
                                        #   in Loop: Header=BB6_6 Depth=1
	addsd	.LCPI6_4(%rip), %xmm0
	addsd	.LCPI6_5(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB6_10
	.align	16, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
.LBB6_10:                               # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	48(%rbx), %rcx
	movw	%ax, (%rcx,%rbp,2)
	incq	%rbp
	cmpq	%r14, %rbp
	jl	.LBB6_6
# BB#11:
	movq	%rbx, %r12
.LBB6_12:                               # %cleanup
	movq	%r12, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_13:                               # %cond.false
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$641, %edx              # imm = 0x281
	movl	$.L__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	cmsBuildSegmentedToneCurve, .Lfunc_end6-cmsBuildSegmentedToneCurve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	-4287162073407815680    # double -9.9999997781963083E+21
	.text
	.align	16, 0x90
	.type	EvalSegmentedFn,@function
EvalSegmentedFn:                        # @EvalSegmentedFn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 16
	movl	8(%rdi), %eax
	decl	%eax
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	js	.LBB7_7
# BB#1:                                 # %for.body.lr.ph
	movq	16(%rdi), %rdx
	movslq	%eax, %rcx
	movslq	%ecx, %rax
	imulq	$112, %rax, %rax
	leaq	4(%rdx,%rax), %rax
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm2, %xmm3
	ucomisd	%xmm3, %xmm0
	jbe	.LBB7_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=1
	movss	(%rax), %xmm4           # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm5
	ucomisd	%xmm0, %xmm5
	jae	.LBB7_5
.LBB7_4:                                # %for.cond.backedge
                                        #   in Loop: Header=BB7_2 Depth=1
	decq	%rcx
	addq	$-112, %rax
	testl	%ecx, %ecx
	jns	.LBB7_2
	jmp	.LBB7_7
.LBB7_5:                                # %if.then
	imulq	$112, %rcx, %rsi
	movl	8(%rdx,%rsi), %eax
	testl	%eax, %eax
	je	.LBB7_6
# BB#8:                                 # %if.else
	movq	32(%rdi), %rdi
	movq	(%rdi,%rcx,8), %rcx
	leaq	16(%rdx,%rsi), %rsi
	movl	%eax, %edi
	popq	%rax
	jmpq	*%rcx                   # TAILCALL
.LBB7_6:                                # %if.then.14
	subsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	subss	%xmm2, %xmm4
	divss	%xmm4, %xmm0
	movss	%xmm0, 4(%rsp)
	movq	104(%rdx,%rsi), %rax
	movq	24(%rdi), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rax, 120(%rsi)
	movq	(%rdx,%rcx,8), %rdx
	leaq	4(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	*128(%rdx)
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
.LBB7_7:                                # %cleanup
	movapd	%xmm1, %xmm0
	popq	%rax
	retq
.Lfunc_end7:
	.size	EvalSegmentedFn, .Lfunc_end7-EvalSegmentedFn
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4661223415305207808     # double 4095
.LCPI8_2:
	.quad	4679239875398991872     # double 65535
.LCPI8_3:
	.quad	4602678819172646912     # double 0.5
.LCPI8_4:
	.quad	-4548635898522107904    # double -32767
.LCPI8_5:
	.quad	4771563805199040512     # double 103079215104
.LCPI8_6:
	.quad	0                       # double 0
	.text
	.globl	cmsBuildTabulatedToneCurveFloat
	.align	16, 0x90
	.type	cmsBuildTabulatedToneCurveFloat,@function
cmsBuildTabulatedToneCurveFloat:        # @cmsBuildTabulatedToneCurveFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
	subq	$336, %rsp              # imm = 0x150
.Ltmp45:
	.cfi_def_cfa_offset 368
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movl	$-469268872, (%rsp)     # imm = 0xFFFFFFFFE4078678
	movl	$0, 4(%rsp)
	movl	$6, 8(%rsp)
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 112(%rsp)
	movl	$1065353216, 116(%rsp)  # imm = 0x3F800000
	movl	$0, 120(%rsp)
	movl	%esi, 208(%rsp)
	movq	%rdx, 216(%rsp)
	movl	$1065353216, 224(%rsp)  # imm = 0x3F800000
	movl	$1678214776, 228(%rsp)  # imm = 0x64078678
	movl	$6, 232(%rsp)
	movapd	%xmm0, 240(%rsp)
	movq	$0, 256(%rsp)
	decl	%esi
	movss	(%rdx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 264(%rsp)
	movq	$0, 272(%rsp)
	xorl	%r14d, %r14d
	leaq	(%rsp), %rcx
	movl	$4096, %esi             # imm = 0x1000
	movl	$3, %edx
	xorl	%r8d, %r8d
	callq	AllocateToneCurveStruct
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB8_8
# BB#1:                                 # %for.cond.preheader.i
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	divsd	.LCPI8_1(%rip), %xmm0
	movq	%r15, %rdi
	callq	EvalSegmentedFn
	mulsd	.LCPI8_2(%rip), %xmm0
	addsd	.LCPI8_3(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB8_3
# BB#4:                                 # %if.end.i.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI8_2(%rip), %xmm0
	jae	.LBB8_6
# BB#5:                                 # %if.end.3.i.i
                                        #   in Loop: Header=BB8_2 Depth=1
	addsd	.LCPI8_4(%rip), %xmm0
	addsd	.LCPI8_5(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB8_6
	.align	16, 0x90
.LBB8_3:                                #   in Loop: Header=BB8_2 Depth=1
	xorl	%eax, %eax
.LBB8_6:                                # %_cmsQuickSaturateWord.exit.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	48(%r15), %rcx
	movw	%ax, (%rcx,%rbx,2)
	incq	%rbx
	cmpq	$4096, %rbx             # imm = 0x1000
	jne	.LBB8_2
# BB#7:
	movq	%r15, %r14
.LBB8_8:                                # %cmsBuildSegmentedToneCurve.exit
	movq	%r14, %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	cmsBuildTabulatedToneCurveFloat, .Lfunc_end8-cmsBuildTabulatedToneCurveFloat
	.cfi_endproc

	.globl	cmsBuildParametricToneCurve
	.align	16, 0x90
	.type	cmsBuildParametricToneCurve,@function
cmsBuildParametricToneCurve:            # @cmsBuildParametricToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 176
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	%esi, %r12d
	movq	%rdi, %r15
	movl	$6, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %r14
	movl	$DefaultCurves, %r13d
	testq	%r14, %r14
	je	.LBB9_8
# BB#1:
	movl	$DefaultCurves, %r13d
	.align	16, 0x90
.LBB9_2:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
	movslq	(%r14), %rbx
	testq	%rbx, %rbx
	jle	.LBB9_7
# BB#3:                                 # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	%r12d, %edi
	callq	abs
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB9_4:                                # %for.body.i.i
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	4(%r14,%rbp,4), %eax
	je	.LBB9_6
# BB#5:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB9_4 Depth=2
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB9_4
	jmp	.LBB9_7
	.align	16, 0x90
.LBB9_6:                                # %IsInSet.exit.i
                                        #   in Loop: Header=BB9_2 Depth=1
	cmpl	$-1, %ebp
	jne	.LBB9_15
.LBB9_7:                                # %for.inc.i
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	176(%r14), %r14
	testq	%r14, %r14
	jne	.LBB9_2
	.align	16, 0x90
.LBB9_8:                                # %for.body.8.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
	movslq	(%r13), %rbx
	testq	%rbx, %rbx
	jle	.LBB9_12
# BB#9:                                 # %for.body.lr.ph.i.21.i
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	%r12d, %edi
	callq	abs
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB9_10:                               # %for.body.i.25.i
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	4(%r13,%rbp,4), %eax
	je	.LBB9_13
# BB#11:                                # %for.inc.i.28.i
                                        #   in Loop: Header=BB9_10 Depth=2
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB9_10
	jmp	.LBB9_12
	.align	16, 0x90
.LBB9_13:                               # %IsInSet.exit31.i
                                        #   in Loop: Header=BB9_8 Depth=1
	cmpl	$-1, %ebp
	jne	.LBB9_14
.LBB9_12:                               # %for.inc.16.i
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	176(%r13), %r13
	xorl	%ebp, %ebp
	testq	%r13, %r13
	movl	$0, %r14d
	jne	.LBB9_8
	jmp	.LBB9_15
.LBB9_14:
	movq	%r13, %r14
.LBB9_15:                               # %GetParametricCurveByType.exit
	movq	(%rsp), %rbx            # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB9_20
# BB#16:                                # %cond.end
	testq	%r14, %r14
	je	.LBB9_17
# BB#18:                                # %if.end
	leaq	8(%rsp), %r13
	xorl	%esi, %esi
	movl	$112, %edx
	movq	%r13, %rdi
	callq	memset
	movl	$-469268872, 8(%rsp)    # imm = 0xFFFFFFFFE4078678
	movl	$1678214776, 12(%rsp)   # imm = 0x64078678
	movl	%r12d, 16(%rsp)
	shlq	$32, %rbp
	sarq	$30, %rbp
	movl	84(%r14,%rbp), %edx
	shll	$3, %edx
	leaq	24(%rsp), %rdi
	movq	%rbx, %rsi
	callq	memmove
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	cmsBuildSegmentedToneCurve
	movq	%rax, %rbx
	jmp	.LBB9_19
.LBB9_17:                               # %if.then
	xorl	%ebx, %ebx
	movl	$8, %esi
	movl	$.L.str.5, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r12d, %ecx
	callq	cmsSignalError
.LBB9_19:                               # %cleanup
	movq	%rbx, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_20:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$719, %edx              # imm = 0x2CF
	movl	$.L__PRETTY_FUNCTION__.cmsBuildParametricToneCurve, %ecx
	callq	__assert_fail
.Lfunc_end9:
	.size	cmsBuildParametricToneCurve, .Lfunc_end9-cmsBuildParametricToneCurve
	.cfi_endproc

	.globl	cmsBuildGamma
	.align	16, 0x90
	.type	cmsBuildGamma,@function
cmsBuildGamma:                          # @cmsBuildGamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)
	leaq	(%rsp), %rdx
	movl	$1, %esi
	callq	cmsBuildParametricToneCurve
	popq	%rdx
	retq
.Lfunc_end10:
	.size	cmsBuildGamma, .Lfunc_end10-cmsBuildGamma
	.cfi_endproc

	.globl	cmsFreeToneCurve
	.align	16, 0x90
	.type	cmsFreeToneCurve,@function
cmsFreeToneCurve:                       # @cmsFreeToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 32
.Ltmp66:
	.cfi_offset %rbx, -32
.Ltmp67:
	.cfi_offset %r14, -24
.Ltmp68:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB11_17
# BB#1:                                 # %if.end
	movq	(%r15), %rdi
	movq	(%rdi), %r14
	callq	_cmsFreeInterpParams
	movq	48(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB11_3
# BB#2:                                 # %if.then.3
	movq	%r14, %rdi
	callq	_cmsFree
.LBB11_3:                               # %if.end.5
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB11_14
# BB#4:                                 # %for.cond.preheader
	cmpl	$0, 8(%r15)
	je	.LBB11_13
# BB#5:
	xorl	%ebx, %ebx
	jmp	.LBB11_6
	.align	16, 0x90
.LBB11_11:                              # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB11_6 Depth=1
	movq	16(%r15), %rsi
.LBB11_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	imulq	$112, %rbx, %rax
	movq	104(%rsi,%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB11_6 Depth=1
	movq	%r14, %rdi
	callq	_cmsFree
.LBB11_8:                               # %if.end.16
                                        #   in Loop: Header=BB11_6 Depth=1
	movq	24(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB11_10
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB11_6 Depth=1
	callq	_cmsFreeInterpParams
.LBB11_10:                              # %for.inc
                                        #   in Loop: Header=BB11_6 Depth=1
	incl	%ebx
	cmpl	8(%r15), %ebx
	jb	.LBB11_11
# BB#12:                                # %for.cond.for.end_crit_edge
	movq	16(%r15), %rsi
.LBB11_13:                              # %for.end
	movq	%r14, %rdi
	callq	_cmsFree
	movq	24(%r15), %rsi
	movq	%r14, %rdi
	callq	_cmsFree
.LBB11_14:                              # %if.end.27
	movq	32(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB11_16
# BB#15:                                # %if.then.29
	movq	%r14, %rdi
	callq	_cmsFree
.LBB11_16:                              # %if.then.33
	movq	%r14, %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_cmsFree                # TAILCALL
.LBB11_17:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	cmsFreeToneCurve, .Lfunc_end11-cmsFreeToneCurve
	.cfi_endproc

	.globl	cmsFreeToneCurveTriple
	.align	16, 0x90
	.type	cmsFreeToneCurveTriple,@function
cmsFreeToneCurveTriple:                 # @cmsFreeToneCurveTriple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB12_8
# BB#1:                                 # %cond.end
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB12_3
# BB#2:                                 # %if.then
	callq	cmsFreeToneCurve
.LBB12_3:                               # %if.end
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB12_5
# BB#4:                                 # %if.then.5
	callq	cmsFreeToneCurve
.LBB12_5:                               # %if.end.7
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB12_7
# BB#6:                                 # %if.then.10
	callq	cmsFreeToneCurve
.LBB12_7:                               # %if.end.12
	movq	$0, 16(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	popq	%rbx
	retq
.LBB12_8:                               # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$789, %edx              # imm = 0x315
	movl	$.L__PRETTY_FUNCTION__.cmsFreeToneCurveTriple, %ecx
	callq	__assert_fail
.Lfunc_end12:
	.size	cmsFreeToneCurveTriple, .Lfunc_end12-cmsFreeToneCurveTriple
	.cfi_endproc

	.globl	cmsDupToneCurve
	.align	16, 0x90
	.type	cmsDupToneCurve,@function
cmsDupToneCurve:                        # @cmsDupToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB13_1
# BB#2:                                 # %if.end
	movq	(%rdi), %rax
	movq	(%rax), %rax
	movl	40(%rdi), %esi
	movl	8(%rdi), %edx
	movq	16(%rdi), %rcx
	movq	48(%rdi), %r8
	movq	%rax, %rdi
	jmp	AllocateToneCurveStruct # TAILCALL
.LBB13_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	cmsDupToneCurve, .Lfunc_end13-cmsDupToneCurve
	.cfi_endproc

	.globl	cmsJoinToneCurve
	.align	16, 0x90
	.type	cmsJoinToneCurve,@function
cmsJoinToneCurve:                       # @cmsJoinToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 80
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%r12, %r12
	je	.LBB14_10
# BB#1:                                 # %cond.end
	testq	%rdx, %rdx
	je	.LBB14_11
# BB#2:                                 # %cond.end.4
	movl	%r15d, %edi
	movq	%rdx, %rsi
	callq	cmsReverseToneCurveEx
	movq	%rax, %r13
	xorl	%ebp, %ebp
	testq	%r13, %r13
	je	.LBB14_9
# BB#3:                                 # %if.end
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_cmsCalloc
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB14_8
# BB#4:                                 # %for.cond.preheader
	movq	%r14, 8(%rsp)           # 8-byte Spill
	testl	%r15d, %r15d
	je	.LBB14_7
# BB#5:                                 # %for.body.lr.ph
	leal	-1(%r15), %eax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movl	%r15d, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB14_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	20(%rsp), %xmm0         # 4-byte Folded Reload
	movq	%r12, %rdi
	callq	cmsEvalToneCurveFloat
	movq	%r13, %rdi
	callq	cmsEvalToneCurveFloat
	movss	%xmm0, (%rbx,%r14,4)
	incq	%r14
	cmpl	%r14d, %ebp
	jne	.LBB14_6
.LBB14_7:                               # %if.then.17
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	cmsBuildTabulatedToneCurveFloat
	movq	%rax, %rbp
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB14_8:                               # %if.then.21
	movq	%r13, %rdi
	callq	cmsFreeToneCurve
.LBB14_9:                               # %if.end.22
	movq	%rbp, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_10:                              # %cond.false
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$823, %edx              # imm = 0x337
	movl	$.L__PRETTY_FUNCTION__.cmsJoinToneCurve, %ecx
	callq	__assert_fail
.LBB14_11:                              # %cond.false.3
	movl	$.L.str.8, %edi
	movl	$.L.str.1, %esi
	movl	$824, %edx              # imm = 0x338
	movl	$.L__PRETTY_FUNCTION__.cmsJoinToneCurve, %ecx
	callq	__assert_fail
.Lfunc_end14:
	.size	cmsJoinToneCurve, .Lfunc_end14-cmsJoinToneCurve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4679239875398991872     # double 65535
.LCPI15_1:
	.quad	4602678819172646912     # double 0.5
.LCPI15_2:
	.quad	-4548635898522107904    # double -32767
.LCPI15_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsReverseToneCurveEx
	.align	16, 0x90
	.type	cmsReverseToneCurveEx,@function
cmsReverseToneCurveEx:                  # @cmsReverseToneCurveEx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 64
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movl	%edi, %r14d
	testq	%r15, %r15
	je	.LBB15_53
# BB#1:                                 # %cond.end
	cmpl	$1, 8(%r15)
	jne	.LBB15_17
# BB#2:                                 # %land.lhs.true
	movq	16(%r15), %rax
	movl	8(%rax), %r12d
	testl	%r12d, %r12d
	jle	.LBB15_17
# BB#3:                                 # %land.lhs.true.3
	movq	(%r15), %rax
	movq	(%rax), %rdi
	movl	$6, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rbp
	movl	$DefaultCurves, %r13d
	testq	%rbp, %rbp
	je	.LBB15_11
# BB#4:
	movl	$DefaultCurves, %r13d
	.align	16, 0x90
.LBB15_5:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
	movslq	(%rbp), %rbx
	testq	%rbx, %rbx
	jle	.LBB15_10
# BB#6:                                 # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	%r12d, %edi
	callq	abs
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB15_7:                               # %for.body.i.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	4(%rbp,%rcx,4), %eax
	je	.LBB15_9
# BB#8:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB15_7 Depth=2
	incq	%rcx
	cmpq	%rbx, %rcx
	jl	.LBB15_7
	jmp	.LBB15_10
	.align	16, 0x90
.LBB15_9:                               # %IsInSet.exit.i
                                        #   in Loop: Header=BB15_5 Depth=1
	cmpl	$-1, %ecx
	jne	.LBB15_54
.LBB15_10:                              # %for.inc.i
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	176(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB15_5
	.align	16, 0x90
.LBB15_11:                              # %for.body.8.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_13 Depth 2
	movslq	(%r13), %rbp
	testq	%rbp, %rbp
	jle	.LBB15_16
# BB#12:                                # %for.body.lr.ph.i.21.i
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	%r12d, %edi
	callq	abs
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB15_13:                              # %for.body.i.25.i
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	4(%r13,%rcx,4), %eax
	je	.LBB15_15
# BB#14:                                # %for.inc.i.28.i
                                        #   in Loop: Header=BB15_13 Depth=2
	incq	%rcx
	cmpq	%rbp, %rcx
	jl	.LBB15_13
	jmp	.LBB15_16
	.align	16, 0x90
.LBB15_15:                              # %IsInSet.exit31.i
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$-1, %ecx
	jne	.LBB15_54
.LBB15_16:                              # %for.inc.16.i
                                        #   in Loop: Header=BB15_11 Depth=1
	movq	176(%r13), %r13
	testq	%r13, %r13
	jne	.LBB15_11
.LBB15_17:                              # %if.end
	movq	(%r15), %rax
	movq	(%rax), %rdi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r14d, %esi
	callq	AllocateToneCurveStruct
	testq	%rax, %rax
	je	.LBB15_52
# BB#18:                                # %cmsIsToneCurveDescending.exit
	movl	40(%r15), %esi
	decl	%esi
	testl	%r14d, %r14d
	jle	.LBB15_51
# BB#19:                                # %for.body.lr.ph
	movq	48(%r15), %rcx
	movzwl	(%rcx), %edx
	movzwl	(%rcx,%rsi,2), %edi
	leal	-1(%r14), %ebp
	cvtsi2sdl	%ebp, %xmm0
	movq	(%r15), %rbp
	movl	52(%rbp), %r15d
	leal	-1(%r15), %r11d
	movslq	%r11d, %r10
	movslq	%r15d, %r12
	movl	%esi, %esi
	cvtsi2sdq	%rsi, %xmm10
	xorps	%xmm11, %xmm11
	xorl	%ebx, %ebx
	movsd	.LCPI15_0(%rip), %xmm13 # xmm13 = mem[0],zero
	movsd	.LCPI15_1(%rip), %xmm12 # xmm12 = mem[0],zero
	movsd	.LCPI15_2(%rip), %xmm8  # xmm8 = mem[0],zero
	movsd	.LCPI15_3(%rip), %xmm9  # xmm9 = mem[0],zero
	movzwl	%di, %r8d
	movzwl	%dx, %r9d
	xorpd	%xmm2, %xmm2
	xorpd	%xmm5, %xmm5
	jmp	.LBB15_20
.LBB15_35:                              #   in Loop: Header=BB15_20 Depth=1
	xorl	%esi, %esi
	jmp	.LBB15_50
	.align	16, 0x90
.LBB15_20:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_23 Depth 2
                                        #     Child Loop BB15_27 Depth 2
	testl	%r15d, %r15d
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%ebx, %xmm6
	mulsd	%xmm13, %xmm6
	divsd	%xmm0, %xmm6
	je	.LBB15_45
# BB#21:                                # %if.end.i
                                        #   in Loop: Header=BB15_20 Depth=1
	movzwl	(%rcx), %esi
	movzwl	(%rcx,%r15,2), %edx
	cmpl	%edx, %esi
	jae	.LBB15_22
# BB#26:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB15_20 Depth=1
	testl	%r11d, %r11d
	movl	%r15d, %esi
	movq	%r10, %rdi
	js	.LBB15_45
	.align	16, 0x90
.LBB15_27:                              # %for.body.i.52
                                        #   Parent Loop BB15_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rcx,%rdi,2), %ebp
	movslq	%esi, %rdx
	movzwl	(%rcx,%rdx,2), %edx
	cmpl	%edx, %ebp
	jbe	.LBB15_28
# BB#36:                                # %if.else.i
                                        #   in Loop: Header=BB15_27 Depth=2
	movzwl	%bp, %ebp
	cvtsi2sdl	%ebp, %xmm1
	ucomisd	%xmm6, %xmm1
	jb	.LBB15_38
# BB#37:                                # %if.else.i
                                        #   in Loop: Header=BB15_27 Depth=2
	movzwl	%dx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm6
	jb	.LBB15_38
	jmp	.LBB15_30
	.align	16, 0x90
.LBB15_28:                              # %if.then.21.i
                                        #   in Loop: Header=BB15_27 Depth=2
	movzwl	%bp, %ebp
	cvtsi2sdl	%ebp, %xmm1
	ucomisd	%xmm1, %xmm6
	jb	.LBB15_38
# BB#29:                                # %if.then.21.i
                                        #   in Loop: Header=BB15_27 Depth=2
	movzwl	%dx, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm6, %xmm1
	jae	.LBB15_30
.LBB15_38:                              # %for.cond.backedge.i
                                        #   in Loop: Header=BB15_27 Depth=2
	decq	%rdi
	decl	%esi
	testl	%edi, %edi
	jns	.LBB15_27
	jmp	.LBB15_45
	.align	16, 0x90
.LBB15_22:                              # %for.cond.45.preheader.i
                                        #   in Loop: Header=BB15_20 Depth=1
	testl	%r15d, %r15d
	movl	$0, %edi
	jle	.LBB15_45
	.align	16, 0x90
.LBB15_23:                              # %for.body.50.i
                                        #   Parent Loop BB15_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	%si, %dx
	movzwl	%dx, %edx
	movzwl	2(%rcx,%rdi,2), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	cmpl	%esi, %edx
	jbe	.LBB15_24
# BB#39:                                # %if.else.70.i
                                        #   in Loop: Header=BB15_23 Depth=2
	ucomisd	%xmm6, %xmm1
	jb	.LBB15_41
# BB#40:                                # %if.else.70.i
                                        #   in Loop: Header=BB15_23 Depth=2
	movzwl	%si, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm1, %xmm6
	jb	.LBB15_41
	jmp	.LBB15_30
	.align	16, 0x90
.LBB15_24:                              # %if.then.60.i
                                        #   in Loop: Header=BB15_23 Depth=2
	ucomisd	%xmm1, %xmm6
	jb	.LBB15_41
# BB#25:                                # %if.then.60.i
                                        #   in Loop: Header=BB15_23 Depth=2
	movzwl	%si, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm6, %xmm1
	jae	.LBB15_30
.LBB15_41:                              # %for.cond.45.backedge.i
                                        #   in Loop: Header=BB15_23 Depth=2
	incq	%rdi
	cmpq	%r12, %rdi
	jl	.LBB15_23
	jmp	.LBB15_45
.LBB15_30:                              # %GetInterval.exit
                                        #   in Loop: Header=BB15_20 Depth=1
	testl	%edi, %edi
	js	.LBB15_45
# BB#31:                                # %if.then.30
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	%rdi, %rdx
	shlq	$32, %rdx
	sarq	$31, %rdx
	movzwl	(%rcx,%rdx), %edx
	cvtsi2sdl	%edx, %xmm3
	leal	1(%rdi), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %esi
	cvtsi2sdl	%esi, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	mulsd	%xmm13, %xmm1
	divsd	%xmm10, %xmm1
	cvtsi2sdl	%edx, %xmm7
	mulsd	%xmm13, %xmm7
	divsd	%xmm10, %xmm7
	ucomisd	%xmm4, %xmm3
	jne	.LBB15_44
	jp	.LBB15_44
# BB#32:                                # %if.then.52
                                        #   in Loop: Header=BB15_20 Depth=1
	cmpl	%r8d, %r9d
	ja	.LBB15_34
# BB#33:                                # %select.mid
                                        #   in Loop: Header=BB15_20 Depth=1
	movapd	%xmm7, %xmm1
.LBB15_34:                              # %select.end
                                        #   in Loop: Header=BB15_20 Depth=1
	addsd	%xmm12, %xmm1
	ucomisd	%xmm1, %xmm11
	jae	.LBB15_35
# BB#42:                                # %if.end.i.55
                                        #   in Loop: Header=BB15_20 Depth=1
	movw	$-1, %si
	ucomisd	.LCPI15_0(%rip), %xmm1
	jae	.LBB15_50
# BB#43:                                # %if.end.3.i
                                        #   in Loop: Header=BB15_20 Depth=1
	addsd	%xmm8, %xmm1
	addsd	%xmm9, %xmm1
	movd	%xmm1, %rsi
	jmp	.LBB15_49
.LBB15_44:                              # %if.else
                                        #   in Loop: Header=BB15_20 Depth=1
	movapd	%xmm7, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm4, %xmm1
	subsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm4
	subsd	%xmm4, %xmm7
	movapd	%xmm7, %xmm5
	.align	16, 0x90
.LBB15_45:                              # %if.end.67
                                        #   in Loop: Header=BB15_20 Depth=1
	mulsd	%xmm2, %xmm6
	addsd	%xmm5, %xmm6
	addsd	%xmm12, %xmm6
	ucomisd	%xmm6, %xmm11
	jae	.LBB15_46
# BB#47:                                # %if.end.i.60
                                        #   in Loop: Header=BB15_20 Depth=1
	movw	$-1, %si
	ucomisd	.LCPI15_0(%rip), %xmm6
	jae	.LBB15_50
# BB#48:                                # %if.end.3.i.67
                                        #   in Loop: Header=BB15_20 Depth=1
	addsd	%xmm8, %xmm6
	addsd	%xmm9, %xmm6
	movd	%xmm6, %rsi
.LBB15_49:                              # %_cmsQuickSaturateWord.exit69
                                        #   in Loop: Header=BB15_20 Depth=1
	shrl	$16, %esi
	addl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB15_50
	.align	16, 0x90
.LBB15_46:                              #   in Loop: Header=BB15_20 Depth=1
	xorl	%esi, %esi
.LBB15_50:                              # %_cmsQuickSaturateWord.exit69
                                        #   in Loop: Header=BB15_20 Depth=1
	movq	48(%rax), %rdx
	movw	%si, (%rdx,%rbx,2)
	incq	%rbx
	cmpl	%r14d, %ebx
	jne	.LBB15_20
.LBB15_51:
	movq	%rax, %rbp
.LBB15_52:                              # %cleanup
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_54:                              # %if.then
	movq	(%r15), %rax
	movq	16(%r15), %rdx
	movq	(%rax), %rdi
	xorl	%esi, %esi
	subl	8(%rdx), %esi
	addq	$16, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cmsBuildParametricToneCurve # TAILCALL
.LBB15_53:                              # %cond.false
	movl	$.L.str.9, %edi
	movl	$.L.str.1, %esi
	movl	$909, %edx              # imm = 0x38D
	movl	$.L__PRETTY_FUNCTION__.cmsReverseToneCurveEx, %ecx
	callq	__assert_fail
.Lfunc_end15:
	.size	cmsReverseToneCurveEx, .Lfunc_end15-cmsReverseToneCurveEx
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4679239875398991872     # double 65535
.LCPI16_1:
	.quad	4602678819172646912     # double 0.5
.LCPI16_2:
	.quad	-4548635898522107904    # double -32767
.LCPI16_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsEvalToneCurveFloat
	.align	16, 0x90
	.type	cmsEvalToneCurveFloat,@function
cmsEvalToneCurveFloat:                  # @cmsEvalToneCurveFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB16_9
# BB#1:                                 # %cond.end
	cvtss2sd	%xmm0, %xmm0
	cmpl	$0, 8(%rdi)
	je	.LBB16_2
# BB#7:                                 # %if.end
	callq	EvalSegmentedFn
	jmp	.LBB16_8
.LBB16_2:                               # %if.then
	mulsd	.LCPI16_0(%rip), %xmm0
	addsd	.LCPI16_1(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB16_3
# BB#4:                                 # %if.end.i
	movw	$-1, %ax
	ucomisd	.LCPI16_0(%rip), %xmm0
	jae	.LBB16_6
# BB#5:                                 # %if.end.3.i
	addsd	.LCPI16_2(%rip), %xmm0
	addsd	.LCPI16_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB16_6
.LBB16_3:
	xorl	%eax, %eax
.LBB16_6:                               # %cmsEvalToneCurve16.exit
	movw	%ax, 6(%rsp)
	movq	(%rdi), %rdx
	leaq	6(%rsp), %rdi
	leaq	4(%rsp), %rsi
	callq	*128(%rdx)
	movzwl	4(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI16_0(%rip), %xmm0
.LBB16_8:                               # %return
	cvtsd2ss	%xmm0, %xmm0
	popq	%rax
	retq
.LBB16_9:                               # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$1195, %edx             # imm = 0x4AB
	movl	$.L__PRETTY_FUNCTION__.cmsEvalToneCurveFloat, %ecx
	callq	__assert_fail
.Lfunc_end16:
	.size	cmsEvalToneCurveFloat, .Lfunc_end16-cmsEvalToneCurveFloat
	.cfi_endproc

	.globl	cmsIsToneCurveDescending
	.align	16, 0x90
	.type	cmsIsToneCurveDescending,@function
cmsIsToneCurveDescending:               # @cmsIsToneCurveDescending
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp98:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB17_2
# BB#1:                                 # %cond.end
	movq	48(%rdi), %rax
	movl	40(%rdi), %ecx
	decl	%ecx
	movzwl	(%rax,%rcx,2), %ecx
	movzwl	(%rax), %eax
	cmpl	%eax, %ecx
	sbbl	%eax, %eax
	andl	$1, %eax
	popq	%rdx
	retq
.LBB17_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1170, %edx             # imm = 0x492
	movl	$.L__PRETTY_FUNCTION__.cmsIsToneCurveDescending, %ecx
	callq	__assert_fail
.Lfunc_end17:
	.size	cmsIsToneCurveDescending, .Lfunc_end17-cmsIsToneCurveDescending
	.cfi_endproc

	.globl	cmsReverseToneCurve
	.align	16, 0x90
	.type	cmsReverseToneCurve,@function
cmsReverseToneCurve:                    # @cmsReverseToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp99:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB18_1
# BB#2:                                 # %cond.end
	movl	$4096, %edi             # imm = 0x1000
	movq	%rax, %rsi
	popq	%rax
	jmp	cmsReverseToneCurveEx   # TAILCALL
.LBB18_1:                               # %cond.false
	movl	$.L.str.10, %edi
	movl	$.L.str.1, %esi
	movl	$971, %edx              # imm = 0x3CB
	movl	$.L__PRETTY_FUNCTION__.cmsReverseToneCurve, %ecx
	callq	__assert_fail
.Lfunc_end18:
	.size	cmsReverseToneCurve, .Lfunc_end18-cmsReverseToneCurve
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_0:
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
.LCPI19_5:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI19_6:
	.quad	-4548635898522107904    # double -3.276700e+04
	.quad	-4548635898522107904    # double -3.276700e+04
.LCPI19_7:
	.quad	4771563805199040512     # double 1.030792e+11
	.quad	4771563805199040512     # double 1.030792e+11
.LCPI19_8:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI19_9:
	.quad	32767                   # 0x7fff
	.quad	32767                   # 0x7fff
.LCPI19_10:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
.LCPI19_11:
	.quad	65535                   # 0xffff
	.quad	65535                   # 0xffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_1:
	.long	3221225472              # float -2
.LCPI19_2:
	.long	1084227584              # float 5
.LCPI19_3:
	.long	3229614080              # float -4
.LCPI19_4:
	.long	1086324736              # float 6
.LCPI19_16:
	.long	1199570688              # float 65535
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_12:
	.quad	4602678819172646912     # double 0.5
.LCPI19_13:
	.quad	4679239875398991872     # double 65535
.LCPI19_14:
	.quad	-4548635898522107904    # double -32767
.LCPI19_15:
	.quad	4771563805199040512     # double 103079215104
	.text
	.globl	cmsSmoothToneCurve
	.align	16, 0x90
	.type	cmsSmoothToneCurve,@function
cmsSmoothToneCurve:                     # @cmsSmoothToneCurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$49224, %rsp            # imm = 0xC048
.Ltmp106:
	.cfi_def_cfa_offset 49280
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB19_56
# BB#1:                                 # %for.cond.preheader.i
	movl	40(%r14), %r15d
	testl	%r15d, %r15d
	je	.LBB19_55
# BB#2:                                 # %for.body.lr.ph.i
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB19_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	48(%r14), %rcx
	movzwl	(%rcx,%rax,2), %ebp
	cvtsi2sdq	%rax, %xmm0
	movl	%r15d, %edi
	callq	_cmsQuantizeVal
	movzwl	%ax, %eax
	subl	%eax, %ebp
	movl	%ebp, %edi
	callq	abs
	movl	40(%r14), %r15d
	cmpl	$16, %eax
	jge	.LBB19_5
# BB#3:                                 # %for.cond.i
                                        #   in Loop: Header=BB19_4 Depth=1
	incl	%ebx
	cmpl	%r15d, %ebx
	jb	.LBB19_4
	jmp	.LBB19_55
.LBB19_5:                               # %if.end.2
	movslq	%r15d, %rbx
	cmpl	$4097, %ebx             # imm = 0x1001
	jl	.LBB19_8
# BB#6:                                 # %if.then.4
	movq	(%r14), %rax
	movq	(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.11, %edx
	jmp	.LBB19_7
.LBB19_8:                               # %if.end.5
	movabsq	$8589934584, %r12       # imm = 0x1FFFFFFF8
	leaq	(,%rbx,4), %rbp
	leaq	32832(%rsp), %rdi
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	leaq	16432(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	testl	%r15d, %r15d
	jle	.LBB19_19
# BB#9:                                 # %for.body.lr.ph
	movq	48(%r14), %rax
	leal	-1(%rbx), %ecx
	incq	%rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
	andq	%r12, %rdx
	je	.LBB19_16
# BB#10:                                # %vector.body.preheader
	leal	-1(%rbx), %edi
	incq	%rdi
	andq	%r12, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	xorl	%esi, %esi
	btq	$3, %rdi
	jb	.LBB19_12
# BB#11:                                # %vector.body.prol
	movq	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rax), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	cvtdq2ps	%xmm0, %xmm0
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, 16436(%rsp)
	movups	%xmm1, 16452(%rsp)
	movdqa	.LCPI19_0(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	movdqu	%xmm0, 32836(%rsp)
	movdqu	%xmm0, 32852(%rsp)
	movl	$8, %esi
.LBB19_12:                              # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB19_15
# BB#13:                                # %vector.body.preheader.split.split
	leal	-1(%rbx), %edi
	incq	%rdi
	andq	%r12, %rdi
	pxor	%xmm0, %xmm0
	movaps	.LCPI19_0(%rip), %xmm1  # xmm1 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB19_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rsi,2), %xmm2    # xmm2 = mem[0],zero
	movq	8(%rax,%rsi,2), %xmm3   # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	cvtdq2ps	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm2, 16436(%rsp,%rsi,4)
	movups	%xmm3, 16452(%rsp,%rsi,4)
	movups	%xmm1, 32836(%rsp,%rsi,4)
	movups	%xmm1, 32852(%rsp,%rsi,4)
	movq	16(%rax,%rsi,2), %xmm2  # xmm2 = mem[0],zero
	movq	24(%rax,%rsi,2), %xmm3  # xmm3 = mem[0],zero
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	cvtdq2ps	%xmm2, %xmm2
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm2, 16468(%rsp,%rsi,4)
	movups	%xmm3, 16484(%rsp,%rsi,4)
	movups	%xmm1, 32868(%rsp,%rsi,4)
	movups	%xmm1, 32884(%rsp,%rsi,4)
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB19_14
.LBB19_15:
	movq	%rdx, %rsi
.LBB19_16:                              # %middle.block
	cmpq	%rsi, %rcx
	je	.LBB19_19
# BB#17:                                # %for.body.preheader
	leaq	(%rax,%rsi,2), %rax
	movl	%r15d, %ecx
	subl	%esi, %ecx
	leaq	16436(%rsp,%rsi,4), %rdx
	leaq	32836(%rsp,%rsi,4), %rsi
	.align	16, 0x90
.LBB19_18:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movss	%xmm0, (%rdx)
	movl	$1065353216, (%rsi)     # imm = 0x3F800000
	addq	$2, %rax
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%ecx
	jne	.LBB19_18
.LBB19_19:                              # %for.end
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	(%r14), %rax
	movq	(%rax), %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	$4097, %esi             # imm = 0x1001
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_cmsCalloc
	movq	%rax, %rbp
	movl	$4097, %esi             # imm = 0x1001
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_cmsCalloc
	movq	%rax, %r13
	movl	$4097, %esi             # imm = 0x1001
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_cmsCalloc
	movq	%rax, %r12
	testq	%rbp, %rbp
	je	.LBB19_20
# BB#32:                                # %for.end
	testq	%r13, %r13
	movq	(%rsp), %rbx            # 8-byte Reload
	je	.LBB19_21
# BB#33:                                # %for.end
	testq	%r12, %r12
	je	.LBB19_21
# BB#34:                                # %if.then.i
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	32836(%rsp), %xmm2      # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm2
	movss	%xmm2, 4(%r13)
	movss	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	movss	%xmm3, 4(%rbp)
	movaps	%xmm0, %xmm2
	divss	4(%r13), %xmm2
	movss	%xmm2, 4(%r12)
	movss	32836(%rsp), %xmm2      # xmm2 = mem[0],zero,zero,zero
	mulss	16436(%rsp), %xmm2
	movss	%xmm2, 36(%rsp)
	movss	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	movss	32840(%rsp), %xmm4      # xmm4 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm4
	movss	4(%r13), %xmm5          # xmm5 = mem[0],zero,zero,zero
	movss	4(%rbp), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm6
	mulss	%xmm3, %xmm6
	mulss	%xmm3, %xmm6
	subss	%xmm6, %xmm4
	movss	%xmm4, 8(%r13)
	movss	.LCPI19_3(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	mulss	4(%rbp), %xmm5
	mulss	4(%r12), %xmm5
	movaps	%xmm3, %xmm6
	subss	%xmm5, %xmm6
	divss	%xmm4, %xmm6
	movss	%xmm6, 8(%rbp)
	movaps	%xmm0, %xmm4
	divss	8(%r13), %xmm4
	movss	%xmm4, 8(%r12)
	movss	32840(%rsp), %xmm4      # xmm4 = mem[0],zero,zero,zero
	mulss	16440(%rsp), %xmm4
	movss	4(%rbp), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	36(%rsp), %xmm5
	subss	%xmm5, %xmm4
	movss	%xmm4, 40(%rsp)
	leal	-1(%r15), %eax
	cmpl	$4, %eax
	jl	.LBB19_37
# BB#35:                                # %for.body.lr.ph.i.43
	movss	.LCPI19_4(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	leal	-4(%rbx), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB19_36:                              # %for.body.i.44
                                        # =>This Inner Loop Header: Depth=1
	movss	32844(%rsp,%rdx,4), %xmm5 # xmm5 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm5
	movss	8(%rbp,%rdx,4), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm6
	movss	8(%r13,%rdx,4), %xmm7   # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm6
	subss	%xmm6, %xmm5
	movss	4(%r12,%rdx,4), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm6
	mulss	4(%r13,%rdx,4), %xmm6
	subss	%xmm6, %xmm5
	movss	%xmm5, 12(%r13,%rdx,4)
	mulss	8(%rbp,%rdx,4), %xmm7
	mulss	8(%r12,%rdx,4), %xmm7
	movaps	%xmm3, %xmm6
	subss	%xmm7, %xmm6
	divss	%xmm5, %xmm6
	movss	%xmm6, 12(%rbp,%rdx,4)
	movaps	%xmm0, %xmm5
	divss	12(%r13,%rdx,4), %xmm5
	movss	%xmm5, 12(%r12,%rdx,4)
	movss	32844(%rsp,%rdx,4), %xmm5 # xmm5 = mem[0],zero,zero,zero
	mulss	16444(%rsp,%rdx,4), %xmm5
	movss	8(%rbp,%rdx,4), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	40(%rsp,%rdx,4), %xmm6
	subss	%xmm6, %xmm5
	movss	4(%r12,%rdx,4), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	36(%rsp,%rdx,4), %xmm6
	subss	%xmm6, %xmm5
	movss	%xmm5, 44(%rsp,%rdx,4)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB19_36
.LBB19_37:                              # %for.end.i
	leal	-2(%rbx), %edx
	movslq	%eax, %rcx
	addss	32832(%rsp,%rcx,4), %xmm2
	movslq	%edx, %rax
	movss	(%rbp,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm3
	movss	(%r13,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm3
	subss	%xmm3, %xmm2
	movss	-12(%r12,%rbx,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm3
	mulss	-12(%r13,%rbx,4), %xmm3
	subss	%xmm3, %xmm2
	movss	%xmm2, (%r13,%rcx,4)
	movss	(%rbp,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	mulss	(%r12,%rax,4), %xmm4
	subss	%xmm4, %xmm1
	divss	%xmm2, %xmm1
	movss	%xmm1, (%rbp,%rcx,4)
	movss	32832(%rsp,%rcx,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	16432(%rsp,%rcx,4), %xmm1
	mulss	32(%rsp,%rax,4), %xmm3
	subss	%xmm3, %xmm1
	movss	-12(%r12,%rbx,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	mulss	20(%rsp,%rbx,4), %xmm2
	subss	%xmm2, %xmm1
	movss	%xmm1, 32(%rsp,%rcx,4)
	addss	32832(%rsp,%rbx,4), %xmm0
	movss	(%rbp,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	mulss	(%r13,%rcx,4), %xmm1
	subss	%xmm1, %xmm0
	movss	(%r12,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	mulss	(%r13,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, (%r13,%rbx,4)
	movss	32832(%rsp,%rbx,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	mulss	16432(%rsp,%rbx,4), %xmm3
	movss	32(%rsp,%rcx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	(%rbp,%rcx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	subss	%xmm2, %xmm3
	movss	32(%rsp,%rax,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	(%r12,%rax,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	subss	%xmm4, %xmm3
	divss	%xmm0, %xmm3
	movss	%xmm3, 32(%rsp,%rbx,4)
	divss	(%r13,%rcx,4), %xmm1
	mulss	(%rbp,%rcx,4), %xmm3
	subss	%xmm3, %xmm1
	movss	%xmm1, 32(%rsp,%rcx,4)
	movl	$1, 12(%rsp)            # 4-byte Folded Spill
	cmpl	$3, %ebx
	jl	.LBB19_21
	jmp	.LBB19_38
	.align	16, 0x90
.LBB19_39:                              # %for.body.246.for.body.246_crit_edge.i
                                        #   in Loop: Header=BB19_38 Depth=1
	movss	28(%rsp,%rax,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	decq	%rax
.LBB19_38:                              # %for.body.246.i
                                        # =>This Inner Loop Header: Depth=1
	divss	(%r13,%rax,4), %xmm2
	mulss	(%rbp,%rax,4), %xmm1
	subss	%xmm1, %xmm2
	movss	(%r12,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	mulss	40(%rsp,%rax,4), %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, 32(%rsp,%rax,4)
	cmpq	$2, %rax
	jge	.LBB19_39
	jmp	.LBB19_21
.LBB19_20:
	movq	(%rsp), %rbx            # 8-byte Reload
.LBB19_21:                              # %if.end.i
	testq	%rbp, %rbp
	je	.LBB19_23
# BB#22:                                # %if.then.271.i
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	_cmsFree
.LBB19_23:                              # %if.end.272.i
	testq	%r13, %r13
	je	.LBB19_25
# BB#24:                                # %if.then.274.i
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	_cmsFree
.LBB19_25:                              # %if.end.275.i
	testq	%r12, %r12
	je	.LBB19_27
# BB#26:                                # %if.then.277.i
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	callq	_cmsFree
.LBB19_27:                              # %smooth2.exit
	xorl	%ebp, %ebp
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB19_56
# BB#28:                                # %for.cond.33.preheader
	leal	-1(%r15), %r8d
	movslq	%r8d, %rsi
	shlq	$2, %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	.align	16, 0x90
.LBB19_29:                              # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, %rdi
	jl	.LBB19_40
# BB#30:                                # %for.body.36
                                        #   in Loop: Header=BB19_29 Depth=1
	movss	32(%rsp,%rdi,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cmpeqss	%xmm0, %xmm1
	movd	%xmm1, %ebp
	andl	$1, %ebp
	addl	%ebp, %ecx
	ucomiss	.LCPI19_16(%rip), %xmm0
	setae	%al
	movzbl	%al, %eax
	addl	%eax, %edx
	movss	32(%rsp,%rsi), %xmm1    # xmm1 = mem[0],zero,zero,zero
	decq	%rdi
	addq	$-4, %rsi
	ucomiss	%xmm0, %xmm1
	jbe	.LBB19_29
# BB#31:                                # %if.then.59
	movq	(%r14), %rax
	movq	(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.12, %edx
	jmp	.LBB19_7
.LBB19_40:                              # %for.end.64
	imulq	$1431655766, %rbx, %rsi # imm = 0x55555556
	movq	%rsi, %rax
	shrq	$63, %rax
	shrq	$32, %rsi
	addl	%eax, %esi
	cmpl	%esi, %ecx
	jle	.LBB19_42
# BB#41:                                # %if.then.67
	movq	(%r14), %rax
	movq	(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.13, %edx
	jmp	.LBB19_7
.LBB19_42:                              # %if.end.70
	cmpl	%esi, %edx
	jle	.LBB19_43
# BB#57:                                # %if.then.74
	movq	(%r14), %rax
	movq	(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.14, %edx
.LBB19_7:                               # %cleanup
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB19_56
.LBB19_43:                              # %for.cond.78.preheader
	testl	%r15d, %r15d
	jle	.LBB19_55
# BB#44:                                # %for.body.81.lr.ph
	movq	48(%r14), %rcx
	incq	%r8
	addq	$4, %r9
	xorl	%edx, %edx
	andq	%r8, %r9
	je	.LBB19_48
# BB#45:                                # %vector.body89.preheader
	leaq	44(%rsp), %rdx
	leaq	4(%rcx), %rsi
	leal	-1(%rbx), %eax
	incq	%rax
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rax, %rdi
	movapd	.LCPI19_5(%rip), %xmm8  # xmm8 = [5.000000e-01,5.000000e-01]
	xorpd	%xmm9, %xmm9
	movapd	.LCPI19_6(%rip), %xmm10 # xmm10 = [-3.276700e+04,-3.276700e+04]
	movapd	.LCPI19_7(%rip), %xmm11 # xmm11 = [1.030792e+11,1.030792e+11]
	movapd	.LCPI19_8(%rip), %xmm12 # xmm12 = [4294967295,4294967295]
	movdqa	.LCPI19_9(%rip), %xmm13 # xmm13 = [32767,32767]
	movapd	.LCPI19_10(%rip), %xmm5 # xmm5 = [6.553500e+04,6.553500e+04]
	movapd	.LCPI19_11(%rip), %xmm7 # xmm7 = [65535,65535]
.LBB19_46:                              # %vector.body89
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rdx), %xmm2
	cvtps2pd	(%rdx), %xmm4
	addpd	%xmm8, %xmm2
	addpd	%xmm8, %xmm4
	movapd	%xmm2, %xmm0
	movapd	%xmm5, %xmm6
	cmplepd	%xmm2, %xmm6
	cmpnlepd	%xmm9, %xmm2
	movapd	%xmm4, %xmm1
	movapd	%xmm5, %xmm3
	cmplepd	%xmm4, %xmm3
	cmpnlepd	%xmm9, %xmm4
	addpd	%xmm10, %xmm0
	addpd	%xmm10, %xmm1
	addpd	%xmm11, %xmm0
	addpd	%xmm11, %xmm1
	andpd	%xmm12, %xmm0
	andpd	%xmm12, %xmm1
	psrlq	$16, %xmm0
	psrlq	$16, %xmm1
	paddq	%xmm13, %xmm0
	paddq	%xmm13, %xmm1
	pand	%xmm2, %xmm0
	pand	%xmm4, %xmm1
	andpd	%xmm2, %xmm6
	andpd	%xmm4, %xmm3
	movapd	%xmm6, %xmm2
	andnpd	%xmm0, %xmm2
	andpd	%xmm7, %xmm6
	orpd	%xmm2, %xmm6
	movapd	%xmm3, %xmm0
	andnpd	%xmm1, %xmm0
	andpd	%xmm7, %xmm3
	orpd	%xmm0, %xmm3
	pshufd	$232, %xmm6, %xmm0      # xmm0 = xmm6[0,2,2,3]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	movd	%xmm0, -4(%rsi)
	pshufd	$232, %xmm3, %xmm0      # xmm0 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	movd	%xmm0, (%rsi)
	addq	$16, %rdx
	addq	$8, %rsi
	addq	$-4, %rdi
	jne	.LBB19_46
# BB#47:
	movq	%r9, %rdx
.LBB19_48:                              # %middle.block90
	cmpq	%rdx, %r8
	je	.LBB19_55
# BB#49:                                # %for.body.81.preheader
	leaq	(%rcx,%rdx,2), %rax
	subl	%edx, %r15d
	leaq	36(%rsp,%rdx,4), %rcx
	movsd	.LCPI19_12(%rip), %xmm0 # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI19_14(%rip), %xmm2 # xmm2 = mem[0],zero
	movsd	.LCPI19_15(%rip), %xmm3 # xmm3 = mem[0],zero
.LBB19_50:                              # %for.body.81
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	addsd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm1
	jae	.LBB19_51
# BB#52:                                # %if.end.i.48
                                        #   in Loop: Header=BB19_50 Depth=1
	movw	$-1, %dx
	ucomisd	.LCPI19_13(%rip), %xmm4
	jae	.LBB19_54
# BB#53:                                # %if.end.3.i
                                        #   in Loop: Header=BB19_50 Depth=1
	addsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	movd	%xmm4, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB19_54
.LBB19_51:                              #   in Loop: Header=BB19_50 Depth=1
	xorl	%edx, %edx
.LBB19_54:                              # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB19_50 Depth=1
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$4, %rcx
	decl	%r15d
	jne	.LBB19_50
.LBB19_55:
	movl	$1, %ebp
.LBB19_56:                              # %cleanup
	movl	%ebp, %eax
	addq	$49224, %rsp            # imm = 0xC048
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cmsSmoothToneCurve, .Lfunc_end19-cmsSmoothToneCurve
	.cfi_endproc

	.globl	cmsIsToneCurveLinear
	.align	16, 0x90
	.type	cmsIsToneCurveLinear,@function
cmsIsToneCurveLinear:                   # @cmsIsToneCurveLinear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp117:
	.cfi_def_cfa_offset 48
.Ltmp118:
	.cfi_offset %rbx, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	testq	%r15, %r15
	je	.LBB20_3
# BB#1:                                 # %for.cond.preheader
	movl	40(%r15), %edi
	movl	$1, %r14d
	testl	%edi, %edi
	je	.LBB20_7
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB20_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	48(%r15), %rcx
	movzwl	(%rcx,%rax,2), %ebp
	cvtsi2sdq	%rax, %xmm0
	callq	_cmsQuantizeVal
	movzwl	%ax, %eax
	subl	%eax, %ebp
	movl	%ebp, %edi
	callq	abs
	cmpl	$16, %eax
	jge	.LBB20_6
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB20_5 Depth=1
	incl	%ebx
	movl	40(%r15), %edi
	cmpl	%edi, %ebx
	jb	.LBB20_5
	jmp	.LBB20_7
.LBB20_6:
	xorl	%r14d, %r14d
.LBB20_7:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_3:                               # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$1109, %edx             # imm = 0x455
	movl	$.L__PRETTY_FUNCTION__.cmsIsToneCurveLinear, %ecx
	callq	__assert_fail
.Lfunc_end20:
	.size	cmsIsToneCurveLinear, .Lfunc_end20-cmsIsToneCurveLinear
	.cfi_endproc

	.globl	cmsIsToneCurveMonotonic
	.align	16, 0x90
	.type	cmsIsToneCurveMonotonic,@function
cmsIsToneCurveMonotonic:                # @cmsIsToneCurveMonotonic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp122:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB21_15
# BB#1:                                 # %cond.end
	movslq	40(%rdi), %rdx
	cmpq	$2, %rdx
	jge	.LBB21_3
# BB#2:
	movl	$1, %eax
	popq	%rdx
	retq
.LBB21_3:                               # %cmsIsToneCurveDescending.exit
	movq	48(%rdi), %r8
	movzwl	(%r8), %ecx
	leal	-1(%rdx), %eax
	movzwl	(%r8,%rax,2), %edi
	cmpl	%edi, %ecx
	jbe	.LBB21_8
# BB#4:                                 # %for.body.lr.ph
	movl	$1, %edi
	.align	16, 0x90
.LBB21_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	movzwl	(%r8,%rdi,2), %ecx
	movl	%ecx, %esi
	subl	%eax, %esi
	xorl	%eax, %eax
	cmpl	$2, %esi
	jg	.LBB21_14
# BB#6:                                 # %for.cond
                                        #   in Loop: Header=BB21_5 Depth=1
	incq	%rdi
	cmpq	%rdx, %rdi
	jl	.LBB21_5
# BB#7:
	movl	$1, %eax
	popq	%rdx
	retq
.LBB21_8:                               # %if.else.16
	movl	%edx, %ecx
	addl	$-2, %ecx
	js	.LBB21_9
# BB#12:                                # %for.body.26.lr.ph
	cltq
	movzwl	(%r8,%rax,2), %esi
	addl	$-2, %edx
	movslq	%edx, %rdx
	incq	%rdx
	.align	16, 0x90
.LBB21_13:                              # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %eax
	movzwl	-2(%r8,%rdx,2), %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$3, %ecx
	jge	.LBB21_14
# BB#10:                                # %for.cond.23
                                        #   in Loop: Header=BB21_13 Depth=1
	decq	%rdx
	testq	%rdx, %rdx
	jg	.LBB21_13
# BB#11:
	movl	$1, %eax
	popq	%rdx
	retq
.LBB21_14:                              # %cleanup
	popq	%rdx
	retq
.LBB21_9:
	movl	$1, %eax
	popq	%rdx
	retq
.LBB21_15:                              # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1128, %edx             # imm = 0x468
	movl	$.L__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic, %ecx
	callq	__assert_fail
.Lfunc_end21:
	.size	cmsIsToneCurveMonotonic, .Lfunc_end21-cmsIsToneCurveMonotonic
	.cfi_endproc

	.globl	cmsIsToneCurveMultisegment
	.align	16, 0x90
	.type	cmsIsToneCurveMultisegment,@function
cmsIsToneCurveMultisegment:             # @cmsIsToneCurveMultisegment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp123:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB22_2
# BB#1:                                 # %cond.end
	cmpl	$1, 8(%rdi)
	seta	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB22_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1179, %edx             # imm = 0x49B
	movl	$.L__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment, %ecx
	callq	__assert_fail
.Lfunc_end22:
	.size	cmsIsToneCurveMultisegment, .Lfunc_end22-cmsIsToneCurveMultisegment
	.cfi_endproc

	.globl	cmsGetToneCurveParametricType
	.align	16, 0x90
	.type	cmsGetToneCurveParametricType,@function
cmsGetToneCurveParametricType:          # @cmsGetToneCurveParametricType
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp124:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB23_4
# BB#1:                                 # %cond.end
	xorl	%eax, %eax
	cmpl	$1, 8(%rdi)
	jne	.LBB23_3
# BB#2:                                 # %if.end
	movq	16(%rdi), %rax
	movl	8(%rax), %eax
.LBB23_3:                               # %return
	popq	%rdx
	retq
.LBB23_4:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1186, %edx             # imm = 0x4A2
	movl	$.L__PRETTY_FUNCTION__.cmsGetToneCurveParametricType, %ecx
	callq	__assert_fail
.Lfunc_end23:
	.size	cmsGetToneCurveParametricType, .Lfunc_end23-cmsGetToneCurveParametricType
	.cfi_endproc

	.globl	cmsEvalToneCurve16
	.align	16, 0x90
	.type	cmsEvalToneCurve16,@function
cmsEvalToneCurve16:                     # @cmsEvalToneCurve16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp125:
	.cfi_def_cfa_offset 16
	movw	%si, 6(%rsp)
	testq	%rdi, %rdi
	je	.LBB24_2
# BB#1:                                 # %cond.end
	movq	(%rdi), %rdx
	leaq	6(%rsp), %rdi
	leaq	4(%rsp), %rsi
	callq	*128(%rdx)
	movzwl	4(%rsp), %eax
	popq	%rdx
	retq
.LBB24_2:                               # %cond.false
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$1216, %edx             # imm = 0x4C0
	movl	$.L__PRETTY_FUNCTION__.cmsEvalToneCurve16, %ecx
	callq	__assert_fail
.Lfunc_end24:
	.size	cmsEvalToneCurve16, .Lfunc_end24-cmsEvalToneCurve16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4607182418800017408     # double 1
.LCPI25_1:
	.quad	4553139223271571456     # double 2.44140625E-4
.LCPI25_2:
	.quad	4589708452245819884     # double 0.070000000000000007
.LCPI25_4:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_3:
	.long	1065353216              # float 1
.LCPI25_5:
	.long	0                       # float 0
	.text
	.globl	cmsEstimateGamma
	.align	16, 0x90
	.type	cmsEstimateGamma,@function
cmsEstimateGamma:                       # @cmsEstimateGamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 80
.Ltmp129:
	.cfi_offset %rbx, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB25_11
# BB#1:
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	xorpd	%xmm2, %xmm2
	movsd	.LCPI25_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movl	$4095, %ebp             # imm = 0xFFF
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	.align	16, 0x90
.LBB25_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	mulsd	.LCPI25_1(%rip), %xmm3
	movsd	%xmm3, 48(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	.LCPI25_2(%rip), %xmm1
	jbe	.LBB25_3
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB25_2 Depth=1
	ucomiss	.LCPI25_5, %xmm0
	jbe	.LBB25_3
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_2 Depth=1
	movss	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB25_3
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB25_2 Depth=1
	cvtss2sd	%xmm0, %xmm0
	callq	log
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	log
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm1
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	.LCPI25_0(%rip), %xmm4  # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm1
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jmp	.LBB25_7
	.align	16, 0x90
.LBB25_3:                               #   in Loop: Header=BB25_2 Depth=1
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	.LCPI25_0(%rip), %xmm4  # xmm4 = mem[0],zero
.LBB25_7:                               # %for.inc
                                        #   in Loop: Header=BB25_2 Depth=1
	addsd	%xmm4, %xmm3
	decl	%ebp
	jne	.LBB25_2
# BB#8:                                 # %for.end
	mulsd	%xmm1, %xmm0
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	mulsd	%xmm2, %xmm2
	subsd	%xmm2, %xmm0
	movsd	.LCPI25_4(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB25_10
# BB#9:                                 # %call.sqrt
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB25_10:                              # %for.end.split
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	32(%rsp), %xmm3         # 8-byte Folded Reload
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cmpltsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
	andnpd	%xmm3, %xmm1
	movsd	.LCPI25_4(%rip), %xmm0  # xmm0 = mem[0],zero
	andpd	%xmm2, %xmm0
	orpd	%xmm1, %xmm0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB25_11:                              # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1246, %edx             # imm = 0x4DE
	movl	$.L__PRETTY_FUNCTION__.cmsEstimateGamma, %ecx
	callq	__assert_fail
.Lfunc_end25:
	.size	cmsEstimateGamma, .Lfunc_end25-cmsEstimateGamma
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4607182418800017408     # double 1
.LCPI26_1:
	.quad	4621819117588971520     # double 10
.LCPI26_3:
	.quad	-4616189618054758400    # double -1
.LCPI26_4:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	DefaultEvalParametricFn,@function
DefaultEvalParametricFn:                # @DefaultEvalParametricFn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 32
.Ltmp133:
	.cfi_offset %rbx, -16
	movapd	%xmm0, %xmm4
	movq	%rsi, %rbx
	xorpd	%xmm5, %xmm5
	leal	8(%rdi), %eax
	cmpl	$16, %eax
	jbe	.LBB26_58
# BB#1:                                 # %entry
	cmpl	$-108, %edi
	je	.LBB26_56
# BB#2:                                 # %entry
	cmpl	$108, %edi
	je	.LBB26_3
.LBB26_57:                              # %cleanup
	movapd	%xmm5, %xmm0
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB26_58:                              # %entry
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_54:                              # %sw.bb.263
	subsd	32(%rbx), %xmm4
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm4, %xmm5
	ja	.LBB26_57
# BB#55:                                # %if.else.268
	divsd	(%rbx), %xmm4
	movapd	%xmm4, %xmm0
	callq	log
	movapd	%xmm0, (%rsp)           # 16-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	callq	log
	movapd	(%rsp), %xmm5           # 16-byte Reload
	divsd	%xmm0, %xmm5
	subsd	24(%rbx), %xmm5
	divsd	16(%rbx), %xmm5
	jmp	.LBB26_57
.LBB26_52:                              # %sw.bb.239
	subsd	32(%rbx), %xmm4
	divsd	8(%rbx), %xmm4
	movsd	.LCPI26_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm4, %xmm1
	callq	pow
	subsd	24(%rbx), %xmm0
	divsd	16(%rbx), %xmm0
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	(%rbx), %xmm1
	jmp	.LBB26_8
.LBB26_47:                              # %sw.bb.208
	subsd	24(%rbx), %xmm4
	jmp	.LBB26_42
.LBB26_40:                              # %sw.bb.167
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%rbx), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm4
	jae	.LBB26_41
# BB#43:                                # %if.else.188
	subsd	%xmm1, %xmm4
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm5
	jmp	.LBB26_57
.LBB26_31:                              # %sw.bb.119
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	mulsd	32(%rbx), %xmm0
	addsd	16(%rbx), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB26_33
# BB#32:                                # %if.else.127
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm4, (%rsp)           # 8-byte Spill
	callq	pow
	movsd	(%rsp), %xmm4           # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm0, %xmm1
.LBB26_33:                              # %if.end.130
	ucomisd	%xmm1, %xmm4
	jae	.LBB26_25
# BB#34:                                # %if.else.140
	divsd	24(%rbx), %xmm4
	movapd	%xmm4, %xmm5
	jmp	.LBB26_57
.LBB26_23:                              # %sw.bb.78
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm4
	jae	.LBB26_24
# BB#26:                                # %if.else.95
	movsd	16(%rbx), %xmm5         # xmm5 = mem[0],zero
	xorpd	.LCPI26_2(%rip), %xmm5
	divsd	8(%rbx), %xmm5
	jmp	.LBB26_57
.LBB26_15:                              # %sw.bb.38
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm4, %xmm5
	ja	.LBB26_57
# BB#16:                                # %if.end.49
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	(%rbx), %xmm1
	movapd	%xmm4, %xmm0
	callq	pow
	movapd	%xmm0, %xmm5
	subsd	16(%rbx), %xmm5
	divsd	8(%rbx), %xmm5
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm5, %xmm0
	jbe	.LBB26_57
# BB#17:                                # %if.then.51
	xorpd	%xmm5, %xmm5
	jmp	.LBB26_57
.LBB26_9:                               # %sw.bb.7
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm4, %xmm1
	jbe	.LBB26_6
# BB#10:                                # %if.then.9
	addsd	.LCPI26_3(%rip), %xmm0
	jmp	.LBB26_11
.LBB26_4:                               # %sw.bb
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.LBB26_7
# BB#5:                                 # %if.then
	addsd	.LCPI26_3(%rip), %xmm1
	movapd	%xmm1, %xmm0
.LBB26_11:                              # %cleanup
	movsd	%xmm4, (%rsp)           # 8-byte Spill
	callq	fabs
	movapd	%xmm0, %xmm5
	cmpltsd	.LCPI26_4(%rip), %xmm5
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	andpd	%xmm0, %xmm5
	jmp	.LBB26_57
.LBB26_12:                              # %sw.bb.21
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI26_2(%rip), %xmm2  # xmm2 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm4
	jb	.LBB26_57
# BB#13:                                # %if.then.27
	mulsd	%xmm4, %xmm1
	addsd	%xmm1, %xmm0
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm0
	jbe	.LBB26_57
# BB#14:                                # %if.then.31
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	jmp	.LBB26_8
.LBB26_18:                              # %sw.bb.53
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI26_2(%rip), %xmm2  # xmm2 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorpd	%xmm5, %xmm5
	xorpd	%xmm3, %xmm3
	maxsd	%xmm2, %xmm3
	ucomisd	%xmm3, %xmm4
	jae	.LBB26_19
# BB#22:                                # %if.else.75
	movsd	24(%rbx), %xmm5         # xmm5 = mem[0],zero
	jmp	.LBB26_57
.LBB26_27:                              # %sw.bb.101
	ucomisd	32(%rbx), %xmm4
	jae	.LBB26_28
# BB#30:                                # %if.else.115
	mulsd	24(%rbx), %xmm4
	movapd	%xmm4, %xmm5
	jmp	.LBB26_57
.LBB26_35:                              # %sw.bb.144
	ucomisd	32(%rbx), %xmm4
	jae	.LBB26_36
# BB#39:                                # %if.else.161
	mulsd	24(%rbx), %xmm4
	addsd	48(%rbx), %xmm4
	movapd	%xmm4, %xmm5
	jmp	.LBB26_57
.LBB26_44:                              # %sw.bb.194
	mulsd	8(%rbx), %xmm4
	addsd	16(%rbx), %xmm4
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.LBB26_46
# BB#45:                                # %if.then.200
	movsd	24(%rbx), %xmm5         # xmm5 = mem[0],zero
	jmp	.LBB26_57
.LBB26_48:                              # %sw.bb.222
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movapd	%xmm4, %xmm0
	callq	pow
	mulsd	(%rsp), %xmm0           # 8-byte Folded Reload
	addsd	24(%rbx), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB26_49
# BB#50:                                # %if.else.232
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	callq	log10
	jmp	.LBB26_51
.LBB26_53:                              # %sw.bb.252
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	mulsd	16(%rbx), %xmm4
	addsd	24(%rbx), %xmm4
	movapd	%xmm4, %xmm1
	callq	pow
.LBB26_51:                              # %cleanup
	movapd	%xmm0, %xmm5
	mulsd	(%rsp), %xmm5           # 8-byte Folded Reload
	addsd	32(%rbx), %xmm5
	jmp	.LBB26_57
.LBB26_56:                              # %sw.bb.289
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movapd	%xmm4, %xmm0
	callq	pow
	movsd	.LCPI26_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	movsd	.LCPI26_0(%rip), %xmm5  # xmm5 = mem[0],zero
	subsd	%xmm0, %xmm5
	jmp	.LBB26_57
.LBB26_3:                               # %sw.bb.280
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	subsd	%xmm4, %xmm0
	divsd	(%rbx), %xmm1
	callq	pow
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	divsd	(%rbx), %xmm1
	movapd	%xmm2, %xmm0
	jmp	.LBB26_8
.LBB26_41:                              # %if.then.174
	subsd	40(%rbx), %xmm4
.LBB26_42:                              # %if.then.174
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm4, %xmm5
	jbe	.LBB26_25
	jmp	.LBB26_57
.LBB26_24:                              # %if.then.81
	subsd	%xmm0, %xmm4
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm4
	jbe	.LBB26_57
.LBB26_25:                              # %if.then.85
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	(%rbx), %xmm1
	movapd	%xmm4, %xmm0
	callq	pow
	movapd	%xmm0, %xmm5
	subsd	16(%rbx), %xmm5
	divsd	8(%rbx), %xmm5
	jmp	.LBB26_57
.LBB26_6:                               # %if.else.17
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	jmp	.LBB26_7
.LBB26_19:                              # %if.then.62
	mulsd	%xmm4, %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	%xmm5, %xmm0
	jbe	.LBB26_57
# BB#20:                                # %if.then.68
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	jmp	.LBB26_21
.LBB26_28:                              # %if.then.104
	mulsd	8(%rbx), %xmm4
	addsd	16(%rbx), %xmm4
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm5, %xmm4
	jbe	.LBB26_57
# BB#29:                                # %if.then.110
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
.LBB26_7:                               # %if.else.3
	movapd	%xmm4, %xmm0
.LBB26_8:                               # %if.else.3
	addq	$16, %rsp
	popq	%rbx
	jmp	pow                     # TAILCALL
.LBB26_36:                              # %if.then.147
	mulsd	8(%rbx), %xmm4
	addsd	16(%rbx), %xmm4
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB26_38
# BB#37:                                # %if.then.153
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movapd	%xmm4, %xmm0
	callq	pow
	movapd	%xmm0, %xmm5
	addsd	40(%rbx), %xmm5
	jmp	.LBB26_57
.LBB26_46:                              # %if.else.202
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movapd	%xmm4, %xmm0
.LBB26_21:                              # %cleanup
	callq	pow
	movapd	%xmm0, %xmm5
	addsd	24(%rbx), %xmm5
	jmp	.LBB26_57
.LBB26_49:                              # %if.then.230
	movsd	32(%rbx), %xmm5         # xmm5 = mem[0],zero
	jmp	.LBB26_57
.LBB26_38:                              # %if.else.158
	movsd	40(%rbx), %xmm5         # xmm5 = mem[0],zero
	jmp	.LBB26_57
.Lfunc_end26:
	.size	DefaultEvalParametricFn, .Lfunc_end26-DefaultEvalParametricFn
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_54
	.quad	.LBB26_52
	.quad	.LBB26_47
	.quad	.LBB26_40
	.quad	.LBB26_31
	.quad	.LBB26_23
	.quad	.LBB26_15
	.quad	.LBB26_9
	.quad	.LBB26_57
	.quad	.LBB26_4
	.quad	.LBB26_12
	.quad	.LBB26_18
	.quad	.LBB26_27
	.quad	.LBB26_35
	.quad	.LBB26_44
	.quad	.LBB26_48
	.quad	.LBB26_53

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(ctx != ((void*)0))"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsgamma.c"
	.size	.L.str.1, 23

	.type	.L__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk,@object # @__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk
.L__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk:
	.asciz	"void _cmsAllocCurvesPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__._cmsAllocCurvesPluginChunk, 96

	.type	_cmsAllocCurvesPluginChunk.CurvesPluginChunk,@object # @_cmsAllocCurvesPluginChunk.CurvesPluginChunk
	.local	_cmsAllocCurvesPluginChunk.CurvesPluginChunk
	.comm	_cmsAllocCurvesPluginChunk.CurvesPluginChunk,8,8
	.type	_cmsCurvesPluginChunk,@object # @_cmsCurvesPluginChunk
	.bss
	.globl	_cmsCurvesPluginChunk
	.align	8
_cmsCurvesPluginChunk:
	.zero	8
	.size	_cmsCurvesPluginChunk, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"(t != ((void*)0))"
	.size	.L.str.2, 18

	.type	.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries,@object # @__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries
.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries:
	.asciz	"cmsUInt32Number cmsGetToneCurveEstimatedTableEntries(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTableEntries, 75

	.type	.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable,@object # @__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable
.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable:
	.asciz	"const cmsUInt16Number *cmsGetToneCurveEstimatedTable(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsGetToneCurveEstimatedTable, 75

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(Segments != ((void*)0))"
	.size	.L.str.3, 25

	.type	.L__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve,@object # @__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve
.L__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve:
	.asciz	"cmsToneCurve *cmsBuildSegmentedToneCurve(cmsContext, cmsInt32Number, const cmsCurveSegment *)"
	.size	.L__PRETTY_FUNCTION__.cmsBuildSegmentedToneCurve, 94

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(Params != ((void*)0))"
	.size	.L.str.4, 23

	.type	.L__PRETTY_FUNCTION__.cmsBuildParametricToneCurve,@object # @__PRETTY_FUNCTION__.cmsBuildParametricToneCurve
.L__PRETTY_FUNCTION__.cmsBuildParametricToneCurve:
	.asciz	"cmsToneCurve *cmsBuildParametricToneCurve(cmsContext, cmsInt32Number, const cmsFloat64Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsBuildParametricToneCurve, 96

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid parametric curve type %d"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(Curve != ((void*)0))"
	.size	.L.str.6, 22

	.type	.L__PRETTY_FUNCTION__.cmsFreeToneCurveTriple,@object # @__PRETTY_FUNCTION__.cmsFreeToneCurveTriple
.L__PRETTY_FUNCTION__.cmsFreeToneCurveTriple:
	.asciz	"void cmsFreeToneCurveTriple(cmsToneCurve **)"
	.size	.L__PRETTY_FUNCTION__.cmsFreeToneCurveTriple, 45

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(X != ((void*)0))"
	.size	.L.str.7, 18

	.type	.L__PRETTY_FUNCTION__.cmsJoinToneCurve,@object # @__PRETTY_FUNCTION__.cmsJoinToneCurve
.L__PRETTY_FUNCTION__.cmsJoinToneCurve:
	.asciz	"cmsToneCurve *cmsJoinToneCurve(cmsContext, const cmsToneCurve *, const cmsToneCurve *, cmsUInt32Number)"
	.size	.L__PRETTY_FUNCTION__.cmsJoinToneCurve, 104

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"(Y != ((void*)0))"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(InCurve != ((void*)0))"
	.size	.L.str.9, 24

	.type	.L__PRETTY_FUNCTION__.cmsReverseToneCurveEx,@object # @__PRETTY_FUNCTION__.cmsReverseToneCurveEx
.L__PRETTY_FUNCTION__.cmsReverseToneCurveEx:
	.asciz	"cmsToneCurve *cmsReverseToneCurveEx(cmsInt32Number, const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsReverseToneCurveEx, 74

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"(InGamma != ((void*)0))"
	.size	.L.str.10, 24

	.type	.L__PRETTY_FUNCTION__.cmsReverseToneCurve,@object # @__PRETTY_FUNCTION__.cmsReverseToneCurve
.L__PRETTY_FUNCTION__.cmsReverseToneCurve:
	.asciz	"cmsToneCurve *cmsReverseToneCurve(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsReverseToneCurve, 56

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cmsSmoothToneCurve: too many points."
	.size	.L.str.11, 37

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cmsSmoothToneCurve: Non-Monotonic."
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"cmsSmoothToneCurve: Degenerated, mostly zeros."
	.size	.L.str.13, 47

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cmsSmoothToneCurve: Degenerated, mostly poles."
	.size	.L.str.14, 47

	.type	.L__PRETTY_FUNCTION__.cmsIsToneCurveLinear,@object # @__PRETTY_FUNCTION__.cmsIsToneCurveLinear
.L__PRETTY_FUNCTION__.cmsIsToneCurveLinear:
	.asciz	"cmsBool cmsIsToneCurveLinear(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsIsToneCurveLinear, 51

	.type	.L__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic,@object # @__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic
.L__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic:
	.asciz	"cmsBool cmsIsToneCurveMonotonic(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsIsToneCurveMonotonic, 54

	.type	.L__PRETTY_FUNCTION__.cmsIsToneCurveDescending,@object # @__PRETTY_FUNCTION__.cmsIsToneCurveDescending
.L__PRETTY_FUNCTION__.cmsIsToneCurveDescending:
	.asciz	"cmsBool cmsIsToneCurveDescending(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsIsToneCurveDescending, 55

	.type	.L__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment,@object # @__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment
.L__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment:
	.asciz	"cmsBool cmsIsToneCurveMultisegment(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsIsToneCurveMultisegment, 57

	.type	.L__PRETTY_FUNCTION__.cmsGetToneCurveParametricType,@object # @__PRETTY_FUNCTION__.cmsGetToneCurveParametricType
.L__PRETTY_FUNCTION__.cmsGetToneCurveParametricType:
	.asciz	"cmsInt32Number cmsGetToneCurveParametricType(const cmsToneCurve *)"
	.size	.L__PRETTY_FUNCTION__.cmsGetToneCurveParametricType, 67

	.type	.L__PRETTY_FUNCTION__.cmsEvalToneCurveFloat,@object # @__PRETTY_FUNCTION__.cmsEvalToneCurveFloat
.L__PRETTY_FUNCTION__.cmsEvalToneCurveFloat:
	.asciz	"cmsFloat32Number cmsEvalToneCurveFloat(const cmsToneCurve *, cmsFloat32Number)"
	.size	.L__PRETTY_FUNCTION__.cmsEvalToneCurveFloat, 79

	.type	.L__PRETTY_FUNCTION__.cmsEvalToneCurve16,@object # @__PRETTY_FUNCTION__.cmsEvalToneCurve16
.L__PRETTY_FUNCTION__.cmsEvalToneCurve16:
	.asciz	"cmsUInt16Number cmsEvalToneCurve16(const cmsToneCurve *, cmsUInt16Number)"
	.size	.L__PRETTY_FUNCTION__.cmsEvalToneCurve16, 74

	.type	.L__PRETTY_FUNCTION__.cmsEstimateGamma,@object # @__PRETTY_FUNCTION__.cmsEstimateGamma
.L__PRETTY_FUNCTION__.cmsEstimateGamma:
	.asciz	"cmsFloat64Number cmsEstimateGamma(const cmsToneCurve *, cmsFloat64Number)"
	.size	.L__PRETTY_FUNCTION__.cmsEstimateGamma, 74

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(head != ((void*)0))"
	.size	.L.str.15, 21

	.type	.L__PRETTY_FUNCTION__.DupPluginCurvesList,@object # @__PRETTY_FUNCTION__.DupPluginCurvesList
.L__PRETTY_FUNCTION__.DupPluginCurvesList:
	.asciz	"void DupPluginCurvesList(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__.DupPluginCurvesList, 89

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Couldn't create tone curve of more than 65530 entries"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Couldn't create tone curve with zero segments and no table"
	.size	.L.str.17, 59

	.type	DefaultCurves,@object   # @DefaultCurves
	.data
	.align	8
DefaultCurves:
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	108                     # 0x6c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	DefaultEvalParametricFn
	.quad	0
	.size	DefaultCurves, 184


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
