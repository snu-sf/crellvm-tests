	.text
	.file	"cmsio0.bc"
	.globl	cmsOpenIOhandlerFromNULL
	.align	16, 0x90
	.type	cmsOpenIOhandlerFromNULL,@function
cmsOpenIOhandlerFromNULL:               # @cmsOpenIOhandlerFromNULL
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
	movq	%rdi, %r14
	movl	$320, %esi              # imm = 0x140
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.end
	movl	$4, %esi
	movq	%r14, %rdi
	callq	_cmsMallocZero
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:                                 # %if.end.4
	movl	$0, (%rax)
	movq	%r14, 8(%rbx)
	movq	%rax, (%rbx)
	movl	$0, 16(%rbx)
	movl	$0, 20(%rbx)
	movb	$0, 24(%rbx)
	movq	$NULLRead, 280(%rbx)
	movq	$NULLSeek, 288(%rbx)
	movl	$NULLTell, %eax
	movd	%rax, %xmm0
	movl	$NULLClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%rbx)
	movq	$NULLWrite, 312(%rbx)
	movq	%rbx, %rax
	jmp	.LBB0_4
.LBB0_3:                                # %if.then.6
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	cmsOpenIOhandlerFromNULL, .Lfunc_end0-cmsOpenIOhandlerFromNULL
	.cfi_endproc

	.align	16, 0x90
	.type	NULLRead,@function
NULLRead:                               # @NULLRead
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	imull	%ecx, %edx
	addl	%edx, (%rax)
	movl	%ecx, %eax
	retq
.Lfunc_end1:
	.size	NULLRead, .Lfunc_end1-NULLRead
	.cfi_endproc

	.align	16, 0x90
	.type	NULLSeek,@function
NULLSeek:                               # @NULLSeek
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	%esi, (%rax)
	movl	$1, %eax
	retq
.Lfunc_end2:
	.size	NULLSeek, .Lfunc_end2-NULLSeek
	.cfi_endproc

	.align	16, 0x90
	.type	NULLClose,@function
NULLClose:                              # @NULLClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	callq	_cmsFree
	movq	8(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	NULLClose, .Lfunc_end3-NULLClose
	.cfi_endproc

	.align	16, 0x90
	.type	NULLTell,@function
NULLTell:                               # @NULLTell
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	(%rax), %eax
	retq
.Lfunc_end4:
	.size	NULLTell, .Lfunc_end4-NULLTell
	.cfi_endproc

	.align	16, 0x90
	.type	NULLWrite,@function
NULLWrite:                              # @NULLWrite
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	addl	(%rax), %esi
	movl	%esi, (%rax)
	cmpl	16(%rdi), %esi
	jbe	.LBB5_2
# BB#1:                                 # %if.then
	movl	%esi, 16(%rdi)
.LBB5_2:                                # %if.end
	movl	$1, %eax
	retq
.Lfunc_end5:
	.size	NULLWrite, .Lfunc_end5-NULLWrite
	.cfi_endproc

	.globl	cmsOpenIOhandlerFromMem
	.align	16, 0x90
	.type	cmsOpenIOhandlerFromMem,@function
cmsOpenIOhandlerFromMem:                # @cmsOpenIOhandlerFromMem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 64
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB6_18
# BB#1:                                 # %cond.end
	movl	$320, %esi              # imm = 0x140
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r13
	xorl	%ebp, %ebp
	testq	%r13, %r13
	je	.LBB6_17
# BB#2:                                 # %if.end
	movsbl	(%rbx), %ecx
	cmpl	$119, %ecx
	jne	.LBB6_3
# BB#12:                                # %sw.bb.20
	movl	$24, %esi
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_7
# BB#13:                                # %if.end.25
	movq	%r12, (%rbp)
	movl	$0, 16(%rbp)
	movl	%r15d, 8(%rbp)
	movl	$0, 12(%rbp)
	movl	$0, 20(%r13)
.LBB6_16:                               # %sw.epilog
	movq	%r14, 8(%r13)
	movq	%rbp, (%r13)
	movl	$0, 16(%r13)
	movb	$0, 24(%r13)
	movq	$MemoryRead, 280(%r13)
	movq	$MemorySeek, 288(%r13)
	movl	$MemoryTell, %eax
	movd	%rax, %xmm0
	movl	$MemoryClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%r13)
	movq	$MemoryWrite, 312(%r13)
	movq	%r13, %rbp
	jmp	.LBB6_17
.LBB6_3:                                # %if.end
	cmpl	$114, %ecx
	jne	.LBB6_14
# BB#4:                                 # %sw.bb
	movl	$24, %esi
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_7
# BB#5:                                 # %if.end.6
	testq	%r12, %r12
	je	.LBB6_6
# BB#10:                                # %if.end.10
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_cmsMalloc
	movq	%rax, (%rbp)
	testq	%rax, %rax
	je	.LBB6_11
# BB#15:                                # %if.end.16
	movl	%r15d, %edx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	memmove
	movl	$1, 16(%rbp)
	movl	%r15d, 8(%rbp)
	movl	$0, 12(%rbp)
	movl	%r15d, 20(%r13)
	jmp	.LBB6_16
.LBB6_14:                               # %sw.default
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
	jmp	.LBB6_17
.LBB6_6:                                # %if.then.9
	movl	$5, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
.LBB6_7:                                # %Error
	testq	%rbp, %rbp
	je	.LBB6_9
# BB#8:                                 # %if.then.33
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
.LBB6_9:                                # %if.then.36
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	xorl	%ebp, %ebp
.LBB6_17:                               # %cleanup
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_11:                               # %if.then.15
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	_cmsFree
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_cmsFree
	xorl	%ebp, %ebp
	movl	$5, %esi
	movl	$.L.str.3, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r15d, %ecx
	callq	cmsSignalError
	jmp	.LBB6_17
.LBB6_18:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$243, %edx
	movl	$.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	cmsOpenIOhandlerFromMem, .Lfunc_end6-cmsOpenIOhandlerFromMem
	.cfi_endproc

	.align	16, 0x90
	.type	MemoryRead,@function
MemoryRead:                             # @MemoryRead
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %ebx
	movq	(%rdi), %rbp
	imull	%r14d, %ebx
	movl	8(%rbp), %ecx
	movl	12(%rbp), %eax
	leal	(%rax,%rbx), %edx
	cmpl	%ecx, %edx
	jbe	.LBB7_2
# BB#1:                                 # %if.then
	subl	%eax, %ecx
	movq	8(%rdi), %rdi
	xorl	%r14d, %r14d
	movl	$5, %esi
	movl	$.L.str.22, %edx
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	cmsSignalError
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	addq	(%rbp), %rax
	movl	%ebx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memmove
	addl	%ebx, 12(%rbp)
.LBB7_3:                                # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	MemoryRead, .Lfunc_end7-MemoryRead
	.cfi_endproc

	.align	16, 0x90
	.type	MemorySeek,@function
MemorySeek:                             # @MemorySeek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	cmpl	%esi, 8(%rax)
	jae	.LBB8_2
# BB#1:                                 # %if.then
	movq	8(%rdi), %rdi
	xorl	%ebx, %ebx
	movl	$6, %esi
	movl	$.L.str.23, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movl	%esi, 12(%rax)
	movl	$1, %ebx
.LBB8_3:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	MemorySeek, .Lfunc_end8-MemorySeek
	.cfi_endproc

	.align	16, 0x90
	.type	MemoryClose,@function
MemoryClose:                            # @MemoryClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -24
.Ltmp32:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	cmpl	$0, 16(%r14)
	je	.LBB9_3
# BB#1:                                 # %if.then
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB9_3
# BB#2:                                 # %if.then.2
	movq	8(%rbx), %rdi
	callq	_cmsFree
.LBB9_3:                                # %if.end.4
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_cmsFree
	movq	8(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	MemoryClose, .Lfunc_end9-MemoryClose
	.cfi_endproc

	.align	16, 0x90
	.type	MemoryTell,@function
MemoryTell:                             # @MemoryTell
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB10_2
# BB#1:                                 # %if.end
	movl	12(%rcx), %eax
.LBB10_2:                               # %cleanup
	retq
.Lfunc_end10:
	.size	MemoryTell, .Lfunc_end10-MemoryTell
	.cfi_endproc

	.align	16, 0x90
	.type	MemoryWrite,@function
MemoryWrite:                            # @MemoryWrite
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	(%r14), %rbp
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	je	.LBB11_4
# BB#1:                                 # %if.end
	movl	8(%rbp), %eax
	movl	12(%rbp), %edi
	movl	%eax, %ecx
	subl	%edi, %ecx
	leal	(%rdi,%rbx), %esi
	cmpl	%eax, %esi
	cmoval	%ecx, %ebx
	movl	$1, %r15d
	testl	%ebx, %ebx
	je	.LBB11_4
# BB#2:                                 # %if.end.8
	addq	(%rbp), %rdi
	movl	%ebx, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memmove
	addl	12(%rbp), %ebx
	movl	%ebx, 12(%rbp)
	cmpl	16(%r14), %ebx
	jbe	.LBB11_4
# BB#3:                                 # %if.then.15
	movl	%ebx, 16(%r14)
.LBB11_4:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	MemoryWrite, .Lfunc_end11-MemoryWrite
	.cfi_endproc

	.globl	cmsOpenIOhandlerFromFile
	.align	16, 0x90
	.type	cmsOpenIOhandlerFromFile,@function
cmsOpenIOhandlerFromFile:               # @cmsOpenIOhandlerFromFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r13
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
	.cfi_offset %r13, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r15, %r15
	je	.LBB12_15
# BB#1:                                 # %cond.end
	testq	%r13, %r13
	je	.LBB12_16
# BB#2:                                 # %cond.end.4
	movl	$320, %esi              # imm = 0x140
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB12_14
# BB#3:                                 # %if.end
	movsbl	(%r13), %eax
	cmpl	$119, %eax
	jne	.LBB12_4
# BB#8:                                 # %sw.bb.13
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	callq	fopen
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB12_9
# BB#10:                                # %if.end.18
	movl	$0, 20(%rbx)
	jmp	.LBB12_13
.LBB12_4:                               # %if.end
	cmpl	$114, %eax
	jne	.LBB12_11
# BB#5:                                 # %sw.bb
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	fopen
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB12_6
# BB#12:                                # %if.end.10
	movq	%r12, %rdi
	callq	cmsfilelength
	movl	%eax, 20(%rbx)
.LBB12_13:                              # %sw.epilog
	movq	%r14, 8(%rbx)
	movq	%r12, (%rbx)
	movl	$0, 16(%rbx)
	movq	%rbx, %rdi
	addq	$24, %rdi
	movl	$255, %edx
	movq	%r15, %rsi
	callq	strncpy
	movb	$0, 279(%rbx)
	movq	$FileRead, 280(%rbx)
	movq	$FileSeek, 288(%rbx)
	movl	$FileTell, %eax
	movd	%rax, %xmm0
	movl	$FileClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%rbx)
	movq	$FileWrite, 312(%rbx)
	movq	%rbx, %r12
	jmp	.LBB12_14
.LBB12_11:                              # %sw.default
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movsbl	(%r13), %ecx
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.4, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
	jmp	.LBB12_14
.LBB12_9:                               # %if.then.17
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.9, %edx
	jmp	.LBB12_7
.LBB12_6:                               # %if.then.9
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	xorl	%r12d, %r12d
	movl	$1, %esi
	movl	$.L.str.7, %edx
.LBB12_7:                               # %cleanup
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	cmsSignalError
.LBB12_14:                              # %cleanup
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB12_15:                              # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$372, %edx              # imm = 0x174
	movl	$.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile, %ecx
	callq	__assert_fail
.LBB12_16:                              # %cond.false.3
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$373, %edx              # imm = 0x175
	movl	$.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile, %ecx
	callq	__assert_fail
.Lfunc_end12:
	.size	cmsOpenIOhandlerFromFile, .Lfunc_end12-cmsOpenIOhandlerFromFile
	.cfi_endproc

	.align	16, 0x90
	.type	FileRead,@function
FileRead:                               # @FileRead
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
	movl	%ecx, %ebx
	movl	%edx, %ebp
	movq	%rdi, %r14
	movl	%ebp, %eax
	movl	%ebx, %edx
	movq	(%r14), %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	fread
	movq	%rax, %rcx
	cmpl	%ebx, %ecx
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	8(%r14), %rdi
	imull	%ebp, %ecx
	imull	%ebp, %ebx
	movl	$1, %esi
	movl	$.L.str.24, %edx
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	cmsSignalError
	xorl	%ebx, %ebx
.LBB13_2:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	FileRead, .Lfunc_end13-FileRead
	.cfi_endproc

	.align	16, 0x90
	.type	FileSeek,@function
FileSeek:                               # @FileSeek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	8(%rbx), %rdi
	movl	$1, %esi
	movl	$.L.str.25, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	xorl	%eax, %eax
.LBB14_2:                               # %return
	popq	%rbx
	retq
.Lfunc_end14:
	.size	FileSeek, .Lfunc_end14-FileSeek
	.cfi_endproc

	.align	16, 0x90
	.type	FileClose,@function
FileClose:                              # @FileClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	fclose
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB15_2
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
	movl	$1, %eax
.LBB15_2:                               # %return
	popq	%rbx
	retq
.Lfunc_end15:
	.size	FileClose, .Lfunc_end15-FileClose
	.cfi_endproc

	.align	16, 0x90
	.type	FileTell,@function
FileTell:                               # @FileTell
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	ftell                   # TAILCALL
.Lfunc_end16:
	.size	FileTell, .Lfunc_end16-FileTell
	.cfi_endproc

	.align	16, 0x90
	.type	FileWrite,@function
FileWrite:                              # @FileWrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 16
	movq	%rdx, %r8
	movl	$1, %eax
	testl	%esi, %esi
	je	.LBB17_2
# BB#1:                                 # %if.end
	addl	%esi, 16(%rdi)
	movl	%esi, %esi
	movq	(%rdi), %rcx
	movl	$1, %edx
	movq	%r8, %rdi
	callq	fwrite
	cmpq	$1, %rax
	sete	%al
	movzbl	%al, %eax
.LBB17_2:                               # %return
	popq	%rdx
	retq
.Lfunc_end17:
	.size	FileWrite, .Lfunc_end17-FileWrite
	.cfi_endproc

	.globl	cmsOpenIOhandlerFromStream
	.align	16, 0x90
	.type	cmsOpenIOhandlerFromStream,@function
cmsOpenIOhandlerFromStream:             # @cmsOpenIOhandlerFromStream
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$320, %esi              # imm = 0x140
	callq	_cmsMallocZero
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB18_2
# BB#1:                                 # %if.end
	movq	%r15, 8(%rbx)
	movq	%r14, (%rbx)
	movl	$0, 16(%rbx)
	movq	%r14, %rdi
	callq	cmsfilelength
	movl	%eax, 20(%rbx)
	movb	$0, 24(%rbx)
	movq	$FileRead, 280(%rbx)
	movq	$FileSeek, 288(%rbx)
	movl	$FileTell, %eax
	movd	%rax, %xmm0
	movl	$FileClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%rbx)
	movq	$FileWrite, 312(%rbx)
	movq	%rbx, %rax
.LBB18_2:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	cmsOpenIOhandlerFromStream, .Lfunc_end18-cmsOpenIOhandlerFromStream
	.cfi_endproc

	.globl	cmsCloseIOhandler
	.align	16, 0x90
	.type	cmsCloseIOhandler,@function
cmsCloseIOhandler:                      # @cmsCloseIOhandler
	.cfi_startproc
# BB#0:                                 # %entry
	jmpq	*296(%rdi)              # TAILCALL
.Lfunc_end19:
	.size	cmsCloseIOhandler, .Lfunc_end19-cmsCloseIOhandler
	.cfi_endproc

	.globl	cmsCreateProfilePlaceholder
	.align	16, 0x90
	.type	cmsCreateProfilePlaceholder,@function
cmsCreateProfilePlaceholder:            # @cmsCreateProfilePlaceholder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 48
.Ltmp73:
	.cfi_offset %rbx, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	time
	movq	%rax, 8(%rsp)
	movl	$3752, %esi             # imm = 0xEA8
	movq	%r14, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB20_2
# BB#1:                                 # %if.end
	movq	%r14, 8(%rbx)
	movl	$0, 132(%rbx)
	movl	$34603008, 72(%rbx)     # imm = 0x2100000
	movq	%rbx, %r15
	addq	$16, %r15
	leaq	8(%rsp), %rdi
	callq	gmtime
	movl	$56, %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	memmove
	movq	%r14, %rdi
	callq	_cmsCreateMutex
	movq	%rax, 3744(%rbx)
	movq	%rbx, %r15
.LBB20_2:                               # %cleanup
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	cmsCreateProfilePlaceholder, .Lfunc_end20-cmsCreateProfilePlaceholder
	.cfi_endproc

	.globl	cmsGetProfileContextID
	.align	16, 0x90
	.type	cmsGetProfileContextID,@function
cmsGetProfileContextID:                 # @cmsGetProfileContextID
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB21_2
# BB#1:                                 # %if.end
	movq	8(%rdi), %rax
.LBB21_2:                               # %cleanup
	retq
.Lfunc_end21:
	.size	cmsGetProfileContextID, .Lfunc_end21-cmsGetProfileContextID
	.cfi_endproc

	.globl	cmsGetTagCount
	.align	16, 0x90
	.type	cmsGetTagCount,@function
cmsGetTagCount:                         # @cmsGetTagCount
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	.LBB22_2
# BB#1:                                 # %if.end
	movl	132(%rdi), %eax
.LBB22_2:                               # %cleanup
	retq
.Lfunc_end22:
	.size	cmsGetTagCount, .Lfunc_end22-cmsGetTagCount
	.cfi_endproc

	.globl	cmsGetTagSignature
	.align	16, 0x90
	.type	cmsGetTagSignature,@function
cmsGetTagSignature:                     # @cmsGetTagSignature
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$99, %esi
	ja	.LBB23_3
# BB#1:                                 # %entry
	cmpl	%esi, 132(%rdi)
	jb	.LBB23_3
# BB#2:                                 # %if.end.3
	movl	%esi, %eax
	movl	136(%rdi,%rax,4), %eax
.LBB23_3:                               # %cleanup
	retq
.Lfunc_end23:
	.size	cmsGetTagSignature, .Lfunc_end23-cmsGetTagSignature
	.cfi_endproc

	.globl	_cmsSearchTag
	.align	16, 0x90
	.type	_cmsSearchTag,@function
_cmsSearchTag:                          # @_cmsSearchTag
	.cfi_startproc
# BB#0:                                 # %entry
	movl	132(%rdi), %r9d
	movl	$-1, %r8d
.LBB24_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
	testl	%r9d, %r9d
	movl	$0, %ecx
	je	.LBB24_2
	.align	16, 0x90
.LBB24_3:                               # %for.body.i
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, 136(%rdi,%rcx,4)
	je	.LBB24_6
# BB#4:                                 # %for.inc.i
                                        #   in Loop: Header=BB24_3 Depth=2
	incq	%rcx
	cmpl	%r9d, %ecx
	jb	.LBB24_3
	jmp	.LBB24_5
	.align	16, 0x90
.LBB24_6:                               # %SearchOneTag.exit
                                        #   in Loop: Header=BB24_1 Depth=1
	testl	%ecx, %ecx
	movl	%ecx, %eax
	cmovsl	%r8d, %eax
	js	.LBB24_9
# BB#7:                                 # %SearchOneTag.exit
                                        #   in Loop: Header=BB24_1 Depth=1
	testl	%edx, %edx
	je	.LBB24_9
# BB#8:                                 # %if.end.2
                                        #   in Loop: Header=BB24_1 Depth=1
	movslq	%ecx, %rax
	movl	536(%rdi,%rax,4), %esi
	testl	%esi, %esi
	movl	%ecx, %eax
	jne	.LBB24_1
.LBB24_9:                               # %cleanup
	retq
.LBB24_5:
	movl	$-1, %eax
	retq
.LBB24_2:
	movl	$-1, %eax
	retq
.Lfunc_end24:
	.size	_cmsSearchTag, .Lfunc_end24-_cmsSearchTag
	.cfi_endproc

	.globl	cmsIsTag
	.align	16, 0x90
	.type	cmsIsTag,@function
cmsIsTag:                               # @cmsIsTag
	.cfi_startproc
# BB#0:                                 # %entry
	movl	132(%rdi), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB25_5
# BB#1:                                 # %for.body.i.i.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB25_2:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, 136(%rdi,%rcx,4)
	je	.LBB25_4
# BB#3:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB25_2 Depth=1
	incq	%rcx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jb	.LBB25_2
	jmp	.LBB25_5
.LBB25_4:                               # %SearchOneTag.exit.i
	movl	%ecx, %edx
	shrl	$31, %edx
	xorl	$1, %edx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovnsl	%edx, %eax
.LBB25_5:                               # %_cmsSearchTag.exit
	retq
.Lfunc_end25:
	.size	cmsIsTag, .Lfunc_end25-cmsIsTag
	.cfi_endproc

	.globl	_cmsReadHeader
	.align	16, 0x90
	.type	_cmsReadHeader,@function
_cmsReadHeader:                         # @_cmsReadHeader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 208
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	leaq	8(%rsp), %rsi
	movl	$128, %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	callq	*280(%r14)
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	jne	.LBB26_21
# BB#1:                                 # %if.end
	movl	44(%rsp), %edi
	callq	_cmsAdjustEndianess32
	cmpl	$1633907568, %eax       # imm = 0x61637370
	jne	.LBB26_2
# BB#3:                                 # %if.end.4
	movl	20(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 76(%rbx)
	movl	24(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 80(%rbx)
	movl	28(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 84(%rbx)
	movl	72(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 88(%rbx)
	movl	52(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 92(%rbx)
	movl	56(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 96(%rbx)
	movl	60(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 100(%rbx)
	movl	88(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 112(%rbx)
	leaq	104(%rbx), %rdi
	leaq	64(%rsp), %rsi
	callq	_cmsAdjustEndianess64
	movl	16(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 72(%rbx)
	movl	8(%rsp), %edi
	callq	_cmsAdjustEndianess32
	movq	(%rbx), %rcx
	movl	20(%rcx), %r12d
	cmpl	%r12d, %eax
	cmovbl	%eax, %r12d
	leaq	32(%rsp), %rdi
	leaq	16(%rbx), %rsi
	callq	_cmsDecodeDateTimeNumber
	leaq	116(%rbx), %rdi
	leaq	92(%rsp), %rsi
	movl	$16, %edx
	callq	memmove
	leaq	4(%rsp), %rsi
	movq	%r14, %rdi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB26_21
# BB#4:                                 # %if.end.31
	movl	4(%rsp), %ecx
	cmpl	$101, %ecx
	jb	.LBB26_6
# BB#5:                                 # %if.then.33
	movq	8(%rbx), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB26_21
.LBB26_2:                               # %if.then.3
	movq	8(%rbx), %rdi
	xorl	%ebp, %ebp
	movl	$11, %esi
	movl	$.L.str.10, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
.LBB26_21:                              # %cleanup
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_6:                               # %if.end.35
	movl	$0, 132(%rbx)
	testl	%ecx, %ecx
	je	.LBB26_20
# BB#7:
	xorl	%r15d, %r15d
	leaq	136(%rsp), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB26_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_14 Depth 2
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB26_21
# BB#9:                                 # %if.end.41
                                        #   in Loop: Header=BB26_8 Depth=1
	movq	%r14, %rdi
	leaq	140(%rsp), %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB26_21
# BB#10:                                # %if.end.45
                                        #   in Loop: Header=BB26_8 Depth=1
	movq	%r14, %rdi
	leaq	144(%rsp), %rsi
	callq	_cmsReadUInt32Number
	testl	%eax, %eax
	je	.LBB26_21
# BB#11:                                # %if.end.50
                                        #   in Loop: Header=BB26_8 Depth=1
	movl	140(%rsp), %eax
	movl	144(%rsp), %ecx
	movl	%ecx, %esi
	addl	%eax, %esi
	setb	%dl
	cmpl	%r12d, %esi
	ja	.LBB26_19
# BB#12:                                # %if.end.50
                                        #   in Loop: Header=BB26_8 Depth=1
	testb	%dl, %dl
	jne	.LBB26_19
# BB#13:                                # %if.end.60
                                        #   in Loop: Header=BB26_8 Depth=1
	movl	136(%rsp), %edx
	movl	132(%rbx), %esi
	movl	%edx, 136(%rbx,%rsi,4)
	movl	132(%rbx), %edx
	movl	%eax, 1336(%rbx,%rdx,4)
	movl	132(%rbx), %edx
	movl	%ecx, 936(%rbx,%rdx,4)
	movl	132(%rbx), %esi
	xorl	%edx, %edx
	testl	%esi, %esi
	movl	$0, %edi
	je	.LBB26_18
	.align	16, 0x90
.LBB26_14:                              # %for.body.74
                                        #   Parent Loop BB26_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %edx
	cmpl	%eax, 1336(%rbx,%rdx,4)
	jne	.LBB26_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB26_14 Depth=2
	cmpl	%ecx, 936(%rbx,%rdx,4)
	jne	.LBB26_17
# BB#16:                                # %if.then.85
                                        #   in Loop: Header=BB26_14 Depth=2
	movl	136(%rbx,%rdx,4), %edi
	movl	%esi, %esi
	movl	%edi, 536(%rbx,%rsi,4)
	movl	132(%rbx), %esi
.LBB26_17:                              # %for.inc
                                        #   in Loop: Header=BB26_14 Depth=2
	incl	%edx
	cmpl	%esi, %edx
	movl	%esi, %edi
	jb	.LBB26_14
.LBB26_18:                              # %for.end
                                        #   in Loop: Header=BB26_8 Depth=1
	incl	%edi
	movl	%edi, 132(%rbx)
.LBB26_19:                              # %for.inc.95
                                        #   in Loop: Header=BB26_8 Depth=1
	incl	%r15d
	cmpl	4(%rsp), %r15d
	jb	.LBB26_8
.LBB26_20:
	movl	$1, %ebp
	jmp	.LBB26_21
.Lfunc_end26:
	.size	_cmsReadHeader, .Lfunc_end26-_cmsReadHeader
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	_cmsWriteHeader
	.align	16, 0x90
	.type	_cmsWriteHeader,@function
_cmsWriteHeader:                        # @_cmsWriteHeader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 40
	subq	$152, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 192
.Ltmp94:
	.cfi_offset %rbx, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	%esi, %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 24(%rsp)
	movl	$1818455411, %edi       # imm = 0x6C636D73
	callq	_cmsAdjustEndianess32
	movl	%eax, 28(%rsp)
	movl	72(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 32(%rsp)
	movl	76(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 36(%rsp)
	movl	80(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 40(%rsp)
	movl	84(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 44(%rsp)
	leaq	48(%rsp), %rdi
	leaq	16(%rbx), %rsi
	callq	_cmsEncodeDateTimeNumber
	movl	$1633907568, %edi       # imm = 0x61637370
	callq	_cmsAdjustEndianess32
	movl	%eax, 60(%rsp)
	movl	$1095782476, %edi       # imm = 0x4150504C
	callq	_cmsAdjustEndianess32
	movl	%eax, 64(%rsp)
	movl	92(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 68(%rsp)
	movl	96(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 72(%rsp)
	movl	100(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 76(%rsp)
	leaq	80(%rsp), %rdi
	leaq	104(%rbx), %rsi
	callq	_cmsAdjustEndianess64
	movl	88(%rbx), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 88(%rsp)
	callq	cmsD50_XYZ
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	_cmsDoubleTo15Fixed16
	movl	%eax, %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 92(%rsp)
	callq	cmsD50_XYZ
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	_cmsDoubleTo15Fixed16
	movl	%eax, %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 96(%rsp)
	callq	cmsD50_XYZ
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	_cmsDoubleTo15Fixed16
	movl	%eax, %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 100(%rsp)
	movl	$1818455411, %edi       # imm = 0x6C636D73
	callq	_cmsAdjustEndianess32
	movl	%eax, 104(%rsp)
	leaq	124(%rsp), %rdi
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$28, %edx
	callq	memset
	leaq	108(%rsp), %rdi
	leaq	116(%rbx), %rsi
	movl	$16, %edx
	callq	memmove
	movq	(%rbx), %rdi
	leaq	24(%rsp), %rdx
	movl	$128, %esi
	callq	*312(%rdi)
	testl	%eax, %eax
	je	.LBB27_15
# BB#1:                                 # %for.cond.preheader
	movl	132(%rbx), %eax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	movl	$0, %esi
	je	.LBB27_7
# BB#2:                                 # %for.body.lr.ph
	movl	%eax, %edx
	andl	$7, %edx
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	cmpl	%edx, %eax
	pxor	%xmm1, %xmm1
	je	.LBB27_5
# BB#3:                                 # %vector.body.preheader
	movq	%rax, %rcx
	subq	%rdx, %rcx
	leaq	152(%rbx), %rdx
	movl	%eax, %edi
	andl	$7, %edi
	movq	%rax, %rsi
	subq	%rdi, %rsi
	pxor	%xmm2, %xmm2
	movdqa	.LCPI27_0(%rip), %xmm3  # xmm3 = [1,1,1,1]
	xorpd	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB27_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rdx), %xmm4
	movdqu	(%rdx), %xmm5
	pcmpeqd	%xmm2, %xmm4
	pandn	%xmm3, %xmm4
	pcmpeqd	%xmm2, %xmm5
	pandn	%xmm3, %xmm5
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	addq	$32, %rdx
	addq	$-8, %rsi
	jne	.LBB27_4
.LBB27_5:                               # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %esi
	cmpq	%rcx, %rax
	je	.LBB27_7
	.align	16, 0x90
.LBB27_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, 136(%rbx,%rcx,4)
	sbbl	$-1, %esi
	incq	%rcx
	cmpq	%rax, %rcx
	jb	.LBB27_6
.LBB27_7:                               # %for.end
	movq	(%rbx), %rdi
	callq	_cmsWriteUInt32Number
	testl	%eax, %eax
	je	.LBB27_15
# BB#8:                                 # %for.cond.44.preheader
	movl	132(%rbx), %eax
	testl	%eax, %eax
	je	.LBB27_14
# BB#9:                                 # %for.body.47.lr.ph
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB27_10:                              # %for.body.47
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movl	136(%rbx,%rbp,4), %edi
	testl	%edi, %edi
	je	.LBB27_13
# BB#11:                                # %if.end.53
                                        #   in Loop: Header=BB27_10 Depth=1
	callq	_cmsAdjustEndianess32
	movl	%eax, 8(%rsp)
	movl	1336(%rbx,%rbp,4), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 12(%rsp)
	movl	936(%rbx,%rbp,4), %edi
	callq	_cmsAdjustEndianess32
	movl	%eax, 16(%rsp)
	movq	(%rbx), %rdi
	movl	$12, %esi
	movq	%r14, %rdx
	callq	*312(%rdi)
	testl	%eax, %eax
	je	.LBB27_15
# BB#12:                                # %if.end.53.for.inc.72_crit_edge
                                        #   in Loop: Header=BB27_10 Depth=1
	movl	132(%rbx), %eax
.LBB27_13:                              # %for.inc.72
                                        #   in Loop: Header=BB27_10 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB27_10
.LBB27_14:
	movl	$1, %r15d
.LBB27_15:                              # %cleanup
	movl	%r15d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_cmsWriteHeader, .Lfunc_end27-_cmsWriteHeader
	.cfi_endproc

	.globl	cmsGetHeaderRenderingIntent
	.align	16, 0x90
	.type	cmsGetHeaderRenderingIntent,@function
cmsGetHeaderRenderingIntent:            # @cmsGetHeaderRenderingIntent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	88(%rdi), %eax
	retq
.Lfunc_end28:
	.size	cmsGetHeaderRenderingIntent, .Lfunc_end28-cmsGetHeaderRenderingIntent
	.cfi_endproc

	.globl	cmsSetHeaderRenderingIntent
	.align	16, 0x90
	.type	cmsSetHeaderRenderingIntent,@function
cmsSetHeaderRenderingIntent:            # @cmsSetHeaderRenderingIntent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 88(%rdi)
	retq
.Lfunc_end29:
	.size	cmsSetHeaderRenderingIntent, .Lfunc_end29-cmsSetHeaderRenderingIntent
	.cfi_endproc

	.globl	cmsGetHeaderFlags
	.align	16, 0x90
	.type	cmsGetHeaderFlags,@function
cmsGetHeaderFlags:                      # @cmsGetHeaderFlags
	.cfi_startproc
# BB#0:                                 # %entry
	movl	92(%rdi), %eax
	retq
.Lfunc_end30:
	.size	cmsGetHeaderFlags, .Lfunc_end30-cmsGetHeaderFlags
	.cfi_endproc

	.globl	cmsSetHeaderFlags
	.align	16, 0x90
	.type	cmsSetHeaderFlags,@function
cmsSetHeaderFlags:                      # @cmsSetHeaderFlags
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 92(%rdi)
	retq
.Lfunc_end31:
	.size	cmsSetHeaderFlags, .Lfunc_end31-cmsSetHeaderFlags
	.cfi_endproc

	.globl	cmsGetHeaderManufacturer
	.align	16, 0x90
	.type	cmsGetHeaderManufacturer,@function
cmsGetHeaderManufacturer:               # @cmsGetHeaderManufacturer
	.cfi_startproc
# BB#0:                                 # %entry
	movl	96(%rdi), %eax
	retq
.Lfunc_end32:
	.size	cmsGetHeaderManufacturer, .Lfunc_end32-cmsGetHeaderManufacturer
	.cfi_endproc

	.globl	cmsSetHeaderManufacturer
	.align	16, 0x90
	.type	cmsSetHeaderManufacturer,@function
cmsSetHeaderManufacturer:               # @cmsSetHeaderManufacturer
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 96(%rdi)
	retq
.Lfunc_end33:
	.size	cmsSetHeaderManufacturer, .Lfunc_end33-cmsSetHeaderManufacturer
	.cfi_endproc

	.globl	cmsGetHeaderCreator
	.align	16, 0x90
	.type	cmsGetHeaderCreator,@function
cmsGetHeaderCreator:                    # @cmsGetHeaderCreator
	.cfi_startproc
# BB#0:                                 # %entry
	movl	112(%rdi), %eax
	retq
.Lfunc_end34:
	.size	cmsGetHeaderCreator, .Lfunc_end34-cmsGetHeaderCreator
	.cfi_endproc

	.globl	cmsGetHeaderModel
	.align	16, 0x90
	.type	cmsGetHeaderModel,@function
cmsGetHeaderModel:                      # @cmsGetHeaderModel
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rdi), %eax
	retq
.Lfunc_end35:
	.size	cmsGetHeaderModel, .Lfunc_end35-cmsGetHeaderModel
	.cfi_endproc

	.globl	cmsSetHeaderModel
	.align	16, 0x90
	.type	cmsSetHeaderModel,@function
cmsSetHeaderModel:                      # @cmsSetHeaderModel
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 100(%rdi)
	retq
.Lfunc_end36:
	.size	cmsSetHeaderModel, .Lfunc_end36-cmsSetHeaderModel
	.cfi_endproc

	.globl	cmsGetHeaderAttributes
	.align	16, 0x90
	.type	cmsGetHeaderAttributes,@function
cmsGetHeaderAttributes:                 # @cmsGetHeaderAttributes
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	104(%rdi), %rax
	movl	$8, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memmove                 # TAILCALL
.Lfunc_end37:
	.size	cmsGetHeaderAttributes, .Lfunc_end37-cmsGetHeaderAttributes
	.cfi_endproc

	.globl	cmsSetHeaderAttributes
	.align	16, 0x90
	.type	cmsSetHeaderAttributes,@function
cmsSetHeaderAttributes:                 # @cmsSetHeaderAttributes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp98:
	.cfi_def_cfa_offset 16
	movq	%rsi, (%rsp)
	addq	$104, %rdi
	leaq	(%rsp), %rsi
	movl	$8, %edx
	callq	memmove
	popq	%rax
	retq
.Lfunc_end38:
	.size	cmsSetHeaderAttributes, .Lfunc_end38-cmsSetHeaderAttributes
	.cfi_endproc

	.globl	cmsGetHeaderProfileID
	.align	16, 0x90
	.type	cmsGetHeaderProfileID,@function
cmsGetHeaderProfileID:                  # @cmsGetHeaderProfileID
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	116(%rdi), %rax
	movl	$16, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memmove                 # TAILCALL
.Lfunc_end39:
	.size	cmsGetHeaderProfileID, .Lfunc_end39-cmsGetHeaderProfileID
	.cfi_endproc

	.globl	cmsSetHeaderProfileID
	.align	16, 0x90
	.type	cmsSetHeaderProfileID,@function
cmsSetHeaderProfileID:                  # @cmsSetHeaderProfileID
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$116, %rdi
	movl	$16, %edx
	jmp	memmove                 # TAILCALL
.Lfunc_end40:
	.size	cmsSetHeaderProfileID, .Lfunc_end40-cmsSetHeaderProfileID
	.cfi_endproc

	.globl	cmsGetHeaderCreationDateTime
	.align	16, 0x90
	.type	cmsGetHeaderCreationDateTime,@function
cmsGetHeaderCreationDateTime:           # @cmsGetHeaderCreationDateTime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp99:
	.cfi_def_cfa_offset 16
	leaq	16(%rdi), %rax
	movl	$56, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memmove
	movl	$1, %eax
	popq	%rdx
	retq
.Lfunc_end41:
	.size	cmsGetHeaderCreationDateTime, .Lfunc_end41-cmsGetHeaderCreationDateTime
	.cfi_endproc

	.globl	cmsGetPCS
	.align	16, 0x90
	.type	cmsGetPCS,@function
cmsGetPCS:                              # @cmsGetPCS
	.cfi_startproc
# BB#0:                                 # %entry
	movl	84(%rdi), %eax
	retq
.Lfunc_end42:
	.size	cmsGetPCS, .Lfunc_end42-cmsGetPCS
	.cfi_endproc

	.globl	cmsSetPCS
	.align	16, 0x90
	.type	cmsSetPCS,@function
cmsSetPCS:                              # @cmsSetPCS
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 84(%rdi)
	retq
.Lfunc_end43:
	.size	cmsSetPCS, .Lfunc_end43-cmsSetPCS
	.cfi_endproc

	.globl	cmsGetColorSpace
	.align	16, 0x90
	.type	cmsGetColorSpace,@function
cmsGetColorSpace:                       # @cmsGetColorSpace
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rdi), %eax
	retq
.Lfunc_end44:
	.size	cmsGetColorSpace, .Lfunc_end44-cmsGetColorSpace
	.cfi_endproc

	.globl	cmsSetColorSpace
	.align	16, 0x90
	.type	cmsSetColorSpace,@function
cmsSetColorSpace:                       # @cmsSetColorSpace
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 80(%rdi)
	retq
.Lfunc_end45:
	.size	cmsSetColorSpace, .Lfunc_end45-cmsSetColorSpace
	.cfi_endproc

	.globl	cmsGetDeviceClass
	.align	16, 0x90
	.type	cmsGetDeviceClass,@function
cmsGetDeviceClass:                      # @cmsGetDeviceClass
	.cfi_startproc
# BB#0:                                 # %entry
	movl	76(%rdi), %eax
	retq
.Lfunc_end46:
	.size	cmsGetDeviceClass, .Lfunc_end46-cmsGetDeviceClass
	.cfi_endproc

	.globl	cmsSetDeviceClass
	.align	16, 0x90
	.type	cmsSetDeviceClass,@function
cmsSetDeviceClass:                      # @cmsSetDeviceClass
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 76(%rdi)
	retq
.Lfunc_end47:
	.size	cmsSetDeviceClass, .Lfunc_end47-cmsSetDeviceClass
	.cfi_endproc

	.globl	cmsGetEncodedICCversion
	.align	16, 0x90
	.type	cmsGetEncodedICCversion,@function
cmsGetEncodedICCversion:                # @cmsGetEncodedICCversion
	.cfi_startproc
# BB#0:                                 # %entry
	movl	72(%rdi), %eax
	retq
.Lfunc_end48:
	.size	cmsGetEncodedICCversion, .Lfunc_end48-cmsGetEncodedICCversion
	.cfi_endproc

	.globl	cmsSetEncodedICCversion
	.align	16, 0x90
	.type	cmsSetEncodedICCversion,@function
cmsSetEncodedICCversion:                # @cmsSetEncodedICCversion
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 72(%rdi)
	retq
.Lfunc_end49:
	.size	cmsSetEncodedICCversion, .Lfunc_end49-cmsSetEncodedICCversion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_0:
	.quad	4636737291354636288     # double 100
.LCPI50_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	cmsSetProfileVersion
	.align	16, 0x90
	.type	cmsSetProfileVersion,@function
cmsSetProfileVersion:                   # @cmsSetProfileVersion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 128
.Ltmp103:
	.cfi_offset %rbx, -24
.Ltmp104:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	mulsd	.LCPI50_0(%rip), %xmm0
	addsd	.LCPI50_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %rdx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB50_7
# BB#1:
	movl	$3435973837, %r8d       # imm = 0xCCCCCCCD
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB50_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	movl	%esi, %edx
	imulq	%r8, %rdx
	shrq	$35, %rdx
	leal	(%rdx,%rdx), %ebx
	leal	(%rbx,%rbx,4), %ebx
	movl	%esi, %edi
	subl	%ebx, %edi
	movb	%dil, (%rsp,%rcx)
	incq	%rcx
	cmpl	$10, %esi
	jb	.LBB50_3
# BB#8:                                 # %for.body.i
                                        #   in Loop: Header=BB50_2 Depth=1
	cmpq	$100, %rcx
	jl	.LBB50_2
.LBB50_3:                               # %for.cond.2.preheader.i
	testl	%ecx, %ecx
	jle	.LBB50_7
# BB#4:                                 # %for.body.5.lr.ph.i
	movslq	%ecx, %rcx
	incq	%rcx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB50_5:                               # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	shll	$4, %edx
	movsbl	-2(%rsp,%rcx), %eax
	addl	%edx, %eax
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB50_5
# BB#6:                                 # %BaseToBase.exit.loopexit
	shll	$16, %eax
.LBB50_7:                               # %BaseToBase.exit
	movl	%eax, 72(%r14)
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end50:
	.size	cmsSetProfileVersion, .Lfunc_end50-cmsSetProfileVersion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	cmsGetProfileVersion
	.align	16, 0x90
	.type	cmsGetProfileVersion,@function
cmsGetProfileVersion:                   # @cmsGetProfileVersion
	.cfi_startproc
# BB#0:                                 # %entry
	movl	72(%rdi), %ecx
	xorl	%eax, %eax
	shrl	$16, %ecx
	xorpd	%xmm0, %xmm0
	je	.LBB51_6
	.align	16, 0x90
.LBB51_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, %dl
	andb	$15, %dl
	movb	%dl, -104(%rsp,%rax)
	incq	%rax
	cmpq	$99, %rax
	jg	.LBB51_2
# BB#7:                                 # %for.body.i
                                        #   in Loop: Header=BB51_1 Depth=1
	shrl	$4, %ecx
	jne	.LBB51_1
.LBB51_2:                               # %for.cond.2.preheader.i
	testl	%eax, %eax
	jle	.LBB51_6
# BB#3:                                 # %for.body.5.lr.ph.i
	cltq
	incq	%rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB51_4:                               # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rcx,%rcx,4), %ecx
	movsbl	-106(%rsp,%rax), %edx
	leal	(%rdx,%rcx,2), %ecx
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB51_4
# BB#5:                                 # %BaseToBase.exit.loopexit
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
.LBB51_6:                               # %BaseToBase.exit
	divsd	.LCPI51_0(%rip), %xmm0
	retq
.Lfunc_end51:
	.size	cmsGetProfileVersion, .Lfunc_end51-cmsGetProfileVersion
	.cfi_endproc

	.globl	cmsOpenProfileFromIOhandlerTHR
	.align	16, 0x90
	.type	cmsOpenProfileFromIOhandlerTHR,@function
cmsOpenProfileFromIOhandlerTHR:         # @cmsOpenProfileFromIOhandlerTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp107:
	.cfi_def_cfa_offset 32
.Ltmp108:
	.cfi_offset %rbx, -24
.Ltmp109:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB52_4
# BB#1:                                 # %if.end
	movq	%r14, (%rbx)
	movq	%rbx, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB52_3
# BB#2:
	movq	%rbx, %rax
	jmp	.LBB52_4
.LBB52_3:                               # %Error
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB52_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end52:
	.size	cmsOpenProfileFromIOhandlerTHR, .Lfunc_end52-cmsOpenProfileFromIOhandlerTHR
	.cfi_endproc

	.globl	cmsCloseProfile
	.align	16, 0x90
	.type	cmsCloseProfile,@function
cmsCloseProfile:                        # @cmsCloseProfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 112
.Ltmp116:
	.cfi_offset %rbx, -48
.Ltmp117:
	.cfi_offset %r12, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB53_16
# BB#1:                                 # %if.end
	movl	$1, %r12d
	cmpl	$0, 3736(%rbx)
	je	.LBB53_6
# BB#2:                                 # %cmsGetProfileContextID.exit.i
	movl	$0, 3736(%rbx)
	movq	(%rbx), %r14
	movq	8(%rbx), %rdi
	addq	$24, %r14
	movl	$.L.str.14, %edx
	movq	%r14, %rsi
	callq	cmsOpenIOhandlerFromFile
	movq	%rax, %r15
	xorl	%r12d, %r12d
	testq	%r15, %r15
	je	.LBB53_5
# BB#3:                                 # %if.end.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cmsSaveProfileToIOhandler
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
	movq	%r15, %rdi
	callq	*296(%r15)
	movl	%eax, %r12d
	andl	%ebp, %r12d
	jne	.LBB53_5
# BB#4:                                 # %if.then.7.i
	movq	%r14, %rdi
	callq	remove
	xorl	%r12d, %r12d
.LBB53_5:                               # %cmsSaveProfileToFile.exit
	andl	$1, %r12d
.LBB53_6:                               # %if.end.4
	cmpl	$0, 132(%rbx)
	je	.LBB53_13
# BB#7:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB53_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movq	2136(%rbx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.LBB53_12
# BB#9:                                 # %if.then.6
                                        #   in Loop: Header=BB53_8 Depth=1
	movq	2936(%rbx,%rbp,8), %rax
	testq	%rax, %rax
	je	.LBB53_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB53_8 Depth=1
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movl	72(%rbx), %eax
	movl	%eax, 48(%rsp)
	movq	%r14, %rdi
	callq	*32(%rsp)
	jmp	.LBB53_12
	.align	16, 0x90
.LBB53_11:                              # %if.else
                                        #   in Loop: Header=BB53_8 Depth=1
	movq	8(%rbx), %rdi
	callq	_cmsFree
.LBB53_12:                              # %for.inc
                                        #   in Loop: Header=BB53_8 Depth=1
	incl	%ebp
	cmpl	132(%rbx), %ebp
	jb	.LBB53_8
.LBB53_13:                              # %for.end
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB53_15
# BB#14:                                # %if.then.23
	callq	*296(%rdi)
	andl	%eax, %r12d
.LBB53_15:                              # %if.end.27
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsDestroyMutex
	movq	8(%rbx), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB53_16:                              # %cleanup
	movl	%r12d, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	cmsCloseProfile, .Lfunc_end53-cmsCloseProfile
	.cfi_endproc

	.globl	cmsOpenProfileFromIOhandler2THR
	.align	16, 0x90
	.type	cmsOpenProfileFromIOhandler2THR,@function
cmsOpenProfileFromIOhandler2THR:        # @cmsOpenProfileFromIOhandler2THR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 32
.Ltmp124:
	.cfi_offset %rbx, -32
.Ltmp125:
	.cfi_offset %r14, -24
.Ltmp126:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB54_6
# BB#1:                                 # %if.end
	movq	%rbp, (%rbx)
	testl	%r14d, %r14d
	je	.LBB54_3
# BB#2:                                 # %if.then.1
	movl	$1, 3736(%rbx)
	movq	%rbx, %rax
	jmp	.LBB54_6
.LBB54_3:                               # %if.end.2
	movq	%rbx, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB54_5
# BB#4:
	movq	%rbx, %rax
	jmp	.LBB54_6
.LBB54_5:                               # %Error
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB54_6:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end54:
	.size	cmsOpenProfileFromIOhandler2THR, .Lfunc_end54-cmsOpenProfileFromIOhandler2THR
	.cfi_endproc

	.globl	cmsOpenProfileFromFileTHR
	.align	16, 0x90
	.type	cmsOpenProfileFromFileTHR,@function
cmsOpenProfileFromFileTHR:              # @cmsOpenProfileFromFileTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp129:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 48
.Ltmp132:
	.cfi_offset %rbx, -40
.Ltmp133:
	.cfi_offset %r12, -32
.Ltmp134:
	.cfi_offset %r14, -24
.Ltmp135:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB55_7
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	cmsOpenIOhandlerFromFile
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB55_6
# BB#2:                                 # %if.end.5
	movb	(%r14), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$119, %eax
	jne	.LBB55_4
# BB#3:                                 # %if.then.11
	movl	$1, 3736(%r12)
	movq	%r12, %rax
	jmp	.LBB55_7
.LBB55_4:                               # %if.end.12
	movq	%r12, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB55_6
# BB#5:
	movq	%r12, %rax
	jmp	.LBB55_7
.LBB55_6:                               # %Error
	movq	%r12, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB55_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end55:
	.size	cmsOpenProfileFromFileTHR, .Lfunc_end55-cmsOpenProfileFromFileTHR
	.cfi_endproc

	.globl	cmsOpenProfileFromFile
	.align	16, 0x90
	.type	cmsOpenProfileFromFile,@function
cmsOpenProfileFromFile:                 # @cmsOpenProfileFromFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp140:
	.cfi_def_cfa_offset 48
.Ltmp141:
	.cfi_offset %rbx, -40
.Ltmp142:
	.cfi_offset %r12, -32
.Ltmp143:
	.cfi_offset %r14, -24
.Ltmp144:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB56_7
# BB#1:                                 # %if.end.i
	xorl	%edi, %edi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	cmsOpenIOhandlerFromFile
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB56_6
# BB#2:                                 # %if.end.5.i
	movb	(%r14), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$119, %eax
	jne	.LBB56_4
# BB#3:                                 # %if.then.11.i
	movl	$1, 3736(%r15)
	movq	%r15, %rbx
	jmp	.LBB56_7
.LBB56_4:                               # %if.end.12.i
	movq	%r15, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB56_6
# BB#5:
	movq	%r15, %rbx
	jmp	.LBB56_7
.LBB56_6:                               # %Error.i
	movq	%r15, %rdi
	callq	cmsCloseProfile
	xorl	%ebx, %ebx
.LBB56_7:                               # %cmsOpenProfileFromFileTHR.exit
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end56:
	.size	cmsOpenProfileFromFile, .Lfunc_end56-cmsOpenProfileFromFile
	.cfi_endproc

	.globl	cmsOpenProfileFromStreamTHR
	.align	16, 0x90
	.type	cmsOpenProfileFromStreamTHR,@function
cmsOpenProfileFromStreamTHR:            # @cmsOpenProfileFromStreamTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 48
.Ltmp150:
	.cfi_offset %rbx, -48
.Ltmp151:
	.cfi_offset %r12, -40
.Ltmp152:
	.cfi_offset %r13, -32
.Ltmp153:
	.cfi_offset %r14, -24
.Ltmp154:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB57_8
# BB#1:                                 # %if.end
	movl	$320, %esi              # imm = 0x140
	movq	%r13, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB57_2
# BB#4:                                 # %cmsOpenIOhandlerFromStream.exit
	movq	%r13, 8(%rbx)
	movq	%r15, (%rbx)
	movl	$0, 16(%rbx)
	movq	%r15, %rdi
	callq	cmsfilelength
	movl	%eax, 20(%rbx)
	movb	$0, 24(%rbx)
	movq	$FileRead, 280(%rbx)
	movq	$FileSeek, 288(%rbx)
	movl	$FileTell, %eax
	movd	%rax, %xmm0
	movl	$FileClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%rbx)
	movq	$FileWrite, 312(%rbx)
	movq	%rbx, (%r12)
	movzbl	(%r14), %eax
	cmpl	$119, %eax
	jne	.LBB57_6
# BB#5:                                 # %if.then.8
	movl	$1, 3736(%r12)
	jmp	.LBB57_7
.LBB57_2:                               # %cmsOpenIOhandlerFromStream.exit.thread
	movq	$0, (%r12)
	jmp	.LBB57_3
.LBB57_6:                               # %if.end.9
	movq	%r12, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB57_3
.LBB57_7:
	movq	%r12, %rax
	jmp	.LBB57_8
.LBB57_3:                               # %Error
	movq	%r12, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB57_8:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end57:
	.size	cmsOpenProfileFromStreamTHR, .Lfunc_end57-cmsOpenProfileFromStreamTHR
	.cfi_endproc

	.globl	cmsOpenProfileFromStream
	.align	16, 0x90
	.type	cmsOpenProfileFromStream,@function
cmsOpenProfileFromStream:               # @cmsOpenProfileFromStream
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edi, %edi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmp	cmsOpenProfileFromStreamTHR # TAILCALL
.Lfunc_end58:
	.size	cmsOpenProfileFromStream, .Lfunc_end58-cmsOpenProfileFromStream
	.cfi_endproc

	.globl	cmsOpenProfileFromMemTHR
	.align	16, 0x90
	.type	cmsOpenProfileFromMemTHR,@function
cmsOpenProfileFromMemTHR:               # @cmsOpenProfileFromMemTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp159:
	.cfi_def_cfa_offset 48
.Ltmp160:
	.cfi_offset %rbx, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB59_5
# BB#1:                                 # %if.end
	movl	$.L.str.12, %ecx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	cmsOpenIOhandlerFromMem
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB59_4
# BB#2:                                 # %if.end.5
	movq	%rbx, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB59_4
# BB#3:
	movq	%rbx, %rax
	jmp	.LBB59_5
.LBB59_4:                               # %Error
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%eax, %eax
.LBB59_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	cmsOpenProfileFromMemTHR, .Lfunc_end59-cmsOpenProfileFromMemTHR
	.cfi_endproc

	.globl	cmsOpenProfileFromMem
	.align	16, 0x90
	.type	cmsOpenProfileFromMem,@function
cmsOpenProfileFromMem:                  # @cmsOpenProfileFromMem
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
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp168:
	.cfi_def_cfa_offset 48
.Ltmp169:
	.cfi_offset %rbx, -40
.Ltmp170:
	.cfi_offset %r14, -32
.Ltmp171:
	.cfi_offset %r15, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	callq	cmsCreateProfilePlaceholder
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB60_5
# BB#1:                                 # %if.end.i
	xorl	%edi, %edi
	movl	$.L.str.12, %ecx
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	cmsOpenIOhandlerFromMem
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB60_4
# BB#2:                                 # %if.end.5.i
	movq	%rbx, %rdi
	callq	_cmsReadHeader
	testl	%eax, %eax
	je	.LBB60_4
# BB#3:
	movq	%rbx, %rbp
	jmp	.LBB60_5
.LBB60_4:                               # %Error.i
	movq	%rbx, %rdi
	callq	cmsCloseProfile
	xorl	%ebp, %ebp
.LBB60_5:                               # %cmsOpenProfileFromMemTHR.exit
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	cmsOpenProfileFromMem, .Lfunc_end60-cmsOpenProfileFromMem
	.cfi_endproc

	.globl	cmsSaveProfileToIOhandler
	.align	16, 0x90
	.type	cmsSaveProfileToIOhandler,@function
cmsSaveProfileToIOhandler:              # @cmsSaveProfileToIOhandler
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
	pushq	%r12
.Ltmp176:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 48
	subq	$3760, %rsp             # imm = 0xEB0
.Ltmp178:
	.cfi_def_cfa_offset 3808
.Ltmp179:
	.cfi_offset %rbx, -48
.Ltmp180:
	.cfi_offset %r12, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB61_22
# BB#1:                                 # %cmsGetProfileContextID.exit
	leaq	8(%rsp), %rdi
	movl	$3752, %edx             # imm = 0xEA8
	movq	%rbx, %rsi
	callq	memmove
	movq	8(%rbx), %rbp
	movl	$320, %esi              # imm = 0x140
	movq	%rbp, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB61_4
# BB#2:                                 # %if.end.i.23
	movl	$4, %esi
	movq	%rbp, %rdi
	callq	_cmsMallocZero
	testq	%rax, %rax
	je	.LBB61_3
# BB#5:                                 # %if.end
	movl	$0, (%rax)
	movq	%rbp, 8(%r14)
	movq	%rax, (%r14)
	movl	$0, 16(%r14)
	movl	$0, 20(%r14)
	movb	$0, 24(%r14)
	movq	$NULLRead, 280(%r14)
	movq	$NULLSeek, 288(%r14)
	movl	$NULLTell, %eax
	movd	%rax, %xmm0
	movl	$NULLClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%r14)
	movq	$NULLWrite, 312(%r14)
	movq	%r14, (%rbx)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsWriteHeader
	testl	%eax, %eax
	je	.LBB61_20
# BB#6:                                 # %if.end.6
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	SaveTags
	testl	%eax, %eax
	je	.LBB61_20
# BB#7:                                 # %if.end.10
	movl	16(%r14), %r15d
	testq	%r12, %r12
	je	.LBB61_19
# BB#8:                                 # %if.then.13
	movq	%r12, (%rbx)
	movl	132(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB61_17
# BB#9:                                 # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB61_10:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_12 Depth 2
	movl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB61_16
# BB#11:                                # %for.body.i
                                        #   in Loop: Header=BB61_10 Depth=1
	movl	536(%rbx,%rax,4), %esi
	testl	%esi, %esi
	movl	$0, %edx
	je	.LBB61_16
	.align	16, 0x90
.LBB61_12:                              # %for.body.i.i.i
                                        #   Parent Loop BB61_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, 136(%rbx,%rdx,4)
	je	.LBB61_14
# BB#13:                                # %for.inc.i.i.i
                                        #   in Loop: Header=BB61_12 Depth=2
	incq	%rdx
	cmpl	%ecx, %edx
	jb	.LBB61_12
	jmp	.LBB61_16
	.align	16, 0x90
.LBB61_14:                              # %SearchOneTag.exit.i.i
                                        #   in Loop: Header=BB61_10 Depth=1
	testl	%edx, %edx
	js	.LBB61_16
# BB#15:                                # %if.then.3.i
                                        #   in Loop: Header=BB61_10 Depth=1
	movslq	%edx, %rcx
	movl	1336(%rbx,%rcx,4), %edx
	movl	%edx, 1336(%rbx,%rax,4)
	movl	936(%rbx,%rcx,4), %ecx
	movl	%ecx, 936(%rbx,%rax,4)
	movl	132(%rbx), %ecx
	.align	16, 0x90
.LBB61_16:                              # %if.end.14.i
                                        #   in Loop: Header=BB61_10 Depth=1
	incl	%eax
	cmpl	%ecx, %eax
	jb	.LBB61_10
.LBB61_17:                              # %SetLinks.exit
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	_cmsWriteHeader
	testl	%eax, %eax
	je	.LBB61_20
# BB#18:                                # %if.end.22
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	SaveTags
	testl	%eax, %eax
	je	.LBB61_20
.LBB61_19:                              # %if.end.27
	leaq	8(%rsp), %rsi
	movl	$3752, %edx             # imm = 0xEA8
	movq	%rbx, %rdi
	callq	memmove
	movq	%r14, %rdi
	callq	*296(%r14)
	testl	%eax, %eax
	cmovel	%eax, %r15d
	movl	%r15d, %ebp
	jmp	.LBB61_21
.LBB61_20:                              # %Error
	movq	%r14, %rdi
	callq	*296(%r14)
	leaq	8(%rsp), %rsi
	movl	$3752, %edx             # imm = 0xEA8
	movq	%rbx, %rdi
	callq	memmove
	jmp	.LBB61_21
.LBB61_3:                               # %if.then.6.i
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	_cmsFree
.LBB61_4:                               # %cmsOpenIOhandlerFromNULL.exit.thread
	movq	$0, (%rbx)
	xorl	%ebp, %ebp
.LBB61_21:                              # %cleanup
	movl	%ebp, %eax
	addq	$3760, %rsp             # imm = 0xEB0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_22:                              # %cond.false
	movl	$.L.str.13, %edi
	movl	$.L.str.1, %esi
	movl	$1267, %edx             # imm = 0x4F3
	movl	$.L__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler, %ecx
	callq	__assert_fail
.Lfunc_end61:
	.size	cmsSaveProfileToIOhandler, .Lfunc_end61-cmsSaveProfileToIOhandler
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI62_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	SaveTags,@function
SaveTags:                               # @SaveTags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp187:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp188:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp189:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp190:
	.cfi_def_cfa_offset 208
.Ltmp191:
	.cfi_offset %rbx, -56
.Ltmp192:
	.cfi_offset %r12, -48
.Ltmp193:
	.cfi_offset %r13, -40
.Ltmp194:
	.cfi_offset %r14, -32
.Ltmp195:
	.cfi_offset %r15, -24
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	movl	72(%rbx), %ecx
	xorl	%eax, %eax
	shrl	$16, %ecx
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	je	.LBB62_1
	.align	16, 0x90
.LBB62_18:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, %dl
	andb	$15, %dl
	movb	%dl, 48(%rsp,%rax)
	incq	%rax
	cmpq	$99, %rax
	jg	.LBB62_2
# BB#19:                                # %for.body.i.i
                                        #   in Loop: Header=BB62_18 Depth=1
	shrl	$4, %ecx
	jne	.LBB62_18
.LBB62_2:                               # %for.cond.2.preheader.i.i
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB62_6
# BB#3:                                 # %for.body.5.lr.ph.i.i
	cltq
	incq	%rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB62_4:                               # %for.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rcx,%rcx,4), %ecx
	movsbl	46(%rsp,%rax), %edx
	leal	(%rdx,%rcx,2), %ecx
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB62_4
# BB#5:                                 # %BaseToBase.exit.loopexit.i
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	jmp	.LBB62_6
.LBB62_1:
	movq	%rsi, 32(%rsp)          # 8-byte Spill
.LBB62_6:                               # %cmsGetProfileVersion.exit
	movl	$1, %ebp
	cmpl	$0, 132(%rbx)
	je	.LBB62_35
# BB#7:                                 # %for.body.lr.ph
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI62_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB62_8
.LBB62_28:                              # %if.then.86
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	8(%rbx), %rdi
	movl	136(%rbx,%r15,4), %ecx
	movl	$3, %esi
	movl	$.L.str.26, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB62_34
	.align	16, 0x90
.LBB62_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %r15d
	movl	136(%rbx,%r15,4), %esi
	testl	%esi, %esi
	je	.LBB62_34
# BB#9:                                 # %if.end
                                        #   in Loop: Header=BB62_8 Depth=1
	cmpl	$0, 536(%rbx,%r15,4)
	jne	.LBB62_34
# BB#10:                                # %if.end.6
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	movl	16(%rbp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%eax, 1336(%rbx,%r15,4)
	movq	2136(%rbx,%r15,8), %r13
	testq	%r13, %r13
	je	.LBB62_11
# BB#20:                                # %if.end.55
                                        #   in Loop: Header=BB62_8 Depth=1
	cmpl	$0, 1736(%rbx,%r15,4)
	je	.LBB62_23
# BB#21:                                # %if.then.59
                                        #   in Loop: Header=BB62_8 Depth=1
	movl	936(%rbx,%r15,4), %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	*312(%rbp)
	movq	%rbp, %rcx
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	jne	.LBB62_35
# BB#22:                                #   in Loop: Header=BB62_8 Depth=1
	leaq	936(%rbx,%r15,4), %rax
	movq	%rcx, %rbp
	jmp	.LBB62_32
.LBB62_11:                              # %if.then.11
                                        #   in Loop: Header=BB62_8 Depth=1
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	je	.LBB62_34
# BB#12:                                # %if.then.11
                                        #   in Loop: Header=BB62_8 Depth=1
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB62_34
# BB#13:                                # %if.then.17
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	936(%rax,%r15,4), %r14d
	movl	1336(%rax,%r15,4), %esi
	movq	(%rax), %rdi
	callq	*288(%rdi)
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB62_35
# BB#14:                                # %if.end.28
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	8(%rbx), %rdi
	movl	%r14d, %esi
	callq	_cmsMalloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB62_35
# BB#15:                                # %if.end.32
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movl	$1, %ecx
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	*280(%rdi)
	cmpl	$1, %eax
	jne	.LBB62_35
# BB#16:                                # %if.end.38
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %esi
	movq	%rdi, %r14
	movq	%r12, %rdx
	callq	*312(%r14)
	testl	%eax, %eax
	je	.LBB62_35
# BB#17:                                # %if.end.42
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	8(%rbx), %rdi
	movq	%r12, %rsi
	callq	_cmsFree
	movl	16(%r14), %eax
	subl	28(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 936(%rbx,%r15,4)
	movq	%r14, %rdi
	callq	_cmsWriteAlignment
	jmp	.LBB62_33
.LBB62_23:                              # %if.else
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	8(%rbx), %rdi
	callq	_cmsGetTagDescriptor
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB62_34
# BB#24:                                # %if.end.75
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	88(%r12), %rax
	testq	%rax, %rax
	je	.LBB62_26
# BB#25:                                # %if.then.77
                                        #   in Loop: Header=BB62_8 Depth=1
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r13, %rdi
	callq	*%rax
	movl	%eax, %esi
	jmp	.LBB62_27
.LBB62_26:                              # %if.else.80
                                        #   in Loop: Header=BB62_8 Depth=1
	movl	8(%r12), %esi
.LBB62_27:                              # %if.end.82
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	8(%rbx), %rdi
	callq	_cmsGetTagTypeHandler
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB62_28
# BB#29:                                # %if.end.91
                                        #   in Loop: Header=BB62_8 Depth=1
	movl	(%r14), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	_cmsWriteTypeBase
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB62_35
# BB#30:                                # %if.end.95
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	48(%r14), %rax
	movq	%rax, 96(%rsp)
	movupd	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm1, 64(%rsp)
	movapd	%xmm0, 48(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 88(%rsp)
	movl	72(%rbx), %eax
	movl	%eax, 96(%rsp)
	movl	(%r12), %ecx
	leaq	48(%rsp), %rdi
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	*64(%rsp)
	testl	%eax, %eax
	je	.LBB62_36
# BB#31:                                # %if.end.95.if.end.106_crit_edge
                                        #   in Loop: Header=BB62_8 Depth=1
	leaq	936(%rbx,%r15,4), %rax
.LBB62_32:                              # %if.end.106
                                        #   in Loop: Header=BB62_8 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	16(%rbp), %ecx
	subl	28(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ecx, (%rax)
	movq	%rbp, %rdi
	callq	_cmsWriteAlignment
	xorl	%ebp, %ebp
.LBB62_33:                              # %if.end.106
                                        #   in Loop: Header=BB62_8 Depth=1
	testl	%eax, %eax
	je	.LBB62_35
	.align	16, 0x90
.LBB62_34:                              # %for.inc
                                        #   in Loop: Header=BB62_8 Depth=1
	incl	%r15d
	movl	$1, %ebp
	cmpl	132(%rbx), %r15d
	jb	.LBB62_8
	jmp	.LBB62_35
.LBB62_36:                              # %if.then.101
	leaq	43(%rsp), %r14
	movq	%r14, %rdi
	movl	4(%rsp), %esi           # 4-byte Reload
	callq	_cmsTagSignature2String
	movq	8(%rbx), %rdi
	xorl	%ebp, %ebp
	movl	$7, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	movq	%r14, %rcx
	callq	cmsSignalError
.LBB62_35:                              # %cleanup.116
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	SaveTags, .Lfunc_end62-SaveTags
	.cfi_endproc

	.globl	cmsSaveProfileToFile
	.align	16, 0x90
	.type	cmsSaveProfileToFile,@function
cmsSaveProfileToFile:                   # @cmsSaveProfileToFile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp199:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp200:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp201:
	.cfi_def_cfa_offset 48
.Ltmp202:
	.cfi_offset %rbx, -48
.Ltmp203:
	.cfi_offset %r12, -40
.Ltmp204:
	.cfi_offset %r14, -32
.Ltmp205:
	.cfi_offset %r15, -24
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	testq	%r15, %r15
	movl	$0, %edi
	je	.LBB63_2
# BB#1:                                 # %if.end.i
	movq	8(%r15), %rdi
.LBB63_2:                               # %cmsGetProfileContextID.exit
	movl	$.L.str.14, %edx
	movq	%r14, %rsi
	callq	cmsOpenIOhandlerFromFile
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB63_5
# BB#3:                                 # %if.end
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	cmsSaveProfileToIOhandler
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
	movq	%rbx, %rdi
	callq	*296(%rbx)
	movl	%eax, %r12d
	andl	%ebp, %r12d
	jne	.LBB63_5
# BB#4:                                 # %if.then.7
	movq	%r14, %rdi
	callq	remove
	xorl	%r12d, %r12d
.LBB63_5:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	cmsSaveProfileToFile, .Lfunc_end63-cmsSaveProfileToFile
	.cfi_endproc

	.globl	cmsSaveProfileToStream
	.align	16, 0x90
	.type	cmsSaveProfileToStream,@function
cmsSaveProfileToStream:                 # @cmsSaveProfileToStream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp209:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp210:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp211:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp213:
	.cfi_def_cfa_offset 64
.Ltmp214:
	.cfi_offset %rbx, -56
.Ltmp215:
	.cfi_offset %r12, -48
.Ltmp216:
	.cfi_offset %r13, -40
.Ltmp217:
	.cfi_offset %r14, -32
.Ltmp218:
	.cfi_offset %r15, -24
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%r12d, %r12d
	testq	%r14, %r14
	movl	$0, %r13d
	je	.LBB64_2
# BB#1:                                 # %if.end.i
	movq	8(%r14), %r13
.LBB64_2:                               # %cmsGetProfileContextID.exit
	movl	$320, %esi              # imm = 0x140
	movq	%r13, %rdi
	callq	_cmsMallocZero
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB64_4
# BB#3:                                 # %cmsOpenIOhandlerFromStream.exit
	movq	%r13, 8(%rbx)
	movq	%r15, (%rbx)
	movl	$0, 16(%rbx)
	movq	%r15, %rdi
	callq	cmsfilelength
	movl	%eax, 20(%rbx)
	movb	$0, 24(%rbx)
	movq	$FileRead, 280(%rbx)
	movq	$FileSeek, 288(%rbx)
	movl	$FileTell, %eax
	movd	%rax, %xmm0
	movl	$FileClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%rbx)
	movq	$FileWrite, 312(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	cmsSaveProfileToIOhandler
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
	movq	%rbx, %rdi
	callq	*296(%rbx)
	movl	%eax, %r12d
	andl	%ebp, %r12d
.LBB64_4:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	cmsSaveProfileToStream, .Lfunc_end64-cmsSaveProfileToStream
	.cfi_endproc

	.globl	cmsSaveProfileToMem
	.align	16, 0x90
	.type	cmsSaveProfileToMem,@function
cmsSaveProfileToMem:                    # @cmsSaveProfileToMem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp222:
	.cfi_def_cfa_offset 32
.Ltmp223:
	.cfi_offset %rbx, -32
.Ltmp224:
	.cfi_offset %r14, -24
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	xorl	%edi, %edi
	testq	%r14, %r14
	je	.LBB65_2
# BB#1:                                 # %if.end.i
	movq	8(%r14), %rdi
.LBB65_2:                               # %cmsGetProfileContextID.exit
	testq	%rbx, %rbx
	je	.LBB65_8
# BB#3:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB65_4
# BB#5:                                 # %if.end
	movl	(%rbx), %edx
	movl	$.L.str.14, %ecx
	callq	cmsOpenIOhandlerFromMem
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB65_7
# BB#6:                                 # %if.end.7
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	cmsSaveProfileToIOhandler
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
	movq	%rbx, %rdi
	callq	*296(%rbx)
	andl	%ebp, %eax
	jmp	.LBB65_7
.LBB65_4:                               # %if.then
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	cmsSaveProfileToIOhandler
	movl	%eax, (%rbx)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB65_7:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB65_8:                               # %cond.false
	movl	$.L.str.15, %edi
	movl	$.L.str.1, %esi
	movl	$1346, %edx             # imm = 0x542
	movl	$.L__PRETTY_FUNCTION__.cmsSaveProfileToMem, %ecx
	callq	__assert_fail
.Lfunc_end65:
	.size	cmsSaveProfileToMem, .Lfunc_end65-cmsSaveProfileToMem
	.cfi_endproc

	.globl	cmsReadTag
	.align	16, 0x90
	.type	cmsReadTag,@function
cmsReadTag:                             # @cmsReadTag
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
	subq	$72, %rsp
.Ltmp232:
	.cfi_def_cfa_offset 128
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
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsLockMutex
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB66_12
# BB#1:                                 # %if.end
	movl	132(%rbx), %eax
	testl	%eax, %eax
	je	.LBB66_6
# BB#2:                                 # %for.body.i.i.preheader.preheader
	movl	%r13d, %ecx
.LBB66_3:                               # %for.body.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_4 Depth 2
	xorl	%edx, %edx
	.align	16, 0x90
.LBB66_4:                               # %for.body.i.i
                                        #   Parent Loop BB66_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, 136(%rbx,%rdx,4)
	je	.LBB66_7
# BB#5:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB66_4 Depth=2
	incq	%rdx
	cmpl	%eax, %edx
	jb	.LBB66_4
	jmp	.LBB66_6
	.align	16, 0x90
.LBB66_7:                               # %SearchOneTag.exit.i
                                        #   in Loop: Header=BB66_3 Depth=1
	testl	%edx, %edx
	js	.LBB66_6
# BB#8:                                 # %if.end.2.i
                                        #   in Loop: Header=BB66_3 Depth=1
	movslq	%edx, %rbp
	movl	536(%rbx,%rbp,4), %ecx
	testl	%ecx, %ecx
	jne	.LBB66_3
# BB#9:                                 # %if.end.3
	cmpq	$0, 2136(%rbx,%rbp,8)
	je	.LBB66_13
# BB#10:                                # %if.then.5
	cmpl	$0, 1736(%rbx,%rbp,4)
	jne	.LBB66_6
	jmp	.LBB66_11
.LBB66_13:                              # %if.end.16
	movl	1336(%rbx,%rbp,4), %esi
	movl	936(%rbx,%rbp,4), %r12d
	movq	%r14, %rdi
	callq	*288(%r14)
	testl	%eax, %eax
	je	.LBB66_6
# BB#14:                                # %if.end.24
	movq	8(%rbx), %rdi
	movl	%r13d, %esi
	callq	_cmsGetTagDescriptor
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB66_15
# BB#17:                                # %if.end.31
	movq	%r14, %rdi
	callq	_cmsReadTypeBase
	testl	%eax, %eax
	je	.LBB66_6
# BB#18:                                # %if.end.35
	movl	4(%r15), %edx
	cmpl	$20, %edx
	movl	$20, %ecx
	cmovbl	%edx, %ecx
	testl	%ecx, %ecx
	je	.LBB66_6
# BB#19:                                # %for.body.i.preheader
	movq	%r15, %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
.LBB66_21:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, (%rdx)
	je	.LBB66_22
# BB#20:                                # %for.cond.i
                                        #   in Loop: Header=BB66_21 Depth=1
	incl	%esi
	addq	$4, %rdx
	cmpl	%ecx, %esi
	jb	.LBB66_21
	jmp	.LBB66_6
.LBB66_15:                              # %if.then.28
	leaq	7(%rsp), %r14
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	_cmsTagSignature2String
	movq	8(%rbx), %rdi
	movl	$8, %esi
	movl	$.L.str.16, %edx
.LBB66_16:                              # %Error
	xorl	%eax, %eax
	movq	%r14, %rcx
	callq	cmsSignalError
.LBB66_6:                               # %Error
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	xorl	%eax, %eax
.LBB66_12:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB66_22:                              # %if.end.39
	movq	8(%rbx), %rdi
	movl	%eax, %esi
	callq	_cmsGetTagTypeHandler
	testq	%rax, %rax
	je	.LBB66_6
# BB#23:                                # %if.end.44
	addl	$-8, %r12d
	movq	48(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	%rax, 2936(%rbx,%rbp,8)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	movl	72(%rbx), %eax
	movl	%eax, 64(%rsp)
	leaq	16(%rsp), %rdi
	leaq	12(%rsp), %rdx
	movq	%r14, %rsi
	movl	%r12d, %ecx
	callq	*24(%rsp)
	movq	%rax, 2136(%rbx,%rbp,8)
	testq	%rax, %rax
	je	.LBB66_24
# BB#25:                                # %if.end.62
	movl	12(%rsp), %eax
	cmpl	(%r15), %eax
	jae	.LBB66_11
# BB#26:                                # %if.then.65
	leaq	7(%rsp), %r14
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	_cmsTagSignature2String
	movq	8(%rbx), %rdi
	movl	(%r15), %r8d
	movl	12(%rsp), %r9d
	movl	$12, %esi
	movl	$.L.str.18, %edx
	xorl	%eax, %eax
	movq	%r14, %rcx
	callq	cmsSignalError
.LBB66_11:                              # %if.end.10
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	movq	2136(%rbx,%rbp,8), %rax
	jmp	.LBB66_12
.LBB66_24:                              # %if.then.57
	leaq	7(%rsp), %r14
	movq	%r14, %rdi
	movl	%r13d, %esi
	callq	_cmsTagSignature2String
	movq	8(%rbx), %rdi
	movl	$12, %esi
	movl	$.L.str.17, %edx
	jmp	.LBB66_16
.Lfunc_end66:
	.size	cmsReadTag, .Lfunc_end66-cmsReadTag
	.cfi_endproc

	.globl	_cmsGetTagTrueType
	.align	16, 0x90
	.type	_cmsGetTagTrueType,@function
_cmsGetTagTrueType:                     # @_cmsGetTagTrueType
	.cfi_startproc
# BB#0:                                 # %entry
	movl	132(%rdi), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB67_7
.LBB67_1:                               # %for.body.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_2 Depth 2
	xorl	%edx, %edx
	.align	16, 0x90
.LBB67_2:                               # %for.body.i.i
                                        #   Parent Loop BB67_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%esi, 136(%rdi,%rdx,4)
	je	.LBB67_4
# BB#3:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB67_2 Depth=2
	incq	%rdx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jb	.LBB67_2
	jmp	.LBB67_7
	.align	16, 0x90
.LBB67_4:                               # %SearchOneTag.exit.i
                                        #   in Loop: Header=BB67_1 Depth=1
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.LBB67_7
# BB#5:                                 # %if.end.2.i
                                        #   in Loop: Header=BB67_1 Depth=1
	movslq	%edx, %rax
	movl	536(%rdi,%rax,4), %esi
	testl	%esi, %esi
	jne	.LBB67_1
# BB#6:                                 # %if.end
	movq	2936(%rdi,%rax,8), %rax
	movl	(%rax), %eax
.LBB67_7:                               # %cleanup
	retq
.Lfunc_end67:
	.size	_cmsGetTagTrueType, .Lfunc_end67-_cmsGetTagTrueType
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI68_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	cmsWriteTag
	.align	16, 0x90
	.type	cmsWriteTag,@function
cmsWriteTag:                            # @cmsWriteTag
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
	subq	$184, %rsp
.Ltmp245:
	.cfi_def_cfa_offset 240
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
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsLockMutex
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB68_40
# BB#1:                                 # %if.end
	movl	132(%rbx), %eax
	testq	%r15, %r15
	je	.LBB68_2
# BB#9:                                 # %if.end.8
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB68_14
# BB#10:                                # %for.body.i.i.i.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB68_11:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r14d, 136(%rbx,%rbp,4)
	je	.LBB68_15
# BB#12:                                # %for.inc.i.i.i
                                        #   in Loop: Header=BB68_11 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB68_11
	jmp	.LBB68_13
.LBB68_2:                               # %if.then.1
	testl	%eax, %eax
	je	.LBB68_39
# BB#3:                                 # %for.body.i.i.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB68_4:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r14d, 136(%rbx,%rbp,4)
	je	.LBB68_6
# BB#5:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB68_4 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB68_4
	jmp	.LBB68_39
.LBB68_15:                              # %SearchOneTag.exit.i.i
	testl	%ebp, %ebp
	js	.LBB68_13
# BB#16:                                # %if.then.i
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_cmsDeleteTagByPos
	jmp	.LBB68_17
.LBB68_13:                              # %if.else.i
	cmpl	$99, %eax
	movl	%eax, %ebp
	jbe	.LBB68_14
# BB#37:                                # %_cmsNewTag.exit
	movq	8(%rbx), %rdi
	movl	$2, %esi
	movl	$.L.str.11, %edx
	movl	$100, %ecx
	xorl	%eax, %eax
	jmp	.LBB68_38
.LBB68_14:                              # %if.end.i
	incl	%eax
	movl	%eax, 132(%rbx)
.LBB68_17:                              # %if.end.12
	movslq	%ebp, %rbp
	movl	$0, 1736(%rbx,%rbp,4)
	movl	$0, 536(%rbx,%rbp,4)
	movq	8(%rbx), %rdi
	movl	%r14d, %esi
	callq	_cmsGetTagDescriptor
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB68_18
# BB#19:                                # %if.end.22
	movl	72(%rbx), %ecx
	xorl	%eax, %eax
	shrl	$16, %ecx
	xorpd	%xmm0, %xmm0
	je	.LBB68_25
	.align	16, 0x90
.LBB68_20:                              # %for.body.i.i.56
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, %dl
	andb	$15, %dl
	movb	%dl, 80(%rsp,%rax)
	incq	%rax
	cmpq	$99, %rax
	jg	.LBB68_21
# BB#41:                                # %for.body.i.i.56
                                        #   in Loop: Header=BB68_20 Depth=1
	shrl	$4, %ecx
	jne	.LBB68_20
.LBB68_21:                              # %for.cond.2.preheader.i.i
	testl	%eax, %eax
	jle	.LBB68_25
# BB#22:                                # %for.body.5.lr.ph.i.i
	cltq
	incq	%rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB68_23:                              # %for.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rcx,%rcx,4), %ecx
	movsbl	78(%rsp,%rax), %edx
	leal	(%rdx,%rcx,2), %ecx
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB68_23
# BB#24:                                # %BaseToBase.exit.loopexit.i
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
.LBB68_25:                              # %cmsGetProfileVersion.exit
	movq	88(%r12), %rax
	testq	%rax, %rax
	je	.LBB68_27
# BB#26:                                # %if.then.25
	divsd	.LCPI68_0(%rip), %xmm0
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %r13d
	jmp	.LBB68_28
.LBB68_18:                              # %if.then.20
	movq	8(%rbx), %rdi
	movl	$8, %esi
	movl	$.L.str.19, %edx
	xorl	%eax, %eax
	movl	%r14d, %ecx
.LBB68_38:                              # %Error
	callq	cmsSignalError
	jmp	.LBB68_39
.LBB68_6:                               # %SearchOneTag.exit.i
	testl	%ebp, %ebp
	js	.LBB68_39
# BB#7:                                 # %if.then.4
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_cmsDeleteTagByPos
	movslq	%ebp, %rax
	movl	$0, 136(%rbx,%rax,4)
	jmp	.LBB68_8
.LBB68_27:                              # %if.else
	movl	8(%r12), %r13d
.LBB68_28:                              # %if.end.29
	movl	4(%r12), %ecx
	cmpl	$20, %ecx
	movl	$20, %eax
	cmovbl	%ecx, %eax
	testl	%eax, %eax
	je	.LBB68_33
# BB#29:                                # %for.body.i.preheader
	movq	%r12, %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB68_31:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r13d, (%rcx)
	je	.LBB68_32
# BB#30:                                # %for.cond.i
                                        #   in Loop: Header=BB68_31 Depth=1
	incl	%edx
	addq	$4, %rcx
	cmpl	%eax, %edx
	jb	.LBB68_31
	jmp	.LBB68_33
.LBB68_32:                              # %if.end.37
	movq	8(%rbx), %rdi
	movl	%r13d, %esi
	callq	_cmsGetTagTypeHandler
	testq	%rax, %rax
	je	.LBB68_33
# BB#35:                                # %if.end.47
	movq	%rax, 2936(%rbx,%rbp,8)
	movl	%r14d, 136(%rbx,%rbp,4)
	movl	$0, 936(%rbx,%rbp,4)
	movl	$0, 1336(%rbx,%rbp,4)
	movq	48(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movupd	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movapd	%xmm0, 16(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	movl	72(%rbx), %eax
	movl	%eax, 64(%rsp)
	movl	(%r12), %edx
	leaq	16(%rsp), %rdi
	movq	%r15, %rsi
	callq	*40(%rsp)
	movq	%rax, 2136(%rbx,%rbp,8)
	testq	%rax, %rax
	je	.LBB68_36
.LBB68_8:                               # %if.end.73
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	movl	$1, %r13d
	jmp	.LBB68_40
.LBB68_33:                              # %if.then.32
	leaq	11(%rsp), %r15
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	_cmsTagSignature2String
	leaq	6(%rsp), %rbp
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	_cmsTagSignature2String
	movq	8(%rbx), %rdi
	movl	$8, %esi
	movl	$.L.str.20, %edx
.LBB68_34:                              # %Error
	xorl	%eax, %eax
	movq	%r15, %rcx
	movq	%rbp, %r8
	callq	cmsSignalError
	xorl	%r13d, %r13d
.LBB68_39:                              # %Error
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
.LBB68_40:                              # %cleanup
	movl	%r13d, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB68_36:                              # %if.then.67
	leaq	11(%rsp), %r15
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	_cmsTagSignature2String
	leaq	6(%rsp), %rbp
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	_cmsTagSignature2String
	movq	8(%rbx), %rdi
	movl	$12, %esi
	movl	$.L.str.21, %edx
	jmp	.LBB68_34
.Lfunc_end68:
	.size	cmsWriteTag, .Lfunc_end68-cmsWriteTag
	.cfi_endproc

	.align	16, 0x90
	.type	_cmsDeleteTagByPos,@function
_cmsDeleteTagByPos:                     # @_cmsDeleteTagByPos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp252:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp253:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp254:
	.cfi_def_cfa_offset 80
.Ltmp255:
	.cfi_offset %rbx, -24
.Ltmp256:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB69_7
# BB#1:                                 # %cond.end
	testl	%esi, %esi
	js	.LBB69_8
# BB#2:                                 # %cond.end.4
	movslq	%esi, %r14
	movq	2136(%rbx,%r14,8), %rsi
	testq	%rsi, %rsi
	je	.LBB69_6
# BB#3:                                 # %if.then
	cmpl	$0, 1736(%rbx,%r14,4)
	je	.LBB69_4
# BB#9:                                 # %if.then.8
	movq	8(%rbx), %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	jmp	_cmsFree                # TAILCALL
.LBB69_4:                               # %if.else
	movq	2936(%rbx,%r14,8), %rax
	testq	%rax, %rax
	je	.LBB69_6
# BB#5:                                 # %if.then.15
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)
	movl	72(%rbx), %eax
	movl	%eax, 48(%rsp)
	leaq	(%rsp), %rdi
	callq	*32(%rsp)
	movq	$0, 2136(%rbx,%r14,8)
.LBB69_6:                               # %if.end.25
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB69_7:                               # %cond.false
	movl	$.L.str.28, %edi
	movl	$.L.str.1, %esi
	movl	$560, %edx              # imm = 0x230
	movl	$.L__PRETTY_FUNCTION__._cmsDeleteTagByPos, %ecx
	callq	__assert_fail
.LBB69_8:                               # %cond.false.3
	movl	$.L.str.29, %edi
	movl	$.L.str.1, %esi
	movl	$561, %edx              # imm = 0x231
	movl	$.L__PRETTY_FUNCTION__._cmsDeleteTagByPos, %ecx
	callq	__assert_fail
.Lfunc_end69:
	.size	_cmsDeleteTagByPos, .Lfunc_end69-_cmsDeleteTagByPos
	.cfi_endproc

	.globl	cmsReadRawTag
	.align	16, 0x90
	.type	cmsReadRawTag,@function
cmsReadRawTag:                          # @cmsReadRawTag
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
	subq	$72, %rsp
.Ltmp263:
	.cfi_def_cfa_offset 128
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
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsLockMutex
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB70_32
# BB#1:                                 # %if.end
	movl	132(%rbx), %eax
	testl	%eax, %eax
	je	.LBB70_31
# BB#2:
	movl	%r13d, %ecx
.LBB70_3:                               # %for.body.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_4 Depth 2
	xorl	%edx, %edx
	.align	16, 0x90
.LBB70_4:                               # %for.body.i.i
                                        #   Parent Loop BB70_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, 136(%rbx,%rdx,4)
	je	.LBB70_6
# BB#5:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB70_4 Depth=2
	incq	%rdx
	cmpl	%eax, %edx
	jb	.LBB70_4
	jmp	.LBB70_31
	.align	16, 0x90
.LBB70_6:                               # %SearchOneTag.exit.i
                                        #   in Loop: Header=BB70_3 Depth=1
	testl	%edx, %edx
	js	.LBB70_31
# BB#7:                                 # %if.end.2.i
                                        #   in Loop: Header=BB70_3 Depth=1
	movslq	%edx, %r15
	movl	536(%rbx,%r15,4), %ecx
	testl	%ecx, %ecx
	jne	.LBB70_3
# BB#8:                                 # %if.end.3
	movq	2136(%rbx,%r15,8), %rsi
	testq	%rsi, %rsi
	je	.LBB70_9
# BB#13:                                # %if.end.34
	cmpl	$0, 1736(%rbx,%r15,4)
	je	.LBB70_17
# BB#14:                                # %if.then.38
	testq	%r14, %r14
	je	.LBB70_16
# BB#15:                                # %if.then.40
	movl	936(%rbx,%r15,4), %ebp
	cmpl	%r12d, %ebp
	cmoval	%r12d, %ebp
	movl	%ebp, %edx
	movq	%r14, %rdi
	callq	memmove
	jmp	.LBB70_12
.LBB70_9:                               # %if.then.5
	testq	%r14, %r14
	je	.LBB70_16
# BB#10:                                # %if.then.11
	movl	936(%rbx,%r15,4), %ebp
	movl	1336(%rbx,%r15,4), %esi
	cmpl	%r12d, %ebp
	cmoval	%r12d, %ebp
	movq	(%rbx), %rdi
	callq	*288(%rdi)
	testl	%eax, %eax
	je	.LBB70_31
# BB#11:                                # %if.end.19
	movq	(%rbx), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	movl	%ebp, %ecx
	callq	*280(%rdi)
	testl	%eax, %eax
	jne	.LBB70_12
	jmp	.LBB70_31
.LBB70_16:                              # %if.end.28
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	movl	936(%rbx,%r15,4), %ebp
	jmp	.LBB70_32
.LBB70_17:                              # %if.end.59
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	cmsReadTag
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsLockMutex
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB70_32
# BB#18:                                # %if.end.68
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	je	.LBB70_31
# BB#19:                                # %cmsGetProfileContextID.exit
	movq	8(%rbx), %rbp
	testq	%r14, %r14
	je	.LBB70_20
# BB#23:                                # %if.end.80
	movl	$.L.str.14, %ecx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	cmsOpenIOhandlerFromMem
	movq	%rax, %r14
	testq	%r14, %r14
	jne	.LBB70_24
	jmp	.LBB70_31
.LBB70_20:                              # %if.then.75
	movl	$320, %esi              # imm = 0x140
	movq	%rbp, %rdi
	callq	_cmsMallocZero
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB70_31
# BB#21:                                # %if.end.i.85
	movl	$4, %esi
	movq	%rbp, %rdi
	callq	_cmsMallocZero
	testq	%rax, %rax
	je	.LBB70_30
# BB#22:                                # %if.end.80.thread99
	movl	$0, (%rax)
	movq	%rbp, 8(%r14)
	movq	%rax, (%r14)
	movl	$0, 16(%r14)
	movl	$0, 20(%r14)
	movb	$0, 24(%r14)
	movq	$NULLRead, 280(%r14)
	movq	$NULLSeek, 288(%r14)
	movl	$NULLTell, %eax
	movd	%rax, %xmm0
	movl	$NULLClose, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 296(%r14)
	movq	$NULLWrite, 312(%r14)
.LBB70_24:                              # %if.end.84
	movq	2936(%rbx,%r15,8), %rbp
	movq	8(%rbx), %rdi
	movl	%r13d, %esi
	callq	_cmsGetTagDescriptor
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB70_25
# BB#26:                                # %if.end.93
	testq	%rbp, %rbp
	je	.LBB70_31
# BB#27:                                # %if.end.97
	movq	48(%rbp), %rax
	movq	%rax, 64(%rsp)
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movaps	%xmm2, 48(%rsp)
	movdqa	%xmm1, 32(%rsp)
	movdqa	%xmm0, 16(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	movl	72(%rbx), %eax
	movl	%eax, 64(%rsp)
	movl	(%rbp), %esi
	movq	%r14, %rdi
	callq	_cmsWriteTypeBase
	testl	%eax, %eax
	je	.LBB70_25
# BB#28:                                # %if.end.104
	movl	(%r15), %ecx
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	*32(%rsp)
	testl	%eax, %eax
	je	.LBB70_25
# BB#29:                                # %if.end.109
	movq	%r14, %rdi
	callq	*304(%r14)
	movl	%eax, %ebp
	movq	%r14, %rdi
	callq	*296(%r14)
.LBB70_12:                              # %if.end.25
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	jmp	.LBB70_32
.LBB70_25:                              # %if.then.91
	movq	%r14, %rdi
	callq	*296(%r14)
	jmp	.LBB70_31
.LBB70_30:                              # %if.then.6.i
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	_cmsFree
.LBB70_31:                              # %Error
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	xorl	%ebp, %ebp
.LBB70_32:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end70:
	.size	cmsReadRawTag, .Lfunc_end70-cmsReadRawTag
	.cfi_endproc

	.globl	cmsWriteRawTag
	.align	16, 0x90
	.type	cmsWriteRawTag,@function
cmsWriteRawTag:                         # @cmsWriteRawTag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp271:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp272:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp273:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp274:
	.cfi_def_cfa_offset 48
.Ltmp275:
	.cfi_offset %rbx, -48
.Ltmp276:
	.cfi_offset %r12, -40
.Ltmp277:
	.cfi_offset %r14, -32
.Ltmp278:
	.cfi_offset %r15, -24
.Ltmp279:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsLockMutex
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB71_10
# BB#1:                                 # %if.end
	movl	132(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB71_6
# BB#2:                                 # %for.body.i.i.i.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB71_3:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r12d, 136(%rbx,%rbp,4)
	je	.LBB71_7
# BB#4:                                 # %for.inc.i.i.i
                                        #   in Loop: Header=BB71_3 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB71_3
	jmp	.LBB71_5
.LBB71_7:                               # %SearchOneTag.exit.i.i
	testl	%ebp, %ebp
	js	.LBB71_5
# BB#8:                                 # %if.then.i
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_cmsDeleteTagByPos
	jmp	.LBB71_9
.LBB71_5:                               # %if.else.i
	cmpl	$99, %eax
	movl	%eax, %ebp
	jbe	.LBB71_6
# BB#11:                                # %if.then.3
	movq	8(%rbx), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.11, %edx
	movl	$100, %ecx
	xorl	%eax, %eax
	callq	cmsSignalError
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	jmp	.LBB71_10
.LBB71_6:                               # %if.end.i
	incl	%eax
	movl	%eax, 132(%rbx)
.LBB71_9:                               # %if.end.6
	movslq	%ebp, %rbp
	movl	$1, 1736(%rbx,%rbp,4)
	movl	%r12d, 136(%rbx,%rbp,4)
	movl	$0, 536(%rbx,%rbp,4)
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	_cmsDupMem
	movq	%rax, 2136(%rbx,%rbp,8)
	movl	%r15d, 936(%rbx,%rbp,4)
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	movl	$1, %ebp
.LBB71_10:                              # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	cmsWriteRawTag, .Lfunc_end71-cmsWriteRawTag
	.cfi_endproc

	.globl	cmsLinkTag
	.align	16, 0x90
	.type	cmsLinkTag,@function
cmsLinkTag:                             # @cmsLinkTag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp281:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp282:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp283:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp284:
	.cfi_def_cfa_offset 48
.Ltmp285:
	.cfi_offset %rbx, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsLockMutex
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB72_10
# BB#1:                                 # %if.end
	movl	132(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB72_6
# BB#2:                                 # %for.body.i.i.i.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB72_3:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r15d, 136(%rbx,%rbp,4)
	je	.LBB72_7
# BB#4:                                 # %for.inc.i.i.i
                                        #   in Loop: Header=BB72_3 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB72_3
	jmp	.LBB72_5
.LBB72_7:                               # %SearchOneTag.exit.i.i
	testl	%ebp, %ebp
	js	.LBB72_5
# BB#8:                                 # %if.then.i
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_cmsDeleteTagByPos
	jmp	.LBB72_9
.LBB72_5:                               # %if.else.i
	cmpl	$99, %eax
	movl	%eax, %ebp
	jbe	.LBB72_6
# BB#11:                                # %if.then.3
	movq	8(%rbx), %rdi
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.11, %edx
	movl	$100, %ecx
	xorl	%eax, %eax
	callq	cmsSignalError
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	jmp	.LBB72_10
.LBB72_6:                               # %if.end.i
	incl	%eax
	movl	%eax, 132(%rbx)
.LBB72_9:                               # %if.end.6
	movslq	%ebp, %rax
	movl	$0, 1736(%rbx,%rax,4)
	movl	%r15d, 136(%rbx,%rax,4)
	movl	%r14d, 536(%rbx,%rax,4)
	movq	$0, 2136(%rbx,%rax,8)
	movl	$0, 936(%rbx,%rax,4)
	movl	$0, 1336(%rbx,%rax,4)
	movq	8(%rbx), %rdi
	movq	3744(%rbx), %rsi
	callq	_cmsUnlockMutex
	movl	$1, %ebp
.LBB72_10:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	cmsLinkTag, .Lfunc_end72-cmsLinkTag
	.cfi_endproc

	.globl	cmsTagLinkedTo
	.align	16, 0x90
	.type	cmsTagLinkedTo,@function
cmsTagLinkedTo:                         # @cmsTagLinkedTo
	.cfi_startproc
# BB#0:                                 # %entry
	movl	132(%rdi), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB73_6
# BB#1:                                 # %for.body.i.i.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB73_2:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, 136(%rdi,%rcx,4)
	je	.LBB73_4
# BB#3:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB73_2 Depth=1
	incq	%rcx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jb	.LBB73_2
	jmp	.LBB73_6
.LBB73_4:                               # %SearchOneTag.exit.i
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB73_6
# BB#5:                                 # %if.end
	movslq	%ecx, %rax
	movl	536(%rdi,%rax,4), %eax
.LBB73_6:                               # %cleanup
	retq
.Lfunc_end73:
	.size	cmsTagLinkedTo, .Lfunc_end73-cmsTagLinkedTo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(AccessMode != ((void*)0))"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsio0.c"
	.size	.L.str.1, 21

	.type	.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem,@object # @__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem
.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem:
	.asciz	"cmsIOHANDLER *cmsOpenIOhandlerFromMem(cmsContext, void *, cmsUInt32Number, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromMem, 89

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Couldn't read profile from NULL pointer"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Couldn't allocate %ld bytes for profile"
	.size	.L.str.3, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unknown access mode '%c'"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(FileName != ((void*)0))"
	.size	.L.str.5, 25

	.type	.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile,@object # @__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile
.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile:
	.asciz	"cmsIOHANDLER *cmsOpenIOhandlerFromFile(cmsContext, const char *, const char *)"
	.size	.L__PRETTY_FUNCTION__.cmsOpenIOhandlerFromFile, 79

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"rb"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"File '%s' not found"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"wb"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Couldn't create '%s'"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"not an ICC profile, invalid signature"
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Too many tags (%d)"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"r"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"(hProfile != ((void*)0))"
	.size	.L.str.13, 25

	.type	.L__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler,@object # @__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler
.L__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler:
	.asciz	"cmsUInt32Number cmsSaveProfileToIOhandler(cmsHPROFILE, cmsIOHANDLER *)"
	.size	.L__PRETTY_FUNCTION__.cmsSaveProfileToIOhandler, 71

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"w"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(BytesNeeded != ((void*)0))"
	.size	.L.str.15, 28

	.type	.L__PRETTY_FUNCTION__.cmsSaveProfileToMem,@object # @__PRETTY_FUNCTION__.cmsSaveProfileToMem
.L__PRETTY_FUNCTION__.cmsSaveProfileToMem:
	.asciz	"cmsBool cmsSaveProfileToMem(cmsHPROFILE, void *, cmsUInt32Number *)"
	.size	.L__PRETTY_FUNCTION__.cmsSaveProfileToMem, 68

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unknown tag type '%s' found."
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Corrupted tag '%s'"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"'%s' Inconsistent number of items: expected %d, got %d"
	.size	.L.str.18, 55

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Unsupported tag '%x'"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Unsupported type '%s' for tag '%s'"
	.size	.L.str.20, 35

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Malformed struct in type '%s' for tag '%s'"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Read from memory error. Got %d bytes, block should be of %d bytes"
	.size	.L.str.22, 66

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Too few data; probably corrupted profile"
	.size	.L.str.23, 41

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Read error. Got %d bytes, block should be of %d bytes"
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Seek error; probably corrupted file"
	.size	.L.str.25, 36

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"(Internal) no handler for tag %x"
	.size	.L.str.26, 33

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Couldn't write type '%s'"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"(Icc != ((void*)0))"
	.size	.L.str.28, 20

	.type	.L__PRETTY_FUNCTION__._cmsDeleteTagByPos,@object # @__PRETTY_FUNCTION__._cmsDeleteTagByPos
.L__PRETTY_FUNCTION__._cmsDeleteTagByPos:
	.asciz	"void _cmsDeleteTagByPos(_cmsICCPROFILE *, int)"
	.size	.L__PRETTY_FUNCTION__._cmsDeleteTagByPos, 47

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"(i >= 0)"
	.size	.L.str.29, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
