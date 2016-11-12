	.text
	.file	"cmspack.bc"
	.globl	_cmsAllocFormattersPluginChunk
	.align	16, 0x90
	.type	_cmsAllocFormattersPluginChunk,@function
_cmsAllocFormattersPluginChunk:         # @_cmsAllocFormattersPluginChunk
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
	movq	72(%rsi), %rax
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
# BB#7:                                 # %if.then.4.i
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, 8(%r12)
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
	movl	$_cmsAllocFormattersPluginChunk.FormattersPluginChunk, %esi
.LBB0_13:                               # %if.end
	movl	$8, %edx
	callq	_cmsSubAllocDup
	movq	%rax, 72(%r14)
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
	movl	$3270, %edx             # imm = 0xCC6
	movl	$.L__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk, %ecx
	callq	__assert_fail
.LBB0_16:                               # %cond.false.i
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$3240, %edx             # imm = 0xCA8
	movl	$.L__PRETTY_FUNCTION__.DupFormatterFactoryList, %ecx
	callq	__assert_fail
.Lfunc_end0:
	.size	_cmsAllocFormattersPluginChunk, .Lfunc_end0-_cmsAllocFormattersPluginChunk
	.cfi_endproc

	.globl	_cmsRegisterFormattersPlugin
	.align	16, 0x90
	.type	_cmsRegisterFormattersPlugin,@function
_cmsRegisterFormattersPlugin:           # @_cmsRegisterFormattersPlugin
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
	movl	$7, %esi
	callq	_cmsContextGetClientChunk
	movq	%rax, %r14
	testq	%r15, %r15
	je	.LBB1_1
# BB#2:                                 # %if.end
	movl	$16, %esi
	movq	%rbx, %rdi
	callq	_cmsPluginMalloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB1_5
# BB#3:                                 # %if.end.4
	movq	24(%r15), %rcx
	movq	%rcx, (%rax)
	movq	(%r14), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, (%r14)
	jmp	.LBB1_4
.LBB1_1:                                # %if.then
	movq	$0, (%r14)
.LBB1_4:                                # %cleanup
	movl	$1, %ecx
.LBB1_5:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	_cmsRegisterFormattersPlugin, .Lfunc_end1-_cmsRegisterFormattersPlugin
	.cfi_endproc

	.globl	_cmsGetFormatter
	.align	16, 0x90
	.type	_cmsGetFormatter,@function
_cmsGetFormatter:                       # @_cmsGetFormatter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movl	%esi, %r14d
	movl	$7, %esi
	callq	_cmsContextGetClientChunk
	movq	(%rax), %rbp
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_6:                                # %for.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	8(%rbp), %rbp
.LBB2_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB2_2
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%r14d, %edi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	*(%rbp)
	testq	%rax, %rax
	je	.LBB2_6
	jmp	.LBB2_33
.LBB2_2:                                # %for.end
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.LBB2_3
# BB#19:                                # %if.else
	movl	$OutputFormatters16+4, %edx
	testl	%r15d, %r15d
	jne	.LBB2_21
# BB#20:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_26:                               # %for.body.i.22
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %esi
	notl	%esi
	andl	%r14d, %esi
	cmpl	-4(%rdx), %esi
	je	.LBB2_27
# BB#25:                                # %for.cond.i.13
                                        #   in Loop: Header=BB2_26 Depth=1
	incq	%rcx
	addq	$16, %rdx
	cmpl	$54, %ecx
	jbe	.LBB2_26
	jmp	.LBB2_33
.LBB2_3:                                # %if.then.4
	movl	$InputFormatters16+4, %edx
	testl	%r15d, %r15d
	jne	.LBB2_7
# BB#4:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_12:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %esi
	notl	%esi
	andl	%r14d, %esi
	cmpl	-4(%rdx), %esi
	je	.LBB2_13
# BB#11:                                # %for.cond.i
                                        #   in Loop: Header=BB2_12 Depth=1
	incq	%rcx
	addq	$16, %rdx
	cmpl	$42, %ecx
	jbe	.LBB2_12
	jmp	.LBB2_33
.LBB2_21:                               # %if.else
	cmpl	$1, %r15d
	movl	$0, %eax
	jne	.LBB2_33
# BB#22:                                # %for.cond.5.preheader.i.11
	movl	%r14d, %eax
	andl	$-4993, %eax            # imm = 0xFFFFFFFFFFFFEC7F
	xorl	%ecx, %ecx
	cmpl	$4849692, %eax          # imm = 0x4A001C
	je	.LBB2_24
# BB#23:                                # %for.cond.5.i.26
	movl	$1, %ecx
	cmpl	$4784156, %eax          # imm = 0x49001C
	je	.LBB2_24
# BB#28:                                # %for.cond.5.1.i.32
	movl	$2, %ecx
	cmpl	$4849688, %eax          # imm = 0x4A0018
	je	.LBB2_24
# BB#29:                                # %for.cond.5.2.i.34
	movl	$3, %ecx
	cmpl	$4784152, %eax          # imm = 0x490018
	je	.LBB2_24
# BB#30:                                # %for.cond.5.3.i.37
	movl	%r14d, %eax
	andl	$-2062329, %eax         # imm = 0xFFFFFFFFFFE08807
	movl	$4, %ecx
	cmpl	$4194308, %eax          # imm = 0x400004
	je	.LBB2_24
# BB#31:                                # %for.cond.5.4.i.39
	movl	$5, %ecx
	cmpl	$4194304, %eax          # imm = 0x400000
	je	.LBB2_24
# BB#32:                                # %for.cond.5.5.i.41
	andl	$-2058233, %r14d        # imm = 0xFFFFFFFFFFE09807
	xorl	%eax, %eax
	movl	$6, %ecx
	cmpl	$4194306, %r14d         # imm = 0x400002
	jne	.LBB2_33
.LBB2_24:                               # %cleanup.22.i.29
	shlq	$4, %rcx
	movq	OutputFormattersFloat+8(%rcx), %rax
	jmp	.LBB2_33
.LBB2_7:                                # %if.then.4
	cmpl	$1, %r15d
	movl	$0, %eax
	jne	.LBB2_33
# BB#8:                                 # %for.cond.5.preheader.i
	movl	%r14d, %eax
	andl	$-4993, %eax            # imm = 0xFFFFFFFFFFFFEC7F
	xorl	%ecx, %ecx
	cmpl	$4849688, %eax          # imm = 0x4A0018
	je	.LBB2_10
# BB#9:                                 # %for.cond.5.i
	movl	$1, %ecx
	cmpl	$4849692, %eax          # imm = 0x4A001C
	je	.LBB2_10
# BB#14:                                # %for.cond.5.1.i
	movl	$2, %ecx
	cmpl	$4784152, %eax          # imm = 0x490018
	je	.LBB2_10
# BB#15:                                # %for.cond.5.2.i
	movl	$3, %ecx
	cmpl	$4784156, %eax          # imm = 0x49001C
	je	.LBB2_10
# BB#16:                                # %for.cond.5.3.i
	andl	$-2054137, %r14d        # imm = 0xFFFFFFFFFFE0A807
	movl	$4, %ecx
	cmpl	$4194308, %r14d         # imm = 0x400004
	je	.LBB2_10
# BB#17:                                # %for.cond.5.4.i
	movl	$5, %ecx
	cmpl	$4194304, %r14d         # imm = 0x400000
	je	.LBB2_10
# BB#18:                                # %for.cond.5.5.i
	xorl	%eax, %eax
	movl	$6, %ecx
	cmpl	$4194306, %r14d         # imm = 0x400002
	jne	.LBB2_33
.LBB2_10:                               # %cleanup.22.i
	shlq	$4, %rcx
	movq	InputFormattersFloat+8(%rcx), %rax
	jmp	.LBB2_33
.LBB2_27:                               # %cleanup.i.24
	shlq	$4, %rcx
	movq	OutputFormatters16+8(%rcx), %rax
	jmp	.LBB2_33
.LBB2_13:                               # %cleanup.i
	shlq	$4, %rcx
	movq	InputFormatters16+8(%rcx), %rax
.LBB2_33:                               # %cleanup.9
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_cmsGetFormatter, .Lfunc_end2-_cmsGetFormatter
	.cfi_endproc

	.globl	_cmsFormatterIsFloat
	.align	16, 0x90
	.type	_cmsFormatterIsFloat,@function
_cmsFormatterIsFloat:                   # @_cmsFormatterIsFloat
	.cfi_startproc
# BB#0:                                 # %entry
	shrl	$22, %edi
	andl	$1, %edi
	movl	%edi, %eax
	retq
.Lfunc_end3:
	.size	_cmsFormatterIsFloat, .Lfunc_end3-_cmsFormatterIsFloat
	.cfi_endproc

	.globl	_cmsFormatterIs8bit
	.align	16, 0x90
	.type	_cmsFormatterIs8bit,@function
_cmsFormatterIs8bit:                    # @_cmsFormatterIs8bit
	.cfi_startproc
# BB#0:                                 # %entry
	andl	$7, %edi
	cmpl	$1, %edi
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end4:
	.size	_cmsFormatterIs8bit, .Lfunc_end4-_cmsFormatterIs8bit
	.cfi_endproc

	.globl	cmsFormatterForColorspaceOfProfile
	.align	16, 0x90
	.type	cmsFormatterForColorspaceOfProfile,@function
cmsFormatterForColorspaceOfProfile:     # @cmsFormatterForColorspaceOfProfile
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
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 48
.Ltmp29:
	.cfi_offset %rbx, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r14d
	callq	cmsGetColorSpace
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, %ebx
	movl	%ebp, %edi
	callq	cmsChannelsOf
	testl	%r15d, %r15d
	setne	%cl
	movzbl	%cl, %ecx
	shll	$22, %ecx
	shll	$16, %ebx
	shll	$3, %eax
	orl	%r14d, %ecx
	orl	%ecx, %ebx
	orl	%eax, %ebx
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cmsFormatterForColorspaceOfProfile, .Lfunc_end5-cmsFormatterForColorspaceOfProfile
	.cfi_endproc

	.globl	cmsFormatterForPCSOfProfile
	.align	16, 0x90
	.type	cmsFormatterForPCSOfProfile,@function
cmsFormatterForPCSOfProfile:            # @cmsFormatterForPCSOfProfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r14d
	callq	cmsGetPCS
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, %ebx
	movl	%ebp, %edi
	callq	cmsChannelsOf
	testl	%r15d, %r15d
	setne	%cl
	movzbl	%cl, %ecx
	shll	$22, %ecx
	shll	$16, %ebx
	shll	$3, %eax
	orl	%r14d, %ecx
	orl	%ecx, %ebx
	orl	%eax, %ebx
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cmsFormatterForPCSOfProfile, .Lfunc_end6-cmsFormatterForPCSOfProfile
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollLabDoubleTo16,@function
UnrollLabDoubleTo16:                    # @UnrollLabDoubleTo16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 48
.Ltmp45:
	.cfi_offset %rbx, -24
.Ltmp46:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	testb	$16, 1(%r14)
	jne	.LBB7_1
# BB#2:                                 # %if.else
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	cmsFloat2LabEncoded
	movl	(%r14), %eax
	shrl	$7, %eax
	andl	$7, %eax
	leaq	24(%rbx,%rax,8), %rbx
	jmp	.LBB7_3
.LBB7_1:                                # %if.then
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movl	%ecx, %eax
	movq	(%rbx,%rax,8), %rax
	movq	%rax, 8(%rsp)
	addl	%ecx, %ecx
	movq	(%rbx,%rcx,8), %rax
	movq	%rax, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	cmsFloat2LabEncoded
	addq	$8, %rbx
.LBB7_3:                                # %return
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	UnrollLabDoubleTo16, .Lfunc_end7-UnrollLabDoubleTo16
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollXYZDoubleTo16,@function
UnrollXYZDoubleTo16:                    # @UnrollXYZDoubleTo16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	testb	$16, 1(%r14)
	jne	.LBB8_1
# BB#2:                                 # %if.else
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	cmsFloat2XYZEncoded
	movl	(%r14), %eax
	shrl	$7, %eax
	andl	$7, %eax
	leaq	24(%rbx,%rax,8), %rbx
	jmp	.LBB8_3
.LBB8_1:                                # %if.then
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movl	%ecx, %eax
	movq	(%rbx,%rax,8), %rax
	movq	%rax, 8(%rsp)
	addl	%ecx, %ecx
	movq	(%rbx,%rcx,8), %rax
	movq	%rax, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	cmsFloat2XYZEncoded
	addq	$8, %rbx
.LBB8_3:                                # %return
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	UnrollXYZDoubleTo16, .Lfunc_end8-UnrollXYZDoubleTo16
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollLabFloatTo16,@function
UnrollLabFloatTo16:                     # @UnrollLabFloatTo16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 48
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movl	(%r14), %eax
	testb	$16, %ah
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, (%rsp)
	jne	.LBB9_1
# BB#2:                                 # %if.else
	cvtps2pd	4(%rbx), %xmm0
	movups	%xmm0, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	cmsFloat2LabEncoded
	movl	(%r14), %eax
	shrl	$7, %eax
	andl	$7, %eax
	addl	$3, %eax
	leaq	(%rbx,%rax,4), %rbx
	jmp	.LBB9_3
.LBB9_1:                                # %if.then
	movl	%ecx, %eax
	addl	%ecx, %ecx
	movss	(%rbx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%rbx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movups	%xmm0, 8(%rsp)
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	cmsFloat2LabEncoded
	addq	$4, %rbx
.LBB9_3:                                # %cleanup
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	UnrollLabFloatTo16, .Lfunc_end9-UnrollLabFloatTo16
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollXYZFloatTo16,@function
UnrollXYZFloatTo16:                     # @UnrollXYZFloatTo16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 48
.Ltmp60:
	.cfi_offset %rbx, -24
.Ltmp61:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	testb	$16, 1(%r14)
	jne	.LBB10_1
# BB#2:                                 # %if.else
	cvtps2pd	(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	cmsFloat2XYZEncoded
	movl	(%r14), %eax
	shrl	$7, %eax
	andl	$7, %eax
	leaq	12(%rbx,%rax,4), %rbx
	jmp	.LBB10_3
.LBB10_1:                               # %if.then
	movl	%ecx, %eax
	movss	(%rbx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movaps	%xmm0, (%rsp)
	addl	%ecx, %ecx
	movss	(%rbx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	cmsFloat2XYZEncoded
	addq	$4, %rbx
.LBB10_3:                               # %return
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	UnrollXYZFloatTo16, .Lfunc_end10-UnrollXYZFloatTo16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4679239875398991872     # double 65535
.LCPI11_1:
	.quad	4602678819172646912     # double 0.5
.LCPI11_2:
	.quad	-4548635898522107904    # double -32767
.LCPI11_3:
	.quad	4771563805199040512     # double 103079215104
	.text
	.align	16, 0x90
	.type	UnrollDouble1Chan,@function
UnrollDouble1Chan:                      # @UnrollDouble1Chan
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI11_0(%rip), %xmm0
	addsd	.LCPI11_1(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB11_1
# BB#2:                                 # %if.end.i
	movw	$-1, %ax
	ucomisd	.LCPI11_0(%rip), %xmm0
	jae	.LBB11_4
# BB#3:                                 # %if.end.3.i
	addsd	.LCPI11_2(%rip), %xmm0
	addsd	.LCPI11_3(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB11_4
.LBB11_1:
	xorl	%eax, %eax
.LBB11_4:                               # %_cmsQuickSaturateWord.exit
	movw	%ax, 4(%rsi)
	movw	%ax, 2(%rsi)
	movw	%ax, (%rsi)
	addq	$8, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end11:
	.size	UnrollDouble1Chan, .Lfunc_end11-UnrollDouble1Chan
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4679239875398991872     # double 65535
.LCPI12_2:
	.quad	4602678819172646912     # double 0.5
.LCPI12_3:
	.quad	-4548635898522107904    # double -32767
.LCPI12_4:
	.quad	4771563805199040512     # double 103079215104
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI12_1:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4648975735381085389     # double 6.553500e+02
	.text
	.align	16, 0x90
	.type	UnrollDoubleTo16,@function
UnrollDoubleTo16:                       # @UnrollDoubleTo16
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
	subq	$24, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 80
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
	movq	%rdx, %r12
	movq	%rsi, %r8
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	(%rdi), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
	shrl	$3, %r15d
	andl	$15, %r15d
	movl	%eax, %r9d
	shrl	$10, %r9d
	andl	$1, %r9d
	movl	%eax, %ebp
	shrl	$14, %ebp
	andl	$1, %ebp
	movl	%eax, %esi
	shrl	$7, %esi
	andl	$7, %esi
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB12_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI12_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB12_3
.LBB12_1:
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB12_3:                               # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%ebp, %r9d
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	%esi, %r11d
	movl	%esi, 16(%rsp)          # 4-byte Spill
	cmovel	%edi, %r11d
	testl	%r15d, %r15d
	je	.LBB12_10
# BB#4:                                 # %for.body.lr.ph
	movl	20(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %r10d
	andl	$4096, %r10d            # imm = 0x1000
	shll	$18, %r13d
	sarl	$31, %r13d
	movl	%r11d, %esi
	imull	%ecx, %esi
	movl	$-1, %eax
	movsd	.LCPI12_2(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	.LCPI12_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI12_4(%rip), %xmm4  # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rax), %ebp
	testl	%r9d, %r9d
	cmovel	%edi, %ebp
	leal	(%r11,%rdi), %edx
	testl	%r10d, %r10d
	movl	%esi, %ebx
	leaq	(%r12,%rbx,8), %rbx
	movslq	%edx, %rdx
	leaq	(%r12,%rdx,8), %rdx
	cmovneq	%rbx, %rdx
	movsd	(%rdx), %xmm5           # xmm5 = mem[0],zero
	cvtsd2ss	%xmm5, %xmm5
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	ucomisd	%xmm5, %xmm2
	jae	.LBB12_6
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB12_5 Depth=1
	movw	$-1, %r14w
	ucomisd	.LCPI12_0(%rip), %xmm5
	jae	.LBB12_9
# BB#8:                                 # %if.end.3.i
                                        #   in Loop: Header=BB12_5 Depth=1
	addsd	%xmm3, %xmm5
	addsd	%xmm4, %xmm5
	movd	%xmm5, %r14
	shrl	$16, %r14d
	addl	$32767, %r14d           # imm = 0x7FFF
	jmp	.LBB12_9
	.align	16, 0x90
.LBB12_6:                               #   in Loop: Header=BB12_5 Depth=1
	xorl	%r14d, %r14d
.LBB12_9:                               # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB12_5 Depth=1
	xorl	%r13d, %r14d
	movslq	%ebp, %rdx
	movw	%r14w, (%r8,%rdx,2)
	incl	%edi
	decl	%eax
	addl	%ecx, %esi
	cmpl	%edi, %r15d
	jne	.LBB12_5
.LBB12_10:                              # %for.end
	movl	16(%rsp), %r13d         # 4-byte Reload
	testl	%r13d, %r13d
	jne	.LBB12_13
# BB#11:                                # %for.end
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB12_13
# BB#12:                                # %if.then.43
	movq	%r8, %rbx
	movw	(%rbx), %r14w
	leaq	2(%rbx), %rsi
	leal	-1(%r15), %eax
	movslq	%eax, %rbp
	leaq	(%rbp,%rbp), %rdx
	movq	%rbx, %rdi
	callq	memmove
	movw	%r14w, (%rbx,%rbp,2)
	movq	(%rsp), %rax            # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB12_13:                              # %if.end.54
	movl	20(%rsp), %eax          # 4-byte Reload
	testb	$16, %ah
	jne	.LBB12_14
# BB#15:                                # %if.else.60
	addl	%r13d, %r15d
	leaq	(%r12,%r15,8), %r12
	jmp	.LBB12_16
.LBB12_14:                              # %if.then.59
	addq	$8, %r12
.LBB12_16:                              # %cleanup
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	UnrollDoubleTo16, .Lfunc_end12-UnrollDoubleTo16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4679239875398991872     # double 65535
.LCPI13_2:
	.quad	4602678819172646912     # double 0.5
.LCPI13_3:
	.quad	-4548635898522107904    # double -32767
.LCPI13_4:
	.quad	4771563805199040512     # double 103079215104
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI13_1:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4648975735381085389     # double 6.553500e+02
	.text
	.align	16, 0x90
	.type	UnrollFloatTo16,@function
UnrollFloatTo16:                        # @UnrollFloatTo16
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
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 80
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r8
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	(%rdi), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
	shrl	$3, %r15d
	andl	$15, %r15d
	movl	%eax, %r9d
	shrl	$10, %r9d
	andl	$1, %r9d
	movl	%eax, %ebp
	shrl	$14, %ebp
	andl	$1, %ebp
	movl	%eax, %esi
	shrl	$7, %esi
	andl	$7, %esi
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB13_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI13_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB13_3
.LBB13_1:
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB13_3:                               # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%ebp, %r9d
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	%esi, %r11d
	movl	%esi, 16(%rsp)          # 4-byte Spill
	cmovel	%edi, %r11d
	testl	%r15d, %r15d
	je	.LBB13_10
# BB#4:                                 # %for.body.lr.ph
	movl	20(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %r10d
	andl	$4096, %r10d            # imm = 0x1000
	shll	$18, %r13d
	sarl	$31, %r13d
	movl	%r11d, %esi
	imull	%ecx, %esi
	movl	$-1, %eax
	movsd	.LCPI13_2(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	.LCPI13_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI13_4(%rip), %xmm4  # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB13_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rax), %ebp
	testl	%r9d, %r9d
	cmovel	%edi, %ebp
	leal	(%r11,%rdi), %edx
	testl	%r10d, %r10d
	movl	%esi, %ebx
	leaq	(%r12,%rbx,4), %rbx
	movslq	%edx, %rdx
	leaq	(%r12,%rdx,4), %rdx
	cmovneq	%rbx, %rdx
	movss	(%rdx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm0, %xmm5
	addsd	%xmm1, %xmm5
	ucomisd	%xmm5, %xmm2
	jae	.LBB13_6
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB13_5 Depth=1
	movw	$-1, %r14w
	ucomisd	.LCPI13_0(%rip), %xmm5
	jae	.LBB13_9
# BB#8:                                 # %if.end.3.i
                                        #   in Loop: Header=BB13_5 Depth=1
	addsd	%xmm3, %xmm5
	addsd	%xmm4, %xmm5
	movd	%xmm5, %r14
	shrl	$16, %r14d
	addl	$32767, %r14d           # imm = 0x7FFF
	jmp	.LBB13_9
	.align	16, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_5 Depth=1
	xorl	%r14d, %r14d
.LBB13_9:                               # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB13_5 Depth=1
	xorl	%r13d, %r14d
	movslq	%ebp, %rdx
	movw	%r14w, (%r8,%rdx,2)
	incl	%edi
	decl	%eax
	addl	%ecx, %esi
	cmpl	%edi, %r15d
	jne	.LBB13_5
.LBB13_10:                              # %for.end
	movl	16(%rsp), %r13d         # 4-byte Reload
	testl	%r13d, %r13d
	jne	.LBB13_13
# BB#11:                                # %for.end
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB13_13
# BB#12:                                # %if.then.40
	movq	%r8, %rbx
	movw	(%rbx), %r14w
	leaq	2(%rbx), %rsi
	leal	-1(%r15), %eax
	movslq	%eax, %rbp
	leaq	(%rbp,%rbp), %rdx
	movq	%rbx, %rdi
	callq	memmove
	movw	%r14w, (%rbx,%rbp,2)
	movq	(%rsp), %rax            # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB13_13:                              # %if.end.51
	movl	20(%rsp), %eax          # 4-byte Reload
	testb	$16, %ah
	jne	.LBB13_14
# BB#15:                                # %if.else.57
	addl	%r13d, %r15d
	leaq	(%r12,%r15,4), %r12
	jmp	.LBB13_16
.LBB13_14:                              # %if.then.56
	addq	$4, %r12
.LBB13_16:                              # %cleanup
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	UnrollFloatTo16, .Lfunc_end13-UnrollFloatTo16
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	1199570688              # float 65535
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_1:
	.long	1199570688              # float 6.553500e+04
	.long	1143199334              # float 6.553500e+02
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
.LCPI14_3:
	.quad	4679239875398991872     # double 65535
.LCPI14_4:
	.quad	-4548635898522107904    # double -32767
.LCPI14_5:
	.quad	4771563805199040512     # double 103079215104
.LCPI14_6:
	.quad	0                       # double 0
	.text
	.align	16, 0x90
	.type	UnrollHalfTo16,@function
UnrollHalfTo16:                         # @UnrollHalfTo16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 112
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	(%rdi), %ecx
	movl	%ecx, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%ecx, %eax
	shrl	$10, %eax
	andl	$1, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%ecx, %ebp
	shrl	$14, %ebp
	andl	$1, %ebp
	movl	%ecx, %esi
	shrl	$7, %esi
	andl	$7, %esi
	movl	%ecx, %eax
	movl	%ecx, %edi
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %ecx
	cmpl	$24, %ecx
	ja	.LBB14_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movss	.LCPI14_1(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB14_3
.LBB14_1:
	movss	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB14_3:                               # %IsInkSpace.exit
	movss	%xmm0, 36(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	%ebp, 52(%rsp)          # 4-byte Folded Reload
	movl	%ebp, (%rsp)            # 4-byte Spill
	movl	%esi, %eax
	movl	%esi, 4(%rsp)           # 4-byte Spill
	cmovel	%r15d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB14_15
# BB#4:                                 # %for.body.lr.ph
	movl	%edi, %eax
	andl	$8192, %eax             # imm = 0x2000
	movl	%eax, 28(%rsp)          # 4-byte Spill
	andl	$4096, %edi             # imm = 0x1000
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	imull	48(%rsp), %ebp          # 4-byte Folded Reload
	movl	$-1, %r12d
	.align	16, 0x90
.LBB14_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%r12), %r13d
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	cmovel	%r15d, %r13d
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jne	.LBB14_6
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r15), %eax
	cltq
	jmp	.LBB14_8
	.align	16, 0x90
.LBB14_6:                               # %if.then.22
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	%ebp, %eax
.LBB14_8:                               # %if.end.28
                                        #   in Loop: Header=BB14_5 Depth=1
	movzwl	(%rdx,%rax,2), %edi
	movq	%rdx, %r14
	callq	_cmsHalf2Float
	movss	36(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB14_10
# BB#9:                                 # %if.end.28
                                        #   in Loop: Header=BB14_5 Depth=1
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.LBB14_10:                              # %if.end.28
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	%r14, %rdx
	mulss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI14_2(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB14_11
# BB#12:                                # %if.end.i
                                        #   in Loop: Header=BB14_5 Depth=1
	movw	$-1, %ax
	ucomisd	.LCPI14_3(%rip), %xmm0
	jae	.LBB14_14
# BB#13:                                # %if.end.3.i
                                        #   in Loop: Header=BB14_5 Depth=1
	addsd	.LCPI14_4(%rip), %xmm0
	addsd	.LCPI14_5(%rip), %xmm0
	movd	%xmm0, %rax
	shrl	$16, %eax
	addl	$32767, %eax            # imm = 0x7FFF
	jmp	.LBB14_14
	.align	16, 0x90
.LBB14_11:                              #   in Loop: Header=BB14_5 Depth=1
	xorl	%eax, %eax
.LBB14_14:                              # %_cmsQuickSaturateWord.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	movslq	%r13d, %rcx
	movq	40(%rsp), %rsi          # 8-byte Reload
	movw	%ax, (%rsi,%rcx,2)
	incl	%r15d
	decl	%r12d
	addl	48(%rsp), %ebp          # 4-byte Folded Reload
	cmpl	%r15d, %ebx
	jne	.LBB14_5
.LBB14_15:                              # %for.end
	movl	4(%rsp), %r13d          # 4-byte Reload
	testl	%r13d, %r13d
	jne	.LBB14_18
# BB#16:                                # %for.end
	cmpl	$0, (%rsp)              # 4-byte Folded Reload
	je	.LBB14_18
# BB#17:                                # %if.then.40
	movq	40(%rsp), %rbp          # 8-byte Reload
	movw	(%rbp), %r14w
	leaq	2(%rbp), %rsi
	leal	-1(%rbx), %eax
	movslq	%eax, %r12
	movq	%rdx, %r15
	leaq	(%r12,%r12), %rdx
	movq	%rbp, %rdi
	callq	memmove
	movq	%r15, %rdx
	movw	%r14w, (%rbp,%r12,2)
.LBB14_18:                              # %if.end.51
	movq	8(%rsp), %rax           # 8-byte Reload
	testb	$16, 1(%rax)
	jne	.LBB14_19
# BB#20:                                # %if.else.57
	addl	%r13d, %ebx
	leaq	(%rdx,%rbx,2), %rdx
	jmp	.LBB14_21
.LBB14_19:                              # %if.then.56
	addq	$2, %rdx
.LBB14_21:                              # %cleanup
	movq	%rdx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	UnrollHalfTo16, .Lfunc_end14-UnrollHalfTo16
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1Byte,@function
Unroll1Byte:                            # @Unroll1Byte
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movw	%cx, 2(%rsi)
	movw	%cx, (%rsi)
	leaq	1(%rdx), %rax
	retq
.Lfunc_end15:
	.size	Unroll1Byte, .Lfunc_end15-Unroll1Byte
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1ByteSkip1,@function
Unroll1ByteSkip1:                       # @Unroll1ByteSkip1
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movw	%cx, 2(%rsi)
	movw	%cx, (%rsi)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end16:
	.size	Unroll1ByteSkip1, .Lfunc_end16-Unroll1ByteSkip1
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1ByteSkip2,@function
Unroll1ByteSkip2:                       # @Unroll1ByteSkip2
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movw	%cx, 2(%rsi)
	movw	%cx, (%rsi)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end17:
	.size	Unroll1ByteSkip2, .Lfunc_end17-Unroll1ByteSkip2
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1ByteReversed,@function
Unroll1ByteReversed:                    # @Unroll1ByteReversed
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	notl	%ecx
	movw	%cx, 4(%rsi)
	movw	%cx, 2(%rsi)
	movw	%cx, (%rsi)
	leaq	1(%rdx), %rax
	retq
.Lfunc_end18:
	.size	Unroll1ByteReversed, .Lfunc_end18-Unroll1ByteReversed
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll2Bytes,@function
Unroll2Bytes:                           # @Unroll2Bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end19:
	.size	Unroll2Bytes, .Lfunc_end19-Unroll2Bytes
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollLabV2_8,@function
UnrollLabV2_8:                          # @UnrollLabV2_8
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, (%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 4(%rsi)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end20:
	.size	UnrollLabV2_8, .Lfunc_end20-UnrollLabV2_8
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollALabV2_8,@function
UnrollALabV2_8:                         # @UnrollALabV2_8
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, (%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 2(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 4(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end21:
	.size	UnrollALabV2_8, .Lfunc_end21-UnrollALabV2_8
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollLabV2_16,@function
UnrollLabV2_16:                         # @UnrollLabV2_16
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, (%rsi)
	movzwl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 2(%rsi)
	movzwl	4(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	shrl	$8, %ecx
	movw	%cx, 4(%rsi)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end22:
	.size	UnrollLabV2_16, .Lfunc_end22-UnrollLabV2_16
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3Bytes,@function
Unroll3Bytes:                           # @Unroll3Bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end23:
	.size	Unroll3Bytes, .Lfunc_end23-Unroll3Bytes
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3BytesSwap,@function
Unroll3BytesSwap:                       # @Unroll3BytesSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end24:
	.size	Unroll3BytesSwap, .Lfunc_end24-Unroll3BytesSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3BytesSkip1Swap,@function
Unroll3BytesSkip1Swap:                  # @Unroll3BytesSkip1Swap
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end25:
	.size	Unroll3BytesSkip1Swap, .Lfunc_end25-Unroll3BytesSkip1Swap
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3BytesSkip1SwapFirst,@function
Unroll3BytesSkip1SwapFirst:             # @Unroll3BytesSkip1SwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end26:
	.size	Unroll3BytesSkip1SwapFirst, .Lfunc_end26-Unroll3BytesSkip1SwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3BytesSkip1SwapSwapFirst,@function
Unroll3BytesSkip1SwapSwapFirst:         # @Unroll3BytesSkip1SwapSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end27:
	.size	Unroll3BytesSkip1SwapSwapFirst, .Lfunc_end27-Unroll3BytesSkip1SwapSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4Bytes,@function
Unroll4Bytes:                           # @Unroll4Bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 6(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end28:
	.size	Unroll4Bytes, .Lfunc_end28-Unroll4Bytes
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4BytesReverse,@function
Unroll4BytesReverse:                    # @Unroll4BytesReverse
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	xorl	$255, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	1(%rdx), %eax
	xorl	$255, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	xorl	$255, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	3(%rdx), %eax
	xorl	$255, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 6(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end29:
	.size	Unroll4BytesReverse, .Lfunc_end29-Unroll4BytesReverse
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4BytesSwapFirst,@function
Unroll4BytesSwapFirst:                  # @Unroll4BytesSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 6(%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end30:
	.size	Unroll4BytesSwapFirst, .Lfunc_end30-Unroll4BytesSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4BytesSwap,@function
Unroll4BytesSwap:                       # @Unroll4BytesSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 6(%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end31:
	.size	Unroll4BytesSwap, .Lfunc_end31-Unroll4BytesSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4BytesSwapSwapFirst,@function
Unroll4BytesSwapSwapFirst:              # @Unroll4BytesSwapSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 4(%rsi)
	movzbl	1(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 2(%rsi)
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, (%rsi)
	movzbl	3(%rdx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 6(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end32:
	.size	Unroll4BytesSwapSwapFirst, .Lfunc_end32-Unroll4BytesSwapSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollPlanarBytes,@function
UnrollPlanarBytes:                      # @UnrollPlanarBytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 40
.Ltmp105:
	.cfi_offset %rbx, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	(%rdi), %ebx
	movl	%ebx, %r9d
	shrl	$3, %r9d
	andl	$15, %r9d
	movl	%ebx, %r8d
	shrl	$10, %r8d
	andl	$1, %r8d
	movl	%ebx, %eax
	shrl	$14, %eax
	andl	$1, %eax
	cmpl	%eax, %r8d
	movq	%rdx, %rdi
	je	.LBB33_2
# BB#1:                                 # %if.then
	movl	%ebx, %eax
	shrl	$7, %eax
	andl	$7, %eax
	imull	%ecx, %eax
	leaq	(%rax,%rdx), %rdi
.LBB33_2:                               # %for.cond.preheader
	testl	%r9d, %r9d
	je	.LBB33_8
# BB#3:                                 # %for.body.lr.ph
	movl	%ebx, %r10d
	andl	$8192, %r10d            # imm = 0x2000
	leal	-1(%r9), %r15d
	movl	%ecx, %r11d
	xorl	%ecx, %ecx
	btl	$3, %ebx
	jae	.LBB33_5
# BB#4:                                 # %for.body.prol
	movzbl	(%rdi), %ecx
	movl	%ecx, %ebx
	shll	$8, %ebx
	orl	%ecx, %ebx
	testl	%r10d, %r10d
	movl	%ebx, %ecx
	notl	%ecx
	cmovew	%bx, %cx
	xorl	%r14d, %r14d
	testl	%r8d, %r8d
	movslq	%r15d, %rbx
	cmovneq	%rbx, %r14
	movw	%cx, (%rsi,%r14,2)
	addq	%r11, %rdi
	movl	$1, %ecx
.LBB33_5:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB33_8
# BB#6:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %r15d
	.align	16, 0x90
.LBB33_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ebx
	movl	%ebx, %ebp
	shll	$8, %ebp
	orl	%ebx, %ebp
	testl	%r10d, %r10d
	movl	%ebp, %ebx
	notl	%ebx
	cmovew	%bp, %bx
	leal	1(%rcx), %r14d
	leal	-1(%r15), %ebp
	testl	%r8d, %r8d
	movl	%r15d, %eax
	cmovel	%ecx, %eax
	cltq
	movw	%bx, (%rsi,%rax,2)
	cmovel	%r14d, %ebp
	movzbl	(%r11,%rdi), %eax
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%eax, %ebx
	testl	%r10d, %r10d
	movl	%ebx, %eax
	notl	%eax
	cmovew	%bx, %ax
	addq	%r11, %rdi
	movslq	%ebp, %rbx
	movw	%ax, (%rsi,%rbx,2)
	addq	%r11, %rdi
	addl	$-2, %r15d
	addl	$2, %ecx
	cmpl	%r9d, %ecx
	jne	.LBB33_7
.LBB33_8:                               # %for.end
	incq	%rdx
	movq	%rdx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	UnrollPlanarBytes, .Lfunc_end33-UnrollPlanarBytes
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollChunkyBytes,@function
UnrollChunkyBytes:                      # @UnrollChunkyBytes
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
	pushq	%rax
.Ltmp115:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %r12
	movl	(%rdi), %eax
	movl	%eax, %r11d
	shrl	$3, %r11d
	movl	%eax, %r15d
	shrl	$10, %r15d
	andl	$1, %r15d
	movl	%eax, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	movl	%eax, %r10d
	shrl	$7, %r10d
	andl	$7, %r10d
	leaq	(%rdx,%r10), %r9
	cmpl	%r8d, %r15d
	cmoveq	%rdx, %r9
	andl	$15, %r11d
	je	.LBB34_7
# BB#1:                                 # %for.body.lr.ph
	movl	%eax, %r13d
	andl	$8192, %r13d            # imm = 0x2000
	leal	-1(%r11), %ecx
	xorl	%edi, %edi
	btl	$3, %eax
	movq	%r9, %rax
	jae	.LBB34_3
# BB#2:                                 # %for.body.prol
	movzbl	(%r9), %eax
	movl	%eax, %edi
	shll	$8, %edi
	orl	%eax, %edi
	testl	%r13d, %r13d
	movl	%edi, %eax
	notl	%eax
	cmovew	%di, %ax
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	movslq	%ecx, %rdi
	cmovneq	%rdi, %r14
	movw	%ax, (%r12,%r14,2)
	leaq	1(%r9), %rax
	movl	$1, %edi
.LBB34_3:                               # %for.body.lr.ph.split
	leaq	1(%rcx), %r14
	cmpl	$1, %r11d
	je	.LBB34_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%edi, %ecx
	.align	16, 0x90
.LBB34_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %esi
	movl	%esi, %ebp
	shll	$8, %ebp
	orl	%esi, %ebp
	testl	%r13d, %r13d
	movl	%ebp, %esi
	notl	%esi
	cmovew	%bp, %si
	leal	1(%rdi), %ebp
	leal	-1(%rcx), %ebx
	testl	%r15d, %r15d
	movl	%ecx, %edx
	cmovel	%edi, %edx
	movslq	%edx, %rdx
	movw	%si, (%r12,%rdx,2)
	cmovel	%ebp, %ebx
	movzbl	1(%rax), %edx
	movl	%edx, %esi
	shll	$8, %esi
	orl	%edx, %esi
	testl	%r13d, %r13d
	movl	%esi, %edx
	notl	%edx
	cmovew	%si, %dx
	movslq	%ebx, %rsi
	movw	%dx, (%r12,%rsi,2)
	addl	$-2, %ecx
	addl	$2, %edi
	addq	$2, %rax
	cmpl	%r11d, %edi
	jne	.LBB34_5
.LBB34_6:                               # %for.cond.for.end_crit_edge
	addq	%r14, %r9
.LBB34_7:                               # %for.end
	leaq	(%r10,%r9), %r14
	cmpl	%r8d, %r15d
	cmovneq	%r9, %r14
	testl	%r10d, %r10d
	jne	.LBB34_10
# BB#8:                                 # %for.end
	testl	%r8d, %r8d
	je	.LBB34_10
# BB#9:                                 # %if.then.37
	movw	(%r12), %bx
	leaq	2(%r12), %rsi
	decl	%r11d
	movslq	%r11d, %rbp
	leaq	(%rbp,%rbp), %rdx
	movq	%r12, %rdi
	callq	memmove
	movw	%bx, (%r12,%rbp,2)
.LBB34_10:                              # %if.end.46
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	UnrollChunkyBytes, .Lfunc_end34-UnrollChunkyBytes
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1Word,@function
Unroll1Word:                            # @Unroll1Word
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	%ax, 2(%rsi)
	movw	%ax, (%rsi)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end35:
	.size	Unroll1Word, .Lfunc_end35-Unroll1Word
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1WordReversed,@function
Unroll1WordReversed:                    # @Unroll1WordReversed
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rdx), %eax
	notl	%eax
	movw	%ax, 4(%rsi)
	movw	%ax, 2(%rsi)
	movw	%ax, (%rsi)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end36:
	.size	Unroll1WordReversed, .Lfunc_end36-Unroll1WordReversed
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll1WordSkip3,@function
Unroll1WordSkip3:                       # @Unroll1WordSkip3
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	%ax, 2(%rsi)
	movw	%ax, (%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end37:
	.size	Unroll1WordSkip3, .Lfunc_end37-Unroll1WordSkip3
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll2Words,@function
Unroll2Words:                           # @Unroll2Words
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, (%rsi)
	movw	2(%rdx), %ax
	movw	%ax, 2(%rsi)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end38:
	.size	Unroll2Words, .Lfunc_end38-Unroll2Words
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3Words,@function
Unroll3Words:                           # @Unroll3Words
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, (%rsi)
	movw	2(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	4(%rdx), %ax
	movw	%ax, 4(%rsi)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end39:
	.size	Unroll3Words, .Lfunc_end39-Unroll3Words
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4Words,@function
Unroll4Words:                           # @Unroll4Words
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, (%rsi)
	movw	2(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	4(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	6(%rdx), %ax
	movw	%ax, 6(%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end40:
	.size	Unroll4Words, .Lfunc_end40-Unroll4Words
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3WordsSwap,@function
Unroll3WordsSwap:                       # @Unroll3WordsSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	2(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	4(%rdx), %ax
	movw	%ax, (%rsi)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end41:
	.size	Unroll3WordsSwap, .Lfunc_end41-Unroll3WordsSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3WordsSkip1SwapFirst,@function
Unroll3WordsSkip1SwapFirst:             # @Unroll3WordsSkip1SwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movw	2(%rdx), %ax
	movw	%ax, (%rsi)
	movw	4(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	6(%rdx), %ax
	movw	%ax, 4(%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end42:
	.size	Unroll3WordsSkip1SwapFirst, .Lfunc_end42-Unroll3WordsSkip1SwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll3WordsSkip1Swap,@function
Unroll3WordsSkip1Swap:                  # @Unroll3WordsSkip1Swap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	2(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	4(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	6(%rdx), %ax
	movw	%ax, (%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end43:
	.size	Unroll3WordsSkip1Swap, .Lfunc_end43-Unroll3WordsSkip1Swap
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4WordsReverse,@function
Unroll4WordsReverse:                    # @Unroll4WordsReverse
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	notw	%ax
	movw	%ax, (%rsi)
	movw	2(%rdx), %ax
	notw	%ax
	movw	%ax, 2(%rsi)
	movw	4(%rdx), %ax
	notw	%ax
	movw	%ax, 4(%rsi)
	movw	6(%rdx), %ax
	notw	%ax
	movw	%ax, 6(%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end44:
	.size	Unroll4WordsReverse, .Lfunc_end44-Unroll4WordsReverse
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4WordsSwapFirst,@function
Unroll4WordsSwapFirst:                  # @Unroll4WordsSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, 6(%rsi)
	movw	2(%rdx), %ax
	movw	%ax, (%rsi)
	movw	4(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	6(%rdx), %ax
	movw	%ax, 4(%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end45:
	.size	Unroll4WordsSwapFirst, .Lfunc_end45-Unroll4WordsSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4WordsSwap,@function
Unroll4WordsSwap:                       # @Unroll4WordsSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, 6(%rsi)
	movw	2(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	4(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	6(%rdx), %ax
	movw	%ax, (%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end46:
	.size	Unroll4WordsSwap, .Lfunc_end46-Unroll4WordsSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Unroll4WordsSwapSwapFirst,@function
Unroll4WordsSwapSwapFirst:              # @Unroll4WordsSwapSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rdx), %ax
	movw	%ax, 4(%rsi)
	movw	2(%rdx), %ax
	movw	%ax, 2(%rsi)
	movw	4(%rdx), %ax
	movw	%ax, (%rsi)
	movw	6(%rdx), %ax
	movw	%ax, 6(%rsi)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end47:
	.size	Unroll4WordsSwapSwapFirst, .Lfunc_end47-Unroll4WordsSwapSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollPlanarWords,@function
UnrollPlanarWords:                      # @UnrollPlanarWords
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
.Ltmp128:
	.cfi_offset %rbx, -56
.Ltmp129:
	.cfi_offset %r12, -48
.Ltmp130:
	.cfi_offset %r13, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movl	(%rdi), %ebp
	movl	%ebp, %r9d
	shrl	$3, %r9d
	andl	$15, %r9d
	movl	%ebp, %r8d
	andl	$1024, %r8d             # imm = 0x400
	movq	%rdx, %rdi
	je	.LBB48_2
# BB#1:                                 # %if.then
	movl	%ebp, %eax
	shrl	$7, %eax
	andl	$7, %eax
	imull	%ecx, %eax
	leaq	(%rdx,%rax,2), %rdi
.LBB48_2:                               # %for.cond.preheader
	testl	%r9d, %r9d
	je	.LBB48_8
# BB#3:                                 # %for.body.lr.ph
	movl	%ebp, %r10d
	andl	$2048, %r10d            # imm = 0x800
	leal	-1(%r9), %r13d
	movl	%ebp, %r11d
	shll	$18, %r11d
	sarl	$31, %r11d
	movl	%ecx, %r14d
	leaq	(%r14,%r14), %r12
	xorl	%ecx, %ecx
	btl	$3, %ebp
	jae	.LBB48_5
# BB#4:                                 # %for.body.prol
	movw	(%rdi), %cx
	movw	%cx, %bp
	rolw	$8, %bp
	testl	%r10d, %r10d
	cmovew	%cx, %bp
	movl	%r11d, %r15d
	xorl	%ebp, %r15d
	xorl	%ebp, %ebp
	testl	%r8d, %r8d
	movslq	%r13d, %rcx
	cmovneq	%rcx, %rbp
	movw	%r15w, (%rsi,%rbp,2)
	addq	%r12, %rdi
	movl	$1, %ecx
.LBB48_5:                               # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB48_8
# BB#6:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %r13d
	.align	16, 0x90
.LBB48_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rdi), %bp
	movw	%bp, %bx
	rolw	$8, %bx
	testl	%r10d, %r10d
	cmovew	%bp, %bx
	xorl	%r11d, %ebx
	leal	1(%rcx), %r15d
	leal	-1(%r13), %ebp
	testl	%r8d, %r8d
	movl	%ecx, %eax
	cmovnel	%r13d, %eax
	cltq
	movw	%bx, (%rsi,%rax,2)
	cmovel	%r15d, %ebp
	movw	(%rdi,%r14,2), %ax
	movw	%ax, %bx
	rolw	$8, %bx
	testl	%r10d, %r10d
	cmovew	%ax, %bx
	addq	%r12, %rdi
	xorl	%r11d, %ebx
	movslq	%ebp, %rax
	movw	%bx, (%rsi,%rax,2)
	addq	%r12, %rdi
	addl	$-2, %r13d
	addl	$2, %ecx
	cmpl	%r9d, %ecx
	jne	.LBB48_7
.LBB48_8:                               # %for.end
	addq	$2, %rdx
	movq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	UnrollPlanarWords, .Lfunc_end48-UnrollPlanarWords
	.cfi_endproc

	.align	16, 0x90
	.type	UnrollAnyWords,@function
UnrollAnyWords:                         # @UnrollAnyWords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp140:
	.cfi_def_cfa_offset 80
.Ltmp141:
	.cfi_offset %rbx, -56
.Ltmp142:
	.cfi_offset %r12, -48
.Ltmp143:
	.cfi_offset %r13, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movl	(%rdi), %esi
	movl	%esi, %r15d
	shrl	$3, %r15d
	movl	%esi, %r12d
	shrl	$10, %r12d
	andl	$1, %r12d
	movl	%esi, %eax
	shrl	$14, %eax
	andl	$1, %eax
	movl	%esi, %r11d
	shrl	$7, %r11d
	andl	$7, %r11d
	cmpl	%eax, %r12d
	leaq	(%rdx,%r11,2), %r10
	leaq	(%r11,%r11), %rcx
	cmoveq	%rdx, %r10
	andl	$15, %r15d
	je	.LBB49_7
# BB#1:                                 # %for.body.lr.ph
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%esi, %r8d
	andl	$2048, %r8d             # imm = 0x800
	leal	-1(%r15), %ecx
	movl	%esi, %edi
	shll	$18, %edi
	sarl	$31, %edi
	xorl	%eax, %eax
	btl	$3, %esi
	movq	%r10, %rsi
	jae	.LBB49_3
# BB#2:                                 # %for.body.prol
	movw	(%r10), %ax
	movw	%ax, %si
	rolw	$8, %si
	testl	%r8d, %r8d
	cmovew	%ax, %si
	movl	%edi, %r14d
	xorl	%esi, %r14d
	xorl	%esi, %esi
	testl	%r12d, %r12d
	movslq	%ecx, %rax
	cmovneq	%rax, %rsi
	movw	%r14w, (%r13,%rsi,2)
	leaq	2(%r10), %rsi
	movl	$1, %eax
.LBB49_3:                               # %for.body.lr.ph.split
	leaq	2(%rcx,%rcx), %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	cmpl	$1, %r15d
	je	.LBB49_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%eax, %ecx
	.align	16, 0x90
.LBB49_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rsi), %bp
	movw	%bp, %bx
	rolw	$8, %bx
	testl	%r8d, %r8d
	cmovew	%bp, %bx
	xorl	%edi, %ebx
	leal	1(%rax), %ebp
	leal	-1(%rcx), %r9d
	testl	%r12d, %r12d
	movl	%ecx, %r14d
	cmovel	%eax, %r14d
	movslq	%r14d, %rdx
	movw	%bx, (%r13,%rdx,2)
	cmovel	%ebp, %r9d
	movw	2(%rsi), %dx
	movw	%dx, %bx
	rolw	$8, %bx
	testl	%r8d, %r8d
	cmovew	%dx, %bx
	xorl	%edi, %ebx
	movslq	%r9d, %rdx
	movw	%bx, (%r13,%rdx,2)
	addl	$-2, %ecx
	addl	$2, %eax
	addq	$4, %rsi
	cmpl	%r15d, %eax
	jne	.LBB49_5
.LBB49_6:                               # %for.cond.for.end_crit_edge
	addq	(%rsp), %r10            # 8-byte Folded Reload
	movl	20(%rsp), %eax          # 4-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB49_7:                               # %for.end
	leaq	(%rcx,%r10), %r14
	cmpl	%eax, %r12d
	cmovneq	%r10, %r14
	testl	%r11d, %r11d
	jne	.LBB49_10
# BB#8:                                 # %for.end
	testl	%eax, %eax
	je	.LBB49_10
# BB#9:                                 # %if.then.49
	movw	(%r13), %bx
	leaq	2(%r13), %rsi
	decl	%r15d
	movslq	%r15d, %rbp
	leaq	(%rbp,%rbp), %rdx
	movq	%r13, %rdi
	callq	memmove
	movw	%bx, (%r13,%rbp,2)
.LBB49_10:                              # %if.end.59
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	UnrollAnyWords, .Lfunc_end49-UnrollAnyWords
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_0:
	.quad	4636737291354636288     # double 100
.LCPI50_1:
	.quad	4638707616191610880     # double 128
.LCPI50_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	UnrollLabDoubleToFloat,@function
UnrollLabDoubleToFloat:                 # @UnrollLabDoubleToFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbx, -16
	movl	(%rdi), %ebx
	testb	$16, %bh
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	divsd	.LCPI50_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	jne	.LBB50_1
# BB#2:                                 # %if.else
	leaq	16(%rdx), %rax
	shrl	$7, %ebx
	andl	$7, %ebx
	addl	$3, %ebx
	leaq	8(%rdx), %rdi
	leaq	(%rdx,%rbx,8), %rdx
	jmp	.LBB50_3
.LBB50_1:                               # %if.then
	movl	%ecx, %eax
	leaq	(%rdx,%rax,8), %rdi
	addl	%ecx, %ecx
	leaq	(%rdx,%rcx,8), %rax
	addq	$8, %rdx
.LBB50_3:                               # %cleanup
	movsd	.LCPI50_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	addsd	(%rdi), %xmm0
	movsd	.LCPI50_2(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsi)
	movss	%xmm1, 8(%rsi)
	movq	%rdx, %rax
	popq	%rbx
	retq
.Lfunc_end50:
	.size	UnrollLabDoubleToFloat, .Lfunc_end50-UnrollLabDoubleToFloat
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI51_0:
	.long	1120403456              # float 100
.LCPI51_1:
	.long	1124073472              # float 128
.LCPI51_2:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	UnrollLabFloatToFloat,@function
UnrollLabFloatToFloat:                  # @UnrollLabFloatToFloat
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdi), %eax
	testb	$16, %ah
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI51_0(%rip), %xmm0
	movss	%xmm0, (%rsi)
	jne	.LBB51_1
# BB#2:                                 # %if.else
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI51_1(%rip), %xmm0
	divss	.LCPI51_2(%rip), %xmm0
	movss	%xmm0, 4(%rsi)
	shrl	$7, %eax
	andl	$7, %eax
	addl	$3, %eax
	leaq	(%rdx,%rax,4), %rcx
	addq	$8, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	jmp	.LBB51_3
.LBB51_1:                               # %if.then
	movl	%ecx, %eax
	movss	(%rdx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI51_1(%rip), %xmm0
	divss	.LCPI51_2(%rip), %xmm0
	movss	%xmm0, 4(%rsi)
	addl	%ecx, %ecx
	leaq	(%rdx,%rcx,4), %rax
	addq	$4, %rdx
.LBB51_3:                               # %cleanup
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI51_1(%rip), %xmm0
	divss	.LCPI51_2(%rip), %xmm0
	movss	%xmm0, 8(%rsi)
	movq	%rdx, %rax
	retq
.Lfunc_end51:
	.size	UnrollLabFloatToFloat, .Lfunc_end51-UnrollLabFloatToFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4611685880988434432     # double 1.999969482421875
	.text
	.align	16, 0x90
	.type	UnrollXYZDoubleToFloat,@function
UnrollXYZDoubleToFloat:                 # @UnrollXYZDoubleToFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbx, -16
	movl	(%rdi), %ebx
	testb	$16, %bh
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	divsd	.LCPI52_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	jne	.LBB52_1
# BB#2:                                 # %if.else
	leaq	16(%rdx), %rax
	shrl	$7, %ebx
	andl	$7, %ebx
	addl	$3, %ebx
	leaq	8(%rdx), %rdi
	leaq	(%rdx,%rbx,8), %rdx
	jmp	.LBB52_3
.LBB52_1:                               # %if.then
	movl	%ecx, %eax
	leaq	(%rdx,%rax,8), %rdi
	addl	%ecx, %ecx
	leaq	(%rdx,%rcx,8), %rax
	addq	$8, %rdx
.LBB52_3:                               # %cleanup
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI52_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rsi)
	movss	%xmm0, 8(%rsi)
	movq	%rdx, %rax
	popq	%rbx
	retq
.Lfunc_end52:
	.size	UnrollXYZDoubleToFloat, .Lfunc_end52-UnrollXYZDoubleToFloat
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI53_0:
	.long	1073741568              # float 1.99996948
	.text
	.align	16, 0x90
	.type	UnrollXYZFloatToFloat,@function
UnrollXYZFloatToFloat:                  # @UnrollXYZFloatToFloat
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rdi), %eax
	testb	$16, %ah
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI53_0(%rip), %xmm0
	movss	%xmm0, (%rsi)
	jne	.LBB53_1
# BB#2:                                 # %if.else
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI53_0(%rip), %xmm0
	movss	%xmm0, 4(%rsi)
	shrl	$7, %eax
	andl	$7, %eax
	addl	$3, %eax
	leaq	(%rdx,%rax,4), %rcx
	addq	$8, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	jmp	.LBB53_3
.LBB53_1:                               # %if.then
	movl	%ecx, %eax
	movss	(%rdx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI53_0(%rip), %xmm0
	movss	%xmm0, 4(%rsi)
	addl	%ecx, %ecx
	leaq	(%rdx,%rcx,4), %rax
	addq	$4, %rdx
.LBB53_3:                               # %cleanup
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI53_0(%rip), %xmm0
	movss	%xmm0, 8(%rsi)
	movq	%rdx, %rax
	retq
.Lfunc_end53:
	.size	UnrollXYZFloatToFloat, .Lfunc_end53-UnrollXYZFloatToFloat
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI54_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
.LCPI54_1:
	.long	1065353216              # float 1.000000e+00
	.long	1120403456              # float 1.000000e+02
	.text
	.align	16, 0x90
	.type	UnrollFloatsToFloat,@function
UnrollFloatsToFloat:                    # @UnrollFloatsToFloat
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
	movq	%rdx, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	(%rdi), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
	shrl	$3, %r15d
	andl	$15, %r15d
	movl	%eax, %r9d
	shrl	$10, %r9d
	andl	$1, %r9d
	movl	%eax, %ebp
	shrl	$14, %ebp
	andl	$1, %ebp
	movl	%eax, %esi
	shrl	$7, %esi
	andl	$7, %esi
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB54_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movss	.LCPI54_1(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB54_3
.LBB54_1:
	movss	.LCPI54_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB54_3:                               # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%ebp, %r9d
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movl	%esi, %r10d
	movl	%esi, 24(%rsp)          # 4-byte Spill
	cmovel	%edi, %r10d
	testl	%r15d, %r15d
	je	.LBB54_8
# BB#4:                                 # %for.body.lr.ph
	movl	28(%rsp), %r8d          # 4-byte Reload
	movl	%r8d, %r11d
	andl	$8192, %r11d            # imm = 0x2000
	andl	$4096, %r8d             # imm = 0x1000
	movl	%r10d, %esi
	imull	%ecx, %esi
	movl	$-1, %ebp
	movss	.LCPI54_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB54_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rbp), %eax
	testl	%r9d, %r9d
	cmovel	%edi, %eax
	leal	(%r10,%rdi), %r14d
	testl	%r8d, %r8d
	movl	%esi, %r13d
	leaq	(%r12,%r13,4), %rdx
	movslq	%r14d, %rbx
	leaq	(%r12,%rbx,4), %rbx
	cmovneq	%rdx, %rbx
	testl	%r11d, %r11d
	movss	(%rbx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	je	.LBB54_7
# BB#6:                                 #   in Loop: Header=BB54_5 Depth=1
	movaps	%xmm1, %xmm3
	subss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
.LBB54_7:                               # %for.body
                                        #   in Loop: Header=BB54_5 Depth=1
	cltq
	movq	32(%rsp), %rdx          # 8-byte Reload
	movss	%xmm2, (%rdx,%rax,4)
	incl	%edi
	decl	%ebp
	addl	%ecx, %esi
	cmpl	%edi, %r15d
	jne	.LBB54_5
.LBB54_8:                               # %for.end
	movl	24(%rsp), %r13d         # 4-byte Reload
	testl	%r13d, %r13d
	jne	.LBB54_11
# BB#9:                                 # %for.end
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB54_11
# BB#10:                                # %if.then.37
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	(%rbx), %r14d
	leaq	4(%rbx), %rsi
	leal	-1(%r15), %eax
	movslq	%eax, %rbp
	leaq	(,%rbp,4), %rdx
	movq	%rbx, %rdi
	callq	memmove
	movl	%r14d, (%rbx,%rbp,4)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
.LBB54_11:                              # %if.end.47
	movl	28(%rsp), %eax          # 4-byte Reload
	testb	$16, %ah
	jne	.LBB54_12
# BB#13:                                # %if.else.53
	addl	%r13d, %r15d
	leaq	(%r12,%r15,4), %r12
	jmp	.LBB54_14
.LBB54_12:                              # %if.then.52
	addq	$4, %r12
.LBB54_14:                              # %cleanup
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	UnrollFloatsToFloat, .Lfunc_end54-UnrollFloatsToFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI55_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI55_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4636737291354636288     # double 1.000000e+02
	.text
	.align	16, 0x90
	.type	UnrollDoublesToFloat,@function
UnrollDoublesToFloat:                   # @UnrollDoublesToFloat
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
	subq	$40, %rsp
.Ltmp170:
	.cfi_def_cfa_offset 96
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
	movq	%rdx, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	(%rdi), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%eax, %r15d
	shrl	$3, %r15d
	andl	$15, %r15d
	movl	%eax, %r9d
	shrl	$10, %r9d
	andl	$1, %r9d
	movl	%eax, %ebp
	shrl	$14, %ebp
	andl	$1, %ebp
	movl	%eax, %esi
	shrl	$7, %esi
	andl	$7, %esi
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB55_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI55_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB55_3
.LBB55_1:
	movsd	.LCPI55_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB55_3:                               # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%ebp, %r9d
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movl	%esi, %r10d
	movl	%esi, 24(%rsp)          # 4-byte Spill
	cmovel	%edi, %r10d
	testl	%r15d, %r15d
	je	.LBB55_8
# BB#4:                                 # %for.body.lr.ph
	movl	28(%rsp), %r8d          # 4-byte Reload
	movl	%r8d, %r11d
	andl	$8192, %r11d            # imm = 0x2000
	andl	$4096, %r8d             # imm = 0x1000
	movl	%r10d, %esi
	imull	%ecx, %esi
	movl	$-1, %ebp
	movsd	.LCPI55_0(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB55_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rbp), %eax
	testl	%r9d, %r9d
	cmovel	%edi, %eax
	leal	(%r10,%rdi), %r14d
	testl	%r8d, %r8d
	movl	%esi, %r13d
	leaq	(%r12,%r13,8), %rdx
	movslq	%r14d, %rbx
	leaq	(%r12,%rbx,8), %rbx
	cmovneq	%rdx, %rbx
	testl	%r11d, %r11d
	movsd	(%rbx), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	je	.LBB55_7
# BB#6:                                 #   in Loop: Header=BB55_5 Depth=1
	movapd	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm2
.LBB55_7:                               # %for.body
                                        #   in Loop: Header=BB55_5 Depth=1
	cvtsd2ss	%xmm2, %xmm2
	cltq
	movq	32(%rsp), %rdx          # 8-byte Reload
	movss	%xmm2, (%rdx,%rax,4)
	incl	%edi
	decl	%ebp
	addl	%ecx, %esi
	cmpl	%edi, %r15d
	jne	.LBB55_5
.LBB55_8:                               # %for.end
	movl	24(%rsp), %r13d         # 4-byte Reload
	testl	%r13d, %r13d
	jne	.LBB55_11
# BB#9:                                 # %for.end
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB55_11
# BB#10:                                # %if.then.38
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	(%rbx), %r14d
	leaq	4(%rbx), %rsi
	leal	-1(%r15), %eax
	movslq	%eax, %rbp
	leaq	(,%rbp,4), %rdx
	movq	%rbx, %rdi
	callq	memmove
	movl	%r14d, (%rbx,%rbp,4)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
.LBB55_11:                              # %if.end.49
	movl	28(%rsp), %eax          # 4-byte Reload
	testb	$16, %ah
	jne	.LBB55_12
# BB#13:                                # %if.else.55
	addl	%r13d, %r15d
	leaq	(%r12,%r15,8), %r12
	jmp	.LBB55_14
.LBB55_12:                              # %if.then.54
	addq	$8, %r12
.LBB55_14:                              # %cleanup
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	UnrollDoublesToFloat, .Lfunc_end55-UnrollDoublesToFloat
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI56_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
.LCPI56_1:
	.long	1065353216              # float 1.000000e+00
	.long	1120403456              # float 1.000000e+02
	.text
	.align	16, 0x90
	.type	UnrollHalfToFloat,@function
UnrollHalfToFloat:                      # @UnrollHalfToFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp179:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp180:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp181:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp182:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp183:
	.cfi_def_cfa_offset 112
.Ltmp184:
	.cfi_offset %rbx, -56
.Ltmp185:
	.cfi_offset %r12, -48
.Ltmp186:
	.cfi_offset %r13, -40
.Ltmp187:
	.cfi_offset %r14, -32
.Ltmp188:
	.cfi_offset %r15, -24
.Ltmp189:
	.cfi_offset %rbp, -16
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	(%rdi), %ecx
	movl	%ecx, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%ecx, %eax
	shrl	$10, %eax
	andl	$1, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%ecx, %ebp
	shrl	$14, %ebp
	andl	$1, %ebp
	movl	%ecx, %esi
	shrl	$7, %esi
	andl	$7, %esi
	movl	%ecx, %eax
	movl	%ecx, %edi
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %ecx
	cmpl	$24, %ecx
	ja	.LBB56_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movss	.LCPI56_1(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB56_3
.LBB56_1:
	movss	.LCPI56_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB56_3:                               # %IsInkSpace.exit
	movss	%xmm0, 36(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	%ebp, 52(%rsp)          # 4-byte Folded Reload
	movl	%ebp, (%rsp)            # 4-byte Spill
	movl	%esi, %eax
	movl	%esi, 4(%rsp)           # 4-byte Spill
	cmovel	%r15d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB56_11
# BB#4:                                 # %for.body.lr.ph
	movl	%edi, %eax
	andl	$8192, %eax             # imm = 0x2000
	movl	%eax, 28(%rsp)          # 4-byte Spill
	andl	$4096, %edi             # imm = 0x1000
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	imull	48(%rsp), %ebp          # 4-byte Folded Reload
	movl	$-1, %r12d
	.align	16, 0x90
.LBB56_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%r12), %r13d
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	cmovel	%r15d, %r13d
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jne	.LBB56_6
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB56_5 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r15), %eax
	cltq
	jmp	.LBB56_8
	.align	16, 0x90
.LBB56_6:                               # %if.then.22
                                        #   in Loop: Header=BB56_5 Depth=1
	movl	%ebp, %eax
.LBB56_8:                               # %if.end.28
                                        #   in Loop: Header=BB56_5 Depth=1
	movzwl	(%rdx,%rax,2), %edi
	movq	%rdx, %r14
	callq	_cmsHalf2Float
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	divss	36(%rsp), %xmm0         # 4-byte Folded Reload
	je	.LBB56_10
# BB#9:                                 #   in Loop: Header=BB56_5 Depth=1
	movss	.LCPI56_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.LBB56_10:                              # %if.end.28
                                        #   in Loop: Header=BB56_5 Depth=1
	movq	%r14, %rdx
	movslq	%r13d, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movss	%xmm0, (%rcx,%rax,4)
	incl	%r15d
	decl	%r12d
	addl	48(%rsp), %ebp          # 4-byte Folded Reload
	cmpl	%r15d, %ebx
	jne	.LBB56_5
.LBB56_11:                              # %for.end
	movl	4(%rsp), %r13d          # 4-byte Reload
	testl	%r13d, %r13d
	jne	.LBB56_14
# BB#12:                                # %for.end
	cmpl	$0, (%rsp)              # 4-byte Folded Reload
	je	.LBB56_14
# BB#13:                                # %if.then.39
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	(%rbp), %r14d
	leaq	4(%rbp), %rsi
	leal	-1(%rbx), %eax
	movslq	%eax, %r12
	movq	%rdx, %r15
	leaq	(,%r12,4), %rdx
	movq	%rbp, %rdi
	callq	memmove
	movq	%r15, %rdx
	movl	%r14d, (%rbp,%r12,4)
.LBB56_14:                              # %if.end.49
	movq	8(%rsp), %rax           # 8-byte Reload
	testb	$16, 1(%rax)
	jne	.LBB56_15
# BB#16:                                # %if.else.55
	addl	%r13d, %ebx
	leaq	(%rdx,%rbx,2), %rdx
	jmp	.LBB56_17
.LBB56_15:                              # %if.then.54
	addq	$2, %rdx
.LBB56_17:                              # %cleanup
	movq	%rdx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	UnrollHalfToFloat, .Lfunc_end56-UnrollHalfToFloat
	.cfi_endproc

	.align	16, 0x90
	.type	PackLabDoubleFrom16,@function
PackLabDoubleFrom16:                    # @PackLabDoubleFrom16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp190:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp193:
	.cfi_def_cfa_offset 64
.Ltmp194:
	.cfi_offset %rbx, -32
.Ltmp195:
	.cfi_offset %r14, -24
.Ltmp196:
	.cfi_offset %r15, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %r15
	testb	$16, 5(%r15)
	jne	.LBB57_1
# BB#2:                                 # %if.else
	movq	%rbx, %rdi
	callq	cmsLabEncoded2Float
	movl	4(%r15), %eax
	shrl	$7, %eax
	andl	$7, %eax
	leaq	24(%rbx,%rax,8), %rbx
	jmp	.LBB57_3
.LBB57_1:                               # %if.then
	leaq	8(%rsp), %rdi
	callq	cmsLabEncoded2Float
	movq	8(%rsp), %rax
	movq	%rax, (%rbx)
	movq	16(%rsp), %rax
	movl	%r14d, %ecx
	movq	%rax, (%rbx,%rcx,8)
	movq	24(%rsp), %rax
	addl	%r14d, %r14d
	movq	%rax, (%rbx,%r14,8)
	addq	$8, %rbx
.LBB57_3:                               # %return
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end57:
	.size	PackLabDoubleFrom16, .Lfunc_end57-PackLabDoubleFrom16
	.cfi_endproc

	.align	16, 0x90
	.type	PackXYZDoubleFrom16,@function
PackXYZDoubleFrom16:                    # @PackXYZDoubleFrom16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp200:
	.cfi_def_cfa_offset 64
.Ltmp201:
	.cfi_offset %rbx, -32
.Ltmp202:
	.cfi_offset %r14, -24
.Ltmp203:
	.cfi_offset %r15, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %r15
	testb	$16, 5(%r15)
	jne	.LBB58_1
# BB#2:                                 # %if.else
	movq	%rbx, %rdi
	callq	cmsXYZEncoded2Float
	movl	4(%r15), %eax
	shrl	$7, %eax
	andl	$7, %eax
	leaq	24(%rbx,%rax,8), %rbx
	jmp	.LBB58_3
.LBB58_1:                               # %if.then
	leaq	8(%rsp), %rdi
	callq	cmsXYZEncoded2Float
	movq	8(%rsp), %rax
	movq	%rax, (%rbx)
	movq	16(%rsp), %rax
	movl	%r14d, %ecx
	movq	%rax, (%rbx,%rcx,8)
	movq	24(%rsp), %rax
	addl	%r14d, %r14d
	movq	%rax, (%rbx,%r14,8)
	addq	$8, %rbx
.LBB58_3:                               # %return
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end58:
	.size	PackXYZDoubleFrom16, .Lfunc_end58-PackXYZDoubleFrom16
	.cfi_endproc

	.align	16, 0x90
	.type	PackLabFloatFrom16,@function
PackLabFloatFrom16:                     # @PackLabFloatFrom16
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
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %r15
	leaq	8(%rsp), %rdi
	callq	cmsLabEncoded2Float
	movl	4(%r15), %eax
	testb	$16, %ah
	movsd	8(%rsp), %xmm2          # xmm2 = mem[0],zero
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm2, %xmm2
	jne	.LBB59_1
# BB#2:                                 # %if.else
	movss	%xmm2, (%rbx)
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rbx)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	shrl	$7, %eax
	andl	$7, %eax
	addl	$3, %eax
	leaq	(%rbx,%rax,4), %rbx
	jmp	.LBB59_3
.LBB59_1:                               # %if.then
	movss	%xmm2, (%rbx)
	cvtsd2ss	%xmm1, %xmm1
	movl	%r14d, %eax
	movss	%xmm1, (%rbx,%rax,4)
	cvtsd2ss	%xmm0, %xmm0
	addl	%r14d, %r14d
	movss	%xmm0, (%rbx,%r14,4)
	addq	$4, %rbx
.LBB59_3:                               # %cleanup
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end59:
	.size	PackLabFloatFrom16, .Lfunc_end59-PackLabFloatFrom16
	.cfi_endproc

	.align	16, 0x90
	.type	PackXYZFloatFrom16,@function
PackXYZFloatFrom16:                     # @PackXYZFloatFrom16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp214:
	.cfi_def_cfa_offset 64
.Ltmp215:
	.cfi_offset %rbx, -32
.Ltmp216:
	.cfi_offset %r14, -24
.Ltmp217:
	.cfi_offset %r15, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %r15
	testb	$16, 5(%r15)
	jne	.LBB60_1
# BB#2:                                 # %if.else
	leaq	8(%rsp), %rdi
	callq	cmsXYZEncoded2Float
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rbx)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rbx)
	movl	4(%r15), %eax
	shrl	$7, %eax
	andl	$7, %eax
	leaq	12(%rbx,%rax,4), %rbx
	jmp	.LBB60_3
.LBB60_1:                               # %if.then
	leaq	8(%rsp), %rdi
	callq	cmsXYZEncoded2Float
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movl	%r14d, %eax
	movss	%xmm0, (%rbx,%rax,4)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	addl	%r14d, %r14d
	movss	%xmm0, (%rbx,%r14,4)
	addq	$4, %rbx
.LBB60_3:                               # %return
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end60:
	.size	PackXYZFloatFrom16, .Lfunc_end60-PackXYZFloatFrom16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI61_0:
	.quad	4679239875398991872     # double 65535
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI61_1:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4648975735381085389     # double 6.553500e+02
	.text
	.align	16, 0x90
	.type	PackDoubleFrom16,@function
PackDoubleFrom16:                       # @PackDoubleFrom16
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
	subq	$24, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 80
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
	movq	%rdx, %r15
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	4(%rdi), %r14d
	movl	%r14d, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%r14d, %r11d
	shrl	$10, %r11d
	andl	$1, %r11d
	movl	%r14d, %r9d
	shrl	$7, %r9d
	andl	$7, %r9d
	movl	%r14d, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	movl	%r14d, %eax
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB61_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI61_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB61_3
.LBB61_1:
	movsd	.LCPI61_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB61_3:                               # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%r8d, %r11d
	movl	$0, %r10d
	cmovnel	%r9d, %r10d
	xorpd	%xmm2, %xmm2
	testl	%ebx, %ebx
	je	.LBB61_11
# BB#4:                                 # %for.body.lr.ph
	movl	%r14d, %r12d
	andl	$8192, %r12d            # imm = 0x2000
	movl	%r14d, %r13d
	andl	$4096, %r13d            # imm = 0x1000
	movl	%r10d, %ebp
	imull	%ecx, %ebp
	movl	$-1, %edx
	.align	16, 0x90
.LBB61_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rdx), %eax
	testl	%r11d, %r11d
	cmovel	%edi, %eax
	testl	%r12d, %r12d
	cltq
	movzwl	(%rsi,%rax,2), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	je	.LBB61_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB61_5 Depth=1
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
.LBB61_7:                               # %for.body
                                        #   in Loop: Header=BB61_5 Depth=1
	testl	%r13d, %r13d
	jne	.LBB61_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB61_5 Depth=1
	leal	(%r10,%rdi), %eax
	cltq
	jmp	.LBB61_10
	.align	16, 0x90
.LBB61_8:                               # %if.then.26
                                        #   in Loop: Header=BB61_5 Depth=1
	movl	%ebp, %eax
.LBB61_10:                              # %if.end.32
                                        #   in Loop: Header=BB61_5 Depth=1
	movsd	%xmm2, (%r15,%rax,8)
	incl	%edi
	decl	%edx
	addl	%ecx, %ebp
	cmpl	%edi, %ebx
	jne	.LBB61_5
.LBB61_11:                              # %for.end
	cmpl	%r8d, %r11d
	movl	%r9d, %eax
	leaq	(%r15,%rax,8), %rbp
	cmovneq	%r15, %rbp
	testl	%r9d, %r9d
	jne	.LBB61_14
# BB#12:                                # %for.end
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	testl	%r8d, %r8d
	je	.LBB61_14
# BB#13:                                # %if.then.41
	leaq	8(%r15), %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%r15, %rsi
	callq	memmove
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %r14d
.LBB61_14:                              # %if.end.47
	movl	%r14d, %eax
	testb	$16, %ah
	movl	%ebx, %eax
	leaq	(%rbp,%rax,8), %rcx
	leaq	8(%rbp), %rax
	cmoveq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	PackDoubleFrom16, .Lfunc_end61-PackDoubleFrom16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI62_0:
	.quad	4679239875398991872     # double 65535
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI62_1:
	.quad	4679239875398991872     # double 6.553500e+04
	.quad	4648975735381085389     # double 6.553500e+02
	.text
	.align	16, 0x90
	.type	PackFloatFrom16,@function
PackFloatFrom16:                        # @PackFloatFrom16
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
	subq	$24, %rsp
.Ltmp237:
	.cfi_def_cfa_offset 80
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
	movq	%rdx, %r15
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	4(%rdi), %r14d
	movl	%r14d, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%r14d, %r11d
	shrl	$10, %r11d
	andl	$1, %r11d
	movl	%r14d, %r9d
	shrl	$7, %r9d
	andl	$7, %r9d
	movl	%r14d, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	movl	%r14d, %eax
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB62_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI62_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB62_3
.LBB62_1:
	movsd	.LCPI62_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB62_3:                               # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%r8d, %r11d
	movl	$0, %r10d
	cmovnel	%r9d, %r10d
	xorps	%xmm1, %xmm1
	testl	%ebx, %ebx
	je	.LBB62_11
# BB#4:                                 # %for.body.lr.ph
	movl	%r14d, %r12d
	andl	$8192, %r12d            # imm = 0x2000
	movl	%r14d, %r13d
	andl	$4096, %r13d            # imm = 0x1000
	movl	%r10d, %ebp
	imull	%ecx, %ebp
	movl	$-1, %edx
	.align	16, 0x90
.LBB62_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rdx), %eax
	testl	%r11d, %r11d
	cmovel	%edi, %eax
	testl	%r12d, %r12d
	cltq
	movzwl	(%rsi,%rax,2), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	je	.LBB62_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB62_5 Depth=1
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
.LBB62_7:                               # %for.body
                                        #   in Loop: Header=BB62_5 Depth=1
	testl	%r13d, %r13d
	cvtsd2ss	%xmm1, %xmm1
	jne	.LBB62_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB62_5 Depth=1
	leal	(%r10,%rdi), %eax
	cltq
	jmp	.LBB62_10
	.align	16, 0x90
.LBB62_8:                               # %if.then.26
                                        #   in Loop: Header=BB62_5 Depth=1
	movl	%ebp, %eax
.LBB62_10:                              # %if.end.34
                                        #   in Loop: Header=BB62_5 Depth=1
	movss	%xmm1, (%r15,%rax,4)
	incl	%edi
	decl	%edx
	addl	%ecx, %ebp
	cmpl	%edi, %ebx
	jne	.LBB62_5
.LBB62_11:                              # %for.end
	cmpl	%r8d, %r11d
	movl	%r9d, %eax
	leaq	(%r15,%rax,4), %rbp
	cmovneq	%r15, %rbp
	testl	%r9d, %r9d
	jne	.LBB62_14
# BB#12:                                # %for.end
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB62_14
# BB#13:                                # %if.then.43
	leaq	4(%r15), %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%r15, %rsi
	callq	memmove
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %r14d
.LBB62_14:                              # %if.end.50
	movl	%r14d, %eax
	testb	$16, %ah
	movl	%ebx, %eax
	leaq	(%rbp,%rax,4), %rcx
	leaq	4(%rbp), %rax
	cmoveq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	PackFloatFrom16, .Lfunc_end62-PackFloatFrom16
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI63_0:
	.long	1199570688              # float 65535
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
.LCPI63_1:
	.long	1199570688              # float 6.553500e+04
	.long	1143199334              # float 6.553500e+02
	.text
	.align	16, 0x90
	.type	PackHalfFrom16,@function
PackHalfFrom16:                         # @PackHalfFrom16
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
	subq	$72, %rsp
.Ltmp250:
	.cfi_def_cfa_offset 128
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
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	4(%rdi), %r14d
	movl	%r14d, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%r14d, %eax
	shrl	$10, %eax
	andl	$1, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	%r14d, %edx
	shrl	$7, %edx
	andl	$7, %edx
	movl	%r14d, %esi
	shrl	$14, %esi
	andl	$1, %esi
	movl	%r14d, %eax
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %ecx
	cmpl	$24, %ecx
	ja	.LBB63_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movss	.LCPI63_1(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB63_3
.LBB63_1:
	movss	.LCPI63_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB63_3:                               # %IsInkSpace.exit
	movss	%xmm0, 36(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	%esi, 68(%rsp)          # 4-byte Folded Reload
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movl	$0, %eax
	cmovnel	%edx, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	xorps	%xmm1, %xmm1
	movss	%xmm1, 48(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB63_11
# BB#4:                                 # %for.body.lr.ph
	movl	%r14d, %ebp
	andl	$8192, %ebp             # imm = 0x2000
	andl	$4096, %r14d            # imm = 0x1000
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	imull	52(%rsp), %r13d         # 4-byte Folded Reload
	movl	$-1, %r12d
	.align	16, 0x90
.LBB63_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%r12), %eax
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	cmovel	%r15d, %eax
	testl	%ebp, %ebp
	cltq
	movq	40(%rsp), %rcx          # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	je	.LBB63_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB63_5 Depth=1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
.LBB63_7:                               # %for.body
                                        #   in Loop: Header=BB63_5 Depth=1
	movss	%xmm1, 48(%rsp)         # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	_cmsFloat2Half
	testl	%r14d, %r14d
	jne	.LBB63_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%r15), %ecx
	movslq	%ecx, %rcx
	jmp	.LBB63_10
	.align	16, 0x90
.LBB63_8:                               # %if.then.26
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	%r13d, %ecx
.LBB63_10:                              # %if.end.34
                                        #   in Loop: Header=BB63_5 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	movw	%ax, (%rdx,%rcx,2)
	movss	36(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	incl	%r15d
	decl	%r12d
	addl	52(%rsp), %r13d         # 4-byte Folded Reload
	cmpl	%r15d, %ebx
	jne	.LBB63_5
.LBB63_11:                              # %for.end
	movl	8(%rsp), %esi           # 4-byte Reload
	cmpl	%esi, 68(%rsp)          # 4-byte Folded Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,2), %rbp
	cmovneq	%rcx, %rbp
	movq	%rcx, %rax
	testl	%edx, %edx
	jne	.LBB63_14
# BB#12:                                # %for.end
	testl	%esi, %esi
	je	.LBB63_14
# BB#13:                                # %if.then.43
	movq	%rax, %r14
	leaq	2(%r14), %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rdx
	movq	%r14, %rsi
	callq	memmove
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	_cmsFloat2Half
	movw	%ax, (%r14)
.LBB63_14:                              # %if.end.50
	movq	16(%rsp), %rax          # 8-byte Reload
	testb	$16, 5(%rax)
	movl	%ebx, %eax
	leaq	(%rbp,%rax,2), %rcx
	leaq	2(%rbp), %rax
	cmoveq	%rcx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	PackHalfFrom16, .Lfunc_end63-PackHalfFrom16
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1Byte,@function
Pack1Byte:                              # @Pack1Byte
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	leaq	1(%rdx), %rax
	retq
.Lfunc_end64:
	.size	Pack1Byte, .Lfunc_end64-Pack1Byte
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1ByteSkip1,@function
Pack1ByteSkip1:                         # @Pack1ByteSkip1
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end65:
	.size	Pack1ByteSkip1, .Lfunc_end65-Pack1ByteSkip1
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1ByteSkip1SwapFirst,@function
Pack1ByteSkip1SwapFirst:                # @Pack1ByteSkip1SwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end66:
	.size	Pack1ByteSkip1SwapFirst, .Lfunc_end66-Pack1ByteSkip1SwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1ByteReversed,@function
Pack1ByteReversed:                      # @Pack1ByteReversed
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	xorl	$65535, %eax            # imm = 0xFFFF
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	leaq	1(%rdx), %rax
	retq
.Lfunc_end67:
	.size	Pack1ByteReversed, .Lfunc_end67-Pack1ByteReversed
	.cfi_endproc

	.align	16, 0x90
	.type	PackLabV2_8,@function
PackLabV2_8:                            # @PackLabV2_8
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %ecx
	shll	$8, %ecx
	orl	$128, %ecx
	movl	$4278255361, %eax       # imm = 0xFF00FF01
	imulq	%rax, %rcx
	shrq	$40, %rcx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, (%rdx)
	movzwl	2(%rsi), %ecx
	shll	$8, %ecx
	orl	$128, %ecx
	imulq	%rax, %rcx
	shrq	$40, %rcx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, 1(%rdx)
	movzwl	4(%rsi), %ecx
	shll	$8, %ecx
	orl	$128, %ecx
	imulq	%rax, %rcx
	shrq	$40, %rcx
	imull	$65281, %ecx, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end68:
	.size	PackLabV2_8, .Lfunc_end68-PackLabV2_8
	.cfi_endproc

	.align	16, 0x90
	.type	PackALabV2_8,@function
PackALabV2_8:                           # @PackALabV2_8
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %ecx
	shll	$8, %ecx
	orl	$128, %ecx
	movl	$4278255361, %eax       # imm = 0xFF00FF01
	imulq	%rax, %rcx
	shrq	$40, %rcx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, 1(%rdx)
	movzwl	2(%rsi), %ecx
	shll	$8, %ecx
	orl	$128, %ecx
	imulq	%rax, %rcx
	shrq	$40, %rcx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	movb	%cl, 2(%rdx)
	movzwl	4(%rsi), %ecx
	shll	$8, %ecx
	orl	$128, %ecx
	imulq	%rax, %rcx
	shrq	$40, %rcx
	imull	$65281, %ecx, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end69:
	.size	PackALabV2_8, .Lfunc_end69-PackALabV2_8
	.cfi_endproc

	.align	16, 0x90
	.type	PackLabV2_16,@function
PackLabV2_16:                           # @PackLabV2_16
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	shll	$8, %eax
	orl	$128, %eax
	movl	$4278255361, %ecx       # imm = 0xFF00FF01
	imulq	%rcx, %rax
	shrq	$40, %rax
	movw	%ax, (%rdx)
	movzwl	2(%rsi), %eax
	shll	$8, %eax
	orl	$128, %eax
	imulq	%rcx, %rax
	shrq	$40, %rax
	movw	%ax, 2(%rdx)
	movzwl	4(%rsi), %eax
	shll	$8, %eax
	orl	$128, %eax
	imulq	%rcx, %rax
	shrq	$40, %rax
	movw	%ax, 4(%rdx)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end70:
	.size	PackLabV2_16, .Lfunc_end70-PackLabV2_16
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesOptimized,@function
Pack3BytesOptimized:                    # @Pack3BytesOptimized
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rsi), %al
	movb	%al, (%rdx)
	movb	2(%rsi), %al
	movb	%al, 1(%rdx)
	movb	4(%rsi), %al
	movb	%al, 2(%rdx)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end71:
	.size	Pack3BytesOptimized, .Lfunc_end71-Pack3BytesOptimized
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1Optimized,@function
Pack3BytesAndSkip1Optimized:            # @Pack3BytesAndSkip1Optimized
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rsi), %al
	movb	%al, (%rdx)
	movb	2(%rsi), %al
	movb	%al, 1(%rdx)
	movb	4(%rsi), %al
	movb	%al, 2(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end72:
	.size	Pack3BytesAndSkip1Optimized, .Lfunc_end72-Pack3BytesAndSkip1Optimized
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1SwapFirstOptimized,@function
Pack3BytesAndSkip1SwapFirstOptimized:   # @Pack3BytesAndSkip1SwapFirstOptimized
	.cfi_startproc
# BB#0:                                 # %entry
	movb	(%rsi), %al
	movb	%al, 1(%rdx)
	movb	2(%rsi), %al
	movb	%al, 2(%rdx)
	movb	4(%rsi), %al
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end73:
	.size	Pack3BytesAndSkip1SwapFirstOptimized, .Lfunc_end73-Pack3BytesAndSkip1SwapFirstOptimized
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1SwapSwapFirstOptimized,@function
Pack3BytesAndSkip1SwapSwapFirstOptimized: # @Pack3BytesAndSkip1SwapSwapFirstOptimized
	.cfi_startproc
# BB#0:                                 # %entry
	movb	4(%rsi), %al
	movb	%al, (%rdx)
	movb	2(%rsi), %al
	movb	%al, 1(%rdx)
	movb	(%rsi), %al
	movb	%al, 2(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end74:
	.size	Pack3BytesAndSkip1SwapSwapFirstOptimized, .Lfunc_end74-Pack3BytesAndSkip1SwapSwapFirstOptimized
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1SwapOptimized,@function
Pack3BytesAndSkip1SwapOptimized:        # @Pack3BytesAndSkip1SwapOptimized
	.cfi_startproc
# BB#0:                                 # %entry
	movb	4(%rsi), %al
	movb	%al, 1(%rdx)
	movb	2(%rsi), %al
	movb	%al, 2(%rdx)
	movb	(%rsi), %al
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end75:
	.size	Pack3BytesAndSkip1SwapOptimized, .Lfunc_end75-Pack3BytesAndSkip1SwapOptimized
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesSwapOptimized,@function
Pack3BytesSwapOptimized:                # @Pack3BytesSwapOptimized
	.cfi_startproc
# BB#0:                                 # %entry
	movb	4(%rsi), %al
	movb	%al, (%rdx)
	movb	2(%rsi), %al
	movb	%al, 1(%rdx)
	movb	(%rsi), %al
	movb	%al, 2(%rdx)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end76:
	.size	Pack3BytesSwapOptimized, .Lfunc_end76-Pack3BytesSwapOptimized
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3Bytes,@function
Pack3Bytes:                             # @Pack3Bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end77:
	.size	Pack3Bytes, .Lfunc_end77-Pack3Bytes
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1,@function
Pack3BytesAndSkip1:                     # @Pack3BytesAndSkip1
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end78:
	.size	Pack3BytesAndSkip1, .Lfunc_end78-Pack3BytesAndSkip1
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1SwapFirst,@function
Pack3BytesAndSkip1SwapFirst:            # @Pack3BytesAndSkip1SwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end79:
	.size	Pack3BytesAndSkip1SwapFirst, .Lfunc_end79-Pack3BytesAndSkip1SwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1SwapSwapFirst,@function
Pack3BytesAndSkip1SwapSwapFirst:        # @Pack3BytesAndSkip1SwapSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end80:
	.size	Pack3BytesAndSkip1SwapSwapFirst, .Lfunc_end80-Pack3BytesAndSkip1SwapSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesAndSkip1Swap,@function
Pack3BytesAndSkip1Swap:                 # @Pack3BytesAndSkip1Swap
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end81:
	.size	Pack3BytesAndSkip1Swap, .Lfunc_end81-Pack3BytesAndSkip1Swap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3BytesSwap,@function
Pack3BytesSwap:                         # @Pack3BytesSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	leaq	3(%rdx), %rax
	retq
.Lfunc_end82:
	.size	Pack3BytesSwap, .Lfunc_end82-Pack3BytesSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack6Bytes,@function
Pack6Bytes:                             # @Pack6Bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	movzwl	8(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 4(%rdx)
	movzwl	10(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 5(%rdx)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end83:
	.size	Pack6Bytes, .Lfunc_end83-Pack6Bytes
	.cfi_endproc

	.align	16, 0x90
	.type	Pack6BytesSwap,@function
Pack6BytesSwap:                         # @Pack6BytesSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	10(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	8(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 4(%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 5(%rdx)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end84:
	.size	Pack6BytesSwap, .Lfunc_end84-Pack6BytesSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4Bytes,@function
Pack4Bytes:                             # @Pack4Bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end85:
	.size	Pack4Bytes, .Lfunc_end85-Pack4Bytes
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4BytesReverse,@function
Pack4BytesReverse:                      # @Pack4BytesReverse
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	notl	%eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	notl	%eax
	movb	%al, 1(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	notl	%eax
	movb	%al, 2(%rdx)
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	notl	%eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end86:
	.size	Pack4BytesReverse, .Lfunc_end86-Pack4BytesReverse
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4BytesSwapFirst,@function
Pack4BytesSwapFirst:                    # @Pack4BytesSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end87:
	.size	Pack4BytesSwapFirst, .Lfunc_end87-Pack4BytesSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4BytesSwap,@function
Pack4BytesSwap:                         # @Pack4BytesSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end88:
	.size	Pack4BytesSwap, .Lfunc_end88-Pack4BytesSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4BytesSwapSwapFirst,@function
Pack4BytesSwapSwapFirst:                # @Pack4BytesSwapSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rdx)
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 1(%rdx)
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 2(%rdx)
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, 3(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end89:
	.size	Pack4BytesSwapSwapFirst, .Lfunc_end89-Pack4BytesSwapSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	PackAnyBytes,@function
PackAnyBytes:                           # @PackAnyBytes
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
	pushq	%rax
.Ltmp263:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r14
	movl	4(%rdi), %eax
	movl	%eax, %r11d
	shrl	$3, %r11d
	movl	%eax, %r12d
	shrl	$10, %r12d
	andl	$1, %r12d
	movl	%eax, %r9d
	shrl	$7, %r9d
	andl	$7, %r9d
	movl	%eax, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	leaq	(%r14,%r9), %r10
	cmpl	%r8d, %r12d
	cmoveq	%r14, %r10
	xorl	%ebx, %ebx
	andl	$15, %r11d
	je	.LBB90_7
# BB#1:                                 # %for.body.lr.ph
	movl	%eax, %r13d
	andl	$8192, %r13d            # imm = 0x2000
	leal	-1(%r11), %edx
	btl	$3, %eax
                                        # implicit-def: BPL
	movq	%r10, %rax
	jae	.LBB90_3
# BB#2:                                 # %for.body.prol
	xorl	%eax, %eax
	testl	%r12d, %r12d
	movslq	%edx, %rbx
	cmovneq	%rbx, %rax
	movzwl	(%rsi,%rax,2), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	testl	%r13d, %r13d
	movl	%eax, %ebp
	notl	%ebp
	cmovel	%eax, %ebp
	leaq	1(%r10), %rax
	movb	%bpl, (%r10)
	movl	$1, %ebx
.LBB90_3:                               # %for.body.lr.ph.split
	leaq	1(%rdx), %r15
	cmpl	$1, %r11d
	je	.LBB90_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%ebx, %edx
	.align	16, 0x90
.LBB90_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rbx), %ebp
	leal	-1(%rdx), %ecx
	testl	%r12d, %r12d
	movl	%edx, %edi
	cmovel	%ebx, %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %edi
	cmovel	%ebp, %ecx
	imull	$65281, %edi, %edi      # imm = 0xFF01
	addl	$8388608, %edi          # imm = 0x800000
	shrl	$24, %edi
	testl	%r13d, %r13d
	movl	%edi, %ebp
	notl	%ebp
	cmovel	%edi, %ebp
	movb	%bpl, (%rax)
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	testl	%r13d, %r13d
	movl	%ecx, %ebp
	notl	%ebp
	cmovel	%ecx, %ebp
	movb	%bpl, 1(%rax)
	addl	$-2, %edx
	addl	$2, %ebx
	addq	$2, %rax
	cmpl	%r11d, %ebx
	jne	.LBB90_5
.LBB90_6:                               # %for.cond.for.end_crit_edge
	addq	%r15, %r10
	movb	%bpl, %bl
.LBB90_7:                               # %for.end
	leaq	(%r9,%r10), %r15
	cmpl	%r8d, %r12d
	cmovneq	%r10, %r15
	testl	%r9d, %r9d
	jne	.LBB90_10
# BB#8:                                 # %for.end
	testl	%r8d, %r8d
	je	.LBB90_10
# BB#9:                                 # %if.then.32
	leaq	1(%r14), %rdi
	decl	%r11d
	movslq	%r11d, %rdx
	movq	%r14, %rsi
	callq	memmove
	movb	%bl, (%r14)
.LBB90_10:                              # %if.end.36
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end90:
	.size	PackAnyBytes, .Lfunc_end90-PackAnyBytes
	.cfi_endproc

	.align	16, 0x90
	.type	PackPlanarBytes,@function
PackPlanarBytes:                        # @PackPlanarBytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbx, -16
	movl	4(%rdi), %r8d
	movl	%r8d, %r11d
	shrl	$3, %r11d
	andl	$15, %r11d
	movl	%r8d, %r9d
	shrl	$10, %r9d
	andl	$1, %r9d
	movl	%r8d, %eax
	shrl	$14, %eax
	andl	$1, %eax
	cmpl	%eax, %r9d
	movq	%rdx, %rax
	je	.LBB91_2
# BB#1:                                 # %if.then
	movl	%r8d, %eax
	shrl	$7, %eax
	andl	$7, %eax
	imull	%ecx, %eax
	leaq	(%rax,%rdx), %rax
.LBB91_2:                               # %for.cond.preheader
	testl	%r11d, %r11d
	je	.LBB91_5
# BB#3:                                 # %for.body.lr.ph
	andl	$8192, %r8d             # imm = 0x2000
	movl	%ecx, %r10d
	decl	%r11d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB91_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r9d, %r9d
	movl	%r11d, %edi
	cmovel	%ecx, %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %edi
	imull	$65281, %edi, %edi      # imm = 0xFF01
	addl	$8388608, %edi          # imm = 0x800000
	shrl	$24, %edi
	testl	%r8d, %r8d
	movl	%edi, %ebx
	notl	%ebx
	cmovel	%edi, %ebx
	movb	%bl, (%rax)
	addq	%r10, %rax
	incl	%ecx
	decl	%r11d
	cmpl	$-1, %r11d
	jne	.LBB91_4
.LBB91_5:                               # %for.end
	incq	%rdx
	movq	%rdx, %rax
	popq	%rbx
	retq
.Lfunc_end91:
	.size	PackPlanarBytes, .Lfunc_end91-PackPlanarBytes
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1Word,@function
Pack1Word:                              # @Pack1Word
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end92:
	.size	Pack1Word, .Lfunc_end92-Pack1Word
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1WordSkip1,@function
Pack1WordSkip1:                         # @Pack1WordSkip1
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end93:
	.size	Pack1WordSkip1, .Lfunc_end93-Pack1WordSkip1
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1WordSkip1SwapFirst,@function
Pack1WordSkip1SwapFirst:                # @Pack1WordSkip1SwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, 2(%rdx)
	leaq	4(%rdx), %rax
	retq
.Lfunc_end94:
	.size	Pack1WordSkip1SwapFirst, .Lfunc_end94-Pack1WordSkip1SwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1WordReversed,@function
Pack1WordReversed:                      # @Pack1WordReversed
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	notw	%ax
	movw	%ax, (%rdx)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end95:
	.size	Pack1WordReversed, .Lfunc_end95-Pack1WordReversed
	.cfi_endproc

	.align	16, 0x90
	.type	Pack1WordBigEndian,@function
Pack1WordBigEndian:                     # @Pack1WordBigEndian
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, (%rdx)
	leaq	2(%rdx), %rax
	retq
.Lfunc_end96:
	.size	Pack1WordBigEndian, .Lfunc_end96-Pack1WordBigEndian
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3Words,@function
Pack3Words:                             # @Pack3Words
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 4(%rdx)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end97:
	.size	Pack3Words, .Lfunc_end97-Pack3Words
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3WordsSwap,@function
Pack3WordsSwap:                         # @Pack3WordsSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	4(%rsi), %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	(%rsi), %ax
	movw	%ax, 4(%rdx)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end98:
	.size	Pack3WordsSwap, .Lfunc_end98-Pack3WordsSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3WordsBigEndian,@function
Pack3WordsBigEndian:                    # @Pack3WordsBigEndian
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 4(%rdx)
	leaq	6(%rdx), %rax
	retq
.Lfunc_end99:
	.size	Pack3WordsBigEndian, .Lfunc_end99-Pack3WordsBigEndian
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3WordsAndSkip1,@function
Pack3WordsAndSkip1:                     # @Pack3WordsAndSkip1
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 4(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end100:
	.size	Pack3WordsAndSkip1, .Lfunc_end100-Pack3WordsAndSkip1
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3WordsAndSkip1Swap,@function
Pack3WordsAndSkip1Swap:                 # @Pack3WordsAndSkip1Swap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	4(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 4(%rdx)
	movw	(%rsi), %ax
	movw	%ax, 6(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end101:
	.size	Pack3WordsAndSkip1Swap, .Lfunc_end101-Pack3WordsAndSkip1Swap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3WordsAndSkip1SwapFirst,@function
Pack3WordsAndSkip1SwapFirst:            # @Pack3WordsAndSkip1SwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 4(%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 6(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end102:
	.size	Pack3WordsAndSkip1SwapFirst, .Lfunc_end102-Pack3WordsAndSkip1SwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack3WordsAndSkip1SwapSwapFirst,@function
Pack3WordsAndSkip1SwapSwapFirst:        # @Pack3WordsAndSkip1SwapSwapFirst
	.cfi_startproc
# BB#0:                                 # %entry
	movw	4(%rsi), %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	(%rsi), %ax
	movw	%ax, 4(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end103:
	.size	Pack3WordsAndSkip1SwapSwapFirst, .Lfunc_end103-Pack3WordsAndSkip1SwapSwapFirst
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4Words,@function
Pack4Words:                             # @Pack4Words
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 4(%rdx)
	movw	6(%rsi), %ax
	movw	%ax, 6(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end104:
	.size	Pack4Words, .Lfunc_end104-Pack4Words
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4WordsReverse,@function
Pack4WordsReverse:                      # @Pack4WordsReverse
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	notw	%ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	notw	%ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	notw	%ax
	movw	%ax, 4(%rdx)
	movw	6(%rsi), %ax
	notw	%ax
	movw	%ax, 6(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end105:
	.size	Pack4WordsReverse, .Lfunc_end105-Pack4WordsReverse
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4WordsSwap,@function
Pack4WordsSwap:                         # @Pack4WordsSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	6(%rsi), %ax
	movw	%ax, (%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 4(%rdx)
	movw	(%rsi), %ax
	movw	%ax, 6(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end106:
	.size	Pack4WordsSwap, .Lfunc_end106-Pack4WordsSwap
	.cfi_endproc

	.align	16, 0x90
	.type	Pack4WordsBigEndian,@function
Pack4WordsBigEndian:                    # @Pack4WordsBigEndian
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 4(%rdx)
	movw	6(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 6(%rdx)
	leaq	8(%rdx), %rax
	retq
.Lfunc_end107:
	.size	Pack4WordsBigEndian, .Lfunc_end107-Pack4WordsBigEndian
	.cfi_endproc

	.align	16, 0x90
	.type	Pack6Words,@function
Pack6Words:                             # @Pack6Words
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rsi), %ax
	movw	%ax, (%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 4(%rdx)
	movw	6(%rsi), %ax
	movw	%ax, 6(%rdx)
	movw	8(%rsi), %ax
	movw	%ax, 8(%rdx)
	movw	10(%rsi), %ax
	movw	%ax, 10(%rdx)
	leaq	12(%rdx), %rax
	retq
.Lfunc_end108:
	.size	Pack6Words, .Lfunc_end108-Pack6Words
	.cfi_endproc

	.align	16, 0x90
	.type	Pack6WordsSwap,@function
Pack6WordsSwap:                         # @Pack6WordsSwap
	.cfi_startproc
# BB#0:                                 # %entry
	movw	10(%rsi), %ax
	movw	%ax, (%rdx)
	movw	8(%rsi), %ax
	movw	%ax, 2(%rdx)
	movw	6(%rsi), %ax
	movw	%ax, 4(%rdx)
	movw	4(%rsi), %ax
	movw	%ax, 6(%rdx)
	movw	2(%rsi), %ax
	movw	%ax, 8(%rdx)
	movw	(%rsi), %ax
	movw	%ax, 10(%rdx)
	leaq	12(%rdx), %rax
	retq
.Lfunc_end109:
	.size	Pack6WordsSwap, .Lfunc_end109-Pack6WordsSwap
	.cfi_endproc

	.align	16, 0x90
	.type	PackPlanarWords,@function
PackPlanarWords:                        # @PackPlanarWords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp273:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp274:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp275:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp276:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp277:
	.cfi_def_cfa_offset 56
.Ltmp278:
	.cfi_offset %rbx, -56
.Ltmp279:
	.cfi_offset %r12, -48
.Ltmp280:
	.cfi_offset %r13, -40
.Ltmp281:
	.cfi_offset %r14, -32
.Ltmp282:
	.cfi_offset %r15, -24
.Ltmp283:
	.cfi_offset %rbp, -16
	movl	4(%rdi), %ebp
	movl	%ebp, %r9d
	shrl	$3, %r9d
	andl	$15, %r9d
	movl	%ebp, %r8d
	andl	$1024, %r8d             # imm = 0x400
	movq	%rdx, %rdi
	je	.LBB110_2
# BB#1:                                 # %if.then
	movl	%ebp, %eax
	shrl	$7, %eax
	andl	$7, %eax
	imull	%ecx, %eax
	leaq	(%rdx,%rax,2), %rdi
.LBB110_2:                              # %for.cond.preheader
	testl	%r9d, %r9d
	je	.LBB110_8
# BB#3:                                 # %for.body.lr.ph
	movl	%ebp, %r10d
	andl	$2048, %r10d            # imm = 0x800
	leal	-1(%r9), %r13d
	movl	%ebp, %r11d
	shll	$18, %r11d
	sarl	$31, %r11d
	movl	%ecx, %r14d
	leaq	(%r14,%r14), %r15
	xorl	%ecx, %ecx
	btl	$3, %ebp
	jae	.LBB110_5
# BB#4:                                 # %for.body.prol
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	movslq	%r13d, %rbp
	cmovneq	%rbp, %rcx
	movw	(%rsi,%rcx,2), %cx
	movw	%cx, %bp
	rolw	$8, %bp
	testl	%r10d, %r10d
	cmovew	%cx, %bp
	movl	%r11d, %ecx
	xorl	%ebp, %ecx
	movw	%cx, (%rdi)
	addq	%r15, %rdi
	movl	$1, %ecx
.LBB110_5:                              # %for.body.lr.ph.split
	cmpl	$1, %r9d
	je	.LBB110_8
# BB#6:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %r13d
	.align	16, 0x90
.LBB110_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %r12d
	leal	-1(%r13), %ebx
	testl	%r8d, %r8d
	movl	%ecx, %ebp
	cmovnel	%r13d, %ebp
	movslq	%ebp, %rbp
	movw	(%rsi,%rbp,2), %bp
	cmovel	%r12d, %ebx
	movw	%bp, %ax
	rolw	$8, %ax
	testl	%r10d, %r10d
	cmovew	%bp, %ax
	xorl	%r11d, %eax
	movw	%ax, (%rdi)
	movslq	%ebx, %rax
	movw	(%rsi,%rax,2), %ax
	movw	%ax, %bx
	rolw	$8, %bx
	testl	%r10d, %r10d
	cmovew	%ax, %bx
	xorl	%r11d, %ebx
	movw	%bx, (%rdi,%r14,2)
	addq	%r15, %rdi
	addq	%r15, %rdi
	addl	$-2, %r13d
	addl	$2, %ecx
	cmpl	%r9d, %ecx
	jne	.LBB110_7
.LBB110_8:                              # %for.end
	addq	$2, %rdx
	movq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end110:
	.size	PackPlanarWords, .Lfunc_end110-PackPlanarWords
	.cfi_endproc

	.align	16, 0x90
	.type	PackAnyWords,@function
PackAnyWords:                           # @PackAnyWords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp284:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp285:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp286:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp287:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp288:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp289:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp290:
	.cfi_def_cfa_offset 80
.Ltmp291:
	.cfi_offset %rbx, -56
.Ltmp292:
	.cfi_offset %r12, -48
.Ltmp293:
	.cfi_offset %r13, -40
.Ltmp294:
	.cfi_offset %r14, -32
.Ltmp295:
	.cfi_offset %r15, -24
.Ltmp296:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movl	4(%rdi), %eax
	movl	%eax, %r12d
	shrl	$3, %r12d
	movl	%eax, %r13d
	shrl	$10, %r13d
	andl	$1, %r13d
	movl	%eax, %r9d
	shrl	$7, %r9d
	andl	$7, %r9d
	movl	%eax, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	cmpl	%r8d, %r13d
	leaq	(%rbp,%r9,2), %r11
	leaq	(%r9,%r9), %rcx
	cmoveq	%rbp, %r11
	xorl	%ebx, %ebx
	andl	$15, %r12d
	je	.LBB111_7
# BB#1:                                 # %for.body.lr.ph
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$2048, %r14d            # imm = 0x800
	andl	(%rdi), %r14d
	leal	-1(%r12), %edi
	movl	%eax, %ebp
	shll	$18, %ebp
	sarl	$31, %ebp
	btl	$3, %eax
                                        # implicit-def: CX
	movq	%r11, %rax
	jae	.LBB111_3
# BB#2:                                 # %for.body.prol
	xorl	%eax, %eax
	testl	%r13d, %r13d
	movslq	%edi, %rcx
	cmovneq	%rcx, %rax
	movw	(%rsi,%rax,2), %ax
	movw	%ax, %bx
	rolw	$8, %bx
	testl	%r14d, %r14d
	cmovew	%ax, %bx
	movl	%ebp, %ecx
	xorl	%ebx, %ecx
	movw	%cx, (%r11)
	leaq	2(%r11), %rax
	movl	$1, %ebx
.LBB111_3:                              # %for.body.lr.ph.split
	leaq	2(%rdi,%rdi), %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	cmpl	$1, %r12d
	je	.LBB111_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%ebx, %edi
	.align	16, 0x90
.LBB111_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rbx), %ecx
	leal	-1(%rdi), %r10d
	testl	%r13d, %r13d
	movl	%edi, %r15d
	cmovel	%ebx, %r15d
	movslq	%r15d, %rdx
	movw	(%rsi,%rdx,2), %dx
	cmovel	%ecx, %r10d
	movw	%dx, %cx
	rolw	$8, %cx
	testl	%r14d, %r14d
	cmovew	%dx, %cx
	xorl	%ebp, %ecx
	movw	%cx, (%rax)
	movslq	%r10d, %rcx
	movw	(%rsi,%rcx,2), %dx
	movw	%dx, %cx
	rolw	$8, %cx
	testl	%r14d, %r14d
	cmovew	%dx, %cx
	xorl	%ebp, %ecx
	movw	%cx, 2(%rax)
	addl	$-2, %edi
	addl	$2, %ebx
	addq	$4, %rax
	cmpl	%r12d, %ebx
	jne	.LBB111_5
.LBB111_6:                              # %for.cond.for.end_crit_edge
	addq	(%rsp), %r11            # 8-byte Folded Reload
	movw	%cx, %bx
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB111_7:                              # %for.end
	leaq	(%rcx,%r11), %r15
	cmpl	%r8d, %r13d
	cmovneq	%r11, %r15
	testl	%r9d, %r9d
	jne	.LBB111_10
# BB#8:                                 # %for.end
	testl	%r8d, %r8d
	je	.LBB111_10
# BB#9:                                 # %if.then.43
	leaq	2(%rbp), %rdi
	decl	%r12d
	movslq	%r12d, %rdx
	addq	%rdx, %rdx
	movq	%rbp, %rsi
	callq	memmove
	movw	%bx, (%rbp)
.LBB111_10:                             # %if.end.48
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end111:
	.size	PackAnyWords, .Lfunc_end111-PackAnyWords
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI112_0:
	.long	1120403456              # float 100
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI112_1:
	.quad	4643176031446892544     # double 255
.LCPI112_2:
	.quad	-4584664420663164928    # double -128
	.text
	.align	16, 0x90
	.type	PackLabFloatFromFloat,@function
PackLabFloatFromFloat:                  # @PackLabFloatFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %eax
	testb	$16, %ah
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI112_0(%rip), %xmm0
	movss	%xmm0, (%rdx)
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI112_1(%rip), %xmm0
	addsd	.LCPI112_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jne	.LBB112_1
# BB#2:                                 # %if.else
	movss	%xmm0, 4(%rdx)
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI112_1(%rip), %xmm0
	addsd	.LCPI112_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rdx)
	shrl	$7, %eax
	andl	$7, %eax
	leaq	12(%rdx,%rax,4), %rdx
	movq	%rdx, %rax
	retq
.LBB112_1:                              # %if.then
	movl	%ecx, %eax
	movss	%xmm0, (%rdx,%rax,4)
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI112_1(%rip), %xmm0
	addsd	.LCPI112_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	addl	%ecx, %ecx
	movss	%xmm0, (%rdx,%rcx,4)
	addq	$4, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end112:
	.size	PackLabFloatFromFloat, .Lfunc_end112-PackLabFloatFromFloat
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI113_0:
	.long	1073741568              # float 1.99996948
	.text
	.align	16, 0x90
	.type	PackXYZFloatFromFloat,@function
PackXYZFloatFromFloat:                  # @PackXYZFloatFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %eax
	testb	$16, %ah
	movss	.LCPI113_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	mulss	4(%rsi), %xmm0
	jne	.LBB113_1
# BB#2:                                 # %if.else
	movss	%xmm0, 4(%rdx)
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI113_0(%rip), %xmm0
	movss	%xmm0, 8(%rdx)
	shrl	$7, %eax
	andl	$7, %eax
	leaq	12(%rdx,%rax,4), %rdx
	movq	%rdx, %rax
	retq
.LBB113_1:                              # %if.then
	movl	%ecx, %eax
	movss	%xmm0, (%rdx,%rax,4)
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI113_0(%rip), %xmm0
	addl	%ecx, %ecx
	movss	%xmm0, (%rdx,%rcx,4)
	addq	$4, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end113:
	.size	PackXYZFloatFromFloat, .Lfunc_end113-PackXYZFloatFromFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI114_0:
	.quad	4636737291354636288     # double 100
.LCPI114_1:
	.quad	4643176031446892544     # double 255
.LCPI114_2:
	.quad	-4584664420663164928    # double -128
	.text
	.align	16, 0x90
	.type	PackLabDoubleFromFloat,@function
PackLabDoubleFromFloat:                 # @PackLabDoubleFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %eax
	testb	$16, %ah
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI114_0(%rip), %xmm0
	movsd	%xmm0, (%rdx)
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	.LCPI114_1(%rip), %xmm1
	addsd	.LCPI114_2(%rip), %xmm1
	jne	.LBB114_1
# BB#2:                                 # %if.else
	movsd	%xmm1, 8(%rdx)
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI114_1(%rip), %xmm0
	addsd	.LCPI114_2(%rip), %xmm0
	movsd	%xmm0, 16(%rdx)
	shrl	$7, %eax
	andl	$7, %eax
	leaq	24(%rdx,%rax,8), %rdx
	movq	%rdx, %rax
	retq
.LBB114_1:                              # %if.then
	movl	%ecx, %eax
	movsd	%xmm1, (%rdx,%rax,8)
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI114_1(%rip), %xmm0
	addsd	.LCPI114_2(%rip), %xmm0
	addl	%ecx, %ecx
	movsd	%xmm0, (%rdx,%rcx,8)
	addq	$8, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end114:
	.size	PackLabDoubleFromFloat, .Lfunc_end114-PackLabDoubleFromFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI115_0:
	.quad	4611685880988434432     # double 1.999969482421875
	.text
	.align	16, 0x90
	.type	PackXYZDoubleFromFloat,@function
PackXYZDoubleFromFloat:                 # @PackXYZDoubleFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %eax
	testb	$16, %ah
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI115_0(%rip), %xmm2 # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, (%rdx)
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	8(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	jne	.LBB115_1
# BB#2:                                 # %if.else
	movsd	%xmm1, 8(%rdx)
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI115_0(%rip), %xmm0
	movsd	%xmm0, 16(%rdx)
	shrl	$7, %eax
	andl	$7, %eax
	leaq	24(%rdx,%rax,8), %rdx
	movq	%rdx, %rax
	retq
.LBB115_1:                              # %if.then
	movl	%ecx, %eax
	movsd	%xmm1, (%rdx,%rax,8)
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI115_0(%rip), %xmm0
	addl	%ecx, %ecx
	movsd	%xmm0, (%rdx,%rcx,8)
	addq	$8, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end115:
	.size	PackXYZDoubleFromFloat, .Lfunc_end115-PackXYZDoubleFromFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI116_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI116_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4636737291354636288     # double 1.000000e+02
	.text
	.align	16, 0x90
	.type	PackFloatsFromFloat,@function
PackFloatsFromFloat:                    # @PackFloatsFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp298:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp299:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp300:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp301:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp302:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp303:
	.cfi_def_cfa_offset 80
.Ltmp304:
	.cfi_offset %rbx, -56
.Ltmp305:
	.cfi_offset %r12, -48
.Ltmp306:
	.cfi_offset %r13, -40
.Ltmp307:
	.cfi_offset %r14, -32
.Ltmp308:
	.cfi_offset %r15, -24
.Ltmp309:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	4(%rdi), %r14d
	movl	%r14d, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%r14d, %r11d
	shrl	$10, %r11d
	andl	$1, %r11d
	movl	%r14d, %r9d
	shrl	$7, %r9d
	andl	$7, %r9d
	movl	%r14d, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	movl	%r14d, %eax
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB116_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI116_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB116_3
.LBB116_1:
	movsd	.LCPI116_0(%rip), %xmm0 # xmm0 = mem[0],zero
.LBB116_3:                              # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%r8d, %r11d
	movl	$0, %r10d
	cmovnel	%r9d, %r10d
	xorps	%xmm1, %xmm1
	testl	%ebx, %ebx
	je	.LBB116_11
# BB#4:                                 # %for.body.lr.ph
	movl	%r14d, %r12d
	andl	$8192, %r12d            # imm = 0x2000
	movl	%r14d, %r13d
	andl	$4096, %r13d            # imm = 0x1000
	movl	%r10d, %ebp
	imull	%ecx, %ebp
	movl	$-1, %edx
	.align	16, 0x90
.LBB116_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rdx), %eax
	testl	%r11d, %r11d
	cmovel	%edi, %eax
	testl	%r12d, %r12d
	cltq
	movss	(%rsi,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	je	.LBB116_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB116_5 Depth=1
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
.LBB116_7:                              # %for.body
                                        #   in Loop: Header=BB116_5 Depth=1
	testl	%r13d, %r13d
	cvtsd2ss	%xmm1, %xmm1
	jne	.LBB116_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB116_5 Depth=1
	leal	(%r10,%rdi), %eax
	cltq
	jmp	.LBB116_10
	.align	16, 0x90
.LBB116_8:                              # %if.then.26
                                        #   in Loop: Header=BB116_5 Depth=1
	movl	%ebp, %eax
.LBB116_10:                             # %if.end.35
                                        #   in Loop: Header=BB116_5 Depth=1
	movss	%xmm1, (%r15,%rax,4)
	incl	%edi
	decl	%edx
	addl	%ecx, %ebp
	cmpl	%edi, %ebx
	jne	.LBB116_5
.LBB116_11:                             # %for.end
	cmpl	%r8d, %r11d
	movl	%r9d, %eax
	leaq	(%r15,%rax,4), %rbp
	cmovneq	%r15, %rbp
	testl	%r9d, %r9d
	jne	.LBB116_14
# BB#12:                                # %for.end
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB116_14
# BB#13:                                # %if.then.44
	leaq	4(%r15), %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%r15, %rsi
	callq	memmove
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %r14d
.LBB116_14:                             # %if.end.51
	movl	%r14d, %eax
	testb	$16, %ah
	movl	%ebx, %eax
	leaq	(%rbp,%rax,4), %rcx
	leaq	4(%rbp), %rax
	cmoveq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end116:
	.size	PackFloatsFromFloat, .Lfunc_end116-PackFloatsFromFloat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI117_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI117_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4636737291354636288     # double 1.000000e+02
	.text
	.align	16, 0x90
	.type	PackDoublesFromFloat,@function
PackDoublesFromFloat:                   # @PackDoublesFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp311:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp312:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp313:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp314:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp315:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp316:
	.cfi_def_cfa_offset 80
.Ltmp317:
	.cfi_offset %rbx, -56
.Ltmp318:
	.cfi_offset %r12, -48
.Ltmp319:
	.cfi_offset %r13, -40
.Ltmp320:
	.cfi_offset %r14, -32
.Ltmp321:
	.cfi_offset %r15, -24
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	4(%rdi), %r14d
	movl	%r14d, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%r14d, %r11d
	shrl	$10, %r11d
	andl	$1, %r11d
	movl	%r14d, %r9d
	shrl	$7, %r9d
	andl	$7, %r9d
	movl	%r14d, %r8d
	shrl	$14, %r8d
	andl	$1, %r8d
	movl	%r14d, %eax
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %edx
	cmpl	$24, %edx
	ja	.LBB117_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movsd	.LCPI117_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB117_3
.LBB117_1:
	movsd	.LCPI117_0(%rip), %xmm0 # xmm0 = mem[0],zero
.LBB117_3:                              # %IsInkSpace.exit
	xorl	%edi, %edi
	cmpl	%r8d, %r11d
	movl	$0, %r10d
	cmovnel	%r9d, %r10d
	xorpd	%xmm2, %xmm2
	testl	%ebx, %ebx
	je	.LBB117_11
# BB#4:                                 # %for.body.lr.ph
	movl	%r14d, %r12d
	andl	$8192, %r12d            # imm = 0x2000
	movl	%r14d, %r13d
	andl	$4096, %r13d            # imm = 0x1000
	movl	%r10d, %ebp
	imull	%ecx, %ebp
	movl	$-1, %edx
	.align	16, 0x90
.LBB117_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rdx), %eax
	testl	%r11d, %r11d
	cmovel	%edi, %eax
	testl	%r12d, %r12d
	cltq
	movss	(%rsi,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	je	.LBB117_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB117_5 Depth=1
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
.LBB117_7:                              # %for.body
                                        #   in Loop: Header=BB117_5 Depth=1
	testl	%r13d, %r13d
	jne	.LBB117_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB117_5 Depth=1
	leal	(%r10,%rdi), %eax
	cltq
	jmp	.LBB117_10
	.align	16, 0x90
.LBB117_8:                              # %if.then.26
                                        #   in Loop: Header=BB117_5 Depth=1
	movl	%ebp, %eax
.LBB117_10:                             # %if.end.33
                                        #   in Loop: Header=BB117_5 Depth=1
	movsd	%xmm2, (%r15,%rax,8)
	incl	%edi
	decl	%edx
	addl	%ecx, %ebp
	cmpl	%edi, %ebx
	jne	.LBB117_5
.LBB117_11:                             # %for.end
	cmpl	%r8d, %r11d
	movl	%r9d, %eax
	leaq	(%r15,%rax,8), %rbp
	cmovneq	%r15, %rbp
	testl	%r9d, %r9d
	jne	.LBB117_14
# BB#12:                                # %for.end
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	testl	%r8d, %r8d
	je	.LBB117_14
# BB#13:                                # %if.then.42
	leaq	8(%r15), %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%r15, %rsi
	callq	memmove
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %r14d
.LBB117_14:                             # %if.end.48
	movl	%r14d, %eax
	testb	$16, %ah
	movl	%ebx, %eax
	leaq	(%rbp,%rax,8), %rcx
	leaq	8(%rbp), %rax
	cmoveq	%rcx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end117:
	.size	PackDoublesFromFloat, .Lfunc_end117-PackDoublesFromFloat
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI118_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
.LCPI118_1:
	.long	1065353216              # float 1.000000e+00
	.long	1120403456              # float 1.000000e+02
	.text
	.align	16, 0x90
	.type	PackHalfFromFloat,@function
PackHalfFromFloat:                      # @PackHalfFromFloat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp323:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp324:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp325:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp326:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp327:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp328:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp329:
	.cfi_def_cfa_offset 128
.Ltmp330:
	.cfi_offset %rbx, -56
.Ltmp331:
	.cfi_offset %r12, -48
.Ltmp332:
	.cfi_offset %r13, -40
.Ltmp333:
	.cfi_offset %r14, -32
.Ltmp334:
	.cfi_offset %r15, -24
.Ltmp335:
	.cfi_offset %rbp, -16
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	4(%rdi), %r14d
	movl	%r14d, %ebx
	shrl	$3, %ebx
	andl	$15, %ebx
	movl	%r14d, %eax
	shrl	$10, %eax
	andl	$1, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	%r14d, %edx
	shrl	$7, %edx
	andl	$7, %edx
	movl	%r14d, %esi
	shrl	$14, %esi
	andl	$1, %esi
	movl	%r14d, %eax
	shrl	$16, %eax
	andl	$31, %eax
	leal	-5(%rax), %ecx
	cmpl	$24, %ecx
	ja	.LBB118_1
# BB#2:                                 # %switch.lookup.i
	addl	$-7, %eax
	cmpl	$11, %eax
	seta	%al
	movzbl	%al, %eax
	movss	.LCPI118_1(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB118_3
.LBB118_1:
	movss	.LCPI118_0(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
.LBB118_3:                              # %IsInkSpace.exit
	movss	%xmm0, 36(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	%esi, 68(%rsp)          # 4-byte Folded Reload
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movl	$0, %eax
	cmovnel	%edx, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	xorps	%xmm1, %xmm1
	movss	%xmm1, 48(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB118_11
# BB#4:                                 # %for.body.lr.ph
	movl	%r14d, %ebp
	andl	$8192, %ebp             # imm = 0x2000
	andl	$4096, %r14d            # imm = 0x1000
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	imull	52(%rsp), %r13d         # 4-byte Folded Reload
	movl	$-1, %r12d
	.align	16, 0x90
.LBB118_5:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%r12), %eax
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	cmovel	%r15d, %eax
	testl	%ebp, %ebp
	cltq
	movq	40(%rsp), %rcx          # 8-byte Reload
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	je	.LBB118_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB118_5 Depth=1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
.LBB118_7:                              # %for.body
                                        #   in Loop: Header=BB118_5 Depth=1
	movss	%xmm1, 48(%rsp)         # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	_cmsFloat2Half
	testl	%r14d, %r14d
	jne	.LBB118_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB118_5 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%r15), %ecx
	movslq	%ecx, %rcx
	jmp	.LBB118_10
	.align	16, 0x90
.LBB118_8:                              # %if.then.26
                                        #   in Loop: Header=BB118_5 Depth=1
	movl	%r13d, %ecx
.LBB118_10:                             # %if.end.35
                                        #   in Loop: Header=BB118_5 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	movw	%ax, (%rdx,%rcx,2)
	movss	36(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	incl	%r15d
	decl	%r12d
	addl	52(%rsp), %r13d         # 4-byte Folded Reload
	cmpl	%r15d, %ebx
	jne	.LBB118_5
.LBB118_11:                             # %for.end
	movl	8(%rsp), %esi           # 4-byte Reload
	cmpl	%esi, 68(%rsp)          # 4-byte Folded Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,2), %rbp
	cmovneq	%rcx, %rbp
	movq	%rcx, %rax
	testl	%edx, %edx
	jne	.LBB118_14
# BB#12:                                # %for.end
	testl	%esi, %esi
	je	.LBB118_14
# BB#13:                                # %if.then.43
	movq	%rax, %r14
	leaq	2(%r14), %rdi
	leal	-1(%rbx), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rdx
	movq	%r14, %rsi
	callq	memmove
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	_cmsFloat2Half
	movw	%ax, (%r14)
.LBB118_14:                             # %if.end.50
	movq	16(%rsp), %rax          # 8-byte Reload
	testb	$16, 5(%rax)
	movl	%ebx, %eax
	leaq	(%rbp,%rax,2), %rcx
	leaq	2(%rbp), %rax
	cmoveq	%rcx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end118:
	.size	PackHalfFromFloat, .Lfunc_end118-PackHalfFromFloat
	.cfi_endproc

	.type	_cmsFormattersPluginChunk,@object # @_cmsFormattersPluginChunk
	.bss
	.globl	_cmsFormattersPluginChunk
	.align	8
_cmsFormattersPluginChunk:
	.zero	8
	.size	_cmsFormattersPluginChunk, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(ctx != ((void*)0))"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmspack.c"
	.size	.L.str.1, 22

	.type	.L__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk,@object # @__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk
.L__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk:
	.asciz	"void _cmsAllocFormattersPluginChunk(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__._cmsAllocFormattersPluginChunk, 100

	.type	_cmsAllocFormattersPluginChunk.FormattersPluginChunk,@object # @_cmsAllocFormattersPluginChunk.FormattersPluginChunk
	.local	_cmsAllocFormattersPluginChunk.FormattersPluginChunk
	.comm	_cmsAllocFormattersPluginChunk.FormattersPluginChunk,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(head != ((void*)0))"
	.size	.L.str.2, 21

	.type	.L__PRETTY_FUNCTION__.DupFormatterFactoryList,@object # @__PRETTY_FUNCTION__.DupFormatterFactoryList
.L__PRETTY_FUNCTION__.DupFormatterFactoryList:
	.asciz	"void DupFormatterFactoryList(struct _cmsContext_struct *, const struct _cmsContext_struct *)"
	.size	.L__PRETTY_FUNCTION__.DupFormatterFactoryList, 93

	.type	InputFormatters16,@object # @InputFormatters16
	.section	.rodata,"a",@progbits
	.align	16
InputFormatters16:
	.long	4849688                 # 0x4a0018
	.long	4992                    # 0x1380
	.quad	UnrollLabDoubleTo16
	.long	4784152                 # 0x490018
	.long	4992                    # 0x1380
	.quad	UnrollXYZDoubleTo16
	.long	4849692                 # 0x4a001c
	.long	4992                    # 0x1380
	.quad	UnrollLabFloatTo16
	.long	4784156                 # 0x49001c
	.long	4992                    # 0x1380
	.quad	UnrollXYZFloatTo16
	.long	4390920                 # 0x430008
	.long	0                       # 0x0
	.quad	UnrollDouble1Chan
	.long	4194304                 # 0x400000
	.long	2062328                 # 0x1f77f8
	.quad	UnrollDoubleTo16
	.long	4194308                 # 0x400004
	.long	2062328                 # 0x1f77f8
	.quad	UnrollFloatTo16
	.long	4194306                 # 0x400002
	.long	2062328                 # 0x1f77f8
	.quad	UnrollHalfTo16
	.long	9                       # 0x9
	.long	2031616                 # 0x1f0000
	.quad	Unroll1Byte
	.long	137                     # 0x89
	.long	2031616                 # 0x1f0000
	.quad	Unroll1ByteSkip1
	.long	265                     # 0x109
	.long	2031616                 # 0x1f0000
	.quad	Unroll1ByteSkip2
	.long	8201                    # 0x2009
	.long	2031616                 # 0x1f0000
	.quad	Unroll1ByteReversed
	.long	1048593                 # 0x100011
	.long	0                       # 0x0
	.quad	Unroll2Bytes
	.long	1966105                 # 0x1e0019
	.long	0                       # 0x0
	.quad	UnrollLabV2_8
	.long	1982617                 # 0x1e4099
	.long	0                       # 0x0
	.quad	UnrollALabV2_8
	.long	1966106                 # 0x1e001a
	.long	0                       # 0x0
	.quad	UnrollLabV2_16
	.long	25                      # 0x19
	.long	2031616                 # 0x1f0000
	.quad	Unroll3Bytes
	.long	1049                    # 0x419
	.long	2031616                 # 0x1f0000
	.quad	Unroll3BytesSwap
	.long	1177                    # 0x499
	.long	2031616                 # 0x1f0000
	.quad	Unroll3BytesSkip1Swap
	.long	16537                   # 0x4099
	.long	2031616                 # 0x1f0000
	.quad	Unroll3BytesSkip1SwapFirst
	.long	17561                   # 0x4499
	.long	2031616                 # 0x1f0000
	.quad	Unroll3BytesSkip1SwapSwapFirst
	.long	33                      # 0x21
	.long	2031616                 # 0x1f0000
	.quad	Unroll4Bytes
	.long	8225                    # 0x2021
	.long	2031616                 # 0x1f0000
	.quad	Unroll4BytesReverse
	.long	16417                   # 0x4021
	.long	2031616                 # 0x1f0000
	.quad	Unroll4BytesSwapFirst
	.long	1057                    # 0x421
	.long	2031616                 # 0x1f0000
	.quad	Unroll4BytesSwap
	.long	17441                   # 0x4421
	.long	2031616                 # 0x1f0000
	.quad	Unroll4BytesSwapSwapFirst
	.long	4097                    # 0x1001
	.long	2058232                 # 0x1f67f8
	.quad	UnrollPlanarBytes
	.long	1                       # 0x1
	.long	2058232                 # 0x1f67f8
	.quad	UnrollChunkyBytes
	.long	10                      # 0xa
	.long	2031616                 # 0x1f0000
	.quad	Unroll1Word
	.long	8202                    # 0x200a
	.long	2031616                 # 0x1f0000
	.quad	Unroll1WordReversed
	.long	394                     # 0x18a
	.long	2031616                 # 0x1f0000
	.quad	Unroll1WordSkip3
	.long	18                      # 0x12
	.long	2031616                 # 0x1f0000
	.quad	Unroll2Words
	.long	26                      # 0x1a
	.long	2031616                 # 0x1f0000
	.quad	Unroll3Words
	.long	34                      # 0x22
	.long	2031616                 # 0x1f0000
	.quad	Unroll4Words
	.long	1050                    # 0x41a
	.long	2031616                 # 0x1f0000
	.quad	Unroll3WordsSwap
	.long	16538                   # 0x409a
	.long	2031616                 # 0x1f0000
	.quad	Unroll3WordsSkip1SwapFirst
	.long	1178                    # 0x49a
	.long	2031616                 # 0x1f0000
	.quad	Unroll3WordsSkip1Swap
	.long	8226                    # 0x2022
	.long	2031616                 # 0x1f0000
	.quad	Unroll4WordsReverse
	.long	16418                   # 0x4022
	.long	2031616                 # 0x1f0000
	.quad	Unroll4WordsSwapFirst
	.long	1058                    # 0x422
	.long	2031616                 # 0x1f0000
	.quad	Unroll4WordsSwap
	.long	17442                   # 0x4422
	.long	2031616                 # 0x1f0000
	.quad	Unroll4WordsSwapSwapFirst
	.long	4098                    # 0x1002
	.long	2043896                 # 0x1f2ff8
	.quad	UnrollPlanarWords
	.long	2                       # 0x2
	.long	2060280                 # 0x1f6ff8
	.quad	UnrollAnyWords
	.size	InputFormatters16, 688

	.type	InputFormattersFloat,@object # @InputFormattersFloat
	.align	16
InputFormattersFloat:
	.long	4849688                 # 0x4a0018
	.long	4992                    # 0x1380
	.quad	UnrollLabDoubleToFloat
	.long	4849692                 # 0x4a001c
	.long	4992                    # 0x1380
	.quad	UnrollLabFloatToFloat
	.long	4784152                 # 0x490018
	.long	4992                    # 0x1380
	.quad	UnrollXYZDoubleToFloat
	.long	4784156                 # 0x49001c
	.long	4992                    # 0x1380
	.quad	UnrollXYZFloatToFloat
	.long	4194308                 # 0x400004
	.long	2054136                 # 0x1f57f8
	.quad	UnrollFloatsToFloat
	.long	4194304                 # 0x400000
	.long	2054136                 # 0x1f57f8
	.quad	UnrollDoublesToFloat
	.long	4194306                 # 0x400002
	.long	2054136                 # 0x1f57f8
	.quad	UnrollHalfToFloat
	.size	InputFormattersFloat, 112

	.type	OutputFormatters16,@object # @OutputFormatters16
	.align	16
OutputFormatters16:
	.long	4849688                 # 0x4a0018
	.long	4992                    # 0x1380
	.quad	PackLabDoubleFrom16
	.long	4784152                 # 0x490018
	.long	4992                    # 0x1380
	.quad	PackXYZDoubleFrom16
	.long	4849692                 # 0x4a001c
	.long	4992                    # 0x1380
	.quad	PackLabFloatFrom16
	.long	4784156                 # 0x49001c
	.long	4992                    # 0x1380
	.quad	PackXYZFloatFrom16
	.long	4194304                 # 0x400000
	.long	2062328                 # 0x1f77f8
	.quad	PackDoubleFrom16
	.long	4194308                 # 0x400004
	.long	2062328                 # 0x1f77f8
	.quad	PackFloatFrom16
	.long	4194306                 # 0x400002
	.long	2062328                 # 0x1f77f8
	.quad	PackHalfFrom16
	.long	9                       # 0x9
	.long	2031616                 # 0x1f0000
	.quad	Pack1Byte
	.long	137                     # 0x89
	.long	2031616                 # 0x1f0000
	.quad	Pack1ByteSkip1
	.long	16521                   # 0x4089
	.long	2031616                 # 0x1f0000
	.quad	Pack1ByteSkip1SwapFirst
	.long	8201                    # 0x2009
	.long	2031616                 # 0x1f0000
	.quad	Pack1ByteReversed
	.long	1966105                 # 0x1e0019
	.long	0                       # 0x0
	.quad	PackLabV2_8
	.long	1982617                 # 0x1e4099
	.long	0                       # 0x0
	.quad	PackALabV2_8
	.long	1966106                 # 0x1e001a
	.long	0                       # 0x0
	.quad	PackLabV2_16
	.long	2097177                 # 0x200019
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesOptimized
	.long	2097305                 # 0x200099
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1Optimized
	.long	2113689                 # 0x204099
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1SwapFirstOptimized
	.long	2114713                 # 0x204499
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1SwapSwapFirstOptimized
	.long	2098329                 # 0x200499
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1SwapOptimized
	.long	2098201                 # 0x200419
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesSwapOptimized
	.long	25                      # 0x19
	.long	2031616                 # 0x1f0000
	.quad	Pack3Bytes
	.long	153                     # 0x99
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1
	.long	16537                   # 0x4099
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1SwapFirst
	.long	17561                   # 0x4499
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1SwapSwapFirst
	.long	1177                    # 0x499
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesAndSkip1Swap
	.long	1049                    # 0x419
	.long	2031616                 # 0x1f0000
	.quad	Pack3BytesSwap
	.long	49                      # 0x31
	.long	2031616                 # 0x1f0000
	.quad	Pack6Bytes
	.long	1073                    # 0x431
	.long	2031616                 # 0x1f0000
	.quad	Pack6BytesSwap
	.long	33                      # 0x21
	.long	2031616                 # 0x1f0000
	.quad	Pack4Bytes
	.long	8225                    # 0x2021
	.long	2031616                 # 0x1f0000
	.quad	Pack4BytesReverse
	.long	16417                   # 0x4021
	.long	2031616                 # 0x1f0000
	.quad	Pack4BytesSwapFirst
	.long	1057                    # 0x421
	.long	2031616                 # 0x1f0000
	.quad	Pack4BytesSwap
	.long	17441                   # 0x4421
	.long	2031616                 # 0x1f0000
	.quad	Pack4BytesSwapSwapFirst
	.long	1                       # 0x1
	.long	2058232                 # 0x1f67f8
	.quad	PackAnyBytes
	.long	4097                    # 0x1001
	.long	2058232                 # 0x1f67f8
	.quad	PackPlanarBytes
	.long	10                      # 0xa
	.long	2031616                 # 0x1f0000
	.quad	Pack1Word
	.long	138                     # 0x8a
	.long	2031616                 # 0x1f0000
	.quad	Pack1WordSkip1
	.long	16522                   # 0x408a
	.long	2031616                 # 0x1f0000
	.quad	Pack1WordSkip1SwapFirst
	.long	8202                    # 0x200a
	.long	2031616                 # 0x1f0000
	.quad	Pack1WordReversed
	.long	2058                    # 0x80a
	.long	2031616                 # 0x1f0000
	.quad	Pack1WordBigEndian
	.long	26                      # 0x1a
	.long	2031616                 # 0x1f0000
	.quad	Pack3Words
	.long	1050                    # 0x41a
	.long	2031616                 # 0x1f0000
	.quad	Pack3WordsSwap
	.long	2074                    # 0x81a
	.long	2031616                 # 0x1f0000
	.quad	Pack3WordsBigEndian
	.long	154                     # 0x9a
	.long	2031616                 # 0x1f0000
	.quad	Pack3WordsAndSkip1
	.long	1178                    # 0x49a
	.long	2031616                 # 0x1f0000
	.quad	Pack3WordsAndSkip1Swap
	.long	16538                   # 0x409a
	.long	2031616                 # 0x1f0000
	.quad	Pack3WordsAndSkip1SwapFirst
	.long	17562                   # 0x449a
	.long	2031616                 # 0x1f0000
	.quad	Pack3WordsAndSkip1SwapSwapFirst
	.long	34                      # 0x22
	.long	2031616                 # 0x1f0000
	.quad	Pack4Words
	.long	8226                    # 0x2022
	.long	2031616                 # 0x1f0000
	.quad	Pack4WordsReverse
	.long	1058                    # 0x422
	.long	2031616                 # 0x1f0000
	.quad	Pack4WordsSwap
	.long	2082                    # 0x822
	.long	2031616                 # 0x1f0000
	.quad	Pack4WordsBigEndian
	.long	50                      # 0x32
	.long	2031616                 # 0x1f0000
	.quad	Pack6Words
	.long	1074                    # 0x432
	.long	2031616                 # 0x1f0000
	.quad	Pack6WordsSwap
	.long	4098                    # 0x1002
	.long	2043896                 # 0x1f2ff8
	.quad	PackPlanarWords
	.long	2                       # 0x2
	.long	2060280                 # 0x1f6ff8
	.quad	PackAnyWords
	.size	OutputFormatters16, 880

	.type	OutputFormattersFloat,@object # @OutputFormattersFloat
	.align	16
OutputFormattersFloat:
	.long	4849692                 # 0x4a001c
	.long	4992                    # 0x1380
	.quad	PackLabFloatFromFloat
	.long	4784156                 # 0x49001c
	.long	4992                    # 0x1380
	.quad	PackXYZFloatFromFloat
	.long	4849688                 # 0x4a0018
	.long	4992                    # 0x1380
	.quad	PackLabDoubleFromFloat
	.long	4784152                 # 0x490018
	.long	4992                    # 0x1380
	.quad	PackXYZDoubleFromFloat
	.long	4194308                 # 0x400004
	.long	2062328                 # 0x1f77f8
	.quad	PackFloatsFromFloat
	.long	4194304                 # 0x400000
	.long	2062328                 # 0x1f77f8
	.quad	PackDoublesFromFloat
	.long	4194306                 # 0x400002
	.long	2058232                 # 0x1f67f8
	.quad	PackHalfFromFloat
	.size	OutputFormattersFloat, 112


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
