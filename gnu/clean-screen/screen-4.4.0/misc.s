	.text
	.file	"misc.bc"
	.globl	SaveStr
	.align	16, 0x90
	.type	SaveStr,@function
SaveStr:                                # @SaveStr
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	movq	%rax, -24(%rbp)         # 8-byte Spill
# BB#3:                                 # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SaveStr, .Lfunc_end0-SaveStr
	.cfi_endproc

	.globl	SaveStrn
	.align	16, 0x90
	.type	SaveStrn,@function
SaveStrn:                               # @SaveStrn
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB1_2:                                # %if.else
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	bcopy
	movslq	-12(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
# BB#3:                                 # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SaveStrn, .Lfunc_end1-SaveStrn
	.cfi_endproc

	.globl	InStr
	.align	16, 0x90
	.type	InStr,@function
InStr:                                  # @InStr
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movq	$0, -8(%rbp)
.LBB2_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	InStr, .Lfunc_end2-InStr
	.cfi_endproc

	.globl	centerline
	.align	16, 0x90
	.type	centerline,@function
centerline:                             # @centerline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	flayer, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB3_4
# BB#3:                                 # %if.then
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB3_4:                                # %if.end
	movabsq	$mchar_blank, %rcx
	movl	$2, %eax
	movq	flayer, %rdx
	movl	8(%rdx), %esi
	subl	$1, %esi
	subl	-20(%rbp), %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-24(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -16(%rbp)
	movq	flayer, %rdi
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %r8d
	movl	-12(%rbp), %r9d
	movl	%eax, %edx
	callq	LPutStr
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	centerline, .Lfunc_end3-centerline
	.cfi_endproc

	.globl	leftline
	.align	16, 0x90
	.type	leftline,@function
leftline:                               # @leftline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	mchar_blank, %esi
	movl	%esi, -40(%rbp)
	movw	mchar_blank+4, %ax
	movw	%ax, -36(%rbp)
	movb	$36, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-32(%rbp), %ecx
	movq	flayer, %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB4_4
# BB#3:                                 # %if.then
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -32(%rbp)
.LBB4_4:                                # %if.end
	movq	flayer, %rdi
	movq	-8(%rbp), %rsi
	movl	-32(%rbp), %edx
	cmpq	$0, -24(%rbp)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB4_6
# BB#5:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	movabsq	$mchar_blank, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_7
.LBB4_7:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%r8d, %r8d
	movl	-12(%rbp), %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	LPutStr
	movl	-32(%rbp), %edx
	cmpl	-28(%rbp), %edx
	je	.LBB4_9
# BB#8:                                 # %if.then.6
	leaq	-40(%rbp), %rsi
	movq	flayer, %rdi
	movl	-32(%rbp), %edx
	movl	-12(%rbp), %ecx
	callq	LPutChar
.LBB4_9:                                # %if.end.7
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	leftline, .Lfunc_end4-leftline
	.cfi_endproc

	.globl	Filename
	.align	16, 0x90
	.type	Filename,@function
Filename:                               # @Filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_7
# BB#1:                                 # %if.then
	jmp	.LBB5_2
.LBB5_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_6
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	cmpl	$47, %edx
	jne	.LBB5_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_2
.LBB5_6:                                # %while.end
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.4
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Filename, .Lfunc_end5-Filename
	.cfi_endproc

	.globl	stripdev
	.align	16, 0x90
	.type	stripdev,@function
stripdev:                               # @stripdev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movabsq	$.L.str.1, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.end.3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	stripdev, .Lfunc_end6-stripdev
	.cfi_endproc

	.globl	xsignal
	.align	16, 0x90
	.type	xsignal,@function
xsignal:                                # @xsignal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	leaq	-328(%rbp), %rax
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -328(%rbp)
	addq	$8, %rax
	movq	%rax, %rdi
	callq	sigemptyset
	leaq	-328(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$268435456, %r8d        # imm = 0x10000000
	cmpl	$17, -12(%rbp)
	cmovel	%r8d, %ecx
	movl	%ecx, -192(%rbp)
	movl	-12(%rbp), %edi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	sigaction
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	$-1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	-176(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xsignal, .Lfunc_end7-xsignal
	.cfi_endproc

	.globl	xseteuid
	.align	16, 0x90
	.type	xseteuid,@function
xseteuid:                               # @xseteuid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	geteuid
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	callq	getuid
	cmpl	-4(%rbp), %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	callq	getuid
	movl	%eax, -8(%rbp)
.LBB8_4:                                # %if.end.5
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	setreuid
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.7
	callq	__errno_location
	movabsq	$.L.str.2, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB8_6:                                # %if.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xseteuid, .Lfunc_end8-xseteuid
	.cfi_endproc

	.globl	xsetegid
	.align	16, 0x90
	.type	xsetegid,@function
xsetegid:                               # @xsetegid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	getegid
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_6
.LBB9_2:                                # %if.end
	callq	getgid
	cmpl	-4(%rbp), %eax
	je	.LBB9_4
# BB#3:                                 # %if.then.3
	callq	getgid
	movl	%eax, -8(%rbp)
.LBB9_4:                                # %if.end.5
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	setregid
	cmpl	$0, %eax
	je	.LBB9_6
# BB#5:                                 # %if.then.7
	callq	__errno_location
	movabsq	$.L.str.3, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB9_6:                                # %if.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xsetegid, .Lfunc_end9-xsetegid
	.cfi_endproc

	.globl	bclear
	.align	16, 0x90
	.type	bclear,@function
bclear:                                 # @bclear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	blank, %rdi
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	bcopy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bclear, .Lfunc_end10-bclear
	.cfi_endproc

	.globl	Kill
	.align	16, 0x90
	.type	Kill,@function
Kill:                                   # @Kill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$2, -4(%rbp)
	jge	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	kill
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB11_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Kill, .Lfunc_end11-Kill
	.cfi_endproc

	.globl	closeallfiles
	.align	16, 0x90
	.type	closeallfiles,@function
closeallfiles:                          # @closeallfiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	getdtablesize
	movl	%eax, -8(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	cmpl	$2, %eax
	jle	.LBB12_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-8(%rbp), %edi
	callq	close
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_5:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	closeallfiles, .Lfunc_end12-closeallfiles
	.cfi_endproc

	.globl	UserContext
	.align	16, 0x90
	.type	UserContext,@function
UserContext:                            # @UserContext
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	UserContext, .Lfunc_end13-UserContext
	.cfi_endproc

	.globl	UserReturn
	.align	16, 0x90
	.type	UserReturn,@function
UserReturn:                             # @UserReturn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	movl	-4(%rbp), %edi
	movl	%edi, UserSTAT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	UserReturn, .Lfunc_end14-UserReturn
	.cfi_endproc

	.globl	UserStatus
	.align	16, 0x90
	.type	UserStatus,@function
UserStatus:                             # @UserStatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	movl	UserSTAT, %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	UserStatus, .Lfunc_end15-UserStatus
	.cfi_endproc

	.globl	AddXChar
	.align	16, 0x90
	.type	AddXChar,@function
AddXChar:                               # @AddXChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	cmpl	$32, -12(%rbp)
	jl	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$127, -12(%rbp)
	jne	.LBB16_3
.LBB16_2:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$94, (%rax)
	movl	-12(%rbp), %edx
	xorl	$64, %edx
	movb	%dl, %sil
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB16_7
.LBB16_3:                               # %if.else
	cmpl	$128, -12(%rbp)
	jl	.LBB16_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$92, (%rax)
	movl	-12(%rbp), %edx
	sarl	$6, %edx
	andl	$7, %edx
	addl	$48, %edx
	movb	%dl, %sil
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%sil, (%rax)
	movl	-12(%rbp), %edx
	sarl	$3, %edx
	andl	$7, %edx
	addl	$48, %edx
	movb	%dl, %sil
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%sil, (%rax)
	movl	-12(%rbp), %edx
	sarl	$0, %edx
	andl	$7, %edx
	addl	$48, %edx
	movb	%dl, %sil
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB16_6
.LBB16_5:                               # %if.else.19
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
.LBB16_6:                               # %if.end
	jmp	.LBB16_7
.LBB16_7:                               # %if.end.22
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	AddXChar, .Lfunc_end16-AddXChar
	.cfi_endproc

	.globl	AddXChars
	.align	16, 0x90
	.type	AddXChars,@function
AddXChars:                              # @AddXChars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB17_12
.LBB17_2:                               # %if.end
	movl	-20(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jae	.LBB17_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB17_5:                               # %land.end
                                        #   in Loop: Header=BB17_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_6
	jmp	.LBB17_11
.LBB17_6:                               # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB17_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB17_9
.LBB17_8:                               # %if.else
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsbl	(%rax), %esi
	callq	AddXChar
	movq	-40(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -40(%rbp)
.LBB17_9:                               # %if.end.9
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_10
.LBB17_10:                              # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_3
.LBB17_11:                              # %for.end
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
.LBB17_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	AddXChars, .Lfunc_end17-AddXChars
	.cfi_endproc

	.globl	sleep1000
	.align	16, 0x90
	.type	sleep1000,@function
sleep1000:                              # @sleep1000
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-24(%rbp), %r8
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	imull	$1000, %edx, %ecx       # imm = 0x3E8
	movslq	%ecx, %rsi
	movq	%rsi, -16(%rbp)
	movl	-28(%rbp), %edi         # 4-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	select
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	sleep1000, .Lfunc_end18-sleep1000
	.cfi_endproc

	.globl	xsetenv
	.align	16, 0x90
	.type	xsetenv,@function
xsetenv:                                # @xsetenv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	setenv
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	xsetenv, .Lfunc_end19-xsetenv
	.cfi_endproc

	.globl	_delay
	.align	16, 0x90
	.type	_delay,@function
_delay:                                 # @_delay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movswl	ospeed, %edi
	cmpl	$0, %edi
	jle	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	movswl	ospeed, %eax
	cmpl	$18, %eax
	jl	.LBB20_3
.LBB20_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_7
.LBB20_3:                               # %if.end
	movl	$2, %eax
	movswq	ospeed, %rcx
	movswl	_delay.osp2pad(,%rcx,2), %edx
	movl	%edx, -20(%rbp)
	movl	-8(%rbp), %edx
	movl	-20(%rbp), %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -28(%rbp)         # 4-byte Spill
	cltd
	movl	-24(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-28(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -8(%rbp)
.LBB20_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, %eax
	jle	.LBB20_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB20_4 Depth=1
	xorl	%edi, %edi
	callq	*-16(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB20_4
.LBB20_6:                               # %while.end
	movl	$0, -4(%rbp)
.LBB20_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_delay, .Lfunc_end20-_delay
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/dev/"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"setreuid"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"setregid"
	.size	.L.str.3, 9

	.type	UserSTAT,@object        # @UserSTAT
	.local	UserSTAT
	.comm	UserSTAT,4,4
	.type	_delay.osp2pad,@object  # @_delay.osp2pad
	.data
	.align	16
_delay.osp2pad:
	.short	0                       # 0x0
	.short	2000                    # 0x7d0
	.short	1333                    # 0x535
	.short	909                     # 0x38d
	.short	743                     # 0x2e7
	.short	666                     # 0x29a
	.short	500                     # 0x1f4
	.short	333                     # 0x14d
	.short	166                     # 0xa6
	.short	83                      # 0x53
	.short	55                      # 0x37
	.short	41                      # 0x29
	.short	20                      # 0x14
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	1                       # 0x1
	.size	_delay.osp2pad, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
