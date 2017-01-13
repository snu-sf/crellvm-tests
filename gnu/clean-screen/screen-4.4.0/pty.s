	.text
	.file	"pty.bc"
	.globl	InitPTY
	.align	16, 0x90
	.type	InitPTY,@function
InitPTY:                                # @InitPTY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_2
.LBB0_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InitPTY, .Lfunc_end0-InitPTY
	.cfi_endproc

	.globl	OpenPTY
	.align	16, 0x90
	.type	OpenPTY,@function
OpenPTY:                                # @OpenPTY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	$PtyName, %eax
	movl	%eax, %edi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	getpt
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB1_7
.LBB1_2:                                # %if.end
	movl	$17, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edi
	callq	ptsname
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB1_5
# BB#3:                                 # %lor.lhs.false
	movl	-20(%rbp), %edi
	callq	grantpt
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %lor.lhs.false.6
	movl	-20(%rbp), %edi
	callq	unlockpt
	cmpl	$0, %eax
	je	.LBB1_6
.LBB1_5:                                # %if.then.9
	movl	$17, %edi
	movq	-40(%rbp), %rsi
	callq	xsignal
	movl	-20(%rbp), %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %if.end.12
	movl	$17, %edi
	movq	-40(%rbp), %rsi
	callq	xsignal
	movabsq	$TtyName, %rdi
	movl	$32, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strncpy
	movl	-20(%rbp), %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	initmaster
	movabsq	$TtyName, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB1_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	OpenPTY, .Lfunc_end1-OpenPTY
	.cfi_endproc

	.align	16, 0x90
	.type	initmaster,@function
initmaster:                             # @initmaster
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	tcflush
	movl	%eax, -8(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	initmaster, .Lfunc_end2-initmaster
	.cfi_endproc

	.type	pty_preopen,@object     # @pty_preopen
	.bss
	.globl	pty_preopen
	.align	4
pty_preopen:
	.long	0                       # 0x0
	.size	pty_preopen, 4

	.type	PtyName,@object         # @PtyName
	.local	PtyName
	.comm	PtyName,32,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/dev/ptmx"
	.size	.L.str, 10

	.type	TtyName,@object         # @TtyName
	.local	TtyName
	.comm	TtyName,32,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
