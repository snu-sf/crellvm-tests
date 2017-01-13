	.text
	.file	"cmscnvrt.bc"
	.globl	_cmsAllocIntentsPluginChunk
	.align	16, 0x90
	.type	_cmsAllocIntentsPluginChunk,@function
_cmsAllocIntentsPluginChunk:            # @_cmsAllocIntentsPluginChunk
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
	je	.LBB0_10
# BB#1:                                 # %if.then
	movq	$0, (%rsp)
	movq	96(%rsi), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	movq	8(%r14), %rdi
	je	.LBB0_9
# BB#2:                                 # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$280, %edx              # imm = 0x118
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB0_12
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$0, 272(%rax)
	testq	%r12, %r12
	je	.LBB0_6
# BB#5:                                 # %if.then.3.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, 272(%r12)
.LBB0_6:                                # %if.end.5.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testq	%r15, %r15
	jne	.LBB0_8
# BB#7:                                 # %if.then.8.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, (%rsp)
	movq	%rax, %r15
.LBB0_8:                                # %for.inc.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	272(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB0_3
.LBB0_9:                                # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB0_11
.LBB0_10:                               # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocIntentsPluginChunk.IntentsPluginChunkType, %esi
.LBB0_11:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 96(%r14)
.LBB0_12:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	_cmsAllocIntentsPluginChunk, .Lfunc_end0-_cmsAllocIntentsPluginChunk
	.cfi_endproc

	.globl	_cmsDefaultICCintents
	.align	16, 0x90
	.type	_cmsDefaultICCintents,@function
_cmsDefaultICCintents:                  # @_cmsDefaultICCintents
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	DefaultICCintents       # TAILCALL
.Lfunc_end1:
	.size	_cmsDefaultICCintents, .Lfunc_end1-_cmsDefaultICCintents
	.cfi_endproc

	.align	16, 0x90
	.type	DefaultICCintents,@function
DefaultICCintents:                      # @DefaultICCintents
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
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 256
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	je	.LBB2_44
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB2_44
# BB#2:                                 # %for.body.lr.ph
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	callq	cmsGetColorSpace
	movl	%eax, %ecx
	movl	%r15d, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r15d, 28(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_42:                               # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r12, %rdi
	callq	cmsPipelineFree
	movq	96(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	cmpq	48(%rsp), %rbx          # 8-byte Folded Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	jb	.LBB2_3
	jmp	.LBB2_43
.LBB2_35:                               # %if.else.58
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, 76(%rsp)          # 4-byte Spill
	testb	%r15b, %r15b
	je	.LBB2_37
# BB#36:                                # %if.then.60
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r12, %rdi
	movl	92(%rsp), %esi          # 4-byte Reload
	callq	_cmsReadInputLUT
	movq	%rax, %r12
	testq	%r12, %r12
	movq	56(%rsp), %r15          # 8-byte Reload
	jne	.LBB2_41
	jmp	.LBB2_24
.LBB2_6:                                # %if.end.14.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movb	$1, %r15b
	jmp	.LBB2_12
.LBB2_37:                               # %if.else.65
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%ebp, %r13d
	movq	%r12, %rdi
	movl	92(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %esi
	callq	_cmsReadOutputLUT
	movq	%rax, %r12
	testq	%r12, %r12
	movq	56(%rsp), %r15          # 8-byte Reload
	je	.LBB2_24
# BB#38:                                # %if.end.69
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	(%rax,%rdi,4), %ecx
	movq	40(%rsp), %rax          # 8-byte Reload
	movsd	(%rax,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %edx
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebp
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %r12
	movq	%r12, %rdi
	callq	cmsGetDeviceClass
	movl	%eax, %r13d
	testq	%rbx, %rbx
	jne	.LBB2_7
# BB#4:                                 # %switch.early.test
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1633842036, %r13d      # imm = 0x61627374
	je	.LBB2_7
# BB#5:                                 # %switch.early.test
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1818848875, %r13d      # imm = 0x6C696E6B
	jne	.LBB2_6
	.align	16, 0x90
.LBB2_7:                                # %if.end.14
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rbx,4), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	cmpl	$1482250784, %ebp       # imm = 0x58595A20
	je	.LBB2_9
# BB#8:                                 # %if.end.14
                                        #   in Loop: Header=BB2_3 Depth=1
	movb	$1, %r15b
	cmpl	$1281450528, %ebp       # imm = 0x4C616220
	jne	.LBB2_11
.LBB2_9:                                # %switch.early.test66
                                        #   in Loop: Header=BB2_3 Depth=1
	xorl	%r15d, %r15d
	cmpl	$1818848875, %r13d      # imm = 0x6C696E6B
	je	.LBB2_11
# BB#10:                                # %switch.early.test66
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1633842036, %r13d      # imm = 0x61627374
	jne	.LBB2_13
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, 96(%rsp)          # 8-byte Spill
.LBB2_12:                               # %if.then.19
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r12, %rdi
	callq	cmsGetColorSpace
	movl	%eax, %r14d
	movq	%r12, %rdi
	callq	cmsGetPCS
	movl	%r13d, %ebx
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.22
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	cmsGetPCS
	movl	%eax, %r14d
	movq	%r12, %rdi
	callq	cmsGetColorSpace
	movl	%r13d, %ebx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_14:                               # %if.end.25
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	%ebp, %r14d
	je	.LBB2_25
# BB#15:                                # %if.end.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1129142603, %ebp       # imm = 0x434D594B
	jne	.LBB2_17
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$876825682, %r14d       # imm = 0x34434C52
	je	.LBB2_25
.LBB2_17:                               # %if.end.4.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$876825682, %ebp        # imm = 0x34434C52
	jne	.LBB2_19
# BB#18:                                # %if.end.4.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1129142603, %r14d      # imm = 0x434D594B
	je	.LBB2_25
.LBB2_19:                               # %if.end.9.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1281450528, %ebp       # imm = 0x4C616220
	jne	.LBB2_21
# BB#20:                                # %if.end.9.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1482250784, %r14d      # imm = 0x58595A20
	je	.LBB2_25
.LBB2_21:                               # %ColorSpaceIsCompatible.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1482250784, %ebp       # imm = 0x58595A20
	jne	.LBB2_23
# BB#22:                                # %ColorSpaceIsCompatible.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1281450528, %r14d      # imm = 0x4C616220
	jne	.LBB2_23
	.align	16, 0x90
.LBB2_25:                               # %if.end.29
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1633842036, %ebx       # imm = 0x61627374
	je	.LBB2_29
# BB#26:                                # %if.end.29
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1818848875, %ebx       # imm = 0x6C696E6B
	je	.LBB2_29
# BB#27:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB2_35
# BB#28:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1852662636, %ebx       # imm = 0x6E6D636C
	jne	.LBB2_35
	.align	16, 0x90
.LBB2_29:                               # %if.then.35
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	%ebp, %r13d
	movq	%r12, %rdi
	movl	92(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	callq	_cmsReadDevicelinkLUT
	movq	%rax, %r12
	testq	%r12, %r12
	movq	56(%rsp), %r15          # 8-byte Reload
	je	.LBB2_24
# BB#30:                                # %if.end.39
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	je	.LBB2_39
# BB#31:                                # %if.end.39
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$1633842036, %ebx       # imm = 0x61627374
	jne	.LBB2_39
# BB#32:                                # %if.then.43
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	(%rax,%rdi,4), %ecx
	movq	40(%rsp), %rax          # 8-byte Reload
	movsd	(%rax,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	%ebp, %edx
.LBB2_33:                               # %if.then.43
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	128(%rsp), %rbx
	movq	%rbx, %r8
	leaq	104(%rsp), %rbp
	movq	%rbp, %r9
	callq	ComputeConversion
	testl	%eax, %eax
	jne	.LBB2_40
	jmp	.LBB2_34
	.align	16, 0x90
.LBB2_39:                               # %if.else.52
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	128(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_cmsMAT3identity
	xorpd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	leaq	104(%rsp), %rbp
	movq	%rbp, %rdi
	callq	_cmsVEC3init
.LBB2_40:                               # %if.end.77
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	movq	%rbp, %r8
	callq	AddConversion
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_41:                               # %if.end.83
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	cmsPipelineCat
	testl	%eax, %eax
	jne	.LBB2_42
.LBB2_34:                               # %if.then.90
	movq	%r12, %rdi
	callq	cmsPipelineFree
.LBB2_24:                               # %if.then.93
	movq	%r15, %rdi
	callq	cmsPipelineFree
	xorl	%ebp, %ebp
	jmp	.LBB2_44
.LBB2_43:
	movq	%r15, %rbp
.LBB2_44:                               # %cleanup.95
	movq	%rbp, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_23:                               # %if.then.28
	movl	$9, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	cmsSignalError
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_24
.Lfunc_end2:
	.size	DefaultICCintents, .Lfunc_end2-DefaultICCintents
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4616189618054758400     # double 4
	.text
	.globl	_cmsLinkProfiles
	.align	16, 0x90
	.type	_cmsLinkProfiles,@function
_cmsLinkProfiles:                       # @_cmsLinkProfiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 96
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebx
	leal	-1(%rbx), %eax
	cmpl	$254, %eax
	jbe	.LBB3_1
# BB#18:                                # %if.then
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%eax, %eax
	movl	%ebx, %ecx
	jmp	.LBB3_19
.LBB3_1:                                # %for.cond.preheader
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB3_9
# BB#2:
	movl	%ebx, %r15d
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%r14, %rbp
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %eax
	cmpl	$3, %eax
	jne	.LBB3_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$0, (%r12)
	movl	(%rbp), %eax
.LBB3_5:                                # %if.end.7
                                        #   in Loop: Header=BB3_3 Depth=1
	orl	$2, %eax
	cmpl	$2, %eax
	jne	.LBB3_8
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	(%r13), %rdi
	callq	cmsGetProfileVersion
	ucomisd	.LCPI3_0(%rip), %xmm0
	jb	.LBB3_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$1, (%r12)
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	addq	$4, %rbp
	addq	$4, %r12
	addq	$8, %r13
	decl	%r15d
	jne	.LBB3_3
.LBB3_9:                                # %for.end
	movl	(%r14), %ebp
	movl	$10, %esi
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rcx
	movl	$DefaultIntents, %eax
	testq	%rcx, %rcx
	je	.LBB3_13
# BB#10:
	movl	$DefaultIntents, %eax
	.align	16, 0x90
.LBB3_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, (%rcx)
	je	.LBB3_15
# BB#12:                                # %for.inc.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	272(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB3_11
	.align	16, 0x90
.LBB3_13:                               # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, (%rax)
	je	.LBB3_14
# BB#16:                                # %for.inc.10.i
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.LBB3_13
# BB#17:                                # %if.then.27
	movl	(%r14), %ecx
	movl	$8, %esi
	movl	$.L.str.1, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
.LBB3_19:                               # %cleanup
	callq	cmsSignalError
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_14:
	movq	%rax, %rcx
.LBB3_15:                               # %if.end.29
	movq	264(%rcx), %rax
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	_cmsLinkProfiles, .Lfunc_end3-_cmsLinkProfiles
	.cfi_endproc

	.globl	cmsGetSupportedIntentsTHR
	.align	16, 0x90
	.type	cmsGetSupportedIntentsTHR,@function
cmsGetSupportedIntentsTHR:              # @cmsGetSupportedIntentsTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movl	$10, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_8
# BB#1:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %ecx
	jae	.LBB4_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	testq	%rbx, %rbx
	je	.LBB4_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	(%rax), %edx
	movl	%ecx, %esi
	movl	%edx, (%rbx,%rsi,4)
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_2 Depth=1
	testq	%r14, %r14
	je	.LBB4_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB4_2 Depth=1
	leaq	4(%rax), %rdx
	movl	%ecx, %esi
	movq	%rdx, (%r14,%rsi,8)
.LBB4_7:                                # %if.end.9
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	%ecx
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.LBB4_2
.LBB4_8:                                # %for.cond.10.preheader
	movl	$DefaultIntents, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB4_9:                                # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %eax
	jae	.LBB4_14
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB4_9 Depth=1
	testq	%rbx, %rbx
	je	.LBB4_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	(%rcx), %edx
	movl	%eax, %esi
	movl	%edx, (%rbx,%rsi,4)
.LBB4_12:                               # %if.end.20
                                        #   in Loop: Header=BB4_9 Depth=1
	testq	%r14, %r14
	je	.LBB4_14
# BB#13:                                # %if.then.22
                                        #   in Loop: Header=BB4_9 Depth=1
	leaq	4(%rcx), %rdx
	movl	%eax, %esi
	movq	%rdx, (%r14,%rsi,8)
.LBB4_14:                               # %if.end.28
                                        #   in Loop: Header=BB4_9 Depth=1
	incl	%eax
	movq	272(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB4_9
# BB#15:                                # %for.end.32
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmsGetSupportedIntentsTHR, .Lfunc_end4-cmsGetSupportedIntentsTHR
	.cfi_endproc

	.globl	cmsGetSupportedIntents
	.align	16, 0x90
	.type	cmsGetSupportedIntents,@function
cmsGetSupportedIntents:                 # @cmsGetSupportedIntents
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
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	$10, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_15:                               # %if.end.9.i
                                        #   in Loop: Header=BB5_1 Depth=1
	incl	%ebx
	movq	272(%rax), %rax
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB5_2
# BB#10:                                # %for.body.i
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	%ebp, %ebx
	jae	.LBB5_15
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB5_1 Depth=1
	testq	%r15, %r15
	je	.LBB5_13
# BB#12:                                # %if.then.3.i
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	(%rax), %ecx
	movl	%ebx, %edx
	movl	%ecx, (%r15,%rdx,4)
.LBB5_13:                               # %if.end.i
                                        #   in Loop: Header=BB5_1 Depth=1
	testq	%r14, %r14
	je	.LBB5_15
# BB#14:                                # %if.then.5.i
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	4(%rax), %rcx
	movl	%ebx, %edx
	movq	%rcx, (%r14,%rdx,8)
	jmp	.LBB5_15
.LBB5_2:                                # %for.cond.10.preheader.i
	movl	$DefaultIntents, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_3:                                # %for.body.12.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %eax
	jae	.LBB5_8
# BB#4:                                 # %if.then.14.i
                                        #   in Loop: Header=BB5_3 Depth=1
	testq	%r15, %r15
	je	.LBB5_6
# BB#5:                                 # %if.then.16.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	(%rcx), %edx
	movl	%eax, %esi
	movl	%edx, (%r15,%rsi,4)
.LBB5_6:                                # %if.end.20.i
                                        #   in Loop: Header=BB5_3 Depth=1
	testq	%r14, %r14
	je	.LBB5_8
# BB#7:                                 # %if.then.22.i
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	4(%rcx), %rdx
	movl	%eax, %esi
	movq	%rdx, (%r14,%rsi,8)
.LBB5_8:                                # %if.end.28.i
                                        #   in Loop: Header=BB5_3 Depth=1
	incl	%eax
	movq	272(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_3
# BB#9:                                 # %cmsGetSupportedIntentsTHR.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cmsGetSupportedIntents, .Lfunc_end5-cmsGetSupportedIntents
	.cfi_endproc

	.globl	_cmsRegisterRenderingIntentPlugin
	.align	16, 0x90
	.type	_cmsRegisterRenderingIntentPlugin,@function
_cmsRegisterRenderingIntentPlugin:      # @_cmsRegisterRenderingIntentPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$10, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB6_1
# BB#2:                                 # %if.end
	movl	$280, %esi              # imm = 0x118
	movq	%rbx, %rdi
	callq	_cmsPluginMalloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB6_5
# BB#3:                                 # %if.end.4
	movl	24(%r15), %eax
	movl	%eax, (%rbx)
	movq	%rbx, %rdi
	addq	$4, %rdi
	leaq	40(%r15), %rsi
	movl	$255, %edx
	callq	strncpy
	movb	$0, 259(%rbx)
	movq	32(%r15), %rax
	movq	%rax, 264(%rbx)
	movq	(%r14), %rax
	movq	%rax, 272(%rbx)
	movq	%rbx, (%r14)
	jmp	.LBB6_4
.LBB6_1:                                # %if.then
	movq	$0, (%r14)
.LBB6_4:                                # %cleanup
	movl	$1, %eax
.LBB6_5:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	_cmsRegisterRenderingIntentPlugin, .Lfunc_end6-_cmsRegisterRenderingIntentPlugin
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI7_3:
	.quad	4611685880988434432     # double 1.999969e+00
	.quad	4611685880988434432     # double 1.999969e+00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	4576918229304087675     # double 0.01
.LCPI7_4:
	.quad	4611685880988434432     # double 1.999969482421875
.LCPI7_5:
	.quad	0                       # double 0
	.text
	.align	16, 0x90
	.type	ComputeConversion,@function
ComputeConversion:                      # @ComputeConversion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp62:
	.cfi_def_cfa_offset 816
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movl	%ecx, %r13d
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	%edi, %r12d
	movq	%r15, %rdi
	callq	_cmsMAT3identity
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	movq	%r14, %rdi
	callq	_cmsVEC3init
	cmpl	$3, %ebp
	jne	.LBB7_16
# BB#1:                                 # %if.then
	leal	-1(%r12), %eax
	movslq	%eax, %rbp
	movq	(%rbx,%rbp,8), %rsi
	leaq	248(%rsp), %rdi
	callq	_cmsReadMediaWhitePoint
	movq	(%rbx,%rbp,8), %rsi
	leaq	152(%rsp), %rdi
	callq	_cmsReadCHAD
	movslq	%r12d, %rbp
	movq	(%rbx,%rbp,8), %rsi
	leaq	224(%rsp), %rdi
	callq	_cmsReadMediaWhitePoint
	movq	(%rbx,%rbp,8), %rsi
	leaq	80(%rsp), %rdi
	callq	_cmsReadCHAD
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI7_1(%rip), %xmm0
	jne	.LBB7_3
	jp	.LBB7_3
# BB#2:                                 # %if.then.i
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	divsd	224(%rsp), %xmm0
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	movq	%r15, %rdi
	callq	_cmsVEC3init
	leaq	24(%r15), %rdi
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	divsd	232(%rsp), %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	callq	_cmsVEC3init
	addq	$48, %r15
	movsd	264(%rsp), %xmm2        # xmm2 = mem[0],zero
	divsd	240(%rsp), %xmm2
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	_cmsVEC3init
	jmp	.LBB7_14
.LBB7_16:                               # %if.else
	testl	%r13d, %r13d
	je	.LBB7_22
# BB#17:                                # %if.then.17
	leal	-1(%r12), %eax
	cltq
	movq	(%rbx,%rax,8), %rsi
	leaq	640(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	callq	cmsDetectBlackPoint
	movslq	%r12d, %rax
	movq	(%rbx,%rax,8), %rsi
	leaq	560(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	%ebp, %edx
	callq	cmsDetectDestinationBlackPoint
	movsd	640(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	560(%rsp), %xmm0
	jne	.LBB7_18
	jnp	.LBB7_19
.LBB7_18:                               # %if.then.17.if.then.32_crit_edge
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	leaq	568(%rsp), %rbx
	jmp	.LBB7_21
.LBB7_3:                                # %if.else.i
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	divsd	224(%rsp), %xmm0
	leaq	640(%rsp), %rdi
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	callq	_cmsVEC3init
	leaq	664(%rsp), %rdi
	movsd	256(%rsp), %xmm1        # xmm1 = mem[0],zero
	divsd	232(%rsp), %xmm1
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	callq	_cmsVEC3init
	leaq	688(%rsp), %rdi
	movsd	264(%rsp), %xmm2        # xmm2 = mem[0],zero
	divsd	240(%rsp), %xmm2
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	callq	_cmsVEC3init
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI7_5, %xmm0
	jne	.LBB7_6
	jp	.LBB7_6
# BB#4:                                 # %if.then.26.i
	movq	144(%rsp), %rax
	movq	%rax, 624(%rsp)
	movups	80(%rsp), %xmm0
	movups	96(%rsp), %xmm1
	movups	112(%rsp), %xmm2
	movups	128(%rsp), %xmm3
	movaps	%xmm3, 608(%rsp)
	movaps	%xmm2, 592(%rsp)
	movaps	%xmm1, 576(%rsp)
	movaps	%xmm0, 560(%rsp)
	leaq	488(%rsp), %rbx
	leaq	560(%rsp), %rsi
	leaq	640(%rsp), %rdx
	movq	%rbx, %rdi
	callq	_cmsMAT3per
	leaq	80(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_cmsMAT3per
	movq	216(%rsp), %rax
	movq	%rax, 480(%rsp)
	movupd	152(%rsp), %xmm0
	movupd	168(%rsp), %xmm1
	movupd	184(%rsp), %xmm2
	movups	200(%rsp), %xmm3
	movaps	%xmm3, 464(%rsp)
	movapd	%xmm2, 448(%rsp)
	movapd	%xmm1, 432(%rsp)
	movapd	%xmm0, 416(%rsp)
	leaq	416(%rsp), %rdi
	leaq	344(%rsp), %rsi
	callq	_cmsMAT3inverse
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB7_15
# BB#5:                                 # %if.end.i
	leaq	488(%rsp), %rsi
	leaq	344(%rsp), %rdx
	movq	%r15, %rdi
	jmp	.LBB7_13
.LBB7_19:                               # %lor.lhs.false
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	648(%rsp), %xmm0        # xmm0 = mem[0],zero
	leaq	568(%rsp), %rbx
	ucomisd	568(%rsp), %xmm0
	jne	.LBB7_21
	jp	.LBB7_21
# BB#20:                                # %lor.lhs.false.29
	movsd	656(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	576(%rsp), %xmm0
	jne	.LBB7_21
	jnp	.LBB7_22
.LBB7_21:                               # %if.then.32
	callq	cmsD50_XYZ
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	(%rax), %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	648(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	8(%rax), %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	656(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	16(%rax), %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	560(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	(%rax), %xmm0
	divsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	8(%rax), %xmm0
	divsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	576(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	16(%rax), %xmm0
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	callq	cmsD50_XYZ
	movsd	560(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	640(%rsp), %xmm0
	mulsd	(%rax), %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	divsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movapd	%xmm0, 64(%rsp)         # 16-byte Spill
	callq	cmsD50_XYZ
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	subsd	648(%rsp), %xmm0
	mulsd	8(%rax), %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	divsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	callq	cmsD50_XYZ
	movsd	576(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	656(%rsp), %xmm0
	mulsd	16(%rax), %xmm0
	xorpd	.LCPI7_0(%rip), %xmm0
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	xorpd	%xmm1, %xmm1
	xorpd	%xmm2, %xmm2
	movq	%r15, %rdi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsVEC3init
	leaq	24(%r15), %rdi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm2, %xmm2
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	_cmsVEC3init
	addq	$48, %r15
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%r15, %rdi
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	_cmsVEC3init
	movq	%r14, %rdi
	movapd	64(%rsp), %xmm0         # 16-byte Reload
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	movapd	48(%rsp), %xmm2         # 16-byte Reload
	callq	_cmsVEC3init
	jmp	.LBB7_22
.LBB7_6:                                # %if.else.28.i
	movq	216(%rsp), %rax
	movq	%rax, 624(%rsp)
	movupd	152(%rsp), %xmm0
	movupd	168(%rsp), %xmm1
	movupd	184(%rsp), %xmm2
	movups	200(%rsp), %xmm3
	movaps	%xmm3, 608(%rsp)
	movapd	%xmm2, 592(%rsp)
	movapd	%xmm1, 576(%rsp)
	movapd	%xmm0, 560(%rsp)
	leaq	560(%rsp), %rdi
	leaq	488(%rsp), %rsi
	callq	_cmsMAT3inverse
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB7_15
# BB#7:                                 # %if.end.32.i
	leaq	416(%rsp), %rdi
	leaq	488(%rsp), %rsi
	leaq	640(%rsp), %rdx
	callq	_cmsMAT3per
	leaq	152(%rsp), %rdi
	callq	CHAD2Temp
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	leaq	80(%rsp), %rdi
	callq	CHAD2Temp
	xorpd	%xmm1, %xmm1
	ucomisd	48(%rsp), %xmm1         # 8-byte Folded Reload
	ja	.LBB7_15
# BB#8:                                 # %if.end.32.i
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_15
# BB#9:                                 # %if.end.38.i
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	leaq	640(%rsp), %rdi
	callq	_cmsMAT3isIdentity
	testl	%eax, %eax
	je	.LBB7_12
# BB#10:                                # %land.lhs.true.i
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	callq	fabs
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_12
# BB#11:                                # %if.then.43.i
	movq	%r15, %rdi
	callq	_cmsMAT3identity
	jmp	.LBB7_14
.LBB7_12:                               # %cleanup.i
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	32(%rsp), %xmm2         # 8-byte Folded Reload
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	leaq	712(%rsp), %rbx
	movq	%rbx, %rdi
	callq	cmsWhitePointFromTemp
	leaq	736(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	cmsxyY2XYZ
	callq	cmsD50_XYZ
	leaq	272(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movq	%rax, %rcx
	callq	_cmsAdaptationMatrix
	leaq	416(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
.LBB7_13:                               # %ComputeAbsoluteIntent.exit
	callq	_cmsMAT3per
.LBB7_14:                               # %ComputeAbsoluteIntent.exit
	movl	$1, %ebx
.LBB7_15:                               # %ComputeAbsoluteIntent.exit
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB7_23
.LBB7_22:                               # %for.cond.preheader
	movupd	(%r14), %xmm0
	divpd	.LCPI7_3(%rip), %xmm0
	movupd	%xmm0, (%r14)
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	divsd	.LCPI7_4(%rip), %xmm0
	movsd	%xmm0, 16(%r14)
	movl	$1, %eax
.LBB7_23:                               # %cleanup.39
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ComputeConversion, .Lfunc_end7-ComputeConversion
	.cfi_endproc

	.align	16, 0x90
	.type	AddConversion,@function
AddConversion:                          # @AddConversion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 48
.Ltmp74:
	.cfi_offset %rbx, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %rbp
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	cmpl	$1281450528, %esi       # imm = 0x4C616220
	jne	.LBB8_1
# BB#10:                                # %sw.bb.21
	cmpl	$1281450528, %edx       # imm = 0x4C616220
	jne	.LBB8_11
# BB#13:                                # %sw.bb.38
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	IsEmptyLayer
	testl	%eax, %eax
	jne	.LBB8_16
# BB#14:                                # %if.then.41
	movq	56(%r14), %rdi
	callq	_cmsStageAllocLab2XYZ
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	jne	.LBB8_7
	jmp	.LBB8_17
.LBB8_1:                                # %entry
	cmpl	$1482250784, %esi       # imm = 0x58595A20
	jne	.LBB8_15
# BB#2:                                 # %sw.bb
	cmpl	$1281450528, %edx       # imm = 0x4C616220
	jne	.LBB8_3
# BB#6:                                 # %sw.bb.5
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	IsEmptyLayer
	testl	%eax, %eax
	jne	.LBB8_8
.LBB8_7:                                # %land.lhs.true.8
	movq	56(%r14), %rdi
	movl	$3, %esi
	movl	$3, %edx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB8_17
.LBB8_8:                                # %if.end.14
	movq	56(%r14), %rdi
	callq	_cmsStageAllocXYZ2Lab
	jmp	.LBB8_9
.LBB8_11:                               # %sw.bb.21
	cmpl	$1482250784, %edx       # imm = 0x58595A20
	jne	.LBB8_17
# BB#12:                                # %sw.bb.22
	movq	56(%r14), %rdi
	callq	_cmsStageAllocLab2XYZ
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	jne	.LBB8_4
	jmp	.LBB8_17
.LBB8_15:                               # %sw.default.60
	cmpl	%edx, %esi
	jne	.LBB8_17
	jmp	.LBB8_16
.LBB8_3:                                # %sw.bb
	cmpl	$1482250784, %edx       # imm = 0x58595A20
	jne	.LBB8_17
.LBB8_4:                                # %sw.bb.1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	IsEmptyLayer
	testl	%eax, %eax
	jne	.LBB8_16
# BB#5:                                 # %land.lhs.true
	movq	56(%r14), %rdi
	movl	$3, %esi
	movl	$3, %edx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	callq	cmsStageAllocMatrix
.LBB8_9:                                # %if.end.14
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB8_17
.LBB8_16:                               # %sw.epilog.63
	movl	$1, %r15d
.LBB8_17:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	AddConversion, .Lfunc_end8-AddConversion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	CHAD2Temp,@function
CHAD2Temp:                              # @CHAD2Temp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 16
	subq	$272, %rsp              # imm = 0x110
.Ltmp79:
	.cfi_def_cfa_offset 288
.Ltmp80:
	.cfi_offset %rbx, -16
	movq	64(%rdi), %rax
	movq	%rax, 144(%rsp)
	movupd	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	32(%rdi), %xmm2
	movups	48(%rdi), %xmm3
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movapd	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_cmsMAT3inverse
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB9_4
# BB#1:                                 # %if.end
	callq	cmsD50_XYZ
	movq	(%rax), %rax
	movq	%rax, 216(%rsp)
	callq	cmsD50_XYZ
	movq	8(%rax), %rax
	movq	%rax, 224(%rsp)
	callq	cmsD50_XYZ
	movq	16(%rax), %rax
	movq	%rax, 232(%rsp)
	leaq	240(%rsp), %rdi
	leaq	8(%rsp), %rsi
	leaq	216(%rsp), %rdx
	callq	_cmsMAT3eval
	movaps	240(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	168(%rsp), %rbx
	leaq	192(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cmsXYZ2xyY
	leaq	160(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cmsTempFromWhitePoint
	testl	%eax, %eax
	je	.LBB9_2
# BB#3:                                 # %if.end
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB9_4
.LBB9_2:
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB9_4:                                # %cleanup
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	retq
.Lfunc_end9:
	.size	CHAD2Temp, .Lfunc_end9-CHAD2Temp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4566758108544739836     # double 0.002
	.text
	.align	16, 0x90
	.type	IsEmptyLayer,@function
IsEmptyLayer:                           # @IsEmptyLayer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 112
.Ltmp84:
	.cfi_offset %rbx, -24
.Ltmp85:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	jne	.LBB10_2
# BB#1:                                 # %entry
	movl	$1, %eax
	testq	%r14, %r14
	je	.LBB10_5
.LBB10_2:                               # %if.end
	testq	%rbx, %rbx
	jne	.LBB10_4
# BB#3:                                 # %if.end
	xorl	%eax, %eax
	testq	%r14, %r14
	jne	.LBB10_5
.LBB10_4:                               # %if.end.6
	leaq	16(%rsp), %rdi
	callq	_cmsMAT3identity
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	subsd	16(%rsp), %xmm0
	callq	fabs
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	subsd	24(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	32(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	40(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	48(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	56(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	48(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	64(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	56(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	72(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	64(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	80(%rsp), %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %eax
.LBB10_5:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	IsEmptyLayer, .Lfunc_end10-IsEmptyLayer
	.cfi_endproc

	.align	16, 0x90
	.type	BlackPreservingKOnlyIntents,@function
BlackPreservingKOnlyIntents:            # @BlackPreservingKOnlyIntents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 56
	subq	$1080, %rsp             # imm = 0x438
.Ltmp92:
	.cfi_def_cfa_offset 1136
.Ltmp93:
	.cfi_offset %rbx, -56
.Ltmp94:
	.cfi_offset %r12, -48
.Ltmp95:
	.cfi_offset %r13, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%rcx, %r13
	movl	%esi, %ebx
	movq	%rdi, %r15
	leal	-1(%rbx), %r14d
	xorl	%ebp, %ebp
	cmpl	$254, %r14d
	ja	.LBB11_29
# BB#1:                                 # %for.cond.preheader
	movq	%r8, 24(%rsp)           # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB11_13
# BB#2:                                 # %for.body.preheader
	xorl	%esi, %esi
	testb	$1, %bl
	je	.LBB11_6
# BB#3:                                 # %for.body.prol
	movl	(%rdx), %eax
	leal	-10(%rax), %ecx
	cmpl	$5, %ecx
	ja	.LBB11_5
# BB#4:                                 # %switch.lookup.i.prol
	movslq	%ecx, %rax
	movl	.Lswitch.table(,%rax,4), %eax
.LBB11_5:                               # %TranslateNonICCIntents.exit.prol
	movl	%eax, 32(%rsp)
	movl	$1, %esi
.LBB11_6:                               # %for.body.preheader.split
	cmpl	$1, %ebx
	je	.LBB11_13
# BB#7:                                 # %for.body.preheader.split.split
	movl	%ebx, %eax
	subl	%esi, %eax
	leaq	4(%rdx,%rsi,4), %rcx
	leaq	4(,%rsi,4), %rsi
	leaq	32(%rsp), %rdx
	orq	%rsi, %rdx
	.align	16, 0x90
.LBB11_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rcx), %esi
	leal	-10(%rsi), %edi
	cmpl	$5, %edi
	ja	.LBB11_10
# BB#9:                                 # %switch.lookup.i
                                        #   in Loop: Header=BB11_8 Depth=1
	movslq	%edi, %rsi
	movl	.Lswitch.table(,%rsi,4), %esi
.LBB11_10:                              # %TranslateNonICCIntents.exit
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	%esi, -4(%rdx)
	movl	(%rcx), %esi
	leal	-10(%rsi), %edi
	cmpl	$6, %edi
	jae	.LBB11_12
# BB#11:                                # %switch.lookup.i.1
                                        #   in Loop: Header=BB11_8 Depth=1
	movslq	%edi, %rsi
	movl	.Lswitch.table(,%rsi,4), %esi
.LBB11_12:                              # %TranslateNonICCIntents.exit.1
                                        #   in Loop: Header=BB11_8 Depth=1
	movl	%esi, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	addl	$-2, %eax
	jne	.LBB11_8
.LBB11_13:                              # %for.end
	movl	1136(%rsp), %ebp
	movq	(%r13), %rdi
	callq	cmsGetColorSpace
	cmpl	$1129142603, %eax       # imm = 0x434D594B
	jne	.LBB11_15
# BB#14:                                # %lor.lhs.false.8
	movl	%r14d, %eax
	movq	(%r13,%rax,8), %rdi
	callq	cmsGetColorSpace
	cmpl	$1129142603, %eax       # imm = 0x434D594B
	jne	.LBB11_15
# BB#16:                                # %if.end.15
	movl	%ebp, %r14d
	leaq	1064(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movl	$4, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	testq	%rax, %rax
	movq	24(%rsp), %r8           # 8-byte Reload
	je	.LBB11_29
# BB#17:                                # %if.end.20
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r14d, (%rsp)
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r13, %rcx
	movq	%r8, %rbp
	movq	%r12, %r9
	callq	DefaultICCintents
	movq	%rax, 1064(%rsp)
	testq	%rax, %rax
	je	.LBB11_18
# BB#19:                                # %if.end.26
	movl	%r14d, 8(%rsp)
	movq	%r12, (%rsp)
	leaq	32(%rsp), %rcx
	movl	$4096, %esi             # imm = 0x1000
	movq	%r15, %rdi
	movl	%ebx, %edx
	movq	%r13, %r8
	movq	%rbp, %r9
	callq	_cmsBuildKToneCurve
	movq	%rax, 1072(%rsp)
	testq	%rax, %rax
	je	.LBB11_24
# BB#20:                                # %if.end.32
	movl	$1129142603, %edi       # imm = 0x434D594B
	movl	%r14d, %esi
	callq	_cmsReasonableGridpointsByColorspace
	movl	$4, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	cmsStageAllocCLut16bit
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_24
# BB#21:                                # %if.end.37
	xorl	%esi, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB11_24
# BB#22:                                # %if.end.40
	leaq	1064(%rsp), %rdx
	movl	$BlackPreservingGrayOnlySampler, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	cmsStageSampleCLut16bit
	testl	%eax, %eax
	je	.LBB11_24
# BB#23:                                # %if.end.44
	movq	1064(%rsp), %rdi
	callq	cmsPipelineFree
	movq	1072(%rsp), %rdi
	callq	cmsFreeToneCurve
	movq	16(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB11_29
.LBB11_15:                              # %if.then.13
	movl	%ebp, (%rsp)
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r13, %rcx
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r12, %r9
	callq	DefaultICCintents
	movq	%rax, %rbp
.LBB11_29:                              # %cleanup
	movq	%rbp, %rax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_24:                              # %Error
	leaq	1072(%rsp), %rbx
	movq	1064(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB11_26
# BB#25:                                # %if.then.49
	callq	cmsPipelineFree
	jmp	.LBB11_26
.LBB11_18:                              # %if.end.20.if.end.51_crit_edge
	leaq	1072(%rsp), %rbx
.LBB11_26:                              # %if.end.51
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_28
# BB#27:                                # %if.then.54
	callq	cmsFreeToneCurve
.LBB11_28:                              # %if.then.58
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	cmsPipelineFree
	xorl	%ebp, %ebp
	jmp	.LBB11_29
.Lfunc_end11:
	.size	BlackPreservingKOnlyIntents, .Lfunc_end11-BlackPreservingKOnlyIntents
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	BlackPreservingKPlaneIntents,@function
BlackPreservingKPlaneIntents:           # @BlackPreservingKPlaneIntents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 56
	subq	$1128, %rsp             # imm = 0x468
.Ltmp105:
	.cfi_def_cfa_offset 1184
.Ltmp106:
	.cfi_offset %rbx, -56
.Ltmp107:
	.cfi_offset %r12, -48
.Ltmp108:
	.cfi_offset %r13, -40
.Ltmp109:
	.cfi_offset %r14, -32
.Ltmp110:
	.cfi_offset %r15, -24
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %r12
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r15
	leal	-1(%rbp), %ebx
	xorl	%eax, %eax
	cmpl	$254, %ebx
	ja	.LBB12_38
# BB#1:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	je	.LBB12_13
# BB#2:                                 # %for.body.preheader
	xorl	%esi, %esi
	testb	$1, %bpl
	je	.LBB12_6
# BB#3:                                 # %for.body.prol
	movl	(%rdx), %eax
	leal	-10(%rax), %ecx
	cmpl	$5, %ecx
	ja	.LBB12_5
# BB#4:                                 # %switch.lookup.i.prol
	movslq	%ecx, %rax
	movl	.Lswitch.table(,%rax,4), %eax
.LBB12_5:                               # %TranslateNonICCIntents.exit.prol
	movl	%eax, 32(%rsp)
	movl	$1, %esi
.LBB12_6:                               # %for.body.preheader.split
	cmpl	$1, %ebp
	je	.LBB12_13
# BB#7:                                 # %for.body.preheader.split.split
	movl	%ebp, %eax
	subl	%esi, %eax
	leaq	4(%rdx,%rsi,4), %rcx
	leaq	4(,%rsi,4), %rsi
	leaq	32(%rsp), %rdx
	orq	%rsi, %rdx
	.align	16, 0x90
.LBB12_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rcx), %esi
	leal	-10(%rsi), %edi
	cmpl	$5, %edi
	ja	.LBB12_10
# BB#9:                                 # %switch.lookup.i
                                        #   in Loop: Header=BB12_8 Depth=1
	movslq	%edi, %rsi
	movl	.Lswitch.table(,%rsi,4), %esi
.LBB12_10:                              # %TranslateNonICCIntents.exit
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	%esi, -4(%rdx)
	movl	(%rcx), %esi
	leal	-10(%rsi), %edi
	cmpl	$6, %edi
	jae	.LBB12_12
# BB#11:                                # %switch.lookup.i.1
                                        #   in Loop: Header=BB12_8 Depth=1
	movslq	%edi, %rsi
	movl	.Lswitch.table(,%rsi,4), %esi
.LBB12_12:                              # %TranslateNonICCIntents.exit.1
                                        #   in Loop: Header=BB12_8 Depth=1
	movl	%esi, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	addl	$-2, %eax
	jne	.LBB12_8
.LBB12_13:                              # %for.end
	movq	(%r14), %rdi
	callq	cmsGetColorSpace
	cmpl	$1129142603, %eax       # imm = 0x434D594B
	jne	.LBB12_16
# BB#14:                                # %lor.lhs.false.8
	movl	%ebx, %ebx
	movq	(%r14,%rbx,8), %rdi
	callq	cmsGetColorSpace
	cmpl	$1129142603, %eax       # imm = 0x434D594B
	je	.LBB12_17
# BB#15:                                # %lor.lhs.false.13
	movq	(%r14,%rbx,8), %rdi
	callq	cmsGetDeviceClass
	cmpl	$1886549106, %eax       # imm = 0x70727472
	jne	.LBB12_16
.LBB12_17:                              # %if.end.21
	movl	$4, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB12_38
# BB#18:                                # %if.end.25
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	1064(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	(%r14,%rbx,8), %rdi
	movl	$1, %esi
	callq	_cmsReadInputLUT
	movq	%rax, 1096(%rsp)
	testq	%rax, %rax
	je	.LBB12_27
# BB#19:                                # %if.end.34
	movq	(%r14,%rbx,8), %rdi
	callq	cmsDetectTAC
	divsd	.LCPI12_0(%rip), %xmm0
	movsd	%xmm0, 1120(%rsp)
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB12_27
# BB#20:                                # %if.end.42
	movl	1184(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%r14, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	callq	DefaultICCintents
	movq	%rax, 1064(%rsp)
	testq	%rax, %rax
	je	.LBB12_27
# BB#21:                                # %if.end.48
	movl	1184(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r13, (%rsp)
	leaq	32(%rsp), %rcx
	movl	$4096, %esi             # imm = 0x1000
	movq	%r15, %rdi
	movl	%ebp, %edx
	movq	%r14, %r8
	movq	%r12, %r9
	callq	_cmsBuildKToneCurve
	movq	%rax, 1088(%rsp)
	testq	%rax, %rax
	je	.LBB12_27
# BB#22:                                # %if.end.54
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	cmsCreateLab4ProfileTHR
	movq	%rax, %r12
	movq	(%r14,%rbx,8), %rsi
	movl	$320, (%rsp)            # imm = 0x140
	movl	$34, %edx
	movl	$4849688, %r8d          # imm = 0x4A0018
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	cmsCreateTransformTHR
	movq	%rax, 1072(%rsp)
	testq	%rax, %rax
	je	.LBB12_27
# BB#23:                                # %if.end.63
	movq	(%r14,%rbx,8), %rsi
	movl	$320, (%rsp)            # imm = 0x140
	movl	$4194340, %edx          # imm = 0x400024
	movl	$4194332, %r8d          # imm = 0x40001C
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	cmsCreateTransformTHR
	movq	%rax, 1080(%rsp)
	testq	%rax, %rax
	je	.LBB12_27
# BB#24:                                # %if.end.71
	movq	%r12, %rdi
	callq	cmsCloseProfile
	movq	$0, 1104(%rsp)
	movl	$1129142603, %edi       # imm = 0x434D594B
	movl	1184(%rsp), %esi
	callq	_cmsReasonableGridpointsByColorspace
	movl	$4, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	cmsStageAllocCLut16bit
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB12_27
# BB#25:                                # %if.end.77
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB12_27
# BB#26:                                # %if.end.80
	leaq	1064(%rsp), %rdx
	movl	$BlackPreservingSampler, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	cmsStageSampleCLut16bit
.LBB12_27:                              # %Cleanup
	movq	1064(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_29
# BB#28:                                # %if.then.84
	callq	cmsPipelineFree
.LBB12_29:                              # %if.end.86
	movq	1080(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_31
# BB#30:                                # %if.then.89
	callq	cmsDeleteTransform
.LBB12_31:                              # %if.end.91
	movq	1072(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_33
# BB#32:                                # %if.then.94
	callq	cmsDeleteTransform
.LBB12_33:                              # %if.end.96
	movq	1088(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_35
# BB#34:                                # %if.then.99
	callq	cmsFreeToneCurve
.LBB12_35:                              # %if.end.101
	movq	1096(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_37
# BB#36:                                # %if.then.104
	callq	cmsPipelineFree
.LBB12_37:                              # %cleanup
	movq	24(%rsp), %rax          # 8-byte Reload
	jmp	.LBB12_38
.LBB12_16:                              # %if.then.19
	movl	1184(%rsp), %eax
	movl	%eax, (%rsp)
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%r14, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	callq	DefaultICCintents
.LBB12_38:                              # %cleanup
	addq	$1128, %rsp             # imm = 0x468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	BlackPreservingKPlaneIntents, .Lfunc_end12-BlackPreservingKPlaneIntents
	.cfi_endproc

	.align	16, 0x90
	.type	BlackPreservingGrayOnlySampler,@function
BlackPreservingGrayOnlySampler:         # @BlackPreservingGrayOnlySampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cmpw	$0, (%rdi)
	jne	.LBB13_4
# BB#1:                                 # %land.lhs.true
	cmpw	$0, 2(%rdi)
	jne	.LBB13_4
# BB#2:                                 # %land.lhs.true.6
	cmpw	$0, 4(%rdi)
	je	.LBB13_3
.LBB13_4:                               # %if.end
	movq	(%rdx), %rax
	movq	16(%rax), %rdx
	movq	%rbx, %rsi
	callq	*24(%rax)
.LBB13_5:                               # %cleanup
	movl	$1, %eax
	popq	%rbx
	retq
.LBB13_3:                               # %if.then
	movw	$0, 4(%rbx)
	movl	$0, (%rbx)
	movq	8(%rdx), %rax
	movzwl	6(%rdi), %esi
	movq	%rax, %rdi
	callq	cmsEvalToneCurve16
	movw	%ax, 6(%rbx)
	jmp	.LBB13_5
.Lfunc_end13:
	.size	BlackPreservingGrayOnlySampler, .Lfunc_end13-BlackPreservingGrayOnlySampler
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4679239875398991872     # double 65535
.LCPI14_1:
	.quad	4602678819172646912     # double 0.5
.LCPI14_2:
	.quad	-4548635898522107904    # double -32767
.LCPI14_3:
	.quad	4771563805199040512     # double 103079215104
.LCPI14_4:
	.quad	4541880327283933208     # double 4.5777065690089265E-5
.LCPI14_5:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	BlackPreservingSampler,@function
BlackPreservingSampler:                 # @BlackPreservingSampler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp116:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 40
	subq	$120, %rsp
.Ltmp118:
	.cfi_def_cfa_offset 160
.Ltmp119:
	.cfi_offset %rbx, -40
.Ltmp120:
	.cfi_offset %r12, -32
.Ltmp121:
	.cfi_offset %r14, -24
.Ltmp122:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzwl	(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 96(%rsp)
	movzwl	2(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 100(%rsp)
	movzwl	4(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 104(%rsp)
	movzwl	6(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 108(%rsp)
	movq	24(%r14), %rdi
	callq	cmsEvalToneCurveFloat
	movss	%xmm0, 76(%rsp)
	cmpw	$0, (%rbx)
	jne	.LBB14_8
# BB#1:                                 # %land.lhs.true
	cmpw	$0, 2(%rbx)
	jne	.LBB14_8
# BB#2:                                 # %land.lhs.true.15
	cmpw	$0, 4(%rbx)
	je	.LBB14_3
.LBB14_8:                               # %if.end
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movq	(%r14), %rdx
	leaq	96(%rsp), %rdi
	leaq	80(%rsp), %rsi
	callq	cmsPipelineEvalFloat
	movss	80(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	mulsd	.LCPI14_0(%rip), %xmm1
	addsd	.LCPI14_1(%rip), %xmm1
	xorps	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jae	.LBB14_9
# BB#10:                                # %if.end.i.97
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm1
	jae	.LBB14_12
# BB#11:                                # %if.end.3.i.104
	addsd	.LCPI14_2(%rip), %xmm1
	addsd	.LCPI14_3(%rip), %xmm1
	movd	%xmm1, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_12
.LBB14_9:
	xorl	%eax, %eax
.LBB14_12:                              # %_cmsQuickSaturateWord.exit106
	movw	%ax, (%r15)
	movss	84(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI14_0(%rip), %xmm1
	addsd	.LCPI14_1(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.LBB14_13
# BB#38:                                # %if.end.i.97.1
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm1
	jae	.LBB14_40
# BB#39:                                # %if.end.3.i.104.1
	addsd	.LCPI14_2(%rip), %xmm1
	addsd	.LCPI14_3(%rip), %xmm1
	movd	%xmm1, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_40
.LBB14_13:
	xorl	%eax, %eax
.LBB14_40:                              # %_cmsQuickSaturateWord.exit106.1
	movw	%ax, 2(%r15)
	movss	88(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_0(%rip), %xmm0
	addsd	.LCPI14_1(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_41
# BB#42:                                # %if.end.i.97.2
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm0
	jae	.LBB14_44
# BB#43:                                # %if.end.3.i.104.2
	addsd	.LCPI14_2(%rip), %xmm0
	addsd	.LCPI14_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_44
.LBB14_41:
	xorl	%eax, %eax
.LBB14_44:                              # %_cmsQuickSaturateWord.exit106.2
	movw	%ax, 4(%r15)
	movss	92(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	.LCPI14_0(%rip), %xmm2
	addsd	.LCPI14_1(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jae	.LBB14_45
# BB#46:                                # %if.end.i.97.3
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm2
	jae	.LBB14_48
# BB#47:                                # %if.end.3.i.104.3
	addsd	.LCPI14_2(%rip), %xmm2
	addsd	.LCPI14_3(%rip), %xmm2
	movd	%xmm2, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_48
.LBB14_45:
	xorl	%eax, %eax
.LBB14_48:                              # %_cmsQuickSaturateWord.exit106.3
	movw	%ax, 6(%r15)
	subss	12(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI14_4(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB14_37
# BB#14:                                # %if.end.49
	movq	8(%r14), %rdi
	leaq	40(%rsp), %rdx
	movl	$1, %ecx
	movq	%r15, %rsi
	callq	cmsDoTransform
	movq	16(%r14), %rdi
	leaq	80(%rsp), %rbx
	leaq	64(%rsp), %r12
	movl	$1, %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	cmsDoTransform
	movq	32(%r14), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %rdx
	callq	cmsPipelineEvalReverseFloat
	testl	%eax, %eax
	je	.LBB14_37
# BB#15:                                # %if.end.57
	movss	76(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 92(%rsp)
	movss	80(%rsp), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	84(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm1
	addss	%xmm3, %xmm1
	movss	88(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	movsd	56(%r14), %xmm6         # xmm6 = mem[0],zero
	ucomisd	%xmm6, %xmm5
	jbe	.LBB14_16
# BB#17:                                # %if.then.70
	subsd	%xmm6, %xmm5
	divsd	%xmm1, %xmm5
	movsd	.LCPI14_5(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm5, %xmm1
	xorpd	%xmm5, %xmm5
	ucomisd	%xmm1, %xmm5
	jbe	.LBB14_19
# BB#18:                                # %if.then.77
	xorpd	%xmm1, %xmm1
	jmp	.LBB14_19
.LBB14_16:
	movsd	.LCPI14_5(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB14_19:                              # %if.end.79
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	mulsd	.LCPI14_0(%rip), %xmm5
	addsd	.LCPI14_1(%rip), %xmm5
	xorps	%xmm4, %xmm4
	ucomisd	%xmm5, %xmm4
	jae	.LBB14_20
# BB#21:                                # %if.end.i.84
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm5
	jae	.LBB14_23
# BB#22:                                # %if.end.3.i.91
	addsd	.LCPI14_2(%rip), %xmm5
	addsd	.LCPI14_3(%rip), %xmm5
	movd	%xmm5, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_23
.LBB14_20:
	xorl	%eax, %eax
.LBB14_23:                              # %_cmsQuickSaturateWord.exit93
	movw	%ax, (%r15)
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	mulsd	.LCPI14_0(%rip), %xmm3
	addsd	.LCPI14_1(%rip), %xmm3
	ucomisd	%xmm3, %xmm4
	jae	.LBB14_24
# BB#25:                                # %if.end.i.71
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm3
	jae	.LBB14_27
# BB#26:                                # %if.end.3.i.78
	addsd	.LCPI14_2(%rip), %xmm3
	addsd	.LCPI14_3(%rip), %xmm3
	movd	%xmm3, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_27
.LBB14_24:
	xorl	%eax, %eax
.LBB14_27:                              # %_cmsQuickSaturateWord.exit80
	movw	%ax, 2(%r15)
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	.LCPI14_0(%rip), %xmm1
	addsd	.LCPI14_1(%rip), %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jae	.LBB14_28
# BB#29:                                # %if.end.i.58
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm1
	jae	.LBB14_31
# BB#30:                                # %if.end.3.i.65
	addsd	.LCPI14_2(%rip), %xmm1
	addsd	.LCPI14_3(%rip), %xmm1
	movd	%xmm1, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_31
.LBB14_28:
	xorl	%eax, %eax
.LBB14_31:                              # %_cmsQuickSaturateWord.exit67
	movw	%ax, 4(%r15)
	mulsd	.LCPI14_0(%rip), %xmm0
	addsd	.LCPI14_1(%rip), %xmm0
	ucomisd	%xmm0, %xmm2
	jae	.LBB14_32
# BB#33:                                # %if.end.i.45
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm0
	jae	.LBB14_35
# BB#34:                                # %if.end.3.i.52
	addsd	.LCPI14_2(%rip), %xmm0
	addsd	.LCPI14_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_35
.LBB14_32:
	xorl	%eax, %eax
.LBB14_35:                              # %_cmsQuickSaturateWord.exit54
	movw	%ax, 6(%r15)
	movq	8(%r14), %rdi
	leaq	16(%rsp), %rbx
	movl	$1, %ecx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	cmsDoTransform
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cmsDeltaE
	ucomisd	40(%r14), %xmm0
	jbe	.LBB14_37
# BB#36:                                # %if.then.107
	movsd	%xmm0, 40(%r14)
.LBB14_37:                              # %cleanup
	movl	$1, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB14_3:                               # %if.then
	movw	$0, 4(%r15)
	movl	$0, (%r15)
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI14_0(%rip), %xmm0
	addsd	.LCPI14_1(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_4
# BB#5:                                 # %if.end.i
	movw	$-1, %ax
	ucomisd	.LCPI14_0(%rip), %xmm0
	jae	.LBB14_7
# BB#6:                                 # %if.end.3.i
	addsd	.LCPI14_2(%rip), %xmm0
	addsd	.LCPI14_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB14_7:                               # %_cmsQuickSaturateWord.exit
	movw	%ax, 6(%r15)
	jmp	.LBB14_37
.LBB14_4:
	xorl	%eax, %eax
	movw	%ax, 6(%r15)
	jmp	.LBB14_37
.Lfunc_end14:
	.size	BlackPreservingSampler, .Lfunc_end14-BlackPreservingSampler
	.cfi_endproc

	.type	_cmsIntentsPluginChunk,@object # @_cmsIntentsPluginChunk
	.bss
	.globl	_cmsIntentsPluginChunk
	.align	8
_cmsIntentsPluginChunk:
	.zero	8
	.size	_cmsIntentsPluginChunk, 8

	.type	_cmsAllocIntentsPluginChunk.IntentsPluginChunkType,@object # @_cmsAllocIntentsPluginChunk.IntentsPluginChunkType
	.local	_cmsAllocIntentsPluginChunk.IntentsPluginChunkType
	.comm	_cmsAllocIntentsPluginChunk.IntentsPluginChunkType,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Couldn't link '%d' profiles"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Unsupported intent '%d'"
	.size	.L.str.1, 24

	.type	DefaultIntents,@object  # @DefaultIntents
	.data
	.align	16
DefaultIntents:
	.long	0                       # 0x0
	.asciz	"Perceptual\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	DefaultICCintents
	.quad	DefaultIntents+280
	.long	1                       # 0x1
	.asciz	"Relative colorimetric\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	DefaultICCintents
	.quad	DefaultIntents+560
	.long	2                       # 0x2
	.asciz	"Saturation\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	DefaultICCintents
	.quad	DefaultIntents+840
	.long	3                       # 0x3
	.asciz	"Absolute colorimetric\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	DefaultICCintents
	.quad	DefaultIntents+1120
	.long	10                      # 0xa
	.asciz	"Perceptual preserving black ink\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	BlackPreservingKOnlyIntents
	.quad	DefaultIntents+1400
	.long	11                      # 0xb
	.asciz	"Relative colorimetric preserving black ink\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	BlackPreservingKOnlyIntents
	.quad	DefaultIntents+1680
	.long	12                      # 0xc
	.asciz	"Saturation preserving black ink\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	BlackPreservingKOnlyIntents
	.quad	DefaultIntents+1960
	.long	13                      # 0xd
	.asciz	"Perceptual preserving black plane\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	BlackPreservingKPlaneIntents
	.quad	DefaultIntents+2240
	.long	14                      # 0xe
	.asciz	"Relative colorimetric preserving black plane\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	BlackPreservingKPlaneIntents
	.quad	DefaultIntents+2520
	.long	15                      # 0xf
	.asciz	"Saturation preserving black plane\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	4
	.quad	BlackPreservingKPlaneIntents
	.quad	0
	.size	DefaultIntents, 2800

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ColorSpace mismatch"
	.size	.L.str.2, 20

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.size	.Lswitch.table, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
