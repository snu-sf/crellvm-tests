	.text
	.file	"cmserr.bc"
	.globl	cmsstrcasecmp
	.align	16, 0x90
	.type	cmsstrcasecmp,@function
cmsstrcasecmp:                          # @cmsstrcasecmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ctype_toupper_loc
	movq	(%rax), %rcx
	.align	16, 0x90
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	movl	(%rcx,%rdx,4), %eax
	movzbl	(%r14), %esi
	subl	(%rcx,%rsi,4), %eax
	jne	.LBB0_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%r14
	incq	%rbx
	xorl	%eax, %eax
	testb	%dl, %dl
	jne	.LBB0_1
.LBB0_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	cmsstrcasecmp, .Lfunc_end0-cmsstrcasecmp
	.cfi_endproc

	.globl	cmsfilelength
	.align	16, 0x90
	.type	cmsfilelength,@function
cmsfilelength:                          # @cmsfilelength
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	ftell
	movq	%rax, %r14
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	fseek
	testl	%eax, %eax
	je	.LBB1_1
# BB#2:                                 # %cleanup
	movq	$-1, %rax
	jmp	.LBB1_3
.LBB1_1:                                # %if.end
	movq	%rbx, %rdi
	callq	ftell
	movq	%rax, %r15
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fseek
	movq	%r15, %rax
.LBB1_3:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	cmsfilelength, .Lfunc_end1-cmsfilelength
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsMallocDefaultFn,@function
_cmsMallocDefaultFn:                    # @_cmsMallocDefaultFn
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$536870912, %esi        # imm = 0x20000000
	jbe	.LBB2_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB2_2:                                # %if.end
	movl	%esi, %edi
	jmp	malloc                  # TAILCALL
.Lfunc_end2:
	.size	_cmsMallocDefaultFn, .Lfunc_end2-_cmsMallocDefaultFn
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsMallocZeroDefaultFn,@function
_cmsMallocZeroDefaultFn:                # @_cmsMallocZeroDefaultFn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*(%rax)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.end
	movl	%ebp, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, %rax
.LBB3_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_cmsMallocZeroDefaultFn, .Lfunc_end3-_cmsMallocZeroDefaultFn
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsFreeDefaultFn,@function
_cmsFreeDefaultFn:                      # @_cmsFreeDefaultFn
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB4_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.LBB4_1:                                # %if.end
	retq
.Lfunc_end4:
	.size	_cmsFreeDefaultFn, .Lfunc_end4-_cmsFreeDefaultFn
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsReallocDefaultFn,@function
_cmsReallocDefaultFn:                   # @_cmsReallocDefaultFn
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$536870912, %edx        # imm = 0x20000000
	jbe	.LBB5_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB5_2:                                # %if.end
	movl	%edx, %eax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	realloc                 # TAILCALL
.Lfunc_end5:
	.size	_cmsReallocDefaultFn, .Lfunc_end5-_cmsReallocDefaultFn
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsCallocDefaultFn,@function
_cmsCallocDefaultFn:                    # @_cmsCallocDefaultFn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movl	%edx, %ecx
	movq	%rdi, %r14
	movl	%ecx, %ebx
	imull	%esi, %ebx
	testl	%ebx, %ebx
	je	.LBB6_5
# BB#1:                                 # %if.end
	movl	$-1, %eax
	xorl	%edx, %edx
	divl	%ecx
	cmpl	%esi, %eax
	jbe	.LBB6_5
# BB#2:                                 # %if.end.3
	cmpl	$536870912, %ebx        # imm = 0x20000000
	ja	.LBB6_5
# BB#3:                                 # %if.end.3
	cmpl	%esi, %ebx
	jb	.LBB6_5
# BB#4:                                 # %if.end.3
	cmpl	%ecx, %ebx
	jb	.LBB6_5
# BB#6:                                 # %if.end.10
	movl	$4, %esi
	movq	%r14, %rdi
	callq	_cmsContextGetClientChunk
	movq	8(%rax), %rax
	movq	%r14, %rdi
	movl	%ebx, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB6_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	_cmsCallocDefaultFn, .Lfunc_end6-_cmsCallocDefaultFn
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsDupDefaultFn,@function
_cmsDupDefaultFn:                       # @_cmsDupDefaultFn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	cmpl	$536870912, %ebp        # imm = 0x20000000
	ja	.LBB7_4
# BB#1:                                 # %if.end
	movl	$4, %esi
	movq	%r15, %rdi
	callq	_cmsContextGetClientChunk
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*(%rax)
	movq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB7_4
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movl	%ebp, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memmove
.LBB7_4:                                # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_cmsDupDefaultFn, .Lfunc_end7-_cmsDupDefaultFn
	.cfi_endproc

	.globl	_cmsAllocMemPluginChunk
	.align	16, 0x90
	.type	_cmsAllocMemPluginChunk,@function
_cmsAllocMemPluginChunk:                # @_cmsAllocMemPluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB8_7
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB8_5
# BB#2:                                 # %if.then
	movq	48(%rsi), %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB8_6
# BB#3:                                 # %if.end.i
	movq	8(%rbx), %rdi
	movl	$48, %esi
	callq	_cmsSubAlloc
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB8_6
# BB#4:                                 # %if.then.3.i
	movl	$48, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%r15, %rax
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	leaq	136(%rbx), %rax
.LBB8_6:                                # %if.end
	movq	%rax, 48(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB8_7:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$180, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsAllocMemPluginChunk, %ecx
	callq	__assert_fail
.Lfunc_end8:
	.size	_cmsAllocMemPluginChunk, .Lfunc_end8-_cmsAllocMemPluginChunk
	.cfi_endproc

	.globl	_cmsSubAllocDup
	.align	16, 0x90
	.type	_cmsSubAllocDup,@function
_cmsSubAllocDup:                        # @_cmsSubAllocDup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB9_3
# BB#1:                                 # %if.end
	movl	%r14d, %esi
	callq	_cmsSubAlloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB9_3
# BB#2:                                 # %if.then.3
	movl	%r14d, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbp, %rax
.LBB9_3:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_cmsSubAllocDup, .Lfunc_end9-_cmsSubAllocDup
	.cfi_endproc

	.globl	_cmsInstallAllocFunctions
	.align	16, 0x90
	.type	_cmsInstallAllocFunctions,@function
_cmsInstallAllocFunctions:              # @_cmsInstallAllocFunctions
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	testq	%rdi, %rdi
	je	.LBB10_8
# BB#1:                                 # %if.else
	movq	24(%rdi), %rcx
	movq	%rcx, (%rax)
	movups	32(%rdi), %xmm0
	movups	%xmm0, 16(%rax)
	movq	$_cmsMallocZeroDefaultFn, 8(%rax)
	movq	$_cmsCallocDefaultFn, 32(%rax)
	movq	$_cmsDupDefaultFn, 40(%rax)
	movq	48(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_3
# BB#2:                                 # %if.then.8
	movq	%rcx, 8(%rax)
.LBB10_3:                               # %if.end
	movq	56(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_5
# BB#4:                                 # %if.then.14
	movq	%rcx, 32(%rax)
.LBB10_5:                               # %if.end.17
	movq	64(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_7
# BB#6:                                 # %if.then.20
	movq	%rcx, 40(%rax)
.LBB10_7:                               # %if.end.24
	retq
.LBB10_8:                               # %if.then
	movl	$_cmsMemPluginChunk, %esi
	movl	$48, %edx
	movq	%rax, %rdi
	jmp	memcpy                  # TAILCALL
.Lfunc_end10:
	.size	_cmsInstallAllocFunctions, .Lfunc_end10-_cmsInstallAllocFunctions
	.cfi_endproc

	.globl	_cmsRegisterMemHandlerPlugin
	.align	16, 0x90
	.type	_cmsRegisterMemHandlerPlugin,@function
_cmsRegisterMemHandlerPlugin:           # @_cmsRegisterMemHandlerPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 32
.Ltmp45:
	.cfi_offset %rbx, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB11_1
# BB#3:                                 # %if.end.3
	xorl	%ebp, %ebp
	cmpq	$0, 24(%rbx)
	je	.LBB11_13
# BB#4:                                 # %lor.lhs.false
	cmpq	$0, 32(%rbx)
	je	.LBB11_13
# BB#5:                                 # %lor.lhs.false.6
	cmpq	$0, 40(%rbx)
	je	.LBB11_13
# BB#6:                                 # %if.end.9
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB11_13
# BB#7:                                 # %if.else.i
	movq	24(%rbx), %rcx
	movq	%rcx, (%rax)
	movups	32(%rbx), %xmm0
	movups	%xmm0, 16(%rax)
	movq	$_cmsMallocZeroDefaultFn, 8(%rax)
	movq	$_cmsCallocDefaultFn, 32(%rax)
	movq	$_cmsDupDefaultFn, 40(%rax)
	movq	48(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_9
# BB#8:                                 # %if.then.8.i
	movq	%rcx, 8(%rax)
.LBB11_9:                               # %if.end.i
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB11_11
# BB#10:                                # %if.then.14.i
	movq	%rcx, 32(%rax)
.LBB11_11:                              # %if.end.17.i
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	testq	%rcx, %rcx
	je	.LBB11_13
# BB#12:                                # %if.then.20.i
	movq	%rcx, 40(%rax)
	jmp	.LBB11_13
.LBB11_1:                               # %if.then
	movl	$1, %ebp
	testq	%rdi, %rdi
	je	.LBB11_13
# BB#2:                                 # %if.then.2
	leaq	136(%rdi), %rax
	movq	%rax, 48(%rdi)
.LBB11_13:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_cmsRegisterMemHandlerPlugin, .Lfunc_end11-_cmsRegisterMemHandlerPlugin
	.cfi_endproc

	.globl	_cmsMalloc
	.align	16, 0x90
	.type	_cmsMalloc,@function
_cmsMalloc:                             # @_cmsMalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	_cmsMalloc, .Lfunc_end12-_cmsMalloc
	.cfi_endproc

	.globl	_cmsMallocZero
	.align	16, 0x90
	.type	_cmsMallocZero,@function
_cmsMallocZero:                         # @_cmsMallocZero
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movq	8(%rax), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end13:
	.size	_cmsMallocZero, .Lfunc_end13-_cmsMallocZero
	.cfi_endproc

	.globl	_cmsCalloc
	.align	16, 0x90
	.type	_cmsCalloc,@function
_cmsCalloc:                             # @_cmsCalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movq	32(%rax), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end14:
	.size	_cmsCalloc, .Lfunc_end14-_cmsCalloc
	.cfi_endproc

	.globl	_cmsRealloc
	.align	16, 0x90
	.type	_cmsRealloc,@function
_cmsRealloc:                            # @_cmsRealloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movq	24(%rax), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end15:
	.size	_cmsRealloc, .Lfunc_end15-_cmsRealloc
	.cfi_endproc

	.globl	_cmsFree
	.align	16, 0x90
	.type	_cmsFree,@function
_cmsFree:                               # @_cmsFree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB16_1
# BB#2:                                 # %if.then
	movl	$4, %esi
	movq	%r14, %rdi
	callq	_cmsContextGetClientChunk
	movq	16(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB16_1:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	_cmsFree, .Lfunc_end16-_cmsFree
	.cfi_endproc

	.globl	_cmsDupMem
	.align	16, 0x90
	.type	_cmsDupMem,@function
_cmsDupMem:                             # @_cmsDupMem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movq	40(%rax), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end17:
	.size	_cmsDupMem, .Lfunc_end17-_cmsDupMem
	.cfi_endproc

	.globl	_cmsCreateSubAlloc
	.align	16, 0x90
	.type	_cmsCreateSubAlloc,@function
_cmsCreateSubAlloc:                     # @_cmsCreateSubAlloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 48
.Ltmp85:
	.cfi_offset %rbx, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB18_5
# BB#1:                                 # %if.end
	movq	%rbx, (%r14)
	testl	%ebp, %ebp
	movl	$20480, %r15d           # imm = 0x5000
	cmovnel	%ebp, %r15d
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	_cmsContextGetClientChunk
	movl	$24, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB18_4
# BB#2:                                 # %if.end.3.i
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	_cmsContextGetClientChunk
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*(%rax)
	movq	%rax, (%rbp)
	testq	%rax, %rax
	je	.LBB18_3
# BB#6:                                 # %_cmsCreateSubAllocChunk.exit
	movl	%r15d, 8(%rbp)
	movl	$0, 12(%rbp)
	movq	$0, 16(%rbp)
	movq	%rbp, 8(%r14)
	movq	%r14, %rax
	jmp	.LBB18_5
.LBB18_3:                               # %_cmsFree.exit16
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	_cmsContextGetClientChunk
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*16(%rax)
.LBB18_4:                               # %_cmsFree.exit
	movq	$0, 8(%r14)
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	_cmsContextGetClientChunk
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	xorl	%eax, %eax
.LBB18_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_cmsCreateSubAlloc, .Lfunc_end18-_cmsCreateSubAlloc
	.cfi_endproc

	.globl	_cmsSubAllocDestroy
	.align	16, 0x90
	.type	_cmsSubAllocDestroy,@function
_cmsSubAllocDestroy:                    # @_cmsSubAllocDestroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 48
.Ltmp94:
	.cfi_offset %rbx, -48
.Ltmp95:
	.cfi_offset %r12, -40
.Ltmp96:
	.cfi_offset %r13, -32
.Ltmp97:
	.cfi_offset %r14, -24
.Ltmp98:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB19_4
	.align	16, 0x90
.LBB19_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	movq	16(%rbx), %r13
	testq	%r15, %r15
	je	.LBB19_3
# BB#2:                                 # %_cmsFree.exit
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	(%r14), %r12
	movl	$4, %esi
	movq	%r12, %rdi
	callq	_cmsContextGetClientChunk
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*16(%rax)
.LBB19_3:                               # %for.cond.backedge
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	(%r14), %r15
	movl	$4, %esi
	movq	%r15, %rdi
	callq	_cmsContextGetClientChunk
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*16(%rax)
	testq	%r13, %r13
	movq	%r13, %rbx
	jne	.LBB19_1
.LBB19_4:                               # %_cmsFree.exit20
	movq	(%r14), %rbx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	_cmsContextGetClientChunk
	movq	16(%rax), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end19:
	.size	_cmsSubAllocDestroy, .Lfunc_end19-_cmsSubAllocDestroy
	.cfi_endproc

	.globl	_cmsSubAlloc
	.align	16, 0x90
	.type	_cmsSubAlloc,@function
_cmsSubAlloc:                           # @_cmsSubAlloc
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
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 48
.Ltmp104:
	.cfi_offset %rbx, -48
.Ltmp105:
	.cfi_offset %r12, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	8(%r14), %r15
	movl	8(%r15), %eax
	movl	12(%r15), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	addl	$7, %ebx
	andl	$-8, %ebx
	cmpl	%edx, %ebx
	jbe	.LBB20_5
# BB#1:                                 # %if.then
	addl	%eax, %eax
	cmpl	%ebx, %eax
	cmovbl	%ebx, %eax
	movq	(%r14), %r12
	testl	%eax, %eax
	movl	$20480, %ebp            # imm = 0x5000
	cmovnel	%eax, %ebp
	movl	$4, %esi
	movq	%r12, %rdi
	callq	_cmsContextGetClientChunk
	movl	$24, %esi
	movq	%r12, %rdi
	callq	*8(%rax)
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB20_6
# BB#2:                                 # %if.end.3.i
	movl	$4, %esi
	movq	%r12, %rdi
	callq	_cmsContextGetClientChunk
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	*(%rax)
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB20_3
# BB#4:                                 # %if.end.13
	movl	%ebp, 8(%r15)
	movl	$0, 12(%r15)
	movq	8(%r14), %rax
	movq	%rax, 16(%r15)
	movq	%r15, 8(%r14)
	movl	12(%r15), %ecx
.LBB20_5:                               # %if.end.17
	movl	%ecx, %eax
	addq	(%r15), %rax
	addl	%ecx, %ebx
	movl	%ebx, 12(%r15)
.LBB20_6:                               # %cleanup.24
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_3:                               # %_cmsFree.exit
	movl	$4, %esi
	movq	%r12, %rdi
	callq	_cmsContextGetClientChunk
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*16(%rax)
	xorl	%eax, %eax
	jmp	.LBB20_6
.Lfunc_end20:
	.size	_cmsSubAlloc, .Lfunc_end20-_cmsSubAlloc
	.cfi_endproc

	.align	16, 0x90
	.type	DefaultLogErrorHandlerFunction,@function
DefaultLogErrorHandlerFunction:         # @DefaultLogErrorHandlerFunction
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end21:
	.size	DefaultLogErrorHandlerFunction, .Lfunc_end21-DefaultLogErrorHandlerFunction
	.cfi_endproc

	.globl	_cmsAllocLogErrorChunk
	.align	16, 0x90
	.type	_cmsAllocLogErrorChunk,@function
_cmsAllocLogErrorChunk:                 # @_cmsAllocLogErrorChunk
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
.Ltmp112:
	.cfi_offset %rbx, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$_cmsAllocLogErrorChunk.LogErrorChunk, %r15d
	testq	%rsi, %rsi
	je	.LBB22_2
# BB#1:                                 # %if.end
	movq	24(%rsi), %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB22_4
.LBB22_2:                               # %if.end.i
	movq	8(%r14), %rdi
	movl	$8, %esi
	callq	_cmsSubAlloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB22_4
# BB#3:                                 # %if.then.3.i
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%rbx, %rax
.LBB22_4:                               # %_cmsSubAllocDup.exit
	movq	%rax, 24(%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	_cmsAllocLogErrorChunk, .Lfunc_end22-_cmsAllocLogErrorChunk
	.cfi_endproc

	.globl	cmsSetLogErrorHandlerTHR
	.align	16, 0x90
	.type	cmsSetLogErrorHandlerTHR,@function
cmsSetLogErrorHandlerTHR:               # @cmsSetLogErrorHandlerTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$1, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB23_4
# BB#1:                                 # %if.then
	testq	%rbx, %rbx
	je	.LBB23_2
# BB#3:                                 # %if.else
	movq	%rbx, (%rax)
.LBB23_4:                               # %if.end.4
	popq	%rbx
	retq
.LBB23_2:                               # %if.then.2
	movq	$DefaultLogErrorHandlerFunction, (%rax)
	popq	%rbx
	retq
.Lfunc_end23:
	.size	cmsSetLogErrorHandlerTHR, .Lfunc_end23-cmsSetLogErrorHandlerTHR
	.cfi_endproc

	.globl	cmsSetLogErrorHandler
	.align	16, 0x90
	.type	cmsSetLogErrorHandler,@function
cmsSetLogErrorHandler:                  # @cmsSetLogErrorHandler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%edi, %edi
	movl	$1, %esi
	callq	_cmsContextGetClientChunk
	testq	%rax, %rax
	je	.LBB24_4
# BB#1:                                 # %if.then.i
	testq	%rbx, %rbx
	je	.LBB24_2
# BB#3:                                 # %if.else.i
	movq	%rbx, (%rax)
.LBB24_4:                               # %cmsSetLogErrorHandlerTHR.exit
	popq	%rbx
	retq
.LBB24_2:                               # %if.then.2.i
	movq	$DefaultLogErrorHandlerFunction, (%rax)
	popq	%rbx
	retq
.Lfunc_end24:
	.size	cmsSetLogErrorHandler, .Lfunc_end24-cmsSetLogErrorHandler
	.cfi_endproc

	.globl	cmsSignalError
	.align	16, 0x90
	.type	cmsSignalError,@function
cmsSignalError:                         # @cmsSignalError
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 24
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp121:
	.cfi_def_cfa_offset 1248
.Ltmp122:
	.cfi_offset %rbx, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB25_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB25_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 1216(%rsp)
	leaq	1248(%rsp), %rax
	movq	%rax, 1208(%rsp)
	movl	$48, 1204(%rsp)
	movl	$24, 1200(%rsp)
	leaq	176(%rsp), %rdi
	leaq	1200(%rsp), %rcx
	movl	$1023, %esi             # imm = 0x3FF
	callq	vsnprintf
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB25_4
# BB#3:                                 # %if.then
	leaq	176(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*%rax
.LBB25_4:                               # %if.end
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	cmsSignalError, .Lfunc_end25-cmsSignalError
	.cfi_endproc

	.globl	_cmsTagSignature2String
	.align	16, 0x90
	.type	_cmsTagSignature2String,@function
_cmsTagSignature2String:                # @_cmsTagSignature2String
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp125:
	.cfi_def_cfa_offset 32
.Ltmp126:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%esi, %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memmove
	movb	$0, 4(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end26:
	.size	_cmsTagSignature2String, .Lfunc_end26-_cmsTagSignature2String
	.cfi_endproc

	.align	16, 0x90
	.type	defMtxCreate,@function
defMtxCreate:                           # @defMtxCreate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$4, %esi
	callq	_cmsContextGetClientChunk
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	%rax, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pthread_mutex_init
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end27:
	.size	defMtxCreate, .Lfunc_end27-defMtxCreate
	.cfi_endproc

	.align	16, 0x90
	.type	defMtxDestroy,@function
defMtxDestroy:                          # @defMtxDestroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 32
.Ltmp132:
	.cfi_offset %rbx, -24
.Ltmp133:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	pthread_mutex_destroy
	testq	%rbx, %rbx
	je	.LBB28_1
# BB#2:                                 # %if.then.i
	movl	$4, %esi
	movq	%r14, %rdi
	callq	_cmsContextGetClientChunk
	movq	16(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB28_1:                               # %_cmsFree.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end28:
	.size	defMtxDestroy, .Lfunc_end28-defMtxDestroy
	.cfi_endproc

	.align	16, 0x90
	.type	defMtxLock,@function
defMtxLock:                             # @defMtxLock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end29:
	.size	defMtxLock, .Lfunc_end29-defMtxLock
	.cfi_endproc

	.align	16, 0x90
	.type	defMtxUnlock,@function
defMtxUnlock:                           # @defMtxUnlock
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	pthread_mutex_unlock    # TAILCALL
.Lfunc_end30:
	.size	defMtxUnlock, .Lfunc_end30-defMtxUnlock
	.cfi_endproc

	.globl	_cmsAllocMutexPluginChunk
	.align	16, 0x90
	.type	_cmsAllocMutexPluginChunk,@function
_cmsAllocMutexPluginChunk:              # @_cmsAllocMutexPluginChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 32
.Ltmp138:
	.cfi_offset %rbx, -32
.Ltmp139:
	.cfi_offset %r14, -24
.Ltmp140:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$_cmsAllocMutexPluginChunk.MutexChunk, %r15d
	testq	%rsi, %rsi
	je	.LBB31_2
# BB#1:                                 # %if.end
	movq	128(%rsi), %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB31_4
.LBB31_2:                               # %if.end.i
	movq	8(%r14), %rdi
	movl	$32, %esi
	callq	_cmsSubAlloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB31_4
# BB#3:                                 # %if.then.3.i
	movl	$32, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%rbx, %rax
.LBB31_4:                               # %_cmsSubAllocDup.exit
	movq	%rax, 128(%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end31:
	.size	_cmsAllocMutexPluginChunk, .Lfunc_end31-_cmsAllocMutexPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterMutexPlugin
	.align	16, 0x90
	.type	_cmsRegisterMutexPlugin,@function
_cmsRegisterMutexPlugin:                # @_cmsRegisterMutexPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$14, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %rcx
	testq	%rbx, %rbx
	je	.LBB32_1
# BB#2:                                 # %if.end
	movq	24(%rbx), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB32_8
# BB#3:                                 # %lor.lhs.false
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB32_8
# BB#4:                                 # %lor.lhs.false.5
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB32_8
# BB#5:                                 # %lor.lhs.false.8
	movq	48(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB32_8
# BB#6:                                 # %if.end.12
	movq	%rdx, (%rcx)
	movq	%rsi, 8(%rcx)
	movq	%rdi, 16(%rcx)
	movq	%rbx, 24(%rcx)
	jmp	.LBB32_7
.LBB32_1:                               # %if.then
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movups	%xmm0, 16(%rcx)
.LBB32_7:                               # %cleanup
	movl	$1, %eax
.LBB32_8:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end32:
	.size	_cmsRegisterMutexPlugin, .Lfunc_end32-_cmsRegisterMutexPlugin
	.cfi_endproc

	.globl	_cmsCreateMutex
	.align	16, 0x90
	.type	_cmsCreateMutex,@function
_cmsCreateMutex:                        # @_cmsCreateMutex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$14, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB33_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB33_1:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end33:
	.size	_cmsCreateMutex, .Lfunc_end33-_cmsCreateMutex
	.cfi_endproc

	.globl	_cmsDestroyMutex
	.align	16, 0x90
	.type	_cmsDestroyMutex,@function
_cmsDestroyMutex:                       # @_cmsDestroyMutex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp147:
	.cfi_def_cfa_offset 32
.Ltmp148:
	.cfi_offset %rbx, -24
.Ltmp149:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$14, %esi
	callq	_cmsContextGetClientChunk
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB34_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB34_1:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end34:
	.size	_cmsDestroyMutex, .Lfunc_end34-_cmsDestroyMutex
	.cfi_endproc

	.globl	_cmsLockMutex
	.align	16, 0x90
	.type	_cmsLockMutex,@function
_cmsLockMutex:                          # @_cmsLockMutex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 32
.Ltmp153:
	.cfi_offset %rbx, -24
.Ltmp154:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$14, %esi
	callq	_cmsContextGetClientChunk
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB35_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB35_1:                               # %cleanup
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end35:
	.size	_cmsLockMutex, .Lfunc_end35-_cmsLockMutex
	.cfi_endproc

	.globl	_cmsUnlockMutex
	.align	16, 0x90
	.type	_cmsUnlockMutex,@function
_cmsUnlockMutex:                        # @_cmsUnlockMutex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp157:
	.cfi_def_cfa_offset 32
.Ltmp158:
	.cfi_offset %rbx, -24
.Ltmp159:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$14, %esi
	callq	_cmsContextGetClientChunk
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB36_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB36_1:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end36:
	.size	_cmsUnlockMutex, .Lfunc_end36-_cmsUnlockMutex
	.cfi_endproc

	.type	_cmsMemPluginChunk,@object # @_cmsMemPluginChunk
	.data
	.globl	_cmsMemPluginChunk
	.align	8
_cmsMemPluginChunk:
	.quad	_cmsMallocDefaultFn
	.quad	_cmsMallocZeroDefaultFn
	.quad	_cmsFreeDefaultFn
	.quad	_cmsReallocDefaultFn
	.quad	_cmsCallocDefaultFn
	.quad	_cmsDupDefaultFn
	.size	_cmsMemPluginChunk, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(ctx != ((void*)0))"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmserr.c"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__._cmsAllocMemPluginChunk,@object # @__PRETTY_FUNCTION__._cmsAllocMemPluginChunk
.L__PRETTY_FUNCTION__._cmsAllocMemPluginChunk:
	.asciz	"void _cmsAllocMemPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__._cmsAllocMemPluginChunk, 93

	.type	_cmsLogErrorChunk,@object # @_cmsLogErrorChunk
	.data
	.globl	_cmsLogErrorChunk
	.align	8
_cmsLogErrorChunk:
	.quad	DefaultLogErrorHandlerFunction
	.size	_cmsLogErrorChunk, 8

	.type	_cmsAllocLogErrorChunk.LogErrorChunk,@object # @_cmsAllocLogErrorChunk.LogErrorChunk
	.align	8
_cmsAllocLogErrorChunk.LogErrorChunk:
	.quad	DefaultLogErrorHandlerFunction
	.size	_cmsAllocLogErrorChunk.LogErrorChunk, 8

	.type	_cmsMutexPluginChunk,@object # @_cmsMutexPluginChunk
	.globl	_cmsMutexPluginChunk
	.align	8
_cmsMutexPluginChunk:
	.quad	defMtxCreate
	.quad	defMtxDestroy
	.quad	defMtxLock
	.quad	defMtxUnlock
	.size	_cmsMutexPluginChunk, 32

	.type	_cmsAllocMutexPluginChunk.MutexChunk,@object # @_cmsAllocMutexPluginChunk.MutexChunk
	.align	8
_cmsAllocMutexPluginChunk.MutexChunk:
	.quad	defMtxCreate
	.quad	defMtxDestroy
	.quad	defMtxLock
	.quad	defMtxUnlock
	.size	_cmsAllocMutexPluginChunk.MutexChunk, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
