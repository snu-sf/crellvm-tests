	.text
	.file	"window.bc"
	.globl	nwin_compose
	.align	16, 0x90
	.type	nwin_compose,@function
nwin_compose:                           # @nwin_compose
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	nwin_undef, %eax
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB0_3:                                # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	nwin_undef+8, %rcx
	je	.LBB0_5
# BB#4:                                 # %cond.true.5
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false.7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB0_6:                                # %cond.end.9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	nwin_undef+16, %rax
	je	.LBB0_8
# BB#7:                                 # %cond.true.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false.15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_9:                                # %cond.end.17
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	nwin_undef+24, %rax
	je	.LBB0_11
# BB#10:                                # %cond.true.21
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               # %cond.false.23
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_12:                               # %cond.end.25
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	nwin_undef+32, %rax
	je	.LBB0_14
# BB#13:                                # %cond.true.29
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               # %cond.false.31
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_15:                               # %cond.end.33
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	cmpl	nwin_undef+40, %edx
	je	.LBB0_17
# BB#16:                                # %cond.true.37
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB0_18
.LBB0_17:                               # %cond.false.39
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB0_18:                               # %cond.end.41
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %eax
	cmpl	nwin_undef+44, %eax
	je	.LBB0_20
# BB#19:                                # %cond.true.45
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB0_21
.LBB0_20:                               # %cond.false.47
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB0_21:                               # %cond.end.49
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %eax
	cmpl	nwin_undef+48, %eax
	je	.LBB0_23
# BB#22:                                # %cond.true.53
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB0_24
.LBB0_23:                               # %cond.false.55
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB0_24:                               # %cond.end.57
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-16(%rbp), %rcx
	movl	52(%rcx), %eax
	cmpl	nwin_undef+52, %eax
	je	.LBB0_26
# BB#25:                                # %cond.true.61
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB0_27
.LBB0_26:                               # %cond.false.63
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB0_27:                               # %cond.end.65
	movl	-80(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %eax
	cmpl	nwin_undef+56, %eax
	je	.LBB0_29
# BB#28:                                # %cond.true.69
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB0_30
.LBB0_29:                               # %cond.false.71
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB0_30:                               # %cond.end.73
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %eax
	cmpl	nwin_undef+60, %eax
	je	.LBB0_32
# BB#31:                                # %cond.true.77
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB0_33
.LBB0_32:                               # %cond.false.79
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB0_33:                               # %cond.end.81
	movl	-88(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %eax
	cmpl	nwin_undef+64, %eax
	je	.LBB0_35
# BB#34:                                # %cond.true.85
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB0_36
.LBB0_35:                               # %cond.false.87
	movq	-8(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB0_36:                               # %cond.end.89
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %eax
	cmpl	nwin_undef+68, %eax
	je	.LBB0_38
# BB#37:                                # %cond.true.93
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB0_39
.LBB0_38:                               # %cond.false.95
	movq	-8(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB0_39:                               # %cond.end.97
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-16(%rbp), %rcx
	movl	72(%rcx), %eax
	cmpl	nwin_undef+72, %eax
	je	.LBB0_41
# BB#40:                                # %cond.true.101
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_42
.LBB0_41:                               # %cond.false.103
	movq	-8(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB0_42:                               # %cond.end.105
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-16(%rbp), %rcx
	movl	76(%rcx), %eax
	cmpl	nwin_undef+76, %eax
	je	.LBB0_44
# BB#43:                                # %cond.true.109
	movq	-16(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_45
.LBB0_44:                               # %cond.false.111
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB0_45:                               # %cond.end.113
	movl	-104(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movq	-16(%rbp), %rcx
	movl	80(%rcx), %eax
	cmpl	nwin_undef+80, %eax
	je	.LBB0_47
# BB#46:                                # %cond.true.117
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_48
.LBB0_47:                               # %cond.false.119
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB0_48:                               # %cond.end.121
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 80(%rcx)
	movq	-16(%rbp), %rcx
	movl	84(%rcx), %eax
	cmpl	nwin_undef+84, %eax
	je	.LBB0_50
# BB#49:                                # %cond.true.125
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB0_51
.LBB0_50:                               # %cond.false.127
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB0_51:                               # %cond.end.129
	movl	-112(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 84(%rcx)
	movq	-16(%rbp), %rcx
	movl	88(%rcx), %eax
	cmpl	nwin_undef+88, %eax
	je	.LBB0_53
# BB#52:                                # %cond.true.133
	movq	-16(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB0_54
.LBB0_53:                               # %cond.false.135
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB0_54:                               # %cond.end.137
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %eax
	cmpl	nwin_undef+92, %eax
	je	.LBB0_56
# BB#55:                                # %cond.true.141
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB0_57
.LBB0_56:                               # %cond.false.143
	movq	-8(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB0_57:                               # %cond.end.145
	movl	-120(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 92(%rcx)
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpq	nwin_undef+96, %rcx
	je	.LBB0_59
# BB#58:                                # %cond.true.149
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_60
.LBB0_59:                               # %cond.false.151
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB0_60:                               # %cond.end.153
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	nwin_undef+104, %rax
	je	.LBB0_62
# BB#61:                                # %cond.true.157
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_63
.LBB0_62:                               # %cond.false.159
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB0_63:                               # %cond.end.161
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-16(%rbp), %rax
	movl	112(%rax), %edx
	cmpl	nwin_undef+112, %edx
	je	.LBB0_65
# BB#64:                                # %cond.true.165
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB0_66
.LBB0_65:                               # %cond.false.167
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB0_66:                               # %cond.end.169
	movl	-140(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 112(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	nwin_compose, .Lfunc_end0-nwin_compose
	.cfi_endproc

	.align	16, 0x90
	.type	WinProcess,@function
WinProcess:                             # @WinProcess
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -36(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
	movq	fore, %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB1_33
.LBB1_4:                                # %if.end
	movq	fore, %rax
	cmpl	$0, 524(%rax)
	jge	.LBB1_6
# BB#5:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ZombieProcess
	jmp	.LBB1_33
.LBB1_6:                                # %if.end.3
	cmpq	$0, display
	je	.LBB1_13
# BB#7:                                 # %land.lhs.true
	movq	fore, %rax
	cmpl	$1, 9800(%rax)
	jne	.LBB1_13
# BB#8:                                 # %land.lhs.true.5
	movq	fore, %rax
	cmpq	$0, 9808(%rax)
	jne	.LBB1_13
# BB#9:                                 # %land.lhs.true.7
	movl	$1, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	fore, %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#10:                                # %if.then.9
	movq	display, %rax
	movq	8(%rax), %rax
	movq	fore, %rcx
	movq	%rax, 9808(%rcx)
# BB#11:                                # %do.body.12
	jmp	.LBB1_12
.LBB1_12:                               # %do.end.13
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.14
	cmpq	$0, display
	je	.LBB1_22
# BB#14:                                # %land.lhs.true.16
	movq	fore, %rax
	cmpl	$0, 9800(%rax)
	jne	.LBB1_16
# BB#15:                                # %cond.true
	movl	$1, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	fore, %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB1_17
	jmp	.LBB1_22
.LBB1_16:                               # %cond.false
	movq	display, %rax
	movq	8(%rax), %rax
	movq	fore, %rcx
	cmpq	9808(%rcx), %rax
	je	.LBB1_22
.LBB1_17:                               # %if.then.25
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.26
	jmp	.LBB1_19
.LBB1_19:                               # %do.end.27
	jmp	.LBB1_20
.LBB1_20:                               # %do.body.28
	jmp	.LBB1_21
.LBB1_21:                               # %do.end.29
	xorl	%edi, %edi
	movabsq	$.L.str.17, %rsi
	movq	display, %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movslq	%edi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	-16(%rbp), %rcx
	movl	$0, (%rcx)
	jmp	.LBB1_33
.LBB1_22:                               # %if.end.33
	movq	fore, %rax
	cmpq	$0, 168(%rax)
	je	.LBB1_25
# BB#23:                                # %land.lhs.true.35
	movq	fore, %rax
	movq	168(%rax), %rax
	movl	(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB1_25
# BB#24:                                # %if.then.38
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	movq	fore, %rdx
	movq	168(%rdx), %rdx
	addq	$1712, %rdx             # imm = 0x6B0
	movq	%rdx, -48(%rbp)
	movq	fore, %rdx
	movq	168(%rdx), %rdx
	addq	$5808, %rdx             # imm = 0x16B0
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movslq	(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_26
.LBB1_25:                               # %if.else
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	movq	fore, %rdx
	addq	$528, %rdx              # imm = 0x210
	movq	%rdx, -48(%rbp)
	movq	fore, %rdx
	addq	$4624, %rdx             # imm = 0x1210
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movslq	(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
.LBB1_26:                               # %if.end.47
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB1_28
# BB#27:                                # %if.then.50
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB1_28:                               # %if.end.51
	cmpl	$0, -36(%rbp)
	jle	.LBB1_33
# BB#29:                                # %if.then.54
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movslq	(%rdx), %rdx
	addq	%rdx, %rcx
	movslq	-20(%rbp), %rdx
	movq	%rcx, %rsi
	callq	bcopy
	movq	fore, %rcx
	cmpl	$0, 9996(%rcx)
	je	.LBB1_32
# BB#30:                                # %land.lhs.true.59
	leaq	-20(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	DoAutolf
	movl	%eax, -40(%rbp)
	cmpl	$0, %eax
	je	.LBB1_32
# BB#31:                                # %if.then.65
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.LBB1_32:                               # %if.end.67
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%rcx)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	subl	%eax, %edi
	movl	%edi, (%rcx)
.LBB1_33:                               # %if.end.71
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	WinProcess, .Lfunc_end1-WinProcess
	.cfi_endproc

	.align	16, 0x90
	.type	WinRedisplayLine,@function
WinRedisplayLine:                       # @WinRedisplayLine
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB2_2
.LBB2_2:                                # %do.end
	cmpl	$0, -4(%rbp)
	jge	.LBB2_4
# BB#3:                                 # %if.then
	jmp	.LBB2_9
.LBB2_4:                                # %if.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
	cmpl	$0, -8(%rbp)
	jne	.LBB2_8
# BB#5:                                 # %land.lhs.true
	cmpl	$0, -4(%rbp)
	jle	.LBB2_8
# BB#6:                                 # %land.lhs.true.3
	movq	fore, %rax
	movslq	32(%rax), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	fore, %rsi
	imulq	$40, %rdx, %rdx
	addq	9864(%rsi), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_8
# BB#7:                                 # %if.then.8
	movq	fore, %rax
	addq	$24, %rax
	movslq	-4(%rbp), %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movq	%rax, %rdi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-20(%rbp), %ecx         # 4-byte Reload
	callq	LCDisplayLineWrap
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
	movq	fore, %rax
	addq	$24, %rax
	movslq	-4(%rbp), %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movq	%rax, %rdi
	movl	%esi, -24(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	LCDisplayLine
.LBB2_9:                                # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	WinRedisplayLine, .Lfunc_end2-WinRedisplayLine
	.cfi_endproc

	.align	16, 0x90
	.type	WinClearLine,@function
WinClearLine:                           # @WinClearLine
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movq	flayer, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movslq	-4(%rbp), %rax
	movq	fore, %r9
	imulq	$40, %rax, %rax
	addq	9864(%r9), %rax
	movq	%rax, %r9
	callq	LClearLine
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	WinClearLine, .Lfunc_end3-WinClearLine
	.cfi_endproc

	.align	16, 0x90
	.type	WinRewrite,@function
WinRewrite:                             # @WinRewrite
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
	movl	-16(%rbp), %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB4_7
# BB#3:                                 # %if.then
	movslq	-8(%rbp), %rax
	movq	fore, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB4_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	jle	.LBB4_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %edi
	callq	PUTCHAR
	jmp	.LBB4_4
.LBB4_6:                                # %while.end
	movl	$0, -4(%rbp)
	jmp	.LBB4_27
.LBB4_7:                                # %if.end
	movslq	-8(%rbp), %rax
	movq	fore, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movslq	-8(%rbp), %rax
	movq	fore, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	16(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movslq	-8(%rbp), %rax
	movq	fore, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	24(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	$0, %edx
	je	.LBB4_10
# BB#8:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$96, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_10
# BB#9:                                 # %if.then.23
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB4_27
.LBB4_10:                               # %if.end.24
	movq	fore, %rax
	cmpl	$0, 48(%rax)
	je	.LBB4_15
# BB#11:                                # %land.lhs.true.26
	movq	fore, %rax
	cmpl	$8, 48(%rax)
	je	.LBB4_15
# BB#12:                                # %land.lhs.true.31
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB4_15
# BB#13:                                # %land.lhs.true.34
	movq	fore, %rax
	movq	9864(%rax), %rax
	movslq	-8(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	fore, %rcx
	movl	48(%rcx), %ecx
	movq	%rax, %rdi
	callq	ContainsSpecialDeffont
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.41
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB4_27
.LBB4_15:                               # %if.end.42
	movslq	-8(%rbp), %rax
	movq	fore, %rcx
	imulq	$40, %rax, %rax
	addq	9864(%rcx), %rax
	movq	32(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movl	-16(%rbp), %edx
	subl	-12(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movl	%edx, -32(%rbp)
.LBB4_16:                               # %while.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	jle	.LBB4_26
# BB#17:                                # %while.body.54
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB4_19
# BB#18:                                # %if.then.61
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB4_27
.LBB4_19:                               # %if.end.62
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB4_21
# BB#20:                                # %if.then.69
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB4_27
.LBB4_21:                               # %if.end.70
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB4_23
# BB#22:                                # %if.then.77
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB4_27
.LBB4_23:                               # %if.end.78
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	4(%rax), %esi
	cmpl	%esi, %edx
	je	.LBB4_25
# BB#24:                                # %if.then.85
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB4_27
.LBB4_25:                               # %if.end.86
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_16
.LBB4_26:                               # %while.end.87
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	WinRewrite, .Lfunc_end4-WinRewrite
	.cfi_endproc

	.align	16, 0x90
	.type	WinResize,@function
WinResize:                              # @WinResize
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
	movl	%esi, -8(%rbp)
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
	movq	fore, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movq	fore, %rax
	movl	10860(%rax), %ecx
	callq	ChangeWindowSize
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	WinResize, .Lfunc_end5-WinResize
	.cfi_endproc

	.align	16, 0x90
	.type	WinRestore,@function
WinRestore:                             # @WinRestore
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
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
# BB#1:                                 # %do.body
	jmp	.LBB6_2
.LBB6_2:                                # %do.end
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB6_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-8(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_10
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	fore, %rax
	movl	9976(%rax), %edi
	callq	KeypadMode
	movq	fore, %rax
	movl	9980(%rax), %edi
	callq	CursorkeysMode
	movq	fore, %rax
	movl	10820(%rax), %edi
	andl	$1, %edi
	callq	SetFlow
	movq	fore, %rax
	movl	9972(%rax), %edi
	callq	InsertMode
	movq	fore, %rax
	movl	9984(%rax), %edi
	callq	ReverseVideo
	movq	fore, %rax
	cmpl	$0, 9988(%rax)
	je	.LBB6_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	fore, %rax
	movl	9992(%rax), %ecx
	movl	%ecx, -12(%rbp)         # 4-byte Spill
.LBB6_9:                                # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	CursorVisibility
	movq	fore, %rcx
	movl	10852(%rcx), %edi
	callq	MouseMode
.LBB6_10:                               # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_3
.LBB6_11:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	WinRestore, .Lfunc_end6-WinRestore
	.cfi_endproc

	.globl	DoStartLog
	.align	16, 0x90
	.type	DoStartLog,@function
DoStartLog:                             # @DoStartLog
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
.LBB7_2:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB7_20
.LBB7_3:                                # %if.end
	movl	$37, %edx
	movq	-24(%rbp), %rdi
	movq	screenlogfile, %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	MakeWinMsg
	movl	-28(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	%rax, -48(%rbp)         # 8-byte Spill
# BB#4:                                 # %do.body
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 10824(%rax)
	je	.LBB7_7
# BB#6:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	10824(%rax), %rdi
	callq	logfclose
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_7:                                # %if.end.8
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	islogfile
	cmpl	$0, %eax
	je	.LBB7_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	movabsq	$.L.str, %rsi
	movq	-24(%rbp), %rdi
	callq	secfopen
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB7_10:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	logfopen
	movq	-16(%rbp), %rsi
	movq	%rax, 10824(%rsi)
	cmpq	$0, %rax
	jne	.LBB7_12
# BB#11:                                # %if.then.16
	movl	$-2, -4(%rbp)
	jmp	.LBB7_20
.LBB7_12:                               # %if.end.17
	cmpl	$0, logflushev+56
	jne	.LBB7_19
# BB#13:                                # %if.then.19
	cmpl	$0, log_flush
	je	.LBB7_15
# BB#14:                                # %cond.true.21
	movl	log_flush, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB7_16
.LBB7_15:                               # %cond.false.22
	movl	$5, %eax
	movl	logtstamp_after, %ecx
	addl	$4, %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB7_16:                               # %cond.end.23
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_18
# BB#17:                                # %if.then.26
	movabsq	$logflushev, %rdi
	imull	$1000, -32(%rbp), %esi  # imm = 0x3E8
	callq	SetTimeout
	movabsq	$logflushev, %rdi
	callq	evenq
.LBB7_18:                               # %if.end.27
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.28
	movl	$0, -4(%rbp)
.LBB7_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	DoStartLog, .Lfunc_end7-DoStartLog
	.cfi_endproc

	.globl	MakeWindow
	.align	16, 0x90
	.type	MakeWindow,@function
MakeWindow:                             # @MakeWindow
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
	subq	$1344, %rsp             # imm = 0x540
	movq	%rdi, -16(%rbp)
	movl	$-1, -44(%rbp)
	cmpq	$0, wtab
	jne	.LBB8_4
# BB#1:                                 # %if.then
	cmpl	$0, maxwin
	jne	.LBB8_3
# BB#2:                                 # %if.then.2
	movl	$100, maxwin
.LBB8_3:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movslq	maxwin, %rdi
	callq	calloc
	movq	%rax, wtab
.LBB8_4:                                # %if.end.3
	jmp	.LBB8_5
.LBB8_5:                                # %do.body
	jmp	.LBB8_6
.LBB8_6:                                # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %do.body.4
	jmp	.LBB8_8
.LBB8_8:                                # %do.end.5
	jmp	.LBB8_9
.LBB8_9:                                # %do.body.6
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.7
	jmp	.LBB8_11
.LBB8_11:                               # %do.body.8
	jmp	.LBB8_12
.LBB8_12:                               # %do.end.9
	movabsq	$nwin_default, %rdi
	leaq	-168(%rbp), %rdx
	movq	-16(%rbp), %rsi
	callq	nwin_compose
# BB#13:                                # %do.body.10
	jmp	.LBB8_14
.LBB8_14:                               # %do.end.11
	jmp	.LBB8_15
.LBB8_15:                               # %do.body.12
	jmp	.LBB8_16
.LBB8_16:                               # %do.end.13
	jmp	.LBB8_17
.LBB8_17:                               # %do.body.14
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.15
	movl	-168(%rbp), %eax
	cmpl	maxwin, %eax
	jge	.LBB8_20
# BB#19:                                # %cond.true
	movl	-168(%rbp), %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	jmp	.LBB8_21
.LBB8_20:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	jmp	.LBB8_21
.LBB8_21:                               # %cond.end
	movl	-1220(%rbp), %eax       # 4-byte Reload
	movl	%eax, -176(%rbp)
	movq	wtab, %rcx
	movslq	-176(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
.LBB8_22:                               # %do.body.18
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_24
# BB#23:                                # %if.then.21
	jmp	.LBB8_28
.LBB8_24:                               # %if.end.22
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	wtab, %rcx
	movslq	maxwin, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_26
# BB#25:                                # %if.then.27
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	wtab, %rax
	movq	%rax, -24(%rbp)
.LBB8_26:                               # %if.end.28
                                        #   in Loop: Header=BB8_22 Depth=1
	jmp	.LBB8_27
.LBB8_27:                               # %do.cond
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	-24(%rbp), %rax
	movq	wtab, %rcx
	movslq	-176(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_22
.LBB8_28:                               # %do.end.33
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_30
# BB#29:                                # %if.then.35
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB8_126
.LBB8_30:                               # %if.end.36
	movq	-24(%rbp), %rax
	movq	wtab, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
# BB#31:                                # %do.body.38
	jmp	.LBB8_32
.LBB8_32:                               # %do.end.40
	leaq	-172(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	movq	-152(%rbp), %rdi
	movl	-120(%rbp), %esi
	callq	OpenDevice
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB8_34
# BB#33:                                # %if.then.44
	movl	$-1, -4(%rbp)
	jmp	.LBB8_126
.LBB8_34:                               # %if.end.45
	cmpl	$3, -172(%rbp)
	jne	.LBB8_36
# BB#35:                                # %if.then.48
	movl	$-1, -44(%rbp)
.LBB8_36:                               # %if.end.49
	movl	$1, %eax
	movl	%eax, %edi
	movl	$12888, %eax            # imm = 0x3258
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_38
# BB#37:                                # %if.then.53
	movl	-44(%rbp), %edi
	callq	close
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$strnomem, %rdx
	movl	%eax, -1224(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB8_126
.LBB8_38:                               # %if.end.55
	cmpl	$0, -172(%rbp)
	je	.LBB8_40
# BB#39:                                # %if.then.58
	movl	$0, -120(%rbp)
.LBB8_40:                               # %if.end.60
	movl	-172(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	$0, -40(%rbp)
.LBB8_41:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-40(%rbp), %rdx
	movq	-152(%rbp), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	movb	%cl, -1225(%rbp)        # 1-byte Spill
	je	.LBB8_43
# BB#42:                                # %land.rhs
                                        #   in Loop: Header=BB8_41 Depth=1
	cmpl	$63, -40(%rbp)
	setl	%al
	movb	%al, -1225(%rbp)        # 1-byte Spill
.LBB8_43:                               # %land.end
                                        #   in Loop: Header=BB8_41 Depth=1
	movb	-1225(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_44
	jmp	.LBB8_46
.LBB8_44:                               # %for.body
                                        #   in Loop: Header=BB8_41 Depth=1
	movslq	-40(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SaveStr
	movslq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, 11000(%rdi,%rcx,8)
# BB#45:                                # %for.inc
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_41
.LBB8_46:                               # %for.end
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	$0, 11000(%rcx,%rax,8)
	cmpq	$0, -144(%rbp)
	je	.LBB8_48
# BB#47:                                # %if.then.75
	movq	-144(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	%rax, 11512(%rdi)
.LBB8_48:                               # %if.end.78
	cmpq	$0, -136(%rbp)
	je	.LBB8_50
# BB#49:                                # %if.then.80
	movq	-136(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	%rax, 11520(%rdi)
.LBB8_50:                               # %if.end.83
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 192(%rcx)
	movq	-32(%rbp), %rcx
	movq	$0, 9528(%rcx)
	cmpq	$0, fore
	je	.LBB8_53
# BB#51:                                # %land.lhs.true
	movq	fore, %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_53
# BB#52:                                # %if.then.88
	movq	fore, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 9528(%rcx)
	jmp	.LBB8_57
.LBB8_53:                               # %if.else
	cmpq	$0, fore
	je	.LBB8_56
# BB#54:                                # %land.lhs.true.91
	movq	fore, %rax
	cmpq	$0, 9528(%rax)
	je	.LBB8_56
# BB#55:                                # %if.then.94
	movq	fore, %rax
	movq	9528(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 9528(%rcx)
.LBB8_56:                               # %if.end.97
	jmp	.LBB8_57
.LBB8_57:                               # %if.end.98
	movq	-32(%rbp), %rdi
	cmpq	$0, display
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	je	.LBB8_59
# BB#58:                                # %cond.true.100
	movq	display, %rax
	movq	8(%rax), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB8_60
.LBB8_59:                               # %cond.false.101
	movq	users, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB8_60:                               # %cond.end.102
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	NewWindowAcl
	cmpl	$0, %eax
	je	.LBB8_62
# BB#61:                                # %if.then.106
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	-44(%rbp), %edi
	callq	close
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$strnomem, %rdx
	movl	%eax, -1252(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB8_126
.LBB8_62:                               # %if.end.108
	movabsq	$WinLf, %rax
	movq	-32(%rbp), %rcx
	movq	$0, 72(%rcx)
	movq	-32(%rbp), %rcx
	addq	$24, %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 80(%rdx)
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 184(%rax)
	cmpq	$0, display
	je	.LBB8_65
# BB#63:                                # %land.lhs.true.115
	movl	$1, %esi
	movq	display, %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB8_65
# BB#64:                                # %if.then.119
	movq	display, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 9808(%rcx)
.LBB8_65:                               # %if.end.121
	movl	$2, %eax
	movl	$3, %ecx
	movl	-108(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 9800(%rsi)
	movl	-44(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 524(%rsi)
	movl	-128(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 8728(%rsi)
	movl	-124(%rbp), %edx
	movl	-124(%rbp), %edi
	andl	$4, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 10820(%rsi)
	cmpq	$0, -160(%rbp)
	jne	.LBB8_67
# BB#66:                                # %if.then.126
	movq	-152(%rbp), %rax
	movq	(%rax), %rdi
	callq	Filename
	movq	%rax, -160(%rbp)
.LBB8_67:                               # %if.end.131
	movl	$767, %eax              # imm = 0x2FF
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$8752, %rcx             # imm = 0x2230
	movq	-160(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movl	$124, %esi
	movq	-32(%rbp), %rcx
	addq	$8752, %rcx             # imm = 0x2230
	movq	%rcx, %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	rindex
	movq	%rax, -160(%rbp)
	cmpq	$0, %rax
	je	.LBB8_69
# BB#68:                                # %if.then.140
	movq	-32(%rbp), %rax
	movl	$0, 9520(%rax)
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	movb	$0, (%rax)
	movq	-160(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8736(%rcx)
	movq	-160(%rbp), %rax
	movq	-160(%rbp), %rdi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8744(%rax)
	jmp	.LBB8_70
.LBB8_69:                               # %if.else.148
	movq	-32(%rbp), %rax
	addq	$8752, %rax             # imm = 0x2230
	movq	-32(%rbp), %rcx
	movq	%rax, 8744(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, 8736(%rcx)
.LBB8_70:                               # %if.end.153
	cmpq	$0, -72(%rbp)
	je	.LBB8_72
# BB#71:                                # %if.then.155
	movq	-72(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	%rax, 10000(%rdi)
.LBB8_72:                               # %if.end.158
	movl	-112(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 10836(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$1, 10836(%rcx)
	jne	.LBB8_78
# BB#73:                                # %if.then.162
	movl	$0, -40(%rbp)
.LBB8_74:                               # %for.cond.163
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB8_77
# BB#75:                                # %for.body.166
                                        #   in Loop: Header=BB8_74 Depth=1
	movl	$128, %eax
	movl	-40(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-40(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	-32(%rbp), %rdi
	movq	9848(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#76:                                # %for.inc.174
                                        #   in Loop: Header=BB8_74 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_74
.LBB8_77:                               # %for.end.176
	jmp	.LBB8_78
.LBB8_78:                               # %if.end.177
	movl	-104(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 10844(%rcx)
	movl	SilenceWait, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 10840(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$1, 10844(%rcx)
	jne	.LBB8_84
# BB#79:                                # %if.then.181
	movl	$0, -40(%rbp)
.LBB8_80:                               # %for.cond.182
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB8_83
# BB#81:                                # %for.body.185
                                        #   in Loop: Header=BB8_80 Depth=1
	movl	$128, %eax
	movl	-40(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-40(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	-32(%rbp), %rdi
	movq	9840(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#82:                                # %for.inc.194
                                        #   in Loop: Header=BB8_80 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_80
.LBB8_83:                               # %for.end.196
	jmp	.LBB8_84
.LBB8_84:                               # %if.end.197
	movl	$767, %eax              # imm = 0x2FF
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 10856(%rcx)
	movq	-32(%rbp), %rcx
	movb	$0, 10849(%rcx)
	movq	-32(%rbp), %rcx
	addq	$11928, %rcx            # imm = 0x2E98
	movq	-184(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movq	-32(%rbp), %rdi
	cmpq	$0, display
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	je	.LBB8_86
# BB#85:                                # %cond.true.201
	movq	display, %rax
	movq	336(%rax), %rax
	movl	220(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	216(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB8_87
.LBB8_86:                               # %cond.false.203
	movl	$80, %eax
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB8_87
.LBB8_87:                               # %cond.end.204
	movl	-1292(%rbp), %eax       # 4-byte Reload
	cmpq	$0, display
	movl	%eax, -1296(%rbp)       # 4-byte Spill
	je	.LBB8_89
# BB#88:                                # %cond.true.207
	movq	display, %rax
	movq	336(%rax), %rax
	movl	228(%rax), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	subl	224(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB8_90
.LBB8_89:                               # %cond.false.212
	movl	$24, %eax
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB8_90
.LBB8_90:                               # %cond.end.213
	movl	-1300(%rbp), %eax       # 4-byte Reload
	movl	-116(%rbp), %ecx
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movl	-1296(%rbp), %esi       # 4-byte Reload
	movl	%eax, %edx
	callq	ChangeWindowSize
	cmpl	$0, %eax
	je	.LBB8_92
# BB#91:                                # %if.then.217
	movq	-32(%rbp), %rdi
	callq	FreeWindow
	movl	$-1, -4(%rbp)
	jmp	.LBB8_126
.LBB8_92:                               # %if.end.218
	movl	-76(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-32(%rbp), %rdi
	callq	ResetWindow
	cmpq	$0, -64(%rbp)
	je	.LBB8_94
# BB#93:                                # %if.then.221
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	SetCharsets
.LBB8_94:                               # %if.end.223
	cmpl	$0, VerboseCreate
	je	.LBB8_101
# BB#95:                                # %land.lhs.true.225
	cmpl	$3, -172(%rbp)
	je	.LBB8_101
# BB#96:                                # %if.then.228
	movabsq	$.L.str.3, %rsi
	movl	$9, %edx
	movq	display, %rax
	movq	%rax, -192(%rbp)
	movq	-32(%rbp), %rdi
	callq	WriteString
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8736(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8736(%rax), %rax
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1320(%rbp)       # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	-1320(%rbp), %rsi       # 8-byte Reload
	callq	WriteString
	movabsq	$.L.str.4, %rsi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	callq	WriteString
	movl	$0, -44(%rbp)
.LBB8_97:                               # %for.cond.233
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, 11000(%rcx,%rax,8)
	je	.LBB8_100
# BB#98:                                # %for.body.238
                                        #   in Loop: Header=BB8_97 Depth=1
	movabsq	$.L.str.5, %rsi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	callq	WriteString
	movq	-32(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	11000(%rax,%rsi,8), %rsi
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	11000(%rcx,%rax,8), %rax
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1336(%rbp)       # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	-1336(%rbp), %rsi       # 8-byte Reload
	callq	WriteString
# BB#99:                                # %for.inc.247
                                        #   in Loop: Header=BB8_97 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_97
.LBB8_100:                              # %for.end.249
	movabsq	$.L.str.6, %rsi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	callq	WriteString
	movq	-192(%rbp), %rsi
	movq	%rsi, display
.LBB8_101:                              # %if.end.250
	movq	-32(%rbp), %rax
	movl	$0, 10996(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 10992(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 168(%rax)
	cmpl	$0, -172(%rbp)
	jne	.LBB8_105
# BB#102:                               # %if.then.253
	movq	-32(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-184(%rbp), %rdx
	callq	ForkWindow
	movq	-32(%rbp), %rdx
	movl	%eax, 10992(%rdx)
	movq	-32(%rbp), %rdx
	cmpl	$0, 10992(%rdx)
	jge	.LBB8_104
# BB#103:                               # %if.then.260
	movq	-32(%rbp), %rdi
	callq	FreeWindow
	movl	$-1, -4(%rbp)
	jmp	.LBB8_126
.LBB8_104:                              # %if.end.261
	jmp	.LBB8_105
.LBB8_105:                              # %if.end.262
	cmpq	$0, display
	je	.LBB8_108
# BB#106:                               # %land.lhs.true.264
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB8_108
# BB#107:                               # %if.then.266
	movq	display, %rax
	movq	376(%rax), %rax
	movq	display, %rcx
	movq	%rax, 384(%rcx)
.LBB8_108:                              # %if.end.268
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	windows, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, windows
	cmpl	$3, -172(%rbp)
	jne	.LBB8_110
# BB#109:                               # %if.then.271
	movq	-32(%rbp), %rdi
	callq	SetForeWindow
	movq	-32(%rbp), %rdi
	movsbl	10849(%rdi), %edi
	callq	Activate
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$119, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$87, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	callq	WindowChanged
	movl	-36(%rbp), %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB8_126
.LBB8_110:                              # %if.end.274
	movq	$-1, %rax
	movl	-120(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, 11528(%rdx)
	movq	-32(%rbp), %rdx
	movq	%rax, 11536(%rdx)
# BB#111:                               # %do.body.276
	jmp	.LBB8_112
.LBB8_112:                              # %do.end.278
	movl	-120(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_117
# BB#113:                               # %if.then.282
	movq	-32(%rbp), %rax
	movq	$0, 11536(%rax)
	cmpq	$0, display
	jne	.LBB8_115
# BB#114:                               # %lor.lhs.false
	movq	-32(%rbp), %rax
	movl	11528(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB8_116
.LBB8_115:                              # %if.then.288
	movq	-32(%rbp), %rdi
	callq	SetUtmp
	movl	%eax, -1340(%rbp)       # 4-byte Spill
.LBB8_116:                              # %if.end.290
	jmp	.LBB8_117
.LBB8_117:                              # %if.end.291
	cmpl	$0, -96(%rbp)
	je	.LBB8_119
# BB#118:                               # %if.then.293
	movl	$1024, %edx             # imm = 0x400
	leaq	-1216(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	DoStartLog
	movl	%eax, -1344(%rbp)       # 4-byte Spill
.LBB8_119:                              # %if.end.296
	cmpl	$0, -56(%rbp)
	je	.LBB8_121
# BB#120:                               # %if.then.298
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 520(%rcx)
.LBB8_121:                              # %if.end.300
	movabsq	$win_writeev_fn, %rax
	movabsq	$win_readev_fn, %rcx
	movabsq	$win_resurrect_zombie_fn, %rdx
	movq	-32(%rbp), %rsi
	movl	$0, 468(%rsi)
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, 456(%rdi)
	movq	-32(%rbp), %rsi
	movq	%rdx, 448(%rsi)
	movq	-32(%rbp), %rdx
	movl	524(%rdx), %r8d
	movq	-32(%rbp), %rdx
	movl	%r8d, 304(%rdx)
	movq	-32(%rbp), %rdx
	movl	%r8d, 224(%rdx)
	movq	-32(%rbp), %rdx
	movl	$1, 228(%rdx)
	movq	-32(%rbp), %rdx
	movl	$2, 308(%rdx)
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 296(%rsi)
	movq	-32(%rbp), %rsi
	movq	%rdx, 216(%rsi)
	movq	-32(%rbp), %rdx
	movq	%rcx, 208(%rdx)
	movq	-32(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-32(%rbp), %rax
	addq	$4624, %rax             # imm = 0x1210
	movq	-32(%rbp), %rcx
	movq	%rax, 344(%rcx)
	movq	-32(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rdi
	callq	evenq
	movq	-32(%rbp), %rax
	addq	$280, %rax              # imm = 0x118
	movq	%rax, %rdi
	callq	evenq
	movabsq	$win_silenceev_fn, %rax
	movabsq	$paste_slowev_fn, %rcx
	movq	-32(%rbp), %rdx
	movl	$0, 10940(%rdx)
	movq	-32(%rbp), %rdx
	addq	$10880, %rdx            # imm = 0x2A80
	movq	-32(%rbp), %rsi
	movq	%rdx, 10928(%rsi)
	movq	-32(%rbp), %rdx
	movq	%rcx, 10920(%rdx)
	movq	-32(%rbp), %rcx
	movl	$0, 388(%rcx)
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 376(%rdx)
	movq	-32(%rbp), %rcx
	movq	%rax, 368(%rcx)
	movq	-32(%rbp), %rax
	cmpl	$0, 10844(%rax)
	jle	.LBB8_125
# BB#122:                               # %if.then.337
	jmp	.LBB8_123
.LBB8_123:                              # %do.body.338
	jmp	.LBB8_124
.LBB8_124:                              # %do.end.340
	movq	-32(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	-32(%rbp), %rcx
	imull	$1000, 10840(%rcx), %esi # imm = 0x3E8
	movq	%rax, %rdi
	callq	SetTimeout
	movq	-32(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdi
	callq	evenq
.LBB8_125:                              # %if.end.344
	movabsq	$win_destroyev_fn, %rax
	movq	-32(%rbp), %rcx
	movl	$0, 12828(%rcx)
	movq	-32(%rbp), %rcx
	movq	$0, 12816(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, 12808(%rcx)
	movq	-32(%rbp), %rdi
	callq	SetForeWindow
	movq	-32(%rbp), %rax
	movsbl	10849(%rax), %edi
	callq	Activate
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$119, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$87, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	callq	WindowChanged
	movl	-36(%rbp), %esi
	movl	%esi, -4(%rbp)
.LBB8_126:                              # %return
	movl	-4(%rbp), %eax
	addq	$1344, %rsp             # imm = 0x540
	popq	%rbp
	retq
.Lfunc_end8:
	.size	MakeWindow, .Lfunc_end8-MakeWindow
	.cfi_endproc

	.align	16, 0x90
	.type	OpenDevice,@function
OpenDevice:                             # @OpenDevice
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB9_38
.LBB9_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.1
	movabsq	$.L.str.20, %rax
	movq	-32(%rbp), %rcx
	movl	$3, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB9_38
.LBB9_4:                                # %if.end.2
	movabsq	$.L.str.21, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_6
# BB#5:                                 # %if.then.5
	xorl	%edi, %edi
	movabsq	$.L.str.22, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB9_38
.LBB9_6:                                # %if.else
	leaq	-192(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB9_15
# BB#7:                                 # %land.lhs.true
	movl	-168(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$8192, %eax             # imm = 0x2000
	jne	.LBB9_15
# BB#8:                                 # %if.then.9
	movl	$6, %esi
	movq	-48(%rbp), %rdi
	callq	access
	cmpl	$-1, %eax
	jne	.LBB9_10
# BB#9:                                 # %if.then.12
	callq	__errno_location
	movabsq	$.L.str.23, %rsi
	movl	(%rax), %edi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB9_38
.LBB9_10:                               # %if.end.14
	jmp	.LBB9_11
.LBB9_11:                               # %do.body
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	OpenTTY
	movl	%eax, -196(%rbp)
	cmpl	$0, %eax
	jge	.LBB9_14
# BB#13:                                # %if.then.18
	movl	$-1, -4(%rbp)
	jmp	.LBB9_38
.LBB9_14:                               # %if.end.19
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.20
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rdi
	callq	OpenPTY
	movl	%eax, -196(%rbp)
	cmpl	$-1, -196(%rbp)
	jne	.LBB9_17
# BB#16:                                # %if.then.23
	xorl	%edi, %edi
	movabsq	$.L.str.24, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB9_38
.LBB9_17:                               # %if.end.24
	movl	$21536, %eax            # imm = 0x5420
	movl	%eax, %esi
	leaq	-200(%rbp), %rcx
	movl	$1, -200(%rbp)
	movl	-196(%rbp), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB9_19
# BB#18:                                # %if.then.27
	callq	__errno_location
	movabsq	$.L.str.25, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	-196(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_19:                               # %if.end.30
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.31
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.32
	jmp	.LBB9_22
.LBB9_22:                               # %do.body.33
	jmp	.LBB9_23
.LBB9_23:                               # %do.end.34
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movl	-196(%rbp), %edi
	movb	$0, %al
	callq	fcntl
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx)
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB9_25
# BB#24:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB9_26
.LBB9_25:                               # %if.then.38
	movl	$2, %esi
	movl	-196(%rbp), %edi
	callq	tcflush
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB9_26:                               # %if.end.40
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB9_28
# BB#27:                                # %if.then.42
	movl	-196(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_38
.LBB9_28:                               # %if.end.43
	movl	$5, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	real_uid, %esi
	callq	chown
	cmpl	$0, %eax
	je	.LBB9_31
# BB#29:                                # %land.lhs.true.46
	cmpl	$0, eff_uid
	jne	.LBB9_31
# BB#30:                                # %if.then.48
	callq	__errno_location
	movabsq	$.L.str.26, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	-196(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_31:                               # %if.end.51
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	cmpl	$0, -20(%rbp)
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	je	.LBB9_33
# BB#32:                                # %cond.true
	movl	TtyMode, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB9_34
.LBB9_33:                               # %cond.false
	movl	TtyMode, %eax
	andl	$-19, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB9_34:                               # %cond.end
	movl	-228(%rbp), %eax        # 4-byte Reload
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	chmod
	cmpl	$0, %eax
	je	.LBB9_37
# BB#35:                                # %land.lhs.true.56
	cmpl	$0, eff_uid
	jne	.LBB9_37
# BB#36:                                # %if.then.58
	callq	__errno_location
	movabsq	$.L.str.27, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	-196(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_37:                               # %if.end.61
	movl	-196(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB9_38:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	OpenDevice, .Lfunc_end9-OpenDevice
	.cfi_endproc

	.globl	FreeWindow
	.align	16, 0x90
	.type	FreeWindow,@function
FreeWindow:                             # @FreeWindow
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB10_2
.LBB10_2:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	FreePseudowin
.LBB10_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	RemoveUtmp
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	CloseDevice
	movq	-8(%rbp), %rdi
	cmpq	console_window, %rdi
	jne	.LBB10_6
# BB#5:                                 # %if.then.1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movabsq	$.L.str.7, %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	TtyGrabConsole
	movq	$0, console_window
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB10_6:                               # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	$0, 10824(%rax)
	je	.LBB10_8
# BB#7:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	10824(%rax), %rdi
	callq	logfclose
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB10_8:                               # %if.end.8
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	ChangeWindowSize
	movq	-8(%rbp), %rdi
	cmpl	$3, 8(%rdi)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jne	.LBB10_16
# BB#9:                                 # %if.then.11
	movq	windows, %rax
	movq	%rax, -56(%rbp)
.LBB10_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB10_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-56(%rbp), %rax
	movq	9528(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB10_13
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-8(%rbp), %rax
	movq	9528(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 9528(%rcx)
.LBB10_13:                              # %if.end.17
                                        #   in Loop: Header=BB10_10 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_10
.LBB10_15:                              # %for.end
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.18
	movq	-8(%rbp), %rax
	cmpq	$0, 10000(%rax)
	je	.LBB10_18
# BB#17:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	10000(%rax), %rdi
	callq	free
.LBB10_18:                              # %if.end.22
	movl	$0, -20(%rbp)
.LBB10_19:                              # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 11000(%rcx,%rax,8)
	je	.LBB10_22
# BB#20:                                # %for.body.25
                                        #   in Loop: Header=BB10_19 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	11000(%rcx,%rax,8), %rdi
	callq	free
# BB#21:                                # %for.inc.29
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_19
.LBB10_22:                              # %for.end.30
	movq	-8(%rbp), %rax
	cmpq	$0, 11512(%rax)
	je	.LBB10_24
# BB#23:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	11512(%rax), %rdi
	callq	free
.LBB10_24:                              # %if.end.34
	movq	-8(%rbp), %rax
	cmpq	$0, 11520(%rax)
	je	.LBB10_26
# BB#25:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	11520(%rax), %rdi
	callq	free
.LBB10_26:                              # %if.end.38
	movq	displays, %rax
	movq	%rax, -16(%rbp)
.LBB10_27:                              # %for.cond.39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_37 Depth 2
                                        #       Child Loop BB10_39 Depth 3
	cmpq	$0, -16(%rbp)
	je	.LBB10_54
# BB#28:                                # %for.body.41
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB10_34
# BB#29:                                # %if.then.43
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_32
# BB#30:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB10_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_33
.LBB10_32:                              # %cond.false
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB10_33:                              # %cond.end
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 384(%rcx)
.LBB10_34:                              # %if.end.52
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB10_36
# BB#35:                                # %if.then.55
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 376(%rax)
.LBB10_36:                              # %if.end.57
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB10_37:                              # %for.cond.58
                                        #   Parent Loop BB10_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_39 Depth 3
	cmpq	$0, -32(%rbp)
	je	.LBB10_52
# BB#38:                                # %for.body.60
                                        #   in Loop: Header=BB10_37 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB10_39:                              # %for.cond.61
                                        #   Parent Loop BB10_27 Depth=1
                                        #     Parent Loop BB10_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -48(%rbp)
	je	.LBB10_44
# BB#40:                                # %for.body.63
                                        #   in Loop: Header=BB10_39 Depth=3
	movabsq	$WinLf, %rax
	movq	-48(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB10_42
# BB#41:                                # %if.then.65
                                        #   in Loop: Header=BB10_37 Depth=2
	jmp	.LBB10_44
.LBB10_42:                              # %if.end.66
                                        #   in Loop: Header=BB10_39 Depth=3
	jmp	.LBB10_43
.LBB10_43:                              # %for.inc.67
                                        #   in Loop: Header=BB10_39 Depth=3
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_39
.LBB10_44:                              # %for.end.68
                                        #   in Loop: Header=BB10_37 Depth=2
	cmpq	$0, -48(%rbp)
	jne	.LBB10_46
# BB#45:                                # %if.then.70
                                        #   in Loop: Header=BB10_37 Depth=2
	jmp	.LBB10_51
.LBB10_46:                              # %if.end.71
                                        #   in Loop: Header=BB10_37 Depth=2
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB10_48
# BB#47:                                # %if.then.73
                                        #   in Loop: Header=BB10_37 Depth=2
	jmp	.LBB10_51
.LBB10_48:                              # %if.end.74
                                        #   in Loop: Header=BB10_37 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	152(%rcx), %rax
	jne	.LBB10_50
# BB#49:                                # %if.then.77
                                        #   in Loop: Header=BB10_37 Depth=2
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
.LBB10_50:                              # %if.end.79
                                        #   in Loop: Header=BB10_37 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	callq	KillLayerChain
.LBB10_51:                              # %for.inc.81
                                        #   in Loop: Header=BB10_37 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_37
.LBB10_52:                              # %for.end.82
                                        #   in Loop: Header=BB10_27 Depth=1
	jmp	.LBB10_53
.LBB10_53:                              # %for.inc.83
                                        #   in Loop: Header=BB10_27 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB10_27
.LBB10_54:                              # %for.end.84
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB10_56
# BB#55:                                # %if.then.87
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	KillLayerChain
.LBB10_56:                              # %if.end.89
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB10_57:                              # %for.cond.90
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_60
# BB#58:                                # %for.body.92
                                        #   in Loop: Header=BB10_57 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$80, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-32(%rbp), %rax
	movl	216(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 208(%rax)
	movq	-32(%rbp), %rax
	movl	224(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 212(%rax)
	movq	-32(%rbp), %rdi
	callq	RethinkViewportOffsets
# BB#59:                                # %for.inc.97
                                        #   in Loop: Header=BB10_57 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_57
.LBB10_60:                              # %for.end.98
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	flayer, %rax
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_62
# BB#61:                                # %if.then.103
	movq	$0, flayer
.LBB10_62:                              # %if.end.104
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LayerCleanupMemory
	movq	-8(%rbp), %rdi
	callq	FreeWindowAcl
	movq	-8(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	addq	$280, %rax              # imm = 0x118
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	addq	$360, %rax              # imm = 0x168
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	addq	$440, %rax              # imm = 0x1B8
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	addq	$12800, %rax            # imm = 0x3200
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	addq	$10880, %rax            # imm = 0x2A80
	movq	%rax, %rdi
	callq	FreePaster
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	FreeWindow, .Lfunc_end10-FreeWindow
	.cfi_endproc

	.align	16, 0x90
	.type	ForkWindow,@function
ForkWindow:                             # @ForkWindow
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
	subq	$4576, %rsp             # imm = 0x11E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	32(%rdx), %eax
	movl	%eax, -4224(%rbp)
	movq	-16(%rbp), %rdx
	movl	36(%rdx), %eax
	movl	%eax, -4228(%rbp)
	movq	-16(%rbp), %rdx
	movq	168(%rdx), %rdx
	movq	%rdx, -4248(%rbp)
	movl	$-1, -4252(%rbp)
	cmpl	$0, pty_preopen
	je	.LBB11_6
# BB#1:                                 # %if.then
	jmp	.LBB11_2
.LBB11_2:                               # %do.body
	jmp	.LBB11_3
.LBB11_3:                               # %do.end
	movl	$258, %esi              # imm = 0x102
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -4252(%rbp)
	cmpl	$-1, %eax
	jne	.LBB11_5
# BB#4:                                 # %if.then.2
	callq	__errno_location
	movabsq	$.L.str.28, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB11_102
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.4
	jmp	.LBB11_7
.LBB11_7:                               # %do.body.5
	jmp	.LBB11_8
.LBB11_8:                               # %do.end.6
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -4216(%rbp)
	cmpq	$0, -4216(%rbp)
	jne	.LBB11_10
# BB#9:                                 # %if.then.8
	movabsq	$ShellArgs, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -4216(%rbp)
.LBB11_10:                              # %if.end.9
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	stderr(%rip), %rdi
	movl	%eax, -4344(%rbp)       # 4-byte Spill
	callq	fflush
	movl	%eax, -4348(%rbp)       # 4-byte Spill
	callq	fork
	movl	%eax, -36(%rbp)
	movl	%eax, %ecx
	subl	$-1, %eax
	movl	%ecx, -4352(%rbp)       # 4-byte Spill
	movl	%eax, -4356(%rbp)       # 4-byte Spill
	je	.LBB11_11
	jmp	.LBB11_103
.LBB11_103:                             # %if.end.9
	movl	-4352(%rbp), %eax       # 4-byte Reload
	testl	%eax, %eax
	je	.LBB11_12
	jmp	.LBB11_98
.LBB11_11:                              # %sw.bb
	callq	__errno_location
	movabsq	$.L.str.29, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB11_99
.LBB11_12:                              # %sw.bb.14
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movl	$2, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4368(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$3, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4376(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$15, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4384(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$21, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4392(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$22, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4400(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$13, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4408(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$25, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -4416(%rbp)       # 8-byte Spill
	callq	xsignal
	movq	$0, displays
	movl	real_gid, %edi
	movq	%rax, -4424(%rbp)       # 8-byte Spill
	callq	setgid
	cmpl	$0, %eax
	jne	.LBB11_14
# BB#13:                                # %lor.lhs.false
	movl	real_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB11_15
.LBB11_14:                              # %if.then.27
	callq	__errno_location
	movabsq	$.L.str.30, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB11_15:                              # %if.end.29
	movl	real_uid, %eax
	movl	%eax, eff_uid
	movl	real_gid, %eax
	movl	%eax, eff_gid
	cmpq	$0, -4248(%rbp)
	jne	.LBB11_21
# BB#16:                                # %if.then.31
	movq	-16(%rbp), %rax
	cmpq	$0, 11512(%rax)
	je	.LBB11_20
# BB#17:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	11512(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB11_20
# BB#18:                                # %land.lhs.true.35
	movq	-16(%rbp), %rax
	movq	11512(%rax), %rdi
	callq	chdir
	cmpl	$0, %eax
	je	.LBB11_20
# BB#19:                                # %if.then.39
	callq	__errno_location
	movabsq	$.L.str.31, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	11512(%rax), %rdx
	movb	$0, %al
	callq	Panic
.LBB11_20:                              # %if.end.42
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.43
	cmpq	$0, display
	je	.LBB11_23
# BB#22:                                # %if.then.45
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	brktty
	callq	freetty
	jmp	.LBB11_24
.LBB11_23:                              # %if.else
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	brktty
.LBB11_24:                              # %if.end.46
	cmpl	$-1, -4252(%rbp)
	je	.LBB11_26
# BB#25:                                # %if.then.49
	xorl	%edi, %edi
	callq	close
	movl	-4252(%rbp), %edi
	movl	%eax, -4428(%rbp)       # 4-byte Spill
	callq	dup
	movl	-4252(%rbp), %edi
	movl	%eax, -4432(%rbp)       # 4-byte Spill
	callq	close
	movq	-16(%rbp), %rcx
	movl	524(%rcx), %edi
	movl	%eax, -4436(%rbp)       # 4-byte Spill
	callq	closeallfiles
	xorl	%edi, %edi
	callq	dup
	movl	%eax, -4252(%rbp)
	jmp	.LBB11_27
.LBB11_26:                              # %if.else.54
	movq	-16(%rbp), %rax
	movl	524(%rax), %edi
	callq	closeallfiles
.LBB11_27:                              # %if.end.56
	xorl	%edi, %edi
	callq	close
	movl	$1, %edi
	movl	%eax, -4440(%rbp)       # 4-byte Spill
	callq	close
	movl	$2, %edi
	movl	%eax, -4444(%rbp)       # 4-byte Spill
	callq	close
	movl	$-1, -4220(%rbp)
	cmpq	$0, -4248(%rbp)
	movl	%eax, -4448(%rbp)       # 4-byte Spill
	je	.LBB11_29
# BB#28:                                # %cond.true
	movq	-4248(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4452(%rbp)       # 4-byte Spill
	jmp	.LBB11_30
.LBB11_29:                              # %cond.false
	movl	$21, %eax
	movl	%eax, -4452(%rbp)       # 4-byte Spill
	jmp	.LBB11_30
.LBB11_30:                              # %cond.end
	movl	-4452(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4236(%rbp)
# BB#31:                                # %do.body.61
	jmp	.LBB11_32
.LBB11_32:                              # %do.end.62
	movl	$0, -4240(%rbp)
	movl	$0, -4232(%rbp)
.LBB11_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -4232(%rbp)
	jge	.LBB11_47
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	$1, %eax
	movl	-4236(%rbp), %ecx
	movl	-4232(%rbp), %edx
	shll	$1, %edx
	movl	%ecx, -4456(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-4456(%rbp), %edx       # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB11_44
# BB#35:                                # %if.then.66
                                        #   in Loop: Header=BB11_33 Depth=1
	cmpl	$0, -4220(%rbp)
	jge	.LBB11_42
# BB#36:                                # %if.then.69
                                        #   in Loop: Header=BB11_33 Depth=1
	cmpl	$0, separate_sids
	je	.LBB11_38
# BB#37:                                # %if.then.71
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -4220(%rbp)
	jmp	.LBB11_39
.LBB11_38:                              # %if.else.73
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	$258, %esi              # imm = 0x102
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -4220(%rbp)
.LBB11_39:                              # %if.end.75
                                        #   in Loop: Header=BB11_33 Depth=1
	cmpl	$0, -4220(%rbp)
	jge	.LBB11_41
# BB#40:                                # %if.then.78
	callq	__errno_location
	movabsq	$.L.str.32, %rsi
	movl	(%rax), %edi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB11_41:                              # %if.end.80
                                        #   in Loop: Header=BB11_33 Depth=1
	jmp	.LBB11_43
.LBB11_42:                              # %if.else.81
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	-4220(%rbp), %edi
	callq	dup
	movl	%eax, -4460(%rbp)       # 4-byte Spill
.LBB11_43:                              # %if.end.83
                                        #   in Loop: Header=BB11_33 Depth=1
	jmp	.LBB11_45
.LBB11_44:                              # %if.else.84
                                        #   in Loop: Header=BB11_33 Depth=1
	movq	-16(%rbp), %rax
	movl	524(%rax), %edi
	callq	dup
	movl	$1, -4240(%rbp)
	movl	%eax, -4464(%rbp)       # 4-byte Spill
.LBB11_45:                              # %if.end.87
                                        #   in Loop: Header=BB11_33 Depth=1
	jmp	.LBB11_46
.LBB11_46:                              # %for.inc
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	-4232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4232(%rbp)
	jmp	.LBB11_33
.LBB11_47:                              # %for.end
	cmpl	$0, -4240(%rbp)
	je	.LBB11_53
# BB#48:                                # %if.then.89
	jmp	.LBB11_49
.LBB11_49:                              # %do.body.90
	jmp	.LBB11_50
.LBB11_50:                              # %do.end.91
	movl	$4, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	524(%rax), %edi
	movb	$0, %al
	callq	fcntl
	cmpl	$0, %eax
	je	.LBB11_52
# BB#51:                                # %if.then.95
	callq	__errno_location
	movabsq	$.L.str.33, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB11_52:                              # %if.end.97
	jmp	.LBB11_53
.LBB11_53:                              # %if.end.98
	movq	-16(%rbp), %rax
	movl	524(%rax), %edi
	callq	close
	cmpl	$-1, -4252(%rbp)
	movl	%eax, -4468(%rbp)       # 4-byte Spill
	je	.LBB11_55
# BB#54:                                # %if.then.103
	movl	-4252(%rbp), %edi
	callq	close
	movl	%eax, -4472(%rbp)       # 4-byte Spill
.LBB11_55:                              # %if.end.105
	cmpl	$0, -4220(%rbp)
	jl	.LBB11_72
# BB#56:                                # %if.then.108
	movl	-4220(%rbp), %edi
	callq	InitPTY
	movl	-4220(%rbp), %edi
	callq	fgtty
	cmpl	$0, %eax
	je	.LBB11_58
# BB#57:                                # %if.then.111
	callq	__errno_location
	movabsq	$.L.str.34, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB11_58:                              # %if.end.113
	cmpq	$0, display
	je	.LBB11_62
# BB#59:                                # %if.then.115
	jmp	.LBB11_60
.LBB11_60:                              # %do.body.116
	jmp	.LBB11_61
.LBB11_61:                              # %do.end.117
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	%rax, -4320(%rbp)
	jmp	.LBB11_65
.LBB11_62:                              # %if.else.118
	jmp	.LBB11_63
.LBB11_63:                              # %do.body.119
	jmp	.LBB11_64
.LBB11_64:                              # %do.end.120
	xorl	%esi, %esi
	leaq	-4312(%rbp), %rax
	movq	%rax, -4320(%rbp)
	movq	-4320(%rbp), %rdi
	callq	InitTTY
.LBB11_65:                              # %if.end.121
	cmpq	$0, -4248(%rbp)
	je	.LBB11_71
# BB#66:                                # %land.lhs.true.123
	movl	-4236(%rbp), %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB11_68
# BB#67:                                # %lor.lhs.false.126
	movl	-4236(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB11_71
.LBB11_68:                              # %if.then.129
	jmp	.LBB11_69
.LBB11_69:                              # %do.body.130
	jmp	.LBB11_70
.LBB11_70:                              # %do.end.131
	movq	-4320(%rbp), %rax
	movl	12(%rax), %ecx
	andl	$-9, %ecx
	movl	%ecx, 12(%rax)
	movq	-4320(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-257, %ecx             # imm = 0xFFFFFFFFFFFFFEFF
	movl	%ecx, (%rax)
.LBB11_71:                              # %if.end.135
	movl	-4220(%rbp), %edi
	movq	-4320(%rbp), %rsi
	callq	SetTTY
	movl	$21524, %edi            # imm = 0x5414
	movl	%edi, %esi
	movabsq	$glwz, %rax
	movl	-4224(%rbp), %edi
	movw	%di, %cx
	movw	%cx, glwz+2
	movl	-4228(%rbp), %edi
	movw	%di, %cx
	movw	%cx, glwz
	movl	-4220(%rbp), %edi
	movq	%rax, %rdx
	movb	$0, %al
	callq	ioctl
	movl	$4, %esi
	xorl	%edx, %edx
	movl	-4220(%rbp), %edi
	movl	%eax, -4476(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	fcntl
	movl	%eax, -4480(%rbp)       # 4-byte Spill
.LBB11_72:                              # %if.end.140
	movb	$1, %al
	cmpq	$0, display
	movb	%al, -4481(%rbp)        # 1-byte Spill
	je	.LBB11_74
# BB#73:                                # %lor.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 8728(%rax)
	setne	%cl
	movb	%cl, -4481(%rbp)        # 1-byte Spill
.LBB11_74:                              # %lor.end
	movb	-4481(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	MakeTermcap
	movl	$4096, %edi             # imm = 0x1000
	movl	%edi, %edx
	leaq	-4208(%rbp), %rcx
	movq	NewEnv, %rsi
	movq	%rax, 16(%rsi)
	movl	$.L.str.35, %edi
	movl	%edi, %esi
	movq	%rcx, %rdi
	movq	%rcx, -4496(%rbp)       # 8-byte Spill
	movq	%rdx, -4504(%rbp)       # 8-byte Spill
	callq	strcpy
	movq	-4496(%rbp), %rcx       # 8-byte Reload
	addq	$6, %rcx
	movq	ShellProg, %rdx
	movq	ShellProg, %rsi
	movsbl	(%rsi), %r8d
	cmpl	$45, %r8d
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rsi
	addq	%rsi, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-4504(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -4512(%rbp)       # 8-byte Spill
	callq	strncpy
	leaq	-4208(%rbp), %rcx
	movb	$0, -106(%rbp)
	movq	NewEnv, %rdx
	movq	%rcx, 32(%rdx)
	movq	%rax, -4520(%rbp)       # 8-byte Spill
# BB#75:                                # %do.body.155
	jmp	.LBB11_76
.LBB11_76:                              # %do.end.156
	movq	-16(%rbp), %rax
	cmpq	$0, 11520(%rax)
	je	.LBB11_89
# BB#77:                                # %land.lhs.true.158
	movq	-16(%rbp), %rax
	movq	11520(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB11_89
# BB#78:                                # %land.lhs.true.162
	movq	-16(%rbp), %rax
	movq	11520(%rax), %rsi
	movl	$screenterm, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_89
# BB#79:                                # %land.lhs.true.166
	movq	-16(%rbp), %rax
	movq	11520(%rax), %rdi
	callq	strlen
	cmpq	$32, %rax
	jae	.LBB11_89
# BB#80:                                # %if.then.171
	movabsq	$.L.str.36, %rsi
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	11520(%rax), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -4524(%rbp)       # 4-byte Spill
# BB#81:                                # %do.body.175
	jmp	.LBB11_82
.LBB11_82:                              # %do.end.176
	movl	$124, %esi
	leaq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	11520(%rcx), %rdi
	movl	%esi, -4528(%rbp)       # 4-byte Spill
	movq	%rax, -4536(%rbp)       # 8-byte Spill
	callq	strlen
	movb	%al, %dl
	movb	%dl, -4337(%rbp)
	movq	NewEnv, %rax
	movq	-4536(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	NewEnv, %rax
	movq	16(%rax), %rdi
	movl	-4528(%rbp), %esi       # 4-byte Reload
	callq	index
	movq	%rax, -4328(%rbp)
	cmpq	$0, %rax
	je	.LBB11_88
# BB#83:                                # %if.then.185
	movl	$124, %esi
	movq	-4328(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4328(%rbp)
	movq	%rax, %rdi
	callq	index
	movq	%rax, -4336(%rbp)
	cmpq	$0, %rax
	je	.LBB11_87
# BB#84:                                # %if.then.188
	movq	NewEnv, %rax
	movq	16(%rax), %rdi
	callq	strlen
	movq	-4336(%rbp), %rdi
	movq	-4328(%rbp), %rcx
	subq	%rcx, %rdi
	subq	%rdi, %rax
	movsbq	-4337(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	$1024, %rax             # imm = 0x400
	jae	.LBB11_86
# BB#85:                                # %if.then.194
	movq	-4336(%rbp), %rdi
	movq	-4328(%rbp), %rax
	movsbl	-4337(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-4336(%rbp), %rdx
	movq	%rdi, -4544(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -4552(%rbp)       # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movq	-4544(%rbp), %rdi       # 8-byte Reload
	movq	-4552(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	bcopy
	movq	-16(%rbp), %rax
	movq	11520(%rax), %rdi
	movq	-4328(%rbp), %rsi
	movsbq	-4337(%rbp), %rdx
	callq	bcopy
.LBB11_86:                              # %if.end.202
	jmp	.LBB11_87
.LBB11_87:                              # %if.end.203
	jmp	.LBB11_88
.LBB11_88:                              # %if.end.204
	jmp	.LBB11_89
.LBB11_89:                              # %if.end.205
	movabsq	$.L.str.37, %rsi
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	192(%rax), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-96(%rbp), %rsi
	movq	NewEnv, %rdi
	movq	%rsi, 24(%rdi)
	movq	-4216(%rbp), %rsi
	movsbl	(%rsi), %edx
	cmpl	$45, %edx
	movl	%eax, -4556(%rbp)       # 4-byte Spill
	jne	.LBB11_91
# BB#90:                                # %if.then.213
	movq	-4216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4216(%rbp)
.LBB11_91:                              # %if.end.215
	movq	-4216(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB11_93
# BB#92:                                # %if.then.217
	movabsq	$DefaultShell, %rax
	movq	%rax, -4216(%rbp)
.LBB11_93:                              # %if.end.218
	jmp	.LBB11_94
.LBB11_94:                              # %do.body.219
	jmp	.LBB11_95
.LBB11_95:                              # %do.end.220
	movq	-4216(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	NewEnv, %rdx
	callq	execvpe
	movl	%eax, -4560(%rbp)       # 4-byte Spill
# BB#96:                                # %do.body.222
	jmp	.LBB11_97
.LBB11_97:                              # %do.end.223
	callq	__errno_location
	movabsq	$.L.str.38, %rsi
	movl	(%rax), %edi
	movq	-4216(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB11_98:                              # %sw.default
	jmp	.LBB11_99
.LBB11_99:                              # %sw.epilog
	cmpl	$-1, -4252(%rbp)
	je	.LBB11_101
# BB#100:                               # %if.then.227
	movl	-4252(%rbp), %edi
	callq	close
	movl	%eax, -4564(%rbp)       # 4-byte Spill
.LBB11_101:                             # %if.end.229
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB11_102:                             # %return
	movl	-4(%rbp), %eax
	addq	$4576, %rsp             # imm = 0x11E0
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ForkWindow, .Lfunc_end11-ForkWindow
	.cfi_endproc

	.align	16, 0x90
	.type	win_resurrect_zombie_fn,@function
win_resurrect_zombie_fn:                # @win_resurrect_zombie_fn
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB12_2
.LBB12_2:                               # %do.end
	movq	-24(%rbp), %rax
	movl	10996(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	10992(%rax), %ecx
	je	.LBB12_4
# BB#3:                                 # %if.then
	jmp	.LBB12_7
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.body.1
	jmp	.LBB12_6
.LBB12_6:                               # %do.end.2
	movabsq	$.L.str.6, %rsi
	movl	$2, %edx
	movq	-24(%rbp), %rdi
	callq	WriteString
	movq	-24(%rbp), %rdi
	callq	RemakeWindow
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB12_7:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	win_resurrect_zombie_fn, .Lfunc_end12-win_resurrect_zombie_fn
	.cfi_endproc

	.align	16, 0x90
	.type	win_readev_fn,@function
win_readev_fn:                          # @win_readev_fn
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
	subq	$4160, %rsp             # imm = 0x1040
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-4128(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rdx, -4136(%rbp)
	movl	$4096, -4140(%rbp)      # imm = 0x1000
	movq	-24(%rbp), %rdx
	cmpq	$0, 168(%rdx)
	movb	%cl, -4149(%rbp)        # 1-byte Spill
	je	.LBB13_2
# BB#1:                                 # %land.rhs
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movl	(%rax), %ecx
	andl	$3, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -4149(%rbp)        # 1-byte Spill
.LBB13_2:                               # %land.end
	movb	-4149(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4148(%rbp)
	cmpl	$0, -4148(%rbp)
	je	.LBB13_8
# BB#3:                                 # %if.then
	jmp	.LBB13_4
.LBB13_4:                               # %do.body
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movl	$4096, %eax             # imm = 0x1000
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rcx
	subl	5808(%rcx), %eax
	movl	%eax, -4140(%rbp)
	cmpl	$0, -4140(%rbp)
	jg	.LBB13_7
# BB#6:                                 # %if.then.5
	movabsq	$const_IOSIZE, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	addq	$5808, %rax             # imm = 0x16B0
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB13_54
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.8
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	muchpending
	cmpl	$0, %eax
	je	.LBB13_11
# BB#10:                                # %if.then.11
	jmp	.LBB13_54
.LBB13_11:                              # %if.end.12
	movq	-24(%rbp), %rax
	cmpq	$0, 12704(%rax)
	jne	.LBB13_15
# BB#12:                                # %if.then.14
	movq	-24(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB13_14
# BB#13:                                # %if.then.16
	movabsq	$const_one, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	addq	$160, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB13_54
.LBB13_14:                              # %if.end.20
	jmp	.LBB13_15
.LBB13_15:                              # %if.end.21
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB13_17
# BB#16:                                # %if.then.24
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB13_17:                              # %if.end.27
	movq	-24(%rbp), %rax
	movl	8724(%rax), %ecx
	movl	%ecx, -4144(%rbp)
	cmpl	$0, %ecx
	je	.LBB13_19
# BB#18:                                # %if.then.29
	movq	-24(%rbp), %rax
	movl	$0, 8724(%rax)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$4628, %rax             # imm = 0x1214
	movl	-4144(%rbp), %edx
	movq	%rax, %rsi
	callq	WriteString
	jmp	.LBB13_54
.LBB13_19:                              # %if.end.32
	jmp	.LBB13_20
.LBB13_20:                              # %do.body.33
	jmp	.LBB13_21
.LBB13_21:                              # %do.end.34
	leaq	-4128(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movslq	-4140(%rbp), %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -4144(%rbp)
	cmpl	$0, %edi
	jge	.LBB13_28
# BB#22:                                # %if.then.40
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB13_24
# BB#23:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB13_25
.LBB13_24:                              # %if.then.47
	jmp	.LBB13_54
.LBB13_25:                              # %if.end.48
	jmp	.LBB13_26
.LBB13_26:                              # %do.body.49
	jmp	.LBB13_27
.LBB13_27:                              # %do.end.50
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	WindowDied
	jmp	.LBB13_54
.LBB13_28:                              # %if.end.51
	cmpl	$0, -4144(%rbp)
	jne	.LBB13_32
# BB#29:                                # %if.then.54
	jmp	.LBB13_30
.LBB13_30:                              # %do.body.55
	jmp	.LBB13_31
.LBB13_31:                              # %do.end.56
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	WindowDied
	jmp	.LBB13_54
.LBB13_32:                              # %if.end.57
	jmp	.LBB13_33
.LBB13_33:                              # %do.body.58
	jmp	.LBB13_34
.LBB13_34:                              # %do.end.59
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB13_44
# BB#35:                                # %if.then.62
	cmpb	$0, -4128(%rbp)
	je	.LBB13_43
# BB#36:                                # %if.then.64
	jmp	.LBB13_37
.LBB13_37:                              # %do.body.65
	jmp	.LBB13_38
.LBB13_38:                              # %do.end.66
	movsbl	-4128(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB13_40
# BB#39:                                # %if.then.71
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	WNewAutoFlow
.LBB13_40:                              # %if.end.72
	movsbl	-4128(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB13_42
# BB#41:                                # %if.then.77
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	WNewAutoFlow
.LBB13_42:                              # %if.end.78
	jmp	.LBB13_43
.LBB13_43:                              # %if.end.79
	movq	-4136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4136(%rbp)
	movl	-4144(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -4144(%rbp)
.LBB13_44:                              # %if.end.80
	cmpl	$0, -4144(%rbp)
	jne	.LBB13_46
# BB#45:                                # %if.then.83
	jmp	.LBB13_54
.LBB13_46:                              # %if.end.84
	cmpl	$0, zmodem_mode
	je	.LBB13_49
# BB#47:                                # %land.lhs.true.86
	movq	-24(%rbp), %rdi
	movq	-4136(%rbp), %rsi
	movl	-4144(%rbp), %edx
	callq	zmodem_parse
	cmpl	$0, %eax
	je	.LBB13_49
# BB#48:                                # %if.then.89
	jmp	.LBB13_54
.LBB13_49:                              # %if.end.90
	cmpl	$0, -4148(%rbp)
	je	.LBB13_53
# BB#50:                                # %if.then.92
	jmp	.LBB13_51
.LBB13_51:                              # %do.body.93
	jmp	.LBB13_52
.LBB13_52:                              # %do.end.94
	movq	-4136(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	addq	$1712, %rax             # imm = 0x6B0
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rcx
	movslq	5808(%rcx), %rcx
	addq	%rcx, %rax
	movslq	-4144(%rbp), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movl	-4144(%rbp), %r8d
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	addl	5808(%rax), %r8d
	movl	%r8d, 5808(%rax)
.LBB13_53:                              # %if.end.102
	movl	$1, %esi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LayPause
	movq	-24(%rbp), %rdi
	movq	-4136(%rbp), %rsi
	movl	-4144(%rbp), %edx
	callq	WriteString
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LayPause
.LBB13_54:                              # %return
	addq	$4160, %rsp             # imm = 0x1040
	popq	%rbp
	retq
.Lfunc_end13:
	.size	win_readev_fn, .Lfunc_end13-win_readev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	win_writeev_fn,@function
win_writeev_fn:                         # @win_writeev_fn
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 4624(%rsi)
	je	.LBB14_8
# BB#1:                                 # %if.then
	jmp	.LBB14_2
.LBB14_2:                               # %do.body
	jmp	.LBB14_3
.LBB14_3:                               # %do.end
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movq	-24(%rbp), %rax
	addq	$528, %rax              # imm = 0x210
	movq	-24(%rbp), %rcx
	movslq	4624(%rcx), %rdx
	movq	%rax, %rsi
	callq	write
	movl	%eax, %edi
	movl	%edi, -28(%rbp)
	cmpl	$0, %edi
	jg	.LBB14_5
# BB#4:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movl	4624(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB14_5:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	4624(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 4624(%rcx)
	cmpl	$0, %edx
	je	.LBB14_7
# BB#6:                                 # %if.then.8
	movq	-24(%rbp), %rax
	addq	$528, %rax              # imm = 0x210
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	addq	$528, %rcx              # imm = 0x210
	movq	-24(%rbp), %rdx
	movslq	4624(%rdx), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB14_7:                               # %if.end.15
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.16
	movq	-24(%rbp), %rax
	cmpl	$0, 10896(%rax)
	je	.LBB14_13
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 10856(%rax)
	jne	.LBB14_13
# BB#10:                                # %if.then.19
	movq	-24(%rbp), %rax
	addq	$10880, %rax            # imm = 0x2A80
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, flayer
	cmpq	$0, flayer
	je	.LBB14_12
# BB#11:                                # %if.then.22
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rcx
	addq	$16, %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	DoProcess
.LBB14_12:                              # %if.end.24
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	win_writeev_fn, .Lfunc_end14-win_writeev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	paste_slowev_fn,@function
paste_slowev_fn:                        # @paste_slowev_fn
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movl	$1, -36(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, flayer
	cmpq	$0, flayer
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB15_4
# BB#3:                                 # %if.then.3
	jmp	.LBB15_6
.LBB15_4:                               # %if.end.4
	leaq	-36(%rbp), %rdx
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	callq	DoProcess
	movl	$1, %r8d
	subl	-36(%rbp), %r8d
	movq	-24(%rbp), %rax
	movl	16(%rax), %r9d
	subl	%r8d, %r9d
	movl	%r9d, 16(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB15_6
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-32(%rbp), %rcx
	movl	10856(%rcx), %esi
	movq	%rax, %rdi
	callq	SetTimeout
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	evenq
.LBB15_6:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	paste_slowev_fn, .Lfunc_end15-paste_slowev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	win_silenceev_fn,@function
win_silenceev_fn:                       # @win_silenceev_fn
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB16_2
.LBB16_2:                               # %do.end
	movq	displays, %rax
	movq	%rax, display
.LBB16_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	cmpq	$0, display
	je	.LBB16_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB16_5:                               # %for.cond.1
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB16_10
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB16_5 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB16_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_10
.LBB16_8:                               # %if.end
                                        #   in Loop: Header=BB16_5 Depth=2
	jmp	.LBB16_9
.LBB16_9:                               # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB16_5
.LBB16_10:                              # %for.end
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.5
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_15
.LBB16_12:                              # %if.end.6
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rsi
	movq	9840(%rsi), %rsi
	movzbl	(%rsi,%rcx), %edx
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edi
	andl	$7, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB16_14
# BB#13:                                # %if.then.12
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_15
.LBB16_14:                              # %if.end.13
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.44, %rsi
	movq	-24(%rbp), %rax
	movl	192(%rax), %edx
	movq	-24(%rbp), %rax
	movl	10840(%rax), %ecx
	movb	$0, %al
	callq	Msg
	movl	$102, %esi
	movq	-24(%rbp), %r8
	movl	$2, 10844(%r8)
	movq	-24(%rbp), %rdi
	callq	WindowChanged
.LBB16_15:                              # %for.inc.14
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB16_3
.LBB16_16:                              # %for.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	win_silenceev_fn, .Lfunc_end16-win_silenceev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	win_destroyev_fn,@function
win_destroyev_fn:                       # @win_destroyev_fn
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
	subq	$32, %rsp
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	12880(%rsi), %esi
	callq	WindowDied
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	win_destroyev_fn, .Lfunc_end17-win_destroyev_fn
	.cfi_endproc

	.globl	RemakeWindow
	.align	16, 0x90
	.type	RemakeWindow,@function
RemakeWindow:                           # @RemakeWindow
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
	subq	$112, %rsp
	leaq	-24(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movl	nwin_default+48, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	addq	$11000, %rdi            # imm = 0x2AF8
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	callq	OpenDevice
	movl	%eax, -32(%rbp)
	cmpl	$0, %eax
	jge	.LBB18_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB18_20
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$12800, %rax            # imm = 0x3200
	movq	%rax, %rdi
	callq	evdeq
	movq	-16(%rbp), %rax
	addq	$11928, %rax            # imm = 0x2E98
	movq	-24(%rbp), %rdi
	movsbl	(%rdi), %ecx
	cmpl	$0, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB18_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	8736(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB18_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$767, %ecx              # imm = 0x2FF
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 524(%rdx)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 224(%rdx)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 304(%rdx)
	movq	-16(%rbp), %rdx
	addq	$200, %rdx
	movq	%rdx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	evenq
	movq	-16(%rbp), %rax
	addq	$280, %rax              # imm = 0x118
	movq	%rax, %rdi
	callq	evenq
	cmpl	$0, VerboseCreate
	je	.LBB18_11
# BB#6:                                 # %if.then.7
	movabsq	$.L.str.3, %rsi
	movl	$9, %edx
	movq	display, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	WriteString
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8736(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8736(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	WriteString
	movabsq	$.L.str.4, %rsi
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	callq	WriteString
	movl	$0, -32(%rbp)
.LBB18_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 11000(%rcx,%rax,8)
	je	.LBB18_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB18_7 Depth=1
	movabsq	$.L.str.5, %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	WriteString
	movq	-16(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	11000(%rax,%rsi,8), %rsi
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	11000(%rcx,%rax,8), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	WriteString
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB18_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB18_7
.LBB18_10:                              # %for.end
	movabsq	$.L.str.6, %rsi
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	callq	WriteString
	movq	-40(%rbp), %rsi
	movq	%rsi, display
.LBB18_11:                              # %if.end.22
	movq	-16(%rbp), %rax
	movl	$0, 10996(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 10992(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB18_15
# BB#12:                                # %if.then.26
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$11000, %rax            # imm = 0x2AF8
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	ForkWindow
	movq	-16(%rbp), %rdx
	movl	%eax, 10992(%rdx)
	movq	-16(%rbp), %rdx
	cmpl	$0, 10992(%rdx)
	jge	.LBB18_14
# BB#13:                                # %if.then.34
	movl	$-1, -4(%rbp)
	jmp	.LBB18_20
.LBB18_14:                              # %if.end.35
	jmp	.LBB18_15
.LBB18_15:                              # %if.end.36
	movq	-16(%rbp), %rax
	cmpq	$0, 11536(%rax)
	jne	.LBB18_19
# BB#16:                                # %land.lhs.true
	cmpq	$0, display
	jne	.LBB18_18
# BB#17:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	11528(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB18_19
.LBB18_18:                              # %if.then.41
	movq	-16(%rbp), %rdi
	callq	SetUtmp
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB18_19:                              # %if.end.43
	movl	$102, %esi
	movq	-16(%rbp), %rdi
	callq	WindowChanged
	movq	-16(%rbp), %rdi
	movl	192(%rdi), %esi
	movl	%esi, -4(%rbp)
.LBB18_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	RemakeWindow, .Lfunc_end18-RemakeWindow
	.cfi_endproc

	.globl	CloseDevice
	.align	16, 0x90
	.type	CloseDevice,@function
CloseDevice:                            # @CloseDevice
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 524(%rdi)
	jge	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_5
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then.2
	movl	$438, %esi              # imm = 0x1B6
	movq	-8(%rbp), %rax
	addq	$11928, %rax            # imm = 0x2E98
	movq	%rax, %rdi
	callq	chmod
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	addq	$11928, %rdi            # imm = 0x2E98
	movl	%esi, -12(%rbp)         # 4-byte Spill
	movl	-12(%rbp), %edx         # 4-byte Reload
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	chown
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB19_4:                               # %if.end.6
	movq	-8(%rbp), %rax
	movl	524(%rax), %edi
	callq	close
	movq	-8(%rbp), %rcx
	movl	$-1, 524(%rcx)
	movq	-8(%rbp), %rcx
	movb	$0, 11928(%rcx)
	movq	-8(%rbp), %rcx
	addq	$200, %rcx
	movq	%rcx, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	evdeq
	movq	-8(%rbp), %rcx
	addq	$280, %rcx              # imm = 0x118
	movq	%rcx, %rdi
	callq	evdeq
	movq	-8(%rbp), %rcx
	movl	$-1, 304(%rcx)
	movq	-8(%rbp), %rcx
	movl	$-1, 224(%rcx)
.LBB19_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	CloseDevice, .Lfunc_end19-CloseDevice
	.cfi_endproc

	.globl	FreePseudowin
	.align	16, 0x90
	.type	FreePseudowin,@function
FreePseudowin:                          # @FreePseudowin
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB20_2
.LBB20_2:                               # %do.end
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	-8(%rbp), %rax
	movl	524(%rax), %edi
	movb	$0, %al
	callq	fcntl
	cmpl	$0, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.14, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB20_4:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB20_9
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_9
# BB#6:                                 # %if.then.3
	movl	$21536, %eax            # imm = 0x5420
	movl	%eax, %esi
	leaq	-20(%rbp), %rcx
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdx
	movl	524(%rdx), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB20_8
# BB#7:                                 # %if.then.7
	callq	__errno_location
	movabsq	$.L.str.15, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB20_8:                               # %if.end.9
	jmp	.LBB20_9
.LBB20_9:                               # %if.end.10
	movl	$438, %esi              # imm = 0x1B6
	movq	-16(%rbp), %rax
	addq	$944, %rax              # imm = 0x3B0
	movq	%rax, %rdi
	callq	chmod
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	addq	$944, %rdi              # imm = 0x3B0
	movl	%esi, -24(%rbp)         # 4-byte Spill
	movl	-24(%rbp), %edx         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	chown
	movq	-16(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jl	.LBB20_11
# BB#10:                                # %if.then.16
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	close
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB20_11:                              # %if.end.19
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	evdeq
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	-16(%rbp), %rdi
	addq	$5808, %rdi             # imm = 0x16B0
	cmpq	%rdi, %rax
	jne	.LBB20_13
# BB#12:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 264(%rax)
.LBB20_13:                              # %if.end.25
	movq	-8(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rdi
	callq	evenq
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	FreePseudowin, .Lfunc_end20-FreePseudowin
	.cfi_endproc

	.globl	winexec
	.align	16, 0x90
	.type	winexec,@function
winexec:                                # @winexec
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, display
	je	.LBB21_2
# BB#1:                                 # %cond.true
	movq	fore, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	movq	windows, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB21_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	jne	.LBB21_5
# BB#4:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_5:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_7
# BB#6:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB21_11
.LBB21_7:                               # %if.then.3
	movq	-72(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB21_9
# BB#8:                                 # %cond.true.6
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	addq	$176, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB21_10
.LBB21_9:                               # %cond.false.8
	movabsq	$.L.str.9, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB21_10
.LBB21_10:                              # %cond.end.9
	movq	-104(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_11:                              # %if.end.11
	movq	-72(%rbp), %rax
	cmpl	$0, 524(%rax)
	jge	.LBB21_13
# BB#12:                                # %if.then.13
	xorl	%edi, %edi
	movabsq	$.L.str.10, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_13:                              # %if.end.14
	movl	$1, %eax
	movl	%eax, %edi
	movl	$5816, %eax             # imm = 0x16B8
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -80(%rbp)
	cmpq	$0, %rax
	jne	.LBB21_15
# BB#14:                                # %if.then.16
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_15:                              # %if.end.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB21_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB21_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB21_16 Depth=1
	jmp	.LBB21_18
.LBB21_18:                              # %for.inc
                                        #   in Loop: Header=BB21_16 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_16
.LBB21_19:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB21_20:                              # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$58, %edx
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB21_23
# BB#21:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB21_20 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$46, %edx
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB21_23
# BB#22:                                # %lor.rhs
                                        #   in Loop: Header=BB21_20 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$33, %ecx
	sete	%dl
	movb	%dl, -105(%rbp)         # 1-byte Spill
.LBB21_23:                              # %lor.end
                                        #   in Loop: Header=BB21_20 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_24
	jmp	.LBB21_26
.LBB21_24:                              # %for.body.31
                                        #   in Loop: Header=BB21_20 Depth=1
	jmp	.LBB21_25
.LBB21_25:                              # %for.inc.32
                                        #   in Loop: Header=BB21_20 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB21_20
.LBB21_26:                              # %for.end.34
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$124, %ecx
	je	.LBB21_34
# BB#27:                                # %if.then.38
	jmp	.LBB21_28
.LBB21_28:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -106(%rbp)         # 1-byte Spill
	je	.LBB21_31
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_28 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpq	-40(%rbp), %rdx
	movb	%cl, -106(%rbp)         # 1-byte Spill
	jbe	.LBB21_31
# BB#30:                                # %land.rhs
                                        #   in Loop: Header=BB21_28 Depth=1
	movq	-32(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$46, %ecx
	sete	%dl
	movb	%dl, -106(%rbp)         # 1-byte Spill
.LBB21_31:                              # %land.end
                                        #   in Loop: Header=BB21_28 Depth=1
	movb	-106(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_32
	jmp	.LBB21_33
.LBB21_32:                              # %while.body
                                        #   in Loop: Header=BB21_28 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB21_28
.LBB21_33:                              # %while.end
	jmp	.LBB21_34
.LBB21_34:                              # %if.end.47
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$124, %ecx
	jne	.LBB21_36
# BB#35:                                # %if.then.51
	movl	$4096, -60(%rbp)        # imm = 0x1000
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB21_36:                              # %if.end.53
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB21_38
# BB#37:                                # %if.then.55
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB21_39
.LBB21_38:                              # %if.else
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
.LBB21_39:                              # %if.end.58
	movq	-80(%rbp), %rax
	addq	$176, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB21_40:                              # %for.cond.61
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -52(%rbp)
	jge	.LBB21_50
# BB#41:                                # %for.body.64
                                        #   in Loop: Header=BB21_40 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB21_43
# BB#42:                                # %cond.true.67
                                        #   in Loop: Header=BB21_40 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB21_44
.LBB21_43:                              # %cond.false.70
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	$46, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB21_44
.LBB21_44:                              # %cond.end.71
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	incq	%rsi
	movq	%rsi, -48(%rbp)
	movsbl	(%rdx), %eax
	movl	%eax, %edi
	subl	$33, %edi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%edi, -120(%rbp)        # 4-byte Spill
	je	.LBB21_46
	jmp	.LBB21_90
.LBB21_90:                              # %cond.end.71
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB21_45
	jmp	.LBB21_91
.LBB21_91:                              # %cond.end.71
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB21_47
	jmp	.LBB21_92
.LBB21_92:                              # %cond.end.71
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB21_48
	jmp	.LBB21_45
.LBB21_45:                              # %sw.bb
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	$1, %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB21_48
.LBB21_46:                              # %sw.bb.76
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB21_48
.LBB21_47:                              # %sw.bb.80
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	$3, %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB21_48:                              # %sw.epilog
                                        #   in Loop: Header=BB21_40 Depth=1
	jmp	.LBB21_49
.LBB21_49:                              # %for.inc.84
                                        #   in Loop: Header=BB21_40 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_40
.LBB21_50:                              # %for.end.85
	movl	-60(%rbp), %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB21_54
# BB#51:                                # %if.then.87
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$124, (%rax)
	movl	-60(%rbp), %edx
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.LBB21_53
# BB#52:                                # %if.then.92
	movq	-80(%rbp), %rax
	movb	$33, 176(%rax)
	movl	-60(%rbp), %ecx
	xorl	$3, %ecx
	movl	%ecx, -60(%rbp)
.LBB21_53:                              # %if.end.95
	jmp	.LBB21_54
.LBB21_54:                              # %if.end.96
	movl	-60(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB21_56
# BB#55:                                # %if.then.99
	movl	-60(%rbp), %eax
	orl	$4096, %eax             # imm = 0x1000
	movl	%eax, -60(%rbp)
.LBB21_56:                              # %if.end.101
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$32, (%rax)
	movl	-60(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
# BB#57:                                # %do.body
	jmp	.LBB21_58
.LBB21_58:                              # %do.end
	movl	$764, -60(%rbp)         # imm = 0x2FC
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB21_59:                              # %for.cond.103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_61 Depth 2
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_69
# BB#60:                                # %for.body.105
                                        #   in Loop: Header=BB21_59 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB21_61:                              # %while.cond.106
                                        #   Parent Loop BB21_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -133(%rbp)         # 1-byte Spill
	je	.LBB21_63
# BB#62:                                # %land.rhs.109
                                        #   in Loop: Header=BB21_61 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	setg	%dl
	movb	%dl, -133(%rbp)         # 1-byte Spill
.LBB21_63:                              # %land.end.112
                                        #   in Loop: Header=BB21_61 Depth=2
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_64
	jmp	.LBB21_65
.LBB21_64:                              # %while.body.113
                                        #   in Loop: Header=BB21_61 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB21_61
.LBB21_65:                              # %while.end.116
                                        #   in Loop: Header=BB21_59 Depth=1
	cmpl	$0, -60(%rbp)
	jg	.LBB21_67
# BB#66:                                # %if.then.119
	jmp	.LBB21_69
.LBB21_67:                              # %if.end.120
                                        #   in Loop: Header=BB21_59 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$32, (%rax)
# BB#68:                                # %for.inc.122
                                        #   in Loop: Header=BB21_59 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_59
.LBB21_69:                              # %for.end.124
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$0, -1(%rax)
# BB#70:                                # %do.body.126
	jmp	.LBB21_71
.LBB21_71:                              # %do.end.127
	xorl	%esi, %esi
	leaq	-84(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	callq	OpenDevice
	movq	-80(%rbp), %rcx
	movl	%eax, 8(%rcx)
	cmpl	$0, %eax
	jge	.LBB21_73
# BB#72:                                # %if.then.131
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_73:                              # %if.end.132
	movl	$767, %eax              # imm = 0x2FF
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	addq	$944, %rcx              # imm = 0x3B0
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, 168(%rdx)
	cmpl	$0, -84(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	je	.LBB21_75
# BB#74:                                # %if.then.138
	movq	-72(%rbp), %rdi
	callq	FreePseudowin
	xorl	%edi, %edi
	movabsq	$.L.str.11, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_75:                              # %if.end.139
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_77
# BB#76:                                # %if.then.143
	movq	-72(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rdi
	callq	evdeq
.LBB21_77:                              # %if.end.144
	movl	$21536, %eax            # imm = 0x5420
	movl	%eax, %esi
	leaq	-88(%rbp), %rcx
	movl	$0, -88(%rbp)
	movq	-80(%rbp), %rdx
	movl	8(%rdx), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB21_79
# BB#78:                                # %if.then.148
	callq	__errno_location
	movabsq	$.L.str.12, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movq	-72(%rbp), %rdi
	callq	FreePseudowin
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_79:                              # %if.end.150
	movq	-72(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB21_84
# BB#80:                                # %land.lhs.true.153
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_84
# BB#81:                                # %if.then.157
	movl	$21536, %eax            # imm = 0x5420
	movl	%eax, %esi
	leaq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	524(%rdx), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB21_83
# BB#82:                                # %if.then.161
	callq	__errno_location
	movabsq	$.L.str.13, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movq	-72(%rbp), %rdi
	callq	FreePseudowin
	movl	$-1, -4(%rbp)
	jmp	.LBB21_89
.LBB21_83:                              # %if.end.163
	jmp	.LBB21_84
.LBB21_84:                              # %if.end.164
	movabsq	$pseu_writeev_fn, %rax
	movabsq	$pseu_readev_fn, %rcx
	movq	-80(%rbp), %rdx
	movl	8(%rdx), %esi
	movq	-80(%rbp), %rdx
	movl	%esi, 120(%rdx)
	movq	-80(%rbp), %rdx
	movl	%esi, 40(%rdx)
	movq	-80(%rbp), %rdx
	movl	$1, 44(%rdx)
	movq	-80(%rbp), %rdx
	movl	$2, 124(%rdx)
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdx, 112(%rdi)
	movq	-80(%rbp), %rdi
	movq	%rdx, 32(%rdi)
	movq	-80(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-80(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-80(%rbp), %rax
	addq	$5808, %rax             # imm = 0x16B0
	movq	-80(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-80(%rbp), %rax
	movl	(%rax), %esi
	andl	$20, %esi
	cmpl	$0, %esi
	je	.LBB21_86
# BB#85:                                # %if.then.181
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	evenq
.LBB21_86:                              # %if.end.183
	movq	-80(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	evenq
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	ForkWindow
	movq	-80(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jge	.LBB21_88
# BB#87:                                # %if.then.188
	movq	-72(%rbp), %rdi
	callq	FreePseudowin
.LBB21_88:                              # %if.end.189
	movl	-56(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB21_89:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	winexec, .Lfunc_end21-winexec
	.cfi_endproc

	.align	16, 0x90
	.type	pseu_readev_fn,@function
pseu_readev_fn:                         # @pseu_readev_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$4144, %rsp             # imm = 0x1030
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movl	$4096, -4132(%rbp)      # imm = 0x1000
	movq	-24(%rbp), %rsi
	movq	168(%rsi), %rsi
	movl	(%rsi), %ecx
	andl	$12, %ecx
	cmpl	$12, %ecx
	movb	%al, -4141(%rbp)        # 1-byte Spill
	je	.LBB22_2
# BB#1:                                 # %lor.rhs
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movl	(%rax), %ecx
	andl	$48, %ecx
	cmpl	$48, %ecx
	sete	%dl
	movb	%dl, -4141(%rbp)        # 1-byte Spill
.LBB22_2:                               # %lor.end
	movb	-4141(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4136(%rbp)
	cmpl	$0, -4136(%rbp)
	je	.LBB22_8
# BB#3:                                 # %if.then
	jmp	.LBB22_4
.LBB22_4:                               # %do.body
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movl	$4096, %eax             # imm = 0x1000
	movq	-24(%rbp), %rcx
	subl	4624(%rcx), %eax
	movl	%eax, -4132(%rbp)
	cmpl	$0, -4132(%rbp)
	jg	.LBB22_7
# BB#6:                                 # %if.then.6
	movabsq	$const_IOSIZE, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	addq	$4624, %rax             # imm = 0x1210
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB22_27
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.8
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB22_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	muchpending
	cmpl	$0, %eax
	je	.LBB22_11
# BB#10:                                # %if.then.11
	jmp	.LBB22_27
.LBB22_11:                              # %if.end.12
	movq	-24(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB22_13
# BB#12:                                # %if.then.14
	movabsq	$const_one, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	addq	$160, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB22_27
.LBB22_13:                              # %if.end.18
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB22_15
# BB#14:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB22_15:                              # %if.end.24
	movq	-24(%rbp), %rax
	movl	8724(%rax), %ecx
	movl	%ecx, -4140(%rbp)
	cmpl	$0, %ecx
	je	.LBB22_17
# BB#16:                                # %if.then.26
	movq	-24(%rbp), %rax
	movl	$0, 8724(%rax)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$4628, %rax             # imm = 0x1214
	movl	-4140(%rbp), %edx
	movq	%rax, %rsi
	callq	WriteString
	jmp	.LBB22_27
.LBB22_17:                              # %if.end.28
	leaq	-4128(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movslq	-4132(%rbp), %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -4140(%rbp)
	cmpl	$0, %edi
	jg	.LBB22_24
# BB#18:                                # %if.then.34
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB22_20
# BB#19:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB22_21
.LBB22_20:                              # %if.then.41
	jmp	.LBB22_27
.LBB22_21:                              # %if.end.42
	jmp	.LBB22_22
.LBB22_22:                              # %do.body.43
	jmp	.LBB22_23
.LBB22_23:                              # %do.end.44
	movq	-24(%rbp), %rdi
	callq	FreePseudowin
	jmp	.LBB22_27
.LBB22_24:                              # %if.end.45
	cmpl	$0, -4136(%rbp)
	je	.LBB22_26
# BB#25:                                # %if.then.47
	leaq	-4128(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$528, %rax              # imm = 0x210
	movq	-24(%rbp), %rcx
	movslq	4624(%rcx), %rcx
	addq	%rcx, %rax
	movslq	-4140(%rbp), %rdx
	movq	%rax, %rsi
	callq	bcopy
	movl	-4140(%rbp), %r8d
	movq	-24(%rbp), %rax
	addl	4624(%rax), %r8d
	movl	%r8d, 4624(%rax)
.LBB22_26:                              # %if.end.53
	leaq	-4128(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	-4140(%rbp), %edx
	callq	WriteString
.LBB22_27:                              # %return
	addq	$4144, %rsp             # imm = 0x1030
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pseu_readev_fn, .Lfunc_end22-pseu_readev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	pseu_writeev_fn,@function
pseu_writeev_fn:                        # @pseu_writeev_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB23_2
.LBB23_2:                               # %do.end
	movq	-32(%rbp), %rax
	cmpl	$0, 5808(%rax)
	jne	.LBB23_4
# BB#3:                                 # %if.then
	jmp	.LBB23_8
.LBB23_4:                               # %if.end
	movq	-8(%rbp), %rax
	movl	24(%rax), %edi
	movq	-32(%rbp), %rax
	addq	$1712, %rax             # imm = 0x6B0
	movq	-32(%rbp), %rcx
	movslq	5808(%rcx), %rdx
	movq	%rax, %rsi
	callq	write
	movl	%eax, %edi
	movl	%edi, -36(%rbp)
	cmpl	$0, %edi
	jg	.LBB23_6
# BB#5:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movl	5808(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB23_6:                               # %if.end.7
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rcx
	movl	5808(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 5808(%rcx)
	cmpl	$0, %edx
	je	.LBB23_8
# BB#7:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	addq	$1712, %rax             # imm = 0x6B0
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rcx
	addq	$1712, %rcx             # imm = 0x6B0
	movq	-24(%rbp), %rdx
	movq	168(%rdx), %rdx
	movslq	5808(%rdx), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB23_8:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pseu_writeev_fn, .Lfunc_end23-pseu_writeev_fn
	.cfi_endproc

	.globl	ReleaseAutoWritelock
	.align	16, 0x90
	.type	ReleaseAutoWritelock,@function
ReleaseAutoWritelock:                   # @ReleaseAutoWritelock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB24_2
.LBB24_2:                               # %do.end
	movq	-24(%rbp), %rax
	cmpl	$1, 9800(%rax)
	jne	.LBB24_17
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	9808(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB24_17
# BB#4:                                 # %if.then
	movq	displays, %rax
	movq	%rax, -32(%rbp)
.LBB24_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB24_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB24_10
# BB#7:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB24_10
# BB#8:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB24_10
# BB#9:                                 # %if.then.9
	jmp	.LBB24_12
.LBB24_10:                              # %if.end
                                        #   in Loop: Header=BB24_5 Depth=1
	jmp	.LBB24_11
.LBB24_11:                              # %for.inc
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB24_5
.LBB24_12:                              # %for.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.10
	jmp	.LBB24_14
.LBB24_14:                              # %do.end.11
	cmpq	$0, -32(%rbp)
	jne	.LBB24_16
# BB#15:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	$0, 9808(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB24_18
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %if.end.16
	movl	$1, -4(%rbp)
.LBB24_18:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ReleaseAutoWritelock, .Lfunc_end24-ReleaseAutoWritelock
	.cfi_endproc

	.globl	ObtainAutoWritelock
	.align	16, 0x90
	.type	ObtainAutoWritelock,@function
ObtainAutoWritelock:                    # @ObtainAutoWritelock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$1, 9800(%rsi)
	jne	.LBB25_6
# BB#1:                                 # %land.lhs.true
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB25_6
# BB#2:                                 # %land.lhs.true.1
	movq	-24(%rbp), %rax
	cmpq	$0, 9808(%rax)
	jne	.LBB25_6
# BB#3:                                 # %if.then
	jmp	.LBB25_4
.LBB25_4:                               # %do.body
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 9808(%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.end
	movl	$1, -4(%rbp)
.LBB25_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	ObtainAutoWritelock, .Lfunc_end25-ObtainAutoWritelock
	.cfi_endproc

	.globl	zmodem_abort
	.align	16, 0x90
	.type	zmodem_abort,@function
zmodem_abort:                           # @zmodem_abort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	display, %rsi
	movq	%rsi, -24(%rbp)
	movq	flayer, %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB26_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB26_6
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB26_6
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	152(%rcx), %rax
	jne	.LBB26_5
# BB#4:                                 # %if.then.6
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB26_5:                               # %if.end
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, flayer
	callq	ExitOverlayPage
.LBB26_6:                               # %if.end.9
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	$0, 12704(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12696(%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	LRefreshAll
.LBB26_7:                               # %if.end.10
	cmpq	$0, -16(%rbp)
	je	.LBB26_12
# BB#8:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, display
	movq	display, %rax
	movl	$0, 7812(%rax)
	movq	display, %rax
	movq	$0, 4976(%rax)
	movq	display, %rax
	movq	$0, 4968(%rax)
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB26_10
# BB#9:                                 # %cond.true
	movq	display, %rax
	movq	376(%rax), %rax
	movsbl	10849(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB26_11
.LBB26_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB26_11
.LBB26_11:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	Activate
.LBB26_12:                              # %if.end.16
	movq	-24(%rbp), %rax
	movq	%rax, display
	movq	-32(%rbp), %rax
	movq	%rax, flayer
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	zmodem_abort, .Lfunc_end26-zmodem_abort
	.cfi_endproc

	.globl	WindowChangeNumber
	.align	16, 0x90
	.type	WindowChangeNumber,@function
WindowChangeNumber:                     # @WindowChangeNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB27_2
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	cmpl	maxwin, %eax
	jl	.LBB27_3
.LBB27_2:                               # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.16, %rsi
	movb	$0, %al
	callq	Msg
	movl	$0, -4(%rbp)
	jmp	.LBB27_16
.LBB27_3:                               # %if.end
	movslq	-8(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movslq	-12(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	wtab, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	%esi, 192(%rax)
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movq	wtab, %rdx
	movq	%rax, (%rdx,%rcx,8)
	cmpq	$0, -24(%rbp)
	je	.LBB27_5
# BB#4:                                 # %if.then.8
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 192(%rcx)
.LBB27_5:                               # %if.end.10
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	AclWinSwap
	movq	$-1, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB27_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 11536(%rax)
	je	.LBB27_8
# BB#7:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	RemoveUtmp
	movq	-32(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	SetUtmp
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB27_8:                               # %if.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB27_15
# BB#9:                                 # %land.lhs.true.18
	movq	$-1, %rax
	movq	-24(%rbp), %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB27_15
# BB#10:                                # %land.lhs.true.21
	movq	-24(%rbp), %rax
	cmpq	$0, 11536(%rax)
	je	.LBB27_15
# BB#11:                                # %if.then.24
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB27_13
# BB#12:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB27_14
.LBB27_13:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB27_14
.LBB27_14:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, display
	movq	-24(%rbp), %rdi
	callq	RemoveUtmp
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	SetUtmp
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB27_15:                              # %if.end.30
	movl	$110, %esi
	movq	-32(%rbp), %rdi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$119, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$87, %esi
	callq	WindowChanged
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	callq	WindowChanged
	movl	$1, -4(%rbp)
.LBB27_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	WindowChangeNumber, .Lfunc_end27-WindowChangeNumber
	.cfi_endproc

	.align	16, 0x90
	.type	ZombieProcess,@function
ZombieProcess:                          # @ZombieProcess
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB28_2
.LBB28_2:                               # %do.end
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, fore
# BB#3:                                 # %do.body.1
	jmp	.LBB28_4
.LBB28_4:                               # %do.end.2
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB28_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	jle	.LBB28_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	ZombieKey_destroy, %ecx
	jne	.LBB28_10
# BB#7:                                 # %if.then
	jmp	.LBB28_8
.LBB28_8:                               # %do.body.5
	jmp	.LBB28_9
.LBB28_9:                               # %do.end.6
	movq	fore, %rdi
	callq	KillWindow
	jmp	.LBB28_17
.LBB28_10:                              # %if.end
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	ZombieKey_resurrect, %ecx
	jne	.LBB28_14
# BB#11:                                # %if.then.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.body.11
	jmp	.LBB28_13
.LBB28_13:                              # %do.end.12
	movabsq	$.L.str.6, %rsi
	movl	$2, %edx
	movq	fore, %rdi
	callq	WriteString
	movq	fore, %rdi
	callq	RemakeWindow
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB28_17
.LBB28_14:                              # %if.end.13
                                        #   in Loop: Header=BB28_5 Depth=1
	jmp	.LBB28_15
.LBB28_15:                              # %for.inc
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB28_5
.LBB28_16:                              # %for.end
	leaq	-42(%rbp), %rdi
	movl	ZombieKey_destroy, %esi
	callq	AddXChar
	leaq	-52(%rbp), %rdi
	movslq	%eax, %rcx
	movb	$0, -42(%rbp,%rcx)
	movl	ZombieKey_resurrect, %esi
	callq	AddXChar
	xorl	%edi, %edi
	movabsq	$.L.str.18, %rsi
	leaq	-52(%rbp), %rcx
	leaq	-42(%rbp), %rdx
	movslq	%eax, %r8
	movb	$0, -52(%rbp,%r8)
	movb	$0, %al
	callq	Msg
.LBB28_17:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	ZombieProcess, .Lfunc_end28-ZombieProcess
	.cfi_endproc

	.align	16, 0x90
	.type	DoAutolf,@function
DoAutolf:                               # @DoAutolf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB29_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$13, %ecx
	je	.LBB29_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB29_1 Depth=1
	jmp	.LBB29_9
.LBB29_4:                               # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	jg	.LBB29_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
.LBB29_6:                               # %if.end.7
                                        #   in Loop: Header=BB29_1 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB29_8
# BB#7:                                 # %if.then.10
	jmp	.LBB29_10
.LBB29_8:                               # %if.end.11
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	bcopy
	movq	-32(%rbp), %rax
	movb	$10, 1(%rax)
.LBB29_9:                               # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB29_1
.LBB29_10:                              # %for.end
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	DoAutolf, .Lfunc_end29-DoAutolf
	.cfi_endproc

	.align	16, 0x90
	.type	muchpending,@function
muchpending:                            # @muchpending
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB30_28
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB30_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	display, %rax
	cmpb	$0, 580(%rax)
	jne	.LBB30_7
# BB#4:                                 # %if.then
	jmp	.LBB30_5
.LBB30_5:                               # %do.body
	jmp	.LBB30_6
.LBB30_6:                               # %do.end
	movabsq	$const_one, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	display, %rax
	addq	$576, %rax              # imm = 0x240
	movq	-24(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB30_29
.LBB30_7:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_8
.LBB30_8:                               # %do.body.3
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_9
.LBB30_9:                               # %do.end.4
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_10
.LBB30_10:                              # %do.body.5
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_11
.LBB30_11:                              # %do.end.6
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB30_13
# BB#12:                                # %if.then.8
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_27
.LBB30_13:                              # %if.end.9
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	display, %rax
	movq	5296(%rax), %rax
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	subq	%rcx, %rax
	movq	display, %rcx
	movl	5284(%rcx), %edx
	movq	display, %rcx
	addl	7816(%rcx), %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB30_26
# BB#14:                                # %if.then.12
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	display, %rax
	cmpl	$0, 392(%rax)
	jne	.LBB30_18
# BB#15:                                # %if.then.15
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_16
.LBB30_16:                              # %do.body.16
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_17
.LBB30_17:                              # %do.end.17
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	display, %rax
	movl	$1, 7812(%rax)
	jmp	.LBB30_27
.LBB30_18:                              # %if.end.19
	jmp	.LBB30_19
.LBB30_19:                              # %do.body.20
	jmp	.LBB30_20
.LBB30_20:                              # %do.end.21
	movq	display, %rax
	addq	$5304, %rax             # imm = 0x14B8
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	display, %rax
	addq	$5288, %rax             # imm = 0x14A8
	movq	-24(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	display, %rax
	cmpl	$0, 392(%rax)
	jle	.LBB30_25
# BB#21:                                # %land.lhs.true.27
	movq	display, %rax
	cmpl	$0, 5120(%rax)
	jne	.LBB30_25
# BB#22:                                # %if.then.29
	jmp	.LBB30_23
.LBB30_23:                              # %do.body.30
	jmp	.LBB30_24
.LBB30_24:                              # %do.end.31
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	display, %rcx
	movl	392(%rcx), %esi
	movq	%rax, %rdi
	callq	SetTimeout
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	%rax, %rdi
	callq	evenq
.LBB30_25:                              # %if.end.35
	movl	$1, -4(%rbp)
	jmp	.LBB30_29
.LBB30_26:                              # %if.end.36
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_27
.LBB30_27:                              # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB30_1
.LBB30_28:                              # %for.end
	movl	$0, -4(%rbp)
.LBB30_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	muchpending, .Lfunc_end30-muchpending
	.cfi_endproc

	.align	16, 0x90
	.type	zmodem_parse,@function
zmodem_parse:                           # @zmodem_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_4 Depth 2
                                        #     Child Loop BB31_34 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB31_60
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12696(%rax)
	jne	.LBB31_16
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_4
.LBB31_4:                               # %for.cond.2
                                        #   Parent Loop BB31_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB31_9
# BB#5:                                 # %for.body.4
                                        #   in Loop: Header=BB31_4 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$24, %ecx
	jne	.LBB31_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_9
.LBB31_7:                               # %if.end
                                        #   in Loop: Header=BB31_4 Depth=2
	jmp	.LBB31_8
.LBB31_8:                               # %for.inc
                                        #   in Loop: Header=BB31_4 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB31_4
.LBB31_9:                               # %for.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB31_11
# BB#10:                                # %if.then.10
	jmp	.LBB31_60
.LBB31_11:                              # %if.end.11
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpl	$1, -32(%rbp)
	jle	.LBB31_15
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB31_15
# BB#13:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	-2(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB31_15
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movl	$3, 12696(%rax)
.LBB31_15:                              # %if.end.24
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_59
.LBB31_16:                              # %if.end.25
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$5, 12696(%rax)
	jg	.LBB31_23
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movslq	12696(%rax), %rax
	movsbl	.L.str.39(,%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB31_23
# BB#18:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$5, 12696(%rax)
	jne	.LBB31_20
# BB#19:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$49, %ecx
	je	.LBB31_23
.LBB31_20:                              # %lor.lhs.false.43
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$5, 12696(%rax)
	jne	.LBB31_54
# BB#21:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 12704(%rax)
	je	.LBB31_54
# BB#22:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$56, %ecx
	jne	.LBB31_54
.LBB31_23:                              # %if.then.52
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12696(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12696(%rax)
	cmpl	$6, %ecx
	jge	.LBB31_25
# BB#24:                                # %if.then.57
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_59
.LBB31_25:                              # %if.end.58
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$6, 12696(%rax)
	jne	.LBB31_27
# BB#26:                                # %if.then.62
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 12696(%rax)
.LBB31_27:                              # %if.end.64
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 12704(%rax)
	jne	.LBB31_31
# BB#28:                                # %if.then.67
	cmpl	$6, -32(%rbp)
	jle	.LBB31_30
# BB#29:                                # %if.then.70
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	subl	$6, %eax
	movl	%eax, %edx
	callq	WriteString
.LBB31_30:                              # %if.end.71
	movabsq	$.L.str.6, %rsi
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	callq	WriteString
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsbl	(%rsi), %edx
	cmpl	$49, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	-28(%rbp), %edx
	subl	-32(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	zmodem_found
	movl	$1, -4(%rbp)
	jmp	.LBB31_75
.LBB31_31:                              # %if.else
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$7, 12696(%rax)
	je	.LBB31_33
# BB#32:                                # %lor.lhs.false.80
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$56, %ecx
	jne	.LBB31_52
.LBB31_33:                              # %if.then.84
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$4294967178, %eax       # imm = 0xFFFFFF8A
	movl	$79, %ecx
	movq	-16(%rbp), %rdx
	movq	12704(%rdx), %rdx
	cmpl	$2, 7812(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -44(%rbp)
.LBB31_34:                              # %for.cond.88
                                        #   Parent Loop BB31_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB31_39
# BB#35:                                # %for.body.91
                                        #   in Loop: Header=BB31_34 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jne	.LBB31_37
# BB#36:                                # %if.then.95
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_39
.LBB31_37:                              # %if.end.96
                                        #   in Loop: Header=BB31_34 Depth=2
	jmp	.LBB31_38
.LBB31_38:                              # %for.inc.97
                                        #   in Loop: Header=BB31_34 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB31_34
.LBB31_39:                              # %for.end.100
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB31_51
# BB#40:                                # %if.then.103
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	zmodem_abort
	movq	display, %rsi
	movl	$0, 7812(%rsi)
	movq	display, %rsi
	movq	$0, 4976(%rsi)
	movq	display, %rsi
	movq	$0, 4968(%rsi)
.LBB31_41:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_47
# BB#42:                                # %while.body
                                        #   in Loop: Header=BB31_41 Depth=1
	jmp	.LBB31_43
.LBB31_43:                              # %do.body
                                        #   in Loop: Header=BB31_41 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB31_45
# BB#44:                                # %if.then.111
                                        #   in Loop: Header=BB31_41 Depth=1
	callq	Resize_obuf
.LBB31_45:                              # %if.end.112
                                        #   in Loop: Header=BB31_41 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 5296(%rax)
	movb	%dl, (%rcx)
# BB#46:                                # %do.end
                                        #   in Loop: Header=BB31_41 Depth=1
	jmp	.LBB31_41
.LBB31_47:                              # %while.end
	xorl	%edi, %edi
	callq	Flush
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB31_49
# BB#48:                                # %cond.true
	movq	display, %rax
	movq	376(%rax), %rax
	movsbl	10849(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB31_50
.LBB31_49:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB31_50
.LBB31_50:                              # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	Activate
	movl	$1, -4(%rbp)
	jmp	.LBB31_75
.LBB31_51:                              # %if.end.119
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movl	$6, 12696(%rax)
.LBB31_52:                              # %if.end.121
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_53
.LBB31_53:                              # %if.end.122
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_58
.LBB31_54:                              # %if.else.123
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB31_56
# BB#55:                                # %cond.true.127
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$2, 12696(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB31_57
.LBB31_56:                              # %cond.false.132
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB31_57
.LBB31_57:                              # %cond.end.133
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 12696(%rcx)
.LBB31_58:                              # %if.end.136
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_59
.LBB31_59:                              # %for.inc.137
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB31_1
.LBB31_60:                              # %for.end.140
	movq	-16(%rbp), %rax
	cmpl	$0, 12696(%rax)
	jne	.LBB31_65
# BB#61:                                # %land.lhs.true.144
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$42, %eax
	jne	.LBB31_65
# BB#62:                                # %if.then.151
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1, -28(%rbp)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jle	.LBB31_64
# BB#63:                                # %land.rhs
	movl	-28(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$42, %eax
	sete	%sil
	movb	%sil, -57(%rbp)         # 1-byte Spill
.LBB31_64:                              # %land.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$1, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-16(%rbp), %rsi
	movl	%ecx, 12696(%rsi)
.LBB31_65:                              # %if.end.162
	movq	-16(%rbp), %rax
	cmpq	$0, 12704(%rax)
	je	.LBB31_74
# BB#66:                                # %if.then.165
	movq	-16(%rbp), %rax
	movq	12704(%rax), %rax
	movq	%rax, display
.LBB31_67:                              # %while.cond.167
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_73
# BB#68:                                # %while.body.171
                                        #   in Loop: Header=BB31_67 Depth=1
	jmp	.LBB31_69
.LBB31_69:                              # %do.body.172
                                        #   in Loop: Header=BB31_67 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB31_71
# BB#70:                                # %if.then.177
                                        #   in Loop: Header=BB31_67 Depth=1
	callq	Resize_obuf
.LBB31_71:                              # %if.end.178
                                        #   in Loop: Header=BB31_67 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 5296(%rax)
	movb	%dl, (%rcx)
# BB#72:                                # %do.end.182
                                        #   in Loop: Header=BB31_67 Depth=1
	jmp	.LBB31_67
.LBB31_73:                              # %while.end.183
	movl	$1, -4(%rbp)
	jmp	.LBB31_75
.LBB31_74:                              # %if.end.184
	movl	$0, -4(%rbp)
.LBB31_75:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	zmodem_parse, .Lfunc_end31-zmodem_parse
	.cfi_endproc

	.align	16, 0x90
	.type	zmodem_found,@function
zmodem_found:                           # @zmodem_found
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB32_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$24, %edx
	je	.LBB32_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$0, -48(%rbp)
	jmp	.LBB32_7
.LBB32_4:                               # %if.else
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	cmpl	$4, %eax
	jle	.LBB32_6
# BB#5:                                 # %if.then.5
	jmp	.LBB32_40
.LBB32_6:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_7
.LBB32_7:                               # %if.end.6
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_8
.LBB32_8:                               # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB32_1
.LBB32_9:                               # %for.end
	cmpl	$3, zmodem_mode
	je	.LBB32_12
# BB#10:                                # %lor.lhs.false
	cmpl	$1, zmodem_mode
	jne	.LBB32_36
# BB#11:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	je	.LBB32_36
.LBB32_12:                              # %if.then.14
	movq	display, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB32_14
# BB#13:                                # %lor.lhs.false.15
	movq	-56(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB32_21
.LBB32_14:                              # %if.then.18
	movq	displays, %rax
	movq	%rax, -56(%rbp)
.LBB32_15:                              # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB32_20
# BB#16:                                # %for.body.21
                                        #   in Loop: Header=BB32_15 Depth=1
	movq	-56(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB32_18
# BB#17:                                # %if.then.25
	jmp	.LBB32_20
.LBB32_18:                              # %if.end.26
                                        #   in Loop: Header=BB32_15 Depth=1
	jmp	.LBB32_19
.LBB32_19:                              # %for.inc.27
                                        #   in Loop: Header=BB32_15 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB32_15
.LBB32_20:                              # %for.end.28
	jmp	.LBB32_21
.LBB32_21:                              # %if.end.29
	cmpq	$0, -56(%rbp)
	jne	.LBB32_24
# BB#22:                                # %land.lhs.true.31
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB32_24
# BB#23:                                # %if.then.33
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB32_24:                              # %if.end.36
	cmpq	$0, -56(%rbp)
	jne	.LBB32_26
# BB#25:                                # %if.then.38
	movq	displays, %rax
	movq	%rax, -56(%rbp)
.LBB32_26:                              # %if.end.39
	cmpq	$0, -56(%rbp)
	jne	.LBB32_28
# BB#27:                                # %if.then.41
	jmp	.LBB32_40
.LBB32_28:                              # %if.end.42
	movq	-56(%rbp), %rax
	movq	%rax, display
	callq	RemoveStatus
	movq	display, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 12704(%rcx)
	movl	-12(%rbp), %edx
	addl	$2, %edx
	movq	display, %rax
	movl	%edx, 7812(%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, flayer
	callq	ZmodemPage
	movq	-56(%rbp), %rax
	movq	%rax, display
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	%rax, %rdi
	callq	evdeq
	movabsq	$const_IOSIZE, %rax
	movq	display, %rcx
	movq	%rax, 4968(%rcx)
	movq	-8(%rbp), %rax
	addq	$4624, %rax             # imm = 0x1210
	movq	display, %rcx
	movq	%rax, 4976(%rcx)
	callq	ClearAll
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %esi
	callq	GotoPos
	movabsq	$mchar_blank, %rdi
	callq	SetRendition
	movabsq	$.L.str.40, %rdi
	callq	AddStr
	movabsq	$.L.str.39, %rax
	movabsq	$.L.str.41, %rcx
	cmpl	$0, -12(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	callq	AddStr
.LBB32_29:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB32_35
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB32_29 Depth=1
	jmp	.LBB32_31
.LBB32_31:                              # %do.body
                                        #   in Loop: Header=BB32_29 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB32_33
# BB#32:                                # %if.then.51
                                        #   in Loop: Header=BB32_29 Depth=1
	callq	Resize_obuf
.LBB32_33:                              # %if.end.52
                                        #   in Loop: Header=BB32_29 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 5296(%rax)
	movb	%dl, (%rcx)
# BB#34:                                # %do.end
                                        #   in Loop: Header=BB32_29 Depth=1
	jmp	.LBB32_29
.LBB32_35:                              # %while.end
	movq	-64(%rbp), %rax
	movq	%rax, display
	jmp	.LBB32_40
.LBB32_36:                              # %if.end.54
	movabsq	$.L.str.42, %rdi
	movl	$768, %esi              # imm = 0x300
	xorl	%eax, %eax
	movabsq	$zmodem_fin, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-8(%rbp), %r9
	addq	$24, %r9
	movq	%r9, flayer
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	Input
	cmpl	$0, -12(%rbp)
	je	.LBB32_38
# BB#37:                                # %cond.true
	movq	zmodem_sendcmd, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB32_39
.LBB32_38:                              # %cond.false
	movq	zmodem_recvcmd, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB32_39:                              # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	*(%rax)
.LBB32_40:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	zmodem_found, .Lfunc_end32-zmodem_found
	.cfi_endproc

	.align	16, 0x90
	.type	zmodem_fin,@function
zmodem_fin:                             # @zmodem_fin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	callq	RcLine
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	leaq	-32(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	movabsq	$.L.str.43, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	*(%rax)
.LBB33_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	zmodem_fin, .Lfunc_end33-zmodem_fin
	.cfi_endproc

	.type	VerboseCreate,@object   # @VerboseCreate
	.bss
	.globl	VerboseCreate
	.align	4
VerboseCreate:
	.long	0                       # 0x0
	.size	VerboseCreate, 4

	.type	DefaultShell,@object    # @DefaultShell
	.data
	.globl	DefaultShell
DefaultShell:
	.asciz	"/bin/sh"
	.size	DefaultShell, 8

	.type	nwin_undef,@object      # @nwin_undef
	.globl	nwin_undef
	.align	8
nwin_undef:
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	nwin_undef, 120

	.type	nwin_default,@object    # @nwin_default
	.globl	nwin_default
	.align	8
nwin_default:
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	ShellArgs
	.quad	0
	.quad	screenterm
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	100                     # 0x64
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	nwin_default, 120

	.type	WinLf,@object           # @WinLf
	.globl	WinLf
	.align	8
WinLf:
	.quad	WinProcess
	.quad	0
	.quad	WinRedisplayLine
	.quad	WinClearLine
	.quad	WinRewrite
	.quad	WinResize
	.quad	WinRestore
	.quad	0
	.size	WinLf, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"a"
	.size	.L.str, 2

	.type	wtab,@object            # @wtab
	.comm	wtab,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"No more windows."
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	":screen ("
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"):"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" "
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\r\n"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"free"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Filter running: %s"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(none)"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"You feel dead inside."
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Cannot only use commands as pseudo win."
	.size	.L.str.11, 40

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"TIOCPKT pwin ioctl"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"TIOCPKT win ioctl"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Warning: FreePseudowin: NBLOCK fcntl failed"
	.size	.L.str.14, 44

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Warning: FreePseudowin: TIOCPKT win ioctl"
	.size	.L.str.15, 42

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Given window position is invalid."
	.size	.L.str.16, 34

	.type	nwin_options,@object    # @nwin_options
	.comm	nwin_options,120,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"write: permission denied (user %s)"
	.size	.L.str.17, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Press %s to destroy or %s to resurrect window"
	.size	.L.str.18, 46

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"//group"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"telnet"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"//"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid argument '%s'"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Cannot access line '%s' for R/W"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"No more PTYs."
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"TIOCPKT ioctl"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"chown tty"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"chmod tty"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ttyn"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"fork"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Setuid/gid"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Cannot chdir to %s"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Cannot open %s"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Warning: clear NBLOCK fcntl failed"
	.size	.L.str.33, 35

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"fgtty"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SHELL="
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"TERM=%s"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"WINDOW=%d"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Cannot exec '%s'"
	.size	.L.str.38, 17

	.type	const_IOSIZE,@object    # @const_IOSIZE
	.data
	.align	4
const_IOSIZE:
	.long	4096                    # 0x1000
	.size	const_IOSIZE, 4

	.type	const_one,@object       # @const_one
	.align	4
const_one:
	.long	1                       # 0x1
	.size	const_one, 4

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"**\030B00"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Zmodem active\r\n\r\n"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"**\030B01"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	":"
	.size	.L.str.42, 2

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\030\030\030\030\030\030\030\030\030\030"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Window %d: silence for %d seconds"
	.size	.L.str.44, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
