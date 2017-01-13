	.text
	.file	"cmsopt.bc"
	.globl	_cmsAllocOptimizationPluginChunk
	.align	16, 0x90
	.type	_cmsAllocOptimizationPluginChunk,@function
_cmsAllocOptimizationPluginChunk:       # @_cmsAllocOptimizationPluginChunk
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
	testq	%rsi, %rsi
	je	.LBB0_12
# BB#1:                                 # %if.then
	movq	$0, (%rsp)
	testq	%r14, %r14
	je	.LBB0_15
# BB#2:                                 # %cond.end.i
	movq	112(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_16
# BB#3:                                 # %cond.end.5.i
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
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB0_14
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$0, 8(%rax)
	testq	%r12, %r12
	je	.LBB0_8
# BB#7:                                 # %if.then.8.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, 8(%r12)
.LBB0_8:                                # %if.end.10.i
                                        #   in Loop: Header=BB0_5 Depth=1
	testq	%r15, %r15
	jne	.LBB0_10
# BB#9:                                 # %if.then.13.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, (%rsp)
	movq	%rax, %r15
.LBB0_10:                               # %for.inc.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	8(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB0_5
.LBB0_11:                               # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB0_13
.LBB0_12:                               # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType, %esi
.LBB0_13:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 112(%r14)
.LBB0_14:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB0_15:                               # %cond.false.i
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$1655, %edx             # imm = 0x677
	movl	$.L__PRETTY_FUNCTION__.DupPluginOptimizationList, %ecx
	callq	__assert_fail
.LBB0_16:                               # %cond.false.4.i
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1656, %edx             # imm = 0x678
	movl	$.L__PRETTY_FUNCTION__.DupPluginOptimizationList, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_cmsAllocOptimizationPluginChunk, .Lfunc_end0-_cmsAllocOptimizationPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterOptimizationPlugin
	.align	16, 0x90
	.type	_cmsRegisterOptimizationPlugin,@function
_cmsRegisterOptimizationPlugin:         # @_cmsRegisterOptimizationPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$12, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB1_1
# BB#2:                                 # %if.end
	xorl	%r15d, %r15d
	cmpq	$0, 24(%rbx)
	je	.LBB1_6
# BB#3:                                 # %if.end.3
	movl	$16, %esi
	movq	%rbp, %rdi
	callq	_cmsPluginMalloc
	testq	%rax, %rax
	je	.LBB1_6
# BB#4:                                 # %if.end.7
	movq	24(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	(%r14), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, (%r14)
	jmp	.LBB1_5
.LBB1_1:                                # %if.then
	movq	$0, (%r14)
.LBB1_5:                                # %cleanup
	movl	$1, %r15d
.LBB1_6:                                # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_cmsRegisterOptimizationPlugin, .Lfunc_end1-_cmsRegisterOptimizationPlugin
	.cfi_endproc

	.globl	_cmsOptimizePipeline
	.align	16, 0x90
	.type	_cmsOptimizePipeline,@function
_cmsOptimizePipeline:                   # @_cmsOptimizePipeline
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
	subq	$24, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 80
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
	movq	%r9, %r13
	movq	%r8, %rbx
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movl	$12, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testb	$2, (%r13)
	movq	(%rbp), %rdi
	jne	.LBB2_13
# BB#1:                                 # %if.end
	cmpq	$0, (%rdi)
	je	.LBB2_2
# BB#3:                                 # %if.end.4
	callq	PreOptimize
	movq	(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB2_2
# BB#4:                                 # %if.end.9
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	testb	$1, 1(%r13)
	jne	.LBB2_12
# BB#5:                                 # %if.end.13
	movq	(%r14), %r14
	movl	$DefaultOptimization, %ebx
	testq	%r14, %r14
	je	.LBB2_9
# BB#6:
	movl	$DefaultOptimization, %ebx
	.align	16, 0x90
.LBB2_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%r13, %r8
	callq	*(%r14)
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB2_12
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	8(%r14), %r14
	testq	%r14, %r14
	jne	.LBB2_8
	.align	16, 0x90
.LBB2_9:                                # %for.body.21
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%r13, %r8
	callq	*(%rbx)
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB2_12
# BB#10:                                # %for.inc.27
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_9
# BB#11:
	movl	12(%rsp), %eax          # 4-byte Reload
	jmp	.LBB2_12
.LBB2_13:                               # %if.then
	callq	PreOptimize
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	movq	%r13, %r8
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	OptimizeByResampling    # TAILCALL
.LBB2_2:                                # %if.then.3
	movl	$FastIdentity16, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, %rdx
	callq	_cmsPipelineSetOptimizationParameters
	movl	$1, %eax
.LBB2_12:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_cmsOptimizePipeline, .Lfunc_end2-_cmsOptimizePipeline
	.cfi_endproc

	.align	16, 0x90
	.type	PreOptimize,@function
PreOptimize:                            # @PreOptimize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
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
	movq	%rdi, %r15
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_4 Depth 3
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_9 Depth 3
                                        #     Child Loop BB3_16 Depth 2
                                        #       Child Loop BB3_17 Depth 3
                                        #     Child Loop BB3_24 Depth 2
                                        #       Child Loop BB3_25 Depth 3
                                        #     Child Loop BB3_32 Depth 2
                                        #       Child Loop BB3_33 Depth 3
                                        #     Child Loop BB3_40 Depth 2
                                        #       Child Loop BB3_41 Depth 3
                                        #     Child Loop BB3_48 Depth 2
                                        #       Child Loop BB3_49 Depth 3
	movl	%ecx, %r14d
	movq	(%r15), %rcx
	testq	%rcx, %rcx
	movl	$0, %ebp
	movq	%r15, %rbx
	movl	$0, %r12d
	movl	$0, %eax
	je	.LBB3_55
.LBB3_3:                                # %while.body.lr.ph.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_4 Depth 3
	movq	%rcx, %rdi
	.align	16, 0x90
.LBB3_4:                                # %while.body.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1768189472, 12(%rdi)   # imm = 0x69646E20
	jne	.LBB3_2
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB3_4 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rbx)
	callq	cmsStageFree
	movq	(%rbx), %rdi
	movl	$1, %ebp
	testq	%rdi, %rdi
	jne	.LBB3_4
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_2:                                # %while.cond.outer.loopexit.i
                                        #   in Loop: Header=BB3_3 Depth=2
	addq	$56, %rdi
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	movq	%rdi, %rbx
	jne	.LBB3_3
	.align	16, 0x90
.LBB3_6:                                # %_Remove1Op.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%r15, %rbx
	jne	.LBB3_8
# BB#7:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	%ebp, %r12d
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%rcx, %rbx
.LBB3_8:                                # %while.body.lr.ph.i.19
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_9 Depth 3
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB3_9:                                # %while.body.i.20
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_15
# BB#10:                                # %if.end.4.i
                                        #   in Loop: Header=BB3_9 Depth=3
	cmpl	$1815246880, 12(%rcx)   # imm = 0x6C327820
	leaq	56(%rcx), %rcx
	jne	.LBB3_11
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB3_9 Depth=3
	cmpl	$2016570400, 12(%rdi)   # imm = 0x78326C20
	jne	.LBB3_13
# BB#14:                                # %if.then.8.i
                                        #   in Loop: Header=BB3_9 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rcx)
	callq	cmsStageFree
	movq	(%rbx), %rdi
	movq	56(%rdi), %rax
	movq	%rax, (%rbx)
	callq	cmsStageFree
	movq	(%rbx), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB3_9
	jmp	.LBB3_15
	.align	16, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%rcx, %rbx
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_15:                               # %_Remove2Op.exit
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rdi
	movl	%eax, %r12d
	orl	%ebp, %r12d
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%r15, %rbp
	jne	.LBB3_16
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_19:                               #   in Loop: Header=BB3_16 Depth=2
	movq	%rcx, %rbp
.LBB3_16:                               # %while.body.lr.ph.i.28
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_17 Depth 3
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB3_17:                               # %while.body.i.32
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_23
# BB#18:                                # %if.end.4.i.35
                                        #   in Loop: Header=BB3_17 Depth=3
	cmpl	$2016570400, 12(%rcx)   # imm = 0x78326C20
	leaq	56(%rcx), %rcx
	jne	.LBB3_19
# BB#20:                                # %land.lhs.true.i.38
                                        #   in Loop: Header=BB3_17 Depth=3
	cmpl	$1815246880, 12(%rdi)   # imm = 0x6C327820
	jne	.LBB3_21
# BB#22:                                # %if.then.8.i.42
                                        #   in Loop: Header=BB3_17 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rcx)
	callq	cmsStageFree
	movq	(%rbp), %rdi
	movq	56(%rdi), %rax
	movq	%rax, (%rbp)
	callq	cmsStageFree
	movq	(%rbp), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB3_17
	jmp	.LBB3_23
	.align	16, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_16 Depth=2
	movq	%rcx, %rbp
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_23:                               # %_Remove2Op.exit44
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rdi
	orl	%eax, %r12d
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%r15, %rbp
	jne	.LBB3_24
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_27:                               #   in Loop: Header=BB3_24 Depth=2
	movq	%rcx, %rbp
.LBB3_24:                               # %while.body.lr.ph.i.49
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_25 Depth 3
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB3_25:                               # %while.body.i.53
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_31
# BB#26:                                # %if.end.4.i.56
                                        #   in Loop: Header=BB3_25 Depth=3
	cmpl	$874525216, 12(%rcx)    # imm = 0x34203220
	leaq	56(%rcx), %rcx
	jne	.LBB3_27
# BB#28:                                # %land.lhs.true.i.59
                                        #   in Loop: Header=BB3_25 Depth=3
	cmpl	$840971296, 12(%rdi)    # imm = 0x32203420
	jne	.LBB3_29
# BB#30:                                # %if.then.8.i.63
                                        #   in Loop: Header=BB3_25 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rcx)
	callq	cmsStageFree
	movq	(%rbp), %rdi
	movq	56(%rdi), %rax
	movq	%rax, (%rbp)
	callq	cmsStageFree
	movq	(%rbp), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB3_25
	jmp	.LBB3_31
	.align	16, 0x90
.LBB3_29:                               #   in Loop: Header=BB3_24 Depth=2
	movq	%rcx, %rbp
	jmp	.LBB3_24
.LBB3_31:                               # %_Remove2Op.exit65
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rdi
	orl	%eax, %r12d
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%r15, %rbp
	jne	.LBB3_32
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_35:                               #   in Loop: Header=BB3_32 Depth=2
	movq	%rcx, %rbp
.LBB3_32:                               # %while.body.lr.ph.i.70
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_33 Depth 3
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB3_33:                               # %while.body.i.74
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_39
# BB#34:                                # %if.end.4.i.77
                                        #   in Loop: Header=BB3_33 Depth=3
	cmpl	$840971296, 12(%rcx)    # imm = 0x32203420
	leaq	56(%rcx), %rcx
	jne	.LBB3_35
# BB#36:                                # %land.lhs.true.i.80
                                        #   in Loop: Header=BB3_33 Depth=3
	cmpl	$874525216, 12(%rdi)    # imm = 0x34203220
	jne	.LBB3_37
# BB#38:                                # %if.then.8.i.84
                                        #   in Loop: Header=BB3_33 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rcx)
	callq	cmsStageFree
	movq	(%rbp), %rdi
	movq	56(%rdi), %rax
	movq	%rax, (%rbp)
	callq	cmsStageFree
	movq	(%rbp), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB3_33
	jmp	.LBB3_39
	.align	16, 0x90
.LBB3_37:                               #   in Loop: Header=BB3_32 Depth=2
	movq	%rcx, %rbp
	jmp	.LBB3_32
.LBB3_39:                               # %_Remove2Op.exit86
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rdi
	orl	%eax, %r12d
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%r15, %rbp
	jne	.LBB3_40
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_43:                               #   in Loop: Header=BB3_40 Depth=2
	movq	%rcx, %rbp
.LBB3_40:                               # %while.body.lr.ph.i.91
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_41 Depth 3
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB3_41:                               # %while.body.i.95
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_47
# BB#42:                                # %if.end.4.i.98
                                        #   in Loop: Header=BB3_41 Depth=3
	cmpl	$1681026080, 12(%rcx)   # imm = 0x64326C20
	leaq	56(%rcx), %rcx
	jne	.LBB3_43
# BB#44:                                # %land.lhs.true.i.101
                                        #   in Loop: Header=BB3_41 Depth=3
	cmpl	$1815241760, 12(%rdi)   # imm = 0x6C326420
	jne	.LBB3_45
# BB#46:                                # %if.then.8.i.105
                                        #   in Loop: Header=BB3_41 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rcx)
	callq	cmsStageFree
	movq	(%rbp), %rdi
	movq	56(%rdi), %rax
	movq	%rax, (%rbp)
	callq	cmsStageFree
	movq	(%rbp), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB3_41
	jmp	.LBB3_47
	.align	16, 0x90
.LBB3_45:                               #   in Loop: Header=BB3_40 Depth=2
	movq	%rcx, %rbp
	jmp	.LBB3_40
.LBB3_47:                               # %_Remove2Op.exit107
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rdi
	orl	%eax, %r12d
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%r15, %rbp
	jne	.LBB3_48
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_51:                               #   in Loop: Header=BB3_48 Depth=2
	movq	%rcx, %rbp
.LBB3_48:                               # %while.body.lr.ph.i.112
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_49 Depth 3
	movq	%rdi, %rcx
	.align	16, 0x90
.LBB3_49:                               # %while.body.i.116
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_55
# BB#50:                                # %if.end.4.i.119
                                        #   in Loop: Header=BB3_49 Depth=3
	cmpl	$1681029152, 12(%rcx)   # imm = 0x64327820
	leaq	56(%rcx), %rcx
	jne	.LBB3_51
# BB#52:                                # %land.lhs.true.i.122
                                        #   in Loop: Header=BB3_49 Depth=3
	cmpl	$2016568352, 12(%rdi)   # imm = 0x78326420
	jne	.LBB3_53
# BB#54:                                # %if.then.8.i.126
                                        #   in Loop: Header=BB3_49 Depth=3
	movq	56(%rdi), %rax
	movq	%rax, (%rcx)
	callq	cmsStageFree
	movq	(%rbp), %rdi
	movq	56(%rdi), %rax
	movq	%rax, (%rbp)
	callq	cmsStageFree
	movq	(%rbp), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	jne	.LBB3_49
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_53:                               #   in Loop: Header=BB3_48 Depth=2
	movq	%rcx, %rbp
	jmp	.LBB3_48
	.align	16, 0x90
.LBB3_55:                               # %_Remove2Op.exit128
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, %ecx
	orl	%eax, %r12d
	jne	.LBB3_1
# BB#56:                                # %do.end
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	PreOptimize, .Lfunc_end3-PreOptimize
	.cfi_endproc

	.align	16, 0x90
	.type	OptimizeByResampling,@function
OptimizeByResampling:                   # @OptimizeByResampling
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
	subq	$72, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 128
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movl	(%rbx), %edi
	callq	_cmsFormatterIsFloat
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB4_49
# BB#1:                                 # %lor.lhs.false
	movl	(%rbp), %edi
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	jne	.LBB4_49
# BB#2:                                 # %if.end
	movl	%r12d, 44(%rsp)         # 4-byte Spill
	movzwl	2(%rbx), %edi
	andl	$31, %edi
	callq	_cmsICCcolorSpace
	movl	%eax, %ebx
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movzwl	2(%rbp), %edi
	andl	$31, %edi
	callq	_cmsICCcolorSpace
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	(%r14), %esi
	movl	%ebx, %edi
	callq	_cmsReasonableGridpointsByColorspace
	movl	%eax, %ebx
	movq	(%r13), %rdi
	callq	cmsPipelineStageCount
	testl	%eax, %eax
	movl	$2, %ebp
	cmovnel	%ebx, %ebp
	movq	(%r13), %r12
	movq	%r12, %rdi
	callq	cmsPipelineGetPtrToFirstStage
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageNext
.LBB4_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	$1852009504, %eax       # imm = 0x6E636C20
	jne	.LBB4_5
	jmp	.LBB4_49
.LBB4_6:                                # %for.end
	movq	56(%r12), %rdi
	movl	8(%r12), %esi
	movl	12(%r12), %edx
	callq	cmsPipelineAlloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB4_49
# BB#7:                                 # %if.end.21
	xorl	%r15d, %r15d
	testb	$16, (%r14)
	movl	$0, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	je	.LBB4_16
# BB#8:                                 # %if.then.24
	movq	%r12, %rdi
	callq	cmsPipelineGetPtrToFirstStage
	movq	%rax, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpl	$1668707188, 8(%rcx)    # imm = 0x63767374
	jne	.LBB4_16
# BB#9:                                 # %if.then.27
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB4_14
# BB#10:                                # %if.end.i
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cmsStageOutputChannels
	xorl	%ecx, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB4_16
# BB#11:                                # %for.body.lr.ph.i
	movl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
.LBB4_13:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	callq	cmsIsToneCurveLinear
	testl	%eax, %eax
	je	.LBB4_14
# BB#12:                                # %for.cond.i
                                        #   in Loop: Header=BB4_13 Depth=1
	incq	%rbx
	cmpq	8(%rsp), %rbx           # 8-byte Folded Reload
	jb	.LBB4_13
	jmp	.LBB4_16
.LBB4_14:                               # %if.then.30
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cmsStageDup
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_28
# BB#15:                                # %if.end.35
	leaq	64(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	cmsPipelineUnlinkStage
.LBB4_16:                               # %if.end.38
	movq	56(%r12), %rdi
	movl	8(%r12), %edx
	movl	12(%r12), %ecx
	xorl	%r8d, %r8d
	movl	%ebp, %esi
	callq	cmsStageAllocCLut16bit
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_49
# BB#17:                                # %if.end.45
	movl	$1, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_28
# BB#18:                                # %if.end.49
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testb	$1, (%r14)
	je	.LBB4_27
# BB#19:                                # %if.then.52
	movq	%r12, %rdi
	callq	cmsPipelineGetPtrToLastStage
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rax, %rdi
	callq	cmsStageType
	xorl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	cmpl	$1668707188, %eax       # imm = 0x63767374
	jne	.LBB4_27
# BB#20:                                # %if.then.56
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rax, %rax
	je	.LBB4_25
# BB#21:                                # %if.end.i.71
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cmsStageOutputChannels
	xorl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB4_27
# BB#22:                                # %for.body.lr.ph.i.72
	movl	%eax, %ebx
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB4_24:                               # %for.body.i.80
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax,%r15,8), %rdi
	callq	cmsIsToneCurveLinear
	testl	%eax, %eax
	je	.LBB4_25
# BB#23:                                # %for.cond.i.74
                                        #   in Loop: Header=BB4_24 Depth=1
	incq	%r15
	cmpq	%rbx, %r15
	jb	.LBB4_24
	jmp	.LBB4_27
.LBB4_25:                               # %if.then.59
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cmsStageDup
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_28
# BB#26:                                # %if.end.64
	leaq	56(%rsp), %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	callq	cmsPipelineUnlinkStage
.LBB4_27:                               # %if.end.70
	movl	$XFormSampler16, %esi
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	cmsStageSampleCLut16bit
	testl	%eax, %eax
	je	.LBB4_28
# BB#33:                                # %if.end.88
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_35
# BB#34:                                # %if.then.90
	callq	cmsStageFree
.LBB4_35:                               # %if.end.91
	movq	56(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_37
# BB#36:                                # %if.then.93
	callq	cmsStageFree
.LBB4_37:                               # %if.end.94
	movq	%r12, %rdi
	callq	cmsPipelineFree
	movq	48(%rbp), %rax
	xorl	%ecx, %ecx
	movq	24(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB4_39
# BB#38:                                # %if.else
	movq	48(%rdx), %rcx
	movq	8(%rcx), %rcx
.LBB4_39:                               # %if.end.98
	xorl	%r9d, %r9d
	movq	16(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	movl	44(%rsp), %ebx          # 4-byte Reload
	je	.LBB4_41
# BB#40:                                # %if.else.101
	movq	48(%rdx), %rdx
	movq	8(%rdx), %r9
.LBB4_41:                               # %if.end.104
	movq	8(%rax), %rax
	movq	%rcx, %rdx
	orq	%r9, %rdx
	jne	.LBB4_43
# BB#42:                                # %if.then.107
	movq	128(%rax), %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB4_44
.LBB4_28:                               # %Error
	movq	64(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB4_30
# BB#29:                                # %if.then.75
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_50
.LBB4_30:                               # %if.end.80
	movq	56(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB4_32
# BB#31:                                # %if.then.82
	movl	$1, %esi
	movq	%r12, %rdi
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB4_51
.LBB4_32:                               # %if.end.87
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cmsPipelineFree
	xorl	%r15d, %r15d
	jmp	.LBB4_49
.LBB4_43:                               # %if.else.109
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	56(%rbp), %rdi
	movl	8(%rbp), %edx
	movl	12(%rbp), %r8d
	movq	%rax, %rsi
	callq	PrelinOpt16alloc
	movl	$PrelinEval16, %esi
	movl	$PrelinOpt16free, %ecx
	movl	$Prelin16dup, %r8d
	movq	%rbp, %rdi
.LBB4_44:                               # %if.end.115
	movq	%rax, %rdx
	callq	_cmsPipelineSetOptimizationParameters
	movl	(%r14), %eax
	cmpl	$3, %ebx
	jne	.LBB4_46
# BB#45:                                # %if.then.117
	orl	$4, %eax
	movl	%eax, (%r14)
.LBB4_46:                               # %if.end.118
	testb	$4, %al
	jne	.LBB4_48
# BB#47:                                # %if.then.121
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	movl	36(%rsp), %edx          # 4-byte Reload
	callq	FixWhiteMisalignment
.LBB4_48:                               # %if.end.123
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%r13)
	movl	$1, %r15d
.LBB4_49:                               # %cleanup.124
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_50:                               # %if.then.78
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$649, %edx              # imm = 0x289
	movl	$.L__PRETTY_FUNCTION__.OptimizeByResampling, %ecx
	callq	__assert_fail
.LBB4_51:                               # %if.then.85
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$654, %edx              # imm = 0x28E
	movl	$.L__PRETTY_FUNCTION__.OptimizeByResampling, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	OptimizeByResampling, .Lfunc_end4-OptimizeByResampling
	.cfi_endproc

	.align	16, 0x90
	.type	FastIdentity16,@function
FastIdentity16:                         # @FastIdentity16
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdx), %r8d
	testq	%r8, %r8
	je	.LBB5_8
# BB#1:                                 # %for.body.lr.ph
	movl	%r8d, %eax
	andl	$15, %eax
	xorl	%ecx, %ecx
	cmpl	%eax, %r8d
	je	.LBB5_6
# BB#2:                                 # %vector.memcheck
	leaq	-2(%rdi,%r8,2), %rdx
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdx
	jb	.LBB5_4
# BB#3:                                 # %vector.memcheck
	leaq	-2(%rsi,%r8,2), %rdx
	cmpq	%rdi, %rdx
	jae	.LBB5_6
.LBB5_4:                                # %vector.body.preheader
	movq	%r8, %rcx
	subq	%rax, %rcx
	leaq	16(%rdi), %rdx
	leaq	16(%rsi), %rax
	movl	%r8d, %r10d
	andl	$15, %r10d
	movq	%r8, %r9
	subq	%r10, %r9
	.align	16, 0x90
.LBB5_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rdx), %xmm0
	movups	(%rdx), %xmm1
	movups	%xmm0, -16(%rax)
	movups	%xmm1, (%rax)
	addq	$32, %rdx
	addq	$32, %rax
	addq	$-16, %r9
	jne	.LBB5_5
.LBB5_6:                                # %middle.block
	cmpq	%rcx, %r8
	je	.LBB5_8
	.align	16, 0x90
.LBB5_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rdi,%rcx,2), %ax
	movw	%ax, (%rsi,%rcx,2)
	incq	%rcx
	cmpq	%r8, %rcx
	jb	.LBB5_7
.LBB5_8:                                # %for.end
	retq
.Lfunc_end5:
	.size	FastIdentity16, .Lfunc_end5-FastIdentity16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4679239875398991872     # double 65535
.LCPI6_8:
	.quad	4602678819172646912     # double 0.5
.LCPI6_9:
	.quad	-4548635898522107904    # double -32767
.LCPI6_10:
	.quad	4771563805199040512     # double 103079215104
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4679239875398991872     # double 6.553500e+04
.LCPI6_2:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI6_3:
	.quad	-4548635898522107904    # double -3.276700e+04
	.quad	-4548635898522107904    # double -3.276700e+04
.LCPI6_4:
	.quad	4771563805199040512     # double 1.030792e+11
	.quad	4771563805199040512     # double 1.030792e+11
.LCPI6_5:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
.LCPI6_6:
	.quad	32767                   # 0x7fff
	.quad	32767                   # 0x7fff
.LCPI6_7:
	.quad	65535                   # 0xffff
	.quad	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	XFormSampler16,@function
XFormSampler16:                         # @XFormSampler16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 160
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	8(%r15), %eax
	cmpq	$16, %rax
	jae	.LBB6_20
# BB#1:                                 # %cond.end
	cmpl	$15, 12(%r15)
	ja	.LBB6_21
# BB#2:                                 # %for.cond.preheader
	testl	%eax, %eax
	je	.LBB6_8
# BB#3:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB6_5
# BB#4:                                 # %for.body.prol
	movzwl	(%rdi), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	.LCPI6_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 64(%rsp)
	movl	$1, %ecx
.LBB6_5:                                # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB6_8
# BB#6:
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB6_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%rcx,2), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 64(%rsp,%rcx,4)
	movzwl	2(%rdi,%rcx,2), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 68(%rsp,%rcx,4)
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jb	.LBB6_7
.LBB6_8:                                # %for.end
	leaq	64(%rsp), %rdi
	leaq	(%rsp), %rbx
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	cmsPipelineEvalFloat
	movl	12(%r15), %eax
	testq	%rax, %rax
	je	.LBB6_19
# BB#9:                                 # %for.body.16.lr.ph
	movl	%eax, %edx
	andl	$1, %edx
	xorl	%ecx, %ecx
	cmpl	%edx, %eax
	je	.LBB6_12
# BB#10:                                # %vector.body.preheader
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movl	%eax, %esi
	andl	$1, %esi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movapd	.LCPI6_1(%rip), %xmm3   # xmm3 = [6.553500e+04,6.553500e+04]
	movapd	.LCPI6_2(%rip), %xmm8   # xmm8 = [5.000000e-01,5.000000e-01]
	xorpd	%xmm9, %xmm9
	movapd	.LCPI6_3(%rip), %xmm10  # xmm10 = [-3.276700e+04,-3.276700e+04]
	movapd	.LCPI6_4(%rip), %xmm4   # xmm4 = [1.030792e+11,1.030792e+11]
	movapd	.LCPI6_5(%rip), %xmm5   # xmm5 = [4294967295,4294967295]
	movdqa	.LCPI6_6(%rip), %xmm6   # xmm6 = [32767,32767]
	movapd	.LCPI6_7(%rip), %xmm7   # xmm7 = [65535,65535]
	movq	%r14, %rsi
	.align	16, 0x90
.LBB6_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	(%rbx), %xmm1
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
	movd	%xmm0, (%rsi)
	addq	$8, %rbx
	addq	$4, %rsi
	addq	$-2, %rdx
	jne	.LBB6_11
.LBB6_12:                               # %middle.block
	cmpq	%rcx, %rax
	je	.LBB6_19
# BB#13:
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI6_8(%rip), %xmm1   # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	movsd	.LCPI6_9(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI6_10(%rip), %xmm4  # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB6_14:                               # %for.body.16
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsp,%rcx,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	ucomisd	%xmm5, %xmm2
	jae	.LBB6_15
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB6_14 Depth=1
	movw	$-1, %dx
	ucomisd	.LCPI6_0(%rip), %xmm5
	jae	.LBB6_18
# BB#17:                                # %if.end.3.i
                                        #   in Loop: Header=BB6_14 Depth=1
	addsd	%xmm3, %xmm5
	addsd	%xmm4, %xmm5
	movd	%xmm5, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB6_18
	.align	16, 0x90
.LBB6_15:                               #   in Loop: Header=BB6_14 Depth=1
	xorl	%edx, %edx
.LBB6_18:                               # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB6_14 Depth=1
	movw	%dx, (%r14,%rcx,2)
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB6_14
.LBB6_19:                               # %for.end.24
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB6_20:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$330, %edx              # imm = 0x14A
	movl	$.L__PRETTY_FUNCTION__.XFormSampler16, %ecx
	callq	__assert_fail
.LBB6_21:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$331, %edx              # imm = 0x14B
	movl	$.L__PRETTY_FUNCTION__.XFormSampler16, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	XFormSampler16, .Lfunc_end6-XFormSampler16
	.cfi_endproc

	.align	16, 0x90
	.type	PrelinOpt16alloc,@function
PrelinOpt16alloc:                       # @PrelinOpt16alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r13d
	movq	%rcx, %rbp
	movl	%edx, %r12d
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r15
	movl	$176, %esi
	callq	_cmsMallocZero
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_13
# BB#1:                                 # %if.end
	movq	%rax, %rbx
	movl	%r12d, 8(%rbx)
	movl	%r13d, 12(%rbx)
	testl	%r12d, %r12d
	jle	.LBB7_7
# BB#2:                                 # %for.body.lr.ph
	addq	$80, %rax
	movq	%rbp, %rcx
	.align	16, 0x90
.LBB7_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB7_4
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	(%rcx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	128(%rdx), %rdx
	movq	%rdx, -64(%rax)
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_4:                                # %if.then.5
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$0, (%rax)
	movq	$Eval16nop1D, -64(%rax)
.LBB7_6:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	addq	$8, %rax
	addq	$8, %rcx
	decl	%r12d
	jne	.LBB7_3
.LBB7_7:                                # %for.end
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 152(%rbx)
	movq	128(%rax), %rax
	movq	%rax, 144(%rbx)
	movl	$8, %edx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	_cmsCalloc
	movq	%rax, 160(%rbx)
	movl	$8, %edx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	_cmsCalloc
	movq	%rax, 168(%rbx)
	testl	%r13d, %r13d
	jle	.LBB7_13
# BB#8:                                 # %for.body.26.lr.ph
	movl	%r13d, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB7_9:                                # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB7_10
# BB#11:                                # %if.else.35
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	(%r14,%rcx,8), %rdx
	movq	(%rdx), %rdx
	movq	168(%rbx), %rsi
	movq	%rdx, (%rsi,%rcx,8)
	movq	160(%rbx), %rdx
	movq	168(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	128(%rsi), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_10:                               # %if.then.28
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	168(%rbx), %rdx
	movq	$0, (%rdx,%rcx,8)
	movq	160(%rbx), %rdx
	movq	$Eval16nop1D, (%rdx,%rcx,8)
.LBB7_12:                               # %for.inc.51
                                        #   in Loop: Header=BB7_9 Depth=1
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB7_9
.LBB7_13:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	PrelinOpt16alloc, .Lfunc_end7-PrelinOpt16alloc
	.cfi_endproc

	.align	16, 0x90
	.type	PrelinEval16,@function
PrelinEval16:                           # @PrelinEval16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 96
.Ltmp80:
	.cfi_offset %rbx, -48
.Ltmp81:
	.cfi_offset %r12, -40
.Ltmp82:
	.cfi_offset %r13, -32
.Ltmp83:
	.cfi_offset %r14, -24
.Ltmp84:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	cmpl	$0, 8(%r14)
	jle	.LBB8_3
# BB#1:                                 # %for.body.lr.ph
	leaq	32(%rsp), %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r14,%rbx,8), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*16(%r14,%rbx,8)
	incq	%rbx
	movslq	8(%r14), %rax
	addq	$2, %r12
	addq	$2, %r13
	cmpq	%rax, %rbx
	jl	.LBB8_2
.LBB8_3:                                # %for.end
	movq	152(%r14), %rdx
	leaq	32(%rsp), %rdi
	leaq	(%rsp), %r12
	movq	%r12, %rsi
	callq	*144(%r14)
	cmpl	$0, 12(%r14)
	jle	.LBB8_6
# BB#4:                                 # %for.body.10.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_5:                                # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	movq	160(%r14), %rax
	movq	168(%r14), %rcx
	movq	(%rcx,%rbx,8), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*(%rax,%rbx,8)
	incq	%rbx
	movslq	12(%r14), %rax
	addq	$2, %r12
	addq	$2, %r15
	cmpq	%rax, %rbx
	jl	.LBB8_5
.LBB8_6:                                # %for.end.21
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	PrelinEval16, .Lfunc_end8-PrelinEval16
	.cfi_endproc

	.align	16, 0x90
	.type	PrelinOpt16free,@function
PrelinOpt16free:                        # @PrelinOpt16free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 32
.Ltmp88:
	.cfi_offset %rbx, -24
.Ltmp89:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	160(%r14), %rsi
	callq	_cmsFree
	movq	168(%r14), %rsi
	movq	%rbx, %rdi
	callq	_cmsFree
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsFree                # TAILCALL
.Lfunc_end9:
	.size	PrelinOpt16free, .Lfunc_end9-PrelinOpt16free
	.cfi_endproc

	.align	16, 0x90
	.type	Prelin16dup,@function
Prelin16dup:                            # @Prelin16dup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 32
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
.Ltmp95:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$176, %edx
	callq	_cmsDupMem
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB10_2
# BB#1:                                 # %if.end
	movq	160(%rbx), %rsi
	movl	12(%rbx), %edx
	shll	$3, %edx
	movq	%r14, %rdi
	callq	_cmsDupMem
	movq	%rax, 160(%r15)
	movq	168(%rbx), %rsi
	movl	12(%rbx), %edx
	shll	$3, %edx
	movq	%r14, %rdi
	callq	_cmsDupMem
	movq	%rax, 168(%r15)
	movq	%r15, %rax
.LBB10_2:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	Prelin16dup, .Lfunc_end10-Prelin16dup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	FixWhiteMisalignment,@function
FixWhiteMisalignment:                   # @FixWhiteMisalignment
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
	subq	$216, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 272
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
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 64(%rsp)
	xorl	%r13d, %r13d
	leaq	208(%rsp), %rax
	leaq	88(%rsp), %rcx
	xorl	%edx, %edx
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	_cmsEndPointsBySpace
	testl	%eax, %eax
	je	.LBB11_72
# BB#1:                                 # %if.end
	xorl	%r13d, %r13d
	leaq	200(%rsp), %rsi
	leaq	92(%rsp), %rcx
	xorl	%edx, %edx
	movl	%ebp, %edi
	callq	_cmsEndPointsBySpace
	testl	%eax, %eax
	je	.LBB11_72
# BB#2:                                 # %if.end.4
	movl	8(%rbx), %eax
	cmpl	88(%rsp), %eax
	jne	.LBB11_72
# BB#3:                                 # %if.end.6
	movl	12(%rbx), %eax
	cmpl	92(%rsp), %eax
	jne	.LBB11_72
# BB#4:                                 # %if.end.9
	movq	208(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdx
	callq	cmsPipelineEval16
	movslq	92(%rsp), %r12
	testq	%r12, %r12
	movl	$1, %r13d
	jle	.LBB11_71
# BB#5:                                 # %for.body.lr.ph.i
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	200(%rsp), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB11_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r15,%rbp,2), %ebx
	movzwl	96(%rsp,%rbp,2), %r14d
	movl	%ebx, %edi
	subl	%r14d, %edi
	callq	abs
	cmpl	$61440, %eax            # imm = 0xF000
	jg	.LBB11_71
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB11_7 Depth=1
	movzwl	%r14w, %eax
	movzwl	%bx, %ecx
	cmpl	%eax, %ecx
	jne	.LBB11_9
# BB#6:                                 # %for.cond.i
                                        #   in Loop: Header=BB11_7 Depth=1
	incq	%rbp
	cmpq	%r12, %rbp
	jl	.LBB11_7
	jmp	.LBB11_72
.LBB11_9:                               # %if.end.14
	leaq	64(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	80(%rsp), %r9
	movl	$3, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1668052340, %ecx       # imm = 0x636C7574
	movl	$1668707188, %r8d       # imm = 0x63767374
	xorl	%eax, %eax
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB11_13
# BB#10:                                # %if.then.17
	leaq	80(%rsp), %r8
	leaq	72(%rsp), %r9
	movl	$2, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1668052340, %ecx       # imm = 0x636C7574
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB11_13
# BB#11:                                # %if.then.20
	xorl	%r13d, %r13d
	leaq	72(%rsp), %r8
	leaq	64(%rsp), %r9
	movl	$2, %esi
	movl	$1668052340, %edx       # imm = 0x636C7574
	movl	$1668707188, %ecx       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB11_13
# BB#12:                                # %if.then.23
	leaq	72(%rsp), %rcx
	movl	$1, %esi
	movl	$1668052340, %edx       # imm = 0x636C7574
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	je	.LBB11_72
.LBB11_13:                              # %if.end.30
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB11_14
# BB#21:                                # %if.then.32
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, %r14
	xorl	%ebp, %ebp
	cmpl	$0, 88(%rsp)
	je	.LBB11_22
	.align	16, 0x90
.LBB11_23:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	movq	(%r14,%rbx,8), %rdi
	movq	208(%rsp), %rax
	movzwl	(%rax,%rbx,2), %esi
	callq	cmsEvalToneCurve16
	movw	%ax, 160(%rsp,%rbx,2)
	incl	%ebp
	movl	88(%rsp), %ecx
	cmpl	%ecx, %ebp
	jb	.LBB11_23
	jmp	.LBB11_24
.LBB11_14:                              # %for.cond.40.preheader
	movl	88(%rsp), %ebp
	xorl	%ecx, %ecx
	testq	%rbp, %rbp
	je	.LBB11_24
# BB#15:                                # %for.body.42.lr.ph
	movq	208(%rsp), %rcx
	movl	%ebp, %eax
	andl	$15, %eax
	xorl	%edx, %edx
	cmpl	%eax, %ebp
	je	.LBB11_18
# BB#16:                                # %vector.body.preheader
	movq	%rbp, %rdx
	subq	%rax, %rdx
	leaq	16(%rcx), %rsi
	leaq	176(%rsp), %rdi
	movl	%ebp, %ebx
	andl	$15, %ebx
	movq	%rbp, %rax
	subq	%rbx, %rax
.LBB11_17:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	-16(%rsi), %xmm0
	movupd	(%rsi), %xmm1
	movapd	%xmm0, -16(%rdi)
	movapd	%xmm1, (%rdi)
	addq	$32, %rsi
	addq	$32, %rdi
	addq	$-16, %rax
	jne	.LBB11_17
.LBB11_18:                              # %middle.block
	cmpq	%rdx, %rbp
	je	.LBB11_20
.LBB11_19:                              # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rcx,%rdx,2), %ax
	movw	%ax, 160(%rsp,%rdx,2)
	incq	%rdx
	cmpq	%rbp, %rdx
	jb	.LBB11_19
.LBB11_20:
	movl	%ebp, %ecx
	jmp	.LBB11_24
.LBB11_22:
	xorl	%ecx, %ecx
.LBB11_24:                              # %if.end.50
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB11_25
# BB#32:                                # %if.then.52
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, %r14
	xorl	%eax, %eax
	cmpl	$0, 92(%rsp)
	je	.LBB11_33
	.align	16, 0x90
.LBB11_34:                              # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	movq	(%r14,%rbp,8), %rdi
	callq	cmsReverseToneCurve
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movq	200(%rsp), %rax
	movzwl	(%rax,%rbp,2), %r15d
	je	.LBB11_36
# BB#35:                                # %if.else.67
                                        #   in Loop: Header=BB11_34 Depth=1
	movzwl	%r15w, %esi
	movq	%rbx, %rdi
	callq	cmsEvalToneCurve16
	movw	%ax, %r15w
	movq	%rbx, %rdi
	callq	cmsFreeToneCurve
.LBB11_36:                              # %if.end.73
                                        #   in Loop: Header=BB11_34 Depth=1
	movw	%r15w, 128(%rsp,%rbp,2)
	leal	1(%rbp), %eax
	movl	92(%rsp), %ebp
	cmpl	%ebp, %eax
	jb	.LBB11_34
	jmp	.LBB11_37
.LBB11_25:                              # %for.cond.78.preheader
	movl	92(%rsp), %ebx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB11_38
# BB#26:                                # %for.body.80.lr.ph
	movq	200(%rsp), %rdx
	movl	%ebx, %eax
	andl	$15, %eax
	xorl	%esi, %esi
	cmpl	%eax, %ebx
	je	.LBB11_29
# BB#27:                                # %vector.body71.preheader
	movq	%rbx, %rsi
	subq	%rax, %rsi
	leaq	16(%rdx), %rdi
	leaq	144(%rsp), %rbp
	movl	%ebx, %r8d
	andl	$15, %r8d
	movq	%rbx, %rax
	subq	%r8, %rax
.LBB11_28:                              # %vector.body71
                                        # =>This Inner Loop Header: Depth=1
	movupd	-16(%rdi), %xmm0
	movupd	(%rdi), %xmm1
	movapd	%xmm0, -16(%rbp)
	movapd	%xmm1, (%rbp)
	addq	$32, %rdi
	addq	$32, %rbp
	addq	$-16, %rax
	jne	.LBB11_28
.LBB11_29:                              # %middle.block72
	cmpq	%rsi, %rbx
	je	.LBB11_31
.LBB11_30:                              # %for.body.80
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rdx,%rsi,2), %ax
	movw	%ax, 128(%rsp,%rsi,2)
	incq	%rsi
	cmpq	%rbx, %rsi
	jb	.LBB11_30
.LBB11_31:
	movl	%ebx, %ebp
	jmp	.LBB11_38
.LBB11_33:
	xorl	%ebp, %ebp
.LBB11_37:                              # %if.end.88.loopexit44
	movl	88(%rsp), %ecx
.LBB11_38:                              # %if.end.88
	movq	72(%rsp), %rax
	cmpl	$1668052340, 8(%rax)    # imm = 0x636C7574
	jne	.LBB11_39
# BB#40:                                # %if.end.i.33
	movq	48(%rax), %r14
	movq	8(%r14), %r15
	cmpl	$1, %ecx
	je	.LBB11_52
# BB#41:                                # %if.end.i.33
	cmpl	$3, %ecx
	jne	.LBB11_42
# BB#48:                                # %if.then.67.i
	movq	160(%rsp), %rax
	movzwl	%ax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	52(%r15), %ecx
	movl	56(%r15), %edx
	cvtsi2sdq	%rcx, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdq	%rdx, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 56(%rsp)         # 8-byte Spill
	shrq	$32, %rax
	movzwl	%ax, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movl	60(%r15), %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 48(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#49:                                # %lor.lhs.false.99.i
	cvttsd2si	32(%rsp), %eax  # 8-byte Folded Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	ucomisd	%xmm1, %xmm3
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#50:                                # %lor.lhs.false.104.i
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#51:                                # %if.end.110.i
	imull	92(%r15), %r12d
	imull	88(%r15), %eax
	addl	%r12d, %eax
	imull	84(%r15), %ecx
	addl	%eax, %ecx
	jmp	.LBB11_54
.LBB11_39:                              # %if.then.i
	movq	(%rax), %rdi
	movl	$3, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB11_71:
	movl	$1, %r13d
.LBB11_72:                              # %cleanup
	movl	%r13d, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_52:                              # %if.then.125.i
	movzwl	160(%rsp), %eax
	cvtsi2sdl	%eax, %xmm1
	movl	52(%r15), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm1, %xmm0
	divsd	.LCPI11_0(%rip), %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#53:                                # %if.end.140.i
	imull	84(%r15), %ecx
.LBB11_54:                              # %if.end.148.i
	testl	%ebp, %ebp
	jle	.LBB11_71
# BB#55:                                # %for.body.lr.ph.i.37
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	movq	(%r14), %r9
	movslq	%ecx, %r10
	leal	-1(%rbp), %esi
	leaq	1(%rsi), %r11
	xorl	%edi, %edi
	movq	%r11, %rdx
	andq	%r8, %rdx
	je	.LBB11_64
# BB#56:                                # %vector.memcheck
	leaq	(%r9,%r10,2), %rcx
	leaq	(%r10,%rsi), %rax
	leaq	(%r9,%rax,2), %rax
	leaq	128(%rsp,%rsi,2), %rbx
	leaq	128(%rsp), %rdi
	cmpq	%rax, %rdi
	setbe	%al
	xorl	%edi, %edi
	cmpq	%rbx, %rcx
	ja	.LBB11_58
# BB#57:                                # %vector.memcheck
	testb	%al, %al
	jne	.LBB11_64
.LBB11_58:                              # %vector.body97.preheader
	leaq	1(%rsi), %rcx
	andq	%r8, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rdi
	shrq	$4, %rdi
	xorl	%eax, %eax
	btq	$4, %rcx
	jb	.LBB11_60
# BB#59:                                # %vector.body97.prol
	movapd	128(%rsp), %xmm0
	movapd	144(%rsp), %xmm1
	movupd	%xmm0, (%r9,%r10,2)
	movupd	%xmm1, 16(%r9,%r10,2)
	movl	$16, %eax
.LBB11_60:                              # %vector.body97.preheader.split
	testq	%rdi, %rdi
	je	.LBB11_63
# BB#61:                                # %vector.body97.preheader.split.split
	incq	%rsi
	andq	%r8, %rsi
	subq	%rax, %rsi
	leaq	(%rax,%r10), %rcx
	leaq	48(%r9,%rcx,2), %rdi
	leaq	176(%rsp,%rax,2), %rax
.LBB11_62:                              # %vector.body97
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rax), %xmm0
	movaps	-32(%rax), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movapd	-16(%rax), %xmm0
	movapd	(%rax), %xmm1
	movupd	%xmm0, -16(%rdi)
	movupd	%xmm1, (%rdi)
	addq	$64, %rdi
	addq	$64, %rax
	addq	$-32, %rsi
	jne	.LBB11_62
.LBB11_63:
	movq	%rdx, %rdi
.LBB11_64:                              # %middle.block98
	cmpq	%rdi, %r11
	je	.LBB11_71
# BB#65:                                # %for.body.i.40.preheader
	leal	1(%rbp), %edx
	movl	%edi, %eax
	orl	$1, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ebp, %esi
	subl	%eax, %esi
	testb	$3, %cl
	je	.LBB11_68
# BB#66:                                # %for.body.i.40.prol.preheader
	leaq	(%r9,%r10,2), %rbx
	leal	1(%rdi), %eax
	subl	%eax, %edx
	andl	$3, %edx
	negl	%edx
.LBB11_67:                              # %for.body.i.40.prol
                                        # =>This Inner Loop Header: Depth=1
	movw	128(%rsp,%rdi,2), %ax
	movw	%ax, (%rbx,%rdi,2)
	incq	%rdi
	incl	%edx
	jne	.LBB11_67
.LBB11_68:                              # %for.body.i.40.preheader.split
	cmpl	$3, %esi
	jb	.LBB11_71
# BB#69:                                # %for.body.i.40.preheader.split.split
	subl	%edi, %ebp
	leaq	(%r10,%rdi), %rax
	leaq	6(%r9,%rax,2), %rax
	leaq	134(%rsp,%rdi,2), %rcx
.LBB11_70:                              # %for.body.i.40
                                        # =>This Inner Loop Header: Depth=1
	movw	-6(%rcx), %dx
	movw	%dx, -6(%rax)
	movw	-4(%rcx), %dx
	movw	%dx, -4(%rax)
	movw	-2(%rcx), %dx
	movw	%dx, -2(%rax)
	movw	(%rcx), %dx
	movw	%dx, (%rax)
	addq	$8, %rax
	addq	$8, %rcx
	addl	$-4, %ebp
	jne	.LBB11_70
	jmp	.LBB11_71
.LBB11_42:                              # %if.end.i.33
	cmpl	$4, %ecx
	jne	.LBB11_73
# BB#43:                                # %if.then.2.i
	movq	160(%rsp), %rax
	movzwl	%ax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	52(%r15), %ecx
	movl	56(%r15), %edx
	cvtsi2sdq	%rcx, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	movl	%eax, %ecx
	shrl	$16, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	cvtsi2sdq	%rdx, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 56(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	shrq	$32, %rcx
	movzwl	%cx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	movl	60(%r15), %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rcx, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 48(%rsp)         # 8-byte Spill
	shrq	$48, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movl	64(%r15), %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, 40(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvtsi2sdl	%r12d, %xmm1
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#44:                                # %lor.lhs.false.i
	cvttsd2si	24(%rsp), %eax  # 8-byte Folded Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	ucomisd	%xmm1, %xmm3
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#45:                                # %lor.lhs.false.40.i
	cvttsd2si	16(%rsp), %edx  # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	movsd	48(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm2
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#46:                                # %lor.lhs.false.45.i
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	movl	$1, %r13d
	jne	.LBB11_72
	jp	.LBB11_72
# BB#47:                                # %if.end.51.i
	imull	96(%r15), %r12d
	imull	92(%r15), %eax
	addl	%r12d, %eax
	imull	88(%r15), %edx
	addl	%eax, %edx
	imull	84(%r15), %ecx
	addl	%edx, %ecx
	jmp	.LBB11_54
.LBB11_73:                              # %if.else.144.i
	movq	(%rax), %rdi
	movl	$3, %esi
	movl	$.L.str.7, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB11_71
.Lfunc_end11:
	.size	FixWhiteMisalignment, .Lfunc_end11-FixWhiteMisalignment
	.cfi_endproc

	.align	16, 0x90
	.type	Eval16nop1D,@function
Eval16nop1D:                            # @Eval16nop1D
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdi), %ax
	movw	%ax, (%rsi)
	retq
.Lfunc_end12:
	.size	Eval16nop1D, .Lfunc_end12-Eval16nop1D
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4661223415305207808     # double 4095
.LCPI13_1:
	.quad	4679239875398991872     # double 65535
.LCPI13_2:
	.quad	4602678819172646912     # double 0.5
.LCPI13_3:
	.quad	-4548635898522107904    # double -32767
.LCPI13_4:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	OptimizeByJoiningCurves,@function
OptimizeByJoiningCurves:                # @OptimizeByJoiningCurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 224
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %rbp
	movq	%rdx, %r15
	movq	%rdi, %r13
	movq	(%r13), %r14
	movl	(%r15), %edi
	callq	_cmsFormatterIsFloat
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB13_55
# BB#1:                                 # %lor.lhs.false
	movl	(%rbp), %edi
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	jne	.LBB13_55
# BB#2:                                 # %if.end
	movq	%r14, %rdi
	callq	cmsPipelineGetPtrToFirstStage
	jmp	.LBB13_3
	.align	16, 0x90
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	%rbp, %rdi
	callq	cmsStageNext
.LBB13_3:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB13_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	%rbp, %rdi
	callq	cmsStageType
	cmpl	$1668707188, %eax       # imm = 0x63767374
	je	.LBB13_5
	jmp	.LBB13_55
.LBB13_6:                               # %for.end
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	56(%r14), %rdi
	movl	8(%r14), %esi
	movl	12(%r14), %edx
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB13_55
# BB#7:                                 # %if.end.12
	movq	56(%r14), %rdi
	movl	8(%r14), %esi
	movl	$8, %edx
	callq	_cmsCalloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB13_54
# BB#8:                                 # %for.cond.19.preheader
	xorl	%ebx, %ebx
	cmpl	$0, 8(%r14)
	je	.LBB13_9
	.align	16, 0x90
.LBB13_10:                              # %for.body.22
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rdi
	movl	$4096, %esi             # imm = 0x1000
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movl	%ebx, %ecx
	movq	%rax, (%rbp,%rcx,8)
	testq	%rax, %rax
	je	.LBB13_48
# BB#11:                                # %for.cond.19
                                        #   in Loop: Header=BB13_10 Depth=1
	incl	%ebx
	movl	8(%r14), %eax
	cmpl	%eax, %ebx
	jb	.LBB13_10
	jmp	.LBB13_12
.LBB13_9:
	xorl	%eax, %eax
.LBB13_12:                              # %for.cond.32.preheader
	movq	%r12, %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB13_13:                              # %for.cond.35.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_16 Depth 2
                                        #     Child Loop BB13_18 Depth 2
                                        #     Child Loop BB13_21 Depth 2
	testl	%eax, %eax
	je	.LBB13_19
# BB#14:                                # %for.body.38.lr.ph
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	%r12d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	divsd	.LCPI13_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	%eax, %ecx
	movl	%eax, %esi
	andl	$7, %esi
	cmpl	%esi, %eax
	movl	$0, %edx
	je	.LBB13_17
# BB#15:                                # %vector.ph
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	andl	$7, %eax
	movq	%rcx, %rsi
	subq	%rax, %rsi
	leaq	112(%rsp), %rax
	.align	16, 0x90
.LBB13_16:                              # %vector.body
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, -16(%rax)
	movaps	%xmm1, (%rax)
	addq	$32, %rax
	addq	$-8, %rsi
	jne	.LBB13_16
.LBB13_17:                              # %middle.block
                                        #   in Loop: Header=BB13_13 Depth=1
	cmpq	%rdx, %rcx
	je	.LBB13_19
	.align	16, 0x90
.LBB13_18:                              # %for.body.38
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	%xmm0, 96(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB13_18
.LBB13_19:                              # %for.end.44
                                        #   in Loop: Header=BB13_13 Depth=1
	leaq	96(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%r14, %rdx
	callq	cmsPipelineEvalFloat
	movl	8(%r14), %esi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	movsd	.LCPI13_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI13_2(%rip), %xmm2  # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI13_3(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI13_4(%rip), %xmm5  # xmm5 = mem[0],zero
	je	.LBB13_27
# BB#20:                                # %for.body.50.lr.ph
                                        #   in Loop: Header=BB13_13 Depth=1
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_21:                              # %for.body.50
                                        #   Parent Loop BB13_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	32(%rsp,%rax,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm3
	jae	.LBB13_22
# BB#23:                                # %if.end.i
                                        #   in Loop: Header=BB13_21 Depth=2
	movw	$-1, %cx
	ucomisd	.LCPI13_1(%rip), %xmm0
	jae	.LBB13_25
# BB#24:                                # %if.end.3.i
                                        #   in Loop: Header=BB13_21 Depth=2
	addsd	%xmm4, %xmm0
	addsd	%xmm5, %xmm0
	movd	%xmm0, %rcx
	shrl	$16, %ecx
	addl	$32767, %ecx            # imm = 0x7FFF
	jmp	.LBB13_25
	.align	16, 0x90
.LBB13_22:                              #   in Loop: Header=BB13_21 Depth=2
	xorl	%ecx, %ecx
.LBB13_25:                              # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB13_21 Depth=2
	movq	(%rbp,%rax,8), %rdx
	movq	48(%rdx), %rdx
	movw	%cx, (%rdx,%r12,2)
	incq	%rax
	cmpq	%rsi, %rax
	jb	.LBB13_21
# BB#26:                                #   in Loop: Header=BB13_13 Depth=1
	movl	%esi, %eax
.LBB13_27:                              # %for.inc.62
                                        #   in Loop: Header=BB13_13 Depth=1
	incq	%r12
	cmpq	$4096, %r12             # imm = 0x1000
	jne	.LBB13_13
# BB#28:                                # %for.end.64
	movq	56(%r14), %rdi
	movq	%rbp, %rdx
	callq	cmsStageAllocToneCurves
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rax, %rax
	movq	%rbx, %r12
	je	.LBB13_48
# BB#29:                                # %for.cond.72.preheader
	movq	%r12, (%rsp)            # 8-byte Spill
	cmpl	$0, 8(%r14)
	je	.LBB13_32
# BB#30:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB13_31:                              # %for.body.76
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r12d
	movq	(%rbp,%r12,8), %rdi
	callq	cmsFreeToneCurve
	movq	$0, (%rbp,%r12,8)
	incl	%ebx
	cmpl	8(%r14), %ebx
	jb	.LBB13_31
.LBB13_32:                              # %if.end.88
	movq	56(%r14), %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB13_37
# BB#33:                                # %if.end.i.94
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	cmsStageOutputChannels
	testl	%eax, %eax
	je	.LBB13_44
# BB#34:                                # %for.body.lr.ph.i
	movl	%eax, %ebx
	xorl	%r12d, %r12d
.LBB13_36:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r12,8), %rdi
	callq	cmsIsToneCurveLinear
	testl	%eax, %eax
	je	.LBB13_37
# BB#35:                                # %for.cond.i
                                        #   in Loop: Header=BB13_36 Depth=1
	incq	%r12
	cmpq	%rbx, %r12
	jb	.LBB13_36
.LBB13_44:                              # %if.else.124
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	callq	cmsStageFree
	movq	(%rsp), %r12            # 8-byte Reload
	movq	56(%r12), %rdi
	movl	8(%r14), %esi
	callq	cmsStageAllocIdentity
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB13_47
# BB#45:                                # %if.end.131
	movq	16(%rsp), %rax          # 8-byte Reload
	orb	$64, (%rax)
	movl	$FastIdentity16, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%r12, %rdx
	jmp	.LBB13_46
.LBB13_37:                              # %if.then.91
	xorl	%esi, %esi
	movq	(%rsp), %r12            # 8-byte Reload
	movq	%r12, %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB13_47
# BB#38:                                # %if.end.95
	movl	(%r15), %edi
	callq	_cmsFormatterIs8bit
	testl	%eax, %eax
	je	.LBB13_42
# BB#39:                                # %if.then.98
	movq	48(%rbx), %rax
	movq	56(%r12), %rdi
	movl	(%rax), %esi
	movq	8(%rax), %rcx
	movl	$256, %edx              # imm = 0x100
	callq	CurvesAlloc
	testq	%rax, %rax
	je	.LBB13_47
# BB#40:                                # %cleanup.thread
	movq	16(%rsp), %rcx          # 8-byte Reload
	orb	$64, (%rcx)
	movl	$FastEvaluateCurves8, %esi
	jmp	.LBB13_41
.LBB13_42:                              # %if.else
	movq	%rbx, %rdi
	callq	cmsStageData
	movq	56(%r12), %rdi
	movl	(%rax), %esi
	movq	8(%rax), %rcx
	movl	$65536, %edx            # imm = 0x10000
	callq	CurvesAlloc
	testq	%rax, %rax
	je	.LBB13_47
# BB#43:                                # %cleanup.119.thread
	movq	16(%rsp), %rcx          # 8-byte Reload
	orb	$64, (%rcx)
	movl	$FastEvaluateCurves16, %esi
.LBB13_41:                              # %if.end.133
	movl	$CurvesFree, %ecx
	movl	$CurvesDup, %r8d
	movq	%r12, %rdi
	movq	%rax, %rdx
.LBB13_46:                              # %if.end.133
	callq	_cmsPipelineSetOptimizationParameters
	movq	%r14, %rdi
	callq	cmsPipelineFree
	movq	%r12, (%r13)
	movl	$1, %ebx
	jmp	.LBB13_55
.LBB13_47:                              # %if.then.136
	movq	%rbx, %rdi
	callq	cmsStageFree
.LBB13_48:                              # %for.cond.141.preheader
	movl	8(%r14), %eax
	testl	%eax, %eax
	je	.LBB13_53
# BB#49:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB13_50:                              # %for.body.145
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movq	(%rbp,%rcx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB13_52
# BB#51:                                # %if.then.150
                                        #   in Loop: Header=BB13_50 Depth=1
	callq	cmsFreeToneCurve
	movl	8(%r14), %eax
.LBB13_52:                              # %for.inc.154
                                        #   in Loop: Header=BB13_50 Depth=1
	incl	%ebx
	cmpl	%eax, %ebx
	jb	.LBB13_50
.LBB13_53:                              # %for.end.156
	movq	56(%r14), %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	xorl	%ebx, %ebx
.LBB13_54:                              # %if.then.161
	movq	%r12, %rdi
	callq	cmsPipelineFree
.LBB13_55:                              # %cleanup.163
	movl	%ebx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	OptimizeByJoiningCurves, .Lfunc_end13-OptimizeByJoiningCurves
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
.LCPI14_1:
	.quad	4670232813583204352     # double 16384
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
.LCPI14_3:
	.quad	4544132024016830464     # double 6.103515625E-5
.LCPI14_4:
	.quad	4679239875398991872     # double 65535
.LCPI14_5:
	.quad	-4548635898522107904    # double -32767
.LCPI14_6:
	.quad	4771563805199040512     # double 103079215104
.LCPI14_7:
	.quad	0                       # double 0
	.text
	.align	16, 0x90
	.type	OptimizeMatrixShaper,@function
OptimizeMatrixShaper:                   # @OptimizeMatrixShaper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 256
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rdx, %rbx
	movl	%esi, %r12d
	movq	%rdi, %rdx
	movl	(%rbx), %edi
	movl	%edi, %eax
	andl	$120, %eax
	xorl	%r14d, %r14d
	cmpl	$24, %eax
	jne	.LBB14_53
# BB#1:                                 # %lor.lhs.false
	movl	(%rcx), %eax
	andl	$120, %eax
	cmpl	$24, %eax
	jne	.LBB14_53
# BB#2:                                 # %if.end
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	callq	_cmsFormatterIs8bit
	testl	%eax, %eax
	je	.LBB14_53
# BB#3:                                 # %if.end.5
	movq	(%rbp), %r15
	leaq	184(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	168(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r14d, %r14d
	movl	$4, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1835103334, %ecx       # imm = 0x6D617466
	movl	$1835103334, %r8d       # imm = 0x6D617466
	movl	$1668707188, %r9d       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	je	.LBB14_53
# BB#4:                                 # %if.end.9
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	176(%rsp), %rdi
	callq	cmsStageData
	movq	%rax, %r15
	movq	168(%rsp), %rdi
	callq	cmsStageData
	cmpq	$0, 8(%r15)
	jne	.LBB14_53
# BB#5:                                 # %if.end.14
	movq	(%rax), %rsi
	movq	(%r15), %rdx
	leaq	96(%rsp), %r14
	movq	%r14, %rdi
	movq	%rax, %r15
	callq	_cmsMAT3per
	movq	%r14, %rdi
	callq	_cmsMAT3isIdentity
	xorl	%r14d, %r14d
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB14_7
# BB#6:                                 # %land.lhs.true
	cmpq	$0, 8(%r15)
	sete	%al
	movzbl	%al, %eax
.LBB14_7:                               # %if.end.21
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	56(%rax), %rdi
	movl	8(%rax), %esi
	movl	12(%rax), %edx
	callq	cmsPipelineAlloc
	movq	%rax, %rbp
	movq	%rbp, 88(%rsp)
	testq	%rbp, %rbp
	je	.LBB14_53
# BB#8:                                 # %if.end.25
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	192(%rsp), %rdi
	callq	cmsStageDup
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB14_52
# BB#9:                                 # %if.end.30
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	jne	.LBB14_11
# BB#10:                                # %if.then.32
	movq	56(%rbp), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r8
	leaq	96(%rsp), %rcx
	movl	$3, %esi
	movl	$3, %edx
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB14_52
.LBB14_11:                              # %if.end.40
	movq	184(%rsp), %rdi
	callq	cmsStageDup
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB14_52
# BB#12:                                # %if.end.45
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	je	.LBB14_14
# BB#13:                                # %if.then.47
	leaq	88(%rsp), %rdi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%r13, %r8
	callq	OptimizeByJoiningCurves
	movq	88(%rsp), %rbp
	jmp	.LBB14_49
.LBB14_52:                              # %Error
	movq	%rbp, %rdi
	callq	cmsPipelineFree
	jmp	.LBB14_53
.LBB14_14:                              # %if.else
	movq	192(%rsp), %rdi
	callq	cmsStageData
	movq	%rax, %rbx
	movq	184(%rsp), %rdi
	callq	cmsStageData
	orb	$64, (%r13)
	movq	8(%rbx), %r14
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %r12
	movq	8(%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	callq	_cmsFormatterIs8bit
	movl	%eax, %r15d
	movq	56(%rbp), %rdi
	movl	$101440, %esi           # imm = 0x18C40
	callq	_cmsMalloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB14_49
# BB#15:                                # %if.end.i
	movq	56(%rbp), %rax
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%rax, (%r13)
	movq	(%r14), %rbx
	xorl	%ebp, %ebp
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB14_16:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, 8(%r13,%rbp,4)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB14_16
# BB#17:                                # %FillFirstShaper.exit.i
	movq	8(%r14), %rbx
	xorl	%ebp, %ebp
.LBB14_18:                              # %for.body.i.14.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1032(%r13,%rbp,4)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB14_18
# BB#19:                                # %FillFirstShaper.exit15.i
	movq	16(%r14), %rbx
	xorl	%ebp, %ebp
.LBB14_20:                              # %for.body.i.29.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, 2056(%r13,%rbp,4)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB14_20
# BB#21:                                # %FillFirstShaper.exit30.i
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	(%r14), %rbx
	xorl	%ebp, %ebp
.LBB14_22:                              # %for.body.i.36.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI14_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_4(%rip), %xmm0
	movsd	.LCPI14_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_23
# BB#24:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB14_22 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI14_4(%rip), %xmm0
	jae	.LBB14_26
# BB#25:                                # %if.end.3.i.i.i
                                        #   in Loop: Header=BB14_22 Depth=1
	addsd	.LCPI14_5(%rip), %xmm0
	addsd	.LCPI14_6(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_26
.LBB14_23:                              #   in Loop: Header=BB14_22 Depth=1
	xorl	%eax, %eax
.LBB14_26:                              # %_cmsQuickSaturateWord.exit.i.i
                                        #   in Loop: Header=BB14_22 Depth=1
	testl	%r15d, %r15d
	je	.LBB14_28
# BB#27:                                # %if.then.i.i
                                        #   in Loop: Header=BB14_22 Depth=1
	movzwl	%ax, %eax
	imull	$65281, %eax, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movl	%ecx, %eax
	shll	$8, %eax
	orl	%ecx, %eax
.LBB14_28:                              # %for.inc.i.i
                                        #   in Loop: Header=BB14_22 Depth=1
	movw	%ax, 3128(%r13,%rbp,2)
	incq	%rbp
	cmpq	$16385, %rbp            # imm = 0x4001
	jne	.LBB14_22
# BB#29:                                # %FillSecondShaper.exit.i
	movq	8(%r14), %rbx
	xorl	%ebp, %ebp
.LBB14_30:                              # %for.body.i.51.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI14_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_4(%rip), %xmm0
	movsd	.LCPI14_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_31
# BB#32:                                # %if.end.i.i.53.i
                                        #   in Loop: Header=BB14_30 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI14_4(%rip), %xmm0
	jae	.LBB14_34
# BB#33:                                # %if.end.3.i.i.60.i
                                        #   in Loop: Header=BB14_30 Depth=1
	addsd	.LCPI14_5(%rip), %xmm0
	addsd	.LCPI14_6(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_34
.LBB14_31:                              #   in Loop: Header=BB14_30 Depth=1
	xorl	%eax, %eax
.LBB14_34:                              # %_cmsQuickSaturateWord.exit.i.62.i
                                        #   in Loop: Header=BB14_30 Depth=1
	testl	%r15d, %r15d
	je	.LBB14_36
# BB#35:                                # %if.then.i.70.i
                                        #   in Loop: Header=BB14_30 Depth=1
	movzwl	%ax, %eax
	imull	$65281, %eax, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movl	%ecx, %eax
	shll	$8, %eax
	orl	%ecx, %eax
.LBB14_36:                              # %for.inc.i.74.i
                                        #   in Loop: Header=BB14_30 Depth=1
	movw	%ax, 35898(%r13,%rbp,2)
	incq	%rbp
	cmpq	$16385, %rbp            # imm = 0x4001
	jne	.LBB14_30
# BB#37:                                # %FillSecondShaper.exit75.i
	movq	16(%r14), %rbx
	xorl	%ebp, %ebp
.LBB14_38:                              # %for.body.i.86.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI14_3(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_4(%rip), %xmm0
	movsd	.LCPI14_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_39
# BB#40:                                # %if.end.i.i.88.i
                                        #   in Loop: Header=BB14_38 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI14_4(%rip), %xmm0
	jae	.LBB14_42
# BB#41:                                # %if.end.3.i.i.95.i
                                        #   in Loop: Header=BB14_38 Depth=1
	addsd	.LCPI14_5(%rip), %xmm0
	addsd	.LCPI14_6(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_42
.LBB14_39:                              #   in Loop: Header=BB14_38 Depth=1
	xorl	%eax, %eax
.LBB14_42:                              # %_cmsQuickSaturateWord.exit.i.97.i
                                        #   in Loop: Header=BB14_38 Depth=1
	testl	%r15d, %r15d
	je	.LBB14_44
# BB#43:                                # %if.then.i.105.i
                                        #   in Loop: Header=BB14_38 Depth=1
	movzwl	%ax, %eax
	imull	$65281, %eax, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movl	%ecx, %eax
	shll	$8, %eax
	orl	%ecx, %eax
.LBB14_44:                              # %for.inc.i.109.i
                                        #   in Loop: Header=BB14_38 Depth=1
	movw	%ax, 68668(%r13,%rbp,2)
	incq	%rbp
	cmpq	$16385, %rbp            # imm = 0x4001
	jne	.LBB14_38
# BB#45:                                # %for.cond.preheader.i
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI14_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI14_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3080(%r13)
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3084(%r13)
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3088(%r13)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3092(%r13)
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3096(%r13)
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3100(%r13)
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3104(%r13)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3108(%r13)
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3112(%r13)
	testq	%r12, %r12
	je	.LBB14_50
# BB#46:                                # %if.else.2.i
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI14_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI14_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3116(%r13)
	movsd	8(%r12), %xmm0          # xmm0 = mem[0],zero
	mulsd	.LCPI14_1(%rip), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3120(%r13)
	movsd	.LCPI14_1(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	16(%r12), %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 3124(%r13)
	jmp	.LBB14_51
.LBB14_50:                              # %if.then.36.2.i
	movq	$0, 3116(%r13)
	movl	$0, 3124(%r13)
.LBB14_51:                              # %for.inc.51.2.i
	movq	48(%rsp), %rbp          # 8-byte Reload
	testl	%r15d, %r15d
	je	.LBB14_48
# BB#47:                                # %if.then.54.i
	movq	80(%rsp), %rax          # 8-byte Reload
	orb	$32, 2(%rax)
.LBB14_48:                              # %if.end.55.i
	movl	$MatShaperEval16, %esi
	movl	$FreeMatShaper, %ecx
	movl	$DupMatShaper, %r8d
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	_cmsPipelineSetOptimizationParameters
.LBB14_49:                              # %if.end.54
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	cmsPipelineFree
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	$1, %r14d
.LBB14_53:                              # %cleanup
	movl	%r14d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	OptimizeMatrixShaper, .Lfunc_end14-OptimizeMatrixShaper
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4661223415305207808     # double 4095
.LCPI15_1:
	.quad	4679239875398991872     # double 65535
.LCPI15_2:
	.quad	4602678819172646912     # double 0.5
.LCPI15_3:
	.quad	-4548635898522107904    # double -32767
.LCPI15_4:
	.quad	4771563805199040512     # double 103079215104
.LCPI15_5:
	.quad	4581421828931458171     # double 0.02
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_6:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI15_7:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.text
	.align	16, 0x90
	.type	OptimizeByComputingLinearization,@function
OptimizeByComputingLinearization:       # @OptimizeByComputingLinearization
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp141:
	.cfi_def_cfa_offset 544
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	(%rbp), %edi
	callq	_cmsFormatterIsFloat
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB15_115
# BB#1:                                 # %lor.lhs.false
	movl	(%r12), %edi
	callq	_cmsFormatterIsFloat
	testl	%eax, %eax
	jne	.LBB15_115
# BB#2:                                 # %if.end
	movl	(%rbp), %edi
	movl	%edi, %eax
	andl	$2031616, %eax          # imm = 0x1F0000
	cmpl	$262144, %eax           # imm = 0x40000
	jne	.LBB15_115
# BB#3:                                 # %if.end.4
	movl	$2031616, %eax          # imm = 0x1F0000
	andl	(%r12), %eax
	cmpl	$262144, %eax           # imm = 0x40000
	jne	.LBB15_115
# BB#4:                                 # %if.end.9
	callq	_cmsFormatterIs8bit
	testl	%eax, %eax
	jne	.LBB15_6
# BB#5:                                 # %if.then.12
	testb	$16, (%r13)
	je	.LBB15_115
.LBB15_6:                               # %if.end.17
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	movq	(%r14), %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	callq	cmsPipelineGetPtrToFirstStage
	jmp	.LBB15_7
	.align	16, 0x90
.LBB15_9:                               # %for.inc
                                        #   in Loop: Header=BB15_7 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageNext
.LBB15_7:                               # %if.end.17
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB15_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB15_7 Depth=1
	movq	%rbx, %rdi
	callq	cmsStageType
	cmpl	$1852009504, %eax       # imm = 0x6E636C20
	jne	.LBB15_9
	jmp	.LBB15_115
.LBB15_10:                              # %for.end
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movzwl	2(%rax), %edi
	andl	$31, %edi
	callq	_cmsICCcolorSpace
	movl	%eax, %ebx
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movzwl	2(%r12), %edi
	andl	$31, %edi
	callq	_cmsICCcolorSpace
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	(%r13), %esi
	movl	%ebx, %edi
	callq	_cmsReasonableGridpointsByColorspace
	movl	%eax, 56(%rsp)          # 4-byte Spill
	leaq	352(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	leaq	224(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movq	80(%rsp), %r15          # 8-byte Reload
	cmpl	$0, 8(%r15)
	je	.LBB15_14
# BB#11:                                # %for.body.37.lr.ph
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
.LBB15_12:                              # %for.body.37
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%r15), %rdi
	movl	$4096, %esi             # imm = 0x1000
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movl	%ebx, %ecx
	movq	%rax, 352(%rsp,%rcx,8)
	testq	%rax, %rax
	movl	$0, %r14d
	je	.LBB15_75
# BB#13:                                # %for.cond.35
                                        #   in Loop: Header=BB15_12 Depth=1
	incl	%ebx
	movl	8(%r15), %ebp
	cmpl	%ebp, %ebx
	jb	.LBB15_12
.LBB15_14:                              # %for.cond.46.preheader
	xorl	%ebx, %ebx
	leaq	160(%rsp), %r14
	leaq	96(%rsp), %r12
	.align	16, 0x90
.LBB15_15:                              # %for.body.48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_20 Depth 2
                                        #     Child Loop BB15_23 Depth 2
	movl	%ebx, %eax
	testl	%ebp, %ebp
	je	.LBB15_21
# BB#16:                                # %for.body.54.lr.ph
                                        #   in Loop: Header=BB15_15 Depth=1
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI15_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	%ebp, %eax
	movl	%ebp, %edx
	andl	$7, %edx
	cmpl	%edx, %ebp
	movl	$0, %ecx
	je	.LBB15_19
# BB#17:                                # %vector.ph
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	andl	$7, %ebp
	movq	%rax, %rdx
	subq	%rbp, %rdx
	leaq	176(%rsp), %rsi
	.align	16, 0x90
.LBB15_18:                              # %vector.body
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm1, -16(%rsi)
	movaps	%xmm1, (%rsi)
	addq	$32, %rsi
	addq	$-8, %rdx
	jne	.LBB15_18
.LBB15_19:                              # %middle.block
                                        #   in Loop: Header=BB15_15 Depth=1
	cmpq	%rcx, %rax
	je	.LBB15_21
	.align	16, 0x90
.LBB15_20:                              # %for.body.54
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	%xmm0, 160(%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB15_20
.LBB15_21:                              # %for.end.59
                                        #   in Loop: Header=BB15_15 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	cmsPipelineEvalFloat
	movl	8(%r15), %eax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI15_2(%rip), %xmm5  # xmm5 = mem[0],zero
	movsd	.LCPI15_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI15_4(%rip), %xmm3  # xmm3 = mem[0],zero
	xorpd	%xmm4, %xmm4
	je	.LBB15_39
# BB#22:                                # %for.body.66.lr.ph
                                        #   in Loop: Header=BB15_15 Depth=1
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB15_23:                              # %for.body.66
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	96(%rsp,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm5, %xmm0
	ucomisd	%xmm0, %xmm4
	jae	.LBB15_24
# BB#35:                                # %if.end.i
                                        #   in Loop: Header=BB15_23 Depth=2
	movw	$-1, %dx
	ucomisd	.LCPI15_1(%rip), %xmm0
	jae	.LBB15_37
# BB#36:                                # %if.end.3.i
                                        #   in Loop: Header=BB15_23 Depth=2
	addsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	movd	%xmm0, %rdx
	shrl	$16, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	jmp	.LBB15_37
	.align	16, 0x90
.LBB15_24:                              #   in Loop: Header=BB15_23 Depth=2
	xorl	%edx, %edx
.LBB15_37:                              # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB15_23 Depth=2
	movq	352(%rsp,%rcx,8), %rsi
	movq	48(%rsi), %rsi
	movw	%dx, (%rsi,%rbx,2)
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB15_23
# BB#38:                                #   in Loop: Header=BB15_15 Depth=1
	movl	%eax, %ebp
.LBB15_39:                              # %for.inc.78
                                        #   in Loop: Header=BB15_15 Depth=1
	incq	%rbx
	cmpq	$4096, %rbx             # imm = 0x1000
	jne	.LBB15_15
# BB#25:                                # %for.cond.81.preheader
	movq	%r13, 32(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB15_51
# BB#26:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB15_27:                              # %for.body.85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_33 Depth 2
                                        #     Child Loop BB15_45 Depth 2
	movq	%r15, %r13
	movl	%ebx, %eax
	movq	352(%rsp,%rax,8), %rbp
	movl	40(%rbp), %r15d
	cvtsi2sdq	%r15, %xmm0
	mulsd	.LCPI15_5(%rip), %xmm0
	addsd	%xmm5, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movl	%r15d, %r14d
	subl	%r12d, %r14d
	decl	%r14d
	movq	%rbp, %rdi
	callq	cmsIsToneCurveDescending
	testl	%eax, %eax
	movsd	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	je	.LBB15_29
# BB#28:                                # %for.body.85
                                        #   in Loop: Header=BB15_27 Depth=1
	xorpd	%xmm0, %xmm0
.LBB15_29:                              # %for.body.85
                                        #   in Loop: Header=BB15_27 Depth=1
	xorpd	%xmm4, %xmm4
	movsd	.LCPI15_3(%rip), %xmm6  # xmm6 = mem[0],zero
	movsd	.LCPI15_4(%rip), %xmm7  # xmm7 = mem[0],zero
	pxor	%xmm8, %xmm8
	je	.LBB15_31
# BB#30:                                # %for.body.85
                                        #   in Loop: Header=BB15_27 Depth=1
	movapd	%xmm1, %xmm4
.LBB15_31:                              # %for.body.85
                                        #   in Loop: Header=BB15_27 Depth=1
	movq	48(%rbp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	testl	%r12d, %r12d
	movsd	.LCPI15_2(%rip), %xmm5  # xmm5 = mem[0],zero
	jle	.LBB15_43
# BB#32:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB15_27 Depth=1
	movslq	%r12d, %rcx
	movzwl	(%rax,%rcx,2), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movapd	%xmm2, %xmm3
	subsd	%xmm4, %xmm3
	divsd	%xmm1, %xmm3
	movapd	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm2
	movl	%r12d, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB15_33:                              # %for.body.i
                                        #   Parent Loop BB15_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%edx, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm2, %xmm4
	addsd	%xmm5, %xmm4
	ucomisd	%xmm4, %xmm8
	jae	.LBB15_34
# BB#40:                                # %if.end.i.i
                                        #   in Loop: Header=BB15_33 Depth=2
	movw	$-1, %si
	ucomisd	.LCPI15_1(%rip), %xmm4
	jae	.LBB15_42
# BB#41:                                # %if.end.3.i.i
                                        #   in Loop: Header=BB15_33 Depth=2
	addsd	%xmm6, %xmm4
	addsd	%xmm7, %xmm4
	movd	%xmm4, %rsi
	shrl	$16, %esi
	addl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB15_42
	.align	16, 0x90
.LBB15_34:                              #   in Loop: Header=BB15_33 Depth=2
	xorl	%esi, %esi
.LBB15_42:                              # %_cmsQuickSaturateWord.exit.i
                                        #   in Loop: Header=BB15_33 Depth=2
	movw	%si, (%rax,%rdx,2)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB15_33
.LBB15_43:                              # %for.end.i
                                        #   in Loop: Header=BB15_27 Depth=1
	movl	40(%rbp), %ecx
	cmpl	%ecx, %r14d
	jge	.LBB15_50
# BB#44:                                # %for.body.35.lr.ph.i
                                        #   in Loop: Header=BB15_27 Depth=1
	movslq	%r14d, %rdx
	movzwl	(%rax,%rdx,2), %esi
	cvtsi2sdl	%esi, %xmm2
	subsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm2
	leal	-1(%r15), %edx
	subl	%r12d, %edx
	movslq	%edx, %rdx
	.align	16, 0x90
.LBB15_45:                              # %for.body.35.i
                                        #   Parent Loop BB15_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	addsd	%xmm5, %xmm1
	ucomisd	%xmm1, %xmm8
	jae	.LBB15_46
# BB#47:                                # %if.end.i.41.i
                                        #   in Loop: Header=BB15_45 Depth=2
	movw	$-1, %si
	ucomisd	.LCPI15_1(%rip), %xmm1
	jae	.LBB15_49
# BB#48:                                # %if.end.3.i.48.i
                                        #   in Loop: Header=BB15_45 Depth=2
	addsd	%xmm6, %xmm1
	addsd	%xmm7, %xmm1
	movd	%xmm1, %rsi
	shrl	$16, %esi
	addl	$32767, %esi            # imm = 0x7FFF
	jmp	.LBB15_49
	.align	16, 0x90
.LBB15_46:                              #   in Loop: Header=BB15_45 Depth=2
	xorl	%esi, %esi
.LBB15_49:                              # %_cmsQuickSaturateWord.exit50.i
                                        #   in Loop: Header=BB15_45 Depth=2
	movw	%si, (%rax,%rdx,2)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB15_45
.LBB15_50:                              # %SlopeLimiting.exit
                                        #   in Loop: Header=BB15_27 Depth=1
	incl	%ebx
	movq	%r13, %r15
	movl	8(%r15), %eax
	cmpl	%eax, %ebx
	jb	.LBB15_27
.LBB15_51:                              # %land.rhs.preheader
	testl	%eax, %eax
	movl	$0, %ebp
	je	.LBB15_68
# BB#52:
	movl	$1, %r12d
	movabsq	$8589934584, %r13       # imm = 0x1FFFFFFF8
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB15_53:                              # %for.body.96
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_59 Depth 2
                                        #     Child Loop BB15_63 Depth 2
	movl	%ebp, %ebx
	movq	352(%rsp,%rbx,8), %rdi
	callq	cmsIsToneCurveLinear
	movq	352(%rsp,%rbx,8), %rdi
	callq	cmsIsToneCurveMonotonic
	testl	%eax, %eax
	cmovel	%eax, %r12d
	movq	352(%rsp,%rbx,8), %rcx
	movl	40(%rcx), %eax
	testl	%eax, %eax
	movl	$0, %esi
	movl	$0, %edi
	jle	.LBB15_70
# BB#54:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB15_53 Depth=1
	movq	48(%rcx), %r8
	leal	-1(%rax), %esi
	leaq	1(%rsi), %r9
	movq	%r9, %rdi
	andq	%r13, %rdi
	xorps	%xmm0, %xmm0
	movl	$0, %ebx
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	xorpd	%xmm3, %xmm3
	pxor	%xmm8, %xmm8
	movdqa	.LCPI15_6(%rip), %xmm9  # xmm9 = [1,1,1,1]
	movdqa	.LCPI15_7(%rip), %xmm10 # xmm10 = [65535,65535,65535,65535]
	je	.LBB15_61
# BB#55:                                # %vector.body208.preheader
                                        #   in Loop: Header=BB15_53 Depth=1
	leaq	1(%rsi), %rcx
	andq	%r13, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rbx
	shrq	$3, %rbx
	xorps	%xmm0, %xmm0
	btq	$3, %rcx
	movl	$0, %ecx
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	xorpd	%xmm3, %xmm3
	jb	.LBB15_57
# BB#56:                                # %vector.body208.prol
                                        #   in Loop: Header=BB15_53 Depth=1
	movq	(%r8), %xmm0            # xmm0 = mem[0],zero
	punpcklwd	%xmm8, %xmm0    # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movq	8(%r8), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm8, %xmm1    # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movdqa	%xmm0, %xmm2
	pcmpeqd	%xmm8, %xmm2
	pand	%xmm9, %xmm2
	movdqa	%xmm1, %xmm3
	pcmpeqd	%xmm8, %xmm3
	pand	%xmm9, %xmm3
	pcmpeqd	%xmm10, %xmm0
	pand	%xmm9, %xmm0
	pcmpeqd	%xmm10, %xmm1
	pand	%xmm9, %xmm1
	movl	$8, %ecx
.LBB15_57:                              # %vector.body208.preheader.split
                                        #   in Loop: Header=BB15_53 Depth=1
	testq	%rbx, %rbx
	je	.LBB15_60
# BB#58:                                # %vector.body208.preheader.split.split
                                        #   in Loop: Header=BB15_53 Depth=1
	incq	%rsi
	andq	%r13, %rsi
	subq	%rcx, %rsi
	leaq	24(%r8,%rcx,2), %rbx
	.align	16, 0x90
.LBB15_59:                              # %vector.body208
                                        #   Parent Loop BB15_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbx), %xmm4        # xmm4 = mem[0],zero
	punpcklwd	%xmm8, %xmm4    # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movq	-16(%rbx), %xmm5        # xmm5 = mem[0],zero
	punpcklwd	%xmm8, %xmm5    # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	movdqa	%xmm4, %xmm6
	pcmpeqd	%xmm8, %xmm6
	pand	%xmm9, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpeqd	%xmm8, %xmm7
	pand	%xmm9, %xmm7
	paddd	%xmm2, %xmm6
	paddd	%xmm3, %xmm7
	pcmpeqd	%xmm10, %xmm4
	pand	%xmm9, %xmm4
	pcmpeqd	%xmm10, %xmm5
	pand	%xmm9, %xmm5
	paddd	%xmm0, %xmm4
	paddd	%xmm1, %xmm5
	movq	-8(%rbx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm8, %xmm0    # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm8, %xmm1    # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movdqa	%xmm0, %xmm2
	pcmpeqd	%xmm8, %xmm2
	pand	%xmm9, %xmm2
	movdqa	%xmm1, %xmm3
	pcmpeqd	%xmm8, %xmm3
	pand	%xmm9, %xmm3
	paddd	%xmm6, %xmm2
	paddd	%xmm7, %xmm3
	pcmpeqd	%xmm10, %xmm0
	pand	%xmm9, %xmm0
	pcmpeqd	%xmm10, %xmm1
	pand	%xmm9, %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	addq	$32, %rbx
	addq	$-16, %rsi
	jne	.LBB15_59
.LBB15_60:                              #   in Loop: Header=BB15_53 Depth=1
	movq	%rdi, %rbx
.LBB15_61:                              # %middle.block209
                                        #   in Loop: Header=BB15_53 Depth=1
	paddd	%xmm3, %xmm2
	pshufd	$78, %xmm2, %xmm3       # xmm3 = xmm2[2,3,0,1]
	paddd	%xmm2, %xmm3
	pshufd	$229, %xmm3, %xmm2      # xmm2 = xmm3[1,1,2,3]
	paddd	%xmm3, %xmm2
	movd	%xmm2, %esi
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edi
	cmpq	%rbx, %r9
	je	.LBB15_64
# BB#62:                                # %for.body.i.127.preheader
                                        #   in Loop: Header=BB15_53 Depth=1
	movl	%eax, %edx
	subl	%ebx, %edx
	leaq	(%r8,%rbx,2), %rcx
	.align	16, 0x90
.LBB15_63:                              # %for.body.i.127
                                        #   Parent Loop BB15_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rcx), %ebx
	cmpw	$1, %bx
	adcl	$0, %esi
	cmpl	$65535, %ebx            # imm = 0xFFFF
	sete	%bl
	movzbl	%bl, %ebx
	addl	%ebx, %edi
	addq	$2, %rcx
	decl	%edx
	jne	.LBB15_63
.LBB15_64:                              # %for.end.i.128
                                        #   in Loop: Header=BB15_53 Depth=1
	cmpl	$1, %esi
	jne	.LBB15_70
# BB#65:                                # %for.end.i.128
                                        #   in Loop: Header=BB15_53 Depth=1
	cmpl	$1, %edi
	je	.LBB15_66
.LBB15_70:                              # %if.end.19.i
                                        #   in Loop: Header=BB15_53 Depth=1
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	sarl	$2, %ecx
	cmpl	%ecx, %esi
	movl	$0, %r14d
	jg	.LBB15_75
# BB#71:                                # %IsDegenerated.exit
                                        #   in Loop: Header=BB15_53 Depth=1
	cmpl	%ecx, %edi
	jg	.LBB15_72
.LBB15_66:                              # %IsDegenerated.exit.thread
                                        #   in Loop: Header=BB15_53 Depth=1
	testl	%r12d, %r12d
	movl	$0, %r14d
	je	.LBB15_75
# BB#67:                                # %for.cond.91.backedge.land.rhs_crit_edge
                                        #   in Loop: Header=BB15_53 Depth=1
	incl	%ebp
	movl	8(%r15), %eax
	cmpl	%eax, %ebp
	jb	.LBB15_53
.LBB15_68:                              # %for.cond.121.preheader
	testl	%eax, %eax
	je	.LBB15_86
# BB#69:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB15_74:                              # %for.body.125
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebp
	movq	352(%rsp,%rbp,8), %rsi
	movl	$4096, %edi             # imm = 0x1000
	callq	cmsReverseToneCurveEx
	movq	%rax, 224(%rsp,%rbp,8)
	testq	%rax, %rax
	movl	$0, %r14d
	je	.LBB15_75
# BB#73:                                # %for.cond.121
                                        #   in Loop: Header=BB15_74 Depth=1
	incl	%ebx
	cmpl	8(%r15), %ebx
	jb	.LBB15_74
.LBB15_86:                              # %for.end.139
	movq	%r15, %rdi
	callq	cmsPipelineDup
	movq	%rax, %rbp
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testq	%rbp, %rbp
	movl	$0, %r14d
	je	.LBB15_75
# BB#87:                                # %if.end.144
	movq	56(%r15), %rdi
	movl	8(%r15), %esi
	leaq	224(%rsp), %rdx
	callq	cmsStageAllocToneCurves
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB15_88
# BB#89:                                # %if.end.152
	movq	56(%r15), %rdi
	movl	8(%r15), %esi
	movl	12(%r15), %edx
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB15_88
# BB#90:                                # %if.end.159
	movq	56(%r15), %rdi
	movl	8(%r15), %esi
	leaq	352(%rsp), %rdx
	callq	cmsStageAllocToneCurves
	movq	%rax, %r14
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB15_91
# BB#92:                                # %if.end.167
	movq	56(%r15), %rdi
	movl	8(%r15), %edx
	movl	12(%r15), %ecx
	xorl	%r8d, %r8d
	movl	56(%rsp), %esi          # 4-byte Reload
	callq	cmsStageAllocCLut16bit
	movq	%rax, %r13
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB15_91
# BB#93:                                # %if.end.175
	xorl	%ebx, %ebx
	movl	$XFormSampler16, %esi
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	cmsStageSampleCLut16bit
	testl	%eax, %eax
	je	.LBB15_91
# BB#94:                                # %for.cond.180.preheader
	cmpl	$0, 8(%r15)
	je	.LBB15_100
.LBB15_95:                              # %for.body.184
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	352(%rsp,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_97
# BB#96:                                # %if.then.188
                                        #   in Loop: Header=BB15_95 Depth=1
	callq	cmsFreeToneCurve
.LBB15_97:                              # %if.end.191
                                        #   in Loop: Header=BB15_95 Depth=1
	movq	224(%rsp,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_99
# BB#98:                                # %if.then.195
                                        #   in Loop: Header=BB15_95 Depth=1
	callq	cmsFreeToneCurve
.LBB15_99:                              # %for.inc.199
                                        #   in Loop: Header=BB15_95 Depth=1
	incl	%ebx
	cmpl	8(%r15), %ebx
	jb	.LBB15_95
.LBB15_100:                             # %for.end.201
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	cmsPipelineFree
	movq	%r14, %rdi
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, %rbp
	movq	48(%r13), %rbx
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	callq	_cmsFormatterIs8bit
	testl	%eax, %eax
	movq	56(%r12), %rdi
	movq	8(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	je	.LBB15_108
# BB#101:                               # %if.then.205
	movl	$4624, %esi             # imm = 0x1210
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	callq	_cmsMallocZero
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	testq	%rax, %rax
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB15_115
# BB#102:                               # %for.cond.preheader.i
	movq	%rbp, %r15
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	$-256, %rbx
	xorl	%r12d, %r12d
.LBB15_103:                             # %for.body.i.136
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB15_105
# BB#104:                               # %if.then.3.i
                                        #   in Loop: Header=BB15_103 Depth=1
	movq	(%r15), %rdi
	leal	256(%rbx), %eax
	orl	%r12d, %eax
	movzwl	%ax, %r13d
	movl	%r13d, %esi
	callq	cmsEvalToneCurve16
	movw	%ax, %bp
	movq	8(%r15), %rdi
	movl	%r13d, %esi
	callq	cmsEvalToneCurve16
	movw	%ax, %r14w
	movq	16(%r15), %rdi
	movl	%r13d, %esi
	movq	32(%rsp), %r13          # 8-byte Reload
	callq	cmsEvalToneCurve16
	jmp	.LBB15_106
.LBB15_105:                             # %if.else.i
                                        #   in Loop: Header=BB15_103 Depth=1
	leal	256(%rbx), %ebp
	orl	%r12d, %ebp
	movw	%bp, %r14w
	movw	%bp, %ax
.LBB15_106:                             # %if.end.42.i
                                        #   in Loop: Header=BB15_103 Depth=1
	movzwl	%bp, %edx
	movq	88(%rsp), %rbp          # 8-byte Reload
	imull	52(%rbp), %edx
	leal	32767(%rdx), %ecx
	movslq	%ecx, %rcx
	imulq	$-2147450879, %rcx, %rcx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rcx
	leal	32767(%rcx,%rdx), %ecx
	movl	%ecx, %esi
	shrl	$31, %esi
	sarl	$15, %ecx
	addl	%esi, %ecx
	addl	%edx, %ecx
	movzwl	%r14w, %esi
	imull	56(%rbp), %esi
	leal	32767(%rsi), %edx
	movslq	%edx, %rdx
	imulq	$-2147450879, %rdx, %rdx # imm = 0xFFFFFFFF80008001
	shrq	$32, %rdx
	leal	32767(%rdx,%rsi), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	sarl	$15, %edx
	addl	%edi, %edx
	addl	%esi, %edx
	movzwl	%ax, %eax
	imull	60(%rbp), %eax
	leal	32767(%rax), %esi
	movslq	%esi, %rsi
	imulq	$-2147450879, %rsi, %rsi # imm = 0xFFFFFFFF80008001
	shrq	$32, %rsi
	leal	32767(%rsi,%rax), %esi
	movl	%esi, %edi
	shrl	$31, %edi
	sarl	$15, %esi
	addl	%edi, %esi
	addl	%eax, %esi
	movl	%ecx, %eax
	sarl	$16, %eax
	imull	92(%rbp), %eax
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	%eax, 2576(%rdi,%rbx,4)
	movl	%edx, %eax
	sarl	$16, %eax
	imull	88(%rbp), %eax
	movl	%eax, 3600(%rdi,%rbx,4)
	movl	%esi, %eax
	sarl	$16, %eax
	imull	84(%rbp), %eax
	movl	%eax, 4624(%rdi,%rbx,4)
	movw	%cx, 528(%rdi,%rbx,2)
	movw	%dx, 1040(%rdi,%rbx,2)
	movw	%si, 1552(%rdi,%rbx,2)
	addl	$256, %r12d             # imm = 0x100
	incq	%rbx
	jne	.LBB15_103
# BB#107:                               # %if.end.211
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rax, (%rdx)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rdx)
	movl	$PrelinEval8, %esi
	movl	$Prelin8free, %ecx
	movl	$Prelin8dup, %r8d
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	callq	_cmsPipelineSetOptimizationParameters
	movq	48(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB15_110
.LBB15_88:
	movq	%rbp, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jmp	.LBB15_75
.LBB15_72:
	xorl	%r14d, %r14d
	jmp	.LBB15_75
.LBB15_91:
	movq	%rbp, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r12, %r14
.LBB15_75:                              # %Error
	cmpl	$0, 8(%r15)
	je	.LBB15_82
# BB#76:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB15_77:                              # %for.body.239
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movq	352(%rsp,%rbp,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_79
# BB#78:                                # %if.then.243
                                        #   in Loop: Header=BB15_77 Depth=1
	callq	cmsFreeToneCurve
.LBB15_79:                              # %if.end.246
                                        #   in Loop: Header=BB15_77 Depth=1
	movq	224(%rsp,%rbp,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_81
# BB#80:                                # %if.then.250
                                        #   in Loop: Header=BB15_77 Depth=1
	callq	cmsFreeToneCurve
.LBB15_81:                              # %for.inc.254
                                        #   in Loop: Header=BB15_77 Depth=1
	incl	%ebp
	cmpl	8(%r15), %ebp
	jb	.LBB15_77
.LBB15_82:                              # %for.end.256
	movq	88(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB15_84
# BB#83:                                # %if.then.259
	callq	cmsPipelineFree
.LBB15_84:                              # %if.end.260
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.LBB15_115
# BB#85:                                # %if.then.263
	movq	%r14, %rdi
	callq	cmsPipelineFree
.LBB15_115:                             # %cleanup.265
	movl	%r15d, %eax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_108:                             # %if.else
	xorl	%r15d, %r15d
	movl	$3, %edx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rcx
	callq	PrelinOpt16alloc
	testq	%rax, %rax
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB15_115
# BB#109:                               # %if.end.218
	movl	$PrelinEval16, %esi
	movl	$PrelinOpt16free, %ecx
	movl	$Prelin16dup, %r8d
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	_cmsPipelineSetOptimizationParameters
.LBB15_110:                             # %if.end.222
	movl	(%r13), %eax
	cmpl	$3, 68(%rsp)            # 4-byte Folded Reload
	jne	.LBB15_112
# BB#111:                               # %if.then.225
	orl	$4, %eax
	movl	%eax, (%r13)
.LBB15_112:                             # %if.end.226
	testb	$4, %al
	jne	.LBB15_114
# BB#113:                               # %if.then.229
	movq	%r12, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	movl	40(%rsp), %edx          # 4-byte Reload
	callq	FixWhiteMisalignment
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB15_115
.LBB15_114:                             # %if.end.234
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	cmsPipelineFree
	movq	%r12, (%rbx)
	movl	$1, %r15d
	jmp	.LBB15_115
.Lfunc_end15:
	.size	OptimizeByComputingLinearization, .Lfunc_end15-OptimizeByComputingLinearization
	.cfi_endproc

	.align	16, 0x90
	.type	CurvesAlloc,@function
CurvesAlloc:                            # @CurvesAlloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 96
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	$24, %esi
	callq	_cmsMallocZero
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB16_17
# BB#1:                                 # %if.end
	movl	%ebp, 8(%r15)
	movl	%ebx, 12(%r15)
	movl	$8, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, %rcx
	movq	%rcx, 16(%r15)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB16_17
# BB#2:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	movq	%r15, %rax
	jle	.LBB16_17
# BB#3:                                 # %for.body.lr.ph
	movslq	%ebp, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB16_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_13 Depth 2
                                        #     Child Loop BB16_15 Depth 2
	movl	$2, %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_cmsCalloc
	movq	16(%r15), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	16(%r15), %rsi
	cmpq	$0, (%rsi,%rbp,8)
	je	.LBB16_5
# BB#10:                                # %if.end.23
                                        #   in Loop: Header=BB16_4 Depth=1
	cmpl	$256, %ebx              # imm = 0x100
	jne	.LBB16_11
# BB#14:                                # %for.body.28.lr.ph
                                        #   in Loop: Header=BB16_4 Depth=1
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB16_15:                              # %for.body.28
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12,%rbp,8), %rdi
	movl	%r13d, %eax
	orl	%r14d, %eax
	movzwl	%ax, %esi
	callq	cmsEvalToneCurve16
	movq	16(%r15), %rcx
	movq	(%rcx,%rbp,8), %rcx
	movw	%ax, (%rcx,%r13,2)
	incq	%r13
	addl	$256, %r14d             # imm = 0x100
	cmpl	$256, %r13d             # imm = 0x100
	jne	.LBB16_15
	jmp	.LBB16_16
	.align	16, 0x90
.LBB16_11:                              # %for.cond.42.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	testl	%ebx, %ebx
	jle	.LBB16_16
# BB#12:                                # %for.body.45.lr.ph
                                        #   in Loop: Header=BB16_4 Depth=1
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB16_13:                              # %for.body.45
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12,%rbp,8), %rdi
	movzwl	%bx, %esi
	callq	cmsEvalToneCurve16
	movq	16(%r15), %rcx
	movq	(%rcx,%rbp,8), %rcx
	movw	%ax, (%rcx,%rbx,2)
	incq	%rbx
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%ebx, %eax
	jne	.LBB16_13
.LBB16_16:                              # %for.inc.59
                                        #   in Loop: Header=BB16_4 Depth=1
	incq	%rbp
	cmpq	8(%rsp), %rbp           # 8-byte Folded Reload
	movq	%r15, %rax
	movq	24(%rsp), %r14          # 8-byte Reload
	movl	20(%rsp), %ebx          # 4-byte Reload
	jl	.LBB16_4
	jmp	.LBB16_17
.LBB16_5:                               # %for.cond.16.preheader
	testl	%ebp, %ebp
	jle	.LBB16_9
# BB#6:                                 # %for.body.18.preheader
	movq	(%rsi), %rsi
	movq	%r14, %rdi
	callq	_cmsFree
	movl	$1, %ebx
	cmpl	$1, %ebp
	je	.LBB16_8
	.align	16, 0x90
.LBB16_7:                               # %for.body.18.for.body.18_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	_cmsFree
	incq	%rbx
	cmpl	%ebx, %ebp
	jne	.LBB16_7
.LBB16_8:                               # %for.cond.16.for.end_crit_edge
	movq	16(%r15), %rsi
.LBB16_9:                               # %for.end
	movq	%r14, %rdi
	callq	_cmsFree
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB16_17:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	CurvesAlloc, .Lfunc_end16-CurvesAlloc
	.cfi_endproc

	.align	16, 0x90
	.type	FastEvaluateCurves8,@function
FastEvaluateCurves8:                    # @FastEvaluateCurves8
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	8(%rdx), %r9
	testq	%r9, %r9
	jle	.LBB17_5
# BB#1:                                 # %for.body.lr.ph
	movq	16(%rdx), %r10
	xorl	%edx, %edx
	testb	$1, %r9b
	je	.LBB17_3
# BB#2:                                 # %for.body.prol
	movzbl	1(%rdi), %r8d
	movq	(%r10), %rdx
	movw	(%rdx,%r8,2), %dx
	movw	%dx, (%rsi)
	movl	$1, %edx
.LBB17_3:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB17_5
	.align	16, 0x90
.LBB17_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rdi,%rdx,2), %eax
	movq	(%r10,%rdx,8), %rcx
	movw	(%rcx,%rax,2), %ax
	movw	%ax, (%rsi,%rdx,2)
	movzbl	3(%rdi,%rdx,2), %eax
	movq	8(%r10,%rdx,8), %rcx
	movw	(%rcx,%rax,2), %ax
	movw	%ax, 2(%rsi,%rdx,2)
	addq	$2, %rdx
	cmpq	%r9, %rdx
	jl	.LBB17_4
.LBB17_5:                               # %for.end
	retq
.Lfunc_end17:
	.size	FastEvaluateCurves8, .Lfunc_end17-FastEvaluateCurves8
	.cfi_endproc

	.align	16, 0x90
	.type	CurvesFree,@function
CurvesFree:                             # @CurvesFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 32
.Ltmp164:
	.cfi_offset %rbx, -32
.Ltmp165:
	.cfi_offset %r14, -24
.Ltmp166:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpl	$0, 8(%r15)
	jle	.LBB18_3
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	_cmsFree
	incq	%rbx
	movslq	8(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB18_2
.LBB18_3:                               # %for.end
	movq	16(%r15), %rsi
	movq	%r14, %rdi
	callq	_cmsFree
	movq	%r14, %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	_cmsFree                # TAILCALL
.Lfunc_end18:
	.size	CurvesFree, .Lfunc_end18-CurvesFree
	.cfi_endproc

	.align	16, 0x90
	.type	CurvesDup,@function
CurvesDup:                              # @CurvesDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 32
.Ltmp170:
	.cfi_offset %rbx, -32
.Ltmp171:
	.cfi_offset %r14, -24
.Ltmp172:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$24, %edx
	callq	_cmsDupMem
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB19_5
# BB#1:                                 # %if.end
	movq	16(%r15), %rsi
	movl	8(%r15), %edx
	shll	$3, %edx
	movq	%r14, %rdi
	callq	_cmsDupMem
	movq	%rax, 16(%r15)
	cmpl	$0, 8(%r15)
	jle	.LBB19_4
# BB#2:                                 # %for.body.lr.ph
	movq	(%rax), %rsi
	movl	12(%r15), %edx
	addl	%edx, %edx
	movq	%r14, %rdi
	callq	_cmsDupMem
	movq	16(%r15), %rcx
	movq	%rax, (%rcx)
	movl	$1, %ebx
	cmpl	$2, 8(%r15)
	jl	.LBB19_4
	.align	16, 0x90
.LBB19_3:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movl	12(%r15), %edx
	addl	%edx, %edx
	movq	%r14, %rdi
	callq	_cmsDupMem
	movq	16(%r15), %rcx
	movq	%rax, (%rcx,%rbx,8)
	incq	%rbx
	movslq	8(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB19_3
.LBB19_4:
	movq	%r15, %rax
.LBB19_5:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	CurvesDup, .Lfunc_end19-CurvesDup
	.cfi_endproc

	.align	16, 0x90
	.type	FastEvaluateCurves16,@function
FastEvaluateCurves16:                   # @FastEvaluateCurves16
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	8(%rdx), %r9
	testq	%r9, %r9
	jle	.LBB20_5
# BB#1:                                 # %for.body.lr.ph
	movq	16(%rdx), %r10
	xorl	%edx, %edx
	testb	$1, %r9b
	je	.LBB20_3
# BB#2:                                 # %for.body.prol
	movzwl	(%rdi), %r8d
	movq	(%r10), %rdx
	movw	(%rdx,%r8,2), %dx
	movw	%dx, (%rsi)
	movl	$1, %edx
.LBB20_3:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB20_5
	.align	16, 0x90
.LBB20_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%rdx,2), %eax
	movq	(%r10,%rdx,8), %rcx
	movw	(%rcx,%rax,2), %ax
	movw	%ax, (%rsi,%rdx,2)
	movzwl	2(%rdi,%rdx,2), %eax
	movq	8(%r10,%rdx,8), %rcx
	movw	(%rcx,%rax,2), %ax
	movw	%ax, 2(%rsi,%rdx,2)
	addq	$2, %rdx
	cmpq	%r9, %rdx
	jl	.LBB20_4
.LBB20_5:                               # %for.end
	retq
.Lfunc_end20:
	.size	FastEvaluateCurves16, .Lfunc_end20-FastEvaluateCurves16
	.cfi_endproc

	.align	16, 0x90
	.type	MatShaperEval16,@function
MatShaperEval16:                        # @MatShaperEval16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbx, -16
	movzbl	(%rdi), %eax
	movzbl	2(%rdi), %ecx
	movzbl	4(%rdi), %edi
	movl	8(%rdx,%rax,4), %r8d
	movl	1032(%rdx,%rcx,4), %eax
	movl	2056(%rdx,%rdi,4), %r9d
	movl	3080(%rdx), %r10d
	imull	%r8d, %r10d
	movl	3084(%rdx), %edi
	imull	%eax, %edi
	movl	3088(%rdx), %ecx
	imull	%r9d, %ecx
	addl	%r10d, %edi
	addl	%ecx, %edi
	movl	3116(%rdx), %ecx
	movl	3120(%rdx), %r10d
	leal	8192(%rcx,%rdi), %r11d
	sarl	$14, %r11d
	movl	3092(%rdx), %edi
	imull	%r8d, %edi
	movl	3096(%rdx), %ecx
	imull	%eax, %ecx
	movl	3100(%rdx), %ebx
	imull	%r9d, %ebx
	addl	%edi, %ecx
	addl	%ebx, %ecx
	leal	8192(%r10,%rcx), %r10d
	sarl	$14, %r10d
	imull	3104(%rdx), %r8d
	imull	3108(%rdx), %eax
	imull	3112(%rdx), %r9d
	movl	3124(%rdx), %ecx
	addl	%r8d, %eax
	addl	%r9d, %eax
	leal	8192(%rcx,%rax), %eax
	sarl	$14, %eax
	cmpl	$16384, %r11d           # imm = 0x4000
	movl	$16384, %ecx            # imm = 0x4000
	movl	%r11d, %ebx
	cmovgl	%ecx, %ebx
	xorl	%r8d, %r8d
	testl	%r11d, %r11d
	movl	%ebx, %ebx
	cmovsq	%r8, %rbx
	cmpl	$16384, %r10d           # imm = 0x4000
	movl	%r10d, %edi
	cmovgl	%ecx, %edi
	testl	%r10d, %r10d
	movl	%edi, %edi
	cmovsq	%r8, %rdi
	cmpl	$16384, %eax            # imm = 0x4000
	cmovlel	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, %eax
	cmovsq	%r8, %rax
	movw	3128(%rdx,%rbx,2), %cx
	movw	%cx, (%rsi)
	movw	35898(%rdx,%rdi,2), %cx
	movw	%cx, 2(%rsi)
	movw	68668(%rdx,%rax,2), %ax
	movw	%ax, 4(%rsi)
	popq	%rbx
	retq
.Lfunc_end21:
	.size	MatShaperEval16, .Lfunc_end21-MatShaperEval16
	.cfi_endproc

	.align	16, 0x90
	.type	FreeMatShaper,@function
FreeMatShaper:                          # @FreeMatShaper
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB22_1
# BB#2:                                 # %if.then
	jmp	_cmsFree                # TAILCALL
.LBB22_1:                               # %if.end
	retq
.Lfunc_end22:
	.size	FreeMatShaper, .Lfunc_end22-FreeMatShaper
	.cfi_endproc

	.align	16, 0x90
	.type	DupMatShaper,@function
DupMatShaper:                           # @DupMatShaper
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$101440, %edx           # imm = 0x18C40
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end23:
	.size	DupMatShaper, .Lfunc_end23-DupMatShaper
	.cfi_endproc

	.align	16, 0x90
	.type	PrelinEval8,@function
PrelinEval8:                            # @PrelinEval8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp177:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp178:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp179:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 56
.Ltmp181:
	.cfi_offset %rbx, -56
.Ltmp182:
	.cfi_offset %r12, -48
.Ltmp183:
	.cfi_offset %r13, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	8(%rdx), %rax
	movl	16(%rax), %ecx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	120(%rax), %rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movzbl	1(%rdi), %ecx
	movzbl	3(%rdi), %ebp
	movzbl	5(%rdi), %ebx
	movl	1552(%rdx,%rcx,4), %r11d
	movl	2576(%rdx,%rbp,4), %esi
	movl	3600(%rdx,%rbx,4), %r15d
	movzwl	16(%rdx,%rcx,2), %ecx
	xorl	%r13d, %r13d
	testl	%ecx, %ecx
	movzwl	528(%rdx,%rbp,2), %r9d
	movzwl	1040(%rdx,%rbx,2), %edx
	movl	$0, %edi
	je	.LBB24_2
# BB#1:                                 # %cond.false
	movl	92(%rax), %edi
.LBB24_2:                               # %cond.end
	testw	%r9w, %r9w
	je	.LBB24_4
# BB#3:                                 # %cond.false.36
	movl	88(%rax), %r13d
.LBB24_4:                               # %cond.end.39
	xorl	%r8d, %r8d
	testw	%dx, %dx
	je	.LBB24_6
# BB#5:                                 # %cond.false.45
	movl	84(%rax), %r8d
.LBB24_6:                               # %cond.end.48
	movq	-8(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB24_22
# BB#7:                                 # %for.body.lr.ph
	cmpl	%r9d, %ecx
	sbbb	%r12b, %r12b
	cmpl	%ecx, %edx
	sbbb	%r10b, %r10b
	movb	%r12b, %al
	orb	%r10b, %al
	cmpl	%edx, %r9d
	sbbb	%bl, %bl
	orb	%bl, %r12b
	orb	%r10b, %bl
	movb	%bl, -73(%rsp)          # 1-byte Spill
	andb	$1, %r12b
	cmpl	%edx, %ecx
	sbbb	%bl, %bl
	movb	%bl, -40(%rsp)          # 1-byte Spill
	cmpl	%r9d, %edx
	sbbb	%r10b, %r10b
	movb	%r10b, -74(%rsp)        # 1-byte Spill
	orb	%r10b, %bl
	andb	$1, %bl
	movb	%bl, -25(%rsp)          # 1-byte Spill
	andb	$1, %al
	movb	%al, -41(%rsp)          # 1-byte Spill
	cmpl	%ecx, %r9d
	sbbb	%al, %al
	movb	%al, -57(%rsp)          # 1-byte Spill
	leal	(%rdi,%r15), %eax
	addl	%esi, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	leal	(%rdi,%r13), %eax
	addl	%r11d, %eax
	addl	%esi, %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	leal	(%rdi,%r8), %ebx
	leal	(%rbx,%r13), %r14d
	addl	%r11d, %r14d
	addl	%r15d, %r14d
	addl	%esi, %r14d
	addl	%r11d, %edi
	addl	%esi, %edi
	addl	%r15d, %ebx
	addl	%r11d, %ebx
	addl	%esi, %ebx
	leal	(%r13,%r15), %ebp
	addl	%r11d, %ebp
	addl	%esi, %ebp
	movq	%rbp, -88(%rsp)         # 8-byte Spill
	leal	(%r8,%rsi), %r10d
	addl	%r13d, %r8d
	addl	%r15d, %r8d
	addl	%esi, %r8d
	addl	%esi, %r13d
	leal	(%rsi,%r11), %ebp
	movq	-24(%rsp), %rax         # 8-byte Reload
	addl	%r11d, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	addl	%r11d, %r10d
	addl	%r11d, %r8d
	addl	%r11d, %r13d
	movb	-74(%rsp), %al          # 1-byte Reload
	movl	%ecx, %esi
	movb	-57(%rsp), %cl          # 1-byte Reload
	orb	%cl, %al
	orb	-40(%rsp), %cl          # 1-byte Folded Reload
	andb	$1, %cl
	movb	%cl, -57(%rsp)          # 1-byte Spill
	movl	%esi, %ecx
	andb	$1, -73(%rsp)           # 1-byte Folded Spill
	andb	$1, %al
	movb	%al, -74(%rsp)          # 1-byte Spill
	addl	%r15d, %ebp
	movslq	%ebp, %rbp
	movq	-96(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rbp,2), %r11
	movl	-56(%rsp), %eax         # 4-byte Reload
	addl	%r15d, %eax
	movslq	%eax, %rbp
	leaq	(%rsi,%rbp,2), %rax
	movslq	%r14d, %rbp
	leaq	(%rsi,%rbp,2), %r14
	addl	%r15d, %edi
	movslq	%edi, %rbp
	leaq	(%rsi,%rbp,2), %rdi
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movslq	%ebx, %rbp
	leaq	(%rsi,%rbp,2), %rdi
	movq	%rdi, -40(%rsp)         # 8-byte Spill
	addl	%r15d, %r10d
	movslq	%r10d, %rbp
	leaq	(%rsi,%rbp,2), %rdi
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	movslq	%r8d, %rbp
	leaq	(%rsi,%rbp,2), %rdi
	movq	%rdi, -104(%rsp)        # 8-byte Spill
	addl	%r15d, %r13d
	movslq	%r13d, %rbp
	leaq	(%rsi,%rbp,2), %rdi
	movq	%rdi, -112(%rsp)        # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB24_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r11,%rbx,2), %r15d
	testb	%r12b, %r12b
	je	.LBB24_9
# BB#10:                                # %if.else
                                        #   in Loop: Header=BB24_8 Depth=1
	cmpb	$0, -25(%rsp)           # 1-byte Folded Reload
	je	.LBB24_11
# BB#12:                                # %if.else.134
                                        #   in Loop: Header=BB24_8 Depth=1
	cmpb	$0, -41(%rsp)           # 1-byte Folded Reload
	je	.LBB24_13
# BB#14:                                # %if.else.174
                                        #   in Loop: Header=BB24_8 Depth=1
	cmpb	$0, -57(%rsp)           # 1-byte Folded Reload
	je	.LBB24_15
# BB#16:                                # %if.else.214
                                        #   in Loop: Header=BB24_8 Depth=1
	cmpb	$0, -73(%rsp)           # 1-byte Folded Reload
	je	.LBB24_17
# BB#18:                                # %if.else.254
                                        #   in Loop: Header=BB24_8 Depth=1
	xorl	%r13d, %r13d
	cmpb	$0, -74(%rsp)           # 1-byte Folded Reload
	movl	$0, %r8d
	movl	$0, %r10d
	jne	.LBB24_21
# BB#19:                                # %if.then.260
                                        #   in Loop: Header=BB24_8 Depth=1
	movzwl	(%r14,%rbx,2), %r10d
	movq	-104(%rsp), %rdi        # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r8d
	subl	%r8d, %r10d
	movq	-72(%rsp), %rdi         # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r13d
	subl	%r13d, %r8d
	jmp	.LBB24_20
	.align	16, 0x90
.LBB24_9:                               # %if.then
                                        #   in Loop: Header=BB24_8 Depth=1
	movq	-24(%rsp), %rdi         # 8-byte Reload
	leal	(%rdi,%rbx), %ebp
	movslq	%ebp, %rbp
	movzwl	(%rsi,%rbp,2), %r10d
	movzwl	(%rax,%rbx,2), %r8d
	movzwl	(%r14,%rbx,2), %r13d
	subl	%r8d, %r13d
	subl	%r10d, %r8d
	subl	%r15d, %r10d
	jmp	.LBB24_21
	.align	16, 0x90
.LBB24_11:                              # %if.then.100
                                        #   in Loop: Header=BB24_8 Depth=1
	movq	-56(%rsp), %rdi         # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r10d
	movzwl	(%r14,%rbx,2), %r8d
	movq	-40(%rsp), %rdi         # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r13d
	subl	%r13d, %r8d
	subl	%r10d, %r13d
	subl	%r15d, %r10d
	jmp	.LBB24_21
.LBB24_13:                              # %if.then.140
                                        #   in Loop: Header=BB24_8 Depth=1
	movq	-40(%rsp), %rdi         # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r10d
	movq	-72(%rsp), %rdi         # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r13d
	movzwl	(%r14,%rbx,2), %r8d
	subl	%r10d, %r8d
	subl	%r13d, %r10d
.LBB24_20:                              # %if.end.299
                                        #   in Loop: Header=BB24_8 Depth=1
	subl	%r15d, %r13d
	jmp	.LBB24_21
.LBB24_15:                              # %if.then.180
                                        #   in Loop: Header=BB24_8 Depth=1
	movzwl	(%rax,%rbx,2), %ebp
	movq	-88(%rsp), %rdi         # 8-byte Reload
	leal	(%rdi,%rbx), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %r8d
	movzwl	(%r14,%rbx,2), %r13d
	subl	%ebp, %r13d
	movl	%ebp, %r10d
	subl	%r8d, %r10d
	subl	%r15d, %r8d
	jmp	.LBB24_21
.LBB24_17:                              # %if.then.220
                                        #   in Loop: Header=BB24_8 Depth=1
	movzwl	(%r14,%rbx,2), %r10d
	movq	-104(%rsp), %rdi        # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r13d
	subl	%r13d, %r10d
	movq	-112(%rsp), %rdi        # 8-byte Reload
	movzwl	(%rdi,%rbx,2), %r8d
	subl	%r8d, %r13d
	subl	%r15d, %r8d
	.align	16, 0x90
.LBB24_21:                              # %if.end.299
                                        #   in Loop: Header=BB24_8 Depth=1
	imull	%ecx, %r10d
	imull	%r9d, %r8d
	imull	%edx, %r13d
	addl	%r8d, %r13d
	leal	(%r13,%r10), %edi
	leal	32769(%r10,%r13), %ebp
	sarl	$16, %ebp
	leal	32769(%rbp,%rdi), %edi
	shrl	$16, %edi
	addl	%r15d, %edi
	movq	-16(%rsp), %rbp         # 8-byte Reload
	movw	%di, (%rbp,%rbx,2)
	incq	%rbx
	movq	-8(%rsp), %rdi          # 8-byte Reload
	cmpl	%ebx, %edi
	jne	.LBB24_8
.LBB24_22:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	PrelinEval8, .Lfunc_end24-PrelinEval8
	.cfi_endproc

	.align	16, 0x90
	.type	Prelin8free,@function
Prelin8free:                            # @Prelin8free
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	_cmsFree                # TAILCALL
.Lfunc_end25:
	.size	Prelin8free, .Lfunc_end25-Prelin8free
	.cfi_endproc

	.align	16, 0x90
	.type	Prelin8dup,@function
Prelin8dup:                             # @Prelin8dup
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4624, %edx             # imm = 0x1210
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end26:
	.size	Prelin8dup, .Lfunc_end26-Prelin8dup
	.cfi_endproc

	.type	_cmsOptimizationPluginChunk,@object # @_cmsOptimizationPluginChunk
	.bss
	.globl	_cmsOptimizationPluginChunk
	.align	8
_cmsOptimizationPluginChunk:
	.zero	8
	.size	_cmsOptimizationPluginChunk, 8

	.type	_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType,@object # @_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType
	.local	_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType
	.comm	_cmsAllocOptimizationPluginChunk.OptimizationPluginChunkType,8,8
	.type	DefaultOptimization,@object # @DefaultOptimization
	.data
	.align	16
DefaultOptimization:
	.quad	OptimizeByJoiningCurves
	.quad	DefaultOptimization+16
	.quad	OptimizeMatrixShaper
	.quad	DefaultOptimization+32
	.quad	OptimizeByComputingLinearization
	.quad	DefaultOptimization+48
	.quad	OptimizeByResampling
	.quad	0
	.size	DefaultOptimization, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(ctx != ((void*)0))"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsopt.c"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__.DupPluginOptimizationList,@object # @__PRETTY_FUNCTION__.DupPluginOptimizationList
.L__PRETTY_FUNCTION__.DupPluginOptimizationList:
	.asciz	"void DupPluginOptimizationList(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__.DupPluginOptimizationList, 95

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(head != ((void*)0))"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(0)"
	.size	.L.str.3, 4

	.type	.L__PRETTY_FUNCTION__.OptimizeByResampling,@object # @__PRETTY_FUNCTION__.OptimizeByResampling
.L__PRETTY_FUNCTION__.OptimizeByResampling:
	.asciz	"cmsBool OptimizeByResampling(cmsPipeline **, cmsUInt32Number, cmsUInt32Number *, cmsUInt32Number *, cmsUInt32Number *)"
	.size	.L__PRETTY_FUNCTION__.OptimizeByResampling, 119

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(Lut -> InputChannels < 16)"
	.size	.L.str.4, 28

	.type	.L__PRETTY_FUNCTION__.XFormSampler16,@object # @__PRETTY_FUNCTION__.XFormSampler16
.L__PRETTY_FUNCTION__.XFormSampler16:
	.asciz	"int XFormSampler16(const cmsUInt16Number *, cmsUInt16Number *, void *)"
	.size	.L__PRETTY_FUNCTION__.XFormSampler16, 71

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(Lut -> OutputChannels < 16)"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(internal) Attempt to PatchLUT on non-lut stage"
	.size	.L.str.6, 48

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(internal) %d Channels are not supported on PatchLUT"
	.size	.L.str.7, 53


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
