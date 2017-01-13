	.text
	.file	"help.bc"
	.globl	exit_with_usage
	.align	16, 0x90
	.type	exit_with_usage,@function
exit_with_usage:                        # @exit_with_usage
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
	subq	$176, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.2, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.5, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.6, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.7, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.12, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.15, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.16, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.17, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.18, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.19, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.20, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.21, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.22, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.23, %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.24, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.25, %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.26, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.27, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.28, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.29, %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.30, %rdi
	movabsq	$version, %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.31, %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.32, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.33, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	cmpq	$0, -16(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.34, %rdi
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.35, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB0_3:                                # %if.end
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	exit_with_usage, .Lfunc_end0-exit_with_usage
	.cfi_endproc

	.globl	display_help
	.align	16, 0x90
	.type	display_help,@function
display_help:                           # @display_help
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
	subq	$832, %rsp              # imm = 0x340
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	flayer, %rsi
	cmpl	$6, 12(%rsi)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.36, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB1_54
.LBB1_2:                                # %if.end
	movl	$824, %edi              # imm = 0x338
	movabsq	$HelpLf, %rsi
	xorl	%edx, %edx
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.1
	jmp	.LBB1_54
.LBB1_4:                                # %if.end.2
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 44(%rax)
	movl	$0, -24(%rbp)
.LBB1_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$187, -24(%rbp)
	jg	.LBB1_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movslq	-24(%rbp), %rax
	movl	$0, -800(%rbp,%rax,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB1_9:                                # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$338, -28(%rbp)         # imm = 0x152
	jge	.LBB1_21
# BB#10:                                # %for.body.8
                                        #   in Loop: Header=BB1_9 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB1_12
# BB#11:                                # %if.then.12
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_20
.LBB1_12:                               # %if.end.13
                                        #   in Loop: Header=BB1_9 Depth=1
	movabsq	$noargs, %rax
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	-16(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB1_18
# BB#13:                                # %if.then.17
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$32, -28(%rbp)
	jle	.LBB1_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$127, -28(%rbp)
	jne	.LBB1_16
.LBB1_15:                               # %cond.true
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$3, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %cond.false
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$127, -28(%rbp)
	cmovgl	%ecx, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
.LBB1_17:                               # %cond.end
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	movslq	-24(%rbp), %rcx
	addl	-800(%rbp,%rcx,4), %eax
	movl	%eax, -800(%rbp,%rcx,4)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 48(%rax)
.LBB1_19:                               # %if.end.26
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %for.inc.27
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_9
.LBB1_21:                               # %for.end.29
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB1_22:                               # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$187, -24(%rbp)
	jg	.LBB1_31
# BB#23:                                # %for.body.32
                                        #   in Loop: Header=BB1_22 Depth=1
	movslq	-24(%rbp), %rax
	cmpl	$0, -800(%rbp,%rax,4)
	je	.LBB1_29
# BB#24:                                # %if.then.36
                                        #   in Loop: Header=BB1_22 Depth=1
	movabsq	$comms, %rax
	movslq	-24(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %edx
	movl	%edx, -40(%rbp)
	movl	-40(%rbp), %edx
	cmpl	-32(%rbp), %edx
	jle	.LBB1_26
# BB#25:                                # %if.then.42
                                        #   in Loop: Header=BB1_22 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB1_26:                               # %if.end.43
                                        #   in Loop: Header=BB1_22 Depth=1
	movslq	-24(%rbp), %rax
	movl	-800(%rbp,%rax,4), %ecx
	cmpl	-36(%rbp), %ecx
	jle	.LBB1_28
# BB#27:                                # %if.then.48
                                        #   in Loop: Header=BB1_22 Depth=1
	movslq	-24(%rbp), %rax
	movl	-800(%rbp,%rax,4), %ecx
	movl	%ecx, -36(%rbp)
.LBB1_28:                               # %if.end.51
                                        #   in Loop: Header=BB1_22 Depth=1
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movslq	%ecx, %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, 72(%rdi,%rsi,4)
.LBB1_29:                               # %if.end.55
                                        #   in Loop: Header=BB1_22 Depth=1
	jmp	.LBB1_30
.LBB1_30:                               # %for.inc.56
                                        #   in Loop: Header=BB1_22 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_22
.LBB1_31:                               # %for.end.58
	jmp	.LBB1_32
.LBB1_32:                               # %do.body
	jmp	.LBB1_33
.LBB1_33:                               # %do.end
	jmp	.LBB1_34
.LBB1_34:                               # %do.body.59
	jmp	.LBB1_35
.LBB1_35:                               # %do.end.60
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 32(%rcx)
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jle	.LBB1_37
# BB#36:                                # %if.then.64
	movl	$256, -36(%rbp)         # imm = 0x100
.LBB1_37:                               # %if.end.65
	movq	flayer, %rax
	movl	8(%rax), %eax
	movl	-32(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%eax, 24(%rsi)
	movq	-48(%rbp), %rsi
	cmpl	$0, 24(%rsi)
	jne	.LBB1_39
# BB#38:                                # %if.then.71
	callq	HelpAbort
	xorl	%edi, %edi
	movabsq	$.L.str.37, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB1_54
.LBB1_39:                               # %if.end.72
	movq	flayer, %rax
	movl	8(%rax), %ecx
	movl	-32(%rbp), %edx
	addl	-36(%rbp), %edx
	movq	-48(%rbp), %rax
	imull	24(%rax), %edx
	subl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	movl	%edx, -808(%rbp)        # 4-byte Spill
	cltd
	movl	-808(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%eax, 60(%rsi)
	movq	-48(%rbp), %rsi
	cmpl	$0, 60(%rsi)
	jg	.LBB1_41
# BB#40:                                # %if.then.82
	movq	-48(%rbp), %rax
	movl	$1, 60(%rax)
.LBB1_41:                               # %if.end.84
	jmp	.LBB1_42
.LBB1_42:                               # %do.body.85
	jmp	.LBB1_43
.LBB1_43:                               # %do.end.86
	movl	-32(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-48(%rbp), %rcx
	movl	32(%rcx), %eax
	movq	-48(%rbp), %rcx
	addl	24(%rcx), %eax
	subl	$1, %eax
	movq	-48(%rbp), %rcx
	cltd
	idivl	24(%rcx)
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
# BB#44:                                # %do.body.95
	jmp	.LBB1_45
.LBB1_45:                               # %do.end.96
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$5, %ecx
	movq	-48(%rbp), %rax
	movl	28(%rax), %edx
	addl	$2, %edx
	subl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 36(%rax)
.LBB1_46:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 36(%rax)
	jge	.LBB1_48
# BB#47:                                # %while.body
                                        #   in Loop: Header=BB1_46 Depth=1
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$5, %ecx
	movq	-48(%rbp), %rax
	addl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	jmp	.LBB1_46
.LBB1_48:                               # %while.end
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$5, %ecx
	movq	-48(%rbp), %rax
	movl	36(%rax), %edx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-816(%rbp), %rsi        # 8-byte Reload
	movl	%edx, 36(%rsi)
# BB#49:                                # %do.body.112
	jmp	.LBB1_50
.LBB1_50:                               # %do.end.113
	movl	$3, %eax
	movq	-48(%rbp), %rcx
	movl	36(%rcx), %edx
	movq	flayer, %rcx
	movl	12(%rcx), %esi
	movl	%eax, -820(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -824(%rbp)        # 4-byte Spill
	cltd
	movl	-820(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-824(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jg	.LBB1_52
# BB#51:                                # %lor.lhs.false.119
	movq	-48(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	48(%rax), %ecx
	jle	.LBB1_53
.LBB1_52:                               # %if.then.124
	movq	-48(%rbp), %rax
	movl	$1, 36(%rax)
.LBB1_53:                               # %if.end.126
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$2, %ecx
	movq	-48(%rbp), %rax
	addl	36(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	movq	flayer, %rax
	addl	12(%rax), %ecx
	subl	$6, %ecx
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	$5, %edx
	movl	%ecx, %eax
	movl	%edx, -828(%rbp)        # 4-byte Spill
	cltd
	movl	-828(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%eax, 40(%rsi)
	movq	flayer, %rsi
	movl	$0, 16(%rsi)
	movq	flayer, %rsi
	movl	12(%rsi), %eax
	subl	$1, %eax
	movq	flayer, %rsi
	movl	%eax, 20(%rsi)
	callq	helppage
	movl	%eax, -832(%rbp)        # 4-byte Spill
.LBB1_54:                               # %return
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end1:
	.size	display_help, .Lfunc_end1-display_help
	.cfi_endproc

	.align	16, 0x90
	.type	HelpAbort,@function
HelpAbort:                              # @HelpAbort
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
# BB#1:                                 # %do.body
	movq	flayer, %rax
	movq	%rax, -8(%rbp)
# BB#2:                                 # %do.body.1
	jmp	.LBB2_3
.LBB2_3:                                # %do.end
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %do.body.2
	jmp	.LBB2_5
.LBB2_5:                                # %do.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB2_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_6
.LBB2_9:                                # %for.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	movq	-8(%rbp), %rdi
	movq	%rdi, flayer
	movq	flayer, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB2_10:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_13
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#12:                                # %for.inc.12
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_10
.LBB2_13:                               # %for.end.14
	movq	-16(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#14:                                # %do.end.17
	callq	ExitOverlayPage
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	HelpAbort, .Lfunc_end2-HelpAbort
	.cfi_endproc

	.align	16, 0x90
	.type	helppage,@function
helppage:                               # @helppage
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
	subq	$656, %rsp              # imm = 0x290
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	16(%rax), %ecx
	jl	.LBB3_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB3_46
.LBB3_2:                                # %if.end
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	flayer, %rdi
	callq	LClearAll
	movabsq	$.L.str.40, %rsi
	leaq	-576(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movq	flayer, %rdx
	movl	12(%rdx), %ecx
	subl	$5, %ecx
	cltd
	idivl	%ecx
	addl	$1, %eax
	movq	-16(%rbp), %r8
	movl	40(%r8), %ecx
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	xorl	%esi, %esi
	leaq	-576(%rbp), %rdi
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	centerline
	movl	$2, -24(%rbp)
	movb	$0, -309(%rbp)
	movb	$0, -304(%rbp)
	movq	flayer, %rdi
	cmpq	$0, (%rdi)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	flayer, %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_5
# BB#4:                                 # %if.then.9
	leaq	-304(%rbp), %rdi
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	296(%rax), %esi
	callq	add_key_to_buf
	leaq	-309(%rbp), %rdi
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	292(%rax), %esi
	callq	add_key_to_buf
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	leaq	-304(%rbp), %rdi
	leaq	-309(%rbp), %rax
	movl	$.L.str.41, %ecx
	movl	%ecx, %esi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strcpy
	movl	$.L.str.41, %ecx
	movl	%ecx, %esi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	strcpy
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB3_6:                                # %if.end.21
	jmp	.LBB3_7
.LBB3_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
                                        #       Child Loop BB3_20 Depth 3
                                        #     Child Loop BB3_33 Depth 2
	movl	-24(%rbp), %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB3_45
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1, 20(%rax)
	jge	.LBB3_13
# BB#9:                                 # %if.then.27
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$ktab, %rax
	cmpq	%rax, -584(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.29
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.42, %rsi
	leaq	-304(%rbp), %r8
	leaq	-309(%rbp), %rax
	leaq	-576(%rbp), %rdi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.35
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.43, %rsi
	leaq	-576(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB3_12:                               # %if.end.38
                                        #   in Loop: Header=BB3_7 Depth=1
	leaq	-576(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	centerline
	movq	-16(%rbp), %rdi
	movl	20(%rdi), %esi
	addl	$1, %esi
	movl	%esi, 20(%rdi)
	jmp	.LBB3_43
.LBB3_13:                               # %if.else.41
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 20(%rax)
	jl	.LBB3_30
# BB#14:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	subl	$2, %ecx
	movq	-16(%rbp), %rax
	cmpl	28(%rax), %ecx
	jge	.LBB3_30
# BB#15:                                # %if.then.48
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$0, -36(%rbp)
	movl	$0, -20(%rbp)
.LBB3_16:                               # %for.cond.49
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_20 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	24(%rdx), %eax
	movb	%cl, -625(%rbp)         # 1-byte Spill
	jge	.LBB3_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB3_16 Depth=2
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	imull	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	subl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpl	32(%rax), %ecx
	setl	%sil
	movb	%sil, -625(%rbp)        # 1-byte Spill
.LBB3_18:                               # %land.end
                                        #   in Loop: Header=BB3_16 Depth=2
	movb	-625(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_19
	jmp	.LBB3_29
.LBB3_19:                               # %for.body.56
                                        #   in Loop: Header=BB3_16 Depth=2
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	cmpl	$0, -20(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	72(%rdi,%rax,4), %ecx
	movl	%ecx, -28(%rbp)
	movb	$0, -304(%rbp)
	movl	$0, -32(%rbp)
.LBB3_20:                               # %for.cond.61
                                        #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$338, -32(%rbp)         # imm = 0x152
	jge	.LBB3_27
# BB#21:                                # %for.body.63
                                        #   in Loop: Header=BB3_20 Depth=3
	movslq	-32(%rbp), %rax
	shlq	$5, %rax
	addq	-584(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB3_25
# BB#22:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB3_20 Depth=3
	movabsq	$noargs, %rax
	movslq	-32(%rbp), %rcx
	shlq	$5, %rcx
	addq	-584(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB3_25
# BB#23:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB3_20 Depth=3
	leaq	-304(%rbp), %rdi
	callq	strlen
	cmpq	$249, %rax
	jae	.LBB3_25
# BB#24:                                # %if.then.75
                                        #   in Loop: Header=BB3_20 Depth=3
	movabsq	$.L.str.44, %rsi
	leaq	-304(%rbp), %rdi
	callq	strcat
	leaq	-304(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	add_key_to_buf
.LBB3_25:                               # %if.end.79
                                        #   in Loop: Header=BB3_20 Depth=3
	jmp	.LBB3_26
.LBB3_26:                               # %for.inc
                                        #   in Loop: Header=BB3_20 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_20
.LBB3_27:                               # %for.end
                                        #   in Loop: Header=BB3_16 Depth=2
	movabsq	$comms, %rax
	movslq	-28(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	64(%rax), %esi
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	PadStr
	leaq	-304(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	68(%rax), %esi
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	PadStr
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
# BB#28:                                # %for.inc.88
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_16
.LBB3_29:                               # %for.end.90
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
	jmp	.LBB3_42
.LBB3_30:                               # %if.else.93
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	subl	$2, %ecx
	movq	-16(%rbp), %rax
	subl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	36(%rax), %ecx
	jl	.LBB3_40
# BB#31:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	subl	$2, %ecx
	movq	-16(%rbp), %rax
	subl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	36(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	48(%rax), %ecx
	jge	.LBB3_40
# BB#32:                                # %if.then.107
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_33
.LBB3_33:                               # %while.cond
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movslq	44(%rcx), %rcx
	shlq	$5, %rcx
	addq	-584(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -28(%rbp)
	cmpl	$-1, %edx
	movb	%al, -641(%rbp)         # 1-byte Spill
	je	.LBB3_35
# BB#34:                                # %lor.rhs
                                        #   in Loop: Header=BB3_33 Depth=2
	movabsq	$noargs, %rax
	movq	-16(%rbp), %rcx
	movslq	44(%rcx), %rcx
	shlq	$5, %rcx
	addq	-584(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	sete	%dl
	movb	%dl, -641(%rbp)         # 1-byte Spill
.LBB3_35:                               # %lor.end
                                        #   in Loop: Header=BB3_33 Depth=2
	movb	-641(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_36
	jmp	.LBB3_39
.LBB3_36:                               # %while.body
                                        #   in Loop: Header=BB3_33 Depth=2
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
	cmpl	$338, %ecx              # imm = 0x152
	jl	.LBB3_38
# BB#37:                                # %if.then.121
	movl	$-1, -4(%rbp)
	jmp	.LBB3_46
.LBB3_38:                               # %if.end.122
                                        #   in Loop: Header=BB3_33 Depth=2
	jmp	.LBB3_33
.LBB3_39:                               # %while.end
                                        #   in Loop: Header=BB3_7 Depth=1
	leaq	-304(%rbp), %rdi
	movb	$0, -304(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %esi
	callq	add_key_to_buf
	movl	$5, %esi
	xorl	%edx, %edx
	leaq	-304(%rbp), %rdi
	movl	-24(%rbp), %ecx
	callq	PadStr
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movslq	%ecx, %rax
	shlq	$5, %rax
	addq	-584(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	AddAction
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.133
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
.LBB3_41:                               # %if.end.136
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_42
.LBB3_42:                               # %if.end.137
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_43
.LBB3_43:                               # %if.end.138
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_44
.LBB3_44:                               # %for.inc.139
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_7
.LBB3_45:                               # %for.end.141
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.46, %rcx
	leaq	-576(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	20(%rdx), %r8d
	movq	-16(%rbp), %rdx
	cmpl	16(%rdx), %r8d
	cmovlq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-576(%rbp), %rdi
	movq	flayer, %rcx
	movl	12(%rcx), %r8d
	subl	$2, %r8d
	movl	%r8d, %esi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	centerline
	movq	flayer, %rdi
	movq	flayer, %rcx
	movl	16(%rcx), %esi
	movq	flayer, %rcx
	movl	20(%rcx), %edx
	callq	LGotoPos
	movl	$0, -4(%rbp)
.LBB3_46:                               # %return
	movl	-4(%rbp), %eax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end3:
	.size	helppage, .Lfunc_end3-helppage
	.cfi_endproc

	.globl	display_copyright
	.align	16, 0x90
	.type	display_copyright,@function
display_copyright:                      # @display_copyright
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
	subq	$16, %rsp
	movq	flayer, %rax
	cmpl	$10, 8(%rax)
	jl	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movq	flayer, %rax
	cmpl	$5, 12(%rax)
	jge	.LBB4_3
.LBB4_2:                                # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.38, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB4_6
.LBB4_3:                                # %if.end
	movl	$32, %edi
	movabsq	$CopyrightLf, %rsi
	xorl	%edx, %edx
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB4_5
# BB#4:                                 # %if.then.2
	jmp	.LBB4_6
.LBB4_5:                                # %if.end.3
	movabsq	$cpmsg, %rax
	movq	flayer, %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	flayer, %rax
	movl	$0, 16(%rax)
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	$1, %edx
	movq	flayer, %rax
	movl	%edx, 20(%rax)
	callq	copypage
.LBB4_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	display_copyright, .Lfunc_end4-display_copyright
	.cfi_endproc

	.align	16, 0x90
	.type	copypage,@function
copypage:                               # @copypage
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
	subq	$128, %rsp
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	xorl	%esi, %esi
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	flayer, %rdi
	callq	LClearAll
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-120(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rdi
	movq	%rax, 24(%rdi)
.LBB5_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_12 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -121(%rbp)         # 1-byte Spill
	je	.LBB5_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-24(%rbp), %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$3, %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -121(%rbp)        # 1-byte Spill
.LBB5_5:                                # %land.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_6
	jmp	.LBB5_35
.LBB5_6:                                # %while.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB5_7:                                # %while.cond.3
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB5_9
# BB#8:                                 # %while.body.7
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_7
.LBB5_9:                                # %while.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$.L.str.50, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB5_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$version, %rax
	movq	-8(%rbp), %rcx
	addq	$2, %rcx
	movq	-120(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_11:                               # %if.end
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %while.cond.11
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -122(%rbp)         # 1-byte Spill
	je	.LBB5_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$32, %eax
	movb	%cl, -122(%rbp)         # 1-byte Spill
	je	.LBB5_15
# BB#14:                                # %land.rhs.17
                                        #   in Loop: Header=BB5_12 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	movb	%dl, -122(%rbp)         # 1-byte Spill
.LBB5_15:                               # %land.end.21
                                        #   in Loop: Header=BB5_12 Depth=2
	movb	-122(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_16
	jmp	.LBB5_17
.LBB5_16:                               # %while.body.22
                                        #   in Loop: Header=BB5_12 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_12
.LBB5_17:                               # %while.end.24
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %edx
	movq	flayer, %rax
	movl	8(%rax), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	jle	.LBB5_19
# BB#18:                                # %if.then.29
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)
.LBB5_19:                               # %if.end.32
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB5_22
# BB#20:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	flayer, %rcx
	movl	8(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jl	.LBB5_22
# BB#21:                                # %if.then.39
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$0, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_3
.LBB5_22:                               # %if.end.40
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.42
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$mchar_blank, %rsi
	movq	flayer, %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	LPutChar
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB5_24:                               # %if.end.44
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB5_26
# BB#25:                                # %if.then.46
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$mchar_blank, %rcx
	movq	flayer, %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	LPutStr
.LBB5_26:                               # %if.end.47
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movsbl	(%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB5_29
# BB#27:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_29
# BB#28:                                # %if.then.56
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-120(%rbp), %rax
	movq	$0, 8(%rax)
.LBB5_29:                               # %if.end.59
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB5_31
# BB#30:                                # %if.then.63
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$0, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB5_31:                               # %if.end.65
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB5_33
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB5_34
.LBB5_33:                               # %if.then.72
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.LBB5_34:                               # %if.end.74
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_3
.LBB5_35:                               # %while.end.75
	jmp	.LBB5_36
.LBB5_36:                               # %while.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB5_38
# BB#37:                                # %while.body.80
                                        #   in Loop: Header=BB5_36 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_36
.LBB5_38:                               # %while.end.82
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.46, %rcx
	leaq	-112(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %r8d
	cmpl	$0, %r8d
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-112(%rbp), %rdi
	movq	flayer, %rcx
	movl	12(%rcx), %r8d
	subl	$2, %r8d
	movl	%r8d, %esi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	centerline
	movq	-8(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	flayer, %rdi
	movq	flayer, %rcx
	movl	16(%rcx), %esi
	movq	flayer, %rcx
	movl	20(%rcx), %edx
	callq	LGotoPos
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	copypage, .Lfunc_end5-copypage
	.cfi_endproc

	.globl	display_bindkey
	.align	16, 0x90
	.type	display_bindkey,@function
display_bindkey:                        # @display_bindkey
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	flayer, %rsi
	cmpl	$6, 12(%rsi)
	jge	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.39, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB6_13
.LBB6_2:                                # %if.end
	movl	$32, %edi
	movabsq	$BindkeyLf, %rsi
	xorl	%edx, %edx
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.1
	jmp	.LBB6_13
.LBB6_4:                                # %if.end.2
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	kmap_extn, %ecx
	addl	$104, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB6_8:                                # %if.end.8
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_5
.LBB6_10:                               # %for.end
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	movl	-32(%rbp), %ecx
	movq	flayer, %rax
	addl	12(%rax), %ecx
	subl	$6, %ecx
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	$5, %edx
	movl	%ecx, %eax
	movl	%edx, -36(%rbp)         # 4-byte Spill
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-24(%rbp), %rsi
	movl	%eax, 28(%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, 28(%rsi)
	jne	.LBB6_12
# BB#11:                                # %if.then.16
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
.LBB6_12:                               # %if.end.18
	movq	flayer, %rax
	movl	$0, 16(%rax)
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movq	flayer, %rax
	movl	%ecx, 20(%rax)
	callq	bindkeypage
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	display_bindkey, .Lfunc_end6-display_bindkey
	.cfi_endproc

	.align	16, 0x90
	.type	bindkeypage,@function
bindkeypage:                            # @bindkeypage
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
	subq	$400, %rsp              # imm = 0x190
	xorl	%esi, %esi
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	flayer, %rdi
	callq	LClearAll
	movabsq	$.L.str.51, %rsi
	leaq	-272(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	28(%rax), %r8d
	movb	$0, %al
	callq	sprintf
	xorl	%esi, %esi
	leaq	-272(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	centerline
	movl	$2, -284(%rbp)
	movq	-8(%rbp), %rdx
	movl	16(%rdx), %eax
	movl	%eax, -280(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
                                        #     Child Loop BB7_36 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-280(%rbp), %eax
	movl	kmap_extn, %edx
	addl	$104, %edx
	cmpl	%edx, %eax
	movb	%cl, -325(%rbp)         # 1-byte Spill
	jge	.LBB7_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-284(%rbp), %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$3, %edx
	cmpl	%edx, %eax
	setl	%sil
	movb	%sil, -325(%rbp)        # 1-byte Spill
.LBB7_3:                                # %land.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	-325(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_4
	jmp	.LBB7_42
.LBB7_4:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.52, %rax
	leaq	-272(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	%rax, -304(%rbp)
	cmpl	$82, -280(%rbp)
	jge	.LBB7_11
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-280(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rax
	addq	8(%rcx), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_41
.LBB7_7:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$term, %rax
	movq	-320(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -320(%rbp)
	movb	$58, (%rcx)
	movl	$58, -276(%rbp)
	movl	-280(%rbp), %esi
	addl	$106, %esi
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.LBB7_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-312(%rbp), %rdi
	callq	strlen
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB7_10
.LBB7_10:                               # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -288(%rbp)
	jmp	.LBB7_30
.LBB7_11:                               # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$104, -280(%rbp)
	jge	.LBB7_18
# BB#12:                                # %if.then.13
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-280(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rax
	addq	8(%rcx), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_41
.LBB7_14:                               # %if.end.21
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$term, %rax
	movq	-320(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -320(%rbp)
	movb	$58, (%rcx)
	movl	$58, -276(%rbp)
	movl	-280(%rbp), %esi
	addl	$84, %esi
	movslq	%esi, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.LBB7_16
# BB#15:                                # %cond.true.28
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-312(%rbp), %rdi
	callq	strlen
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false.30
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB7_17
.LBB7_17:                               # %cond.end.31
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.53, %rcx
	movl	%eax, %edx
	movl	%edx, -288(%rbp)
	movq	%rcx, -304(%rbp)
	jmp	.LBB7_29
.LBB7_18:                               # %if.else.34
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	kmap_exts, %rax
	movl	-280(%rbp), %ecx
	subl	$104, %ecx
	movslq	%ecx, %rdx
	imulq	$112, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -276(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%ecx, -288(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16384, %ecx            # imm = 0x4000
	cmpl	$0, %ecx
	je	.LBB7_20
# BB#19:                                # %if.then.40
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.54, %rax
	movq	%rax, -304(%rbp)
.LBB7_20:                               # %if.end.41
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$dmtab, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB7_22
# BB#21:                                # %cond.true.45
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB7_26
.LBB7_22:                               # %cond.false.46
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$mmtab, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB7_24
# BB#23:                                # %cond.true.50
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB7_25
.LBB7_24:                               # %cond.false.51
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB7_25:                               # %cond.end.52
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB7_26:                               # %cond.end.54
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_28
# BB#27:                                # %if.then.59
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_41
.LBB7_28:                               # %if.end.60
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_29
.LBB7_29:                               # %if.end.61
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_30
.LBB7_30:                               # %if.end.62
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_31
.LBB7_31:                               # %while.cond
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-288(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -288(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_33
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB7_31 Depth=2
	movq	-320(%rbp), %rdi
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)
	movzbl	(%rax), %esi
	callq	AddXChar
	movq	-320(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -320(%rbp)
	jmp	.LBB7_31
.LBB7_33:                               # %while.end
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$0, -276(%rbp)
	je	.LBB7_35
# BB#34:                                # %if.then.71
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movq	-320(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -320(%rbp)
	movb	%cl, (%rdx)
.LBB7_35:                               # %if.end.74
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movb	$32, (%rax)
.LBB7_36:                               # %while.cond.76
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-272(%rbp), %rax
	movq	-320(%rbp), %rcx
	addq	$15, %rax
	cmpq	%rax, %rcx
	jae	.LBB7_38
# BB#37:                                # %while.body.81
                                        #   in Loop: Header=BB7_36 Depth=2
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)
	movb	$32, (%rax)
	jmp	.LBB7_36
.LBB7_38:                               # %while.end.83
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.55, %rsi
	movq	-320(%rbp), %rdi
	movq	-304(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-272(%rbp), %rdx
	movq	-320(%rbp), %rsi
	addq	$7, %rsi
	movq	%rsi, -320(%rbp)
	movq	-320(%rbp), %rsi
	subq	%rdx, %rsi
	movq	flayer, %rdx
	movl	8(%rdx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rsi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jle	.LBB7_40
# BB#39:                                # %if.then.91
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rax
	movb	$36, -272(%rbp,%rax)
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movb	$0, -272(%rbp,%rax)
.LBB7_40:                               # %if.end.100
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%edx, %edx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	movl	%edx, -368(%rbp)        # 4-byte Spill
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movl	-284(%rbp), %ecx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-368(%rbp), %edx        # 4-byte Reload
	callq	PadStr
	leaq	-272(%rbp), %rdi
	movq	-296(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	-284(%rbp), %edx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	AddAction
	movl	-284(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -284(%rbp)
.LBB7_41:                               # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB7_1
.LBB7_42:                               # %for.end
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.46, %rcx
	leaq	-272(%rbp), %rdi
	movl	-284(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -284(%rbp)
	movl	-280(%rbp), %edx
	movq	-8(%rbp), %r8
	movl	%edx, 20(%r8)
	movq	-8(%rbp), %r8
	movl	24(%r8), %edx
	movq	-8(%rbp), %r8
	cmpl	28(%r8), %edx
	cmovlq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-272(%rbp), %rdi
	movq	flayer, %rcx
	movl	12(%rcx), %r9d
	subl	$2, %r9d
	movl	%r9d, %esi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	centerline
	movq	flayer, %rdi
	movq	flayer, %rcx
	movl	16(%rcx), %esi
	movq	flayer, %rcx
	movl	20(%rcx), %edx
	callq	LGotoPos
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end7:
	.size	bindkeypage, .Lfunc_end7-bindkeypage
	.cfi_endproc

	.globl	ZmodemPage
	.align	16, 0x90
	.type	ZmodemPage,@function
ZmodemPage:                             # @ZmodemPage
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
	movl	$1, %eax
	movabsq	$ZmodemLf, %rsi
	movl	%eax, %edi
	movl	%eax, %edx
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	xorl	%esi, %esi
	movl	$32, %eax
	movq	flayer, %rdi
	cmpl	$32, 8(%rdi)
	cmovgl	%eax, %esi
	movq	flayer, %rdi
	movl	%esi, 16(%rdi)
	movq	flayer, %rdi
	movl	$0, 20(%rdi)
.LBB8_3:                                # %return
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ZmodemPage, .Lfunc_end8-ZmodemPage
	.cfi_endproc

	.align	16, 0x90
	.type	HelpProcess,@function
HelpProcess:                            # @HelpProcess
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jne	.LBB9_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%cl
	movb	%cl, -21(%rbp)          # 1-byte Spill
.LBB9_3:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_11
.LBB9_4:                                # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$10, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, -32(%rbp)         # 4-byte Spill
	je	.LBB9_8
	jmp	.LBB9_14
.LBB9_14:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB9_8
	jmp	.LBB9_15
.LBB9_15:                               # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB9_9
	jmp	.LBB9_5
.LBB9_5:                                # %sw.bb
                                        #   in Loop: Header=BB9_1 Depth=1
	callq	helppage
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_10
.LBB9_7:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %sw.bb.3
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, -20(%rbp)
	jmp	.LBB9_10
.LBB9_9:                                # %sw.default
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_10
.LBB9_10:                               # %sw.epilog
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	addl	$-1, %edx
	movl	%edx, (%rax)
	jmp	.LBB9_1
.LBB9_11:                               # %while.end
	cmpl	$0, -20(%rbp)
	je	.LBB9_13
# BB#12:                                # %if.then.5
	callq	HelpAbort
.LBB9_13:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	HelpProcess, .Lfunc_end9-HelpProcess
	.cfi_endproc

	.align	16, 0x90
	.type	HelpRedisplayLine,@function
HelpRedisplayLine:                      # @HelpRedisplayLine
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB10_2
# BB#1:                                 # %if.then
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 44(%rax)
	callq	helppage
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB10_7
.LBB10_2:                               # %if.end
	cmpl	$0, -4(%rbp)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.3
	jmp	.LBB10_7
.LBB10_5:                               # %if.end.4
	cmpl	$0, -16(%rbp)
	jne	.LBB10_7
# BB#6:                                 # %if.then.5
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	$0, (%rsp)
	callq	LClearArea
.LBB10_7:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	HelpRedisplayLine, .Lfunc_end10-HelpRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	add_key_to_buf,@function
add_key_to_buf:                         # @add_key_to_buf
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	$.L.str.48, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB11_9
.LBB11_2:                               # %if.else
	cmpl	$32, -12(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movl	$.L.str.49, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_4:                               # %if.else.5
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jl	.LBB11_6
# BB#5:                                 # %if.then.7
	movabsq	$term, %rax
	movl	-12(%rbp), %ecx
	subl	$256, %ecx              # imm = 0x100
	addl	$106, %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdx
	movb	$58, (%rdx)
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %rdx
	movb	(%rdx), %dil
	movq	-8(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movb	1(%rax), %dil
	movq	-8(%rbp), %rax
	movb	%dil, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$58, 3(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 4(%rax)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.18
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	AddXChar
	movslq	%eax, %rdi
	movq	-8(%rbp), %rcx
	movb	$0, (%rcx,%rdi)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.22
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	add_key_to_buf, .Lfunc_end11-add_key_to_buf
	.cfi_endproc

	.align	16, 0x90
	.type	PadStr,@function
PadStr:                                 # @PadStr
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jle	.LBB12_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB12_2:                               # %if.end
	movabsq	$mchar_blank, %rcx
	movq	flayer, %rdi
	movq	-8(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	LPutStr
	movl	-24(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jge	.LBB12_4
# BB#3:                                 # %if.then.4
	movabsq	$mchar_blank, %rcx
	movq	flayer, %rdi
	movq	blank, %rsi
	movl	-12(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-16(%rbp), %edx
	addl	-24(%rbp), %edx
	movl	-20(%rbp), %r9d
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-28(%rbp), %r8d         # 4-byte Reload
	callq	LPutStr
.LBB12_4:                               # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	PadStr, .Lfunc_end12-PadStr
	.cfi_endproc

	.align	16, 0x90
	.type	AddAction,@function
AddAction:                              # @AddAction
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	mchar_blank, %edx
	movl	%edx, -328(%rbp)
	movw	mchar_blank+4, %ax
	movw	%ax, -324(%rbp)
	movb	$36, -328(%rbp)
	movq	flayer, %rdi
	movl	8(%rdi), %edx
	subl	$1, %edx
	subl	-12(%rbp), %edx
	movl	%edx, -320(%rbp)
	cmpl	$0, -320(%rbp)
	jg	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_36
.LBB13_2:                               # %if.end
	movabsq	$comms, %rax
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %edx
	movl	%edx, -280(%rbp)
	movl	-280(%rbp), %edx
	addl	$1, %edx
	cmpl	-320(%rbp), %edx
	jle	.LBB13_4
# BB#3:                                 # %if.then.4
	movl	-320(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -280(%rbp)
.LBB13_4:                               # %if.end.6
	movabsq	$comms, %rax
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movl	-280(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	PadStr
	movl	-280(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	movl	-280(%rbp), %ecx
	addl	$1, %ecx
	movl	-320(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -320(%rbp)
	movq	flayer, %rdi
	cmpl	$0, -320(%rbp)
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	je	.LBB13_6
# BB#5:                                 # %cond.true
	movabsq	$mchar_blank, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB13_7
.LBB13_6:                               # %cond.false
	leaq	-328(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB13_7
.LBB13_7:                               # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	movl	-16(%rbp), %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-348(%rbp), %ecx        # 4-byte Reload
	callq	LPutChar
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)
.LBB13_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_18 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -304(%rbp)
	movb	%cl, -349(%rbp)         # 1-byte Spill
	je	.LBB13_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -349(%rbp)         # 1-byte Spill
.LBB13_10:                              # %land.end
                                        #   in Loop: Header=BB13_8 Depth=1
	movb	-349(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_11
	jmp	.LBB13_36
.LBB13_11:                              # %while.body
                                        #   in Loop: Header=BB13_8 Depth=1
	leaq	-272(%rbp), %rax
	movl	$0, -276(%rbp)
	movq	%rax, -288(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -312(%rbp)
	movl	(%rax), %edx
	movl	%edx, -316(%rbp)
	cmpl	$0, -316(%rbp)
	je	.LBB13_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$32, %esi
	movq	-296(%rbp), %rdi
	callq	index
	cmpq	$0, %rax
	je	.LBB13_17
.LBB13_13:                              # %if.then.21
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$39, %esi
	movq	-296(%rbp), %rdi
	callq	index
	cmpq	$0, %rax
	je	.LBB13_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$34, -276(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -288(%rbp)
	movb	$34, (%rax)
	jmp	.LBB13_16
.LBB13_15:                              # %if.else
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	$39, -276(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -288(%rbp)
	movb	$39, (%rax)
.LBB13_16:                              # %if.end.28
                                        #   in Loop: Header=BB13_8 Depth=1
	jmp	.LBB13_17
.LBB13_17:                              # %if.end.29
                                        #   in Loop: Header=BB13_8 Depth=1
	jmp	.LBB13_18
.LBB13_18:                              # %while.cond.30
                                        #   Parent Loop BB13_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-316(%rbp), %eax
	movl	%eax, %edx
	addl	$-1, %edx
	movl	%edx, -316(%rbp)
	cmpl	$0, %eax
	movb	%cl, -350(%rbp)         # 1-byte Spill
	je	.LBB13_20
# BB#19:                                # %land.rhs.32
                                        #   in Loop: Header=BB13_18 Depth=2
	leaq	-272(%rbp), %rax
	movq	-288(%rbp), %rcx
	addq	$250, %rax
	cmpq	%rax, %rcx
	setb	%dl
	movb	%dl, -350(%rbp)         # 1-byte Spill
.LBB13_20:                              # %land.end.36
                                        #   in Loop: Header=BB13_18 Depth=2
	movb	-350(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_21
	jmp	.LBB13_22
.LBB13_21:                              # %while.body.37
                                        #   in Loop: Header=BB13_18 Depth=2
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -296(%rbp)
	movzbl	(%rax), %esi
	callq	AddXChar
	movq	-288(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -288(%rbp)
	jmp	.LBB13_18
.LBB13_22:                              # %while.end
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpl	$0, -276(%rbp)
	je	.LBB13_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-276(%rbp), %eax
	movb	%al, %cl
	movq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -288(%rbp)
	movb	%cl, (%rdx)
.LBB13_24:                              # %if.end.46
                                        #   in Loop: Header=BB13_8 Depth=1
	leaq	-272(%rbp), %rax
	movq	-288(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	addq	$1, %rcx
	movslq	-320(%rbp), %rax
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -320(%rbp)
	cmpl	$0, %edx
	jge	.LBB13_30
# BB#25:                                # %if.then.54
	leaq	-272(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-320(%rbp), %rax
	addq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -320(%rbp)
	cmpl	$0, -320(%rbp)
	jle	.LBB13_27
# BB#26:                                # %if.then.64
	leaq	-272(%rbp), %rdi
	movl	-320(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	PadStr
.LBB13_27:                              # %if.end.66
	cmpl	$0, -320(%rbp)
	jne	.LBB13_29
# BB#28:                                # %if.then.69
	leaq	-328(%rbp), %rsi
	movq	flayer, %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	LPutChar
.LBB13_29:                              # %if.end.70
	jmp	.LBB13_36
.LBB13_30:                              # %if.end.71
                                        #   in Loop: Header=BB13_8 Depth=1
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-364(%rbp), %ecx        # 4-byte Reload
	callq	PadStr
	leaq	-272(%rbp), %rdi
	callq	strlen
	movslq	-12(%rbp), %rdi
	addq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -12(%rbp)
	movq	-304(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_35
# BB#31:                                # %if.then.83
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	flayer, %rdi
	cmpl	$0, -320(%rbp)
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	je	.LBB13_33
# BB#32:                                # %cond.true.85
                                        #   in Loop: Header=BB13_8 Depth=1
	movabsq	$mchar_blank, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB13_34
.LBB13_33:                              # %cond.false.86
                                        #   in Loop: Header=BB13_8 Depth=1
	leaq	-328(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB13_34
.LBB13_34:                              # %cond.end.87
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	movl	-16(%rbp), %edx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-388(%rbp), %ecx        # 4-byte Reload
	callq	LPutChar
.LBB13_35:                              # %if.end.90
                                        #   in Loop: Header=BB13_8 Depth=1
	jmp	.LBB13_8
.LBB13_36:                              # %while.end.91
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end13:
	.size	AddAction, .Lfunc_end13-AddAction
	.cfi_endproc

	.align	16, 0x90
	.type	CopyrightProcess,@function
CopyrightProcess:                       # @CopyrightProcess
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	flayer, %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB14_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB14_3:                               # %land.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_4
	jmp	.LBB14_11
.LBB14_4:                               # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$10, %edx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB14_8
	jmp	.LBB14_12
.LBB14_12:                              # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB14_8
	jmp	.LBB14_13
.LBB14_13:                              # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB14_9
	jmp	.LBB14_5
.LBB14_5:                               # %sw.bb
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB14_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	callq	copypage
	jmp	.LBB14_10
.LBB14_7:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_8
.LBB14_8:                               # %sw.bb.2
                                        #   in Loop: Header=BB14_1 Depth=1
	callq	CopyrightAbort
	movl	$1, -20(%rbp)
	jmp	.LBB14_10
.LBB14_9:                               # %sw.default
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_10
.LBB14_10:                              # %sw.epilog
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	addl	$-1, %edx
	movl	%edx, (%rax)
	jmp	.LBB14_1
.LBB14_11:                              # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	CopyrightProcess, .Lfunc_end14-CopyrightProcess
	.cfi_endproc

	.align	16, 0x90
	.type	CopyrightAbort,@function
CopyrightAbort:                         # @CopyrightAbort
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
	subq	$32, %rsp
# BB#1:                                 # %do.body
	movq	flayer, %rax
	movq	%rax, -8(%rbp)
# BB#2:                                 # %do.body.1
	jmp	.LBB15_3
.LBB15_3:                               # %do.end
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %do.body.2
	jmp	.LBB15_5
.LBB15_5:                               # %do.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB15_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_6
.LBB15_9:                               # %for.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	movq	-8(%rbp), %rdi
	movq	%rdi, flayer
	movq	flayer, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB15_10:                              # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_13
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB15_10 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#12:                                # %for.inc.12
                                        #   in Loop: Header=BB15_10 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_10
.LBB15_13:                              # %for.end.14
	movq	-16(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#14:                                # %do.end.17
	callq	ExitOverlayPage
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	CopyrightAbort, .Lfunc_end15-CopyrightAbort
	.cfi_endproc

	.align	16, 0x90
	.type	CopyrightRedisplayLine,@function
CopyrightRedisplayLine:                 # @CopyrightRedisplayLine
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB16_2
.LBB16_2:                               # %do.end
	cmpl	$0, -4(%rbp)
	jge	.LBB16_4
# BB#3:                                 # %if.then
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	callq	copypage
	jmp	.LBB16_10
.LBB16_4:                               # %if.end
	cmpl	$0, -4(%rbp)
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB16_7
# BB#6:                                 # %if.then.3
	jmp	.LBB16_10
.LBB16_7:                               # %if.end.4
	cmpl	$0, -16(%rbp)
	je	.LBB16_9
# BB#8:                                 # %if.then.5
	jmp	.LBB16_10
.LBB16_9:                               # %if.end.6
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	$0, (%rsp)
	callq	LClearArea
.LBB16_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	CopyrightRedisplayLine, .Lfunc_end16-CopyrightRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	BindkeyProcess,@function
BindkeyProcess:                         # @BindkeyProcess
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	flayer, %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB17_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB17_3:                               # %land.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_4
	jmp	.LBB17_11
.LBB17_4:                               # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$10, %edx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB17_8
	jmp	.LBB17_14
.LBB17_14:                              # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB17_8
	jmp	.LBB17_15
.LBB17_15:                              # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB17_9
	jmp	.LBB17_5
.LBB17_5:                               # %sw.bb
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	28(%rax), %ecx
	jge	.LBB17_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	callq	bindkeypage
	jmp	.LBB17_10
.LBB17_7:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_8
.LBB17_8:                               # %sw.bb.4
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, -20(%rbp)
	jmp	.LBB17_10
.LBB17_9:                               # %sw.default
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_10
.LBB17_10:                              # %sw.epilog
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	addl	$-1, %edx
	movl	%edx, (%rax)
	jmp	.LBB17_1
.LBB17_11:                              # %while.end
	cmpl	$0, -20(%rbp)
	je	.LBB17_13
# BB#12:                                # %if.then.6
	callq	BindkeyAbort
.LBB17_13:                              # %if.end.7
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	BindkeyProcess, .Lfunc_end17-BindkeyProcess
	.cfi_endproc

	.align	16, 0x90
	.type	BindkeyAbort,@function
BindkeyAbort:                           # @BindkeyAbort
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
	subq	$32, %rsp
# BB#1:                                 # %do.body
	movq	flayer, %rax
	movq	%rax, -8(%rbp)
# BB#2:                                 # %do.body.1
	jmp	.LBB18_3
.LBB18_3:                               # %do.end
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %do.body.2
	jmp	.LBB18_5
.LBB18_5:                               # %do.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB18_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB18_6 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB18_6 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_6
.LBB18_9:                               # %for.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
	movq	-8(%rbp), %rdi
	movq	%rdi, flayer
	movq	flayer, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB18_10:                              # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_13
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB18_10 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#12:                                # %for.inc.12
                                        #   in Loop: Header=BB18_10 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_10
.LBB18_13:                              # %for.end.14
	movq	-16(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#14:                                # %do.end.17
	callq	ExitOverlayPage
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	BindkeyAbort, .Lfunc_end18-BindkeyAbort
	.cfi_endproc

	.align	16, 0x90
	.type	BindkeyRedisplayLine,@function
BindkeyRedisplayLine:                   # @BindkeyRedisplayLine
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB19_2
# BB#1:                                 # %if.then
	callq	bindkeypage
	jmp	.LBB19_7
.LBB19_2:                               # %if.end
	cmpl	$0, -4(%rbp)
	je	.LBB19_5
# BB#3:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB19_5
# BB#4:                                 # %if.then.3
	jmp	.LBB19_7
.LBB19_5:                               # %if.end.4
	cmpl	$0, -16(%rbp)
	jne	.LBB19_7
# BB#6:                                 # %if.then.5
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	$0, (%rsp)
	callq	LClearArea
.LBB19_7:                               # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	BindkeyRedisplayLine, .Lfunc_end19-BindkeyRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	ZmodemRedisplayLine,@function
ZmodemRedisplayLine:                    # @ZmodemRedisplayLine
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	DefRedisplayLine
	cmpl	$0, -4(%rbp)
	jne	.LBB20_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -8(%rbp)
	jne	.LBB20_6
# BB#2:                                 # %if.then
	movq	flayer, %rdi
	movq	flayer, %rax
	cmpl	$32, 8(%rax)
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	jle	.LBB20_4
# BB#3:                                 # %cond.true
	movl	$32, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	movq	flayer, %rax
	movl	8(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB20_5:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movabsq	$.L.str.56, %rsi
	movabsq	$mchar_blank, %rcx
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%edx, -32(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-32(%rbp), %r8d         # 4-byte Reload
	movl	-32(%rbp), %r9d         # 4-byte Reload
	callq	LPutStr
.LBB20_6:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ZmodemRedisplayLine, .Lfunc_end20-ZmodemRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	ZmodemResize,@function
ZmodemResize:                           # @ZmodemResize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movq	flayer, %rdx
	movl	%esi, 8(%rdx)
	movl	-8(%rbp), %esi
	movq	flayer, %rdx
	movl	%esi, 12(%rdx)
	movq	flayer, %rdx
	cmpl	$32, 8(%rdx)
	movl	%eax, %esi
	cmovgl	%ecx, %esi
	movq	flayer, %rdx
	movl	%esi, 16(%rdx)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ZmodemResize, .Lfunc_end21-ZmodemResize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Use: %s [-opts] [cmd [args]]\n"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" or: %s -r [host.tty]\n\nOptions:\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-a            Force all capabilities into each window's termcap.\n"
	.size	.L.str.2, 66

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-A -[r|R]     Adapt all windows to the new display width & height.\n"
	.size	.L.str.3, 68

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-c file       Read configuration file instead of '.screenrc'.\n"
	.size	.L.str.4, 63

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-d (-r)       Detach the elsewhere running screen (and reattach here).\n"
	.size	.L.str.5, 72

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-dmS name     Start as daemon: Screen session in detached mode.\n"
	.size	.L.str.6, 65

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-D (-r)       Detach and logout remote (and reattach here).\n"
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-D -RR        Do whatever is needed to get a screen session.\n"
	.size	.L.str.8, 62

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-e xy         Change command characters.\n"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-f            Flow control on, -fn = off, -fa = auto.\n"
	.size	.L.str.10, 55

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-h lines      Set the size of the scrollback history buffer.\n"
	.size	.L.str.11, 62

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-i            Interrupt output sooner when flow control is on.\n"
	.size	.L.str.12, 64

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"-l            Login mode on (update %s), -ln = off.\n"
	.size	.L.str.13, 53

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/var/run/utmp"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-ls [match]   or\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"-list         Do nothing, just list our SockDir [on possible matches].\n"
	.size	.L.str.16, 72

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"-L            Turn on output logging.\n"
	.size	.L.str.17, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"-m            ignore $STY variable, do create a new screen session.\n"
	.size	.L.str.18, 69

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"-O            Choose optimal output rather than exact vt100 emulation.\n"
	.size	.L.str.19, 72

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"-p window     Preselect the named window if it exists.\n"
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"-q            Quiet startup. Exits with non-zero return code if unsuccessful.\n"
	.size	.L.str.21, 79

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"-Q            Commands will send the response to the stdout of the querying process.\n"
	.size	.L.str.22, 86

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"-r [session]  Reattach to a detached screen process.\n"
	.size	.L.str.23, 54

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"-R            Reattach if possible, otherwise start a new session.\n"
	.size	.L.str.24, 68

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"-s shell      Shell to execute rather than $SHELL.\n"
	.size	.L.str.25, 52

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"-S sockname   Name this session <pid>.sockname instead of <pid>.<tty>.<host>.\n"
	.size	.L.str.26, 79

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"-t title      Set title. (window's name).\n"
	.size	.L.str.27, 43

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"-T term       Use term as $TERM for windows, rather than \"screen\".\n"
	.size	.L.str.28, 68

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"-U            Tell screen to use UTF-8 encoding.\n"
	.size	.L.str.29, 50

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"-v            Print \"Screen version %s\".\n"
	.size	.L.str.30, 42

	.type	version,@object         # @version
	.comm	version,60,16
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"-wipe [match] Do nothing, just clean up SockDir [on possible matches].\n"
	.size	.L.str.31, 72

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"-x            Attach to a not detached screen. (Multi display mode).\n"
	.size	.L.str.32, 70

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"-X            Execute <cmd> as a screen command in the specified session.\n"
	.size	.L.str.33, 75

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\nError: "
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\n"
	.size	.L.str.35, 2

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Window height too small for help page"
	.size	.L.str.36, 38

	.type	HelpLf,@object          # @HelpLf
	.data
	.align	8
HelpLf:
	.quad	HelpProcess
	.quad	HelpAbort
	.quad	HelpRedisplayLine
	.quad	DefClearLine
	.quad	DefRewrite
	.quad	DefResize
	.quad	DefRestore
	.quad	0
	.size	HelpLf, 64

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Width too small"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Window size too small for copyright page"
	.size	.L.str.38, 41

	.type	CopyrightLf,@object     # @CopyrightLf
	.data
	.align	8
CopyrightLf:
	.quad	CopyrightProcess
	.quad	CopyrightAbort
	.quad	CopyrightRedisplayLine
	.quad	DefClearLine
	.quad	DefRewrite
	.quad	DefResize
	.quad	DefRestore
	.quad	0
	.size	CopyrightLf, 64

	.type	cpmsg,@object           # @cpmsg
	.section	.rodata,"a",@progbits
	.align	16
cpmsg:
	.asciz	"\nScreen version %v\n\nCopyright (c) 2010 Juergen Weigert, Sadrul Habib Chowdhury\nCopyright (c) 2008, 2009 Juergen Weigert, Michael Schroeder, Micah Cowan, Sadrul Habib Chowdhury\nCopyright (c) 1993-2002, 2003, 2005, 2006, 2007 Juergen Weigert, Michael Schroeder\nCopyright (c) 1987 Oliver Laumann\n\nThis program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3, or (at your option) any later version.\n\nThis program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License along with this program (see the file COPYING); if not, see http://www.gnu.org/licenses/, or contact Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02111-1301  USA.\n\nSend bugreports, fixes, enhancements, t-shirts, money, beer & pizza to screen-devel@gnu.org\n\n\nCapabilities:\n+copy +remote-detach +power-detach +multi-attach +multi-user +font +color-16 +utf8 -rxvt -builtin-telnet "
	.size	cpmsg, 1230

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"Window height too small for bindkey page"
	.size	.L.str.39, 41

	.type	BindkeyLf,@object       # @BindkeyLf
	.data
	.align	8
BindkeyLf:
	.quad	BindkeyProcess
	.quad	BindkeyAbort
	.quad	BindkeyRedisplayLine
	.quad	DefClearLine
	.quad	DefRewrite
	.quad	DefResize
	.quad	DefRestore
	.quad	0
	.size	BindkeyLf, 64

	.type	ZmodemLf,@object        # @ZmodemLf
	.align	8
ZmodemLf:
	.quad	DefProcess
	.quad	0
	.quad	ZmodemRedisplayLine
	.quad	DefClearLine
	.quad	DefRewrite
	.quad	ZmodemResize
	.quad	DefRestore
	.quad	0
	.size	ZmodemLf, 64

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"Screen key bindings, page %d of %d."
	.size	.L.str.40, 36

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"??"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Command key:  %s   Literal %s:  %s"
	.size	.L.str.42, 35

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Command class: '%.80s'"
	.size	.L.str.43, 23

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	" "
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"[Press Space %s Return to end.]"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"for next page;"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"or"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"unset"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"sp"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%v"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%s key bindings, page %d of %d."
	.size	.L.str.51, 32

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"   "
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"[A]"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"[T]"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%s -> "
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Zmodem active on another display"
	.size	.L.str.56, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
