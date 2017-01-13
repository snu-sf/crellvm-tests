	.text
	.file	"tty.bc"
	.globl	OpenTTY
	.align	16, 0x90
	.type	OpenTTY,@function
OpenTTY:                                # @OpenTTY
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
	movl	$14, %eax
	movabsq	$SigAlrmDummy, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	xsignal
	movl	$2, %edi
	movq	%rax, -96(%rbp)
	callq	alarm
	movl	$2306, %esi             # imm = 0x902
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	secopen
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	jne	.LBB0_5
# BB#1:                                 # %if.then
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB0_3
# BB#2:                                 # %if.then.5
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	callq	__errno_location
	movabsq	$.L.str.1, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB0_4:                                # %if.end
	xorl	%edi, %edi
	callq	alarm
	movl	$14, %edi
	movq	-96(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	xsignal
	movl	$-1, -4(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_16
.LBB0_5:                                # %if.end.9
	movl	-28(%rbp), %edi
	callq	isatty
	cmpl	$0, %eax
	jne	.LBB0_7
# BB#6:                                 # %if.then.11
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	xorl	%edi, %edi
	callq	alarm
	movl	$14, %edi
	movq	-96(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	xsignal
	movl	-28(%rbp), %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB0_16
.LBB0_7:                                # %if.end.15
	callq	__errno_location
	movl	$21516, %ecx            # imm = 0x540C
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$0, (%rax)
	movl	-28(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB0_9
# BB#8:                                 # %if.then.19
	callq	__errno_location
	movabsq	$.L.str.3, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB0_9:                                # %if.end.21
	jmp	.LBB0_10
.LBB0_10:                               # %do.body
	jmp	.LBB0_11
.LBB0_11:                               # %do.end
	jmp	.LBB0_12
.LBB0_12:                               # %do.body.22
	jmp	.LBB0_13
.LBB0_13:                               # %do.end.23
	leaq	-88(%rbp), %rdi
	movl	$1, %esi
	callq	InitTTY
	leaq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SttyMode
	leaq	-88(%rbp), %rsi
	movl	-28(%rbp), %edi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	SetTTY
	movl	$21525, %eax            # imm = 0x5415
	movl	%eax, %esi
	leaq	-100(%rbp), %rdx
	movl	$0, -100(%rbp)
	movl	-28(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	movl	$21528, %edi            # imm = 0x5418
	movl	%edi, %esi
	leaq	-100(%rbp), %rdx
	movl	-100(%rbp), %edi
	orl	$4, %edi
	movl	%edi, -100(%rbp)
	movl	-28(%rbp), %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	ioctl
	movl	-28(%rbp), %edi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	brktty
	xorl	%edi, %edi
	callq	alarm
	movl	$14, %edi
	movq	-96(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	xsignal
	movq	%rax, -168(%rbp)        # 8-byte Spill
# BB#14:                                # %do.body.29
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.30
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	OpenTTY, .Lfunc_end0-OpenTTY
	.cfi_endproc

	.align	16, 0x90
	.type	SigAlrmDummy,@function
SigAlrmDummy:                           # @SigAlrmDummy
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SigAlrmDummy, .Lfunc_end1-SigAlrmDummy
	.cfi_endproc

	.globl	InitTTY
	.align	16, 0x90
	.type	InitTTY,@function
InitTTY:                                # @InitTTY
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
	xorl	%eax, %eax
	movl	$60, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	memset
# BB#1:                                 # %do.body
	jmp	.LBB2_2
.LBB2_2:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1024, %ecx             # imm = 0x400
	movl	%ecx, (%rax)
	cmpl	$0, -12(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	orl	$256, %ecx              # imm = 0x100
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	orl	$6144, %ecx             # imm = 0x1800
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 4(%rax)
.LBB2_4:                                # %if.end
	movl	$13, %esi
	movq	-8(%rbp), %rdi
	callq	cfsetospeed
	movl	$13, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	cfsetispeed
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %esi
	orl	$48, %esi
	movl	%esi, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %esi
	orl	$128, %esi
	movl	%esi, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %esi
	orl	$2048, %esi             # imm = 0x800
	movl	%esi, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %esi
	orl	$512, %esi              # imm = 0x200
	movl	%esi, 12(%rdi)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %esi
	orl	$2048, %esi             # imm = 0x800
	movl	%esi, 12(%rdi)
	cmpl	$0, -12(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jne	.LBB2_6
# BB#5:                                 # %if.then.35
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 12(%rax)
.LBB2_6:                                # %if.end.45
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$16, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$32768, %ecx            # imm = 0x8000
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movb	$3, 17(%rax)
	movq	-8(%rbp), %rax
	movb	$28, 18(%rax)
	movq	-8(%rbp), %rax
	movb	$127, 19(%rax)
	movq	-8(%rbp), %rax
	movb	$8, 20(%rax)
	movq	-8(%rbp), %rax
	movb	$4, 21(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 33(%rax)
	movq	-8(%rbp), %rax
	movb	$17, 25(%rax)
	movq	-8(%rbp), %rax
	movb	$19, 26(%rax)
	movq	-8(%rbp), %rax
	movb	$26, 27(%rax)
	movq	-8(%rbp), %rax
	movb	$18, 29(%rax)
	movq	-8(%rbp), %rax
	movb	$15, 30(%rax)
	movq	-8(%rbp), %rax
	movb	$23, 31(%rax)
	movq	-8(%rbp), %rax
	movb	$22, 32(%rax)
	cmpl	$0, -12(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.96
	movq	-8(%rbp), %rax
	movb	$100, 23(%rax)
	movq	-8(%rbp), %rax
	movb	$2, 22(%rax)
.LBB2_8:                                # %if.end.103
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	InitTTY, .Lfunc_end2-InitTTY
	.cfi_endproc

	.globl	SttyMode
	.align	16, 0x90
	.type	SttyMode,@function
SttyMode:                               # @SttyMode
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_50
.LBB3_2:                                # %if.end
	jmp	.LBB3_3
.LBB3_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_44 Depth 2
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_49
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %while.cond.2
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$SttyMode.sep, %rdi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %esi
	callq	index
	cmpq	$0, %rax
	je	.LBB3_7
# BB#6:                                 # %while.body.4
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_5
.LBB3_7:                                # %while.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB3_12
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB3_12
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	atoi
	movq	-24(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	atoi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	SetBaud
	cmpl	$0, %eax
	je	.LBB3_11
# BB#10:                                # %if.then.15
	movl	$-1, -4(%rbp)
	jmp	.LBB3_50
.LBB3_11:                               # %if.end.16
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_43
.LBB3_12:                               # %if.else
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.6, %rdi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.19
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-49, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB3_42
.LBB3_14:                               # %if.else.22
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.7, %rdi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_16
# BB#15:                                # %if.then.25
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-49, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$48, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB3_41
.LBB3_16:                               # %if.else.32
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.8, %rdi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_18
# BB#17:                                # %if.then.35
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB3_40
.LBB3_18:                               # %if.else.38
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.9, %rdi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-33, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB3_39
.LBB3_20:                               # %if.else.45
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.10, %rdi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_22
# BB#21:                                # %if.then.48
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1024, %ecx             # imm = 0x400
	movl	%ecx, (%rax)
	jmp	.LBB3_38
.LBB3_22:                               # %if.else.52
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.11, %rdi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_24
# BB#23:                                # %if.then.55
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-1025, %ecx            # imm = 0xFFFFFFFFFFFFFBFF
	movl	%ecx, (%rax)
	jmp	.LBB3_37
.LBB3_24:                               # %if.else.59
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.12, %rdi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_26
# BB#25:                                # %if.then.62
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, (%rax)
	jmp	.LBB3_36
.LBB3_26:                               # %if.else.66
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.13, %rdi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_28
# BB#27:                                # %if.then.69
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	movl	%ecx, (%rax)
	jmp	.LBB3_35
.LBB3_28:                               # %if.else.73
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.14, %rdi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_30
# BB#29:                                # %if.then.76
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, 8(%rax)
	jmp	.LBB3_34
.LBB3_30:                               # %if.else.80
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.15, %rdi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_32
# BB#31:                                # %if.then.83
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, 8(%rax)
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.87
	movl	$-1, -4(%rbp)
	jmp	.LBB3_50
.LBB3_33:                               # %if.end.88
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.89
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               # %if.end.90
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.91
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.92
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_38
.LBB3_38:                               # %if.end.93
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.94
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_40
.LBB3_40:                               # %if.end.95
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_41
.LBB3_41:                               # %if.end.96
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_42
.LBB3_42:                               # %if.end.97
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_43
.LBB3_43:                               # %if.end.98
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_44
.LBB3_44:                               # %while.cond.99
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -37(%rbp)          # 1-byte Spill
	je	.LBB3_46
# BB#45:                                # %land.rhs
                                        #   in Loop: Header=BB3_44 Depth=2
	movabsq	$SttyMode.sep, %rdi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %esi
	callq	index
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -37(%rbp)          # 1-byte Spill
.LBB3_46:                               # %land.end
                                        #   in Loop: Header=BB3_44 Depth=2
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_47
	jmp	.LBB3_48
.LBB3_47:                               # %while.body.105
                                        #   in Loop: Header=BB3_44 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_44
.LBB3_48:                               # %while.end.107
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_3
.LBB3_49:                               # %while.end.108
	movl	$0, -4(%rbp)
.LBB3_50:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SttyMode, .Lfunc_end3-SttyMode
	.cfi_endproc

	.globl	SetTTY
	.align	16, 0x90
	.type	SetTTY,@function
SetTTY:                                 # @SetTTY
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	$1, %esi
	movl	$0, (%rax)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rdx
	callq	tcsetattr
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.4, %rsi
	movl	(%rax), %edi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	Msg
.LBB4_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	SetTTY, .Lfunc_end4-SetTTY
	.cfi_endproc

	.globl	brktty
	.align	16, 0x90
	.type	brktty,@function
brktty:                                 # @brktty
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, separate_sids
	je	.LBB5_2
# BB#1:                                 # %if.then
	callq	setsid
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	brktty, .Lfunc_end5-brktty
	.cfi_endproc

	.globl	GetTTY
	.align	16, 0x90
	.type	GetTTY,@function
GetTTY:                                 # @GetTTY
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	tcgetattr
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.5, %rsi
	movl	(%rax), %edi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	Msg
.LBB6_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	GetTTY, .Lfunc_end6-GetTTY
	.cfi_endproc

	.globl	SetMode
	.align	16, 0x90
	.type	SetMode,@function
SetMode:                                # @SetMode
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
	subq	$32, %rsp
	movl	$60, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%r8, %rdx
	callq	memcpy
# BB#1:                                 # %do.body
	jmp	.LBB7_2
.LBB7_2:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-257, %ecx             # imm = 0xFFFFFFFFFFFFFEFF
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-33, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	andl	$-11, %ecx
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	andl	$-32769, %ecx           # imm = 0xFFFFFFFFFFFF7FFF
	movl	%ecx, 12(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 12(%rax)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 12(%rax)
.LBB7_5:                                # %if.end
	movq	-16(%rbp), %rax
	movb	$1, 23(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 22(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB7_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB7_8
.LBB7_7:                                # %if.then.22
	movq	-16(%rbp), %rax
	movb	$0, 17(%rax)
.LBB7_8:                                # %if.end.26
	movq	-16(%rbp), %rax
	movb	$0, 18(%rax)
	cmpl	$0, -20(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.30
	movq	-16(%rbp), %rax
	movb	$0, 25(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 26(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-1025, %ecx            # imm = 0xFFFFFFFFFFFFFBFF
	movl	%ecx, (%rax)
.LBB7_10:                               # %if.end.40
	movq	-16(%rbp), %rax
	movb	$0, 30(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 27(%rax)
	movq	-16(%rbp), %rax
	movb	$127, 19(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 20(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 29(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 31(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	SetMode, .Lfunc_end7-SetMode
	.cfi_endproc

	.globl	SetFlow
	.align	16, 0x90
	.type	SetFlow,@function
SetFlow:                                # @SetFlow
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
# BB#1:                                 # %do.body
	jmp	.LBB8_2
.LBB8_2:                                # %do.end
	movq	display, %rax
	movl	5264(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	jne	.LBB8_4
# BB#3:                                 # %if.then
	jmp	.LBB8_17
.LBB8_4:                                # %if.end
	cmpl	$0, -4(%rbp)
	je	.LBB8_9
# BB#5:                                 # %if.then.1
	cmpl	$0, iflag
	je	.LBB8_7
# BB#6:                                 # %cond.true
	movq	display, %rax
	movzbl	5161(%rax), %ecx
	movl	%ecx, -8(%rbp)          # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB8_8
.LBB8_8:                                # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	movb	%al, %cl
	movq	display, %rdx
	movb	%cl, 5221(%rdx)
	movq	display, %rdx
	movb	5169(%rdx), %cl
	movq	display, %rdx
	movb	%cl, 5229(%rdx)
	movq	display, %rdx
	movb	5170(%rdx), %cl
	movq	display, %rdx
	movb	%cl, 5230(%rdx)
	movq	display, %rdx
	movl	5144(%rdx), %eax
	andl	$1024, %eax             # imm = 0x400
	movq	display, %rdx
	orl	5204(%rdx), %eax
	movl	%eax, 5204(%rdx)
	jmp	.LBB8_10
.LBB8_9:                                # %if.else
	movq	display, %rax
	movb	$0, 5221(%rax)
	movq	display, %rax
	movb	$0, 5229(%rax)
	movq	display, %rax
	movb	$0, 5230(%rax)
	movq	display, %rax
	movl	5204(%rax), %ecx
	andl	$-1025, %ecx            # imm = 0xFFFFFFFFFFFFFBFF
	movl	%ecx, 5204(%rax)
.LBB8_10:                               # %if.end.44
	cmpl	$0, -4(%rbp)
	jne	.LBB8_12
# BB#11:                                # %if.then.46
	movl	$1, %esi
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	tcflow
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB8_12:                               # %if.end.47
	xorl	%esi, %esi
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	addq	$5204, %rax             # imm = 0x1454
	movq	%rax, %rdx
	callq	tcsetattr
	cmpl	$0, %eax
	je	.LBB8_16
# BB#13:                                # %if.then.53
	jmp	.LBB8_14
.LBB8_14:                               # %do.body.54
	jmp	.LBB8_15
.LBB8_15:                               # %do.end.55
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.56
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 5264(%rcx)
.LBB8_17:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	SetFlow, .Lfunc_end8-SetFlow
	.cfi_endproc

	.globl	SetBaud
	.align	16, 0x90
	.type	SetBaud,@function
SetBaud:                                # @SetBaud
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	lookup_baud
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB9_2
# BB#1:                                 # %land.lhs.true
	cmpl	$-1, -20(%rbp)
	jne	.LBB9_4
.LBB9_2:                                # %lor.lhs.false
	movl	-24(%rbp), %edi
	callq	lookup_baud
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB9_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$-1, -24(%rbp)
	je	.LBB9_5
.LBB9_4:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB9_10
.LBB9_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	cfsetispeed
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB9_7:                                # %if.end.8
	cmpq	$0, -40(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	cfsetospeed
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB9_9:                                # %if.end.14
	movl	$0, -4(%rbp)
.LBB9_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	SetBaud, .Lfunc_end9-SetBaud
	.cfi_endproc

	.globl	fgtty
	.align	16, 0x90
	.type	fgtty,@function
fgtty:                                  # @fgtty
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
	movl	%edi, -8(%rbp)
	callq	getpid
	movl	%eax, -12(%rbp)
	cmpl	$0, separate_sids
	je	.LBB10_6
# BB#1:                                 # %if.then
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	tcsetpgrp
	cmpl	$0, %eax
	je	.LBB10_5
# BB#2:                                 # %if.then.3
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
	jmp	.LBB10_4
.LBB10_4:                               # %do.end
	movl	$-1, -4(%rbp)
	jmp	.LBB10_7
.LBB10_5:                               # %if.end
	jmp	.LBB10_6
.LBB10_6:                               # %if.end.4
	movl	$0, -4(%rbp)
.LBB10_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fgtty, .Lfunc_end10-fgtty
	.cfi_endproc

	.globl	SendBreak
	.align	16, 0x90
	.type	SendBreak,@function
SendBreak:                              # @SendBreak
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 8(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_14
.LBB11_2:                               # %if.end
	jmp	.LBB11_3
.LBB11_3:                               # %do.body
	jmp	.LBB11_4
.LBB11_4:                               # %do.end
	movl	$2, %esi
	movq	-8(%rbp), %rax
	movl	524(%rax), %edi
	callq	tcflush
	cmpl	$0, -16(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB11_11
# BB#5:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movl	524(%rax), %edi
	callq	close
	cmpl	$0, -12(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB11_7
# BB#6:                                 # %cond.true
	imull	$250, -12(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
	movl	$250, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	sleep1000
	movq	-8(%rbp), %rcx
	addq	$11928, %rcx            # imm = 0x2E98
	movq	-8(%rbp), %rdx
	movq	11008(%rdx), %rsi
	movq	%rcx, %rdi
	callq	OpenTTY
	movq	-8(%rbp), %rcx
	movl	%eax, 524(%rcx)
	cmpl	$1, %eax
	jge	.LBB11_10
# BB#9:                                 # %if.then.8
	xorl	%edi, %edi
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rax
	addq	$11928, %rax            # imm = 0x2E98
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB11_14
.LBB11_10:                              # %if.end.11
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	-8(%rbp), %rax
	movl	524(%rax), %edi
	movb	$0, %al
	callq	fcntl
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %if.else
	movl	$14, %edi
	movabsq	$SigAlrmDummy, %rsi
	callq	xsignal
	movl	$15, %edi
	movq	%rax, -24(%rbp)
	callq	alarm
	movq	-8(%rbp), %rsi
	movl	524(%rsi), %edi
	movl	-12(%rbp), %esi
	movl	breaktype, %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	DoSendBreak
	xorl	%edi, %edi
	callq	alarm
	movl	$14, %edi
	movq	-24(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	xsignal
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB11_12:                              # %if.end.19
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.20
	jmp	.LBB11_14
.LBB11_14:                              # %do.end.21
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	SendBreak, .Lfunc_end11-SendBreak
	.cfi_endproc

	.align	16, 0x90
	.type	DoSendBreak,@function
DoSendBreak:                            # @DoSendBreak
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%edx, %esi
	testl	%edx, %edx
	movl	%esi, -24(%rbp)         # 4-byte Spill
	je	.LBB12_23
	jmp	.LBB12_35
.LBB12_35:                              # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB12_12
	jmp	.LBB12_36
.LBB12_36:                              # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB12_33
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	jmp	.LBB12_2
.LBB12_2:                               # %do.body
	jmp	.LBB12_3
.LBB12_3:                               # %do.end
	cmpl	$0, -8(%rbp)
	jne	.LBB12_5
# BB#4:                                 # %if.then
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB12_5:                               # %if.end
	movl	$0, -16(%rbp)
.LBB12_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB12_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB12_6 Depth=1
	xorl	%esi, %esi
	movl	-4(%rbp), %edi
	callq	tcsendbreak
	cmpl	$0, %eax
	jge	.LBB12_9
# BB#8:                                 # %if.then.2
	callq	__errno_location
	movabsq	$.L.str.35, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB12_34
.LBB12_9:                               # %if.end.4
                                        #   in Loop: Header=BB12_6 Depth=1
	jmp	.LBB12_10
.LBB12_10:                              # %for.inc
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB12_6
.LBB12_11:                              # %for.end
	jmp	.LBB12_34
.LBB12_12:                              # %sw.bb.6
	cmpl	$0, -8(%rbp)
	jne	.LBB12_14
# BB#13:                                # %if.then.8
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB12_14:                              # %if.end.10
	jmp	.LBB12_15
.LBB12_15:                              # %do.body.11
	jmp	.LBB12_16
.LBB12_16:                              # %do.end.12
	movl	$0, -20(%rbp)
.LBB12_17:                              # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB12_22
# BB#18:                                # %for.body.16
                                        #   in Loop: Header=BB12_17 Depth=1
	movl	$21513, %eax            # imm = 0x5409
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB12_20
# BB#19:                                # %if.then.19
	callq	__errno_location
	movabsq	$.L.str.36, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB12_34
.LBB12_20:                              # %if.end.21
                                        #   in Loop: Header=BB12_17 Depth=1
	jmp	.LBB12_21
.LBB12_21:                              # %for.inc.22
                                        #   in Loop: Header=BB12_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_17
.LBB12_22:                              # %for.end.24
	jmp	.LBB12_34
.LBB12_23:                              # %sw.bb.25
	jmp	.LBB12_24
.LBB12_24:                              # %do.body.26
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.27
	movl	$21543, %eax            # imm = 0x5427
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB12_27
# BB#26:                                # %if.then.30
	callq	__errno_location
	movabsq	$.L.str.37, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB12_34
.LBB12_27:                              # %if.end.32
	cmpl	$0, -8(%rbp)
	je	.LBB12_29
# BB#28:                                # %cond.true
	imull	$250, -8(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB12_30
.LBB12_29:                              # %cond.false
	movl	$250, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB12_30
.LBB12_30:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	sleep1000
	movl	$21544, %eax            # imm = 0x5428
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB12_32
# BB#31:                                # %if.then.36
	callq	__errno_location
	movabsq	$.L.str.38, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB12_34
.LBB12_32:                              # %if.end.38
	jmp	.LBB12_34
.LBB12_33:                              # %sw.default
	xorl	%edi, %edi
	movabsq	$.L.str.39, %rsi
	movl	-12(%rbp), %edx
	movb	$0, %al
	callq	Msg
.LBB12_34:                              # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	DoSendBreak, .Lfunc_end12-DoSendBreak
	.cfi_endproc

	.globl	TtyGrabConsole
	.align	16, 0x90
	.type	TtyGrabConsole,@function
TtyGrabConsole:                         # @TtyGrabConsole
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
	subq	$192, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB13_12
# BB#1:                                 # %if.then
	cmpq	$0, displays
	jne	.LBB13_3
# BB#2:                                 # %if.then.2
	xorl	%edi, %edi
	movabsq	$.L.str.17, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB13_25
.LBB13_3:                               # %if.end
	movq	displays, %rax
	movq	%rax, -32(%rbp)
.LBB13_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$804, %rax              # imm = 0x324
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_7
# BB#6:                                 # %if.then.4
	jmp	.LBB13_9
.LBB13_7:                               # %if.end.5
                                        #   in Loop: Header=BB13_4 Depth=1
	jmp	.LBB13_8
.LBB13_8:                               # %for.inc
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_4
.LBB13_9:                               # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB13_11
# BB#10:                                # %if.then.7
	xorl	%edi, %edi
	movabsq	$.L.str.19, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB13_25
.LBB13_11:                              # %if.end.8
	jmp	.LBB13_12
.LBB13_12:                              # %if.end.9
	cmpl	$0, consredirfd
	jl	.LBB13_14
# BB#13:                                # %if.then.11
	movabsq	$consredir_ev, %rdi
	callq	evdeq
	movl	consredirfd, %edi
	callq	close
	movl	consredirfd+4, %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	close
	movl	$-1, consredirfd+4
	movl	$-1, consredirfd
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB13_14:                              # %if.end.14
	cmpl	$0, -12(%rbp)
	jg	.LBB13_16
# BB#15:                                # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB13_25
.LBB13_16:                              # %if.end.17
	leaq	-168(%rbp), %rdi
	callq	OpenPTY
	movl	%eax, consredirfd
	cmpl	$0, %eax
	jge	.LBB13_18
# BB#17:                                # %if.then.20
	callq	__errno_location
	movabsq	$.L.str.20, %rsi
	movl	(%rax), %edi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB13_25
.LBB13_18:                              # %if.end.22
	movl	$258, %esi              # imm = 0x102
	movq	-168(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, consredirfd+4
	cmpl	$0, %eax
	jge	.LBB13_20
# BB#19:                                # %if.then.25
	callq	__errno_location
	movabsq	$.L.str.21, %rsi
	movl	(%rax), %edi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	consredirfd, %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB13_25
.LBB13_20:                              # %if.end.28
	leaq	-96(%rbp), %rdi
	xorl	%esi, %esi
	callq	InitTTY
	leaq	-96(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	SetMode
	leaq	-160(%rbp), %rsi
	movl	consredirfd+4, %edi
	callq	SetTTY
	callq	UserContext
	cmpl	$1, %eax
	jne	.LBB13_22
# BB#21:                                # %if.then.31
	movl	$21533, %eax            # imm = 0x541D
	movl	%eax, %esi
	leaq	-12(%rbp), %rcx
	movl	consredirfd+4, %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	movl	%eax, %edi
	callq	UserReturn
.LBB13_22:                              # %if.end.33
	callq	UserStatus
	cmpl	$0, %eax
	je	.LBB13_24
# BB#23:                                # %if.then.36
	callq	__errno_location
	movabsq	$.L.str.22, %rsi
	movl	(%rax), %edi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	consredirfd, %edi
	callq	close
	movl	consredirfd+4, %edi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB13_25
.LBB13_24:                              # %if.end.40
	movabsq	$consredir_ev, %rdi
	movabsq	$consredir_readev_fn, %rax
	movl	consredirfd, %ecx
	movl	%ecx, consredir_ev+24
	movl	$1, consredir_ev+28
	movq	%rax, consredir_ev+8
	callq	evenq
	movl	$0, -4(%rbp)
.LBB13_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	TtyGrabConsole, .Lfunc_end13-TtyGrabConsole
	.cfi_endproc

	.align	16, 0x90
	.type	consredir_readev_fn,@function
consredir_readev_fn:                    # @consredir_readev_fn
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, console_window
	je	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-288(%rbp), %rsi
	movl	consredirfd, %edi
	callq	read
	movl	%eax, %edi
	movl	%edi, -292(%rbp)
	cmpl	$0, %edi
	jg	.LBB14_3
.LBB14_2:                               # %if.then
	movl	consredirfd, %edi
	callq	close
	movl	consredirfd+4, %edi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	close
	movl	$-1, consredirfd+4
	movl	$-1, consredirfd
	movq	-8(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	evdeq
	jmp	.LBB14_13
.LBB14_3:                               # %if.end
	leaq	-288(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -292(%rbp)
	jle	.LBB14_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB14_9
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB14_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	console_window, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	callq	WriteString
.LBB14_8:                               # %if.end.15
                                        #   in Loop: Header=BB14_4 Depth=1
	movabsq	$.L.str.40, %rsi
	movl	$2, %edx
	movq	console_window, %rdi
	callq	WriteString
	movq	-32(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
.LBB14_9:                               # %if.end.16
                                        #   in Loop: Header=BB14_4 Depth=1
	jmp	.LBB14_10
.LBB14_10:                              # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	-292(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -292(%rbp)
	jmp	.LBB14_4
.LBB14_11:                              # %for.end
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB14_13
# BB#12:                                # %if.then.19
	movq	console_window, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	callq	WriteString
.LBB14_13:                              # %if.end.24
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end14:
	.size	consredir_readev_fn, .Lfunc_end14-consredir_readev_fn
	.cfi_endproc

	.globl	TtyGetModemStatus
	.align	16, 0x90
	.type	TtyGetModemStatus,@function
TtyGetModemStatus:                      # @TtyGetModemStatus
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
	subq	$128, %rsp
	leaq	-96(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	GetTTY
	movl	$0, -104(%rbp)
	movl	-88(%rbp), %edi
	andl	$2048, %edi             # imm = 0x800
	cmpl	$0, %edi
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$123, (%rax)
.LBB15_2:                               # %if.end
	movl	-88(%rbp), %eax
	andl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	cmpl	$0, %eax
	jne	.LBB15_4
# BB#3:                                 # %if.then.5
	movl	$0, -100(%rbp)
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
	movl	$1, -100(%rbp)
.LBB15_5:                               # %if.end.6
	movl	$21529, %eax            # imm = 0x5419
	movl	%eax, %esi
	leaq	-28(%rbp), %rcx
	movl	-4(%rbp), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB15_7
# BB#6:                                 # %if.then.7
	movl	$0, -28(%rbp)
.LBB15_7:                               # %if.end.8
	movl	$21525, %eax            # imm = 0x5415
	movl	%eax, %esi
	leaq	-32(%rbp), %rcx
	movl	-4(%rbp), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB15_9
# BB#8:                                 # %if.then.11
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.24, %rcx
	movq	-24(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movq	-24(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	strlen
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_48
.LBB15_9:                               # %if.else.15
	movabsq	$.L.str.26, %rax
	movq	%rax, -112(%rbp)
	movl	-32(%rbp), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB15_11
# BB#10:                                # %if.then.18
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.LBB15_11:                              # %if.end.20
	jmp	.LBB15_12
.LBB15_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB15_12 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB15_12
.LBB15_14:                              # %while.end
	movabsq	$.L.str.27, %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.LBB15_16
# BB#15:                                # %if.then.25
	movabsq	$.L.str.28, %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	$40, (%rcx)
	movq	%rax, -112(%rbp)
.LBB15_16:                              # %if.end.27
	movl	-32(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB15_18
# BB#17:                                # %if.then.30
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.LBB15_18:                              # %if.end.32
	jmp	.LBB15_19
.LBB15_19:                              # %while.cond.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_21
# BB#20:                                # %while.body.35
                                        #   in Loop: Header=BB15_19 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB15_19
.LBB15_21:                              # %while.end.38
	movabsq	$.L.str.29, %rax
	movq	%rax, -112(%rbp)
	movl	-32(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB15_23
# BB#22:                                # %if.then.41
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.LBB15_23:                              # %if.end.43
	jmp	.LBB15_24
.LBB15_24:                              # %while.cond.44
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_26
# BB#25:                                # %while.body.46
                                        #   in Loop: Header=BB15_24 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB15_24
.LBB15_26:                              # %while.end.49
	movabsq	$.L.str.30, %rax
	movq	%rax, -112(%rbp)
	movl	-32(%rbp), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB15_28
# BB#27:                                # %if.then.52
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.LBB15_28:                              # %if.end.54
	jmp	.LBB15_29
.LBB15_29:                              # %while.cond.55
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_31
# BB#30:                                # %while.body.57
                                        #   in Loop: Header=BB15_29 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB15_29
.LBB15_31:                              # %while.end.60
	movabsq	$.L.str.31, %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB15_33
# BB#32:                                # %if.then.62
	movabsq	$.L.str.32, %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	$40, (%rcx)
	movq	%rax, -112(%rbp)
.LBB15_33:                              # %if.end.64
	movl	-32(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB15_35
# BB#34:                                # %if.then.67
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
.LBB15_35:                              # %if.end.69
	jmp	.LBB15_36
.LBB15_36:                              # %while.cond.70
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_38
# BB#37:                                # %while.body.72
                                        #   in Loop: Header=BB15_36 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB15_36
.LBB15_38:                              # %while.end.75
	movl	-32(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB15_44
# BB#39:                                # %if.then.78
	movabsq	$.L.str.33, %rax
	movq	%rax, -112(%rbp)
.LBB15_40:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_43
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB15_40 Depth=1
	jmp	.LBB15_42
.LBB15_42:                              # %for.inc
                                        #   in Loop: Header=BB15_40 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB15_40
.LBB15_43:                              # %for.end
	jmp	.LBB15_44
.LBB15_44:                              # %if.end.82
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB15_47
# BB#45:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB15_47
# BB#46:                                # %if.then.86
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB15_47:                              # %if.end.88
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB15_48:                              # %if.end.89
	cmpl	$0, -104(%rbp)
	je	.LBB15_50
# BB#49:                                # %if.then.91
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$125, (%rax)
.LBB15_50:                              # %if.end.93
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	TtyGetModemStatus, .Lfunc_end15-TtyGetModemStatus
	.cfi_endproc

	.globl	lookup_baud
	.align	16, 0x90
	.type	lookup_baud,@function
lookup_baud:                            # @lookup_baud
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
	movabsq	$btable, %rax
	movl	%edi, -12(%rbp)
	movq	%rax, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jl	.LBB16_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	je	.LBB16_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB16_5
.LBB16_4:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_8
.LBB16_5:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_6
.LBB16_6:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_7:                               # %for.end
	movq	$0, -8(%rbp)
.LBB16_8:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lookup_baud, .Lfunc_end16-lookup_baud
	.cfi_endproc

	.globl	CheckTtyname
	.align	16, 0x90
	.type	CheckTtyname,@function
CheckTtyname:                           # @CheckTtyname
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
	subq	$4272, %rsp             # imm = 0x10B0
	leaq	-4256(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	realpath
	movq	%rax, -4264(%rbp)
	cmpq	$0, -4264(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB17_9
.LBB17_2:                               # %if.end
	leaq	-160(%rbp), %rsi
	movb	$0, -161(%rbp)
	movq	-4264(%rbp), %rdi
	callq	lstat
	cmpl	$0, %eax
	jne	.LBB17_6
# BB#3:                                 # %lor.lhs.false
	movl	-136(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$8192, %eax             # imm = 0x2000
	jne	.LBB17_6
# BB#4:                                 # %lor.lhs.false.3
	cmpq	$1, -144(%rbp)
	jbe	.LBB17_7
# BB#5:                                 # %land.lhs.true
	movabsq	$.L.str.34, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-4264(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB17_7
.LBB17_6:                               # %if.then.7
	movl	$-1, -4268(%rbp)
	jmp	.LBB17_8
.LBB17_7:                               # %if.else
	movl	$0, -4268(%rbp)
.LBB17_8:                               # %if.end.8
	movl	-4268(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$4272, %rsp             # imm = 0x10B0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	CheckTtyname, .Lfunc_end17-CheckTtyname
	.cfi_endproc

	.type	separate_sids,@object   # @separate_sids
	.data
	.globl	separate_sids
	.align	4
separate_sids:
	.long	1                       # 0x1
	.size	separate_sids, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot open line '%s' for R/W: open() blocked, aborted."
	.size	.L.str, 56

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot open line '%s' for R/W"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"'%s' is not a tty"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: ioctl TIOCEXCL failed"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SetTTY (fd %d): ioctl failed"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GetTTY (fd %d): ioctl failed"
	.size	.L.str.5, 29

	.type	SttyMode.sep,@object    # @SttyMode.sep
	.section	.rodata,"a",@progbits
SttyMode.sep:
	.asciz	" \t:;,"
	.size	SttyMode.sep, 6

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"cs7"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cs8"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"istrip"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-istrip"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ixon"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-ixon"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ixoff"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"-ixoff"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"crtscts"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-crtscts"
	.size	.L.str.15, 9

	.type	breaktype,@object       # @breaktype
	.data
	.globl	breaktype
	.align	4
breaktype:
	.long	2                       # 0x2
	.size	breaktype, 4

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"Ouch, cannot reopen line %s, please try harder"
	.size	.L.str.16, 47

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"I need a display"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/dev/console"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"too dangerous - screen is running on /dev/console"
	.size	.L.str.19, 50

	.type	consredirfd,@object     # @consredirfd
	.data
	.align	4
consredirfd:
	.zero	8,255
	.size	consredirfd, 8

	.type	consredir_ev,@object    # @consredir_ev
	.local	consredir_ev
	.comm	consredir_ev,80,8
	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"%s: could not open detach pty master"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: could not open detach pty slave"
	.size	.L.str.21, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s: ioctl TIOCCONS failed"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"NO-TTY? %s"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"(CD)"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"CD"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"!RTS "
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"!CTS "
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"!CTS) "
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"!DTR "
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"!DSR "
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"!CD "
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"!CD) "
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"RI "
	.size	.L.str.33, 4

	.type	btable,@object          # @btable
	.data
	.align	16
btable:
	.long	13                      # 0xd
	.long	9600                    # 0x2580
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	19200                   # 0x4b00
	.long	14                      # 0xe
	.long	14                      # 0xe
	.long	19200                   # 0x4b00
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	38400                   # 0x9600
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	38400                   # 0x9600
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	57600                   # 0xe100
	.long	4097                    # 0x1001
	.long	17                      # 0x11
	.long	115200                  # 0x1c200
	.long	4098                    # 0x1002
	.long	18                      # 0x12
	.long	230400                  # 0x38400
	.long	4099                    # 0x1003
	.long	19                      # 0x13
	.long	460800                  # 0x70800
	.long	4100                    # 0x1004
	.long	12                      # 0xc
	.long	4800                    # 0x12c0
	.long	12                      # 0xc
	.long	11                      # 0xb
	.long	2400                    # 0x960
	.long	11                      # 0xb
	.long	10                      # 0xa
	.long	1800                    # 0x708
	.long	10                      # 0xa
	.long	9                       # 0x9
	.long	1200                    # 0x4b0
	.long	9                       # 0x9
	.long	8                       # 0x8
	.long	600                     # 0x258
	.long	8                       # 0x8
	.long	7                       # 0x7
	.long	300                     # 0x12c
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	200                     # 0xc8
	.long	6                       # 0x6
	.long	5                       # 0x5
	.long	150                     # 0x96
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	134                     # 0x86
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	110                     # 0x6e
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	75                      # 0x4b
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	50                      # 0x32
	.long	1                       # 0x1
	.zero	12
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	btable, 276

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"/dev"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"cannot send BREAK (tcsendbreak SVR4)"
	.size	.L.str.35, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Cannot send BREAK (TCSBRK)"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Can't send BREAK (TIOCSBRK)"
	.size	.L.str.37, 28

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"BREAK stuck!!! -- HELP! (TIOCCBRK)"
	.size	.L.str.38, 35

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Internal SendBreak error: method %d unknown"
	.size	.L.str.39, 44

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\r\n"
	.size	.L.str.40, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
