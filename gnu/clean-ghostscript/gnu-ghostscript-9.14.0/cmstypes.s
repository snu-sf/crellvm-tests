	.text
	.file	"cmstypes.bc"
	.globl	_cmsAllocTagTypePluginChunk
	.align	16, 0x90
	.type	_cmsAllocTagTypePluginChunk,@function
_cmsAllocTagTypePluginChunk:            # @_cmsAllocTagTypePluginChunk
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
	movq	80(%rsi), %rax
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
	movl	$64, %edx
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB0_12
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$0, 56(%rax)
	testq	%r12, %r12
	je	.LBB0_6
# BB#5:                                 # %if.then.3.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, 56(%r12)
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
	movq	56(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB0_3
.LBB0_9:                                # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB0_11
.LBB0_10:                               # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocTagTypePluginChunk.TagTypePluginChunk, %esi
.LBB0_11:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 80(%r14)
.LBB0_12:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	_cmsAllocTagTypePluginChunk, .Lfunc_end0-_cmsAllocTagTypePluginChunk
	.cfi_endproc

	.globl	_cmsAllocMPETypePluginChunk
	.align	16, 0x90
	.type	_cmsAllocMPETypePluginChunk,@function
_cmsAllocMPETypePluginChunk:            # @_cmsAllocMPETypePluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB1_10
# BB#1:                                 # %if.then
	movq	$0, (%rsp)
	movq	104(%rsi), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	movq	8(%r14), %rdi
	je	.LBB1_9
# BB#2:                                 # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$64, %edx
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB1_12
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	$0, 56(%rax)
	testq	%r12, %r12
	je	.LBB1_6
# BB#5:                                 # %if.then.3.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, 56(%r12)
.LBB1_6:                                # %if.end.5.i
                                        #   in Loop: Header=BB1_3 Depth=1
	testq	%r15, %r15
	jne	.LBB1_8
# BB#7:                                 # %if.then.8.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, (%rsp)
	movq	%rax, %r15
.LBB1_8:                                # %for.inc.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	56(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB1_3
.LBB1_9:                                # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocMPETypePluginChunk.TagTypePluginChunk, %esi
.LBB1_11:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 104(%r14)
.LBB1_12:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	_cmsAllocMPETypePluginChunk, .Lfunc_end1-_cmsAllocMPETypePluginChunk
	.cfi_endproc

	.globl	_cmsRegisterTagTypePlugin
	.align	16, 0x90
	.type	_cmsRegisterTagTypePlugin,@function
_cmsRegisterTagTypePlugin:              # @_cmsRegisterTagTypePlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$8, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB2_1
# BB#2:                                 # %if.end.i
	movl	$64, %esi
	movq	%rbx, %rdi
	callq	_cmsPluginMalloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB2_5
# BB#3:                                 # %if.end.4.i
	movq	72(%r15), %rcx
	movq	%rcx, 48(%rax)
	movups	24(%r15), %xmm0
	movups	40(%r15), %xmm1
	movups	56(%r15), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	(%r14), %rcx
	movq	%rcx, 56(%rax)
	movq	%rax, (%r14)
	jmp	.LBB2_4
.LBB2_1:                                # %if.then.i
	movq	$0, (%r14)
.LBB2_4:                                # %RegisterTypesPlugin.exit
	movl	$1, %ecx
.LBB2_5:                                # %RegisterTypesPlugin.exit
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	_cmsRegisterTagTypePlugin, .Lfunc_end2-_cmsRegisterTagTypePlugin
	.cfi_endproc

	.globl	_cmsRegisterMultiProcessElementPlugin
	.align	16, 0x90
	.type	_cmsRegisterMultiProcessElementPlugin,@function
_cmsRegisterMultiProcessElementPlugin:  # @_cmsRegisterMultiProcessElementPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$11, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB3_1
# BB#2:                                 # %if.end.i
	movl	$64, %esi
	movq	%rbx, %rdi
	callq	_cmsPluginMalloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB3_5
# BB#3:                                 # %if.end.4.i
	movq	72(%r15), %rcx
	movq	%rcx, 48(%rax)
	movups	24(%r15), %xmm0
	movups	40(%r15), %xmm1
	movups	56(%r15), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	(%r14), %rcx
	movq	%rcx, 56(%rax)
	movq	%rax, (%r14)
	jmp	.LBB3_4
.LBB3_1:                                # %if.then.i
	movq	$0, (%r14)
.LBB3_4:                                # %RegisterTypesPlugin.exit
	movl	$1, %ecx
.LBB3_5:                                # %RegisterTypesPlugin.exit
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	_cmsRegisterMultiProcessElementPlugin, .Lfunc_end3-_cmsRegisterMultiProcessElementPlugin
	.cfi_endproc

	.globl	_cmsGetTagTypeHandler
	.align	16, 0x90
	.type	_cmsGetTagTypeHandler,@function
_cmsGetTagTypeHandler:                  # @_cmsGetTagTypeHandler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movl	$8, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	movl	$SupportedTagTypes, %ecx
	testq	%rax, %rax
	je	.LBB4_4
# BB#1:
	movl	$SupportedTagTypes, %ecx
	.align	16, 0x90
.LBB4_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, (%rax)
	je	.LBB4_7
# BB#3:                                 # %for.inc.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB4_2
	.align	16, 0x90
.LBB4_4:                                # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, (%rcx)
	je	.LBB4_5
# BB#6:                                 # %for.inc.12.i
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	56(%rcx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB4_4
.LBB4_7:                                # %GetHandler.exit
	popq	%rbx
	retq
.LBB4_5:                                # %if.then.9.i
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	_cmsGetTagTypeHandler, .Lfunc_end4-_cmsGetTagTypeHandler
	.cfi_endproc

	.globl	_cmsAllocTagPluginChunk
	.align	16, 0x90
	.type	_cmsAllocTagPluginChunk,@function
_cmsAllocTagPluginChunk:                # @_cmsAllocTagPluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r12, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB5_10
# BB#1:                                 # %if.then
	movq	$0, (%rsp)
	movq	88(%rsi), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	movq	8(%r14), %rdi
	je	.LBB5_9
# BB#2:                                 # %for.body.lr.ph.i
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB5_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$112, %edx
	movq	%rbx, %rsi
	callq	_cmsSubAllocDup
	testq	%rax, %rax
	je	.LBB5_12
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	$0, 104(%rax)
	testq	%r12, %r12
	je	.LBB5_6
# BB#5:                                 # %if.then.3.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rax, 104(%r12)
.LBB5_6:                                # %if.end.5.i
                                        #   in Loop: Header=BB5_3 Depth=1
	testq	%r15, %r15
	jne	.LBB5_8
# BB#7:                                 # %if.then.8.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rax, (%rsp)
	movq	%rax, %r15
.LBB5_8:                                # %for.inc.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	104(%rbx), %rbx
	movq	8(%r14), %rdi
	testq	%rbx, %rbx
	movq	%rax, %r12
	jne	.LBB5_3
.LBB5_9:                                # %for.end.i
	leaq	(%rsp), %rsi
	jmp	.LBB5_11
.LBB5_10:                               # %if.else
	movq	8(%r14), %rdi
	movl	$_cmsAllocTagPluginChunk.TagPluginChunk, %esi
.LBB5_11:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 88(%r14)
.LBB5_12:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	_cmsAllocTagPluginChunk, .Lfunc_end5-_cmsAllocTagPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterTagPlugin
	.align	16, 0x90
	.type	_cmsRegisterTagPlugin,@function
_cmsRegisterTagPlugin:                  # @_cmsRegisterTagPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$9, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB6_1
# BB#2:                                 # %if.end
	movl	$112, %esi
	movq	%r15, %rdi
	callq	_cmsPluginMalloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB6_5
# BB#3:                                 # %if.end.4
	movl	24(%rbx), %ecx
	movl	%ecx, (%rax)
	movups	112(%rbx), %xmm0
	movups	%xmm0, 88(%rax)
	movups	96(%rbx), %xmm0
	movups	%xmm0, 72(%rax)
	movups	32(%rbx), %xmm0
	movups	48(%rbx), %xmm1
	movups	64(%rbx), %xmm2
	movups	80(%rbx), %xmm3
	movups	%xmm3, 56(%rax)
	movups	%xmm2, 40(%rax)
	movups	%xmm1, 24(%rax)
	movups	%xmm0, 8(%rax)
	movq	(%r14), %rcx
	movq	%rcx, 104(%rax)
	movq	%rax, (%r14)
	jmp	.LBB6_4
.LBB6_1:                                # %if.then
	movq	$0, (%r14)
.LBB6_4:                                # %cleanup
	movl	$1, %ecx
.LBB6_5:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	_cmsRegisterTagPlugin, .Lfunc_end6-_cmsRegisterTagPlugin
	.cfi_endproc

	.globl	_cmsGetTagDescriptor
	.align	16, 0x90
	.type	_cmsGetTagDescriptor,@function
_cmsGetTagDescriptor:                   # @_cmsGetTagDescriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movl	$9, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	movl	$SupportedTags, %ecx
	testq	%rax, %rax
	je	.LBB7_5
# BB#1:
	movl	$SupportedTags, %ecx
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, (%rax)
	je	.LBB7_3
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_2
	.align	16, 0x90
.LBB7_5:                                # %for.body.4
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, (%rcx)
	je	.LBB7_6
# BB#7:                                 # %for.inc.10
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	104(%rcx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB7_5
# BB#8:                                 # %cleanup
	popq	%rbx
	retq
.LBB7_3:                                # %if.then
	addq	$8, %rax
	popq	%rbx
	retq
.LBB7_6:                                # %if.then.7
	addq	$8, %rcx
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	_cmsGetTagDescriptor, .Lfunc_end7-_cmsGetTagDescriptor
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Chromaticity_Read,@function
Type_Chromaticity_Read:                 # @Type_Chromaticity_Read
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
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -48
.Ltmp56:
	.cfi_offset %r12, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$0, (%r14)
	movq	40(%r15), %rdi
	movl	$72, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB8_17
# BB#1:                                 # %if.end
	leaq	14(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#2:                                 # %if.end.3
	movzwl	14(%rsp), %eax
	cmpl	$32, %ebp
	jne	.LBB8_7
# BB#3:                                 # %if.end.3
	testw	%ax, %ax
	jne	.LBB8_7
# BB#4:                                 # %if.then.8
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#5:                                 # %if.end.12
	leaq	14(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#6:                                 # %if.end.12
	movzwl	14(%rsp), %eax
.LBB8_7:                                # %if.end.17
	movzwl	%ax, %eax
	cmpl	$3, %eax
	jne	.LBB8_16
# BB#8:                                 # %if.end.22
	leaq	12(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#9:                                 # %if.end.26
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#10:                                # %if.end.30
	leaq	8(%rbx), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#11:                                # %if.end.35
	movabsq	$4607182418800017408, %rbp # imm = 0x3FF0000000000000
	movq	%rbp, 16(%rbx)
	leaq	24(%rbx), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#12:                                # %if.end.41
	leaq	32(%rbx), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#13:                                # %if.end.47
	movq	%rbp, 40(%rbx)
	leaq	48(%rbx), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#14:                                # %if.end.54
	movq	%rbx, %rsi
	addq	$56, %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB8_16
# BB#15:                                # %if.end.60
	movq	%rbp, 64(%rbx)
	movl	$1, (%r14)
	movq	%rbx, %rax
	jmp	.LBB8_17
.LBB8_16:                               # %Error
	movq	40(%r15), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB8_17:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Type_Chromaticity_Read, .Lfunc_end8-Type_Chromaticity_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Chromaticity_Write,@function
Type_Chromaticity_Write:                # @Type_Chromaticity_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB9_9
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB9_9
# BB#2:                                 # %if.end.4
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	_cmsDoubleTo15Fixed16
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB9_9
# BB#3:                                 # %SaveOneChromaticity.exit
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsDoubleTo15Fixed16
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB9_9
# BB#4:                                 # %if.end.9
	movsd	24(%r14), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%r14), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	_cmsDoubleTo15Fixed16
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB9_9
# BB#5:                                 # %SaveOneChromaticity.exit20
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsDoubleTo15Fixed16
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB9_9
# BB#6:                                 # %if.end.16
	movsd	48(%r14), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%r14), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	callq	_cmsDoubleTo15Fixed16
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_cmsWriteUInt32Number
	movb	$1, %cl
	testl	%eax, %eax
	je	.LBB9_8
# BB#7:                                 # %if.end.i.28
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsDoubleTo15Fixed16
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	sete	%cl
.LBB9_8:                                # %SaveOneChromaticity.exit30
	movzbl	%cl, %ebp
	xorl	$1, %ebp
.LBB9_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Type_Chromaticity_Write, .Lfunc_end9-Type_Chromaticity_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Chromaticity_Dup,@function
Type_Chromaticity_Dup:                  # @Type_Chromaticity_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$72, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end10:
	.size	Type_Chromaticity_Dup, .Lfunc_end10-Type_Chromaticity_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Chromaticity_Free,@function
Type_Chromaticity_Free:                 # @Type_Chromaticity_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end11:
	.size	Type_Chromaticity_Free, .Lfunc_end11-Type_Chromaticity_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantOrderType_Read,@function
Type_ColorantOrderType_Read:            # @Type_ColorantOrderType_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 48
.Ltmp72:
	.cfi_offset %rbx, -40
.Ltmp73:
	.cfi_offset %r12, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$0, (%r15)
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB12_6
# BB#1:                                 # %entry
	cmpl	$16, 4(%rsp)
	ja	.LBB12_6
# BB#2:                                 # %if.end.2
	movq	40(%r14), %rdi
	movl	$16, %esi
	movl	$1, %edx
	callq	_cmsCalloc
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB12_6
# BB#3:                                 # %if.end.6
	movl	$255, %esi
	movl	$16, %edx
	movq	%r12, %rdi
	callq	memset
	movl	4(%rsp), %ecx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*280(%rbx)
	cmpl	4(%rsp), %eax
	jne	.LBB12_4
# BB#5:                                 # %if.end.12
	movl	$1, (%r15)
	movq	%r12, %rax
	jmp	.LBB12_6
.LBB12_4:                               # %if.then.10
	movq	40(%r14), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB12_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	Type_ColorantOrderType_Read, .Lfunc_end12-Type_ColorantOrderType_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantOrderType_Write,@function
Type_ColorantOrderType_Write:           # @Type_ColorantOrderType_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 32
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
	.cfi_offset %r14, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movzbl	(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	movzbl	1(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	2(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	3(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	4(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	5(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	6(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	7(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	8(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	9(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	10(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	11(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	12(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	13(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movzbl	14(%rbx), %eax
	cmpl	$255, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movzbl	15(%rbx), %ecx
	cmpl	$255, %ecx
	setne	%cl
	movzbl	%cl, %ebp
	addl	%eax, %ebp
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsWriteUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB13_2
# BB#1:                                 # %if.end.5
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	*312(%r14)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB13_2:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Type_ColorantOrderType_Write, .Lfunc_end13-Type_ColorantOrderType_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantOrderType_Dup,@function
Type_ColorantOrderType_Dup:             # @Type_ColorantOrderType_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$16, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end14:
	.size	Type_ColorantOrderType_Dup, .Lfunc_end14-Type_ColorantOrderType_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantOrderType_Free,@function
Type_ColorantOrderType_Free:            # @Type_ColorantOrderType_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end15:
	.size	Type_ColorantOrderType_Free, .Lfunc_end15-Type_ColorantOrderType_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_S15Fixed16_Read,@function
Type_S15Fixed16_Read:                   # @Type_S15Fixed16_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp88:
	.cfi_def_cfa_offset 80
.Ltmp89:
	.cfi_offset %rbx, -56
.Ltmp90:
	.cfi_offset %r12, -48
.Ltmp91:
	.cfi_offset %r13, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$0, (%r14)
	shrl	$2, %r13d
	movq	40(%rbp), %rdi
	movl	$8, %edx
	movl	%r13d, %esi
	callq	_cmsCalloc
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB16_7
# BB#1:                                 # %for.cond.preheader
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	testl	%r13d, %r13d
	je	.LBB16_6
# BB#2:                                 # %for.body.lr.ph
	movl	%r13d, %r15d
	xorl	%r14d, %r14d
	movq	%r12, %rbp
	.align	16, 0x90
.LBB16_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB16_5
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB16_4 Depth=1
	incq	%r14
	addq	$8, %rbp
	cmpq	%r15, %r14
	jb	.LBB16_4
.LBB16_6:                               # %for.end
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%r13d, (%rax)
	movq	%r12, %rax
	jmp	.LBB16_7
.LBB16_5:                               # %if.then.6
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	40(%rax), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB16_7:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Type_S15Fixed16_Read, .Lfunc_end16-Type_S15Fixed16_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_S15Fixed16_Write,@function
Type_S15Fixed16_Write:                  # @Type_S15Fixed16_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 48
.Ltmp100:
	.cfi_offset %rbx, -48
.Ltmp101:
	.cfi_offset %r12, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movl	$1, %r14d
	testl	%ecx, %ecx
	je	.LBB17_5
# BB#1:                                 # %for.body.lr.ph
	movl	%ecx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%r15,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB17_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB17_3 Depth=1
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB17_3
	jmp	.LBB17_5
.LBB17_4:
	xorl	%r14d, %r14d
.LBB17_5:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Type_S15Fixed16_Write, .Lfunc_end17-Type_S15Fixed16_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_S15Fixed16_Dup,@function
Type_S15Fixed16_Dup:                    # @Type_S15Fixed16_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	shll	$3, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end18:
	.size	Type_S15Fixed16_Dup, .Lfunc_end18-Type_S15Fixed16_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_S15Fixed16_Free,@function
Type_S15Fixed16_Free:                   # @Type_S15Fixed16_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end19:
	.size	Type_S15Fixed16_Free, .Lfunc_end19-Type_S15Fixed16_Free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4535124824762089472     # double 1.52587890625E-5
	.text
	.align	16, 0x90
	.type	Type_U16Fixed16_Read,@function
Type_U16Fixed16_Read:                   # @Type_U16Fixed16_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 80
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$0, (%r14)
	shrl	$2, %r12d
	movq	40(%r15), %rdi
	movl	$8, %edx
	movl	%r12d, %esi
	callq	_cmsCalloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB20_7
# BB#1:                                 # %for.cond.preheader
	movq	%r15, (%rsp)            # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	testl	%r12d, %r12d
	je	.LBB20_6
# BB#2:                                 # %for.body.lr.ph
	movl	%r12d, %r15d
	xorl	%r14d, %r14d
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB20_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB20_4
# BB#5:                                 # %if.end.8
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	20(%rsp), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LCPI20_0(%rip), %xmm0
	movsd	%xmm0, (%rbp,%r14,8)
	incq	%r14
	cmpq	%r15, %r14
	jb	.LBB20_3
.LBB20_6:                               # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%r12d, (%rax)
	movq	%rbp, %rax
	jmp	.LBB20_7
.LBB20_4:                               # %if.then.6
	movq	(%rsp), %rax            # 8-byte Reload
	movq	40(%rax), %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB20_7:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Type_U16Fixed16_Read, .Lfunc_end20-Type_U16Fixed16_Read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4679240012837945344     # double 65536
.LCPI21_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	Type_U16Fixed16_Write,@function
Type_U16Fixed16_Write:                  # @Type_U16Fixed16_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 48
.Ltmp123:
	.cfi_offset %rbx, -48
.Ltmp124:
	.cfi_offset %r12, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movl	$1, %r14d
	testl	%ecx, %ecx
	je	.LBB21_5
# BB#1:                                 # %for.body.lr.ph
	movl	%ecx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB21_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%r15,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	.LCPI21_0(%rip), %xmm0
	addsd	.LCPI21_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %rsi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB21_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB21_3 Depth=1
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB21_3
	jmp	.LBB21_5
.LBB21_4:
	xorl	%r14d, %r14d
.LBB21_5:                               # %cleanup.2
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Type_U16Fixed16_Write, .Lfunc_end21-Type_U16Fixed16_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_U16Fixed16_Dup,@function
Type_U16Fixed16_Dup:                    # @Type_U16Fixed16_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	shll	$3, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end22:
	.size	Type_U16Fixed16_Dup, .Lfunc_end22-Type_U16Fixed16_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_U16Fixed16_Free,@function
Type_U16Fixed16_Free:                   # @Type_U16Fixed16_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end23:
	.size	Type_U16Fixed16_Free, .Lfunc_end23-Type_U16Fixed16_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Read,@function
Type_Text_Read:                         # @Type_Text_Read
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
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 64
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
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	40(%r14), %rdi
	movl	$1, %esi
	callq	cmsMLUalloc
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB24_9
# BB#1:                                 # %if.end
	movl	$0, (%r15)
	cmpl	$-1, %ebx
	je	.LBB24_6
# BB#2:                                 # %if.end.3
	movq	40(%r14), %rdi
	leal	1(%rbx), %esi
	callq	_cmsMalloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB24_6
# BB#3:                                 # %if.end.8
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%ebx, %ecx
	callq	*280(%rbp)
	cmpl	%ebx, %eax
	jne	.LBB24_7
# BB#4:                                 # %if.end.12
	movl	%ebx, %eax
	movb	$0, (%r13,%rax)
	movl	$1, (%r15)
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	cmsMLUsetASCII
	testl	%eax, %eax
	je	.LBB24_7
# BB#5:                                 # %if.end.15
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	movq	%r12, %rax
	jmp	.LBB24_9
.LBB24_6:                               # %if.end.19.thread
	movq	%r12, %rdi
	callq	cmsMLUfree
	jmp	.LBB24_8
.LBB24_7:                               # %if.then.21
	movq	%r12, %rdi
	callq	cmsMLUfree
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
.LBB24_8:                               # %cleanup
	xorl	%eax, %eax
.LBB24_9:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Type_Text_Read, .Lfunc_end24-Type_Text_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Write,@function
Type_Text_Write:                        # @Type_Text_Write
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
	pushq	%r12
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 48
.Ltmp146:
	.cfi_offset %rbx, -48
.Ltmp147:
	.cfi_offset %r12, -40
.Ltmp148:
	.cfi_offset %r14, -32
.Ltmp149:
	.cfi_offset %r15, -24
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	callq	cmsMLUgetASCII
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB25_3
# BB#1:                                 # %if.end
	movq	40(%r15), %rdi
	movl	%ebp, %esi
	callq	_cmsMalloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB25_3
# BB#2:                                 # %if.end.4
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movq	%rbx, %rcx
	movl	%ebp, %r8d
	callq	cmsMLUgetASCII
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	*312(%r14)
	movl	%eax, %ebp
	movq	40(%r15), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movl	%ebp, %eax
	jmp	.LBB25_4
.LBB25_3:                               # %cleanup
	xorl	%eax, %eax
.LBB25_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Type_Text_Write, .Lfunc_end25-Type_Text_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Dup,@function
Type_Text_Dup:                          # @Type_Text_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUdup               # TAILCALL
.Lfunc_end26:
	.size	Type_Text_Dup, .Lfunc_end26-Type_Text_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Free,@function
Type_Text_Free:                         # @Type_Text_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUfree              # TAILCALL
.Lfunc_end27:
	.size	Type_Text_Free, .Lfunc_end27-Type_Text_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Description_Read,@function
Type_Text_Description_Read:             # @Type_Text_Description_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp154:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp157:
	.cfi_def_cfa_offset 96
.Ltmp158:
	.cfi_offset %rbx, -56
.Ltmp159:
	.cfi_offset %r12, -48
.Ltmp160:
	.cfi_offset %r13, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$0, (%r12)
	xorl	%eax, %eax
	cmpl	$4, %ebx
	jb	.LBB28_25
# BB#1:                                 # %if.end
	leaq	36(%rsp), %rsi
	movq	%r14, %rdi
	callq	_cmsReadUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB28_25
# BB#2:                                 # %if.end.3
	addl	$-4, %ebx
	xorl	%eax, %eax
	cmpl	36(%rsp), %ebx
	jb	.LBB28_25
# BB#3:                                 # %if.end.9
	movq	40(%r13), %rdi
	movl	$1, %esi
	callq	cmsMLUalloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB28_25
# BB#4:                                 # %if.end.14
	movq	40(%r13), %rdi
	movl	36(%rsp), %esi
	incl	%esi
	callq	_cmsMalloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB28_24
# BB#5:                                 # %if.end.20
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	36(%rsp), %ecx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*280(%r14)
	movl	%eax, %ebp
	cmpl	36(%rsp), %ebp
	jne	.LBB28_23
# BB#6:                                 # %if.end.25
	movl	%ebp, %eax
	movb	$0, (%r15,%rax)
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r15, %rcx
	callq	cmsMLUsetASCII
	testl	%eax, %eax
	je	.LBB28_23
# BB#7:                                 # %if.end.30
	subl	%ebp, %ebx
	movq	40(%r13), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	cmpl	$8, %ebx
	jb	.LBB28_15
# BB#8:                                 # %if.end.36
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB28_15
# BB#9:                                 # %if.end.40
	leaq	28(%rsp), %rsi
	movq	%r14, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB28_15
# BB#10:                                # %if.end.44
	addl	$-8, %ebx
	movl	28(%rsp), %eax
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rbx
	jb	.LBB28_15
# BB#11:                                # %for.cond.preheader
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB28_17
# BB#12:
	leaq	24(%rsp), %r15
.LBB28_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*280(%r14)
	testl	%eax, %eax
	je	.LBB28_15
# BB#13:                                # %for.cond
                                        #   in Loop: Header=BB28_14 Depth=1
	incl	%ebp
	movl	28(%rsp), %eax
	cmpl	%eax, %ebp
	jb	.LBB28_14
# BB#16:                                # %for.cond.for.end_crit_edge
	addl	%eax, %eax
	movl	%eax, %ebp
.LBB28_17:                              # %for.end
	subl	%ebp, %ebx
	cmpl	$70, %ebx
	jb	.LBB28_15
# BB#18:                                # %if.then.69
	leaq	26(%rsp), %rsi
	movq	%r14, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB28_15
# BB#19:                                # %if.end.73
	leaq	23(%rsp), %rsi
	movq	%r14, %rdi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB28_15
# BB#20:
	xorl	%ebx, %ebx
	leaq	24(%rsp), %r15
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB28_22:                              # %for.body.81
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*280(%r14)
	testl	%eax, %eax
	je	.LBB28_24
# BB#21:                                # %for.cond.78
                                        #   in Loop: Header=BB28_22 Depth=1
	incl	%ebx
	cmpl	$66, %ebx
	jbe	.LBB28_22
.LBB28_15:                              # %Done
	movl	$1, (%r12)
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB28_25
.LBB28_23:                              # %if.then.92
	movq	40(%r13), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB28_24:                              # %if.then.96
	movq	%rbp, %rdi
	callq	cmsMLUfree
	xorl	%eax, %eax
.LBB28_25:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Type_Text_Description_Read, .Lfunc_end28-Type_Text_Description_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Description_Write,@function
Type_Text_Description_Write:            # @Type_Text_Description_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp167:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp168:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp170:
	.cfi_def_cfa_offset 160
.Ltmp171:
	.cfi_offset %rbx, -56
.Ltmp172:
	.cfi_offset %r12, -48
.Ltmp173:
	.cfi_offset %r13, -40
.Ltmp174:
	.cfi_offset %r14, -32
.Ltmp175:
	.cfi_offset %r15, -24
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	32(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$68, %edx
	callq	memset
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	cmsMLUgetASCII
	movl	%eax, %r12d
	movq	40(%rbx), %rdi
	testl	%r12d, %r12d
	je	.LBB29_1
# BB#2:                                 # %if.else
	movl	$1, %edx
	movl	%r12d, %esi
	callq	_cmsCalloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB29_29
# BB#3:                                 # %if.end
	movq	40(%rbx), %rdi
	movl	$4, %edx
	movl	%r12d, %esi
	callq	_cmsCalloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB29_4
# BB#5:                                 # %if.end.17
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%r13, %rcx
	movl	%r12d, %r8d
	callq	cmsMLUgetASCII
	leal	(,%r12,4), %r8d
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%r13, %r14
	movq	%rbp, %rcx
	callq	cmsMLUgetWide
	movq	%rbp, %r13
	jmp	.LBB29_6
.LBB29_1:                               # %if.then
	movl	$.L.str.1, %esi
	movl	$1, %edx
	callq	_cmsDupMem
	movq	%rax, %r14
	movq	40(%rbx), %rdi
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.2, %esi
	movl	$4, %edx
	callq	_cmsDupMem
	movq	%rax, %r13
.LBB29_6:                               # %if.end.25
	leal	3(%r12), %ebx
	andl	$-4, %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	_cmsWriteUInt32Number
	xorl	%ecx, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB29_24
# BB#7:                                 # %if.end.28
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	*312(%r15)
	testl	%eax, %eax
	je	.LBB29_24
# BB#8:                                 # %if.end.32
	movl	%ebx, %ebp
	subl	%r12d, %ebp
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*312(%r15)
	testl	%eax, %eax
	je	.LBB29_24
# BB#9:                                 # %if.end.38
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB29_24
# BB#10:                                # %if.end.42
	orl	$1, %ebx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB29_24
# BB#11:                                # %cond.end.i
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	je	.LBB29_13
# BB#12:                                # %cond.end.i
	testq	%r13, %r13
	je	.LBB29_15
.LBB29_13:                              # %for.cond.preheader.i
	testl	%r12d, %r12d
	je	.LBB29_19
# BB#14:                                # %for.body.lr.ph.i
	movl	%r12d, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB29_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r13,%rbp,4), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB29_18
# BB#16:                                # %for.cond.i
                                        #   in Loop: Header=BB29_17 Depth=1
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB29_17
.LBB29_19:                              # %if.end.51
	movl	12(%rsp), %esi          # 4-byte Reload
	incl	%esi
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Array
	testl	%eax, %eax
	je	.LBB29_24
# BB#20:                                # %if.end.57
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB29_24
# BB#21:                                # %if.end.61
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB29_24
# BB#22:                                # %if.end.65
	leaq	32(%rsp), %rdx
	movl	$67, %esi
	movq	%r15, %rdi
	callq	*312(%r15)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB29_23
.LBB29_4:
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r13, %r14
	movq	%rbp, %r13
	jmp	.LBB29_25
.LBB29_18:
	xorl	%eax, %eax
.LBB29_23:                              # %Error
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB29_24:                              # %Error
	testq	%r14, %r14
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB29_26
.LBB29_25:                              # %if.then.73
	movq	40(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
.LBB29_26:                              # %if.end.75
	testq	%r13, %r13
	je	.LBB29_28
# BB#27:                                # %if.then.77
	movq	40(%rbx), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
.LBB29_28:                              # %if.end.79
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB29_29:                              # %if.end.79
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_15:                              # %cond.false.4.i
	movl	$.L.str.5, %edi
	movl	$.L.str.4, %esi
	movl	$123, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsWriteWCharArray, %ecx
	callq	__assert_fail
.Lfunc_end29:
	.size	Type_Text_Description_Write, .Lfunc_end29-Type_Text_Description_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Description_Dup,@function
Type_Text_Description_Dup:              # @Type_Text_Description_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUdup               # TAILCALL
.Lfunc_end30:
	.size	Type_Text_Description_Dup, .Lfunc_end30-Type_Text_Description_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Text_Description_Free,@function
Type_Text_Description_Free:             # @Type_Text_Description_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUfree              # TAILCALL
.Lfunc_end31:
	.size	Type_Text_Description_Free, .Lfunc_end31-Type_Text_Description_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Curve_Read,@function
Type_Curve_Read:                        # @Type_Curve_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp179:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp181:
	.cfi_def_cfa_offset 64
.Ltmp182:
	.cfi_offset %rbx, -40
.Ltmp183:
	.cfi_offset %r12, -32
.Ltmp184:
	.cfi_offset %r14, -24
.Ltmp185:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$0, (%r15)
	leaq	20(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB32_11
# BB#1:                                 # %if.end
	movl	20(%rsp), %esi
	cmpl	$1, %esi
	jne	.LBB32_2
# BB#5:                                 # %sw.bb.5
	leaq	6(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB32_11
# BB#6:                                 # %if.end.10
	movzwl	6(%rsp), %edi
	callq	_cms8Fixed8toDouble
	movsd	%xmm0, 8(%rsp)
	movl	$1, (%r15)
	movq	40(%r14), %rdi
	leaq	8(%rsp), %rdx
	movl	$1, %esi
	callq	cmsBuildParametricToneCurve
	movq	%rax, %rbx
	jmp	.LBB32_11
.LBB32_2:                               # %if.end
	testl	%esi, %esi
	jne	.LBB32_7
# BB#3:                                 # %sw.bb
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 8(%rsp)
	movq	40(%r14), %rdi
	leaq	8(%rsp), %rdx
	movl	$1, %esi
	callq	cmsBuildParametricToneCurve
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB32_11
# BB#4:                                 # %if.end.4
	movl	$1, (%r15)
	movq	%rax, %rbx
	jmp	.LBB32_11
.LBB32_7:                               # %sw.default
	xorl	%ebx, %ebx
	cmpl	$32767, %esi            # imm = 0x7FFF
	ja	.LBB32_11
# BB#8:                                 # %if.end.17
	movq	40(%r14), %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB32_11
# BB#9:                                 # %if.end.22
	movl	20(%rsp), %esi
	movq	48(%r14), %rdx
	movq	%r12, %rdi
	callq	_cmsReadUInt16Array
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB32_11
# BB#10:                                # %if.end.26
	movl	$1, (%r15)
	movq	%r14, %rbx
.LBB32_11:                              # %cleanup.27
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end32:
	.size	Type_Curve_Read, .Lfunc_end32-Type_Curve_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Curve_Write,@function
Type_Curve_Write:                       # @Type_Curve_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp188:
	.cfi_def_cfa_offset 32
.Ltmp189:
	.cfi_offset %rbx, -24
.Ltmp190:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	cmpl	$1, 8(%rbx)
	jne	.LBB33_4
# BB#1:                                 # %land.lhs.true
	movq	16(%rbx), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB33_4
# BB#2:                                 # %if.then
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	_cmsDoubleTo8Fixed8
	movw	%ax, %bx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB33_5
# BB#3:                                 # %if.end
	movzwl	%bx, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB33_5
.LBB33_4:                               # %if.end.11
	movl	40(%rbx), %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB33_5
# BB#6:                                 # %if.end.15
	movl	40(%rbx), %esi
	movq	48(%rbx), %rdx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsWriteUInt16Array    # TAILCALL
.LBB33_5:                               # %cleanup.18
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end33:
	.size	Type_Curve_Write, .Lfunc_end33-Type_Curve_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Curve_Dup,@function
Type_Curve_Dup:                         # @Type_Curve_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDupToneCurve         # TAILCALL
.Lfunc_end34:
	.size	Type_Curve_Dup, .Lfunc_end34-Type_Curve_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Curve_Free,@function
Type_Curve_Free:                        # @Type_Curve_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsFreeToneCurve        # TAILCALL
.Lfunc_end35:
	.size	Type_Curve_Free, .Lfunc_end35-Type_Curve_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ParametricCurve_Read,@function
Type_ParametricCurve_Read:              # @Type_ParametricCurve_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp192:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp193:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp194:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp195:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp196:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp197:
	.cfi_def_cfa_offset 160
.Ltmp198:
	.cfi_offset %rbx, -56
.Ltmp199:
	.cfi_offset %r12, -48
.Ltmp200:
	.cfi_offset %r13, -40
.Ltmp201:
	.cfi_offset %r14, -32
.Ltmp202:
	.cfi_offset %r15, -24
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	leaq	14(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsReadUInt16Number
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB36_8
# BB#1:                                 # %if.end
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB36_8
# BB#2:                                 # %if.end.4
	movzwl	14(%rsp), %ecx
	cmpl	$5, %ecx
	jb	.LBB36_4
# BB#3:                                 # %if.then.6
	movq	40(%r15), %rdi
	xorl	%r12d, %r12d
	movl	$8, %esi
	movl	$.L.str.6, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB36_8
.LBB36_4:                               # %for.body.lr.ph
	leaq	16(%rsp), %rbx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$80, %edx
	movq	%rbx, %rdi
	callq	memset
	movzwl	14(%rsp), %eax
	movslq	Type_ParametricCurve_Read.ParamsByType(,%rax,4), %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB36_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB36_8
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB36_6 Depth=1
	incq	%r14
	addq	$8, %rbx
	cmpq	%rbp, %r14
	jl	.LBB36_6
# BB#7:                                 # %for.end
	movq	40(%r15), %rdi
	movzwl	14(%rsp), %esi
	incl	%esi
	leaq	16(%rsp), %rdx
	callq	cmsBuildParametricToneCurve
	movq	%rax, %r12
	movq	(%rsp), %rax            # 8-byte Reload
	movl	$1, (%rax)
.LBB36_8:                               # %cleanup
	movq	%r12, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Type_ParametricCurve_Read, .Lfunc_end36-Type_ParametricCurve_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ParametricCurve_Write,@function
Type_ParametricCurve_Write:             # @Type_ParametricCurve_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp205:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp206:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp207:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp208:
	.cfi_def_cfa_offset 48
.Ltmp209:
	.cfi_offset %rbx, -48
.Ltmp210:
	.cfi_offset %r12, -40
.Ltmp211:
	.cfi_offset %r14, -32
.Ltmp212:
	.cfi_offset %r15, -24
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	16(%rbx), %rax
	movslq	8(%rax), %rbp
	testq	%rbp, %rbp
	jle	.LBB37_2
# BB#1:                                 # %entry
	cmpl	$2, 8(%rbx)
	jae	.LBB37_2
# BB#4:                                 # %if.end
	cmpl	$6, %ebp
	jl	.LBB37_6
# BB#5:                                 # %if.then.3
	movq	40(%rdi), %rdi
	xorl	%r15d, %r15d
	movl	$8, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB37_3
.LBB37_2:                               # %if.then
	movq	40(%rdi), %rdi
	xorl	%r15d, %r15d
	movl	$8, %esi
	movl	$.L.str.7, %edx
.LBB37_3:                               # %cleanup
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB37_13:                              # %cleanup
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_6:                               # %if.end.5
	leal	65535(%rbp), %eax
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB37_13
# BB#7:                                 # %if.end.11
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB37_13
# BB#8:                                 # %for.cond.preheader
	movl	$1, %r15d
	testl	%ebp, %ebp
	je	.LBB37_13
# BB#9:                                 # %for.body.lr.ph
	movslq	Type_ParametricCurve_Write.ParamsByType(,%rbp,4), %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB37_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rax
	movsd	16(%rax,%rbp,8), %xmm0  # xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB37_12
# BB#10:                                # %for.cond
                                        #   in Loop: Header=BB37_11 Depth=1
	incq	%rbp
	cmpq	%r12, %rbp
	jl	.LBB37_11
	jmp	.LBB37_13
.LBB37_12:
	xorl	%r15d, %r15d
	jmp	.LBB37_13
.Lfunc_end37:
	.size	Type_ParametricCurve_Write, .Lfunc_end37-Type_ParametricCurve_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ParametricCurve_Dup,@function
Type_ParametricCurve_Dup:               # @Type_ParametricCurve_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDupToneCurve         # TAILCALL
.Lfunc_end38:
	.size	Type_ParametricCurve_Dup, .Lfunc_end38-Type_ParametricCurve_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ParametricCurve_Free,@function
Type_ParametricCurve_Free:              # @Type_ParametricCurve_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsFreeToneCurve        # TAILCALL
.Lfunc_end39:
	.size	Type_ParametricCurve_Free, .Lfunc_end39-Type_ParametricCurve_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_DateTime_Read,@function
Type_DateTime_Read:                     # @Type_DateTime_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp214:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp217:
	.cfi_def_cfa_offset 48
.Ltmp218:
	.cfi_offset %rbx, -32
.Ltmp219:
	.cfi_offset %r14, -24
.Ltmp220:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	$0, (%r14)
	movq	40(%rdi), %rdi
	movl	$56, %esi
	callq	_cmsMalloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB40_3
# BB#1:                                 # %if.end
	leaq	(%rsp), %rsi
	movl	$12, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	*280(%r15)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB40_3
# BB#2:                                 # %if.end.4
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_cmsDecodeDateTimeNumber
	movl	$1, (%r14)
	movq	%rbx, %rax
.LBB40_3:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end40:
	.size	Type_DateTime_Read, .Lfunc_end40-Type_DateTime_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_DateTime_Write,@function
Type_DateTime_Write:                    # @Type_DateTime_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp222:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp223:
	.cfi_def_cfa_offset 48
.Ltmp224:
	.cfi_offset %rbx, -24
.Ltmp225:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	leaq	8(%rsp), %r14
	movq	%r14, %rdi
	movq	%rdx, %rsi
	callq	_cmsEncodeDateTimeNumber
	movl	$12, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*312(%rbx)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end41:
	.size	Type_DateTime_Write, .Lfunc_end41-Type_DateTime_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_DateTime_Dup,@function
Type_DateTime_Dup:                      # @Type_DateTime_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$56, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end42:
	.size	Type_DateTime_Dup, .Lfunc_end42-Type_DateTime_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_DateTime_Free,@function
Type_DateTime_Free:                     # @Type_DateTime_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end43:
	.size	Type_DateTime_Free, .Lfunc_end43-Type_DateTime_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUT8_Read,@function
Type_LUT8_Read:                         # @Type_LUT8_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp227:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp228:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp229:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp230:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp231:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp232:
	.cfi_def_cfa_offset 160
.Ltmp233:
	.cfi_offset %rbx, -56
.Ltmp234:
	.cfi_offset %r12, -48
.Ltmp235:
	.cfi_offset %r13, -40
.Ltmp236:
	.cfi_offset %r14, -32
.Ltmp237:
	.cfi_offset %r15, -24
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$0, (%r15)
	leaq	103(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB44_55
# BB#1:                                 # %if.end
	leaq	102(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB44_55
# BB#2:                                 # %if.end.4
	leaq	101(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB44_55
# BB#3:                                 # %if.end.4
	movzbl	101(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB44_55
# BB#4:                                 # %if.end.11
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB44_55
# BB#5:                                 # %if.end.15
	movzbl	103(%rsp), %esi
	xorl	%ebp, %ebp
	cmpl	$16, %esi
	ja	.LBB44_55
# BB#6:                                 # %if.end.20
	movzbl	102(%rsp), %edx
	xorl	%ebp, %ebp
	cmpl	$16, %edx
	ja	.LBB44_55
# BB#7:                                 # %if.end.25
	movq	40(%r14), %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB44_55
# BB#8:                                 # %if.end.32
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#9:                                 # %if.end.36
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#10:                                # %if.end.41
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#11:                                # %if.end.46
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#12:                                # %if.end.51
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#13:                                # %if.end.56
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#14:                                # %if.end.61
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#15:                                # %if.end.66
	leaq	72(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#16:                                # %if.end.71
	leaq	80(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB44_54
# BB#17:                                # %if.end.76
	movzbl	103(%rsp), %eax
	cmpl	$3, %eax
	jne	.LBB44_20
# BB#18:                                # %land.lhs.true
	leaq	16(%rsp), %rdi
	callq	_cmsMAT3isIdentity
	testl	%eax, %eax
	jne	.LBB44_20
# BB#19:                                # %if.then.82
	movq	40(%r14), %rdi
	leaq	16(%rsp), %rcx
	movl	$3, %esi
	movl	$3, %edx
	xorl	%r8d, %r8d
	callq	cmsStageAllocMatrix
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB44_54
.LBB44_20:                              # %if.end.90
	movq	40(%r14), %rdi
	movzbl	103(%rsp), %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	Read8bitTables
	testl	%eax, %eax
	je	.LBB44_54
# BB#21:                                # %if.end.96
	movzbl	102(%rsp), %esi
	testl	%esi, %esi
	je	.LBB44_50
# BB#22:                                # %if.end.96
	movb	101(%rsp), %al
	testb	%al, %al
	je	.LBB44_50
# BB#23:                                # %for.cond.preheader.i
	movzbl	103(%rsp), %ecx
	movl	$1, %edi
	testb	%cl, %cl
	je	.LBB44_27
# BB#24:                                # %for.body.lr.ph.i
	movzbl	%al, %ebp
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%ebp
	negl	%ecx
	movl	$1, %edi
.LBB44_26:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	%ebp, %edi
	cmpl	%eax, %edi
	ja	.LBB44_54
# BB#25:                                # %for.cond.i
                                        #   in Loop: Header=BB44_26 Depth=1
	incl	%ecx
	jne	.LBB44_26
.LBB44_27:                              # %uipow.exit
	movl	%edi, %ecx
	imull	%esi, %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	cmpl	%eax, %edi
	movl	$-1, %ebp
	cmovel	%ecx, %ebp
	cmpl	$-1, %ebp
	je	.LBB44_54
# BB#28:                                # %uipow.exit
	testl	%ebp, %ebp
	je	.LBB44_50
# BB#29:                                # %if.then.107
	movq	40(%r14), %rdi
	movl	$2, %edx
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB44_54
# BB#30:                                # %if.end.113
	movq	40(%r14), %rdi
	movl	%ebp, %esi
	callq	_cmsMalloc
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rax, %rax
	je	.LBB44_31
# BB#32:                                # %if.end.120
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	%ebp, %edx
	callq	*280(%rbx)
	cmpl	$1, %eax
	jne	.LBB44_52
# BB#33:                                # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%rbp), %edx
	leaq	1(%rdx), %r9
	xorl	%esi, %esi
	movq	%r9, %rcx
	andq	%r8, %rcx
	movq	%r13, %rax
	je	.LBB44_42
# BB#34:                                # %vector.memcheck
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	xorl	%esi, %esi
	cmpq	%rax, %r13
	ja	.LBB44_36
# BB#35:                                # %vector.memcheck
	leaq	(%r13,%rdx,2), %rax
	cmpq	%rax, 8(%rsp)           # 8-byte Folded Reload
	movq	%r13, %rax
	jbe	.LBB44_42
.LBB44_36:                              # %vector.body.preheader
	leaq	1(%rdx), %rax
	andq	%r8, %rax
	addq	$-16, %rax
	movq	%rax, %rsi
	shrq	$4, %rsi
	xorl	%edi, %edi
	btq	$4, %rax
	jb	.LBB44_38
# BB#37:                                # %vector.body.prol
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rax), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movdqa	%xmm0, %xmm2
	psllw	$8, %xmm2
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	por	%xmm0, %xmm2
	por	%xmm1, %xmm3
	movdqu	%xmm2, (%r13)
	movdqu	%xmm3, 16(%r13)
	movl	$16, %edi
.LBB44_38:                              # %vector.body.preheader.split
	leaq	(%r13,%rcx,2), %rax
	testq	%rsi, %rsi
	je	.LBB44_41
# BB#39:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%rdi, %rdx
	movq	8(%rsp), %rsi           # 8-byte Reload
	leaq	24(%rdi,%rsi), %rsi
	leaq	48(%r13,%rdi,2), %rdi
	pxor	%xmm0, %xmm0
.LBB44_40:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rsi), %xmm2        # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	movdqa	%xmm2, %xmm4
	psllw	$8, %xmm4
	por	%xmm1, %xmm3
	por	%xmm2, %xmm4
	movdqu	%xmm3, -48(%rdi)
	movdqu	%xmm4, -32(%rdi)
	movq	-8(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	(%rsi), %xmm2           # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	movdqa	%xmm2, %xmm4
	psllw	$8, %xmm4
	por	%xmm1, %xmm3
	por	%xmm2, %xmm4
	movdqu	%xmm3, -16(%rdi)
	movdqu	%xmm4, (%rdi)
	addq	$32, %rsi
	addq	$64, %rdi
	addq	$-32, %rdx
	jne	.LBB44_40
.LBB44_41:
	movq	%rcx, %rsi
.LBB44_42:                              # %middle.block
	cmpq	%rsi, %r9
	je	.LBB44_48
# BB#43:                                # %for.body.preheader109
	leal	1(%rbp), %edx
	movl	%esi, %ecx
	orl	$1, %ecx
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB44_45
# BB#44:                                # %for.body.prol
	movq	8(%rsp), %rdx           # 8-byte Reload
	movzbl	(%rdx,%rsi), %edx
	movl	%edx, %edi
	shll	$8, %edi
	orl	%edx, %edi
	movw	%di, (%rax)
	addq	$2, %rax
	orq	$1, %rsi
.LBB44_45:                              # %for.body.preheader109.split
	cmpl	%ecx, %ebp
	je	.LBB44_48
# BB#46:                                # %for.body.preheader109.split.split
	subl	%esi, %ebp
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	1(%rsi,%rcx), %rcx
.LBB44_47:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, (%rax)
	movzbl	(%rcx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 2(%rax)
	addq	$2, %rcx
	addq	$4, %rax
	addl	$-2, %ebp
	jne	.LBB44_47
.LBB44_48:                              # %for.end
	movq	40(%r14), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	_cmsFree
	movq	40(%r14), %rdi
	movzbl	101(%rsp), %esi
	movzbl	103(%rsp), %edx
	movzbl	102(%rsp), %ecx
	movq	%r13, %r8
	callq	cmsStageAllocCLut16bit
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB44_54
# BB#49:                                # %cleanup
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	movb	102(%rsp), %sil
.LBB44_50:                              # %if.end.149
	movq	40(%r14), %rdi
	movzbl	%sil, %ecx
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	Read8bitTables
	testl	%eax, %eax
	je	.LBB44_54
# BB#51:                                # %if.end.155
	movl	$1, (%r15)
	movq	%r12, %rbp
	jmp	.LBB44_55
.LBB44_31:                              # %if.then.118
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	jmp	.LBB44_53
.LBB44_52:                              # %if.then.124
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	movq	40(%r14), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB44_53:                              # %if.then.158
	callq	_cmsFree
.LBB44_54:                              # %if.then.158
	movq	%r12, %rdi
	callq	cmsPipelineFree
	xorl	%ebp, %ebp
.LBB44_55:                              # %cleanup.160
	movq	%rbp, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Type_LUT8_Read, .Lfunc_end44-Type_LUT8_Read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI45_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	Type_LUT8_Write,@function
Type_LUT8_Write:                        # @Type_LUT8_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp240:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp241:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp242:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp243:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp244:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp245:
	.cfi_def_cfa_offset 80
.Ltmp246:
	.cfi_offset %rbx, -56
.Ltmp247:
	.cfi_offset %r12, -48
.Ltmp248:
	.cfi_offset %r13, -40
.Ltmp249:
	.cfi_offset %r14, -32
.Ltmp250:
	.cfi_offset %r15, -24
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	(%rbx), %rax
	xorl	%r12d, %r12d
	cmpl	$1835103334, 8(%rax)    # imm = 0x6D617466
	jne	.LBB45_1
# BB#2:                                 # %if.then
	movq	48(%rax), %rbp
	movq	56(%rax), %rax
	jmp	.LBB45_3
.LBB45_1:
	xorl	%ebp, %ebp
.LBB45_3:                               # %if.end
	testq	%rax, %rax
	movl	$0, %r14d
	movl	$0, %edx
	movl	$0, %ecx
	je	.LBB45_20
# BB#4:                                 # %land.lhs.true
	movl	8(%rax), %ecx
	xorl	%r14d, %r14d
	cmpl	$1668707188, %ecx       # imm = 0x63767374
	jne	.LBB45_5
# BB#6:                                 # %if.end.7
	movq	48(%rax), %rdx
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB45_7
# BB#8:                                 # %if.end.7.land.lhs.true.9_crit_edge
	movl	8(%rax), %ecx
	jmp	.LBB45_9
.LBB45_5:
	xorl	%edx, %edx
.LBB45_9:                               # %land.lhs.true.9
	xorl	%r14d, %r14d
	cmpl	$1668052340, %ecx       # imm = 0x636C7574
	jne	.LBB45_12
# BB#10:                                # %if.end.15
	movq	48(%rax), %r14
	movq	56(%rax), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB45_17
# BB#11:                                # %if.end.15.land.lhs.true.17_crit_edge
	movl	8(%rax), %ecx
.LBB45_12:                              # %land.lhs.true.17
	cmpl	$1668707188, %ecx       # imm = 0x63767374
	jne	.LBB45_13
# BB#15:                                # %if.end.23
	movq	56(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB45_14
# BB#16:
	movq	48(%rax), %rcx
.LBB45_17:                              # %if.end.26
	xorl	%r12d, %r12d
	testq	%r14, %r14
	je	.LBB45_18
# BB#19:                                # %if.else
	movq	8(%r14), %rax
	movl	20(%rax), %r12d
	jmp	.LBB45_20
.LBB45_13:
	movq	%rax, %rcx
.LBB45_14:                              # %if.then.25
	movq	(%rcx), %rdi
	xorl	%r13d, %r13d
	movl	$8, %esi
	movl	$.L.str.9, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB45_60
.LBB45_7:
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	jmp	.LBB45_20
.LBB45_18:
	xorl	%r14d, %r14d
.LBB45_20:                              # %if.end.29
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movzbl	8(%rbx), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt8Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB45_60
# BB#21:                                # %if.end.31
	movzbl	12(%rbx), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#22:                                # %if.end.36
	movzbl	%r12b, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#23:                                # %if.end.41
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#24:                                # %if.end.45
	testq	%rbp, %rbp
	je	.LBB45_34
# BB#25:                                # %if.then.48
	movq	(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#26:                                # %if.end.53
	movq	(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#27:                                # %if.end.59
	movq	(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#28:                                # %if.end.65
	movq	(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#29:                                # %if.end.71
	movq	(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#30:                                # %if.end.77
	movq	(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#31:                                # %if.end.83
	movq	(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#32:                                # %if.end.89
	movq	(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#33:                                # %if.end.95
	movq	(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	jmp	.LBB45_43
.LBB45_34:                              # %if.else.102
	movsd	.LCPI45_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#35:                                # %if.end.106
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#36:                                # %if.end.110
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#37:                                # %if.end.114
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#38:                                # %if.end.118
	movsd	.LCPI45_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#39:                                # %if.end.122
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#40:                                # %if.end.126
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#41:                                # %if.end.130
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#42:                                # %if.end.134
	movsd	.LCPI45_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB45_43:                              # %if.end.134
	movq	%r15, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#44:                                # %if.end.139
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movl	8(%rbx), %edx
	movq	%r15, %rsi
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	Write8bitTables
	testl	%eax, %eax
	je	.LBB45_60
# BB#45:                                # %if.end.145
	movl	12(%rbx), %ecx
	testl	%r12d, %r12d
	je	.LBB45_59
# BB#46:                                # %if.end.145
	testl	%ecx, %ecx
	je	.LBB45_59
# BB#47:                                # %for.cond.preheader.i
	movl	8(%rbx), %esi
	movl	$1, %edi
	testl	%esi, %esi
	je	.LBB45_51
# BB#48:                                # %for.body.lr.ph.i
	xorl	%r13d, %r13d
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%r12d
	movl	$1, %edi
.LBB45_50:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	%r12d, %edi
	cmpl	%eax, %edi
	ja	.LBB45_60
# BB#49:                                # %for.cond.i
                                        #   in Loop: Header=BB45_50 Depth=1
	decl	%esi
	jne	.LBB45_50
.LBB45_51:                              # %for.end.i
	movl	%edi, %esi
	imull	%ecx, %esi
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%ecx
	cmpl	%eax, %edi
	jne	.LBB45_60
# BB#52:                                # %for.end.i
	cmpl	$-1, %esi
	je	.LBB45_60
# BB#53:                                # %if.end.152
	testq	%r14, %r14
	je	.LBB45_59
# BB#54:                                # %if.end.152
	testl	%esi, %esi
	je	.LBB45_59
# BB#55:                                # %for.body.lr.ph
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
.LBB45_57:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movzwl	(%rax,%rbp,2), %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB45_60
# BB#56:                                # %for.cond
                                        #   in Loop: Header=BB45_57 Depth=1
	incq	%rbp
	cmpq	%r12, %rbp
	jb	.LBB45_57
# BB#58:                                # %if.end.169.loopexit
	movl	12(%rbx), %ecx
.LBB45_59:                              # %if.end.169
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movq	%r15, %rsi
	movl	%ecx, %edx
	movq	(%rsp), %rcx            # 8-byte Reload
	callq	Write8bitTables
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r13d
.LBB45_60:                              # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Type_LUT8_Write, .Lfunc_end45-Type_LUT8_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUT8_Dup,@function
Type_LUT8_Dup:                          # @Type_LUT8_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineDup          # TAILCALL
.Lfunc_end46:
	.size	Type_LUT8_Dup, .Lfunc_end46-Type_LUT8_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUT8_Free,@function
Type_LUT8_Free:                         # @Type_LUT8_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineFree         # TAILCALL
.Lfunc_end47:
	.size	Type_LUT8_Free, .Lfunc_end47-Type_LUT8_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUT16_Read,@function
Type_LUT16_Read:                        # @Type_LUT16_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp253:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp254:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp255:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp256:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp257:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp258:
	.cfi_def_cfa_offset 160
.Ltmp259:
	.cfi_offset %rbx, -56
.Ltmp260:
	.cfi_offset %r12, -48
.Ltmp261:
	.cfi_offset %r13, -40
.Ltmp262:
	.cfi_offset %r14, -32
.Ltmp263:
	.cfi_offset %r15, -24
.Ltmp264:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$0, (%r14)
	leaq	103(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB48_40
# BB#1:                                 # %if.end
	leaq	102(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB48_40
# BB#2:                                 # %if.end.4
	leaq	101(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB48_40
# BB#3:                                 # %if.end.8
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB48_40
# BB#4:                                 # %if.end.12
	movzbl	103(%rsp), %esi
	xorl	%ebx, %ebx
	cmpl	$16, %esi
	ja	.LBB48_40
# BB#5:                                 # %if.end.15
	movzbl	102(%rsp), %edx
	xorl	%ebx, %ebx
	cmpl	$16, %edx
	ja	.LBB48_40
# BB#6:                                 # %if.end.20
	movq	40(%r15), %rdi
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB48_40
# BB#7:                                 # %if.end.27
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#8:                                 # %if.end.31
	leaq	24(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#9:                                 # %if.end.36
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#10:                                # %if.end.41
	leaq	40(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#11:                                # %if.end.46
	leaq	48(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#12:                                # %if.end.51
	leaq	56(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#13:                                # %if.end.56
	leaq	64(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#14:                                # %if.end.61
	leaq	72(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#15:                                # %if.end.66
	leaq	80(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#16:                                # %if.end.71
	movzbl	103(%rsp), %eax
	cmpl	$3, %eax
	jne	.LBB48_19
# BB#17:                                # %land.lhs.true
	leaq	16(%rsp), %rdi
	callq	_cmsMAT3isIdentity
	testl	%eax, %eax
	jne	.LBB48_19
# BB#18:                                # %if.then.77
	movq	40(%r15), %rdi
	leaq	16(%rsp), %rcx
	movl	$3, %esi
	movl	$3, %edx
	xorl	%r8d, %r8d
	callq	cmsStageAllocMatrix
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB48_30
.LBB48_19:                              # %if.end.85
	leaq	14(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#20:                                # %if.end.89
	leaq	12(%rsp), %rsi
	movq	%r13, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB48_30
# BB#21:                                # %if.end.93
	movzwl	14(%rsp), %r8d
	movw	12(%rsp), %ax
	orw	%r8w, %ax
	js	.LBB48_30
# BB#22:                                # %if.end.93
	movzbl	101(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB48_30
# BB#23:                                # %if.end.106
	movq	40(%r15), %rdi
	movzbl	103(%rsp), %ecx
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Read16bitTables
	testl	%eax, %eax
	je	.LBB48_30
# BB#24:                                # %if.end.113
	movzbl	102(%rsp), %esi
	testl	%esi, %esi
	je	.LBB48_38
# BB#25:                                # %if.end.113
	movb	101(%rsp), %al
	testb	%al, %al
	je	.LBB48_38
# BB#26:                                # %for.cond.preheader.i
	movzbl	103(%rsp), %ecx
	movl	$1, %edi
	testb	%cl, %cl
	je	.LBB48_31
# BB#27:                                # %for.body.lr.ph.i
	movzbl	%al, %ebp
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%ebp
	negl	%ecx
	movl	$1, %edi
.LBB48_29:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	%ebp, %edi
	cmpl	%eax, %edi
	ja	.LBB48_30
# BB#28:                                # %for.cond.i
                                        #   in Loop: Header=BB48_29 Depth=1
	incl	%ecx
	jne	.LBB48_29
.LBB48_31:                              # %uipow.exit
	movl	%edi, %ecx
	imull	%esi, %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	cmpl	%eax, %edi
	movl	$-1, %ebp
	cmovel	%ecx, %ebp
	cmpl	$-1, %ebp
	je	.LBB48_30
# BB#32:                                # %uipow.exit
	testl	%ebp, %ebp
	je	.LBB48_38
# BB#33:                                # %if.then.124
	movq	40(%r15), %rdi
	movl	$2, %edx
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB48_30
# BB#34:                                # %if.end.130
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	_cmsReadUInt16Array
	movq	40(%r15), %rdi
	testl	%eax, %eax
	je	.LBB48_35
# BB#36:                                # %cleanup
	movzbl	101(%rsp), %esi
	movzbl	103(%rsp), %edx
	movzbl	102(%rsp), %ecx
	movq	%rbx, %r8
	callq	cmsStageAllocCLut16bit
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	movl	%eax, %ebp
	movq	40(%r15), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	testl	%ebp, %ebp
	je	.LBB48_30
# BB#37:                                # %cleanup.if.end.147_crit_edge
	movb	102(%rsp), %sil
.LBB48_38:                              # %if.end.147
	movq	40(%r15), %rdi
	movzbl	%sil, %ecx
	movzwl	12(%rsp), %r8d
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Read16bitTables
	testl	%eax, %eax
	je	.LBB48_30
# BB#39:                                # %if.end.154
	movl	$1, (%r14)
	movq	%r12, %rbx
	jmp	.LBB48_40
.LBB48_35:                              # %if.then.133
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB48_30:                              # %if.then.157
	movq	%r12, %rdi
	callq	cmsPipelineFree
	xorl	%ebx, %ebx
.LBB48_40:                              # %cleanup.159
	movq	%rbx, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Type_LUT16_Read, .Lfunc_end48-Type_LUT16_Read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI49_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	Type_LUT16_Write,@function
Type_LUT16_Write:                       # @Type_LUT16_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp266:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp267:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp268:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp269:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp270:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp271:
	.cfi_def_cfa_offset 112
.Ltmp272:
	.cfi_offset %rbx, -56
.Ltmp273:
	.cfi_offset %r12, -48
.Ltmp274:
	.cfi_offset %r13, -40
.Ltmp275:
	.cfi_offset %r14, -32
.Ltmp276:
	.cfi_offset %r15, -24
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	(%rbp), %rax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB49_1
# BB#2:                                 # %land.lhs.true
	movl	8(%rax), %ecx
	xorl	%r14d, %r14d
	cmpl	$1835103334, %ecx       # imm = 0x6D617466
	jne	.LBB49_6
# BB#3:                                 # %if.end
	movq	48(%rax), %r14
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB49_4
# BB#5:                                 # %if.end.land.lhs.true.3_crit_edge
	movl	8(%rax), %ecx
.LBB49_6:                               # %land.lhs.true.3
	xorl	%edx, %edx
	cmpl	$1668707188, %ecx       # imm = 0x63767374
	jne	.LBB49_10
# BB#7:                                 # %if.end.9
	movq	48(%rax), %rdx
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB49_8
# BB#9:                                 # %if.end.9.land.lhs.true.11_crit_edge
	movl	8(%rax), %ecx
.LBB49_10:                              # %land.lhs.true.11
	xorl	%r12d, %r12d
	cmpl	$1668052340, %ecx       # imm = 0x636C7574
	jne	.LBB49_14
# BB#11:                                # %if.end.17
	movq	48(%rax), %r12
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.LBB49_12
# BB#13:                                # %if.end.17.land.lhs.true.19_crit_edge
	movl	8(%rax), %ecx
.LBB49_14:                              # %land.lhs.true.19
	cmpl	$1668707188, %ecx       # imm = 0x63767374
	jne	.LBB49_15
# BB#17:                                # %if.end.25
	movq	56(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB49_16
# BB#18:
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	48(%rax), %rax
	jmp	.LBB49_19
.LBB49_1:
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB49_20
.LBB49_15:
	movq	%rax, %rcx
.LBB49_16:                              # %if.then.27
	movq	(%rcx), %rdi
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB49_97
.LBB49_4:
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB49_20
.LBB49_8:
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB49_20
.LBB49_12:
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
.LBB49_19:                              # %if.end.28
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB49_20:                              # %if.end.28
	movq	%rbp, %rdi
	callq	cmsPipelineInputChannels
	movl	%eax, %r15d
	movq	%rbp, %rdi
	callq	cmsPipelineOutputChannels
	movl	%eax, 48(%rsp)          # 4-byte Spill
	testq	%r12, %r12
	je	.LBB49_22
# BB#21:                                # %if.else
	movq	8(%r12), %rax
	movl	20(%rax), %r13d
.LBB49_22:                              # %if.end.32
	movzbl	%r15b, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB49_97
# BB#23:                                # %if.end.35
	movl	48(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#24:                                # %if.end.40
	movzbl	%r13b, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#25:                                # %if.end.45
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#26:                                # %if.end.49
	testq	%r14, %r14
	je	.LBB49_36
# BB#27:                                # %if.then.52
	movq	(%r14), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#28:                                # %if.end.57
	movq	(%r14), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#29:                                # %if.end.63
	movq	(%r14), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#30:                                # %if.end.69
	movq	(%r14), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#31:                                # %if.end.75
	movq	(%r14), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#32:                                # %if.end.81
	movq	(%r14), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#33:                                # %if.end.87
	movq	(%r14), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#34:                                # %if.end.93
	movq	(%r14), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#35:                                # %if.end.99
	movq	(%r14), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	jmp	.LBB49_45
.LBB49_36:                              # %if.else.106
	movsd	.LCPI49_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#37:                                # %if.end.110
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#38:                                # %if.end.114
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#39:                                # %if.end.118
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#40:                                # %if.end.122
	movsd	.LCPI49_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#41:                                # %if.end.126
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#42:                                # %if.end.130
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#43:                                # %if.end.134
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#44:                                # %if.end.138
	movsd	.LCPI49_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB49_45:                              # %if.end.138
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#46:                                # %if.end.143
	movq	40(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB49_48
# BB#47:                                # %if.then.146
	movq	8(%rcx), %rax
	movq	%rcx, %r14
	movq	(%rax), %rax
	movzwl	40(%rax), %esi
	jmp	.LBB49_49
.LBB49_48:                              # %if.else.153
	movq	%rcx, %r14
	movl	$2, %esi
.LBB49_49:                              # %if.else.153
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#50:                                # %if.end.158
	movq	32(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB49_52
# BB#51:                                # %if.then.161
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movzwl	40(%rax), %esi
	jmp	.LBB49_53
.LBB49_52:                              # %if.else.170
	movl	$2, %esi
.LBB49_53:                              # %if.else.170
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#54:                                # %if.end.175
	movq	%r14, %rdx
	testq	%rdx, %rdx
	je	.LBB49_55
# BB#57:                                # %cond.end.i
	movl	(%rdx), %eax
	testl	%eax, %eax
	je	.LBB49_65
# BB#58:                                # %for.cond.3.preheader.lr.ph.i
	movq	8(%rdx), %rcx
	movq	(%rcx), %rcx
	movslq	40(%rcx), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	xorl	%ebp, %ebp
.LBB49_59:                              # %for.cond.3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_62 Depth 2
	movq	24(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB49_64
# BB#60:                                # %for.body.5.lr.ph.i
                                        #   in Loop: Header=BB49_59 Depth=1
	movl	%esi, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
.LBB49_62:                              # %for.body.5.i
                                        #   Parent Loop BB49_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rdx), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	48(%rax), %rax
	movzwl	(%rax,%r14,2), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#61:                                # %for.cond.3.i
                                        #   in Loop: Header=BB49_62 Depth=2
	incq	%r14
	cmpq	24(%rsp), %r14          # 8-byte Folded Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	jl	.LBB49_62
# BB#63:                                # %for.cond.3.for.inc.10_crit_edge.i
                                        #   in Loop: Header=BB49_59 Depth=1
	movl	(%rdx), %eax
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB49_64:                              # %for.inc.10.i
                                        #   in Loop: Header=BB49_59 Depth=1
	incl	%esi
	cmpl	%eax, %esi
	jb	.LBB49_59
	jmp	.LBB49_65
.LBB49_55:                              # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB49_65
# BB#56:
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
.LBB49_70:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#71:                                # %if.end.190
                                        #   in Loop: Header=BB49_70 Depth=1
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#69:                                # %for.cond
                                        #   in Loop: Header=BB49_70 Depth=1
	incl	%r14d
	cmpl	%r15d, %r14d
	jl	.LBB49_70
.LBB49_65:                              # %if.end.195
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	je	.LBB49_79
# BB#66:                                # %if.end.195
	testl	%r13d, %r13d
	je	.LBB49_79
# BB#67:                                # %for.cond.preheader.i
	movl	$1, %esi
	testl	%r15d, %r15d
	je	.LBB49_74
# BB#68:                                # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	$1, %esi
.LBB49_73:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	imull	%r13d, %esi
	cmpl	%eax, %esi
	ja	.LBB49_97
# BB#72:                                # %for.cond.i
                                        #   in Loop: Header=BB49_73 Depth=1
	decl	%r15d
	jne	.LBB49_73
.LBB49_74:                              # %for.end.i
	movl	%esi, %ecx
	movl	48(%rsp), %edi          # 4-byte Reload
	imull	%edi, %ecx
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	cmpl	%eax, %esi
	jne	.LBB49_97
# BB#75:                                # %for.end.i
	cmpl	$-1, %ecx
	je	.LBB49_97
# BB#76:                                # %if.end.200
	testq	%r12, %r12
	je	.LBB49_79
# BB#77:                                # %if.end.200
	testl	%ecx, %ecx
	je	.LBB49_79
# BB#78:                                # %if.then.206
	movq	(%r12), %rdx
	movq	%rbx, %rdi
	movl	%ecx, %esi
	callq	_cmsWriteUInt16Array
	testl	%eax, %eax
	je	.LBB49_97
.LBB49_79:                              # %if.end.212
	movq	32(%rsp), %r15          # 8-byte Reload
	testq	%r15, %r15
	je	.LBB49_80
# BB#82:                                # %cond.end.i.98
	movl	(%r15), %eax
	testl	%eax, %eax
	je	.LBB49_83
# BB#84:                                # %for.cond.3.preheader.lr.ph.i.100
	movq	8(%r15), %rcx
	movq	(%rcx), %rcx
	movslq	40(%rcx), %r14
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
.LBB49_85:                              # %for.cond.3.preheader.i.102
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_88 Depth 2
	testl	%r14d, %r14d
	jle	.LBB49_90
# BB#86:                                # %for.body.5.lr.ph.i.104
                                        #   in Loop: Header=BB49_85 Depth=1
	movl	%ecx, %r12d
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
.LBB49_88:                              # %for.body.5.i.114
                                        #   Parent Loop BB49_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r15), %rax
	movq	(%rax,%r12,8), %rax
	movq	48(%rax), %rax
	movzwl	(%rax,%r13,2), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#87:                                # %for.cond.3.i.106
                                        #   in Loop: Header=BB49_88 Depth=2
	incq	%r13
	cmpq	%r14, %r13
	jl	.LBB49_88
# BB#89:                                # %for.cond.3.for.inc.10_crit_edge.i.116
                                        #   in Loop: Header=BB49_85 Depth=1
	movl	(%r15), %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
.LBB49_90:                              # %for.inc.10.i.119
                                        #   in Loop: Header=BB49_85 Depth=1
	incl	%ecx
	cmpl	%eax, %ecx
	jb	.LBB49_85
# BB#91:
	movl	$1, %ebp
	jmp	.LBB49_97
.LBB49_80:                              # %for.cond.222.preheader
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	jle	.LBB49_81
# BB#94:
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
.LBB49_95:                              # %for.body.225
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#96:                                # %if.end.229
                                        #   in Loop: Header=BB49_95 Depth=1
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB49_97
# BB#92:                                # %for.cond.222
                                        #   in Loop: Header=BB49_95 Depth=1
	incl	%r14d
	cmpl	48(%rsp), %r14d         # 4-byte Folded Reload
	jl	.LBB49_95
# BB#93:
	movl	$1, %ebp
	jmp	.LBB49_97
.LBB49_83:
	movl	$1, %ebp
	jmp	.LBB49_97
.LBB49_81:
	movl	$1, %ebp
.LBB49_97:                              # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Type_LUT16_Write, .Lfunc_end49-Type_LUT16_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUT16_Dup,@function
Type_LUT16_Dup:                         # @Type_LUT16_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineDup          # TAILCALL
.Lfunc_end50:
	.size	Type_LUT16_Dup, .Lfunc_end50-Type_LUT16_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUT16_Free,@function
Type_LUT16_Free:                        # @Type_LUT16_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineFree         # TAILCALL
.Lfunc_end51:
	.size	Type_LUT16_Free, .Lfunc_end51-Type_LUT16_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantTable_Read,@function
Type_ColorantTable_Read:                # @Type_ColorantTable_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp279:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp280:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp281:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp282:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp283:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp284:
	.cfi_def_cfa_offset 112
.Ltmp285:
	.cfi_offset %rbx, -56
.Ltmp286:
	.cfi_offset %r12, -48
.Ltmp287:
	.cfi_offset %r13, -40
.Ltmp288:
	.cfi_offset %r14, -32
.Ltmp289:
	.cfi_offset %r15, -24
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	52(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB52_10
# BB#1:                                 # %if.end
	movl	52(%rsp), %r9d
	movq	40(%r12), %rdi
	cmpl	$17, %r9d
	jb	.LBB52_3
# BB#2:                                 # %if.then.1
	xorl	%r15d, %r15d
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%eax, %eax
	movl	%r9d, %ecx
	callq	cmsSignalError
	jmp	.LBB52_10
.LBB52_3:                               # %if.end.2
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movl	$.L.str.1, %ecx
	movl	$.L.str.1, %r8d
	movl	%r9d, %esi
	callq	cmsAllocNamedColorList
	movq	%rax, %r15
	cmpl	$0, 52(%rsp)
	je	.LBB52_11
# BB#4:                                 # %for.body.lr.ph
	leaq	16(%rsp), %r12
	leaq	10(%rsp), %r13
	.align	16, 0x90
.LBB52_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*280(%rbx)
	cmpl	$1, %eax
	jne	.LBB52_9
# BB#7:                                 # %if.end.9
                                        #   in Loop: Header=BB52_6 Depth=1
	movb	$0, 49(%rsp)
	movl	$3, %esi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB52_9
# BB#8:                                 # %if.end.14
                                        #   in Loop: Header=BB52_6 Depth=1
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	cmsAppendNamedColor
	testl	%eax, %eax
	je	.LBB52_9
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB52_6 Depth=1
	incl	%ebp
	cmpl	52(%rsp), %ebp
	jb	.LBB52_6
.LBB52_11:                              # %for.end
	movl	$1, (%r14)
	jmp	.LBB52_10
.LBB52_9:                               # %Error
	movl	$0, (%r14)
	movq	%r15, %rdi
	callq	cmsFreeNamedColorList
	xorl	%r15d, %r15d
.LBB52_10:                              # %cleanup
	movq	%r15, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Type_ColorantTable_Read, .Lfunc_end52-Type_ColorantTable_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantTable_Write,@function
Type_ColorantTable_Write:               # @Type_ColorantTable_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp292:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp293:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp294:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp295:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp296:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp297:
	.cfi_def_cfa_offset 112
.Ltmp298:
	.cfi_offset %rbx, -56
.Ltmp299:
	.cfi_offset %r12, -48
.Ltmp300:
	.cfi_offset %r13, -40
.Ltmp301:
	.cfi_offset %r14, -32
.Ltmp302:
	.cfi_offset %r15, -24
.Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%r14, %rdi
	callq	cmsNamedColorCount
	movl	%eax, %r15d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	_cmsWriteUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB53_10
# BB#1:                                 # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB53_2
# BB#5:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	16(%rsp), %r12
	leaq	10(%rsp), %r13
	.align	16, 0x90
.LBB53_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	movq	%r13, %r9
	callq	cmsNamedColorInfo
	testl	%eax, %eax
	je	.LBB53_9
# BB#7:                                 # %if.end.6
                                        #   in Loop: Header=BB53_6 Depth=1
	movb	$0, 48(%rsp)
	movl	$32, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*312(%rbx)
	testl	%eax, %eax
	je	.LBB53_9
# BB#8:                                 # %if.end.11
                                        #   in Loop: Header=BB53_6 Depth=1
	movl	$3, %esi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	_cmsWriteUInt16Array
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB53_10
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB53_6 Depth=1
	incl	%ebp
	cmpl	%r15d, %ebp
	jl	.LBB53_6
# BB#4:
	movl	$1, %eax
	jmp	.LBB53_10
.LBB53_2:
	movl	$1, %eax
	jmp	.LBB53_10
.LBB53_9:                               # %cleanup.18.critedge11
	xorl	%eax, %eax
.LBB53_10:                              # %cleanup.18
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Type_ColorantTable_Write, .Lfunc_end53-Type_ColorantTable_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantTable_Dup,@function
Type_ColorantTable_Dup:                 # @Type_ColorantTable_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDupNamedColorList    # TAILCALL
.Lfunc_end54:
	.size	Type_ColorantTable_Dup, .Lfunc_end54-Type_ColorantTable_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ColorantTable_Free,@function
Type_ColorantTable_Free:                # @Type_ColorantTable_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsFreeNamedColorList   # TAILCALL
.Lfunc_end55:
	.size	Type_ColorantTable_Free, .Lfunc_end55-Type_ColorantTable_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_NamedColor_Read,@function
Type_NamedColor_Read:                   # @Type_NamedColor_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp305:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp306:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp307:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp308:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp309:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp310:
	.cfi_def_cfa_offset 240
.Ltmp311:
	.cfi_offset %rbx, -56
.Ltmp312:
	.cfi_offset %r12, -48
.Ltmp313:
	.cfi_offset %r13, -40
.Ltmp314:
	.cfi_offset %r14, -32
.Ltmp315:
	.cfi_offset %r15, -24
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$0, (%r14)
	leaq	180(%rsp), %rsi
	movq	%r15, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB56_19
# BB#1:                                 # %if.end
	leaq	176(%rsp), %rsi
	movq	%r15, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB56_19
# BB#2:                                 # %if.end.4
	leaq	172(%rsp), %rsi
	movq	%r15, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB56_19
# BB#3:                                 # %if.end.8
	leaq	128(%rsp), %rsi
	movl	$32, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	*280(%r15)
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	jne	.LBB56_19
# BB#4:                                 # %if.end.11
	leaq	96(%rsp), %rsi
	movl	$32, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	*280(%r15)
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	jne	.LBB56_19
# BB#5:                                 # %if.end.17
	movb	$0, 127(%rsp)
	movb	$0, 159(%rsp)
	movq	40(%r12), %rdi
	movl	176(%rsp), %esi
	movl	172(%rsp), %edx
	leaq	128(%rsp), %rcx
	leaq	96(%rsp), %r8
	callq	cmsAllocNamedColorList
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB56_6
# BB#7:                                 # %if.end.25
	movl	172(%rsp), %ecx
	cmpl	$16, %ecx
	jbe	.LBB56_8
# BB#10:                                # %if.then.27
	movq	40(%r12), %rdi
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.15, %edx
	jmp	.LBB56_11
.LBB56_6:                               # %if.then.23
	movq	40(%r12), %rdi
	movl	176(%rsp), %ecx
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.14, %edx
.LBB56_11:                              # %cleanup.58
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB56_19
.LBB56_8:                               # %for.cond.preheader
	cmpl	$0, 176(%rsp)
	je	.LBB56_20
# BB#9:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	leaq	48(%rsp), %r12
	leaq	90(%rsp), %rbp
.LBB56_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	memset
	movl	$32, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	leaq	(%rsp), %rsi
	callq	*280(%r15)
	cmpl	$1, %eax
	jne	.LBB56_18
# BB#14:                                # %if.end.38
                                        #   in Loop: Header=BB56_13 Depth=1
	movl	$3, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB56_17
# BB#15:                                # %if.end.43
                                        #   in Loop: Header=BB56_13 Depth=1
	movl	172(%rsp), %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB56_17
# BB#16:                                # %cleanup
                                        #   in Loop: Header=BB56_13 Depth=1
	movq	%rbx, %rdi
	leaq	(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	cmsAppendNamedColor
	testl	%eax, %eax
	je	.LBB56_17
# BB#12:                                # %for.cond
                                        #   in Loop: Header=BB56_13 Depth=1
	incl	%r13d
	cmpl	176(%rsp), %r13d
	jb	.LBB56_13
.LBB56_20:                              # %for.end
	movl	$1, (%r14)
	jmp	.LBB56_19
.LBB56_17:                              # %Error
	movq	%rbx, %rdi
	callq	cmsFreeNamedColorList
.LBB56_18:                              # %cleanup.58
	xorl	%ebx, %ebx
.LBB56_19:                              # %cleanup.58
	movq	%rbx, %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	Type_NamedColor_Read, .Lfunc_end56-Type_NamedColor_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_NamedColor_Write,@function
Type_NamedColor_Write:                  # @Type_NamedColor_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp317:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp318:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp319:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp320:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp321:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp322:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp323:
	.cfi_def_cfa_offset 256
.Ltmp324:
	.cfi_offset %rbx, -56
.Ltmp325:
	.cfi_offset %r12, -48
.Ltmp326:
	.cfi_offset %r13, -40
.Ltmp327:
	.cfi_offset %r14, -32
.Ltmp328:
	.cfi_offset %r15, -24
.Ltmp329:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rbp, %rdi
	callq	cmsNamedColorCount
	movl	%eax, %r15d
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB57_15
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB57_15
# BB#2:                                 # %if.end.5
	movl	8(%rbp), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB57_15
# BB#3:                                 # %if.end.9
	leaq	12(%rbp), %rsi
	leaq	160(%rsp), %r14
	movl	$32, %edx
	movq	%r14, %rdi
	callq	strncpy
	leaq	45(%rbp), %rsi
	leaq	128(%rsp), %rdi
	movl	$32, %edx
	callq	strncpy
	movb	$0, 191(%rsp)
	movb	$0, 159(%rsp)
	movl	$32, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*312(%rbx)
	testl	%eax, %eax
	je	.LBB57_15
# BB#4:                                 # %if.end.20
	leaq	128(%rsp), %rdx
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	*312(%rbx)
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB57_15
# BB#5:                                 # %for.cond.preheader
	movl	%r15d, %ebx
	testl	%ebx, %ebx
	jle	.LBB57_6
# BB#9:                                 # %for.body.lr.ph
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	leaq	80(%rsp), %r12
	leaq	32(%rsp), %r13
	leaq	122(%rsp), %r14
	.align	16, 0x90
.LBB57_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	movq	%r14, %r9
	callq	cmsNamedColorInfo
	testl	%eax, %eax
	je	.LBB57_14
# BB#11:                                # %if.end.33
                                        #   in Loop: Header=BB57_10 Depth=1
	movl	$32, %esi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	*312(%rbx)
	testl	%eax, %eax
	je	.LBB57_14
# BB#12:                                # %if.end.39
                                        #   in Loop: Header=BB57_10 Depth=1
	movl	$3, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_cmsWriteUInt16Array
	testl	%eax, %eax
	je	.LBB57_14
# BB#13:                                # %if.end.44
                                        #   in Loop: Header=BB57_10 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rbx
	movl	8(%rbp), %esi
	movq	%r12, %rdx
	callq	_cmsWriteUInt16Array
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB57_15
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB57_10 Depth=1
	incl	%r15d
	cmpl	20(%rsp), %r15d         # 4-byte Folded Reload
	movq	%rbx, %r13
	jl	.LBB57_10
# BB#8:
	movl	$1, %r13d
	jmp	.LBB57_15
.LBB57_14:                              # %cleanup.53.critedge23
	xorl	%r13d, %r13d
	jmp	.LBB57_15
.LBB57_6:
	movl	$1, %r13d
.LBB57_15:                              # %cleanup.53
	movl	%r13d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Type_NamedColor_Write, .Lfunc_end57-Type_NamedColor_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_NamedColor_Dup,@function
Type_NamedColor_Dup:                    # @Type_NamedColor_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDupNamedColorList    # TAILCALL
.Lfunc_end58:
	.size	Type_NamedColor_Dup, .Lfunc_end58-Type_NamedColor_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_NamedColor_Free,@function
Type_NamedColor_Free:                   # @Type_NamedColor_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsFreeNamedColorList   # TAILCALL
.Lfunc_end59:
	.size	Type_NamedColor_Free, .Lfunc_end59-Type_NamedColor_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MLU_Read,@function
Type_MLU_Read:                          # @Type_MLU_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp331:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp332:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp333:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp334:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp335:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp336:
	.cfi_def_cfa_offset 96
.Ltmp337:
	.cfi_offset %rbx, -56
.Ltmp338:
	.cfi_offset %r12, -48
.Ltmp339:
	.cfi_offset %r13, -40
.Ltmp340:
	.cfi_offset %r14, -32
.Ltmp341:
	.cfi_offset %r15, -24
.Ltmp342:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$0, (%r14)
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB60_23
# BB#1:                                 # %if.end
	leaq	28(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB60_23
# BB#2:                                 # %if.end.4
	cmpl	$12, 28(%rsp)
	movq	40(%r12), %rdi
	jne	.LBB60_3
# BB#4:                                 # %if.end.6
	movl	32(%rsp), %esi
	callq	cmsMLUalloc
	movq	%rax, %r15
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB60_23
# BB#5:                                 # %if.end.11
	movl	32(%rsp), %eax
	movl	%eax, 12(%r15)
	movl	32(%rsp), %ecx
	leal	(,%rcx,4), %eax
	testl	%ecx, %ecx
	movl	$0, %ecx
	je	.LBB60_21
# BB#6:                                 # %for.body.lr.ph
	movq	%r12, (%rsp)            # 8-byte Spill
	leal	(%rax,%rax,2), %eax
	movl	$-16, %ecx
	subl	%eax, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	addl	$16, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	16(%r15), %rax
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB60_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	leaq	(%rbp,%rbp,2), %r12
	leaq	(%rax,%r12,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB60_22
# BB#8:                                 # %if.end.18
                                        #   in Loop: Header=BB60_7 Depth=1
	movq	16(%r15), %rax
	leaq	2(%rax,%r12,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB60_22
# BB#9:                                 # %if.end.25
                                        #   in Loop: Header=BB60_7 Depth=1
	movq	%rbx, %rdi
	leaq	24(%rsp), %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB60_22
# BB#10:                                # %if.end.29
                                        #   in Loop: Header=BB60_7 Depth=1
	movq	%rbx, %rdi
	leaq	20(%rsp), %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB60_22
# BB#11:                                # %if.end.33
                                        #   in Loop: Header=BB60_7 Depth=1
	movl	20(%rsp), %eax
	cmpl	16(%rsp), %eax          # 4-byte Folded Reload
	jb	.LBB60_22
# BB#12:                                # %if.end.38
                                        #   in Loop: Header=BB60_7 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	leal	(%rax,%rcx), %ecx
	movl	24(%rsp), %edx
	addl	%edx, %edx
	movq	16(%r15), %rax
	movl	%edx, 8(%rax,%r12,4)
	leal	(%rcx,%rcx), %edx
	movl	%edx, 4(%rax,%r12,4)
	addl	24(%rsp), %ecx
	cmpl	%r13d, %ecx
	cmoval	%ecx, %r13d
	incl	%ebp
	cmpl	32(%rsp), %ebp
	jb	.LBB60_7
# BB#13:                                # %for.end
	xorl	%ebp, %ebp
	movl	%r13d, %r12d
	addl	%r12d, %r12d
	movl	$0, %ecx
	movq	(%rsp), %rax            # 8-byte Reload
	je	.LBB60_21
# BB#14:                                # %if.else
	movq	40(%rax), %rdi
	movl	%r12d, %esi
	callq	_cmsMalloc
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB60_22
# BB#15:                                # %if.end.71
	movl	%r12d, 16(%rsp)         # 4-byte Spill
	testq	%rbx, %rbx
	je	.LBB60_24
# BB#16:                                # %for.cond.preheader.i
	shrl	%r13d
	andl	$1073741823, %r13d      # imm = 0x3FFFFFFF
	je	.LBB60_20
# BB#17:                                # %for.body.lr.ph.i
	movl	%r13d, %r13d
	xorl	%ebp, %ebp
.LBB60_18:                              # %if.then.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r12
	movq	%rbx, %rdi
	leaq	38(%rsp), %rsi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB60_22
# BB#19:                                # %for.inc.i
                                        #   in Loop: Header=BB60_18 Depth=1
	movzwl	38(%rsp), %eax
	movq	%r12, %rcx
	movl	%eax, (%rcx,%rbp,4)
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB60_18
.LBB60_20:                              # %_cmsReadWCharArray.exit.thread46
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebp
.LBB60_21:                              # %if.end.79
	movq	%rcx, 32(%r15)
	movl	%ebp, 24(%r15)
	movl	%ebp, 28(%r15)
	movl	$1, (%r14)
	movq	%r15, %rbp
	jmp	.LBB60_23
.LBB60_3:                               # %if.then.5
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.16, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB60_23
.LBB60_22:                              # %if.then.81
	movq	%r15, %rdi
	callq	cmsMLUfree
	xorl	%ebp, %ebp
.LBB60_23:                              # %cleanup
	movq	%rbp, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB60_24:                              # %cond.false.i
	movl	$.L.str.3, %edi
	movl	$.L.str.4, %esi
	movl	$139, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadWCharArray, %ecx
	callq	__assert_fail
.Lfunc_end60:
	.size	Type_MLU_Read, .Lfunc_end60-Type_MLU_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MLU_Write,@function
Type_MLU_Write:                         # @Type_MLU_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp343:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp344:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp345:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp346:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp347:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp348:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp349:
	.cfi_def_cfa_offset 64
.Ltmp350:
	.cfi_offset %rbx, -56
.Ltmp351:
	.cfi_offset %r12, -48
.Ltmp352:
	.cfi_offset %r13, -40
.Ltmp353:
	.cfi_offset %r14, -32
.Ltmp354:
	.cfi_offset %r15, -24
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r15
	testq	%r13, %r13
	je	.LBB61_1
# BB#3:                                 # %if.end.6
	movl	12(%r13), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB61_21
# BB#4:                                 # %if.end.10
	movl	$12, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB61_21
# BB#5:                                 # %if.end.14
	movl	12(%r13), %eax
	testl	%eax, %eax
	jle	.LBB61_12
# BB#6:                                 # %for.body.lr.ph
	leal	(%rax,%rax,2), %eax
	leal	16(,%rax,4), %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB61_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rax
	movl	4(%rax,%rbx), %r14d
	movl	8(%rax,%rbx), %ebp
	movzwl	(%rax,%rbx), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB61_20
# BB#9:                                 # %if.end.40
                                        #   in Loop: Header=BB61_8 Depth=1
	movq	16(%r13), %rax
	movzwl	2(%rax,%rbx), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB61_20
# BB#10:                                # %if.end.47
                                        #   in Loop: Header=BB61_8 Depth=1
	shrl	%ebp
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB61_20
# BB#11:                                # %if.end.51
                                        #   in Loop: Header=BB61_8 Depth=1
	shrl	%r14d
	movq	(%rsp), %rax            # 8-byte Reload
	leal	(%r14,%rax), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB61_20
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB61_8 Depth=1
	incq	%r12
	movslq	12(%r13), %rax
	addq	$12, %rbx
	cmpq	%rax, %r12
	jl	.LBB61_8
.LBB61_12:                              # %for.end
	testq	%r15, %r15
	je	.LBB61_22
# BB#13:                                # %cond.end.i
	movl	28(%r13), %eax
	shrl	$2, %eax
	movq	32(%r13), %r14
	je	.LBB61_15
# BB#14:                                # %cond.end.i
	testq	%r14, %r14
	je	.LBB61_17
.LBB61_15:                              # %for.cond.preheader.i
	movl	$1, %r12d
	testl	%eax, %eax
	je	.LBB61_21
# BB#16:                                # %for.body.lr.ph.i
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB61_19:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14,%rbx,4), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB61_20
# BB#18:                                # %for.cond.i
                                        #   in Loop: Header=BB61_19 Depth=1
	incq	%rbx
	cmpq	%rbp, %rbx
	jb	.LBB61_19
	jmp	.LBB61_21
.LBB61_1:                               # %if.then
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB61_21
# BB#2:                                 # %if.end
	movl	$12, %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r12d
	jmp	.LBB61_21
.LBB61_20:
	xorl	%r12d, %r12d
.LBB61_21:                              # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_22:                              # %cond.false.i
	movl	$.L.str.3, %edi
	movl	$.L.str.4, %esi
	movl	$122, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsWriteWCharArray, %ecx
	callq	__assert_fail
.LBB61_17:                              # %cond.false.4.i
	movl	$.L.str.5, %edi
	movl	$.L.str.4, %esi
	movl	$123, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsWriteWCharArray, %ecx
	callq	__assert_fail
.Lfunc_end61:
	.size	Type_MLU_Write, .Lfunc_end61-Type_MLU_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MLU_Dup,@function
Type_MLU_Dup:                           # @Type_MLU_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUdup               # TAILCALL
.Lfunc_end62:
	.size	Type_MLU_Dup, .Lfunc_end62-Type_MLU_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MLU_Free,@function
Type_MLU_Free:                          # @Type_MLU_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUfree              # TAILCALL
.Lfunc_end63:
	.size	Type_MLU_Free, .Lfunc_end63-Type_MLU_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceDesc_Read,@function
Type_ProfileSequenceDesc_Read:          # @Type_ProfileSequenceDesc_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp356:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp357:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp358:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp359:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp360:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp361:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp362:
	.cfi_def_cfa_offset 96
.Ltmp363:
	.cfi_offset %rbx, -56
.Ltmp364:
	.cfi_offset %r12, -48
.Ltmp365:
	.cfi_offset %r13, -40
.Ltmp366:
	.cfi_offset %r14, -32
.Ltmp367:
	.cfi_offset %r15, -24
.Ltmp368:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rdx, %rbp
	movq	%rsi, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	$0, (%rbp)
	leaq	36(%rsp), %rsi
	movq	%rax, %rdi
	callq	_cmsReadUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$4, %ebx
	jb	.LBB64_17
# BB#1:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB64_17
# BB#2:                                 # %if.end.3
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movl	36(%rsp), %esi
	callq	cmsAllocProfileSequenceDescription
	movq	%rax, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB64_17
# BB#3:                                 # %if.end.10
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	36(%rsp), %eax
	movl	%eax, (%rcx)
	cmpl	$0, 36(%rsp)
	je	.LBB64_18
# BB#4:                                 # %for.body.lr.ph
	addl	$-24, %ebx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB64_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	20(%rbx), %r15d
	movl	%r13d, %r13d
	movq	16(%rcx), %r14
	movq	%r13, %rbp
	shlq	$6, %rbp
	leaq	(%r14,%rbp), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	_cmsReadUInt32Number
	cmpl	$4, %r15d
	jb	.LBB64_16
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB64_6 Depth=1
	testl	%eax, %eax
	je	.LBB64_16
# BB#8:                                 # %if.end.21
                                        #   in Loop: Header=BB64_6 Depth=1
	leaq	4(%r14,%rbp), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	_cmsReadUInt32Number
	movl	%r15d, %r12d
	andl	$-4, %r12d
	cmpl	$4, %r12d
	je	.LBB64_16
# BB#9:                                 # %if.end.21
                                        #   in Loop: Header=BB64_6 Depth=1
	testl	%eax, %eax
	je	.LBB64_16
# BB#10:                                # %if.end.33
                                        #   in Loop: Header=BB64_6 Depth=1
	leaq	8(%r14,%rbp), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	_cmsReadUInt64Number
	andl	$-8, %r15d
	cmpl	$8, %r15d
	je	.LBB64_16
# BB#11:                                # %if.end.33
                                        #   in Loop: Header=BB64_6 Depth=1
	testl	%eax, %eax
	je	.LBB64_16
# BB#12:                                # %if.end.45
                                        #   in Loop: Header=BB64_6 Depth=1
	leaq	16(%r14,%rbp), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	_cmsReadUInt32Number
	cmpl	$16, %r12d
	je	.LBB64_16
# BB#13:                                # %if.end.45
                                        #   in Loop: Header=BB64_6 Depth=1
	testl	%eax, %eax
	je	.LBB64_16
# BB#14:                                # %if.end.57
                                        #   in Loop: Header=BB64_6 Depth=1
	leaq	40(%r14,%rbp), %rdx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %ecx
	callq	ReadEmbeddedText
	testl	%eax, %eax
	je	.LBB64_16
# BB#15:                                # %cleanup
                                        #   in Loop: Header=BB64_6 Depth=1
	leaq	48(%r14,%rbp), %rdx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %ecx
	callq	ReadEmbeddedText
	testl	%eax, %eax
	je	.LBB64_16
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB64_6 Depth=1
	incl	%r13d
	addl	$-20, %ebx
	cmpl	36(%rsp), %r13d
	movq	8(%rsp), %rcx           # 8-byte Reload
	jb	.LBB64_6
.LBB64_18:                              # %for.end
	movq	(%rsp), %rax            # 8-byte Reload
	movl	$1, (%rax)
	movq	%rcx, %rax
	jmp	.LBB64_17
.LBB64_16:                              # %Error
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	cmsFreeProfileSequenceDescription
	xorl	%eax, %eax
.LBB64_17:                              # %cleanup.69
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Type_ProfileSequenceDesc_Read, .Lfunc_end64-Type_ProfileSequenceDesc_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceDesc_Write,@function
Type_ProfileSequenceDesc_Write:         # @Type_ProfileSequenceDesc_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp370:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp371:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp372:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp373:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp374:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp375:
	.cfi_def_cfa_offset 64
.Ltmp376:
	.cfi_offset %rbx, -56
.Ltmp377:
	.cfi_offset %r12, -48
.Ltmp378:
	.cfi_offset %r13, -40
.Ltmp379:
	.cfi_offset %r14, -32
.Ltmp380:
	.cfi_offset %r15, -24
.Ltmp381:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	(%rbx), %esi
	movq	%r13, %rdi
	callq	_cmsWriteUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB65_21
# BB#1:                                 # %for.cond.preheader
	movl	$1, %eax
	cmpl	$0, (%rbx)
	je	.LBB65_21
# BB#2:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
.LBB65_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %r14d
	movq	16(%rbx), %rbp
	movq	%r14, %rbx
	shlq	$6, %rbx
	movl	(%rbp,%rbx), %esi
	movq	%r13, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB65_20
# BB#5:                                 # %if.end.5
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	4(%rbp,%rbx), %esi
	movq	%r13, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB65_20
# BB#6:                                 # %if.end.9
                                        #   in Loop: Header=BB65_4 Depth=1
	leaq	8(%rbp,%rbx), %rsi
	movq	%r13, %rdi
	callq	_cmsWriteUInt64Number
	testl	%eax, %eax
	je	.LBB65_20
# BB#7:                                 # %if.end.13
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	16(%rbp,%rbx), %esi
	movq	%r13, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB65_20
# BB#8:                                 # %if.end.17
                                        #   in Loop: Header=BB65_4 Depth=1
	movq	40(%rbp,%rbx), %r12
	cmpl	$67108863, 48(%r15)     # imm = 0x3FFFFFF
	ja	.LBB65_11
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1684370275, %esi       # imm = 0x64657363
	movq	%r13, %rdi
	callq	_cmsWriteTypeBase
	testl	%eax, %eax
	je	.LBB65_20
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Type_Text_Description_Write
	jmp	.LBB65_13
	.align	16, 0x90
.LBB65_11:                              # %if.else.i
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1835824483, %esi       # imm = 0x6D6C7563
	movq	%r13, %rdi
	callq	_cmsWriteTypeBase
	testl	%eax, %eax
	je	.LBB65_20
# BB#12:                                # %if.end.6.i
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Type_MLU_Write
.LBB65_13:                              # %SaveDescription.exit
                                        #   in Loop: Header=BB65_4 Depth=1
	testl	%eax, %eax
	je	.LBB65_20
# BB#14:                                # %if.end.21
                                        #   in Loop: Header=BB65_4 Depth=1
	movq	48(%rbp,%rbx), %r12
	cmpl	$67108863, 48(%r15)     # imm = 0x3FFFFFF
	ja	.LBB65_17
# BB#15:                                # %if.then.i.28
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1684370275, %esi       # imm = 0x64657363
	movq	%r13, %rdi
	callq	_cmsWriteTypeBase
	testl	%eax, %eax
	je	.LBB65_20
# BB#16:                                # %if.end.i.30
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Type_Text_Description_Write
	jmp	.LBB65_19
	.align	16, 0x90
.LBB65_17:                              # %if.else.i.33
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1835824483, %esi       # imm = 0x6D6C7563
	movq	%r13, %rdi
	callq	_cmsWriteTypeBase
	testl	%eax, %eax
	je	.LBB65_20
# BB#18:                                # %if.end.6.i.35
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Type_MLU_Write
.LBB65_19:                              # %SaveDescription.exit37
                                        #   in Loop: Header=BB65_4 Depth=1
	testl	%eax, %eax
	movq	(%rsp), %rbx            # 8-byte Reload
	je	.LBB65_20
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB65_4 Depth=1
	incl	%r14d
	movl	$1, %eax
	cmpl	(%rbx), %r14d
	jb	.LBB65_4
	jmp	.LBB65_21
.LBB65_20:
	xorl	%eax, %eax
.LBB65_21:                              # %cleanup.26
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	Type_ProfileSequenceDesc_Write, .Lfunc_end65-Type_ProfileSequenceDesc_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceDesc_Dup,@function
Type_ProfileSequenceDesc_Dup:           # @Type_ProfileSequenceDesc_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDupProfileSequenceDescription # TAILCALL
.Lfunc_end66:
	.size	Type_ProfileSequenceDesc_Dup, .Lfunc_end66-Type_ProfileSequenceDesc_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceDesc_Free,@function
Type_ProfileSequenceDesc_Free:          # @Type_ProfileSequenceDesc_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsFreeProfileSequenceDescription # TAILCALL
.Lfunc_end67:
	.size	Type_ProfileSequenceDesc_Free, .Lfunc_end67-Type_ProfileSequenceDesc_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Signature_Read,@function
Type_Signature_Read:                    # @Type_Signature_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp382:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp383:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp384:
	.cfi_def_cfa_offset 32
.Ltmp385:
	.cfi_offset %rbx, -32
.Ltmp386:
	.cfi_offset %r14, -24
.Ltmp387:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	40(%rdi), %rdi
	movl	$4, %esi
	callq	_cmsMalloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB68_3
# BB#1:                                 # %if.end
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_cmsReadUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB68_3
# BB#2:                                 # %if.end.3
	movl	$1, (%r14)
	movq	%rbx, %rax
.LBB68_3:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end68:
	.size	Type_Signature_Read, .Lfunc_end68-Type_Signature_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Signature_Write,@function
Type_Signature_Write:                   # @Type_Signature_Write
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdx), %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	jmp	_cmsWriteUInt32Number   # TAILCALL
.Lfunc_end69:
	.size	Type_Signature_Write, .Lfunc_end69-Type_Signature_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Signature_Dup,@function
Type_Signature_Dup:                     # @Type_Signature_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	shll	$2, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end70:
	.size	Type_Signature_Dup, .Lfunc_end70-Type_Signature_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Signature_Free,@function
Type_Signature_Free:                    # @Type_Signature_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end71:
	.size	Type_Signature_Free, .Lfunc_end71-Type_Signature_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Measurement_Read,@function
Type_Measurement_Read:                  # @Type_Measurement_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp388:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp389:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp390:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp391:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp392:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp393:
	.cfi_def_cfa_offset 112
.Ltmp394:
	.cfi_offset %rbx, -48
.Ltmp395:
	.cfi_offset %r12, -40
.Ltmp396:
	.cfi_offset %r13, -32
.Ltmp397:
	.cfi_offset %r14, -24
.Ltmp398:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	8(%rsp), %r13
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%r13, %rdi
	callq	memset
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB72_6
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadXYZNumber
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB72_6
# BB#2:                                 # %if.end.5
	leaq	40(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB72_6
# BB#3:                                 # %if.end.9
	leaq	48(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB72_6
# BB#4:                                 # %if.end.13
	leaq	56(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB72_6
# BB#5:                                 # %if.end.17
	movl	$1, (%r14)
	movq	40(%r15), %rdi
	leaq	8(%rsp), %rsi
	movl	$56, %edx
	callq	_cmsDupMem
	movq	%rax, %rbx
.LBB72_6:                               # %cleanup
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end72:
	.size	Type_Measurement_Read, .Lfunc_end72-Type_Measurement_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Measurement_Write,@function
Type_Measurement_Write:                 # @Type_Measurement_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp400:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp401:
	.cfi_def_cfa_offset 32
.Ltmp402:
	.cfi_offset %rbx, -32
.Ltmp403:
	.cfi_offset %r14, -24
.Ltmp404:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movl	(%rbp), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB73_5
# BB#1:                                 # %if.end
	leaq	8(%rbp), %rsi
	movq	%rbx, %rdi
	callq	_cmsWriteXYZNumber
	testl	%eax, %eax
	je	.LBB73_5
# BB#2:                                 # %if.end.4
	movl	32(%rbp), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB73_5
# BB#3:                                 # %if.end.8
	movsd	40(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB73_5
# BB#4:                                 # %if.end.12
	movl	48(%rbp), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r14d
.LBB73_5:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Type_Measurement_Write, .Lfunc_end73-Type_Measurement_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Measurement_Dup,@function
Type_Measurement_Dup:                   # @Type_Measurement_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$56, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end74:
	.size	Type_Measurement_Dup, .Lfunc_end74-Type_Measurement_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Measurement_Free,@function
Type_Measurement_Free:                  # @Type_Measurement_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end75:
	.size	Type_Measurement_Free, .Lfunc_end75-Type_Measurement_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Data_Read,@function
Type_Data_Read:                         # @Type_Data_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp406:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp407:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp408:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp409:
	.cfi_def_cfa_offset 48
.Ltmp410:
	.cfi_offset %rbx, -48
.Ltmp411:
	.cfi_offset %r12, -40
.Ltmp412:
	.cfi_offset %r14, -32
.Ltmp413:
	.cfi_offset %r15, -24
.Ltmp414:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$0, (%rbx)
	xorl	%eax, %eax
	cmpl	$4, %ecx
	jb	.LBB76_7
# BB#1:                                 # %if.end
	xorl	%eax, %eax
	movl	%ecx, %ebp
	addl	$-4, %ebp
	js	.LBB76_7
# BB#2:                                 # %if.end.7
	movq	40(%r14), %rdi
	addl	$7, %ecx
	movl	%ecx, %esi
	callq	_cmsMalloc
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB76_7
# BB#3:                                 # %if.end.14
	movl	%ebp, (%r12)
	leaq	4(%r12), %rsi
	movq	%r15, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB76_4
# BB#5:                                 # %if.end.18
	movq	%r12, %rsi
	addq	$8, %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%ebp, %ecx
	callq	*280(%r15)
	cmpl	%ebp, %eax
	jne	.LBB76_4
# BB#6:                                 # %if.end.24
	movl	$1, (%rbx)
	movq	%r12, %rax
	jmp	.LBB76_7
.LBB76_4:                               # %if.then.16
	movq	40(%r14), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB76_7:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Type_Data_Read, .Lfunc_end76-Type_Data_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Data_Write,@function
Type_Data_Write:                        # @Type_Data_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp415:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp416:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp417:
	.cfi_def_cfa_offset 32
.Ltmp418:
	.cfi_offset %rbx, -24
.Ltmp419:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	4(%rbx), %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB77_1
# BB#2:                                 # %if.end
	movq	312(%r14), %rax
	movl	(%rbx), %esi
	addq	$8, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB77_1:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end77:
	.size	Type_Data_Write, .Lfunc_end77-Type_Data_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Data_Dup,@function
Type_Data_Dup:                          # @Type_Data_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	(%rsi), %edx
	addl	$11, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end78:
	.size	Type_Data_Dup, .Lfunc_end78-Type_Data_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Data_Free,@function
Type_Data_Free:                         # @Type_Data_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end79:
	.size	Type_Data_Free, .Lfunc_end79-Type_Data_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTA2B_Read,@function
Type_LUTA2B_Read:                       # @Type_LUTA2B_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp421:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp422:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp423:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp424:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp425:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp426:
	.cfi_def_cfa_offset 80
.Ltmp427:
	.cfi_offset %rbx, -56
.Ltmp428:
	.cfi_offset %r12, -48
.Ltmp429:
	.cfi_offset %r13, -40
.Ltmp430:
	.cfi_offset %r14, -32
.Ltmp431:
	.cfi_offset %r15, -24
.Ltmp432:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r13d
	leaq	23(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#1:                                 # %if.end
	leaq	22(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#2:                                 # %if.end.6
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB80_21
# BB#3:                                 # %if.end.10
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#4:                                 # %if.end.14
	leaq	12(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#5:                                 # %if.end.18
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#6:                                 # %if.end.22
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#7:                                 # %if.end.26
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB80_21
# BB#8:                                 # %if.end.30
	movq	40(%r15), %rdi
	movzbl	23(%rsp), %esi
	movzbl	22(%rsp), %edx
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB80_21
# BB#9:                                 # %if.end.36
	addl	$-8, %r13d
	movl	(%rsp), %edx
	testl	%edx, %edx
	je	.LBB80_11
# BB#10:                                # %if.then.39
	addl	%r13d, %edx
	movzbl	23(%rsp), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadSetOfCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB80_20
.LBB80_11:                              # %if.end.46
	movl	4(%rsp), %edx
	testl	%edx, %edx
	je	.LBB80_13
# BB#12:                                # %if.then.49
	addl	%r13d, %edx
	movzbl	23(%rsp), %ecx
	movzbl	22(%rsp), %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadCLUT
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB80_20
.LBB80_13:                              # %if.end.58
	movl	8(%rsp), %edx
	testl	%edx, %edx
	je	.LBB80_15
# BB#14:                                # %if.then.61
	addl	%r13d, %edx
	movzbl	22(%rsp), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadSetOfCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB80_20
.LBB80_15:                              # %if.end.69
	movl	12(%rsp), %edx
	testl	%edx, %edx
	je	.LBB80_17
# BB#16:                                # %if.then.72
	addl	%r13d, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadMatrix
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB80_20
.LBB80_17:                              # %if.end.79
	movl	16(%rsp), %edx
	testl	%edx, %edx
	je	.LBB80_19
# BB#18:                                # %if.then.82
	addl	%r13d, %edx
	movzbl	22(%rsp), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadSetOfCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB80_20
.LBB80_19:                              # %if.end.90
	movl	$1, (%r14)
	movq	%r12, %rbp
	jmp	.LBB80_21
.LBB80_20:                              # %Error
	movq	%r12, %rdi
	callq	cmsPipelineFree
	xorl	%ebp, %ebp
.LBB80_21:                              # %cleanup
	movq	%rbp, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end80:
	.size	Type_LUTA2B_Read, .Lfunc_end80-Type_LUTA2B_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTA2B_Write,@function
Type_LUTA2B_Write:                      # @Type_LUTA2B_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp433:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp434:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp435:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp436:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp437:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp438:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp439:
	.cfi_def_cfa_offset 176
.Ltmp440:
	.cfi_offset %rbx, -56
.Ltmp441:
	.cfi_offset %r12, -48
.Ltmp442:
	.cfi_offset %r13, -40
.Ltmp443:
	.cfi_offset %r14, -32
.Ltmp444:
	.cfi_offset %r15, -24
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, 76(%rsp)          # 4-byte Spill
	cmpq	$0, (%r15)
	je	.LBB81_6
# BB#1:                                 # %if.then
	leaq	104(%rsp), %r12
	movl	$1, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB81_6
# BB#2:                                 # %if.then.4
	movq	%r12, 8(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, (%rsp)
	leaq	96(%rsp), %r13
	movl	$3, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1835103334, %ecx       # imm = 0x6D617466
	movl	$1668707188, %r8d       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r13, %r9
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB81_6
# BB#3:                                 # %if.then.7
	movq	%r12, 8(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	112(%rsp), %rbp
	movl	$3, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1668052340, %ecx       # imm = 0x636C7574
	movl	$1668707188, %r8d       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbp, %r9
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB81_6
# BB#4:                                 # %if.then.10
	movq	%r12, 40(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r13, 24(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rbp, 8(%rsp)
	movl	$1668707188, (%rsp)     # imm = 0x63767374
	xorl	%r13d, %r13d
	movl	$5, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1668052340, %ecx       # imm = 0x636C7574
	movl	$1668707188, %r8d       # imm = 0x63767374
	movl	$1835103334, %r9d       # imm = 0x6D617466
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	je	.LBB81_5
.LBB81_6:                               # %if.end.17
	movq	%r15, %rdi
	callq	cmsPipelineInputChannels
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	cmsPipelineOutputChannels
	movl	%eax, %ebx
	movzbl	%bpl, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt8Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_43
# BB#7:                                 # %if.end.24
	movzbl	%bl, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#8:                                 # %if.end.29
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#9:                                 # %if.end.33
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %r12d
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#10:                                # %if.end.39
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#11:                                # %if.end.43
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#12:                                # %if.end.47
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#13:                                # %if.end.51
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_43
# BB#14:                                # %if.end.55
	addl	$-8, 76(%rsp)           # 4-byte Folded Spill
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	cmpq	$0, 112(%rsp)
	movl	$0, %ebx
	je	.LBB81_17
# BB#15:                                # %if.then.58
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebx
	movq	112(%rsp), %rdx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteSetOfCurves
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_43
# BB#16:
	subl	76(%rsp), %ebx          # 4-byte Folded Reload
.LBB81_17:                              # %if.end.66
	cmpq	$0, 80(%rsp)
	je	.LBB81_22
# BB#18:                                # %if.then.69
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movb	$1, %al
	cmpl	$0, 64(%r15)
	jne	.LBB81_20
# BB#19:                                # %select.mid
	movb	$2, %al
.LBB81_20:                              # %select.end
	movq	80(%rsp), %rcx
	movzbl	%al, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteCLUT
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_43
# BB#21:
	movl	60(%rsp), %eax          # 4-byte Reload
	subl	76(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
.LBB81_22:                              # %if.end.79
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	cmpq	$0, 96(%rsp)
	movl	$0, %ebp
	je	.LBB81_25
# BB#23:                                # %if.then.82
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebp
	movq	96(%rsp), %rdx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteSetOfCurves
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_43
# BB#24:
	subl	76(%rsp), %ebp          # 4-byte Folded Reload
.LBB81_25:                              # %if.end.90
	cmpq	$0, 88(%rsp)
	je	.LBB81_28
# BB#26:                                # %if.then.93
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	88(%rsp), %rsi
	movq	%r14, %rdi
	callq	WriteMatrix
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_43
# BB#27:
	movl	56(%rsp), %eax          # 4-byte Reload
	subl	76(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
.LBB81_28:                              # %if.end.101
	cmpq	$0, 104(%rsp)
	movl	$0, %r15d
	je	.LBB81_31
# BB#29:                                # %if.then.104
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %r15d
	movq	104(%rsp), %rdx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteSetOfCurves
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB81_43
# BB#30:
	subl	76(%rsp), %r15d         # 4-byte Folded Reload
.LBB81_31:                              # %if.end.112
	movl	%ebx, %r13d
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	*288(%r14)
	testl	%eax, %eax
	je	.LBB81_32
# BB#33:                                # %if.end.118
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_34
# BB#35:                                # %if.end.122
	movq	%r14, %rdi
	movl	56(%rsp), %esi          # 4-byte Reload
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_36
# BB#37:                                # %if.end.126
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_38
# BB#39:                                # %if.end.130
	movq	%r14, %rdi
	movl	60(%rsp), %esi          # 4-byte Reload
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB81_40
# BB#41:                                # %if.end.134
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	movl	$0, %r13d
	je	.LBB81_43
# BB#42:                                # %if.end.138
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	*288(%r14)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r13d
	jmp	.LBB81_43
.LBB81_5:                               # %if.then.13
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movl	$13, %esi
	movl	$.L.str.19, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB81_43:                              # %cleanup
	movl	%r13d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB81_32:
	xorl	%r13d, %r13d
	jmp	.LBB81_43
.LBB81_34:
	xorl	%r13d, %r13d
	jmp	.LBB81_43
.LBB81_36:
	xorl	%r13d, %r13d
	jmp	.LBB81_43
.LBB81_38:
	xorl	%r13d, %r13d
	jmp	.LBB81_43
.LBB81_40:
	xorl	%r13d, %r13d
	jmp	.LBB81_43
.Lfunc_end81:
	.size	Type_LUTA2B_Write, .Lfunc_end81-Type_LUTA2B_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTA2B_Dup,@function
Type_LUTA2B_Dup:                        # @Type_LUTA2B_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineDup          # TAILCALL
.Lfunc_end82:
	.size	Type_LUTA2B_Dup, .Lfunc_end82-Type_LUTA2B_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTA2B_Free,@function
Type_LUTA2B_Free:                       # @Type_LUTA2B_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineFree         # TAILCALL
.Lfunc_end83:
	.size	Type_LUTA2B_Free, .Lfunc_end83-Type_LUTA2B_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTB2A_Read,@function
Type_LUTB2A_Read:                       # @Type_LUTB2A_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp446:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp447:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp448:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp449:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp450:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp451:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp452:
	.cfi_def_cfa_offset 80
.Ltmp453:
	.cfi_offset %rbx, -56
.Ltmp454:
	.cfi_offset %r12, -48
.Ltmp455:
	.cfi_offset %r13, -40
.Ltmp456:
	.cfi_offset %r14, -32
.Ltmp457:
	.cfi_offset %r15, -24
.Ltmp458:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r13d
	leaq	23(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#1:                                 # %if.end
	leaq	22(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#2:                                 # %if.end.6
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB84_21
# BB#3:                                 # %if.end.10
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#4:                                 # %if.end.14
	leaq	12(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#5:                                 # %if.end.18
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#6:                                 # %if.end.22
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#7:                                 # %if.end.26
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB84_21
# BB#8:                                 # %if.end.30
	movq	40(%r15), %rdi
	movzbl	23(%rsp), %esi
	movzbl	22(%rsp), %edx
	callq	cmsPipelineAlloc
	movq	%rax, %r12
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB84_21
# BB#9:                                 # %if.end.36
	addl	$-8, %r13d
	movl	16(%rsp), %edx
	testl	%edx, %edx
	je	.LBB84_11
# BB#10:                                # %if.then.39
	addl	%r13d, %edx
	movzbl	23(%rsp), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadSetOfCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB84_20
.LBB84_11:                              # %if.end.46
	movl	12(%rsp), %edx
	testl	%edx, %edx
	je	.LBB84_13
# BB#12:                                # %if.then.49
	addl	%r13d, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadMatrix
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB84_20
.LBB84_13:                              # %if.end.56
	movl	8(%rsp), %edx
	testl	%edx, %edx
	je	.LBB84_15
# BB#14:                                # %if.then.59
	addl	%r13d, %edx
	movzbl	23(%rsp), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadSetOfCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB84_20
.LBB84_15:                              # %if.end.67
	movl	4(%rsp), %edx
	testl	%edx, %edx
	je	.LBB84_17
# BB#16:                                # %if.then.70
	addl	%r13d, %edx
	movzbl	23(%rsp), %ecx
	movzbl	22(%rsp), %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadCLUT
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB84_20
.LBB84_17:                              # %if.end.79
	movl	(%rsp), %edx
	testl	%edx, %edx
	je	.LBB84_19
# BB#18:                                # %if.then.82
	addl	%r13d, %edx
	movzbl	22(%rsp), %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ReadSetOfCurves
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB84_20
.LBB84_19:                              # %if.end.90
	movl	$1, (%r14)
	movq	%r12, %rbp
	jmp	.LBB84_21
.LBB84_20:                              # %Error
	movq	%r12, %rdi
	callq	cmsPipelineFree
	xorl	%ebp, %ebp
.LBB84_21:                              # %cleanup
	movq	%rbp, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Type_LUTB2A_Read, .Lfunc_end84-Type_LUTB2A_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTB2A_Write,@function
Type_LUTB2A_Write:                      # @Type_LUTB2A_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp459:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp460:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp461:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp462:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp463:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp464:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp465:
	.cfi_def_cfa_offset 176
.Ltmp466:
	.cfi_offset %rbx, -56
.Ltmp467:
	.cfi_offset %r12, -48
.Ltmp468:
	.cfi_offset %r13, -40
.Ltmp469:
	.cfi_offset %r14, -32
.Ltmp470:
	.cfi_offset %r15, -24
.Ltmp471:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, 68(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	leaq	104(%rsp), %rcx
	movl	$1, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB85_5
# BB#1:                                 # %if.then
	leaq	96(%rsp), %rbx
	movq	%rbx, 8(%rsp)
	leaq	88(%rsp), %rbp
	movq	%rbp, (%rsp)
	leaq	104(%rsp), %r9
	movl	$3, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1835103334, %ecx       # imm = 0x6D617466
	movl	$1668707188, %r8d       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB85_5
# BB#2:                                 # %if.then.5
	leaq	112(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	104(%rsp), %r13
	movl	$3, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1668052340, %ecx       # imm = 0x636C7574
	movl	$1668707188, %r8d       # imm = 0x63767374
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r13, %r9
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	jne	.LBB85_5
# BB#3:                                 # %if.then.8
	leaq	112(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r13, 8(%rsp)
	movl	$1668707188, (%rsp)     # imm = 0x63767374
	movl	$5, %esi
	movl	$1668707188, %edx       # imm = 0x63767374
	movl	$1835103334, %ecx       # imm = 0x6D617466
	movl	$1668707188, %r8d       # imm = 0x63767374
	movl	$1668052340, %r9d       # imm = 0x636C7574
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	cmsPipelineCheckAndRetreiveStages
	testl	%eax, %eax
	je	.LBB85_4
.LBB85_5:                               # %if.end.14
	movq	%r15, %rdi
	callq	cmsPipelineInputChannels
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	cmsPipelineOutputChannels
	movl	%eax, %ebx
	movzbl	%bpl, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#6:                                 # %if.end.21
	movzbl	%bl, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#7:                                 # %if.end.26
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#8:                                 # %if.end.30
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %r13d
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#9:                                 # %if.end.36
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#10:                                # %if.end.40
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#11:                                # %if.end.44
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#12:                                # %if.end.48
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_42
# BB#13:                                # %if.end.52
	addl	$-8, 68(%rsp)           # 4-byte Folded Spill
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	cmpq	$0, 112(%rsp)
	movl	$0, %ebx
	je	.LBB85_16
# BB#14:                                # %if.then.54
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebx
	movq	112(%rsp), %rdx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteSetOfCurves
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB85_42
# BB#15:
	subl	68(%rsp), %ebx          # 4-byte Folded Reload
.LBB85_16:                              # %if.end.62
	cmpq	$0, 80(%rsp)
	je	.LBB85_21
# BB#17:                                # %if.then.65
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movb	$1, %al
	cmpl	$0, 64(%r15)
	jne	.LBB85_19
# BB#18:                                # %select.mid
	movb	$2, %al
.LBB85_19:                              # %select.end
	movq	80(%rsp), %rcx
	movzbl	%al, %edx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteCLUT
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB85_42
# BB#20:
	movl	64(%rsp), %eax          # 4-byte Reload
	subl	68(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
.LBB85_21:                              # %if.end.75
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	cmpq	$0, 96(%rsp)
	movl	$0, %ebp
	je	.LBB85_24
# BB#22:                                # %if.then.78
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebp
	movq	96(%rsp), %rdx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteSetOfCurves
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB85_42
# BB#23:
	subl	68(%rsp), %ebp          # 4-byte Folded Reload
.LBB85_24:                              # %if.end.86
	cmpq	$0, 88(%rsp)
	je	.LBB85_27
# BB#25:                                # %if.then.89
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	88(%rsp), %rsi
	movq	%r14, %rdi
	callq	WriteMatrix
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB85_42
# BB#26:
	movl	60(%rsp), %eax          # 4-byte Reload
	subl	68(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
.LBB85_27:                              # %if.end.97
	cmpq	$0, 104(%rsp)
	movl	$0, %r15d
	je	.LBB85_30
# BB#28:                                # %if.then.100
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %r15d
	movq	104(%rsp), %rdx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	WriteSetOfCurves
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB85_42
# BB#29:
	subl	68(%rsp), %r15d         # 4-byte Folded Reload
.LBB85_30:                              # %if.end.108
	movl	%ebx, %r12d
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebx
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	*288(%r14)
	testl	%eax, %eax
	je	.LBB85_31
# BB#32:                                # %if.end.114
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_33
# BB#34:                                # %if.end.118
	movq	%r14, %rdi
	movl	60(%rsp), %esi          # 4-byte Reload
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_35
# BB#36:                                # %if.end.122
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_37
# BB#38:                                # %if.end.126
	movq	%r14, %rdi
	movl	64(%rsp), %esi          # 4-byte Reload
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB85_39
# BB#40:                                # %if.end.130
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	movl	$0, %r12d
	je	.LBB85_42
# BB#41:                                # %if.end.134
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	*288(%r14)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r12d
	jmp	.LBB85_42
.LBB85_4:                               # %if.then.11
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movl	$13, %esi
	movl	$.L.str.21, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	xorl	%r12d, %r12d
.LBB85_42:                              # %cleanup
	movl	%r12d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB85_31:
	xorl	%r12d, %r12d
	jmp	.LBB85_42
.LBB85_33:
	xorl	%r12d, %r12d
	jmp	.LBB85_42
.LBB85_35:
	xorl	%r12d, %r12d
	jmp	.LBB85_42
.LBB85_37:
	xorl	%r12d, %r12d
	jmp	.LBB85_42
.LBB85_39:
	xorl	%r12d, %r12d
	jmp	.LBB85_42
.Lfunc_end85:
	.size	Type_LUTB2A_Write, .Lfunc_end85-Type_LUTB2A_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTB2A_Dup,@function
Type_LUTB2A_Dup:                        # @Type_LUTB2A_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineDup          # TAILCALL
.Lfunc_end86:
	.size	Type_LUTB2A_Dup, .Lfunc_end86-Type_LUTB2A_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_LUTB2A_Free,@function
Type_LUTB2A_Free:                       # @Type_LUTB2A_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineFree         # TAILCALL
.Lfunc_end87:
	.size	Type_LUTB2A_Free, .Lfunc_end87-Type_LUTB2A_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_UcrBg_Read,@function
Type_UcrBg_Read:                        # @Type_UcrBg_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp472:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp473:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp474:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp475:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp476:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp477:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp478:
	.cfi_def_cfa_offset 80
.Ltmp479:
	.cfi_offset %rbx, -56
.Ltmp480:
	.cfi_offset %r12, -48
.Ltmp481:
	.cfi_offset %r13, -40
.Ltmp482:
	.cfi_offset %r14, -32
.Ltmp483:
	.cfi_offset %r15, -24
.Ltmp484:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	40(%r15), %rdi
	movl	$24, %esi
	callq	_cmsMallocZero
	movq	%rax, %r13
	movl	$0, (%r14)
	xorl	%ebx, %ebx
	testq	%r13, %r13
	je	.LBB88_15
# BB#1:                                 # %if.end
	leaq	20(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	cmpl	$4, %ebp
	jb	.LBB88_15
# BB#2:                                 # %if.end
	testl	%eax, %eax
	je	.LBB88_15
# BB#3:                                 # %if.end.7
	movq	40(%r15), %rdi
	movl	20(%rsp), %esi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, (%r13)
	testq	%rax, %rax
	je	.LBB88_15
# BB#4:                                 # %if.end.16
	addl	$-4, %ebp
	movl	20(%rsp), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsReadUInt16Array
	xorl	%ebx, %ebx
	cmpl	$4, %ebp
	jb	.LBB88_15
# BB#5:                                 # %if.end.16
	testl	%eax, %eax
	je	.LBB88_15
# BB#6:                                 # %if.end.26
	movl	20(%rsp), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB88_15
# BB#7:                                 # %if.end.34
	movl	8(%rsp), %eax           # 4-byte Reload
	addl	%eax, %eax
	subl	%eax, %ebp
	xorl	%ebx, %ebx
	cmpl	$4, %ebp
	jb	.LBB88_15
# BB#8:                                 # %if.end.39
	movq	40(%r15), %rdi
	movl	16(%rsp), %esi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.LBB88_15
# BB#9:                                 # %if.end.49
	movl	16(%rsp), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsReadUInt16Array
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB88_15
# BB#10:                                # %if.end.55
	addl	$-4, %ebp
	movl	%ebp, %ebp
	movl	16(%rsp), %eax
	addq	%rax, %rax
	xorl	%ebx, %ebx
	subq	%rax, %rbp
	jb	.LBB88_15
# BB#11:                                # %if.end.62
	xorl	%ebx, %ebx
	cmpl	$-1, %ebp
	je	.LBB88_15
# BB#12:                                # %if.end.71
	movq	40(%r15), %rdi
	movl	$1, %esi
	callq	cmsMLUalloc
	movq	%rax, 16(%r13)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB88_15
# BB#13:                                # %if.end.78
	movq	40(%r15), %rdi
	leal	1(%rbp), %esi
	callq	_cmsMalloc
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	%ebp, %ecx
	callq	*280(%r12)
	xorl	%ebx, %ebx
	cmpl	%ebp, %eax
	jne	.LBB88_15
# BB#14:                                # %if.end.85
	movl	%ebp, %eax
	movq	8(%rsp), %rbx           # 8-byte Reload
	movb	$0, (%rbx,%rax)
	movq	16(%r13), %rdi
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rcx
	callq	cmsMLUsetASCII
	movq	40(%r15), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movl	$1, (%r14)
	movq	%r13, %rbx
.LBB88_15:                              # %cleanup
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end88:
	.size	Type_UcrBg_Read, .Lfunc_end88-Type_UcrBg_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_UcrBg_Write,@function
Type_UcrBg_Write:                       # @Type_UcrBg_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp485:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp486:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp487:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp488:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp489:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp490:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp491:
	.cfi_def_cfa_offset 64
.Ltmp492:
	.cfi_offset %rbx, -56
.Ltmp493:
	.cfi_offset %r12, -48
.Ltmp494:
	.cfi_offset %r13, -40
.Ltmp495:
	.cfi_offset %r14, -32
.Ltmp496:
	.cfi_offset %r15, -24
.Ltmp497:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movl	40(%rax), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB89_7
# BB#1:                                 # %if.end
	movq	(%rbx), %rax
	movl	40(%rax), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Array
	testl	%eax, %eax
	je	.LBB89_7
# BB#2:                                 # %if.end.7
	movq	8(%rbx), %rax
	movl	40(%rax), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB89_7
# BB#3:                                 # %if.end.12
	movq	8(%rbx), %rax
	movl	40(%rax), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Array
	testl	%eax, %eax
	je	.LBB89_7
# BB#4:                                 # %if.end.20
	movq	16(%rbx), %rdi
	xorl	%r15d, %r15d
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	cmsMLUgetASCII
	movl	%eax, %ebp
	movq	40(%r14), %rdi
	movl	%ebp, %esi
	callq	_cmsMalloc
	movq	%rax, %r13
	movq	16(%rbx), %rdi
	movl	$.L.str, %esi
	movl	$.L.str, %edx
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	cmsMLUgetASCII
	cmpl	%ebp, %eax
	jne	.LBB89_7
# BB#5:                                 # %if.end.26
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	callq	*312(%r12)
	testl	%eax, %eax
	je	.LBB89_7
# BB#6:                                 # %if.end.30
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	movl	$1, %r15d
.LBB89_7:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end89:
	.size	Type_UcrBg_Write, .Lfunc_end89-Type_UcrBg_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_UcrBg_Dup,@function
Type_UcrBg_Dup:                         # @Type_UcrBg_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp498:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp499:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp500:
	.cfi_def_cfa_offset 32
.Ltmp501:
	.cfi_offset %rbx, -24
.Ltmp502:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	40(%rdi), %rdi
	movl	$24, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB90_2
# BB#1:                                 # %if.end
	movq	8(%r14), %rdi
	callq	cmsDupToneCurve
	movq	%rax, 8(%rbx)
	movq	(%r14), %rdi
	callq	cmsDupToneCurve
	movq	%rax, (%rbx)
	movq	16(%r14), %rdi
	callq	cmsMLUdup
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
.LBB90_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end90:
	.size	Type_UcrBg_Dup, .Lfunc_end90-Type_UcrBg_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_UcrBg_Free,@function
Type_UcrBg_Free:                        # @Type_UcrBg_Free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp503:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp504:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp505:
	.cfi_def_cfa_offset 32
.Ltmp506:
	.cfi_offset %rbx, -24
.Ltmp507:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB91_2
# BB#1:                                 # %if.then
	callq	cmsFreeToneCurve
.LBB91_2:                               # %if.end
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB91_4
# BB#3:                                 # %if.then.3
	callq	cmsFreeToneCurve
.LBB91_4:                               # %if.end.5
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB91_6
# BB#5:                                 # %if.then.7
	callq	cmsMLUfree
.LBB91_6:                               # %if.end.9
	movq	40(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsFree                # TAILCALL
.Lfunc_end91:
	.size	Type_UcrBg_Free, .Lfunc_end91-Type_UcrBg_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_CrdInfo_Read,@function
Type_CrdInfo_Read:                      # @Type_CrdInfo_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp508:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp509:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp510:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp511:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp512:
	.cfi_def_cfa_offset 48
.Ltmp513:
	.cfi_offset %rbx, -40
.Ltmp514:
	.cfi_offset %r12, -32
.Ltmp515:
	.cfi_offset %r14, -24
.Ltmp516:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	%ecx, 4(%rsp)
	movq	40(%r12), %rdi
	movl	$5, %esi
	callq	cmsMLUalloc
	movq	%rax, %rbx
	movl	$0, (%r14)
	leaq	4(%rsp), %rcx
	movl	$.L.str.22, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	ReadCountAndSting
	testl	%eax, %eax
	je	.LBB92_6
# BB#1:                                 # %if.end
	leaq	4(%rsp), %rcx
	movl	$.L.str.23, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	ReadCountAndSting
	testl	%eax, %eax
	je	.LBB92_6
# BB#2:                                 # %if.end.5
	leaq	4(%rsp), %rcx
	movl	$.L.str.24, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	ReadCountAndSting
	testl	%eax, %eax
	je	.LBB92_6
# BB#3:                                 # %if.end.9
	leaq	4(%rsp), %rcx
	movl	$.L.str.25, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	ReadCountAndSting
	testl	%eax, %eax
	je	.LBB92_6
# BB#4:                                 # %if.end.13
	leaq	4(%rsp), %rcx
	movl	$.L.str.26, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	ReadCountAndSting
	testl	%eax, %eax
	je	.LBB92_6
# BB#5:                                 # %if.end.17
	movl	$1, (%r14)
	jmp	.LBB92_7
.LBB92_6:                               # %Error
	movq	%rbx, %rdi
	callq	cmsMLUfree
	xorl	%ebx, %ebx
.LBB92_7:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end92:
	.size	Type_CrdInfo_Read, .Lfunc_end92-Type_CrdInfo_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_CrdInfo_Write,@function
Type_CrdInfo_Write:                     # @Type_CrdInfo_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp517:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp518:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp519:
	.cfi_def_cfa_offset 32
.Ltmp520:
	.cfi_offset %rbx, -32
.Ltmp521:
	.cfi_offset %r14, -24
.Ltmp522:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$.L.str.22, %ecx
	callq	WriteCountAndSting
	testl	%eax, %eax
	je	.LBB93_5
# BB#1:                                 # %if.end
	movl	$.L.str.23, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	WriteCountAndSting
	testl	%eax, %eax
	je	.LBB93_5
# BB#2:                                 # %if.end.4
	movl	$.L.str.24, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	WriteCountAndSting
	testl	%eax, %eax
	je	.LBB93_5
# BB#3:                                 # %if.end.8
	movl	$.L.str.25, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	WriteCountAndSting
	testl	%eax, %eax
	je	.LBB93_5
# BB#4:                                 # %if.end.12
	movl	$.L.str.26, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	WriteCountAndSting
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB93_6
.LBB93_5:                               # %Error
	xorl	%eax, %eax
.LBB93_6:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end93:
	.size	Type_CrdInfo_Write, .Lfunc_end93-Type_CrdInfo_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_CrdInfo_Dup,@function
Type_CrdInfo_Dup:                       # @Type_CrdInfo_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUdup               # TAILCALL
.Lfunc_end94:
	.size	Type_CrdInfo_Dup, .Lfunc_end94-Type_CrdInfo_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_CrdInfo_Free,@function
Type_CrdInfo_Free:                      # @Type_CrdInfo_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsMLUfree              # TAILCALL
.Lfunc_end95:
	.size	Type_CrdInfo_Free, .Lfunc_end95-Type_CrdInfo_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPE_Read,@function
Type_MPE_Read:                          # @Type_MPE_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp523:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp524:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp525:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp526:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp527:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp528:
	.cfi_def_cfa_offset 64
.Ltmp529:
	.cfi_offset %rbx, -48
.Ltmp530:
	.cfi_offset %r12, -40
.Ltmp531:
	.cfi_offset %r14, -32
.Ltmp532:
	.cfi_offset %r15, -24
.Ltmp533:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r12d
	leaq	14(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB96_7
# BB#1:                                 # %if.end
	leaq	12(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB96_7
# BB#2:                                 # %if.end.6
	movq	40(%r15), %rdi
	movzwl	14(%rsp), %esi
	movzwl	12(%rsp), %edx
	callq	cmsPipelineAlloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB96_7
# BB#3:                                 # %if.end.12
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB96_7
# BB#4:                                 # %if.end.16
	addl	$-8, %r12d
	movl	8(%rsp), %edx
	movl	$ReadMPEElem, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %ecx
	movq	%rbp, %r8
	callq	ReadPositionTable
	testl	%eax, %eax
	je	.LBB96_5
# BB#6:                                 # %if.end.24
	movl	$1, (%r14)
	movq	%rbp, %rax
	jmp	.LBB96_7
.LBB96_5:                               # %if.end.23
	movq	%rbp, %rdi
	callq	cmsPipelineFree
	movl	$0, (%r14)
	xorl	%eax, %eax
.LBB96_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end96:
	.size	Type_MPE_Read, .Lfunc_end96-Type_MPE_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPE_Write,@function
Type_MPE_Write:                         # @Type_MPE_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp534:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp535:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp536:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp537:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp538:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp539:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp540:
	.cfi_def_cfa_offset 128
.Ltmp541:
	.cfi_offset %rbx, -56
.Ltmp542:
	.cfi_offset %r12, -48
.Ltmp543:
	.cfi_offset %r13, -40
.Ltmp544:
	.cfi_offset %r14, -32
.Ltmp545:
	.cfi_offset %r15, -24
.Ltmp546:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	(%rbp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	40(%rbx), %rdi
	movl	$11, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	*304(%r12)
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	callq	cmsPipelineInputChannels
	movl	%eax, %r13d
	movq	%rbp, %rdi
	callq	cmsPipelineOutputChannels
	movl	%eax, %r14d
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	callq	cmsPipelineStageCount
	movl	%eax, %ebx
	movq	40(%rbp), %rdi
	movl	$4, %edx
	movl	%ebx, %esi
	callq	_cmsCalloc
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB97_37
# BB#1:                                 # %if.end
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	40(%rbp), %rdi
	movl	$4, %edx
	movl	%ebx, %esi
	callq	_cmsCalloc
	testq	%rax, %rax
	je	.LBB97_2
# BB#3:                                 # %if.end.14
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movzwl	%r13w, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB97_35
# BB#4:                                 # %if.end.18
	movzwl	%r14w, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB97_35
# BB#5:                                 # %if.end.23
	movzwl	%bx, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_35
# BB#6:                                 # %if.end.29
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	*304(%r12)
	movl	%eax, %r14d
	testl	%ebx, %ebx
	je	.LBB97_11
# BB#7:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB97_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_10
# BB#9:                                 # %if.end.37
                                        #   in Loop: Header=BB97_8 Depth=1
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_10
# BB#12:                                # %for.cond
                                        #   in Loop: Header=BB97_8 Depth=1
	incl	%ebp
	cmpl	%ebx, %ebp
	jb	.LBB97_8
# BB#13:                                # %for.cond.42.preheader
	movq	%r12, %rdi
	callq	*304(%r12)
	movl	%eax, %r15d
	testl	%ebx, %ebx
	je	.LBB97_25
# BB#14:                                # %for.body.45.lr.ph
	movl	$8, %eax
	subl	32(%rsp), %eax          # 4-byte Folded Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%ebx, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB97_15:                              # %for.body.45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB97_16 Depth 2
                                        #     Child Loop BB97_18 Depth 2
	movl	%r14d, 40(%rsp)         # 4-byte Spill
	leal	(%r15,%rax), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx,%r13,4)
	movl	8(%rbp), %esi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r15
	testq	%r15, %r15
	movl	$SupportedMPEtypes, %eax
	movq	16(%rsp), %r14          # 8-byte Reload
	je	.LBB97_18
	.align	16, 0x90
.LBB97_16:                              # %for.body.i
                                        #   Parent Loop BB97_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, (%r15)
	je	.LBB97_20
# BB#17:                                # %for.inc.i
                                        #   in Loop: Header=BB97_16 Depth=2
	movq	56(%r15), %r15
	testq	%r15, %r15
	movl	$SupportedMPEtypes, %eax
	jne	.LBB97_16
	.align	16, 0x90
.LBB97_18:                              # %for.body.5.i
                                        #   Parent Loop BB97_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, (%rax)
	je	.LBB97_19
# BB#28:                                # %for.inc.12.i
                                        #   in Loop: Header=BB97_18 Depth=2
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB97_18
	jmp	.LBB97_29
.LBB97_19:                              #   in Loop: Header=BB97_15 Depth=1
	movq	%rax, %r15
.LBB97_20:                              # %if.end.55
                                        #   in Loop: Header=BB97_15 Depth=1
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_10
# BB#21:                                # %if.end.59
                                        #   in Loop: Header=BB97_15 Depth=1
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_10
# BB#22:                                # %if.end.63
                                        #   in Loop: Header=BB97_15 Depth=1
	movq	%r12, %rdi
	callq	*304(%r12)
	movl	%eax, %r14d
	movl	$1, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	*16(%r15)
	testl	%eax, %eax
	je	.LBB97_10
# BB#23:                                # %if.end.69
                                        #   in Loop: Header=BB97_15 Depth=1
	movq	%r12, %rdi
	callq	_cmsWriteAlignment
	testl	%eax, %eax
	je	.LBB97_10
# BB#24:                                # %if.end.73
                                        #   in Loop: Header=BB97_15 Depth=1
	movq	%r12, %rdi
	callq	*304(%r12)
	subl	%r14d, %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx,%r13,4)
	movq	56(%rbp), %rbp
	incq	%r13
	movq	%r12, %rdi
	callq	*304(%r12)
	movl	%eax, %r15d
	cmpq	8(%rsp), %r13           # 8-byte Folded Reload
	movl	40(%rsp), %r14d         # 4-byte Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	jb	.LBB97_15
	jmp	.LBB97_25
.LBB97_35:                              # %if.end.126.thread
	movq	40(%rbp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	_cmsFree
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB97_36:                              # %if.then.129
	movq	40(%rbp), %rdi
	callq	_cmsFree
	xorl	%r15d, %r15d
	jmp	.LBB97_37
.LBB97_2:                               # %if.end.126.thread117
	movq	40(%rbp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	_cmsFree
.LBB97_37:                              # %cleanup
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB97_11:                              # %for.cond.42.preheader.thread
	movq	%r12, %rdi
	callq	*304(%r12)
	movl	%eax, %r15d
.LBB97_25:                              # %for.end.81
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	*288(%r12)
	testl	%eax, %eax
	je	.LBB97_10
# BB#26:                                # %for.cond.88.preheader
	testl	%ebx, %ebx
	je	.LBB97_33
# BB#27:                                # %for.body.91.lr.ph
	movl	%ebx, %r14d
	xorl	%ebp, %ebp
.LBB97_31:                              # %for.body.91
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rbp,4), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_10
# BB#32:                                # %if.end.97
                                        #   in Loop: Header=BB97_31 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rbp,4), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB97_10
# BB#30:                                # %for.cond.88
                                        #   in Loop: Header=BB97_31 Depth=1
	incq	%rbp
	cmpq	%r14, %rbp
	jb	.LBB97_31
.LBB97_33:                              # %for.end.106
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	*288(%r12)
	testl	%eax, %eax
	je	.LBB97_10
# BB#34:                                # %if.then.119
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	40(%rbx), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	_cmsFree
	movq	40(%rbx), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	_cmsFree
	movl	$1, %r15d
	jmp	.LBB97_37
.LBB97_29:                              # %if.then.52
	leaq	67(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_cmsTagSignature2String
	movq	40(%r14), %rdi
	movl	$8, %esi
	movl	$.L.str.30, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	cmsSignalError
.LBB97_10:                              # %if.end.126
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	40(%rbp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	_cmsFree
	xorl	%r15d, %r15d
	movq	24(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	jne	.LBB97_36
	jmp	.LBB97_37
.Lfunc_end97:
	.size	Type_MPE_Write, .Lfunc_end97-Type_MPE_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPE_Dup,@function
Type_MPE_Dup:                           # @Type_MPE_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineDup          # TAILCALL
.Lfunc_end98:
	.size	Type_MPE_Dup, .Lfunc_end98-Type_MPE_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPE_Free,@function
Type_MPE_Free:                          # @Type_MPE_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsPipelineFree         # TAILCALL
.Lfunc_end99:
	.size	Type_MPE_Free, .Lfunc_end99-Type_MPE_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Screening_Read,@function
Type_Screening_Read:                    # @Type_Screening_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp547:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp548:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp549:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp550:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp551:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp552:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp553:
	.cfi_def_cfa_offset 80
.Ltmp554:
	.cfi_offset %rbx, -56
.Ltmp555:
	.cfi_offset %r12, -48
.Ltmp556:
	.cfi_offset %r13, -40
.Ltmp557:
	.cfi_offset %r14, -32
.Ltmp558:
	.cfi_offset %r15, -24
.Ltmp559:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	40(%rbp), %rdi
	movl	$392, %esi              # imm = 0x188
	callq	_cmsMallocZero
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB100_12
# BB#1:                                 # %if.end
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$0, (%r14)
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB100_11
# BB#2:                                 # %if.end.3
	leaq	4(%r12), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB100_11
# BB#3:                                 # %if.end.7
	movl	(%r13), %eax
	cmpl	$16, %eax
	jb	.LBB100_5
# BB#4:                                 # %for.cond.preheader.thread
	movl	$15, (%r13)
	jmp	.LBB100_6
.LBB100_5:                              # %for.cond.preheader
	testl	%eax, %eax
	je	.LBB100_13
.LBB100_6:                              # %for.body.lr.ph
	movq	%r12, %rbp
	addq	$8, %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB100_8:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %r14d
	leaq	(%r14,%r14,2), %r15
	leaq	(%rbp,%r15,8), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB100_11
# BB#9:                                 # %if.end.18
                                        #   in Loop: Header=BB100_8 Depth=1
	leaq	8(%rbp,%r15,8), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB100_11
# BB#10:                                # %if.end.25
                                        #   in Loop: Header=BB100_8 Depth=1
	leaq	16(%rbp,%r15,8), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB100_11
# BB#7:                                 # %for.cond
                                        #   in Loop: Header=BB100_8 Depth=1
	incl	%r14d
	cmpl	(%r13), %r14d
	jb	.LBB100_8
.LBB100_13:                             # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$1, (%rax)
	movq	%r12, %rax
	jmp	.LBB100_12
.LBB100_11:                             # %if.then.34
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB100_12:                             # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end100:
	.size	Type_Screening_Read, .Lfunc_end100-Type_Screening_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Screening_Write,@function
Type_Screening_Write:                   # @Type_Screening_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp560:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp561:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp562:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp563:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp564:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp565:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp566:
	.cfi_def_cfa_offset 64
.Ltmp567:
	.cfi_offset %rbx, -56
.Ltmp568:
	.cfi_offset %r12, -48
.Ltmp569:
	.cfi_offset %r13, -40
.Ltmp570:
	.cfi_offset %r14, -32
.Ltmp571:
	.cfi_offset %r15, -24
.Ltmp572:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movl	(%r14), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB101_10
# BB#1:                                 # %if.end
	movl	4(%r14), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB101_10
# BB#2:                                 # %for.cond.preheader
	cmpl	$0, 4(%r14)
	je	.LBB101_3
# BB#6:
	leaq	8(%r14), %r15
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB101_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	leaq	(%rbx,%rbx,2), %rbp
	movsd	(%r15,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB101_10
# BB#8:                                 # %if.end.9
                                        #   in Loop: Header=BB101_7 Depth=1
	movsd	8(%r15,%rbp,8), %xmm0   # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB101_10
# BB#9:                                 # %if.end.16
                                        #   in Loop: Header=BB101_7 Depth=1
	movl	16(%r15,%rbp,8), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB101_10
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB101_7 Depth=1
	incl	%ebx
	cmpl	4(%r14), %ebx
	jb	.LBB101_7
# BB#5:
	movl	$1, %r13d
	jmp	.LBB101_10
.LBB101_3:
	movl	$1, %r13d
.LBB101_10:                             # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end101:
	.size	Type_Screening_Write, .Lfunc_end101-Type_Screening_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Screening_Dup,@function
Type_Screening_Dup:                     # @Type_Screening_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$392, %edx              # imm = 0x188
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end102:
	.size	Type_Screening_Dup, .Lfunc_end102-Type_Screening_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Screening_Free,@function
Type_Screening_Free:                    # @Type_Screening_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end103:
	.size	Type_Screening_Free, .Lfunc_end103-Type_Screening_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ViewingConditions_Read,@function
Type_ViewingConditions_Read:            # @Type_ViewingConditions_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp573:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp574:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp575:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp576:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp577:
	.cfi_def_cfa_offset 48
.Ltmp578:
	.cfi_offset %rbx, -40
.Ltmp579:
	.cfi_offset %r12, -32
.Ltmp580:
	.cfi_offset %r14, -24
.Ltmp581:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	40(%r15), %rdi
	movl	$56, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB104_6
# BB#1:                                 # %if.end
	movl	$0, (%r14)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_cmsReadXYZNumber
	testl	%eax, %eax
	je	.LBB104_5
# BB#2:                                 # %if.end.3
	leaq	24(%rbx), %rsi
	movq	%r12, %rdi
	callq	_cmsReadXYZNumber
	testl	%eax, %eax
	je	.LBB104_5
# BB#3:                                 # %if.end.7
	movq	%rbx, %rsi
	addq	$48, %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB104_5
# BB#4:                                 # %if.end.11
	movl	$1, (%r14)
	movq	%rbx, %rax
	jmp	.LBB104_6
.LBB104_5:                              # %if.then.13
	movq	40(%r15), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB104_6:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end104:
	.size	Type_ViewingConditions_Read, .Lfunc_end104-Type_ViewingConditions_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ViewingConditions_Write,@function
Type_ViewingConditions_Write:           # @Type_ViewingConditions_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp582:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp583:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp584:
	.cfi_def_cfa_offset 32
.Ltmp585:
	.cfi_offset %rbx, -32
.Ltmp586:
	.cfi_offset %r14, -24
.Ltmp587:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsWriteXYZNumber
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB105_3
# BB#1:                                 # %if.end
	leaq	24(%rbx), %rsi
	movq	%r14, %rdi
	callq	_cmsWriteXYZNumber
	testl	%eax, %eax
	je	.LBB105_3
# BB#2:                                 # %if.end.4
	movl	48(%rbx), %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
.LBB105_3:                              # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end105:
	.size	Type_ViewingConditions_Write, .Lfunc_end105-Type_ViewingConditions_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ViewingConditions_Dup,@function
Type_ViewingConditions_Dup:             # @Type_ViewingConditions_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$392, %edx              # imm = 0x188
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end106:
	.size	Type_ViewingConditions_Dup, .Lfunc_end106-Type_ViewingConditions_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ViewingConditions_Free,@function
Type_ViewingConditions_Free:            # @Type_ViewingConditions_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end107:
	.size	Type_ViewingConditions_Free, .Lfunc_end107-Type_ViewingConditions_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_XYZ_Read,@function
Type_XYZ_Read:                          # @Type_XYZ_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp588:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp589:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp590:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp591:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp592:
	.cfi_def_cfa_offset 48
.Ltmp593:
	.cfi_offset %rbx, -40
.Ltmp594:
	.cfi_offset %r12, -32
.Ltmp595:
	.cfi_offset %r14, -24
.Ltmp596:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$0, (%r15)
	movq	40(%r14), %rdi
	movl	$24, %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB108_4
# BB#1:                                 # %if.end
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_cmsReadXYZNumber
	testl	%eax, %eax
	je	.LBB108_2
# BB#3:                                 # %if.end.4
	movl	$1, (%r15)
	movq	%rbx, %rax
	jmp	.LBB108_4
.LBB108_2:                              # %if.then.2
	movq	40(%r14), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB108_4:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end108:
	.size	Type_XYZ_Read, .Lfunc_end108-Type_XYZ_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_XYZ_Write,@function
Type_XYZ_Write:                         # @Type_XYZ_Write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	jmp	_cmsWriteXYZNumber      # TAILCALL
.Lfunc_end109:
	.size	Type_XYZ_Write, .Lfunc_end109-Type_XYZ_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_XYZ_Dup,@function
Type_XYZ_Dup:                           # @Type_XYZ_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	movl	$24, %edx
	jmp	_cmsDupMem              # TAILCALL
.Lfunc_end110:
	.size	Type_XYZ_Dup, .Lfunc_end110-Type_XYZ_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_XYZ_Free,@function
Type_XYZ_Free:                          # @Type_XYZ_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rdi
	jmp	_cmsFree                # TAILCALL
.Lfunc_end111:
	.size	Type_XYZ_Free, .Lfunc_end111-Type_XYZ_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceId_Read,@function
Type_ProfileSequenceId_Read:            # @Type_ProfileSequenceId_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp597:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp598:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp599:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp600:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp601:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp602:
	.cfi_def_cfa_offset 64
.Ltmp603:
	.cfi_offset %rbx, -48
.Ltmp604:
	.cfi_offset %r12, -40
.Ltmp605:
	.cfi_offset %r14, -32
.Ltmp606:
	.cfi_offset %r15, -24
.Ltmp607:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$0, (%r14)
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r12d
	leaq	12(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB112_5
# BB#1:                                 # %if.end
	movq	40(%r15), %rdi
	movl	12(%rsp), %esi
	callq	cmsAllocProfileSequenceDescription
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB112_5
# BB#2:                                 # %if.end.9
	addl	$-8, %r12d
	movl	12(%rsp), %edx
	movl	$ReadSeqID, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %ecx
	movq	%rbp, %r8
	callq	ReadPositionTable
	testl	%eax, %eax
	je	.LBB112_3
# BB#4:                                 # %if.end.13
	movl	$1, (%r14)
	movq	%rbp, %rax
	jmp	.LBB112_5
.LBB112_3:                              # %if.then.12
	movq	%rbp, %rdi
	callq	cmsFreeProfileSequenceDescription
	xorl	%eax, %eax
.LBB112_5:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end112:
	.size	Type_ProfileSequenceId_Read, .Lfunc_end112-Type_ProfileSequenceId_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceId_Write,@function
Type_ProfileSequenceId_Write:           # @Type_ProfileSequenceId_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp608:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp609:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp610:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp611:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp612:
	.cfi_def_cfa_offset 48
.Ltmp613:
	.cfi_offset %rbx, -40
.Ltmp614:
	.cfi_offset %r14, -32
.Ltmp615:
	.cfi_offset %r15, -24
.Ltmp616:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %ebp
	movl	(%r14), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB113_2
# BB#1:                                 # %if.end
	addl	$-8, %ebp
	movl	(%r14), %edx
	movl	$WriteSeqID, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	movq	%r14, %r8
	callq	WritePositionTable
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB113_2:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end113:
	.size	Type_ProfileSequenceId_Write, .Lfunc_end113-Type_ProfileSequenceId_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceId_Dup,@function
Type_ProfileSequenceId_Dup:             # @Type_ProfileSequenceId_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDupProfileSequenceDescription # TAILCALL
.Lfunc_end114:
	.size	Type_ProfileSequenceId_Dup, .Lfunc_end114-Type_ProfileSequenceId_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_ProfileSequenceId_Free,@function
Type_ProfileSequenceId_Free:            # @Type_ProfileSequenceId_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsFreeProfileSequenceDescription # TAILCALL
.Lfunc_end115:
	.size	Type_ProfileSequenceId_Free, .Lfunc_end115-Type_ProfileSequenceId_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Dictionary_Read,@function
Type_Dictionary_Read:                   # @Type_Dictionary_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp617:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp618:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp619:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp620:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp621:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp622:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp623:
	.cfi_def_cfa_offset 224
.Ltmp624:
	.cfi_offset %rbx, -56
.Ltmp625:
	.cfi_offset %r12, -48
.Ltmp626:
	.cfi_offset %r13, -40
.Ltmp627:
	.cfi_offset %r14, -32
.Ltmp628:
	.cfi_offset %r15, -24
.Ltmp629:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, (%r15)
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r14d
	leaq	160(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB116_91
# BB#1:                                 # %if.end
	leaq	156(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB116_91
# BB#2:                                 # %if.end.9
	movl	156(%rsp), %ecx
	cmpq	$32, %rcx
	movq	40(%r12), %rdi
	ja	.LBB116_4
# BB#3:                                 # %if.end.9
	movabsq	$4311810048, %rax       # imm = 0x101010000
	btq	%rcx, %rax
	jae	.LBB116_4
# BB#5:                                 # %if.end.20
	callq	cmsDictAlloc
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB116_91
# BB#6:                                 # %if.end.26
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	40(%r12), %rdi
	movl	160(%rsp), %edx
	movl	156(%rsp), %ecx
	leaq	56(%rsp), %rsi
	callq	AllocArray
	testl	%eax, %eax
	je	.LBB116_57
# BB#7:                                 # %if.end.31
	movl	160(%rsp), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB116_74
# BB#8:                                 # %for.body.lr.ph.i
	addl	$-8, %r14d
	movl	156(%rsp), %ebp
	xorl	%r13d, %r13d
.LBB116_9:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#10:                                # %if.end.i.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	72(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#11:                                # %if.end.6.i.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	64(%rsp), %rax
	movl	(%rax,%r13,4), %ecx
	testl	%ecx, %ecx
	je	.LBB116_13
# BB#12:                                # %if.then.10.i.i
                                        #   in Loop: Header=BB116_9 Depth=1
	addl	%r14d, %ecx
	movl	%ecx, (%rax,%r13,4)
.LBB116_13:                             # %if.end.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	88(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#14:                                # %if.end.i.26.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	96(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#15:                                # %if.end.6.i.29.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	88(%rsp), %rax
	movl	(%rax,%r13,4), %ecx
	testl	%ecx, %ecx
	je	.LBB116_17
# BB#16:                                # %if.then.10.i.31.i
                                        #   in Loop: Header=BB116_9 Depth=1
	addl	%r14d, %ecx
	movl	%ecx, (%rax,%r13,4)
.LBB116_17:                             # %if.end.4.i
                                        #   in Loop: Header=BB116_9 Depth=1
	cmpl	$17, %ebp
	jb	.LBB116_27
# BB#18:                                # %if.then.6.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	112(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#19:                                # %if.end.i.43.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	120(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#20:                                # %if.end.6.i.46.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	112(%rsp), %rax
	movl	(%rax,%r13,4), %ecx
	testl	%ecx, %ecx
	je	.LBB116_22
# BB#21:                                # %if.then.10.i.48.i
                                        #   in Loop: Header=BB116_9 Depth=1
	addl	%r14d, %ecx
	movl	%ecx, (%rax,%r13,4)
.LBB116_22:                             # %if.end.11.i
                                        #   in Loop: Header=BB116_9 Depth=1
	cmpl	$25, %ebp
	jb	.LBB116_27
# BB#23:                                # %if.then.13.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	136(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#24:                                # %if.end.i.60.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	144(%rsp), %rax
	leaq	(%rax,%r13,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB116_57
# BB#25:                                # %if.end.6.i.63.i
                                        #   in Loop: Header=BB116_9 Depth=1
	movq	136(%rsp), %rax
	movl	(%rax,%r13,4), %ecx
	testl	%ecx, %ecx
	je	.LBB116_27
# BB#26:                                # %if.then.10.i.65.i
                                        #   in Loop: Header=BB116_9 Depth=1
	addl	%r14d, %ecx
	movl	%ecx, (%rax,%r13,4)
.LBB116_27:                             # %for.inc.i
                                        #   in Loop: Header=BB116_9 Depth=1
	incq	%r13
	cmpq	32(%rsp), %r13          # 8-byte Folded Reload
	jb	.LBB116_9
# BB#28:                                # %for.cond.preheader
	cmpl	$0, 160(%rsp)
	je	.LBB116_74
# BB#29:                                # %for.body.lr.ph
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB116_31:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	leaq	56(%rsp), %rsi
	movl	%r13d, %edx
	leaq	48(%rsp), %rcx
	callq	ReadOneWChar
	testl	%eax, %eax
	je	.LBB116_57
# BB#32:                                # %if.end.41
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	%rbx, %rdi
	leaq	80(%rsp), %rsi
	movl	%r13d, %edx
	leaq	40(%rsp), %rcx
	callq	ReadOneWChar
	testl	%eax, %eax
	je	.LBB116_57
# BB#33:                                # %if.end.45
                                        #   in Loop: Header=BB116_31 Depth=1
	movl	156(%rsp), %eax
	cmpl	$17, %eax
	jb	.LBB116_44
# BB#34:                                # %if.then.48
                                        #   in Loop: Header=BB116_31 Depth=1
	movl	$0, 164(%rsp)
	movl	%r13d, %r14d
	movq	112(%rsp), %rcx
	movl	(%rcx,%r14,4), %esi
	testl	%esi, %esi
	je	.LBB116_92
# BB#35:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	120(%rsp), %rcx
	cmpl	$0, (%rcx,%r14,4)
	je	.LBB116_92
# BB#36:                                # %if.end.i.32
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	%rbx, %rdi
	callq	*288(%rbx)
	testl	%eax, %eax
	je	.LBB116_57
# BB#37:                                # %ReadOneMLUC.exit
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	120(%rsp), %rax
	movl	(%rax,%r14,4), %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	leaq	164(%rsp), %rdx
	callq	Type_MLU_Read
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB116_57
# BB#38:                                # %ReadOneMLUC.exit.if.end.53_crit_edge
                                        #   in Loop: Header=BB116_31 Depth=1
	movl	156(%rsp), %eax
	jmp	.LBB116_39
.LBB116_92:                             # %ReadOneMLUC.exit.thread
                                        #   in Loop: Header=BB116_31 Depth=1
	xorl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
.LBB116_39:                             # %if.end.53
                                        #   in Loop: Header=BB116_31 Depth=1
	cmpl	$25, %eax
	jb	.LBB116_44
# BB#40:                                # %if.then.56
                                        #   in Loop: Header=BB116_31 Depth=1
	movl	$0, 164(%rsp)
	movq	136(%rsp), %rax
	movl	(%rax,%r14,4), %esi
	testl	%esi, %esi
	je	.LBB116_93
# BB#41:                                # %lor.lhs.false.i.42
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	144(%rsp), %rax
	cmpl	$0, (%rax,%r14,4)
	je	.LBB116_93
# BB#42:                                # %if.end.i.47
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	%rbx, %rdi
	callq	*288(%rbx)
	testl	%eax, %eax
	je	.LBB116_57
# BB#43:                                # %ReadOneMLUC.exit54
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	144(%rsp), %rax
	movl	(%rax,%r14,4), %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	leaq	164(%rsp), %rdx
	callq	Type_MLU_Read
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB116_44
	jmp	.LBB116_57
.LBB116_93:                             # %ReadOneMLUC.exit54.thread
                                        #   in Loop: Header=BB116_31 Depth=1
	xorl	%ebp, %ebp
.LBB116_44:                             # %if.end.61
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	48(%rsp), %r14
	testq	%r14, %r14
	movq	40(%rsp), %rbp
	je	.LBB116_46
# BB#45:                                # %if.end.61
                                        #   in Loop: Header=BB116_31 Depth=1
	testq	%rbp, %rbp
	je	.LBB116_46
# BB#47:                                # %if.else
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	callq	cmsDictAddEntry
	movl	%eax, 12(%rsp)          # 4-byte Spill
	jmp	.LBB116_48
.LBB116_46:                             # %if.then.66
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	40(%r12), %rdi
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	movl	$12, %esi
	movl	$.L.str.32, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB116_48:                             # %if.end.69
                                        #   in Loop: Header=BB116_31 Depth=1
	testq	%r14, %r14
	je	.LBB116_50
# BB#49:                                # %if.then.72
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	40(%r12), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
.LBB116_50:                             # %if.end.74
                                        #   in Loop: Header=BB116_31 Depth=1
	testq	%rbp, %rbp
	je	.LBB116_52
# BB#51:                                # %if.then.77
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	40(%r12), %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
.LBB116_52:                             # %if.end.79
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movq	32(%rsp), %rbp          # 8-byte Reload
	je	.LBB116_54
# BB#53:                                # %if.then.82
                                        #   in Loop: Header=BB116_31 Depth=1
	callq	cmsMLUfree
.LBB116_54:                             # %if.end.83
                                        #   in Loop: Header=BB116_31 Depth=1
	testq	%rbp, %rbp
	je	.LBB116_56
# BB#55:                                # %if.then.86
                                        #   in Loop: Header=BB116_31 Depth=1
	movq	%rbp, %rdi
	callq	cmsMLUfree
.LBB116_56:                             # %if.end.87
                                        #   in Loop: Header=BB116_31 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB116_57
# BB#30:                                # %for.cond
                                        #   in Loop: Header=BB116_31 Depth=1
	incl	%r13d
	cmpl	160(%rsp), %r13d
	jb	.LBB116_31
.LBB116_74:                             # %for.end
	movq	64(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_78
# BB#75:                                # %if.end.i.105
	movq	56(%rsp), %rdi
	callq	_cmsFree
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_77
# BB#76:                                # %if.then.3.i.107
	movq	56(%rsp), %rdi
	callq	_cmsFree
.LBB116_77:                             # %FreeElem.exit109
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rsp)
.LBB116_78:                             # %if.end.i.59
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_82
# BB#79:                                # %if.end.i.116
	movq	80(%rsp), %rdi
	callq	_cmsFree
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_81
# BB#80:                                # %if.then.3.i.118
	movq	80(%rsp), %rdi
	callq	_cmsFree
.LBB116_81:                             # %FreeElem.exit120
	xorps	%xmm0, %xmm0
	movups	%xmm0, 88(%rsp)
.LBB116_82:                             # %if.end.6.i
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_86
# BB#83:                                # %if.end.i.127
	movq	104(%rsp), %rdi
	callq	_cmsFree
	movq	120(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_85
# BB#84:                                # %if.then.3.i.129
	movq	104(%rsp), %rdi
	callq	_cmsFree
.LBB116_85:                             # %FreeElem.exit131
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rsp)
.LBB116_86:                             # %if.end.11.i.61
	movq	136(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_90
# BB#87:                                # %if.end.i.66
	movq	128(%rsp), %rdi
	callq	_cmsFree
	movq	144(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_89
# BB#88:                                # %if.then.3.i
	movq	128(%rsp), %rdi
	callq	_cmsFree
.LBB116_89:                             # %FreeElem.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 136(%rsp)
.LBB116_90:                             # %FreeArray.exit
	movl	$1, (%r15)
	movq	24(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB116_91
.LBB116_4:                              # %if.then.19
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.31, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB116_91
.LBB116_57:                             # %Error
	movq	64(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_61
# BB#58:                                # %if.end.i.138
	movq	56(%rsp), %rdi
	callq	_cmsFree
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_60
# BB#59:                                # %if.then.3.i.140
	movq	56(%rsp), %rdi
	callq	_cmsFree
.LBB116_60:                             # %FreeElem.exit142
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rsp)
.LBB116_61:                             # %if.end.i.74
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_65
# BB#62:                                # %if.end.i.149
	movq	80(%rsp), %rdi
	callq	_cmsFree
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_64
# BB#63:                                # %if.then.3.i.151
	movq	80(%rsp), %rdi
	callq	_cmsFree
.LBB116_64:                             # %FreeElem.exit153
	xorps	%xmm0, %xmm0
	movups	%xmm0, 88(%rsp)
.LBB116_65:                             # %if.end.6.i.79
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_69
# BB#66:                                # %if.end.i.160
	movq	104(%rsp), %rdi
	callq	_cmsFree
	movq	120(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_68
# BB#67:                                # %if.then.3.i.162
	movq	104(%rsp), %rdi
	callq	_cmsFree
.LBB116_68:                             # %FreeElem.exit164
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rsp)
.LBB116_69:                             # %if.end.11.i.84
	movq	136(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_73
# BB#70:                                # %if.end.i.94
	movq	128(%rsp), %rdi
	callq	_cmsFree
	movq	144(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB116_72
# BB#71:                                # %if.then.3.i.96
	movq	128(%rsp), %rdi
	callq	_cmsFree
.LBB116_72:                             # %FreeElem.exit98
	xorps	%xmm0, %xmm0
	movups	%xmm0, 136(%rsp)
.LBB116_73:                             # %FreeArray.exit87
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	cmsDictFree
	xorl	%ebp, %ebp
.LBB116_91:                             # %cleanup
	movq	%rbp, %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end116:
	.size	Type_Dictionary_Read, .Lfunc_end116-Type_Dictionary_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Dictionary_Write,@function
Type_Dictionary_Write:                  # @Type_Dictionary_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp630:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp631:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp632:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp633:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp634:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp635:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp636:
	.cfi_def_cfa_offset 192
.Ltmp637:
	.cfi_offset %rbx, -56
.Ltmp638:
	.cfi_offset %r12, -48
.Ltmp639:
	.cfi_offset %r13, -40
.Ltmp640:
	.cfi_offset %r14, -32
.Ltmp641:
	.cfi_offset %r15, -24
.Ltmp642:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	testq	%r14, %r14
	je	.LBB117_56
# BB#1:                                 # %if.end
	movq	%r13, %rdi
	callq	*304(%r13)
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	callq	cmsDictGetEntryList
	xorl	%r12d, %r12d
	testq	%rax, %rax
	movl	$0, %ebx
	movl	$0, %ebp
	movl	$0, %r15d
	je	.LBB117_8
# BB#2:
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB117_3:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rax)
	je	.LBB117_5
# BB#4:                                 # %select.mid
                                        #   in Loop: Header=BB117_3 Depth=1
	movl	$1, %ebx
.LBB117_5:                              # %select.end
                                        #   in Loop: Header=BB117_3 Depth=1
	cmpq	$0, 16(%rax)
	je	.LBB117_7
# BB#6:                                 # %select.mid297
                                        #   in Loop: Header=BB117_3 Depth=1
	movl	$1, %r15d
.LBB117_7:                              # %select.end296
                                        #   in Loop: Header=BB117_3 Depth=1
	incl	%ebp
	movq	%rax, %rdi
	callq	cmsDictNextEntry
	testq	%rax, %rax
	jne	.LBB117_3
.LBB117_8:                              # %for.end
	testl	%ebx, %ebx
	setne	%al
	movzbl	%al, %eax
	leal	16(,%rax,8), %ecx
	testl	%r15d, %r15d
	leal	24(,%rax,8), %ebx
	cmovel	%ecx, %ebx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB117_56
# BB#9:                                 # %if.end.23
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB117_56
# BB#10:                                # %if.end.27
	movq	%r13, %rdi
	callq	*304(%r13)
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	leaq	40(%rsp), %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	callq	AllocArray
	testl	%eax, %eax
	je	.LBB117_39
# BB#11:                                # %if.end.33
	leaq	40(%rsp), %rsi
	movq	%r13, %rdi
	movl	%ebp, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	callq	WriteOffsetArray
	testl	%eax, %eax
	je	.LBB117_39
# BB#12:                                # %if.end.37
	movq	%r14, %rdi
	callq	cmsDictGetEntryList
	movq	%rax, %r14
	testl	%ebp, %ebp
	je	.LBB117_23
# BB#13:                                # %for.body.42.lr.ph
	addl	$-8, 36(%rsp)           # 4-byte Folded Spill
	movl	%ebp, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB117_14:                             # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rcx
	movq	%r13, %rdi
	leaq	40(%rsp), %rsi
	movl	%r15d, %edx
	movl	36(%rsp), %r8d          # 4-byte Reload
	callq	WriteOneWChar
	testl	%eax, %eax
	je	.LBB117_39
# BB#15:                                # %if.end.47
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	32(%r14), %rcx
	movq	%r13, %rdi
	leaq	64(%rsp), %rsi
	movl	%r15d, %edx
	movl	36(%rsp), %r8d          # 4-byte Reload
	callq	WriteOneWChar
	testl	%eax, %eax
	je	.LBB117_39
# BB#16:                                # %if.end.52
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB117_19
# BB#17:                                # %if.end.i
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	%r13, %rdi
	callq	*304(%r13)
	movl	%eax, %r12d
	subl	36(%rsp), %eax          # 4-byte Folded Reload
	movq	96(%rsp), %rcx
	movl	%eax, (%rcx,%r15,4)
	movl	$1, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	Type_MLU_Write
	testl	%eax, %eax
	je	.LBB117_39
# BB#18:                                # %WriteOneMLUC.exit
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	%r13, %rdi
	callq	*304(%r13)
	subl	%r12d, %eax
	movq	104(%rsp), %rcx
	movl	%eax, (%rcx,%r15,4)
.LBB117_19:                             # %if.end.63
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	16(%r14), %r12
	testq	%r12, %r12
	je	.LBB117_22
# BB#20:                                # %if.end.i.74
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	%r13, %rdi
	callq	*304(%r13)
	movl	%eax, %ebx
	subl	36(%rsp), %eax          # 4-byte Folded Reload
	movq	120(%rsp), %rcx
	movl	%eax, (%rcx,%r15,4)
	movl	$1, %ecx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	Type_MLU_Write
	testl	%eax, %eax
	je	.LBB117_39
# BB#21:                                # %WriteOneMLUC.exit81
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	%r13, %rdi
	callq	*304(%r13)
	subl	%ebx, %eax
	movq	128(%rsp), %rcx
	movl	%eax, (%rcx,%r15,4)
.LBB117_22:                             # %if.end.74
                                        #   in Loop: Header=BB117_14 Depth=1
	movq	%r14, %rdi
	callq	cmsDictNextEntry
	movq	%rax, %r14
	incq	%r15
	cmpq	16(%rsp), %r15          # 8-byte Folded Reload
	jb	.LBB117_14
.LBB117_23:                             # %for.end.78
	movq	%r13, %rdi
	callq	*304(%r13)
	movl	%eax, %r14d
	movq	%r13, %rdi
	movl	8(%rsp), %esi           # 4-byte Reload
	callq	*288(%r13)
	testl	%eax, %eax
	je	.LBB117_39
# BB#24:                                # %if.end.84
	leaq	40(%rsp), %rsi
	movq	%r13, %rdi
	movl	%ebp, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	callq	WriteOffsetArray
	testl	%eax, %eax
	je	.LBB117_39
# BB#25:                                # %if.end.88
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	*288(%r13)
	testl	%eax, %eax
	je	.LBB117_39
# BB#26:                                # %if.end.93
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_30
# BB#27:                                # %if.end.i.129
	movq	40(%rsp), %rdi
	callq	_cmsFree
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_29
# BB#28:                                # %if.then.3.i.131
	movq	40(%rsp), %rdi
	callq	_cmsFree
.LBB117_29:                             # %FreeElem.exit133
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rsp)
.LBB117_30:                             # %if.end.i.85
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_34
# BB#31:                                # %if.end.i.140
	movq	64(%rsp), %rdi
	callq	_cmsFree
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_33
# BB#32:                                # %if.then.3.i.142
	movq	64(%rsp), %rdi
	callq	_cmsFree
.LBB117_33:                             # %FreeElem.exit144
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
.LBB117_34:                             # %if.end.6.i
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_38
# BB#35:                                # %if.end.i.151
	movq	88(%rsp), %rdi
	callq	_cmsFree
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_37
# BB#36:                                # %if.then.3.i.153
	movq	88(%rsp), %rdi
	callq	_cmsFree
.LBB117_37:                             # %FreeElem.exit155
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rsp)
.LBB117_38:                             # %if.end.11.i
	movq	120(%rsp), %rsi
	movl	$1, %r12d
	jmp	.LBB117_52
.LBB117_39:                             # %Error
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_43
# BB#40:                                # %if.end.i.162
	movq	40(%rsp), %rdi
	callq	_cmsFree
	movq	56(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_42
# BB#41:                                # %if.then.3.i.164
	movq	40(%rsp), %rdi
	callq	_cmsFree
.LBB117_42:                             # %FreeElem.exit166
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rsp)
.LBB117_43:                             # %if.end.i.98
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_47
# BB#44:                                # %if.end.i.173
	movq	64(%rsp), %rdi
	callq	_cmsFree
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_46
# BB#45:                                # %if.then.3.i.175
	movq	64(%rsp), %rdi
	callq	_cmsFree
.LBB117_46:                             # %FreeElem.exit177
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
.LBB117_47:                             # %if.end.6.i.103
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	movl	$0, %r12d
	je	.LBB117_51
# BB#48:                                # %if.end.i.184
	movq	88(%rsp), %rdi
	callq	_cmsFree
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_50
# BB#49:                                # %if.then.3.i.186
	movq	88(%rsp), %rdi
	callq	_cmsFree
.LBB117_50:                             # %FreeElem.exit188
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rsp)
.LBB117_51:                             # %if.end.11.i.108
	movq	120(%rsp), %rsi
.LBB117_52:                             # %if.end.11.i.108
	testq	%rsi, %rsi
	je	.LBB117_56
# BB#53:                                # %if.end.i.118
	movq	112(%rsp), %rdi
	callq	_cmsFree
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB117_55
# BB#54:                                # %if.then.3.i.120
	movq	112(%rsp), %rdi
	callq	_cmsFree
.LBB117_55:                             # %FreeElem.exit122
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rsp)
.LBB117_56:                             # %cleanup
	movl	%r12d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end117:
	.size	Type_Dictionary_Write, .Lfunc_end117-Type_Dictionary_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Dictionary_Dup,@function
Type_Dictionary_Dup:                    # @Type_Dictionary_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDictDup              # TAILCALL
.Lfunc_end118:
	.size	Type_Dictionary_Dup, .Lfunc_end118-Type_Dictionary_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_Dictionary_Free,@function
Type_Dictionary_Free:                   # @Type_Dictionary_Free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsDictFree             # TAILCALL
.Lfunc_end119:
	.size	Type_Dictionary_Free, .Lfunc_end119-Type_Dictionary_Free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI120_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	Type_vcgt_Read,@function
Type_vcgt_Read:                         # @Type_vcgt_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp643:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp644:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp645:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp646:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp647:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp648:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp649:
	.cfi_def_cfa_offset 224
.Ltmp650:
	.cfi_offset %rbx, -56
.Ltmp651:
	.cfi_offset %r12, -48
.Ltmp652:
	.cfi_offset %r13, -40
.Ltmp653:
	.cfi_offset %r14, -32
.Ltmp654:
	.cfi_offset %r15, -24
.Ltmp655:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$0, (%r15)
	leaq	164(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB120_43
# BB#1:                                 # %if.end
	movq	40(%r14), %rdi
	movl	$3, %esi
	movl	$8, %edx
	callq	_cmsCalloc
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB120_43
# BB#2:                                 # %if.end.3
	movq	%rax, %rbx
	movl	164(%rsp), %ecx
	cmpl	$1, %ecx
	jne	.LBB120_3
# BB#27:                                # %sw.bb.82
	leaq	80(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#28:                                # %if.end.92
	leaq	88(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#29:                                # %if.end.98
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#30:                                # %if.end.104
	movq	80(%rsp), %rax
	movq	%rax, (%rsp)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	88(%rsp), %xmm0
	movd	%rax, %xmm2
	movsd	.LCPI120_0(%rip), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	callq	pow
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	40(%r14), %rdi
	leaq	(%rsp), %rdx
	movl	$5, %esi
	callq	cmsBuildParametricToneCurve
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB120_42
# BB#31:                                # %for.inc.141
	leaq	104(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#32:                                # %if.end.92.1
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#33:                                # %if.end.98.1
	leaq	120(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#34:                                # %if.end.104.1
	movq	104(%rsp), %rax
	movq	%rax, (%rsp)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	112(%rsp), %xmm0
	movd	%rax, %xmm2
	movsd	.LCPI120_0(%rip), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	callq	pow
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	40(%r14), %rdi
	leaq	(%rsp), %rdx
	movl	$5, %esi
	callq	cmsBuildParametricToneCurve
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB120_42
# BB#35:                                # %for.inc.141.1
	leaq	128(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#36:                                # %if.end.92.2
	leaq	136(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#37:                                # %if.end.98.2
	leaq	144(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsRead15Fixed16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#38:                                # %if.end.104.2
	movq	128(%rsp), %rax
	movq	%rax, (%rsp)
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	136(%rsp), %xmm0
	movd	%rax, %xmm2
	movsd	.LCPI120_0(%rip), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	callq	pow
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	40(%r14), %rdi
	leaq	(%rsp), %rdx
	movl	$5, %esi
	callq	cmsBuildParametricToneCurve
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB120_42
# BB#39:                                # %for.inc.141.2
	movl	$1, (%r15)
	jmp	.LBB120_43
.LBB120_3:                              # %if.end.3
	testl	%ecx, %ecx
	jne	.LBB120_40
# BB#4:                                 # %sw.bb
	leaq	(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#5:                                 # %if.end.7
	movzwl	(%rsp), %ecx
	cmpl	$3, %ecx
	jne	.LBB120_6
# BB#7:                                 # %if.end.13
	leaq	80(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#8:                                 # %if.end.17
	leaq	162(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#9:                                 # %if.end.21
	movzwl	80(%rsp), %esi
	cmpl	$256, %esi              # imm = 0x100
	jne	.LBB120_13
# BB#10:                                # %land.lhs.true
	cmpl	$1576, %ebp             # imm = 0x628
	jne	.LBB120_13
# BB#11:                                # %land.lhs.true
	movzwl	162(%rsp), %eax
	movzwl	%ax, %eax
	cmpl	$1, %eax
	jne	.LBB120_13
# BB#12:                                # %if.then.31
	movw	$2, 162(%rsp)
.LBB120_13:                             # %for.cond.preheader
	movq	40(%r14), %rdi
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB120_42
# BB#14:                                # %if.end.43
	movzwl	162(%rsp), %ecx
	cmpl	$2, %ecx
	jne	.LBB120_15
# BB#20:                                # %sw.bb.63
	movzwl	80(%rsp), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB120_42
# BB#21:                                # %sw.bb.63.for.inc.74_crit_edge
	movzwl	80(%rsp), %eax
	jmp	.LBB120_22
.LBB120_40:                             # %sw.default.147
	movq	40(%r14), %rdi
	movl	$8, %esi
	movl	$.L.str.35, %edx
	jmp	.LBB120_41
.LBB120_6:                              # %if.then.10
	movq	40(%r14), %rdi
	movl	$8, %esi
	movl	$.L.str.33, %edx
.LBB120_41:                             # %Error
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB120_42:                             # %Error
	movq	%rbx, %rdi
	callq	cmsFreeToneCurveTriple
	movq	40(%r14), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%ebx, %ebx
.LBB120_43:                             # %cleanup.151
	movq	%rbx, %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB120_15:                             # %if.end.43
	cmpl	$1, %ecx
	jne	.LBB120_57
# BB#16:                                # %for.cond.46.preheader
	xorl	%ebp, %ebp
	cmpw	$0, 80(%rsp)
	movl	$0, %eax
	je	.LBB120_22
# BB#17:
	leaq	161(%rsp), %r13
.LBB120_18:                             # %for.body.50
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB120_18 Depth=1
	movzbl	161(%rsp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ebp, %eax
	movq	(%rbx), %rdx
	movq	48(%rdx), %rdx
	movw	%cx, (%rdx,%rax,2)
	incl	%ebp
	movzwl	80(%rsp), %eax
	cmpl	%eax, %ebp
	jb	.LBB120_18
.LBB120_22:                             # %for.inc.74
	movq	40(%r14), %rdi
	movzwl	%ax, %esi
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB120_42
# BB#23:                                # %if.end.43.1
	movzwl	162(%rsp), %ecx
	cmpl	$1, %ecx
	jne	.LBB120_24
# BB#44:                                # %for.cond.46.preheader.1
	xorl	%ebp, %ebp
	cmpw	$0, 80(%rsp)
	movl	$0, %eax
	je	.LBB120_48
# BB#45:
	leaq	161(%rsp), %r13
.LBB120_46:                             # %for.body.50.1
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#47:                                # %for.inc.1
                                        #   in Loop: Header=BB120_46 Depth=1
	movzbl	161(%rsp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ebp, %eax
	movq	8(%rbx), %rdx
	movq	48(%rdx), %rdx
	movw	%cx, (%rdx,%rax,2)
	incl	%ebp
	movzwl	80(%rsp), %eax
	cmpl	%eax, %ebp
	jb	.LBB120_46
	jmp	.LBB120_48
.LBB120_24:                             # %if.end.43.1
	cmpl	$2, %ecx
	jne	.LBB120_57
# BB#25:                                # %sw.bb.63.1
	movzwl	80(%rsp), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB120_42
# BB#26:                                # %sw.bb.63.1.for.inc.74.1_crit_edge
	movzwl	80(%rsp), %eax
.LBB120_48:                             # %for.inc.74.1
	movq	40(%r14), %rdi
	movzwl	%ax, %esi
	xorl	%edx, %edx
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB120_42
# BB#49:                                # %if.end.43.2
	movzwl	162(%rsp), %ecx
	cmpl	$1, %ecx
	jne	.LBB120_50
# BB#52:                                # %for.cond.46.preheader.2
	cmpw	$0, 80(%rsp)
	je	.LBB120_56
# BB#53:
	xorl	%ebp, %ebp
	leaq	161(%rsp), %r13
.LBB120_54:                             # %for.body.50.2
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB120_42
# BB#55:                                # %for.inc.2
                                        #   in Loop: Header=BB120_54 Depth=1
	movzbl	161(%rsp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ebp, %eax
	movq	16(%rbx), %rdx
	movq	48(%rdx), %rdx
	movw	%cx, (%rdx,%rax,2)
	incl	%ebp
	movzwl	80(%rsp), %eax
	cmpl	%eax, %ebp
	jb	.LBB120_54
	jmp	.LBB120_56
.LBB120_50:                             # %if.end.43.2
	cmpl	$2, %ecx
	jne	.LBB120_57
# BB#51:                                # %sw.bb.63.2
	movzwl	80(%rsp), %esi
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB120_42
.LBB120_56:                             # %for.inc.74.2
	movl	$1, (%r15)
	jmp	.LBB120_43
.LBB120_57:                             # %sw.default
	movq	40(%r14), %rdi
	shll	$3, %ecx
	movl	$8, %esi
	movl	$.L.str.34, %edx
	jmp	.LBB120_41
.Lfunc_end120:
	.size	Type_vcgt_Read, .Lfunc_end120-Type_vcgt_Read
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI121_0:
	.quad	4643176031446892544     # double 255
.LCPI121_1:
	.quad	4679239875398991872     # double 65535
.LCPI121_2:
	.quad	4602678819172646912     # double 0.5
.LCPI121_3:
	.quad	-4548635898522107904    # double -32767
.LCPI121_4:
	.quad	4771563805199040512     # double 103079215104
.LCPI121_5:
	.quad	0                       # double 0
	.text
	.align	16, 0x90
	.type	Type_vcgt_Write,@function
Type_vcgt_Write:                        # @Type_vcgt_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp656:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp657:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp658:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp659:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp660:
	.cfi_def_cfa_offset 64
.Ltmp661:
	.cfi_offset %rbx, -40
.Ltmp662:
	.cfi_offset %r14, -32
.Ltmp663:
	.cfi_offset %r15, -24
.Ltmp664:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	(%r15), %rdi
	callq	cmsGetToneCurveParametricType
	cmpl	$5, %eax
	jne	.LBB121_13
# BB#1:                                 # %land.lhs.true
	movq	8(%r15), %rdi
	callq	cmsGetToneCurveParametricType
	cmpl	$5, %eax
	jne	.LBB121_13
# BB#2:                                 # %land.lhs.true.4
	movq	16(%r15), %rdi
	callq	cmsGetToneCurveParametricType
	cmpl	$5, %eax
	jne	.LBB121_13
# BB#3:                                 # %if.then
	movl	$1, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB121_22
# BB#4:                                 # %for.cond.preheader
	movq	(%r15), %rax
	movq	16(%rax), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	pow
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%r14, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#5:                                 # %if.end.33
	movq	%r14, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#6:                                 # %if.end.38
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movq	%r14, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#7:                                 # %for.cond
	movq	8(%r15), %rax
	movq	16(%rax), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	pow
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%r14, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#8:                                 # %if.end.33.1
	movq	%r14, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#9:                                 # %if.end.38.1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movq	%r14, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#10:                                # %for.cond.1
	movq	16(%r15), %rax
	movq	16(%rax), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	pow
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%r14, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#11:                                # %if.end.33.2
	movq	%r14, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#12:                                # %if.end.38.2
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movq	%r14, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.LBB121_23
.LBB121_13:                             # %if.else
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#14:                                # %if.end.47
	movl	$3, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#15:                                # %if.end.51
	movl	$256, %esi              # imm = 0x100
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#16:                                # %if.end.55
	movl	$2, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB121_22
	.align	16, 0x90
.LBB121_18:                             # %for.body.65
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI121_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI121_1(%rip), %xmm0
	addsd	.LCPI121_2(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$0, %eax
	jae	.LBB121_21
# BB#19:                                # %if.end.i
                                        #   in Loop: Header=BB121_18 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI121_1(%rip), %xmm0
	jae	.LBB121_21
# BB#20:                                # %if.end.3.i
                                        #   in Loop: Header=BB121_18 Depth=1
	addsd	.LCPI121_3(%rip), %xmm0
	addsd	.LCPI121_4(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB121_21:                             # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB121_18 Depth=1
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#17:                                # %for.cond.63
                                        #   in Loop: Header=BB121_18 Depth=1
	incl	%ebx
	cmpl	$255, %ebx
	jbe	.LBB121_18
# BB#24:                                # %for.inc.84
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB121_25:                             # %for.body.65.1
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI121_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI121_1(%rip), %xmm0
	addsd	.LCPI121_2(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$0, %eax
	jae	.LBB121_28
# BB#26:                                # %if.end.i.1
                                        #   in Loop: Header=BB121_25 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI121_1(%rip), %xmm0
	jae	.LBB121_28
# BB#27:                                # %if.end.3.i.1
                                        #   in Loop: Header=BB121_25 Depth=1
	addsd	.LCPI121_3(%rip), %xmm0
	addsd	.LCPI121_4(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB121_28:                             # %_cmsQuickSaturateWord.exit.1
                                        #   in Loop: Header=BB121_25 Depth=1
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#29:                                # %for.cond.63.1
                                        #   in Loop: Header=BB121_25 Depth=1
	incl	%ebx
	cmpl	$256, %ebx              # imm = 0x100
	jb	.LBB121_25
# BB#30:                                # %for.inc.84.1
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB121_31:                             # %for.body.65.2
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI121_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	cmsEvalToneCurveFloat
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI121_1(%rip), %xmm0
	addsd	.LCPI121_2(%rip), %xmm0
	xorl	%ebp, %ebp
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$0, %eax
	jae	.LBB121_34
# BB#32:                                # %if.end.i.2
                                        #   in Loop: Header=BB121_31 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI121_1(%rip), %xmm0
	jae	.LBB121_34
# BB#33:                                # %if.end.3.i.2
                                        #   in Loop: Header=BB121_31 Depth=1
	addsd	.LCPI121_3(%rip), %xmm0
	addsd	.LCPI121_4(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
.LBB121_34:                             # %_cmsQuickSaturateWord.exit.2
                                        #   in Loop: Header=BB121_31 Depth=1
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB121_22
# BB#35:                                # %for.cond.63.2
                                        #   in Loop: Header=BB121_31 Depth=1
	incl	%ebx
	movl	$1, %ebp
	cmpl	$256, %ebx              # imm = 0x100
	jb	.LBB121_31
.LBB121_22:                             # %cleanup.88
	movl	%ebp, %eax
.LBB121_23:                             # %cleanup.88
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Type_vcgt_Write, .Lfunc_end121-Type_vcgt_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_vcgt_Dup,@function
Type_vcgt_Dup:                          # @Type_vcgt_Dup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp665:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp666:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp667:
	.cfi_def_cfa_offset 32
.Ltmp668:
	.cfi_offset %rbx, -24
.Ltmp669:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	40(%rdi), %rdi
	movl	$3, %esi
	movl	$8, %edx
	callq	_cmsCalloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB122_2
# BB#1:                                 # %if.end
	movq	(%r14), %rdi
	callq	cmsDupToneCurve
	movq	%rax, (%rbx)
	movq	8(%r14), %rdi
	callq	cmsDupToneCurve
	movq	%rax, 8(%rbx)
	movq	16(%r14), %rdi
	callq	cmsDupToneCurve
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
.LBB122_2:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end122:
	.size	Type_vcgt_Dup, .Lfunc_end122-Type_vcgt_Dup
	.cfi_endproc

	.align	16, 0x90
	.type	Type_vcgt_Free,@function
Type_vcgt_Free:                         # @Type_vcgt_Free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp670:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp671:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp672:
	.cfi_def_cfa_offset 32
.Ltmp673:
	.cfi_offset %rbx, -24
.Ltmp674:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	cmsFreeToneCurveTriple
	movq	40(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsFree                # TAILCALL
.Lfunc_end123:
	.size	Type_vcgt_Free, .Lfunc_end123-Type_vcgt_Free
	.cfi_endproc

	.align	16, 0x90
	.type	Read8bitTables,@function
Read8bitTables:                         # @Read8bitTables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp675:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp676:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp677:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp678:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp679:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp680:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp681:
	.cfi_def_cfa_offset 224
.Ltmp682:
	.cfi_offset %rbx, -56
.Ltmp683:
	.cfi_offset %r12, -48
.Ltmp684:
	.cfi_offset %r13, -40
.Ltmp685:
	.cfi_offset %r14, -32
.Ltmp686:
	.cfi_offset %r15, -24
.Ltmp687:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r13
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	leal	-1(%r14), %eax
	xorl	%r15d, %r15d
	cmpl	$15, %eax
	ja	.LBB124_27
# BB#1:                                 # %if.end.3
	leaq	32(%rsp), %r12
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%r12, %rdi
	callq	memset
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdi
	callq	_cmsMalloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB124_27
# BB#2:                                 # %for.cond.preheader
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB124_23
# BB#3:                                 # %for.body.lr.ph
	movslq	%r14d, %r15
	xorl	%ebx, %ebx
	movq	8(%rsp), %r13           # 8-byte Reload
	.align	16, 0x90
.LBB124_4:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 32(%rsp,%rbx,8)
	testq	%rax, %rax
	je	.LBB124_10
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB124_4 Depth=1
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB124_4
# BB#6:                                 # %for.cond.15.preheader
	testl	%r14d, %r14d
	movq	24(%rsp), %rbx          # 8-byte Reload
	jle	.LBB124_23
# BB#7:                                 # %for.body.17.lr.ph
	leaq	255(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB124_8:                              # %for.body.17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB124_19 Depth 2
                                        #     Child Loop BB124_21 Depth 2
	movl	$256, %edx              # imm = 0x100
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*280(%rbx)
	cmpl	$1, %eax
	jne	.LBB124_9
# BB#16:                                # %for.cond.22.preheader
                                        #   in Loop: Header=BB124_8 Depth=1
	movq	32(%rsp,%r13,8), %rax
	movq	48(%rax), %rax
	xorl	%ecx, %ecx
	cmpq	16(%rsp), %rax          # 8-byte Folded Reload
	pxor	%xmm4, %xmm4
	ja	.LBB124_18
# BB#17:                                # %for.cond.22.preheader
                                        #   in Loop: Header=BB124_8 Depth=1
	leaq	510(%rax), %rdx
	cmpq	%rdx, %rbp
	movl	$0, %esi
	jbe	.LBB124_20
.LBB124_18:                             # %vector.body.preheader
                                        #   in Loop: Header=BB124_8 Depth=1
	xorl	%edx, %edx
	.align	16, 0x90
.LBB124_19:                             # %vector.body
                                        #   Parent Loop BB124_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%rdx), %xmm0      # xmm0 = mem[0],zero
	movq	8(%rbp,%rdx), %xmm1     # xmm1 = mem[0],zero
	punpcklbw	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	movdqa	%xmm0, %xmm2
	psllw	$8, %xmm2
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	por	%xmm0, %xmm2
	por	%xmm1, %xmm3
	movdqu	%xmm2, (%rax,%rdx,2)
	movdqu	%xmm3, 16(%rax,%rdx,2)
	movq	16(%rbp,%rdx), %xmm0    # xmm0 = mem[0],zero
	movq	24(%rbp,%rdx), %xmm1    # xmm1 = mem[0],zero
	punpcklbw	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	punpcklbw	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	movdqa	%xmm0, %xmm2
	psllw	$8, %xmm2
	movdqa	%xmm1, %xmm3
	psllw	$8, %xmm3
	por	%xmm0, %xmm2
	por	%xmm1, %xmm3
	movdqu	%xmm2, 32(%rax,%rdx,2)
	movdqu	%xmm3, 48(%rax,%rdx,2)
	addq	$32, %rdx
	movb	$1, %sil
	cmpq	$256, %rdx              # imm = 0x100
	movl	$256, %ecx              # imm = 0x100
	jne	.LBB124_19
.LBB124_20:                             # %middle.block
                                        #   in Loop: Header=BB124_8 Depth=1
	testb	%sil, %sil
	jne	.LBB124_22
	.align	16, 0x90
.LBB124_21:                             # %for.body.24
                                        #   Parent Loop BB124_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp,%rcx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, (%rax,%rcx,2)
	movzbl	1(%rbp,%rcx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 2(%rax,%rcx,2)
	addq	$2, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB124_21
.LBB124_22:                             # %for.inc.39
                                        #   in Loop: Header=BB124_8 Depth=1
	incq	%r13
	cmpq	%r15, %r13
	jl	.LBB124_8
.LBB124_23:                             # %for.end.41
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	leaq	32(%rsp), %rbx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	cmsStageAllocToneCurves
	movl	$1, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB124_10
# BB#24:                                # %for.cond.47.preheader
	testl	%r14d, %r14d
	jle	.LBB124_26
	.align	16, 0x90
.LBB124_25:                             # %for.body.50
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	cmsFreeToneCurve
	addq	$8, %rbx
	decl	%r14d
	jne	.LBB124_25
.LBB124_26:
	movl	$1, %r15d
	jmp	.LBB124_27
.LBB124_9:
	movq	8(%rsp), %r13           # 8-byte Reload
.LBB124_10:                             # %Error
	testl	%r14d, %r14d
	movl	$0, %r15d
	jle	.LBB124_14
	.align	16, 0x90
.LBB124_11:                             # %for.body.59
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB124_13
# BB#12:                                # %if.then.63
                                        #   in Loop: Header=BB124_11 Depth=1
	callq	cmsFreeToneCurve
.LBB124_13:                             # %for.inc.67
                                        #   in Loop: Header=BB124_11 Depth=1
	addq	$8, %r12
	decl	%r14d
	jne	.LBB124_11
.LBB124_14:                             # %for.end.69
	testq	%rbp, %rbp
	je	.LBB124_27
# BB#15:                                # %if.then.71
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
.LBB124_27:                             # %cleanup
	movl	%r15d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	Read8bitTables, .Lfunc_end124-Read8bitTables
	.cfi_endproc

	.align	16, 0x90
	.type	Write8bitTables,@function
Write8bitTables:                        # @Write8bitTables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp688:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp689:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp690:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp691:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp692:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp693:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp694:
	.cfi_def_cfa_offset 80
.Ltmp695:
	.cfi_offset %rbx, -56
.Ltmp696:
	.cfi_offset %r12, -48
.Ltmp697:
	.cfi_offset %r13, -40
.Ltmp698:
	.cfi_offset %r14, -32
.Ltmp699:
	.cfi_offset %r15, -24
.Ltmp700:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rsi, %r12
	movl	$1, %r15d
	testl	%edx, %edx
	je	.LBB125_17
# BB#1:                                 # %for.body.lr.ph
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	%edx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
.LBB125_2:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB125_13 Depth 2
                                        #     Child Loop BB125_11 Depth 2
	testq	%r13, %r13
	je	.LBB125_16
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB125_2 Depth=1
	movq	8(%r13), %rax
	movq	(%rax,%rbx,8), %rax
	movl	40(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB125_4
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB125_2 Depth=1
	movq	48(%rax), %rax
	cmpw	$0, (%rax)
	jne	.LBB125_9
# BB#8:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB125_2 Depth=1
	movzwl	2(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$0, %ebp
	jne	.LBB125_9
	.align	16, 0x90
.LBB125_11:                             # %for.body.21
                                        #   Parent Loop BB125_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%bpl, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB125_12
# BB#10:                                # %for.cond.18
                                        #   in Loop: Header=BB125_11 Depth=2
	incl	%ebp
	cmpl	$255, %ebp
	jle	.LBB125_11
	jmp	.LBB125_16
	.align	16, 0x90
.LBB125_4:                              # %if.then
                                        #   in Loop: Header=BB125_2 Depth=1
	cmpl	$256, %ecx              # imm = 0x100
	jne	.LBB125_9
# BB#5:                                 # %if.end.50.preheader
                                        #   in Loop: Header=BB125_2 Depth=1
	movq	48(%rax), %rax
	movzwl	(%rax), %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	movl	$1, %r14d
	je	.LBB125_6
	.align	16, 0x90
.LBB125_13:                             # %for.cond.33
                                        #   Parent Loop BB125_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$255, %r14
	jg	.LBB125_16
# BB#14:                                # %for.cond.33.if.end.50_crit_edge
                                        #   in Loop: Header=BB125_13 Depth=2
	movq	8(%r13), %rax
	movq	(%rax,%rbx,8), %rax
	movq	48(%rax), %rax
	movzwl	(%rax,%r14,2), %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	incq	%r14
	testl	%eax, %eax
	jne	.LBB125_13
	jmp	.LBB125_15
	.align	16, 0x90
.LBB125_16:                             # %for.inc.61
                                        #   in Loop: Header=BB125_2 Depth=1
	incq	%rbx
	cmpq	16(%rsp), %rbx          # 8-byte Folded Reload
	jb	.LBB125_2
	jmp	.LBB125_17
.LBB125_12:
	xorl	%r15d, %r15d
	jmp	.LBB125_17
.LBB125_15:
	xorl	%r15d, %r15d
	jmp	.LBB125_17
.LBB125_9:                              # %if.then.31
	xorl	%r15d, %r15d
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%eax, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	cmsSignalError
	jmp	.LBB125_17
.LBB125_6:
	xorl	%r15d, %r15d
.LBB125_17:                             # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end125:
	.size	Write8bitTables, .Lfunc_end125-Write8bitTables
	.cfi_endproc

	.align	16, 0x90
	.type	Read16bitTables,@function
Read16bitTables:                        # @Read16bitTables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp701:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp702:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp703:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp704:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp705:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp706:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp707:
	.cfi_def_cfa_offset 208
.Ltmp708:
	.cfi_offset %rbx, -56
.Ltmp709:
	.cfi_offset %r12, -48
.Ltmp710:
	.cfi_offset %r13, -40
.Ltmp711:
	.cfi_offset %r14, -32
.Ltmp712:
	.cfi_offset %r15, -24
.Ltmp713:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	%ecx, %ebx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movl	$1, %r12d
	testl	%ebp, %ebp
	jle	.LBB126_15
# BB#1:                                 # %if.end
	xorl	%r12d, %r12d
	cmpl	$16, %ebx
	jg	.LBB126_15
# BB#2:                                 # %if.end
	cmpl	$2, %ebp
	jl	.LBB126_15
# BB#3:                                 # %if.end.6
	movq	%rdx, (%rsp)            # 8-byte Spill
	leaq	16(%rsp), %r14
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%r14, %rdi
	callq	memset
	testl	%ebx, %ebx
	jle	.LBB126_12
# BB#4:                                 # %for.body.lr.ph
	movslq	%ebx, %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB126_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	cmsBuildTabulatedToneCurve16
	movq	%rax, 16(%rsp,%r15,8)
	testq	%rax, %rax
	je	.LBB126_8
# BB#5:                                 # %if.end.13
                                        #   in Loop: Header=BB126_7 Depth=1
	movq	48(%rax), %rdx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%ebp, %esi
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB126_8
# BB#6:                                 # %for.cond
                                        #   in Loop: Header=BB126_7 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	jl	.LBB126_7
.LBB126_12:                             # %for.end
	leaq	16(%rsp), %rbp
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	callq	cmsStageAllocToneCurves
	movl	$1, %r12d
	movl	$1, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB126_8
# BB#13:                                # %for.cond.25.preheader
	testl	%ebx, %ebx
	jle	.LBB126_15
	.align	16, 0x90
.LBB126_14:                             # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	callq	cmsFreeToneCurve
	addq	$8, %rbp
	decl	%ebx
	jne	.LBB126_14
	jmp	.LBB126_15
.LBB126_8:                              # %for.cond.33.preheader
	xorl	%r12d, %r12d
	testl	%ebx, %ebx
	jle	.LBB126_15
	.align	16, 0x90
.LBB126_9:                              # %for.body.35
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB126_11
# BB#10:                                # %if.then.39
                                        #   in Loop: Header=BB126_9 Depth=1
	callq	cmsFreeToneCurve
.LBB126_11:                             # %for.inc.43
                                        #   in Loop: Header=BB126_9 Depth=1
	addq	$8, %r14
	decl	%ebx
	jne	.LBB126_9
.LBB126_15:                             # %cleanup
	movl	%r12d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end126:
	.size	Read16bitTables, .Lfunc_end126-Read16bitTables
	.cfi_endproc

	.align	16, 0x90
	.type	ReadEmbeddedText,@function
ReadEmbeddedText:                       # @ReadEmbeddedText
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp714:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp715:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp716:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp717:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp718:
	.cfi_def_cfa_offset 48
.Ltmp719:
	.cfi_offset %rbx, -40
.Ltmp720:
	.cfi_offset %r14, -32
.Ltmp721:
	.cfi_offset %r15, -24
.Ltmp722:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	%rbp, %rdi
	callq	_cmsReadTypeBase
	movl	%eax, %ecx
	cmpl	$1684370275, %ecx       # imm = 0x64657363
	je	.LBB127_6
# BB#1:                                 # %entry
	cmpl	$1835824483, %ecx       # imm = 0x6D6C7563
	jne	.LBB127_2
# BB#9:                                 # %sw.bb.9
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB127_11
# BB#10:                                # %if.then.11
	callq	cmsMLUfree
.LBB127_11:                             # %if.end.12
	leaq	4(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	Type_MLU_Read
	jmp	.LBB127_12
.LBB127_6:                              # %sw.bb.2
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB127_8
# BB#7:                                 # %if.then.4
	callq	cmsMLUfree
.LBB127_8:                              # %if.end.5
	leaq	4(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	Type_Text_Description_Read
	jmp	.LBB127_12
.LBB127_2:                              # %entry
	xorl	%eax, %eax
	cmpl	$1952807028, %ecx       # imm = 0x74657874
	jne	.LBB127_13
# BB#3:                                 # %sw.bb
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB127_5
# BB#4:                                 # %if.then
	callq	cmsMLUfree
.LBB127_5:                              # %if.end
	leaq	4(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	Type_Text_Read
.LBB127_12:                             # %cleanup
	movq	%rax, (%rbx)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.LBB127_13:                             # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end127:
	.size	ReadEmbeddedText, .Lfunc_end127-ReadEmbeddedText
	.cfi_endproc

	.align	16, 0x90
	.type	ReadSetOfCurves,@function
ReadSetOfCurves:                        # @ReadSetOfCurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp723:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp724:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp725:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp726:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp727:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp728:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp729:
	.cfi_def_cfa_offset 208
.Ltmp730:
	.cfi_offset %rbx, -56
.Ltmp731:
	.cfi_offset %r12, -48
.Ltmp732:
	.cfi_offset %r13, -40
.Ltmp733:
	.cfi_offset %r14, -32
.Ltmp734:
	.cfi_offset %r15, -24
.Ltmp735:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	xorl	%r12d, %r12d
	cmpl	$16, %r14d
	ja	.LBB128_28
# BB#1:                                 # %if.end
	movq	%r15, %rdi
	movl	%edx, %esi
	callq	*288(%r15)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB128_28
# BB#2:                                 # %for.cond.preheader
	testl	%r14d, %r14d
	je	.LBB128_24
# BB#3:                                 # %for.body.preheader
	movabsq	$8589934588, %r8        # imm = 0x1FFFFFFFC
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%edi, %edi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB128_11
# BB#4:                                 # %vector.body.preheader
	movq	%rbx, %r9
	leaq	1(%rcx), %rsi
	andq	%r8, %rsi
	addq	$-4, %rsi
	movl	%esi, %edi
	shrl	$2, %edi
	incl	%edi
	xorl	%ebp, %ebp
	testb	$3, %dil
	je	.LBB128_7
# BB#5:                                 # %vector.body.prol.preheader
	movl	%r14d, %ebx
	andl	$12, %ebx
	addl	$-4, %ebx
	shrl	$2, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%ebp, %ebp
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB128_6:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, (%rsp,%rbp,8)
	movaps	%xmm0, 16(%rsp,%rbp,8)
	addq	$4, %rbp
	incq	%rbx
	jne	.LBB128_6
.LBB128_7:                              # %vector.body.preheader.split
	cmpq	$12, %rsi
	jb	.LBB128_10
# BB#8:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbp, %rcx
	leaq	112(%rsp,%rbp,8), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB128_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-16, %rcx
	jne	.LBB128_9
.LBB128_10:
	movq	%rdx, %rdi
	movq	%r9, %rbx
.LBB128_11:                             # %middle.block
	cmpq	%rdi, %rax
	je	.LBB128_14
# BB#12:                                # %for.body.preheader53
	leaq	(%rsp,%rdi,8), %rax
	movl	%r14d, %ecx
	subl	%edi, %ecx
	.align	16, 0x90
.LBB128_13:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB128_13
.LBB128_14:                             # %for.cond.4.preheader
	testl	%r14d, %r14d
	je	.LBB128_24
# BB#15:                                # %for.body.6.lr.ph
	movl	%r14d, %r13d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB128_16:                             # %for.body.6
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_cmsReadTypeBase
	cmpl	$1885434465, %eax       # imm = 0x70617261
	jne	.LBB128_17
# BB#20:                                # %sw.bb.2.i
                                        #   in Loop: Header=BB128_16 Depth=1
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	148(%rsp), %rdx
	callq	Type_ParametricCurve_Read
	jmp	.LBB128_21
	.align	16, 0x90
.LBB128_17:                             # %for.body.6
                                        #   in Loop: Header=BB128_16 Depth=1
	cmpl	$1668641398, %eax       # imm = 0x63757276
	jne	.LBB128_19
# BB#18:                                # %sw.bb.i
                                        #   in Loop: Header=BB128_16 Depth=1
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	148(%rsp), %rdx
	callq	Type_Curve_Read
.LBB128_21:                             # %ReadEmbeddedCurve.exit
                                        #   in Loop: Header=BB128_16 Depth=1
	movq	%rax, (%rsp,%rbp,8)
	testq	%rax, %rax
	je	.LBB128_25
# BB#22:                                # %if.end.14
                                        #   in Loop: Header=BB128_16 Depth=1
	movq	%r15, %rdi
	callq	_cmsReadAlignment
	testl	%eax, %eax
	je	.LBB128_25
# BB#23:                                # %for.inc.19
                                        #   in Loop: Header=BB128_16 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB128_16
.LBB128_24:                             # %for.end.21
	movq	40(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	%r14d, %esi
	callq	cmsStageAllocToneCurves
	movq	%rax, %r12
.LBB128_25:                             # %Error
	testl	%r14d, %r14d
	je	.LBB128_28
# BB#26:
	leaq	(%rsp), %rbx
	.align	16, 0x90
.LBB128_27:                             # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	callq	cmsFreeToneCurve
	addq	$8, %rbx
	decl	%r14d
	jne	.LBB128_27
.LBB128_28:                             # %cleanup
	movq	%r12, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB128_19:                             # %ReadEmbeddedCurve.exit.thread
	leaq	143(%rsp), %r15
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	_cmsTagSignature2String
	movq	40(%rbx), %rdi
	xorl	%r12d, %r12d
	movl	$8, %esi
	movl	$.L.str.17, %edx
	xorl	%eax, %eax
	movq	%r15, %rcx
	callq	cmsSignalError
	movl	%ebp, %eax
	movq	$0, (%rsp,%rax,8)
	jmp	.LBB128_25
.Lfunc_end128:
	.size	ReadSetOfCurves, .Lfunc_end128-ReadSetOfCurves
	.cfi_endproc

	.align	16, 0x90
	.type	ReadCLUT,@function
ReadCLUT:                               # @ReadCLUT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp736:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp737:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp738:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp739:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp740:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp741:
	.cfi_def_cfa_offset 144
.Ltmp742:
	.cfi_offset %rbx, -48
.Ltmp743:
	.cfi_offset %r12, -40
.Ltmp744:
	.cfi_offset %r14, -32
.Ltmp745:
	.cfi_offset %r15, -24
.Ltmp746:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movl	%edx, %esi
	callq	*288(%rbx)
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB129_35
# BB#1:                                 # %if.end
	leaq	80(%rsp), %rsi
	movl	$16, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	*280(%rbx)
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	jne	.LBB129_35
# BB#2:                                 # %for.cond.preheader
	movzbl	80(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#3:                                 # %if.end.8
	movl	%eax, 16(%rsp)
	movzbl	81(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#4:                                 # %if.end.8.1
	movl	%eax, 20(%rsp)
	movzbl	82(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#5:                                 # %if.end.8.2
	movl	%eax, 24(%rsp)
	movzbl	83(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#6:                                 # %if.end.8.3
	movl	%eax, 28(%rsp)
	movzbl	84(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#7:                                 # %if.end.8.4
	movl	%eax, 32(%rsp)
	movzbl	85(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#8:                                 # %if.end.8.5
	movl	%eax, 36(%rsp)
	movzbl	86(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#9:                                 # %if.end.8.6
	movl	%eax, 40(%rsp)
	movzbl	87(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#10:                                # %if.end.8.7
	movl	%eax, 44(%rsp)
	movzbl	88(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#11:                                # %if.end.8.8
	movl	%eax, 48(%rsp)
	movzbl	89(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#12:                                # %if.end.8.9
	movl	%eax, 52(%rsp)
	movzbl	90(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#13:                                # %if.end.8.10
	movl	%eax, 56(%rsp)
	movzbl	91(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#14:                                # %if.end.8.11
	movl	%eax, 60(%rsp)
	movzbl	92(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#15:                                # %if.end.8.12
	movl	%eax, 64(%rsp)
	movzbl	93(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#16:                                # %if.end.8.13
	movl	%eax, 68(%rsp)
	movzbl	94(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#17:                                # %if.end.8.14
	movl	%eax, 72(%rsp)
	movzbl	95(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB129_35
# BB#18:                                # %if.end.8.15
	movl	%eax, 76(%rsp)
	leaq	15(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB129_35
# BB#19:                                # %if.end.17
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB129_35
# BB#20:                                # %if.end.21
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB129_35
# BB#21:                                # %if.end.25
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt8Number
	testl	%eax, %eax
	je	.LBB129_35
# BB#22:                                # %if.end.29
	movq	40(%r14), %rdi
	xorl	%ebp, %ebp
	leaq	16(%rsp), %rsi
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	cmsStageAllocCLut16bitGranular
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB129_35
# BB#23:                                # %if.end.35
	movq	48(%r15), %r12
	movzbl	15(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB129_24
# BB#30:                                # %if.then.63
	movl	16(%r12), %esi
	movq	(%r12), %rdx
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Array
	testl	%eax, %eax
	je	.LBB129_33
# BB#31:
	movq	%r15, %rbp
	jmp	.LBB129_35
.LBB129_24:                             # %if.end.35
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB129_32
# BB#25:                                # %if.then.40
	cmpl	$0, 16(%r12)
	je	.LBB129_29
# BB#26:                                # %for.body.44.lr.ph
	xorl	%ebp, %ebp
	leaq	14(%rsp), %r14
.LBB129_27:                             # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*280(%rbx)
	cmpl	$1, %eax
	jne	.LBB129_34
# BB#28:                                # %if.end.50
                                        #   in Loop: Header=BB129_27 Depth=1
	movzbl	14(%rsp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ebp, %eax
	movq	(%r12), %rdx
	movw	%cx, (%rdx,%rax,2)
	incl	%ebp
	cmpl	16(%r12), %ebp
	jb	.LBB129_27
.LBB129_29:                             # %cleanup
	movq	%r15, %rbp
	jmp	.LBB129_35
.LBB129_32:                             # %if.else.71
	movq	%r15, %rdi
	callq	cmsStageFree
	movq	40(%r14), %rdi
	movzbl	15(%rsp), %ecx
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.18, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB129_35
.LBB129_33:                             # %if.then.69
	movq	%r15, %rdi
	callq	cmsStageFree
.LBB129_34:                             # %cleanup.76.critedge
	xorl	%ebp, %ebp
.LBB129_35:                             # %cleanup.76
	movq	%rbp, %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end129:
	.size	ReadCLUT, .Lfunc_end129-ReadCLUT
	.cfi_endproc

	.align	16, 0x90
	.type	ReadMatrix,@function
ReadMatrix:                             # @ReadMatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp747:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp748:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp749:
	.cfi_def_cfa_offset 128
.Ltmp750:
	.cfi_offset %rbx, -24
.Ltmp751:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movl	%edx, %esi
	callq	*288(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#1:                                 # %if.end
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#2:                                 # %if.end.4
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#3:                                 # %if.end.9
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#4:                                 # %if.end.14
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#5:                                 # %if.end.19
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#6:                                 # %if.end.24
	leaq	72(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#7:                                 # %if.end.29
	leaq	80(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#8:                                 # %if.end.34
	leaq	88(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#9:                                 # %if.end.39
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#10:                                # %if.end.44
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#11:                                # %if.end.49
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#12:                                # %if.end.54
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsRead15Fixed16Number
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB130_14
# BB#13:                                # %if.end.59
	movq	40(%r14), %rdi
	leaq	32(%rsp), %rcx
	leaq	(%rsp), %r8
	movl	$3, %esi
	movl	$3, %edx
	callq	cmsStageAllocMatrix
.LBB130_14:                             # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end130:
	.size	ReadMatrix, .Lfunc_end130-ReadMatrix
	.cfi_endproc

	.align	16, 0x90
	.type	WriteSetOfCurves,@function
WriteSetOfCurves:                       # @WriteSetOfCurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp752:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp753:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp754:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp755:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp756:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp757:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp758:
	.cfi_def_cfa_offset 80
.Ltmp759:
	.cfi_offset %rbx, -56
.Ltmp760:
	.cfi_offset %r12, -48
.Ltmp761:
	.cfi_offset %r13, -40
.Ltmp762:
	.cfi_offset %r14, -32
.Ltmp763:
	.cfi_offset %r15, -24
.Ltmp764:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rbp, %rdi
	callq	cmsStageOutputChannels
	movl	%eax, %ebx
	movq	%rbp, %rdi
	callq	_cmsStageGetPtrToCurveSet
	movq	%rax, %r15
	movl	$1, %ebp
	testl	%ebx, %ebx
	je	.LBB131_15
# BB#1:                                 # %for.body.lr.ph
	movl	%ebx, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB131_3:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%r14,8), %rax
	movl	8(%rax), %ecx
	movl	$1668641398, %ebx       # imm = 0x63757276
	testl	%ecx, %ecx
	je	.LBB131_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB131_3 Depth=1
	cmpl	$2, %ecx
	jne	.LBB131_5
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB131_3 Depth=1
	movq	16(%rax), %rax
	cmpl	$0, 120(%rax)
	jne	.LBB131_7
	jmp	.LBB131_8
	.align	16, 0x90
.LBB131_5:                              # %for.body.if.else_crit_edge
                                        #   in Loop: Header=BB131_3 Depth=1
	movq	16(%rax), %rax
.LBB131_7:                              # %if.else
                                        #   in Loop: Header=BB131_3 Depth=1
	movl	8(%rax), %ebx
	sarl	$31, %ebx
	andl	$-216793067, %ebx       # imm = 0xFFFFFFFFF3140015
	addl	$1885434465, %ebx       # imm = 0x70617261
.LBB131_8:                              # %if.end.19
                                        #   in Loop: Header=BB131_3 Depth=1
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	_cmsWriteTypeBase
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB131_15
# BB#9:                                 # %if.end.22
                                        #   in Loop: Header=BB131_3 Depth=1
	cmpl	$1885434465, %ebx       # imm = 0x70617261
	jne	.LBB131_10
# BB#12:                                # %sw.bb.29
                                        #   in Loop: Header=BB131_3 Depth=1
	movq	(%r15,%r14,8), %rdx
	movl	$1, %ecx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
	callq	Type_ParametricCurve_Write
	jmp	.LBB131_13
	.align	16, 0x90
.LBB131_10:                             # %if.end.22
                                        #   in Loop: Header=BB131_3 Depth=1
	cmpl	$1668641398, %ebx       # imm = 0x63757276
	jne	.LBB131_16
# BB#11:                                # %sw.bb
                                        #   in Loop: Header=BB131_3 Depth=1
	movq	(%r15,%r14,8), %rdx
	movl	$1, %ecx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
	callq	Type_Curve_Write
.LBB131_13:                             # %sw.bb.29
                                        #   in Loop: Header=BB131_3 Depth=1
	testl	%eax, %eax
	je	.LBB131_15
# BB#14:                                # %sw.epilog
                                        #   in Loop: Header=BB131_3 Depth=1
	movq	%r12, %rdi
	callq	_cmsWriteAlignment
	testl	%eax, %eax
	je	.LBB131_15
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB131_3 Depth=1
	incq	%r14
	movl	$1, %ebp
	cmpq	%r13, %r14
	jb	.LBB131_3
	jmp	.LBB131_15
.LBB131_16:                             # %sw.default
	leaq	19(%rsp), %rbx
	movl	$1885434465, %esi       # imm = 0x70617261
	movq	%rbx, %rdi
	callq	_cmsTagSignature2String
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	40(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.17, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	cmsSignalError
.LBB131_15:                             # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end131:
	.size	WriteSetOfCurves, .Lfunc_end131-WriteSetOfCurves
	.cfi_endproc

	.align	16, 0x90
	.type	WriteCLUT,@function
WriteCLUT:                              # @WriteCLUT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp765:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp766:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp767:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp768:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp769:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp770:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp771:
	.cfi_def_cfa_offset 80
.Ltmp772:
	.cfi_offset %rbx, -56
.Ltmp773:
	.cfi_offset %r12, -48
.Ltmp774:
	.cfi_offset %r13, -40
.Ltmp775:
	.cfi_offset %r14, -32
.Ltmp776:
	.cfi_offset %r15, -24
.Ltmp777:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	48(%rcx), %rbp
	cmpl	$0, 20(%rbp)
	je	.LBB132_2
# BB#1:                                 # %if.then
	movq	40(%r14), %rdi
	xorl	%r13d, %r13d
	movl	$13, %esi
	movl	$.L.str.20, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB132_18
.LBB132_2:                              # %if.end
	leaq	(%rsp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movq	8(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB132_4
	.align	16, 0x90
.LBB132_3:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movb	20(%rax,%rcx,4), %al
	movb	%al, (%rsp,%rcx)
	incl	%ebx
	movq	8(%rbp), %rax
	cmpl	12(%rax), %ebx
	jb	.LBB132_3
.LBB132_4:                              # %for.end
	leaq	(%rsp), %rdx
	movl	$16, %esi
	movq	%r12, %rdi
	callq	*312(%r12)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB132_18
# BB#5:                                 # %if.end.8
	movzbl	%r15b, %r15d
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB132_18
# BB#6:                                 # %if.end.12
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB132_18
# BB#7:                                 # %if.end.16
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB132_18
# BB#8:                                 # %if.end.20
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB132_18
# BB#9:                                 # %if.end.24
	cmpl	$2, %r15d
	jne	.LBB132_10
# BB#16:                                # %if.then.47
	movl	16(%rbp), %esi
	movq	(%rbp), %rdx
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Array
	testl	%eax, %eax
	jne	.LBB132_17
	jmp	.LBB132_18
.LBB132_10:                             # %if.end.24
	cmpl	$1, %r15d
	jne	.LBB132_15
# BB#11:                                # %for.cond.29.preheader
	cmpl	$0, 16(%rbp)
	je	.LBB132_17
# BB#12:                                # %for.body.32.lr.ph
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
.LBB132_14:                             # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt8Number
	testl	%eax, %eax
	je	.LBB132_18
# BB#13:                                # %for.cond.29
                                        #   in Loop: Header=BB132_14 Depth=1
	incl	%ebx
	cmpl	16(%rbp), %ebx
	jb	.LBB132_14
.LBB132_17:                             # %if.end.59
	movq	%r12, %rdi
	callq	_cmsWriteAlignment
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r13d
	jmp	.LBB132_18
.LBB132_15:                             # %if.else.55
	movq	40(%r14), %rdi
	xorl	%r13d, %r13d
	movl	$8, %esi
	movl	$.L.str.18, %edx
	xorl	%eax, %eax
	movl	%r15d, %ecx
	callq	cmsSignalError
.LBB132_18:                             # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end132:
	.size	WriteCLUT, .Lfunc_end132-WriteCLUT
	.cfi_endproc

	.align	16, 0x90
	.type	WriteMatrix,@function
WriteMatrix:                            # @WriteMatrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp778:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp779:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp780:
	.cfi_def_cfa_offset 32
.Ltmp781:
	.cfi_offset %rbx, -32
.Ltmp782:
	.cfi_offset %r14, -24
.Ltmp783:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	48(%rsi), %rbp
	movq	(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	_cmsWrite15Fixed16Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB133_18
# BB#1:                                 # %if.end
	movq	(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#2:                                 # %if.end.6
	movq	(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#3:                                 # %if.end.12
	movq	(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#4:                                 # %if.end.18
	movq	(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#5:                                 # %if.end.24
	movq	(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#6:                                 # %if.end.30
	movq	(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#7:                                 # %if.end.36
	movq	(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#8:                                 # %if.end.42
	movq	(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#9:                                 # %if.end.48
	movq	8(%rbp), %rax
	testq	%rax, %rax
	je	.LBB133_13
# BB#10:                                # %if.then.49
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#11:                                # %if.end.55
	movq	8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#12:                                # %if.end.61
	movq	8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	jmp	.LBB133_16
.LBB133_13:                             # %if.else
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#14:                                # %if.end.71
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#15:                                # %if.end.75
	xorpd	%xmm0, %xmm0
.LBB133_16:                             # %if.end.75
	movq	%rbx, %rdi
	callq	_cmsWrite15Fixed16Number
	testl	%eax, %eax
	je	.LBB133_18
# BB#17:                                # %if.end.80
	movl	$1, %r14d
.LBB133_18:                             # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end133:
	.size	WriteMatrix, .Lfunc_end133-WriteMatrix
	.cfi_endproc

	.align	16, 0x90
	.type	ReadCountAndSting,@function
ReadCountAndSting:                      # @ReadCountAndSting
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp784:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp785:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp786:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp787:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp788:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp789:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp790:
	.cfi_def_cfa_offset 80
.Ltmp791:
	.cfi_offset %rbx, -56
.Ltmp792:
	.cfi_offset %r12, -48
.Ltmp793:
	.cfi_offset %r13, -40
.Ltmp794:
	.cfi_offset %r14, -32
.Ltmp795:
	.cfi_offset %r15, -24
.Ltmp796:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %r14
	xorl	%r13d, %r13d
	cmpl	$4, (%rbx)
	jb	.LBB134_8
# BB#1:                                 # %if.end
	leaq	20(%rsp), %rsi
	movq	%rbp, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB134_8
# BB#2:                                 # %if.end.3
	movl	20(%rsp), %esi
	movq	%rsi, %rax
	shrq	$2, %rax
	cmpq	$1073741822, %rax       # imm = 0x3FFFFFFE
	ja	.LBB134_8
# BB#3:                                 # %if.end.8
	movl	(%rbx), %eax
	leaq	4(%rsi), %rcx
	cmpq	%rcx, %rax
	jb	.LBB134_8
# BB#4:                                 # %if.end.14
	movq	40(%r14), %rdi
	incl	%esi
	callq	_cmsMalloc
	testq	%rax, %rax
	je	.LBB134_8
# BB#5:                                 # %if.end.20
	movl	20(%rsp), %ecx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	*280(%rbp)
	cmpl	20(%rsp), %eax
	jne	.LBB134_6
# BB#7:                                 # %if.end.26
	movl	%eax, %eax
	movq	8(%rsp), %rbp           # 8-byte Reload
	movb	$0, (%rbp,%rax)
	movl	$.L.str.27, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	callq	cmsMLUsetASCII
	movq	40(%r14), %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	movl	$-4, %eax
	subl	20(%rsp), %eax
	addl	%eax, (%rbx)
	movl	$1, %r13d
	jmp	.LBB134_8
.LBB134_6:                              # %if.then.24
	movq	40(%r14), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	_cmsFree
.LBB134_8:                              # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end134:
	.size	ReadCountAndSting, .Lfunc_end134-ReadCountAndSting
	.cfi_endproc

	.align	16, 0x90
	.type	WriteCountAndSting,@function
WriteCountAndSting:                     # @WriteCountAndSting
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp797:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp798:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp799:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp800:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp801:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp802:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp803:
	.cfi_def_cfa_offset 64
.Ltmp804:
	.cfi_offset %rbx, -56
.Ltmp805:
	.cfi_offset %r12, -48
.Ltmp806:
	.cfi_offset %r13, -40
.Ltmp807:
	.cfi_offset %r14, -32
.Ltmp808:
	.cfi_offset %r15, -24
.Ltmp809:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$.L.str.27, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	cmsMLUgetASCII
	movl	%eax, %r14d
	movq	40(%r15), %rdi
	movl	%r14d, %esi
	callq	_cmsMalloc
	movq	%rax, %r12
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB135_1
# BB#2:                                 # %if.end
	movl	$.L.str.27, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	callq	cmsMLUgetASCII
	testl	%eax, %eax
	je	.LBB135_3
# BB#4:                                 # %if.end.5
	movq	%r13, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	*312(%r13)
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB135_6
# BB#5:                                 # %if.end.9
	movq	40(%r15), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	movl	$1, %eax
	jmp	.LBB135_6
.LBB135_1:
	xorl	%eax, %eax
	jmp	.LBB135_6
.LBB135_3:
	xorl	%eax, %eax
.LBB135_6:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end135:
	.size	WriteCountAndSting, .Lfunc_end135-WriteCountAndSting
	.cfi_endproc

	.align	16, 0x90
	.type	ReadPositionTable,@function
ReadPositionTable:                      # @ReadPositionTable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp810:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp811:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp812:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp813:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp814:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp815:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp816:
	.cfi_def_cfa_offset 96
.Ltmp817:
	.cfi_offset %rbx, -56
.Ltmp818:
	.cfi_offset %r12, -48
.Ltmp819:
	.cfi_offset %r13, -40
.Ltmp820:
	.cfi_offset %r14, -32
.Ltmp821:
	.cfi_offset %r15, -24
.Ltmp822:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, %r15
	xorl	%r13d, %r13d
	testq	%r15, %r15
	je	.LBB136_17
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB136_2
# BB#3:                                 # %for.cond.preheader
	testl	%ebp, %ebp
	je	.LBB136_14
# BB#4:                                 # %for.body.lr.ph
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r14, %r12
	movl	%ebp, %eax
	movl	%ebp, %r13d
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB136_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB136_15
# BB#6:                                 # %if.end.9
                                        #   in Loop: Header=BB136_5 Depth=1
	leaq	(%r12,%rbp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB136_15
# BB#7:                                 # %if.end.15
                                        #   in Loop: Header=BB136_5 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	addl	%eax, (%r15,%rbp)
	incq	%r14
	addq	$4, %rbp
	cmpq	24(%rsp), %r14          # 8-byte Folded Reload
	jb	.LBB136_5
# BB#8:                                 # %for.cond.18.preheader
	testl	%r13d, %r13d
	movq	%r12, %r14
	movq	(%rsp), %r12            # 8-byte Reload
	je	.LBB136_14
# BB#9:                                 # %for.body.20.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB136_11:                             # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %r13
	movq	%r14, %r12
	movl	(%r15,%rbp,4), %esi
	movq	%rbx, %rdi
	callq	*288(%rbx)
	testl	%eax, %eax
	je	.LBB136_15
# BB#12:                                # %if.end.26
                                        #   in Loop: Header=BB136_11 Depth=1
	movq	%r12, %r14
	movl	(%r14,%rbp,4), %r8d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%ebp, %ecx
	movq	%r13, %r12
	callq	*%r12
	testl	%eax, %eax
	je	.LBB136_13
# BB#10:                                # %for.cond.18
                                        #   in Loop: Header=BB136_11 Depth=1
	incq	%rbp
	cmpq	24(%rsp), %rbp          # 8-byte Folded Reload
	jb	.LBB136_11
.LBB136_14:                             # %if.then.41
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	movl	$1, %r13d
	jmp	.LBB136_17
.LBB136_2:                              # %if.end.47.thread
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	jmp	.LBB136_17
.LBB136_15:                             # %if.end.47
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	xorl	%r13d, %r13d
	movq	%r12, %r14
	testq	%r14, %r14
	jne	.LBB136_16
	jmp	.LBB136_17
.LBB136_13:                             # %if.end.47.thread41
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
.LBB136_16:                             # %if.then.49
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%r13d, %r13d
.LBB136_17:                             # %cleanup
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end136:
	.size	ReadPositionTable, .Lfunc_end136-ReadPositionTable
	.cfi_endproc

	.align	16, 0x90
	.type	ReadMPEElem,@function
ReadMPEElem:                            # @ReadMPEElem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp823:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp824:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp825:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp826:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp827:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp828:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp829:
	.cfi_def_cfa_offset 80
.Ltmp830:
	.cfi_offset %rbx, -56
.Ltmp831:
	.cfi_offset %r12, -48
.Ltmp832:
	.cfi_offset %r13, -40
.Ltmp833:
	.cfi_offset %r14, -32
.Ltmp834:
	.cfi_offset %r15, -24
.Ltmp835:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	40(%r15), %rdi
	movl	$11, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %rbx
	leaq	20(%rsp), %rsi
	movq	%rbp, %rdi
	callq	_cmsReadUInt32Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB137_13
# BB#1:                                 # %if.end
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB137_13
# BB#2:                                 # %if.end.5
	movl	20(%rsp), %esi
	movq	(%rbx), %rcx
	movl	$SupportedMPEtypes, %eax
	testq	%rcx, %rcx
	je	.LBB137_6
# BB#3:
	movl	$SupportedMPEtypes, %eax
	.align	16, 0x90
.LBB137_4:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, (%rcx)
	je	.LBB137_8
# BB#5:                                 # %for.inc.i
                                        #   in Loop: Header=BB137_4 Depth=1
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB137_4
	.align	16, 0x90
.LBB137_6:                              # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, (%rax)
	je	.LBB137_7
# BB#11:                                # %for.inc.12.i
                                        #   in Loop: Header=BB137_6 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB137_6
# BB#12:                                # %if.then.7
	leaq	11(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_cmsTagSignature2String
	movq	40(%r15), %rdi
	xorl	%r13d, %r13d
	movl	$8, %esi
	movl	$.L.str.28, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	cmsSignalError
	jmp	.LBB137_13
.LBB137_7:
	movq	%rax, %rcx
.LBB137_8:                              # %if.end.10
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	.LBB137_10
# BB#9:                                 # %if.then.12
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r12d, %ecx
	callq	*%rax
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cmsPipelineInsertStage
	testl	%eax, %eax
	je	.LBB137_13
.LBB137_10:                             # %if.end.19
	movl	$1, %r13d
.LBB137_13:                             # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end137:
	.size	ReadMPEElem, .Lfunc_end137-ReadMPEElem
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPEcurve_Read,@function
Type_MPEcurve_Read:                     # @Type_MPEcurve_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp836:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp837:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp838:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp839:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp840:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp841:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp842:
	.cfi_def_cfa_offset 64
.Ltmp843:
	.cfi_offset %rbx, -56
.Ltmp844:
	.cfi_offset %r12, -48
.Ltmp845:
	.cfi_offset %r13, -40
.Ltmp846:
	.cfi_offset %r14, -32
.Ltmp847:
	.cfi_offset %r15, -24
.Ltmp848:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$0, (%r15)
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %ebp
	leaq	6(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB138_11
# BB#1:                                 # %if.end
	leaq	4(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB138_11
# BB#2:                                 # %if.end.6
	movzwl	6(%rsp), %esi
	xorl	%r13d, %r13d
	movzwl	4(%rsp), %eax
	cmpl	%eax, %esi
	jne	.LBB138_11
# BB#3:                                 # %if.end.11
	movq	40(%r14), %rdi
	movl	$8, %edx
	callq	_cmsCalloc
	movq	%rax, %r12
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB138_11
# BB#4:                                 # %if.end.17
	addl	$-8, %ebp
	movzwl	6(%rsp), %edx
	movl	$ReadMPECurve, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %ecx
	movq	%r12, %r8
	callq	ReadPositionTable
	xorl	%ebx, %ebx
	testl	%eax, %eax
	movl	$0, %r13d
	je	.LBB138_6
# BB#5:                                 # %if.then.21
	movq	40(%r14), %rdi
	movzwl	6(%rsp), %esi
	movq	%r12, %rdx
	callq	cmsStageAllocToneCurves
	movq	%rax, %r13
.LBB138_6:                              # %if.end.25
	movw	6(%rsp), %ax
	testw	%ax, %ax
	je	.LBB138_10
	.align	16, 0x90
.LBB138_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movq	(%r12,%rcx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB138_9
# BB#8:                                 # %if.then.30
                                        #   in Loop: Header=BB138_7 Depth=1
	callq	cmsFreeToneCurve
	movzwl	6(%rsp), %eax
.LBB138_9:                              # %for.inc
                                        #   in Loop: Header=BB138_7 Depth=1
	incl	%ebx
	movzwl	%ax, %ecx
	cmpl	%ecx, %ebx
	jb	.LBB138_7
.LBB138_10:                             # %for.end
	movq	40(%r14), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	testq	%r13, %r13
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%r15)
.LBB138_11:                             # %cleanup
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end138:
	.size	Type_MPEcurve_Read, .Lfunc_end138-Type_MPEcurve_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPEcurve_Write,@function
Type_MPEcurve_Write:                    # @Type_MPEcurve_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp849:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp850:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp851:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp852:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp853:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp854:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp855:
	.cfi_def_cfa_offset 64
.Ltmp856:
	.cfi_offset %rbx, -56
.Ltmp857:
	.cfi_offset %r12, -48
.Ltmp858:
	.cfi_offset %r13, -40
.Ltmp859:
	.cfi_offset %r14, -32
.Ltmp860:
	.cfi_offset %r15, -24
.Ltmp861:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	48(%rbp), %r14
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r12d
	movzwl	16(%rbp), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB139_3
# BB#1:                                 # %if.end
	movzwl	16(%rbp), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB139_3
# BB#2:                                 # %if.end.9
	addl	$-8, %r12d
	movl	16(%rbp), %edx
	movl	$WriteMPECurve, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %ecx
	movq	%r14, %r8
	callq	WritePositionTable
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r13d
.LBB139_3:                              # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end139:
	.size	Type_MPEcurve_Write, .Lfunc_end139-Type_MPEcurve_Write
	.cfi_endproc

	.align	16, 0x90
	.type	GenericMPEdup,@function
GenericMPEdup:                          # @GenericMPEdup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsStageDup             # TAILCALL
.Lfunc_end140:
	.size	GenericMPEdup, .Lfunc_end140-GenericMPEdup
	.cfi_endproc

	.align	16, 0x90
	.type	GenericMPEfree,@function
GenericMPEfree:                         # @GenericMPEfree
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	cmsStageFree            # TAILCALL
.Lfunc_end141:
	.size	GenericMPEfree, .Lfunc_end141-GenericMPEfree
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPEmatrix_Read,@function
Type_MPEmatrix_Read:                    # @Type_MPEmatrix_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp862:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp863:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp864:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp865:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp866:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp867:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp868:
	.cfi_def_cfa_offset 96
.Ltmp869:
	.cfi_offset %rbx, -56
.Ltmp870:
	.cfi_offset %r12, -48
.Ltmp871:
	.cfi_offset %r13, -40
.Ltmp872:
	.cfi_offset %r14, -32
.Ltmp873:
	.cfi_offset %r15, -24
.Ltmp874:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r13
	leaq	38(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB142_13
# BB#1:                                 # %if.end
	leaq	36(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB142_13
# BB#2:                                 # %if.end.4
	movzwl	38(%rsp), %eax
	movzwl	36(%rsp), %ebp
	imulq	%rax, %rbp
	movq	40(%r13), %rdi
	movl	$8, %edx
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB142_13
# BB#3:                                 # %if.end.9
	movq	40(%r13), %rdi
	movzwl	36(%rsp), %esi
	movl	$8, %edx
	callq	_cmsCalloc
	movq	%r13, %rcx
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB142_15
# BB#4:                                 # %for.cond.preheader
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB142_8
# BB#5:                                 # %for.body.lr.ph
	xorl	%r15d, %r15d
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB142_6:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_cmsReadFloat32Number
	testl	%eax, %eax
	je	.LBB142_14
# BB#7:                                 # %if.end.23
                                        #   in Loop: Header=BB142_6 Depth=1
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, (%r12,%r15,8)
	incq	%r15
	cmpq	%rbp, %r15
	jb	.LBB142_6
.LBB142_8:                              # %for.cond.25.preheader
	movzwl	36(%rsp), %esi
	testl	%esi, %esi
	movq	16(%rsp), %r15          # 8-byte Reload
	je	.LBB142_12
# BB#9:                                 # %for.body.29.lr.ph
	xorl	%ebp, %ebp
	leaq	28(%rsp), %r14
	.align	16, 0x90
.LBB142_10:                             # %for.body.29
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_cmsReadFloat32Number
	testl	%eax, %eax
	je	.LBB142_14
# BB#11:                                # %if.end.34
                                        #   in Loop: Header=BB142_10 Depth=1
	movss	28(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	%ebp, %eax
	movsd	%xmm0, (%r13,%rax,8)
	incl	%ebp
	movzwl	36(%rsp), %esi
	cmpl	%esi, %ebp
	jb	.LBB142_10
.LBB142_12:                             # %for.end.43
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	40(%rbx), %rdi
	movzwl	38(%rsp), %edx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	cmsStageAllocMatrix
	movq	%rax, %r14
	movq	40(%rbx), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	movq	40(%rbx), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	movl	$1, (%r15)
	jmp	.LBB142_13
.LBB142_15:                             # %if.then.15
	movq	40(%rcx), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	xorl	%r14d, %r14d
	jmp	.LBB142_13
.LBB142_14:                             # %cleanup.38
	xorl	%r14d, %r14d
.LBB142_13:                             # %cleanup.50
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end142:
	.size	Type_MPEmatrix_Read, .Lfunc_end142-Type_MPEmatrix_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPEmatrix_Write,@function
Type_MPEmatrix_Write:                   # @Type_MPEmatrix_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp875:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp876:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp877:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp878:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp879:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp880:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp881:
	.cfi_def_cfa_offset 64
.Ltmp882:
	.cfi_offset %rbx, -56
.Ltmp883:
	.cfi_offset %r12, -48
.Ltmp884:
	.cfi_offset %r13, -40
.Ltmp885:
	.cfi_offset %r14, -32
.Ltmp886:
	.cfi_offset %r15, -24
.Ltmp887:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	48(%r14), %r12
	movzwl	16(%r14), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB143_15
# BB#1:                                 # %if.end
	movzwl	20(%r14), %esi
	movq	%r15, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB143_15
# BB#2:                                 # %if.end.5
	movl	20(%r14), %eax
	movl	16(%r14), %ecx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	je	.LBB143_7
# BB#3:                                 # %for.body.lr.ph
	movl	%ecx, %r13d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB143_4:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movsd	(%rax,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	_cmsWriteFloat32Number
	testl	%eax, %eax
	je	.LBB143_15
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB143_4 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB143_4
# BB#6:                                 # %for.cond.for.cond.14.preheader_crit_edge
	movl	20(%r14), %eax
.LBB143_7:                              # %for.cond.14.preheader
	testl	%eax, %eax
	je	.LBB143_14
# BB#8:                                 # %for.body.18.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB143_9:                              # %for.body.18
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB143_10
# BB#11:                                # %if.else
                                        #   in Loop: Header=BB143_9 Depth=1
	movl	%ebp, %ecx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB143_12
	.align	16, 0x90
.LBB143_10:                             # %if.then.21
                                        #   in Loop: Header=BB143_9 Depth=1
	xorps	%xmm0, %xmm0
.LBB143_12:                             # %if.else
                                        #   in Loop: Header=BB143_9 Depth=1
	movq	%r15, %rdi
	callq	_cmsWriteFloat32Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB143_15
# BB#13:                                # %for.inc.35
                                        #   in Loop: Header=BB143_9 Depth=1
	incl	%ebp
	cmpl	20(%r14), %ebp
	jb	.LBB143_9
.LBB143_14:
	movl	$1, %ebx
.LBB143_15:                             # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end143:
	.size	Type_MPEmatrix_Write, .Lfunc_end143-Type_MPEmatrix_Write
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPEclut_Read,@function
Type_MPEclut_Read:                      # @Type_MPEclut_Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp888:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp889:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp890:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp891:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp892:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp893:
	.cfi_def_cfa_offset 112
.Ltmp894:
	.cfi_offset %rbx, -48
.Ltmp895:
	.cfi_offset %r12, -40
.Ltmp896:
	.cfi_offset %r14, -32
.Ltmp897:
	.cfi_offset %r15, -24
.Ltmp898:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	62(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB144_21
# BB#1:                                 # %if.end
	leaq	60(%rsp), %rsi
	movq	%r12, %rdi
	callq	_cmsReadUInt16Number
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB144_21
# BB#2:                                 # %if.end.4
	cmpw	$0, 62(%rsp)
	je	.LBB144_19
# BB#3:                                 # %if.end.4
	movzwl	60(%rsp), %eax
	testw	%ax, %ax
	je	.LBB144_19
# BB#4:                                 # %if.end.12
	leaq	32(%rsp), %rsi
	movl	$1, %edx
	movl	$16, %ecx
	movq	%r12, %rdi
	callq	*280(%r12)
	cmpl	$16, %eax
	jne	.LBB144_19
# BB#5:                                 # %if.end.17
	movzwl	62(%rsp), %edx
	cmpl	$8, %edx
	movl	$8, %esi
	movl	%edx, %eax
	cmoval	%esi, %eax
	testl	%eax, %eax
	je	.LBB144_12
# BB#6:                                 # %for.body.lr.ph
	movl	%eax, %eax
	cmpl	$8, %edx
	cmovbl	%edx, %esi
	movl	%esi, %r8d
	xorl	%ecx, %ecx
	testl	%esi, %esi
	je	.LBB144_11
# BB#7:                                 # %overflow.checked
	movl	%r8d, %esi
	andl	$7, %esi
	xorl	%ecx, %ecx
	cmpl	%esi, %r8d
	je	.LBB144_10
# BB#8:                                 # %vector.body.preheader
	movq	%r8, %rcx
	subq	%rsi, %rcx
	leaq	36(%rsp), %rdi
	leaq	16(%rsp), %rbx
	movl	%edx, %esi
	notl	%esi
	cmpl	$-9, %esi
	movl	$-9, %ebp
	cmoval	%esi, %ebp
	notl	%ebp
	movl	%ebp, %esi
	andl	$7, %esi
	subq	%rsi, %rbp
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB144_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqa	%xmm1, -16(%rbx)
	movdqa	%xmm2, (%rbx)
	addq	$8, %rdi
	addq	$32, %rbx
	addq	$-8, %rbp
	jne	.LBB144_9
.LBB144_10:                             # %middle.block
	cmpq	%rcx, %r8
	je	.LBB144_12
	.align	16, 0x90
.LBB144_11:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	32(%rsp,%rcx), %esi
	movl	%esi, (%rsp,%rcx,4)
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB144_11
.LBB144_12:                             # %for.end
	movq	40(%r15), %rdi
	movzwl	60(%rsp), %ecx
	leaq	(%rsp), %rsi
	xorl	%r8d, %r8d
	callq	cmsStageAllocCLutFloatGranular
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB144_19
# BB#13:                                # %if.end.34
	movq	48(%rbx), %r15
	cmpl	$0, 16(%r15)
	je	.LBB144_18
# BB#14:                                # %for.body.38.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB144_16:                             # %for.body.38
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	(%r15), %rcx
	leaq	(%rcx,%rax,4), %rsi
	movq	%r12, %rdi
	callq	_cmsReadFloat32Number
	testl	%eax, %eax
	je	.LBB144_17
# BB#15:                                # %for.cond.35
                                        #   in Loop: Header=BB144_16 Depth=1
	incl	%ebp
	cmpl	16(%r15), %ebp
	jb	.LBB144_16
.LBB144_18:                             # %for.end.47
	movl	$1, (%r14)
	jmp	.LBB144_21
.LBB144_19:                             # %Error.thread
	movl	$0, (%r14)
.LBB144_20:                             # %cleanup
	xorl	%ebx, %ebx
.LBB144_21:                             # %cleanup
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB144_17:                             # %if.then.50
	movl	$0, (%r14)
	movq	%rbx, %rdi
	callq	cmsStageFree
	jmp	.LBB144_20
.Lfunc_end144:
	.size	Type_MPEclut_Read, .Lfunc_end144-Type_MPEclut_Read
	.cfi_endproc

	.align	16, 0x90
	.type	Type_MPEclut_Write,@function
Type_MPEclut_Write:                     # @Type_MPEclut_Write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp899:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp900:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp901:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp902:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp903:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp904:
	.cfi_def_cfa_offset 64
.Ltmp905:
	.cfi_offset %rbx, -48
.Ltmp906:
	.cfi_offset %r12, -40
.Ltmp907:
	.cfi_offset %r14, -32
.Ltmp908:
	.cfi_offset %r15, -24
.Ltmp909:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movl	16(%r12), %eax
	xorl	%r15d, %r15d
	cmpl	$15, %eax
	ja	.LBB145_16
# BB#1:                                 # %if.end
	movq	48(%r12), %rbp
	cmpl	$0, 20(%rbp)
	je	.LBB145_16
# BB#2:                                 # %if.end.3
	movzwl	%ax, %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB145_16
# BB#3:                                 # %if.end.6
	movzwl	20(%r12), %esi
	movq	%r14, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB145_16
# BB#4:                                 # %if.end.11
	leaq	(%rsp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movl	16(%r12), %eax
	testl	%eax, %eax
	je	.LBB145_10
# BB#5:                                 # %for.body.lr.ph
	leal	-1(%rax), %edi
	testb	$3, %al
	je	.LBB145_8
# BB#6:                                 # %for.body.prol.preheader
	movl	%eax, %edx
	andl	$3, %edx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB145_7:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rsi
	movb	20(%rsi,%rbx,4), %cl
	movb	%cl, (%rsp,%rbx)
	incq	%rbx
	cmpl	%ebx, %edx
	jne	.LBB145_7
.LBB145_8:                              # %for.body.lr.ph.split
	cmpl	$3, %edi
	jb	.LBB145_10
	.align	16, 0x90
.LBB145_9:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movq	8(%rbp), %rdx
	movb	20(%rdx,%rcx,4), %dl
	movb	%dl, (%rsp,%rcx)
	leal	1(%rbx), %ecx
	movq	8(%rbp), %rdx
	movb	20(%rdx,%rcx,4), %dl
	movb	%dl, (%rsp,%rcx)
	leal	2(%rbx), %ecx
	movq	8(%rbp), %rdx
	movb	20(%rdx,%rcx,4), %dl
	movb	%dl, (%rsp,%rcx)
	leal	3(%rbx), %ecx
	movq	8(%rbp), %rdx
	movb	20(%rdx,%rcx,4), %dl
	movb	%dl, (%rsp,%rcx)
	addl	$4, %ebx
	cmpl	%eax, %ebx
	jb	.LBB145_9
.LBB145_10:                             # %for.end
	leaq	(%rsp), %rdx
	movl	$16, %esi
	movq	%r14, %rdi
	callq	*312(%r14)
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB145_16
# BB#11:                                # %for.cond.24.preheader
	movl	$1, %r15d
	cmpl	$0, 16(%rbp)
	je	.LBB145_16
# BB#12:                                # %for.body.27.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB145_14:                             # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	%r14, %rdi
	callq	_cmsWriteFloat32Number
	testl	%eax, %eax
	je	.LBB145_15
# BB#13:                                # %for.cond.24
                                        #   in Loop: Header=BB145_14 Depth=1
	incl	%ebx
	cmpl	16(%rbp), %ebx
	jb	.LBB145_14
	jmp	.LBB145_16
.LBB145_15:
	xorl	%r15d, %r15d
.LBB145_16:                             # %cleanup
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end145:
	.size	Type_MPEclut_Write, .Lfunc_end145-Type_MPEclut_Write
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI146_0:
	.long	3825698424              # float -9.99999977E+21
	.text
	.align	16, 0x90
	.type	ReadMPECurve,@function
ReadMPECurve:                           # @ReadMPECurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp910:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp911:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp912:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp913:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp914:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp915:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp916:
	.cfi_def_cfa_offset 96
.Ltmp917:
	.cfi_offset %rbx, -56
.Ltmp918:
	.cfi_offset %r12, -48
.Ltmp919:
	.cfi_offset %r13, -40
.Ltmp920:
	.cfi_offset %r14, -32
.Ltmp921:
	.cfi_offset %r15, -24
.Ltmp922:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	36(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB146_41
# BB#1:                                 # %entry
	cmpl	$1668641382, 36(%rsp)   # imm = 0x63757266
	jne	.LBB146_41
# BB#2:                                 # %if.end.2.i
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB146_41
# BB#3:                                 # %if.end.6.i
	leaq	34(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB146_41
# BB#4:                                 # %if.end.10.i
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB146_41
# BB#5:                                 # %if.end.14.i
	movzwl	34(%rsp), %esi
	xorl	%ebp, %ebp
	testl	%esi, %esi
	je	.LBB146_41
# BB#6:                                 # %if.end.18.i
	movq	40(%r14), %rdi
	movl	$112, %edx
	callq	_cmsCalloc
	movq	%rax, %r13
	xorl	%ebp, %ebp
	testq	%r13, %r13
	je	.LBB146_41
# BB#7:                                 # %for.cond.preheader.i
	movss	.LCPI146_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movw	$1, %ax
	movzwl	34(%rsp), %ecx
	cmpl	$1, %ecx
	jne	.LBB146_9
# BB#8:
	xorl	%ecx, %ecx
	jmp	.LBB146_13
.LBB146_9:
	movq	%r14, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB146_10:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	imulq	$112, %rax, %rax
	movss	%xmm0, (%r13,%rax)
	leaq	4(%r13,%rax), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_cmsReadFloat32Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#11:                                # %if.end.33.i
                                        #   in Loop: Header=BB146_10 Depth=1
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	incl	%ebp
	movzwl	34(%rsp), %eax
	leaq	-1(%rax), %rcx
	cmpl	%ecx, %ebp
	jb	.LBB146_10
# BB#12:                                # %for.end.i.loopexit
	movq	16(%rsp), %r14          # 8-byte Reload
.LBB146_13:                             # %for.end.i
	imulq	$112, %rcx, %rcx
	movss	%xmm0, (%r13,%rcx)
	movzwl	%ax, %esi
	imulq	$112, %rsi, %rax
	movl	$1678214776, -108(%rax,%r13) # imm = 0x64078678
	testw	%si, %si
	je	.LBB146_25
# BB#14:                                # %for.body.51.lr.ph.i
	xorl	%ebp, %ebp
	leaq	36(%rsp), %rax
.LBB146_15:                             # %for.body.51.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB146_22 Depth 2
                                        #     Child Loop BB146_36 Depth 2
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#16:                                # %if.end.55.i
                                        #   in Loop: Header=BB146_15 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#17:                                # %if.end.59.i
                                        #   in Loop: Header=BB146_15 Depth=1
	movl	36(%rsp), %esi
	cmpl	$1935764838, %esi       # imm = 0x73616D66
	jne	.LBB146_18
# BB#31:                                # %sw.bb.99.i
                                        #   in Loop: Header=BB146_15 Depth=1
	movq	%rbx, %rdi
	leaq	24(%rsp), %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB146_39
# BB#32:                                # %if.end.103.i
                                        #   in Loop: Header=BB146_15 Depth=1
	movl	24(%rsp), %eax
	movl	%ebp, %ecx
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	imulq	$112, %rcx, %rbp
	movl	%eax, 96(%r13,%rbp)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movl	24(%rsp), %esi
	movl	$4, %edx
	callq	_cmsCalloc
	movq	%rax, 104(%r13,%rbp)
	testq	%rax, %rax
	je	.LBB146_38
# BB#33:                                # %for.cond.117.preheader.i
                                        #   in Loop: Header=BB146_15 Depth=1
	cmpl	$0, 24(%rsp)
	je	.LBB146_24
# BB#34:                                # %for.body.120.i.preheader
                                        #   in Loop: Header=BB146_15 Depth=1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_cmsReadFloat32Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#35:                                #   in Loop: Header=BB146_15 Depth=1
	leaq	104(%r13,%rbp), %r14
	movl	$1, %ebp
.LBB146_36:                             # %for.cond.117.i
                                        #   Parent Loop BB146_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	24(%rsp), %ebp
	jae	.LBB146_24
# BB#37:                                # %for.cond.117.for.body.120_crit_edge.i
                                        #   in Loop: Header=BB146_36 Depth=2
	movq	(%r14), %rax
	movl	%ebp, %ecx
	leaq	(%rax,%rcx,4), %rsi
	movq	%rbx, %rdi
	callq	_cmsReadFloat32Number
	incl	%ebp
	testl	%eax, %eax
	jne	.LBB146_36
	jmp	.LBB146_38
.LBB146_18:                             # %if.end.59.i
                                        #   in Loop: Header=BB146_15 Depth=1
	cmpl	$1885434470, %esi       # imm = 0x70617266
	jne	.LBB146_40
# BB#19:                                # %sw.bb.i
                                        #   in Loop: Header=BB146_15 Depth=1
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdi
	leaq	32(%rsp), %rsi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#20:                                # %if.end.63.i
                                        #   in Loop: Header=BB146_15 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#21:                                # %if.end.67.i
                                        #   in Loop: Header=BB146_15 Depth=1
	movzwl	32(%rsp), %eax
	leal	6(%rax), %ecx
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%edx, %edx
	imulq	$112, %rdx, %r14
	xorl	%ebp, %ebp
	cmpl	$2, %eax
	movl	%ecx, 8(%r13,%r14)
	ja	.LBB146_38
	.align	16, 0x90
.LBB146_22:                             # %for.body.82.i
                                        #   Parent Loop BB146_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	leaq	24(%rsp), %rsi
	callq	_cmsReadFloat32Number
	testl	%eax, %eax
	je	.LBB146_38
# BB#23:                                # %for.inc.92.i
                                        #   in Loop: Header=BB146_22 Depth=2
	movss	24(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	%ebp, %eax
	leaq	(%r13,%r14), %rcx
	movsd	%xmm0, 16(%rcx,%rax,8)
	incl	%ebp
	movzwl	32(%rsp), %eax
	cmpl	.LWriteSegmentedCurve.ParamsByType(,%rax,4), %ebp
	jb	.LBB146_22
.LBB146_24:                             # %cleanup.133.i
                                        #   in Loop: Header=BB146_15 Depth=1
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
	incl	%ebp
	movzwl	34(%rsp), %esi
	cmpl	%esi, %ebp
	leaq	36(%rsp), %rax
	jb	.LBB146_15
.LBB146_25:                             # %for.end.140.i
	movq	40(%r14), %rdi
	movq	%r13, %rdx
	callq	cmsBuildSegmentedToneCurve
	movq	%rax, %rbp
	movw	34(%rsp), %ax
	testw	%ax, %ax
	je	.LBB146_30
# BB#26:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB146_27:                             # %for.body.148.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	imulq	$112, %rcx, %rcx
	movq	104(%r13,%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB146_29
# BB#28:                                # %if.then.153.i
                                        #   in Loop: Header=BB146_27 Depth=1
	movq	40(%r14), %rdi
	callq	_cmsFree
	movzwl	34(%rsp), %eax
.LBB146_29:                             # %for.inc.159.i
                                        #   in Loop: Header=BB146_27 Depth=1
	incl	%ebx
	movzwl	%ax, %ecx
	cmpl	%ecx, %ebx
	jb	.LBB146_27
.LBB146_30:                             # %for.end.161.i
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	jmp	.LBB146_41
.LBB146_38:                             # %if.then.164.i
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movq	%r13, %rsi
	callq	_cmsFree
.LBB146_39:                             # %ReadSegmentedCurve.exit
	xorl	%ebp, %ebp
.LBB146_41:                             # %ReadSegmentedCurve.exit
	movl	%r12d, %eax
	movq	%rbp, (%r15,%rax,8)
	testq	%rbp, %rbp
	setne	%al
	movzbl	%al, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB146_40:                             # %sw.default.i
	leaq	24(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_cmsTagSignature2String
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	cmsSignalError
	jmp	.LBB146_41
.Lfunc_end146:
	.size	ReadMPECurve, .Lfunc_end146-ReadMPECurve
	.cfi_endproc

	.align	16, 0x90
	.type	WritePositionTable,@function
WritePositionTable:                     # @WritePositionTable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp923:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp924:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp925:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp926:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp927:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp928:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp929:
	.cfi_def_cfa_offset 112
.Ltmp930:
	.cfi_offset %rbx, -56
.Ltmp931:
	.cfi_offset %r12, -48
.Ltmp932:
	.cfi_offset %r13, -40
.Ltmp933:
	.cfi_offset %r14, -32
.Ltmp934:
	.cfi_offset %r15, -24
.Ltmp935:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	%r13d, %esi
	callq	_cmsCalloc
	movq	%rax, %r14
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB147_24
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	%r13d, %esi
	callq	_cmsCalloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB147_2
# BB#3:                                 # %if.end.5
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB147_10
# BB#4:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB147_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB147_7
# BB#6:                                 # %if.end.10
                                        #   in Loop: Header=BB147_5 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB147_7
# BB#11:                                # %for.cond
                                        #   in Loop: Header=BB147_5 Depth=1
	incl	%ebp
	cmpl	%r13d, %ebp
	jb	.LBB147_5
# BB#12:                                # %for.cond.15.preheader
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r12d
	testl	%r13d, %r13d
	je	.LBB147_16
# BB#13:                                # %for.body.17.lr.ph
	movl	%r13d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB147_14:                             # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	subl	36(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, (%r14,%rbp,4)
	xorl	%r8d, %r8d
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%ebp, %ecx
	callq	*48(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	je	.LBB147_7
# BB#15:                                # %if.end.23
                                        #   in Loop: Header=BB147_14 Depth=1
	movq	%rbx, %rdi
	callq	*304(%rbx)
	subl	%r12d, %eax
	movl	%eax, (%r15,%rbp,4)
	incq	%rbp
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r12d
	cmpq	16(%rsp), %rbp          # 8-byte Folded Reload
	jb	.LBB147_14
	jmp	.LBB147_16
.LBB147_2:                              # %if.end.72.thread
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	jmp	.LBB147_24
.LBB147_10:                             # %for.cond.15.preheader.thread
	movq	%rbx, %rdi
	callq	*304(%rbx)
	movl	%eax, %r12d
.LBB147_16:                             # %for.end.31
	movq	%rbx, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	*288(%rbx)
	testl	%eax, %eax
	je	.LBB147_7
# BB#17:                                # %for.cond.38.preheader
	testl	%r13d, %r13d
	je	.LBB147_22
# BB#18:                                # %for.body.40.lr.ph
	movl	%r13d, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB147_20:                             # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rbp,4), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB147_7
# BB#21:                                # %if.end.46
                                        #   in Loop: Header=BB147_20 Depth=1
	movl	(%r15,%rbp,4), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB147_7
# BB#19:                                # %for.cond.38
                                        #   in Loop: Header=BB147_20 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB147_20
.LBB147_22:                             # %for.end.55
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*288(%rbx)
	testl	%eax, %eax
	je	.LBB147_7
# BB#23:                                # %if.then.66
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
	movl	$1, %ebp
	jmp	.LBB147_24
.LBB147_7:                              # %if.end.72
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB147_24
# BB#8:                                 # %if.then.74
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	_cmsFree
.LBB147_24:                             # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end147:
	.size	WritePositionTable, .Lfunc_end147-WritePositionTable
	.cfi_endproc

	.align	16, 0x90
	.type	WriteMPECurve,@function
WriteMPECurve:                          # @WriteMPECurve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp936:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp937:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp938:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp939:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp940:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp941:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp942:
	.cfi_def_cfa_offset 80
.Ltmp943:
	.cfi_offset %rbx, -56
.Ltmp944:
	.cfi_offset %r12, -48
.Ltmp945:
	.cfi_offset %r13, -40
.Ltmp946:
	.cfi_offset %r14, -32
.Ltmp947:
	.cfi_offset %r15, -24
.Ltmp948:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movl	%ecx, %eax
	movq	8(%rdx), %rcx
	movq	(%rcx,%rax,8), %r15
	movq	16(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	8(%r15), %ebp
	movl	$1668641382, %esi       # imm = 0x63757266
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB148_29
# BB#1:                                 # %if.end.i
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#2:                                 # %if.end.6.i
	movzwl	%bp, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#3:                                 # %if.end.10.i
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#4:                                 # %for.cond.preheader.i
	decl	%ebp
	je	.LBB148_8
# BB#5:                                 # %for.body.lr.ph.i
	movl	%ebp, %r13d
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %rbx
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB148_6:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rdi
	callq	_cmsWriteFloat32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#7:                                 # %for.cond.i
                                        #   in Loop: Header=BB148_6 Depth=1
	incq	%rbp
	addq	$112, %rbx
	cmpq	%r13, %rbp
	jb	.LBB148_6
.LBB148_8:                              # %for.cond.20.preheader.i
	cmpl	$0, 8(%r15)
	je	.LBB148_28
# BB#9:
	xorl	%eax, %eax
.LBB148_10:                             # %for.body.24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB148_26 Depth 2
                                        #     Child Loop BB148_17 Depth 2
	movl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	imulq	$112, %rax, %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 8(%rax,%rbp)
	je	.LBB148_11
# BB#18:                                # %if.else.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movl	$1885434470, %esi       # imm = 0x70617266
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB148_29
# BB#19:                                # %if.end.61.i
                                        #   in Loop: Header=BB148_10 Depth=1
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#20:                                # %if.end.65.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax,%rbp), %rax
	movslq	(%rax), %r13
	cmpq	$6, %r13
	jl	.LBB148_29
# BB#21:                                # %if.end.65.i
                                        #   in Loop: Header=BB148_10 Depth=1
	leal	-6(%r13), %eax
	cmpl	$2, %eax
	jg	.LBB148_29
# BB#22:                                # %if.end.73.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movzwl	%ax, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#23:                                # %if.end.78.i
                                        #   in Loop: Header=BB148_10 Depth=1
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#24:                                # %for.body.88.lr.ph.i
                                        #   in Loop: Header=BB148_10 Depth=1
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB148_26:                             # %for.body.88.i
                                        #   Parent Loop BB148_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rbp), %rcx
	movsd	16(%rcx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	_cmsWriteFloat32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#25:                                # %for.cond.83.i
                                        #   in Loop: Header=BB148_26 Depth=2
	incl	%ebx
	cmpl	.LWriteSegmentedCurve.ParamsByType-24(,%r13,4), %ebx
	jb	.LBB148_26
	jmp	.LBB148_27
.LBB148_11:                             # %if.then.27.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movl	$1935764838, %esi       # imm = 0x73616D66
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB148_29
# BB#12:                                # %if.end.31.i
                                        #   in Loop: Header=BB148_10 Depth=1
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#13:                                # %if.end.35.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	96(%rax,%rbp), %esi
	movq	%r12, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#14:                                # %for.cond.40.preheader.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movq	16(%r15), %rax
	cmpl	$0, 96(%rax,%rbp)
	je	.LBB148_27
# BB#15:                                # %for.body.47.lr.ph.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	104(%rax,%rbp), %r13
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB148_17:                             # %for.body.47.i
                                        #   Parent Loop BB148_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %eax
	movq	(%r13), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rdi
	callq	_cmsWriteFloat32Number
	testl	%eax, %eax
	je	.LBB148_29
# BB#16:                                # %for.cond.40.i
                                        #   in Loop: Header=BB148_17 Depth=2
	incl	%ebx
	movq	16(%r15), %rax
	cmpl	96(%rax,%rbp), %ebx
	jb	.LBB148_17
.LBB148_27:                             # %for.inc.104.i
                                        #   in Loop: Header=BB148_10 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	incl	%eax
	cmpl	8(%r15), %eax
	jb	.LBB148_10
.LBB148_28:
	movl	$1, %r14d
.LBB148_29:                             # %WriteSegmentedCurve.exit
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end148:
	.size	WriteMPECurve, .Lfunc_end148-WriteMPECurve
	.cfi_endproc

	.align	16, 0x90
	.type	ReadSeqID,@function
ReadSeqID:                              # @ReadSeqID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp949:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp950:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp951:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp952:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp953:
	.cfi_def_cfa_offset 48
.Ltmp954:
	.cfi_offset %rbx, -48
.Ltmp955:
	.cfi_offset %r12, -40
.Ltmp956:
	.cfi_offset %r14, -32
.Ltmp957:
	.cfi_offset %r15, -24
.Ltmp958:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	%ecx, %ebp
	movq	16(%rdx), %r12
	shlq	$6, %rbp
	leaq	20(%r12,%rbp), %rsi
	movl	$16, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	*280(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB149_2
# BB#1:                                 # %if.end
	leaq	56(%r12,%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %ecx
	callq	ReadEmbeddedText
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB149_2:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end149:
	.size	ReadSeqID, .Lfunc_end149-ReadSeqID
	.cfi_endproc

	.align	16, 0x90
	.type	WriteSeqID,@function
WriteSeqID:                             # @WriteSeqID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp959:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp960:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp961:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp962:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp963:
	.cfi_def_cfa_offset 48
.Ltmp964:
	.cfi_offset %rbx, -40
.Ltmp965:
	.cfi_offset %r12, -32
.Ltmp966:
	.cfi_offset %r14, -24
.Ltmp967:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	%ecx, %ebx
	movq	16(%r15), %rax
	shlq	$6, %rbx
	leaq	20(%rax,%rbx), %rdx
	movl	$16, %esi
	movq	%r12, %rdi
	callq	*312(%r12)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB150_7
# BB#1:                                 # %if.end
	movq	16(%r15), %rax
	movq	56(%rax,%rbx), %r15
	cmpl	$67108863, 48(%r14)     # imm = 0x3FFFFFF
	ja	.LBB150_4
# BB#2:                                 # %if.then.i
	movl	$1684370275, %esi       # imm = 0x64657363
	movq	%r12, %rdi
	callq	_cmsWriteTypeBase
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB150_6
# BB#3:                                 # %if.end.i
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	Type_Text_Description_Write
	jmp	.LBB150_6
.LBB150_4:                              # %if.else.i
	movl	$1835824483, %esi       # imm = 0x6D6C7563
	movq	%r12, %rdi
	callq	_cmsWriteTypeBase
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB150_6
# BB#5:                                 # %if.end.6.i
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	Type_MLU_Write
.LBB150_6:                              # %SaveDescription.exit
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB150_7:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end150:
	.size	WriteSeqID, .Lfunc_end150-WriteSeqID
	.cfi_endproc

	.align	16, 0x90
	.type	AllocArray,@function
AllocArray:                             # @AllocArray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp968:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp969:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp970:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp971:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp972:
	.cfi_def_cfa_offset 48
.Ltmp973:
	.cfi_offset %rbx, -48
.Ltmp974:
	.cfi_offset %r12, -40
.Ltmp975:
	.cfi_offset %r14, -32
.Ltmp976:
	.cfi_offset %r15, -24
.Ltmp977:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%esi, %esi
	movl	$96, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB151_5
# BB#1:                                 # %if.end.i
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB151_2
# BB#21:                                # %if.end
	movq	%r14, (%rbx)
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.LBB151_4
# BB#22:                                # %if.end.i.19
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	je	.LBB151_23
# BB#24:                                # %if.end.5
	movq	%r14, 24(%rbx)
	movl	$1, %r12d
	cmpl	$17, %r15d
	jb	.LBB151_33
# BB#25:                                # %if.then.6
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB151_4
# BB#26:                                # %if.end.i.31
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.LBB151_27
# BB#28:                                # %if.end.11
	movq	%r14, 48(%rbx)
	cmpl	$25, %r15d
	jb	.LBB151_33
# BB#29:                                # %if.then.13
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 80(%rbx)
	testq	%rax, %rax
	je	.LBB151_4
# BB#30:                                # %if.end.i.43
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	_cmsCalloc
	movq	%rax, 88(%rbx)
	testq	%rax, %rax
	je	.LBB151_31
# BB#32:                                # %AllocElem.exit48
	movq	%r14, 72(%rbx)
	jmp	.LBB151_33
.LBB151_2:                              # %if.then.5.i
	movq	8(%rbx), %rsi
	jmp	.LBB151_3
.LBB151_23:                             # %if.then.5.i.20
	movq	32(%rbx), %rsi
.LBB151_3:                              # %Errorthread-pre-split
	movq	%r14, %rdi
	callq	_cmsFree
.LBB151_4:                              # %Errorthread-pre-split
	movq	8(%rbx), %rax
.LBB151_5:                              # %Error
	testq	%rax, %rax
	je	.LBB151_9
# BB#6:                                 # %if.end.i.64
	movq	(%rbx), %rdi
	movq	%rax, %rsi
	callq	_cmsFree
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB151_8
# BB#7:                                 # %if.then.3.i.66
	movq	(%rbx), %rdi
	callq	_cmsFree
.LBB151_8:                              # %FreeElem.exit68
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rbx)
.LBB151_9:                              # %if.end.i.51
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB151_13
# BB#10:                                # %if.end.i.75
	movq	24(%rbx), %rdi
	callq	_cmsFree
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB151_12
# BB#11:                                # %if.then.3.i.77
	movq	24(%rbx), %rdi
	callq	_cmsFree
.LBB151_12:                             # %FreeElem.exit79
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rbx)
.LBB151_13:                             # %if.end.6.i
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB151_17
# BB#14:                                # %if.end.i.86
	movq	48(%rbx), %rdi
	callq	_cmsFree
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB151_16
# BB#15:                                # %if.then.3.i.88
	movq	48(%rbx), %rdi
	callq	_cmsFree
.LBB151_16:                             # %FreeElem.exit90
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%rbx)
.LBB151_17:                             # %if.end.11.i
	movq	80(%rbx), %rsi
	xorl	%r12d, %r12d
	testq	%rsi, %rsi
	je	.LBB151_33
# BB#18:                                # %if.end.i.56
	movq	72(%rbx), %rdi
	callq	_cmsFree
	movq	88(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB151_20
# BB#19:                                # %if.then.3.i
	movq	72(%rbx), %rdi
	callq	_cmsFree
.LBB151_20:                             # %FreeElem.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rbx)
.LBB151_33:                             # %return
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB151_27:                             # %if.then.5.i.32
	movq	56(%rbx), %rsi
	jmp	.LBB151_3
.LBB151_31:                             # %if.then.5.i.44
	movq	80(%rbx), %rsi
	jmp	.LBB151_3
.Lfunc_end151:
	.size	AllocArray, .Lfunc_end151-AllocArray
	.cfi_endproc

	.align	16, 0x90
	.type	ReadOneWChar,@function
ReadOneWChar:                           # @ReadOneWChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp978:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp979:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp980:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp981:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp982:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp983:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp984:
	.cfi_def_cfa_offset 80
.Ltmp985:
	.cfi_offset %rbx, -56
.Ltmp986:
	.cfi_offset %r12, -48
.Ltmp987:
	.cfi_offset %r13, -40
.Ltmp988:
	.cfi_offset %r14, -32
.Ltmp989:
	.cfi_offset %r15, -24
.Ltmp990:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	%edx, %ebx
	movq	8(%r15), %rax
	movl	(%rax,%rbx,4), %esi
	testl	%esi, %esi
	je	.LBB152_1
# BB#2:                                 # %if.end
	movq	%r12, %rdi
	callq	*288(%r12)
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB152_11
# BB#3:                                 # %if.end.5
	movq	(%r15), %rdi
	movq	16(%r15), %rax
	movl	(%rax,%rbx,4), %r13d
	shrl	%r13d
	leal	4(,%r13,4), %esi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	movq	%rbx, (%r14)
	testq	%rbx, %rbx
	je	.LBB152_11
# BB#4:                                 # %for.cond.preheader.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	je	.LBB152_9
# BB#5:                                 # %for.body.lr.ph.i
	movl	%r13d, %ebp
	xorl	%r14d, %r14d
	leaq	22(%rsp), %r13
	.align	16, 0x90
.LBB152_6:                              # %if.then.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt16Number
	testl	%eax, %eax
	je	.LBB152_12
# BB#7:                                 # %for.inc.i
                                        #   in Loop: Header=BB152_6 Depth=1
	movzwl	22(%rsp), %eax
	movl	%eax, (%rbx,%r14,4)
	incq	%r14
	cmpq	%rbp, %r14
	jb	.LBB152_6
# BB#8:                                 # %if.end.20.loopexit
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rbx
.LBB152_9:                              # %if.end.20
	movl	$0, (%rbx,%rbp,4)
	jmp	.LBB152_10
.LBB152_1:                              # %if.then
	movq	$0, (%r14)
.LBB152_10:                             # %cleanup
	movl	$1, %ebp
.LBB152_11:                             # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB152_12:                             # %if.then.18
	movq	(%r15), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rsi
	callq	_cmsFree
	xorl	%ebp, %ebp
	jmp	.LBB152_11
.Lfunc_end152:
	.size	ReadOneWChar, .Lfunc_end152-ReadOneWChar
	.cfi_endproc

	.align	16, 0x90
	.type	WriteOffsetArray,@function
WriteOffsetArray:                       # @WriteOffsetArray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp991:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp992:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp993:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp994:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp995:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp996:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp997:
	.cfi_def_cfa_offset 64
.Ltmp998:
	.cfi_offset %rbx, -56
.Ltmp999:
	.cfi_offset %r12, -48
.Ltmp1000:
	.cfi_offset %r13, -40
.Ltmp1001:
	.cfi_offset %r14, -32
.Ltmp1002:
	.cfi_offset %r15, -24
.Ltmp1003:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movl	$1, %r14d
	testl	%edx, %edx
	je	.LBB153_21
# BB#1:                                 # %for.body.lr.ph
	movl	%edx, %r12d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB153_2:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_3
# BB#4:                                 # %WriteOneElem.exit
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	16(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_5
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	32(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_7
# BB#8:                                 # %WriteOneElem.exit26
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	40(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_9
# BB#10:                                # %if.end.4
                                        #   in Loop: Header=BB153_2 Depth=1
	cmpl	$17, %r15d
	jb	.LBB153_20
# BB#11:                                # %if.then.6
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	56(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_12
# BB#13:                                # %WriteOneElem.exit39
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	64(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_14
# BB#15:                                # %if.end.11
                                        #   in Loop: Header=BB153_2 Depth=1
	cmpl	$25, %r15d
	jb	.LBB153_20
# BB#16:                                # %if.then.13
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	80(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_17
# BB#18:                                # %WriteOneElem.exit52
                                        #   in Loop: Header=BB153_2 Depth=1
	movq	88(%r13), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%rbp, %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB153_19
.LBB153_20:                             # %for.inc
                                        #   in Loop: Header=BB153_2 Depth=1
	incq	%rbx
	cmpq	%r12, %rbx
	jb	.LBB153_2
	jmp	.LBB153_21
.LBB153_3:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_5:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_7:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_9:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_12:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_14:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_17:
	xorl	%r14d, %r14d
	jmp	.LBB153_21
.LBB153_19:
	xorl	%r14d, %r14d
.LBB153_21:                             # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end153:
	.size	WriteOffsetArray, .Lfunc_end153-WriteOffsetArray
	.cfi_endproc

	.align	16, 0x90
	.type	WriteOneWChar,@function
WriteOneWChar:                          # @WriteOneWChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1004:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1005:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp1006:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp1007:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp1008:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp1009:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp1010:
	.cfi_def_cfa_offset 80
.Ltmp1011:
	.cfi_offset %rbx, -56
.Ltmp1012:
	.cfi_offset %r12, -48
.Ltmp1013:
	.cfi_offset %r13, -40
.Ltmp1014:
	.cfi_offset %r14, -32
.Ltmp1015:
	.cfi_offset %r15, -24
.Ltmp1016:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movq	%rcx, %r15
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	callq	*304(%rbx)
	movl	%eax, %ecx
	subl	%r13d, %ecx
	movl	%r14d, %r13d
	movq	8(%rbp), %rdx
	movl	%ecx, (%rdx,%r13,4)
	testq	%r15, %r15
	je	.LBB154_11
# BB#1:                                 # %while.cond.i.preheader
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	-4(%r15), %rcx
	.align	16, 0x90
.LBB154_2:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rcx)
	leaq	4(%rcx), %rcx
	jne	.LBB154_2
# BB#3:                                 # %mywcslen.exit
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testq	%rbx, %rbx
	je	.LBB154_12
# BB#4:                                 # %for.cond.preheader.i
	subq	%r15, %rcx
	shrq	$2, %rcx
	testl	%ecx, %ecx
	je	.LBB154_8
# BB#5:                                 # %for.body.lr.ph.i
	movl	%ecx, %r12d
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB154_7:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r15,%r14,4), %esi
	movq	%rbx, %rdi
	callq	_cmsWriteUInt16Number
	testl	%eax, %eax
	je	.LBB154_10
# BB#6:                                 # %for.cond.i
                                        #   in Loop: Header=BB154_7 Depth=1
	incq	%r14
	cmpq	%r12, %r14
	jb	.LBB154_7
.LBB154_8:                              # %if.end.9
	movq	%rbx, %rdi
	callq	*304(%rbx)
	subl	12(%rsp), %eax          # 4-byte Folded Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	16(%rcx), %rcx
	movl	%eax, (%rcx,%r13,4)
	jmp	.LBB154_9
.LBB154_11:                             # %if.then
	movq	16(%rbp), %rcx
	movl	$0, (%rcx,%r13,4)
	movl	$0, (%rdx,%r13,4)
.LBB154_9:                              # %cleanup
	movl	$1, %ebp
.LBB154_10:                             # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB154_12:                             # %cond.false.i
	movl	$.L.str.3, %edi
	movl	$.L.str.4, %esi
	movl	$122, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsWriteWCharArray, %ecx
	callq	__assert_fail
.Lfunc_end154:
	.size	WriteOneWChar, .Lfunc_end154-WriteOneWChar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI155_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	DecideLUTtypeA2B,@function
DecideLUTtypeA2B:                       # @DecideLUTtypeA2B
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1832993312, %eax       # imm = 0x6D414220
	movsd	.LCPI155_0(%rip), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB155_3
# BB#1:                                 # %if.then
	movl	$1835430962, %eax       # imm = 0x6D667432
	cmpl	$0, 64(%rdi)
	je	.LBB155_3
# BB#2:                                 # %select.mid
	movl	$1835430961, %eax       # imm = 0x6D667431
.LBB155_3:                              # %cleanup
	retq
.Lfunc_end155:
	.size	DecideLUTtypeA2B, .Lfunc_end155-DecideLUTtypeA2B
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI156_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	DecideLUTtypeB2A,@function
DecideLUTtypeB2A:                       # @DecideLUTtypeB2A
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1833058592, %eax       # imm = 0x6D424120
	movsd	.LCPI156_0(%rip), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB156_3
# BB#1:                                 # %if.then
	movl	$1835430962, %eax       # imm = 0x6D667432
	cmpl	$0, 64(%rdi)
	je	.LBB156_3
# BB#2:                                 # %select.mid
	movl	$1835430961, %eax       # imm = 0x6D667431
.LBB156_3:                              # %cleanup
	retq
.Lfunc_end156:
	.size	DecideLUTtypeB2A, .Lfunc_end156-DecideLUTtypeB2A
	.cfi_endproc

	.align	16, 0x90
	.type	DecideXYZtype,@function
DecideXYZtype:                          # @DecideXYZtype
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1482250784, %eax       # imm = 0x58595A20
	retq
.Lfunc_end157:
	.size	DecideXYZtype, .Lfunc_end157-DecideXYZtype
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI158_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	DecideCurveType,@function
DecideCurveType:                        # @DecideCurveType
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1668641398, %eax       # imm = 0x63757276
	movsd	.LCPI158_0(%rip), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB158_4
# BB#1:                                 # %if.end
	cmpl	$1, 8(%rdi)
	jne	.LBB158_4
# BB#2:                                 # %if.end.3
	movq	16(%rdi), %rcx
	movl	8(%rcx), %ecx
	testl	%ecx, %ecx
	js	.LBB158_4
# BB#3:                                 # %if.end.6
	cmpl	$5, %ecx
	movl	$1668641398, %ecx       # imm = 0x63757276
	movl	$1885434465, %eax       # imm = 0x70617261
	cmovgl	%ecx, %eax
.LBB158_4:                              # %cleanup
	retq
.Lfunc_end158:
	.size	DecideCurveType, .Lfunc_end158-DecideCurveType
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI159_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	DecideTextType,@function
DecideTextType:                         # @DecideTextType
	.cfi_startproc
# BB#0:                                 # %entry
	ucomisd	.LCPI159_0(%rip), %xmm0
	movl	$1952807028, %ecx       # imm = 0x74657874
	movl	$1835824483, %eax       # imm = 0x6D6C7563
	cmovbl	%ecx, %eax
	retq
.Lfunc_end159:
	.size	DecideTextType, .Lfunc_end159-DecideTextType
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI160_0:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	DecideTextDescType,@function
DecideTextDescType:                     # @DecideTextDescType
	.cfi_startproc
# BB#0:                                 # %entry
	ucomisd	.LCPI160_0(%rip), %xmm0
	movl	$1684370275, %ecx       # imm = 0x64657363
	movl	$1835824483, %eax       # imm = 0x6D6C7563
	cmovbl	%ecx, %eax
	retq
.Lfunc_end160:
	.size	DecideTextDescType, .Lfunc_end160-DecideTextDescType
	.cfi_endproc

	.type	_cmsMPETypePluginChunk,@object # @_cmsMPETypePluginChunk
	.bss
	.globl	_cmsMPETypePluginChunk
	.align	8
_cmsMPETypePluginChunk:
	.zero	8
	.size	_cmsMPETypePluginChunk, 8

	.type	_cmsTagTypePluginChunk,@object # @_cmsTagTypePluginChunk
	.globl	_cmsTagTypePluginChunk
	.align	8
_cmsTagTypePluginChunk:
	.zero	8
	.size	_cmsTagTypePluginChunk, 8

	.type	_cmsAllocTagTypePluginChunk.TagTypePluginChunk,@object # @_cmsAllocTagTypePluginChunk.TagTypePluginChunk
	.local	_cmsAllocTagTypePluginChunk.TagTypePluginChunk
	.comm	_cmsAllocTagTypePluginChunk.TagTypePluginChunk,8,8
	.type	_cmsAllocMPETypePluginChunk.TagTypePluginChunk,@object # @_cmsAllocMPETypePluginChunk.TagTypePluginChunk
	.local	_cmsAllocMPETypePluginChunk.TagTypePluginChunk
	.comm	_cmsAllocMPETypePluginChunk.TagTypePluginChunk,8,8
	.type	SupportedTagTypes,@object # @SupportedTagTypes
	.data
	.align	16
SupportedTagTypes:
	.long	1667789421              # 0x6368726d
	.zero	4
	.quad	Type_Chromaticity_Read
	.quad	Type_Chromaticity_Write
	.quad	Type_Chromaticity_Dup
	.quad	Type_Chromaticity_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+64
	.long	1668051567              # 0x636c726f
	.zero	4
	.quad	Type_ColorantOrderType_Read
	.quad	Type_ColorantOrderType_Write
	.quad	Type_ColorantOrderType_Dup
	.quad	Type_ColorantOrderType_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+128
	.long	1936077618              # 0x73663332
	.zero	4
	.quad	Type_S15Fixed16_Read
	.quad	Type_S15Fixed16_Write
	.quad	Type_S15Fixed16_Dup
	.quad	Type_S15Fixed16_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+192
	.long	1969632050              # 0x75663332
	.zero	4
	.quad	Type_U16Fixed16_Read
	.quad	Type_U16Fixed16_Write
	.quad	Type_U16Fixed16_Dup
	.quad	Type_U16Fixed16_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+256
	.long	1952807028              # 0x74657874
	.zero	4
	.quad	Type_Text_Read
	.quad	Type_Text_Write
	.quad	Type_Text_Dup
	.quad	Type_Text_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+320
	.long	1684370275              # 0x64657363
	.zero	4
	.quad	Type_Text_Description_Read
	.quad	Type_Text_Description_Write
	.quad	Type_Text_Description_Dup
	.quad	Type_Text_Description_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+384
	.long	1668641398              # 0x63757276
	.zero	4
	.quad	Type_Curve_Read
	.quad	Type_Curve_Write
	.quad	Type_Curve_Dup
	.quad	Type_Curve_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+448
	.long	1885434465              # 0x70617261
	.zero	4
	.quad	Type_ParametricCurve_Read
	.quad	Type_ParametricCurve_Write
	.quad	Type_ParametricCurve_Dup
	.quad	Type_ParametricCurve_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+512
	.long	1685350765              # 0x6474696d
	.zero	4
	.quad	Type_DateTime_Read
	.quad	Type_DateTime_Write
	.quad	Type_DateTime_Dup
	.quad	Type_DateTime_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+576
	.long	1835430961              # 0x6d667431
	.zero	4
	.quad	Type_LUT8_Read
	.quad	Type_LUT8_Write
	.quad	Type_LUT8_Dup
	.quad	Type_LUT8_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+640
	.long	1835430962              # 0x6d667432
	.zero	4
	.quad	Type_LUT16_Read
	.quad	Type_LUT16_Write
	.quad	Type_LUT16_Dup
	.quad	Type_LUT16_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+704
	.long	1668051572              # 0x636c7274
	.zero	4
	.quad	Type_ColorantTable_Read
	.quad	Type_ColorantTable_Write
	.quad	Type_ColorantTable_Dup
	.quad	Type_ColorantTable_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+768
	.long	1852009522              # 0x6e636c32
	.zero	4
	.quad	Type_NamedColor_Read
	.quad	Type_NamedColor_Write
	.quad	Type_NamedColor_Dup
	.quad	Type_NamedColor_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+832
	.long	1835824483              # 0x6d6c7563
	.zero	4
	.quad	Type_MLU_Read
	.quad	Type_MLU_Write
	.quad	Type_MLU_Dup
	.quad	Type_MLU_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+896
	.long	1886610801              # 0x70736571
	.zero	4
	.quad	Type_ProfileSequenceDesc_Read
	.quad	Type_ProfileSequenceDesc_Write
	.quad	Type_ProfileSequenceDesc_Dup
	.quad	Type_ProfileSequenceDesc_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+960
	.long	1936287520              # 0x73696720
	.zero	4
	.quad	Type_Signature_Read
	.quad	Type_Signature_Write
	.quad	Type_Signature_Dup
	.quad	Type_Signature_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1024
	.long	1835360627              # 0x6d656173
	.zero	4
	.quad	Type_Measurement_Read
	.quad	Type_Measurement_Write
	.quad	Type_Measurement_Dup
	.quad	Type_Measurement_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1088
	.long	1684108385              # 0x64617461
	.zero	4
	.quad	Type_Data_Read
	.quad	Type_Data_Write
	.quad	Type_Data_Dup
	.quad	Type_Data_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1152
	.long	1832993312              # 0x6d414220
	.zero	4
	.quad	Type_LUTA2B_Read
	.quad	Type_LUTA2B_Write
	.quad	Type_LUTA2B_Dup
	.quad	Type_LUTA2B_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1216
	.long	1833058592              # 0x6d424120
	.zero	4
	.quad	Type_LUTB2A_Read
	.quad	Type_LUTB2A_Write
	.quad	Type_LUTB2A_Dup
	.quad	Type_LUTB2A_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1280
	.long	1650877472              # 0x62666420
	.zero	4
	.quad	Type_UcrBg_Read
	.quad	Type_UcrBg_Write
	.quad	Type_UcrBg_Dup
	.quad	Type_UcrBg_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1344
	.long	1668441193              # 0x63726469
	.zero	4
	.quad	Type_CrdInfo_Read
	.quad	Type_CrdInfo_Write
	.quad	Type_CrdInfo_Dup
	.quad	Type_CrdInfo_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1408
	.long	1836082548              # 0x6d706574
	.zero	4
	.quad	Type_MPE_Read
	.quad	Type_MPE_Write
	.quad	Type_MPE_Dup
	.quad	Type_MPE_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1472
	.long	1935897198              # 0x7363726e
	.zero	4
	.quad	Type_Screening_Read
	.quad	Type_Screening_Write
	.quad	Type_Screening_Dup
	.quad	Type_Screening_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1536
	.long	1986618743              # 0x76696577
	.zero	4
	.quad	Type_ViewingConditions_Read
	.quad	Type_ViewingConditions_Write
	.quad	Type_ViewingConditions_Dup
	.quad	Type_ViewingConditions_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1600
	.long	1482250784              # 0x58595a20
	.zero	4
	.quad	Type_XYZ_Read
	.quad	Type_XYZ_Write
	.quad	Type_XYZ_Dup
	.quad	Type_XYZ_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1664
	.long	396690872               # 0x17a505b8
	.zero	4
	.quad	Type_XYZ_Read
	.quad	Type_XYZ_Write
	.quad	Type_XYZ_Dup
	.quad	Type_XYZ_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1728
	.long	2490953216              # 0x9478ee00
	.zero	4
	.quad	Type_Curve_Read
	.quad	Type_Curve_Write
	.quad	Type_Curve_Dup
	.quad	Type_Curve_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1792
	.long	1886611812              # 0x70736964
	.zero	4
	.quad	Type_ProfileSequenceId_Read
	.quad	Type_ProfileSequenceId_Write
	.quad	Type_ProfileSequenceId_Dup
	.quad	Type_ProfileSequenceId_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1856
	.long	1684628340              # 0x64696374
	.zero	4
	.quad	Type_Dictionary_Read
	.quad	Type_Dictionary_Write
	.quad	Type_Dictionary_Dup
	.quad	Type_Dictionary_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedTagTypes+1920
	.long	1986226036              # 0x76636774
	.zero	4
	.quad	Type_vcgt_Read
	.quad	Type_vcgt_Write
	.quad	Type_vcgt_Dup
	.quad	Type_vcgt_Free
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.size	SupportedTagTypes, 1984

	.type	_cmsTagPluginChunk,@object # @_cmsTagPluginChunk
	.bss
	.globl	_cmsTagPluginChunk
	.align	8
_cmsTagPluginChunk:
	.zero	8
	.size	_cmsTagPluginChunk, 8

	.type	_cmsAllocTagPluginChunk.TagPluginChunk,@object # @_cmsAllocTagPluginChunk.TagPluginChunk
	.local	_cmsAllocTagPluginChunk.TagPluginChunk
	.comm	_cmsAllocTagPluginChunk.TagPluginChunk,8,8
	.type	SupportedTags,@object   # @SupportedTags
	.data
	.align	16
SupportedTags:
	.long	1093812784              # 0x41324230
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1832993312              # 0x6d414220
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeA2B
	.quad	SupportedTags+112
	.long	1093812785              # 0x41324231
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1832993312              # 0x6d414220
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeA2B
	.quad	SupportedTags+224
	.long	1093812786              # 0x41324232
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1832993312              # 0x6d414220
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeA2B
	.quad	SupportedTags+336
	.long	1110589744              # 0x42324130
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+448
	.long	1110589745              # 0x42324131
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+560
	.long	1110589746              # 0x42324132
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+672
	.long	1918392666              # 0x7258595a
	.zero	4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1482250784              # 0x58595a20
	.long	396690872               # 0x17a505b8
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideXYZtype
	.quad	SupportedTags+784
	.long	1733843290              # 0x6758595a
	.zero	4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1482250784              # 0x58595a20
	.long	396690872               # 0x17a505b8
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideXYZtype
	.quad	SupportedTags+896
	.long	1649957210              # 0x6258595a
	.zero	4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1482250784              # 0x58595a20
	.long	396690872               # 0x17a505b8
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideXYZtype
	.quad	SupportedTags+1008
	.long	1918128707              # 0x72545243
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1668641398              # 0x63757276
	.long	1885434465              # 0x70617261
	.long	2490953216              # 0x9478ee00
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideCurveType
	.quad	SupportedTags+1120
	.long	1733579331              # 0x67545243
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1668641398              # 0x63757276
	.long	1885434465              # 0x70617261
	.long	2490953216              # 0x9478ee00
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideCurveType
	.quad	SupportedTags+1232
	.long	1649693251              # 0x62545243
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1668641398              # 0x63757276
	.long	1885434465              # 0x70617261
	.long	2490953216              # 0x9478ee00
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideCurveType
	.quad	SupportedTags+1344
	.long	1667329140              # 0x63616c74
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1685350765              # 0x6474696d
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+1456
	.long	1952543335              # 0x74617267
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1952807028              # 0x74657874
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+1568
	.long	1667785060              # 0x63686164
	.zero	4
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	1936077618              # 0x73663332
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+1680
	.long	1667789421              # 0x6368726d
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1667789421              # 0x6368726d
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+1792
	.long	1668051567              # 0x636c726f
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1668051567              # 0x636c726f
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+1904
	.long	1668051572              # 0x636c7274
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1668051572              # 0x636c7274
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+2016
	.long	1668050804              # 0x636c6f74
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1668051572              # 0x636c7274
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+2128
	.long	1668313716              # 0x63707274
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1952807028              # 0x74657874
	.long	1835824483              # 0x6d6c7563
	.long	1684370275              # 0x64657363
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideTextType
	.quad	SupportedTags+2240
	.long	1685350765              # 0x6474696d
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1685350765              # 0x6474696d
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+2352
	.long	1684893284              # 0x646d6e64
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1684370275              # 0x64657363
	.long	1835824483              # 0x6d6c7563
	.long	1952807028              # 0x74657874
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideTextDescType
	.quad	SupportedTags+2464
	.long	1684890724              # 0x646d6464
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1684370275              # 0x64657363
	.long	1835824483              # 0x6d6c7563
	.long	1952807028              # 0x74657874
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideTextDescType
	.quad	SupportedTags+2576
	.long	1734438260              # 0x67616d74
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+2688
	.long	1800688195              # 0x6b545243
	.zero	4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1668641398              # 0x63757276
	.long	1885434465              # 0x70617261
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideCurveType
	.quad	SupportedTags+2800
	.long	1819635049              # 0x6c756d69
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1482250784              # 0x58595a20
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+2912
	.long	1651208308              # 0x626b7074
	.zero	4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1482250784              # 0x58595a20
	.long	396690872               # 0x17a505b8
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+3024
	.long	2004119668              # 0x77747074
	.zero	4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1482250784              # 0x58595a20
	.long	396690872               # 0x17a505b8
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+3136
	.long	1852009522              # 0x6e636c32
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1852009522              # 0x6e636c32
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+3248
	.long	1886545200              # 0x70726530
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+3360
	.long	1886545201              # 0x70726531
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+3472
	.long	1886545202              # 0x70726532
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1835430962              # 0x6d667432
	.long	1833058592              # 0x6d424120
	.long	1835430961              # 0x6d667431
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideLUTtypeB2A
	.quad	SupportedTags+3584
	.long	1684370275              # 0x64657363
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1684370275              # 0x64657363
	.long	1835824483              # 0x6d6c7563
	.long	1952807028              # 0x74657874
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideTextDescType
	.quad	SupportedTags+3696
	.long	1886610801              # 0x70736571
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1886610801              # 0x70736571
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+3808
	.long	1952801640              # 0x74656368
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1936287520              # 0x73696720
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+3920
	.long	1667852659              # 0x63696973
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1936287520              # 0x73696720
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4032
	.long	1919510320              # 0x72696730
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1936287520              # 0x73696720
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4144
	.long	1919510322              # 0x72696732
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1936287520              # 0x73696720
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4256
	.long	1835360627              # 0x6d656173
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1835360627              # 0x6d656173
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4368
	.long	1886610480              # 0x70736430
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684108385              # 0x64617461
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4480
	.long	1886610481              # 0x70736431
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684108385              # 0x64617461
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4592
	.long	1886610482              # 0x70736432
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684108385              # 0x64617461
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4704
	.long	1886610483              # 0x70736433
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684108385              # 0x64617461
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4816
	.long	1886597747              # 0x70733273
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684108385              # 0x64617461
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+4928
	.long	1886597737              # 0x70733269
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684108385              # 0x64617461
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5040
	.long	1987405156              # 0x76756564
	.zero	4
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	1684370275              # 0x64657363
	.long	1835824483              # 0x6d6c7563
	.long	1952807028              # 0x74657874
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	DecideTextDescType
	.quad	SupportedTags+5152
	.long	1650877472              # 0x62666420
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1650877472              # 0x62666420
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5264
	.long	1668441193              # 0x63726469
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1668441193              # 0x63726469
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5376
	.long	1144144432              # 0x44324230
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5488
	.long	1144144433              # 0x44324231
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5600
	.long	1144144434              # 0x44324232
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5712
	.long	1144144435              # 0x44324233
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5824
	.long	1110590512              # 0x42324430
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+5936
	.long	1110590513              # 0x42324431
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6048
	.long	1110590514              # 0x42324432
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6160
	.long	1110590515              # 0x42324433
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1836082548              # 0x6d706574
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6272
	.long	1935897188              # 0x73637264
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684370275              # 0x64657363
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6384
	.long	1986618743              # 0x76696577
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1986618743              # 0x76696577
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6496
	.long	1935897198              # 0x7363726e
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1935897198              # 0x7363726e
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6608
	.long	1986226036              # 0x76636774
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1986226036              # 0x76636774
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6720
	.long	1835365473              # 0x6d657461
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1684628340              # 0x64696374
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6832
	.long	1886611812              # 0x70736964
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1886611812              # 0x70736964
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	SupportedTags+6944
	.long	1685283693              # 0x6473636d
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1835824483              # 0x6d6c7563
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.size	SupportedTags, 7056

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.zero	3
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str4.4,"aMS",@progbits,4
	.align	4
.L.str.2:
	.zero	4
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"(io != ((void*)0))"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"./lcms2/src/cmstypes.c"
	.size	.L.str.4, 23

	.type	.L__PRETTY_FUNCTION__._cmsWriteWCharArray,@object # @__PRETTY_FUNCTION__._cmsWriteWCharArray
.L__PRETTY_FUNCTION__._cmsWriteWCharArray:
	.asciz	"cmsBool _cmsWriteWCharArray(cmsIOHANDLER *, cmsUInt32Number, const wchar_t *)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteWCharArray, 78

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(!(Array == ((void*)0) && n > 0))"
	.size	.L.str.5, 34

	.type	Type_ParametricCurve_Read.ParamsByType,@object # @Type_ParametricCurve_Read.ParamsByType
	.section	.rodata,"a",@progbits
	.align	16
Type_ParametricCurve_Read.ParamsByType:
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	7                       # 0x7
	.size	Type_ParametricCurve_Read.ParamsByType, 20

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Unknown parametric curve type '%d'"
	.size	.L.str.6, 35

	.type	Type_ParametricCurve_Write.ParamsByType,@object # @Type_ParametricCurve_Write.ParamsByType
	.section	.rodata,"a",@progbits
	.align	16
Type_ParametricCurve_Write.ParamsByType:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	7                       # 0x7
	.size	Type_ParametricCurve_Write.ParamsByType, 24

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Multisegment or Inverted parametric curves cannot be written"
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Unsupported parametric curve"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"LUT is not suitable to be saved as LUT8"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"LUT8 needs 256 entries on prelinearization"
	.size	.L.str.10, 43

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"LUT is not suitable to be saved as LUT16"
	.size	.L.str.11, 41

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Too many colorants '%d'"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Too many named colors '%d'"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Too many device coordinates '%d'"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"multiLocalizedUnicodeType of len != 12 is not supported."
	.size	.L.str.16, 57

	.type	.L__PRETTY_FUNCTION__._cmsReadWCharArray,@object # @__PRETTY_FUNCTION__._cmsReadWCharArray
.L__PRETTY_FUNCTION__._cmsReadWCharArray:
	.asciz	"cmsBool _cmsReadWCharArray(cmsIOHANDLER *, cmsUInt32Number, wchar_t *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadWCharArray, 71

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unknown curve type '%s'"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Unknown precision of '%d'"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LUT is not suitable to be saved as LutAToB"
	.size	.L.str.19, 43

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Cannot save floating point data, CLUT are 8 or 16 bit only"
	.size	.L.str.20, 59

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"LUT is not suitable to be saved as LutBToA"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"nm"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"#0"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"#1"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"#2"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"#3"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"PS"
	.size	.L.str.27, 3

	.type	SupportedMPEtypes,@object # @SupportedMPEtypes
	.data
	.align	16
SupportedMPEtypes:
	.long	1648444243              # 0x62414353
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedMPEtypes+64
	.long	1698775891              # 0x65414353
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedMPEtypes+128
	.long	1668707188              # 0x63767374
	.zero	4
	.quad	Type_MPEcurve_Read
	.quad	Type_MPEcurve_Write
	.quad	GenericMPEdup
	.quad	GenericMPEfree
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedMPEtypes+192
	.long	1835103334              # 0x6d617466
	.zero	4
	.quad	Type_MPEmatrix_Read
	.quad	Type_MPEmatrix_Write
	.quad	GenericMPEdup
	.quad	GenericMPEfree
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	SupportedMPEtypes+256
	.long	1668052340              # 0x636c7574
	.zero	4
	.quad	Type_MPEclut_Read
	.quad	Type_MPEclut_Write
	.quad	GenericMPEdup
	.quad	GenericMPEfree
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.size	SupportedMPEtypes, 320

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Unknown MPE type '%s' found."
	.size	.L.str.28, 29

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Unknown curve element type '%s' found."
	.size	.L.str.29, 39

	.type	.LWriteSegmentedCurve.ParamsByType,@object # @WriteSegmentedCurve.ParamsByType
	.section	.rodata,"a",@progbits
	.align	4
.LWriteSegmentedCurve.ParamsByType:
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	5                       # 0x5
	.size	.LWriteSegmentedCurve.ParamsByType, 12

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"Found unknown MPE type '%s'"
	.size	.L.str.30, 28

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown record length in dictionary '%d'"
	.size	.L.str.31, 41

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Bad dictionary Name/Value"
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Unsupported number of channels for VCGT '%d'"
	.size	.L.str.33, 45

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Unsupported bit depth for VCGT '%d'"
	.size	.L.str.34, 36

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Unsupported tag type for VCGT '%d'"
	.size	.L.str.35, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
