	.text
	.file	"termcap.bc"
	.globl	gettermcapstring
	.align	16, 0x90
	.type	gettermcapstring,@function
gettermcapstring:                       # @gettermcapstring
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, display
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB0_12
.LBB0_3:                                # %if.end
	movl	$0, -20(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$201, -20(%rbp)
	jge	.LBB0_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movabsq	$term, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$2, 8(%rax)
	je	.LBB0_7
# BB#6:                                 # %if.then.4
                                        #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_10
.LBB0_7:                                # %if.end.5
                                        #   in Loop: Header=BB0_4 Depth=1
	movabsq	$term, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_9
# BB#8:                                 # %if.then.9
	movslq	-20(%rbp), %rax
	movq	display, %rcx
	movq	5440(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_9:                                # %if.end.12
                                        #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_4
.LBB0_11:                               # %for.end
	movq	$0, -8(%rbp)
.LBB0_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gettermcapstring, .Lfunc_end0-gettermcapstring
	.cfi_endproc

	.globl	InitTermcap
	.align	16, 0x90
	.type	InitTermcap,@function
InitTermcap:                            # @InitTermcap
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
	subq	$2192, %rsp             # imm = 0x890
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	xorl	%esi, %esi
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	leaq	-2080(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
# BB#3:                                 # %do.body.1
	jmp	.LBB1_4
.LBB1_4:                                # %do.end.2
	movq	display, %rax
	movsbl	396(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_6
# BB#5:                                 # %lor.lhs.false
	leaq	-2080(%rbp), %rdi
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, %rsi
	callq	e_tgetent
	cmpl	$1, %eax
	je	.LBB1_7
.LBB1_6:                                # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %do.body.11
	jmp	.LBB1_9
.LBB1_9:                                # %do.end.12
	cmpq	$0, extra_incap
	je	.LBB1_11
# BB#10:                                # %cond.true
	movq	extra_incap, %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2120(%rbp)       # 8-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               # %cond.end
	movq	-2120(%rbp), %rax       # 8-byte Reload
	addq	$2048, %rax             # imm = 0x800
	movq	%rax, %rdi
	callq	malloc
	movq	display, %rdi
	movq	%rax, 432(%rdi)
	cmpq	$0, %rax
	jne	.LBB1_14
# BB#13:                                # %if.then.18
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_14:                               # %if.end.19
	movq	display, %rax
	movq	432(%rax), %rax
	movq	%rax, -2088(%rbp)
	movl	$0, -28(%rbp)
.LBB1_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$201, -28(%rbp)
	jge	.LBB1_26
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	movl	term+8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -2124(%rbp)       # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_279
.LBB1_279:                              # %for.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-2124(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -2128(%rbp)       # 4-byte Spill
	je	.LBB1_18
	jmp	.LBB1_280
.LBB1_280:                              # %for.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-2124(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -2132(%rbp)       # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_23
.LBB1_17:                               # %sw.bb
                                        #   in Loop: Header=BB1_15 Depth=1
	movabsq	$term, %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	e_tgetflag
	movslq	-28(%rbp), %rcx
	movq	display, %rdi
	movl	%eax, 5440(%rdi,%rcx,8)
	jmp	.LBB1_24
.LBB1_18:                               # %sw.bb.28
                                        #   in Loop: Header=BB1_15 Depth=1
	movabsq	$term, %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	e_tgetnum
	movslq	-28(%rbp), %rcx
	movq	display, %rdi
	movl	%eax, 5440(%rdi,%rcx,8)
	jmp	.LBB1_24
.LBB1_19:                               # %sw.bb.36
                                        #   in Loop: Header=BB1_15 Depth=1
	leaq	-2088(%rbp), %rsi
	movabsq	$term, %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	e_tgetstr
	movslq	-28(%rbp), %rcx
	movq	display, %rsi
	movq	%rax, 5440(%rsi,%rcx,8)
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	cmpq	$0, 5440(%rcx,%rax,8)
	je	.LBB1_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movq	5440(%rcx,%rax,8), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB1_22
# BB#21:                                # %if.then.56
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movq	$0, 5440(%rcx,%rax,8)
.LBB1_22:                               # %if.end.61
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_24
.LBB1_23:                               # %sw.default
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movl	-28(%rbp), %edx
	movb	$0, %al
	callq	Panic
.LBB1_24:                               # %sw.epilog
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_25
.LBB1_25:                               # %for.inc
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_15
.LBB1_26:                               # %for.end
	movq	display, %rax
	cmpl	$0, 5456(%rax)
	je	.LBB1_28
# BB#27:                                # %if.then.66
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_28:                               # %if.end.67
	movq	display, %rax
	cmpl	$0, 5464(%rax)
	je	.LBB1_30
# BB#29:                                # %if.then.72
	xorl	%edi, %edi
	movabsq	$.L.str.4, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_30:                               # %if.end.73
	movq	display, %rax
	cmpq	$0, 5712(%rax)
	jne	.LBB1_32
# BB#31:                                # %if.then.78
	xorl	%edi, %edi
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_32:                               # %if.end.79
	movq	display, %rax
	cmpq	$0, 5480(%rax)
	jne	.LBB1_34
# BB#33:                                # %if.then.84
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_34:                               # %if.end.85
	movabsq	$.L.str.7, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB1_37
# BB#35:                                # %land.lhs.true.88
	movq	-24(%rbp), %rdi
	callq	atoi
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB1_37
# BB#36:                                # %if.then.92
	movl	-28(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 5448(%rcx)
.LBB1_37:                               # %if.end.96
	movabsq	$.L.str.8, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB1_40
# BB#38:                                # %land.lhs.true.99
	movq	-24(%rbp), %rdi
	callq	atoi
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB1_40
# BB#39:                                # %if.then.103
	movl	-28(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 5440(%rcx)
.LBB1_40:                               # %if.end.107
	cmpl	$0, -8(%rbp)
	je	.LBB1_42
# BB#41:                                # %if.then.109
	movl	-8(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 5448(%rcx)
.LBB1_42:                               # %if.end.113
	cmpl	$0, -12(%rbp)
	je	.LBB1_44
# BB#43:                                # %if.then.115
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 5440(%rcx)
.LBB1_44:                               # %if.end.119
	movq	display, %rax
	cmpl	$0, 5448(%rax)
	jg	.LBB1_46
# BB#45:                                # %if.then.125
	movq	display, %rax
	movl	$80, 5448(%rax)
.LBB1_46:                               # %if.end.129
	movq	display, %rax
	cmpl	$0, 5440(%rax)
	jg	.LBB1_48
# BB#47:                                # %if.then.135
	movq	display, %rax
	movl	$24, 5440(%rax)
.LBB1_48:                               # %if.end.139
	movq	display, %rax
	cmpl	$0, 6200(%rax)
	je	.LBB1_74
# BB#49:                                # %if.then.144
	movq	display, %rax
	cmpq	$0, 5920(%rax)
	jne	.LBB1_54
# BB#50:                                # %land.lhs.true.149
	movq	display, %rax
	cmpq	$0, 5880(%rax)
	je	.LBB1_54
# BB#51:                                # %land.lhs.true.154
	movabsq	$.L.str.9, %rsi
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	jne	.LBB1_53
# BB#52:                                # %lor.lhs.false.160
	movabsq	$.L.str.10, %rsi
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	je	.LBB1_54
.LBB1_53:                               # %if.then.166
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.11, %rcx
	movq	display, %rdx
	movq	%rcx, 5920(%rdx)
	movq	display, %rcx
	movq	%rax, 5928(%rcx)
.LBB1_54:                               # %if.end.173
	movq	display, %rax
	cmpq	$0, 5952(%rax)
	je	.LBB1_57
# BB#55:                                # %land.lhs.true.178
	movabsq	$.L.str.13, %rsi
	movq	display, %rax
	movq	5952(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	je	.LBB1_57
# BB#56:                                # %if.then.184
	movq	display, %rax
	movl	$1, 5976(%rax)
.LBB1_57:                               # %if.end.188
	movq	display, %rax
	cmpq	$0, 5952(%rax)
	je	.LBB1_61
# BB#58:                                # %land.lhs.true.193
	movabsq	$.L.str.9, %rsi
	movq	display, %rax
	movq	5952(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	jne	.LBB1_60
# BB#59:                                # %lor.lhs.false.199
	movabsq	$.L.str.10, %rsi
	movq	display, %rax
	movq	5952(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	je	.LBB1_61
.LBB1_60:                               # %if.then.205
	movq	display, %rax
	movq	$0, 5952(%rax)
.LBB1_61:                               # %if.end.209
	movq	display, %rax
	cmpq	$0, 6272(%rax)
	je	.LBB1_63
# BB#62:                                # %land.lhs.true.214
	movabsq	$.L.str.14, %rsi
	movq	display, %rax
	movq	6272(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	jne	.LBB1_65
.LBB1_63:                               # %lor.lhs.false.220
	movq	display, %rax
	cmpq	$0, 6248(%rax)
	je	.LBB1_66
# BB#64:                                # %land.lhs.true.225
	movabsq	$.L.str.15, %rsi
	movq	display, %rax
	movq	6248(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	je	.LBB1_66
.LBB1_65:                               # %if.then.231
	movq	display, %rax
	movl	$1, 6216(%rax)
.LBB1_66:                               # %if.end.235
	movabsq	$.L.str.16, %rsi
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, %rdi
	callq	InStr
	cmpq	$0, %rax
	jne	.LBB1_70
# BB#67:                                # %lor.lhs.false.240
	movabsq	$.L.str.17, %rsi
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, %rdi
	callq	InStr
	cmpq	$0, %rax
	jne	.LBB1_70
# BB#68:                                # %lor.lhs.false.245
	movq	display, %rax
	cmpq	$0, 6288(%rax)
	je	.LBB1_71
# BB#69:                                # %land.lhs.true.250
	movabsq	$.L.str.18, %rsi
	movq	display, %rax
	movq	6288(%rax), %rdi
	callq	InStr
	cmpq	$0, %rax
	je	.LBB1_71
.LBB1_70:                               # %if.then.256
	movq	display, %rax
	movl	$1, 6208(%rax)
.LBB1_71:                               # %if.end.260
	movq	display, %rax
	cmpl	$0, 6208(%rax)
	je	.LBB1_73
# BB#72:                                # %if.then.265
	movq	display, %rax
	movl	$1, 5968(%rax)
.LBB1_73:                               # %if.end.269
	jmp	.LBB1_74
.LBB1_74:                               # %if.end.270
	movl	nwin_options+44, %eax
	cmpl	nwin_undef+44, %eax
	jne	.LBB1_79
# BB#75:                                # %if.then.273
	movq	display, %rax
	cmpl	$0, 6144(%rax)
	je	.LBB1_77
# BB#76:                                # %cond.true.278
	xorl	%eax, %eax
	movl	%eax, -2136(%rbp)       # 4-byte Spill
	jmp	.LBB1_78
.LBB1_77:                               # %cond.false.279
	movl	$4, %eax
	movl	$1, %ecx
	movq	display, %rdx
	cmpl	$0, 6152(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -2136(%rbp)       # 4-byte Spill
.LBB1_78:                               # %cond.end.285
	movl	-2136(%rbp), %eax       # 4-byte Reload
	movl	%eax, nwin_default+44
.LBB1_79:                               # %if.end.287
	movb	$1, %al
	movq	display, %rcx
	cmpl	$0, 6104(%rcx)
	movb	%al, -2137(%rbp)        # 1-byte Spill
	je	.LBB1_82
# BB#80:                                # %lor.lhs.false.292
	movb	$1, %al
	movq	display, %rcx
	cmpl	$0, 6112(%rcx)
	movb	%al, -2137(%rbp)        # 1-byte Spill
	jne	.LBB1_82
# BB#81:                                # %lor.rhs
	movq	display, %rax
	cmpl	$0, 6120(%rax)
	setne	%cl
	movb	%cl, -2137(%rbp)        # 1-byte Spill
.LBB1_82:                               # %lor.end
	movb	-2137(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	display, %rdx
	orl	6136(%rdx), %ecx
	movl	%ecx, 6136(%rdx)
	movq	display, %rdx
	cmpq	$0, 5776(%rdx)
	jne	.LBB1_84
# BB#83:                                # %if.then.308
	movabsq	$.L.str.19, %rax
	movq	display, %rcx
	movq	%rax, 5776(%rcx)
.LBB1_84:                               # %if.end.312
	movq	display, %rax
	cmpq	$0, 5544(%rax)
	jne	.LBB1_89
# BB#85:                                # %if.then.317
	movq	display, %rax
	cmpl	$0, 5536(%rax)
	je	.LBB1_87
# BB#86:                                # %if.then.322
	movabsq	$.L.str.20, %rax
	movq	display, %rcx
	movq	%rax, 5544(%rcx)
	jmp	.LBB1_88
.LBB1_87:                               # %if.else
	movq	display, %rax
	movq	5552(%rax), %rax
	movq	display, %rcx
	movq	%rax, 5544(%rcx)
.LBB1_88:                               # %if.end.332
	jmp	.LBB1_89
.LBB1_89:                               # %if.end.333
	movq	display, %rax
	cmpq	$0, 5496(%rax)
	jne	.LBB1_91
# BB#90:                                # %if.then.338
	movabsq	$.L.str.21, %rax
	movq	display, %rcx
	movq	%rax, 5496(%rcx)
.LBB1_91:                               # %if.end.342
	movq	display, %rax
	cmpq	$0, 5592(%rax)
	jne	.LBB1_93
# BB#92:                                # %if.then.347
	movabsq	$.L.str.22, %rax
	movq	display, %rcx
	movq	%rax, 5592(%rcx)
.LBB1_93:                               # %if.end.351
	movq	display, %rax
	cmpl	$0, 5904(%rax)
	jle	.LBB1_95
# BB#94:                                # %if.then.357
	movq	display, %rax
	movq	$0, 5864(%rax)
	movq	display, %rax
	movq	$0, 5824(%rax)
.LBB1_95:                               # %if.end.364
	movq	display, %rax
	cmpl	$0, 5896(%rax)
	jle	.LBB1_97
# BB#96:                                # %if.then.370
	movq	display, %rax
	movq	$0, 5872(%rax)
	movq	display, %rax
	movq	$0, 5848(%rax)
.LBB1_97:                               # %if.end.377
	movq	display, %rax
	cmpl	$0, 5904(%rax)
	jle	.LBB1_100
# BB#98:                                # %land.lhs.true.383
	movq	display, %rax
	cmpl	$0, 5896(%rax)
	jle	.LBB1_100
# BB#99:                                # %if.then.389
	movq	display, %rax
	movq	$0, 5880(%rax)
	movq	display, %rax
	movq	$0, 5856(%rax)
	movq	display, %rax
	movq	$0, 5840(%rax)
	movq	display, %rax
	movq	$0, 5832(%rax)
	movq	display, %rax
	movq	$0, 5816(%rax)
.LBB1_100:                              # %if.end.405
	movl	$4, -2096(%rbp)
	movl	$2, -2100(%rbp)
	movl	$1, -2104(%rbp)
	movq	display, %rax
	cmpq	$0, 5848(%rax)
	je	.LBB1_106
# BB#101:                               # %land.lhs.true.410
	movq	display, %rax
	cmpq	$0, 5872(%rax)
	jne	.LBB1_106
# BB#102:                               # %if.then.416
	xorl	%edi, %edi
	movabsq	$.L.str.23, %rsi
	movb	$0, %al
	callq	Msg
	movq	display, %rsi
	cmpq	$0, 5880(%rsi)
	je	.LBB1_104
# BB#103:                               # %if.then.421
	movl	-2104(%rbp), %eax
	movl	%eax, -2100(%rbp)
	jmp	.LBB1_105
.LBB1_104:                              # %if.else.422
	movq	display, %rax
	movq	$0, 5848(%rax)
.LBB1_105:                              # %if.end.426
	jmp	.LBB1_106
.LBB1_106:                              # %if.end.427
	movq	display, %rax
	cmpq	$0, 5824(%rax)
	je	.LBB1_112
# BB#107:                               # %land.lhs.true.432
	movq	display, %rax
	cmpq	$0, 5864(%rax)
	jne	.LBB1_112
# BB#108:                               # %if.then.438
	xorl	%edi, %edi
	movabsq	$.L.str.24, %rsi
	movb	$0, %al
	callq	Msg
	movq	display, %rsi
	cmpq	$0, 5880(%rsi)
	je	.LBB1_110
# BB#109:                               # %if.then.443
	movl	-2104(%rbp), %eax
	movl	%eax, -2096(%rbp)
	jmp	.LBB1_111
.LBB1_110:                              # %if.else.444
	movq	display, %rax
	movq	$0, 5824(%rax)
.LBB1_111:                              # %if.end.448
	jmp	.LBB1_112
.LBB1_112:                              # %if.end.449
	movq	display, %rax
	cmpq	$0, 5816(%rax)
	jne	.LBB1_116
# BB#113:                               # %lor.lhs.false.454
	movq	display, %rax
	cmpq	$0, 5832(%rax)
	jne	.LBB1_116
# BB#114:                               # %lor.lhs.false.459
	movq	display, %rax
	cmpq	$0, 5840(%rax)
	jne	.LBB1_116
# BB#115:                               # %lor.lhs.false.464
	movq	display, %rax
	cmpq	$0, 5856(%rax)
	je	.LBB1_118
.LBB1_116:                              # %land.lhs.true.469
	movq	display, %rax
	cmpq	$0, 5880(%rax)
	jne	.LBB1_118
# BB#117:                               # %if.then.475
	xorl	%edi, %edi
	movabsq	$.L.str.25, %rsi
	movb	$0, %al
	callq	Msg
	movq	display, %rsi
	movq	$0, 5856(%rsi)
	movq	display, %rsi
	movq	$0, 5840(%rsi)
	movq	display, %rsi
	movq	$0, 5832(%rsi)
	movq	display, %rsi
	movq	$0, 5816(%rsi)
.LBB1_118:                              # %if.end.488
	movq	display, %rax
	cmpq	$0, 5864(%rax)
	je	.LBB1_122
# BB#119:                               # %land.lhs.true.493
	movq	display, %rax
	cmpq	$0, 5872(%rax)
	je	.LBB1_122
# BB#120:                               # %land.lhs.true.498
	movq	display, %rax
	movq	5872(%rax), %rdi
	movq	display, %rax
	movq	5864(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_122
# BB#121:                               # %if.then.508
	movl	-2096(%rbp), %eax
	movl	%eax, -2100(%rbp)
.LBB1_122:                              # %if.end.509
	movq	display, %rax
	cmpq	$0, 5872(%rax)
	je	.LBB1_126
# BB#123:                               # %land.lhs.true.514
	movq	display, %rax
	cmpq	$0, 5880(%rax)
	je	.LBB1_126
# BB#124:                               # %land.lhs.true.519
	movq	display, %rax
	movq	5880(%rax), %rdi
	movq	display, %rax
	movq	5872(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_126
# BB#125:                               # %if.then.529
	movl	-2104(%rbp), %eax
	movl	%eax, -2100(%rbp)
.LBB1_126:                              # %if.end.530
	movq	display, %rax
	cmpq	$0, 5864(%rax)
	je	.LBB1_130
# BB#127:                               # %land.lhs.true.535
	movq	display, %rax
	cmpq	$0, 5880(%rax)
	je	.LBB1_130
# BB#128:                               # %land.lhs.true.540
	movq	display, %rax
	movq	5880(%rax), %rdi
	movq	display, %rax
	movq	5864(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_130
# BB#129:                               # %if.then.550
	movl	-2104(%rbp), %eax
	movl	%eax, -2096(%rbp)
.LBB1_130:                              # %if.end.551
	movl	$0, -28(%rbp)
.LBB1_131:                              # %for.cond.552
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB1_140
# BB#132:                               # %for.body.555
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-28(%rbp), %eax
	addl	$47, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	5440(%rdx,%rcx,8), %rcx
	movslq	-28(%rbp), %rdx
	movq	display, %rsi
	movq	%rcx, 7048(%rsi,%rdx,8)
	cmpl	$4, -28(%rbp)
	jne	.LBB1_134
# BB#133:                               # %cond.true.565
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-2100(%rbp), %eax
	movl	%eax, -2144(%rbp)       # 4-byte Spill
	jmp	.LBB1_138
.LBB1_134:                              # %cond.false.566
                                        #   in Loop: Header=BB1_131 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB1_136
# BB#135:                               # %cond.true.569
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-2096(%rbp), %eax
	movl	%eax, -2148(%rbp)       # 4-byte Spill
	jmp	.LBB1_137
.LBB1_136:                              # %cond.false.570
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-2104(%rbp), %eax
	movl	%eax, -2148(%rbp)       # 4-byte Spill
.LBB1_137:                              # %cond.end.571
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-2148(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2144(%rbp)       # 4-byte Spill
.LBB1_138:                              # %cond.end.573
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-2144(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movq	display, %rsi
	movb	%cl, 7096(%rsi,%rdx)
# BB#139:                               # %for.inc.578
                                        #   in Loop: Header=BB1_131 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_131
.LBB1_140:                              # %for.end.580
	movq	$0, -24(%rbp)
	movl	$0, -2092(%rbp)
	movl	$0, -28(%rbp)
.LBB1_141:                              # %for.cond.581
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB1_146
# BB#142:                               # %for.body.584
                                        #   in Loop: Header=BB1_141 Depth=1
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movq	7048(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB1_144
# BB#143:                               # %if.then.589
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movsbl	7096(%rcx,%rax), %edx
	movl	%edx, -2092(%rbp)
	jmp	.LBB1_146
.LBB1_144:                              # %if.end.594
                                        #   in Loop: Header=BB1_141 Depth=1
	jmp	.LBB1_145
.LBB1_145:                              # %for.inc.595
                                        #   in Loop: Header=BB1_141 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_141
.LBB1_146:                              # %for.end.597
	movl	$0, -28(%rbp)
.LBB1_147:                              # %for.cond.598
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB1_153
# BB#148:                               # %for.body.601
                                        #   in Loop: Header=BB1_147 Depth=1
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	cmpq	$0, 7048(%rcx,%rax,8)
	jne	.LBB1_150
# BB#149:                               # %if.then.607
                                        #   in Loop: Header=BB1_147 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	display, %rdx
	movq	%rax, 7048(%rdx,%rcx,8)
	movl	-2092(%rbp), %esi
	movb	%sil, %dil
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movb	%dil, 7096(%rcx,%rax)
	jmp	.LBB1_151
.LBB1_150:                              # %if.else.615
                                        #   in Loop: Header=BB1_147 Depth=1
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movq	7048(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movslq	-28(%rbp), %rax
	movq	display, %rcx
	movsbl	7096(%rcx,%rax), %edx
	movl	%edx, -2092(%rbp)
.LBB1_151:                              # %if.end.623
                                        #   in Loop: Header=BB1_147 Depth=1
	jmp	.LBB1_152
.LBB1_152:                              # %for.inc.624
                                        #   in Loop: Header=BB1_147 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_147
.LBB1_153:                              # %for.end.626
	movq	display, %rax
	cmpq	$0, 5920(%rax)
	jne	.LBB1_157
# BB#154:                               # %lor.lhs.false.631
	movq	display, %rax
	cmpq	$0, 5928(%rax)
	jne	.LBB1_157
# BB#155:                               # %lor.lhs.false.636
	movq	display, %rax
	cmpq	$0, 5936(%rax)
	jne	.LBB1_157
# BB#156:                               # %lor.lhs.false.641
	movq	display, %rax
	cmpq	$0, 5944(%rax)
	je	.LBB1_158
.LBB1_157:                              # %if.then.646
	movq	display, %rax
	movl	$1, 7104(%rax)
.LBB1_158:                              # %if.end.647
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	je	.LBB1_160
# BB#159:                               # %if.then.652
	movq	display, %rax
	movl	$1, 5968(%rax)
.LBB1_160:                              # %if.end.656
	movq	display, %rax
	cmpq	$0, 5520(%rax)
	jne	.LBB1_162
# BB#161:                               # %if.then.661
	movq	display, %rax
	movq	5592(%rax), %rax
	movq	display, %rcx
	movq	%rax, 5520(%rcx)
.LBB1_162:                              # %if.end.668
	movq	display, %rax
	cmpq	$0, 5600(%rax)
	jne	.LBB1_164
# BB#163:                               # %if.then.673
	movq	display, %rax
	movq	5592(%rax), %rax
	movq	display, %rcx
	movq	%rax, 5600(%rcx)
.LBB1_164:                              # %if.end.680
	movq	display, %rax
	cmpl	$0, 5648(%rax)
	je	.LBB1_166
# BB#165:                               # %if.then.685
	movq	display, %rax
	movq	$0, 5656(%rax)
	movq	display, %rax
	movq	$0, 5672(%rax)
.LBB1_166:                              # %if.end.692
	movq	display, %rax
	cmpq	$0, 5664(%rax)
	jne	.LBB1_168
# BB#167:                               # %if.then.698
	movq	display, %rax
	movq	$0, 5656(%rax)
.LBB1_168:                              # %if.end.702
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	je	.LBB1_172
# BB#169:                               # %land.lhs.true.707
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB1_172
# BB#170:                               # %land.lhs.true.712
	movq	display, %rax
	movq	5672(%rax), %rdi
	movq	display, %rax
	movq	5656(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_172
# BB#171:                               # %if.then.722
	movq	display, %rax
	movq	$0, 5672(%rax)
.LBB1_172:                              # %if.end.726
	movq	display, %rax
	cmpq	$0, 6000(%rax)
	jne	.LBB1_174
# BB#173:                               # %if.then.732
	movq	display, %rax
	movq	$0, 5992(%rax)
.LBB1_174:                              # %if.end.736
	movq	display, %rax
	cmpq	$0, 6192(%rax)
	jne	.LBB1_176
# BB#175:                               # %if.then.742
	movq	display, %rax
	movq	$0, 6184(%rax)
.LBB1_176:                              # %if.end.746
	movq	display, %rax
	cmpq	$0, 6096(%rax)
	jne	.LBB1_178
# BB#177:                               # %if.then.752
	movq	display, %rax
	movq	$0, 6088(%rax)
	movq	display, %rax
	movq	$0, 6080(%rax)
.LBB1_178:                              # %if.end.759
	movq	display, %rax
	cmpq	$0, 6016(%rax)
	jne	.LBB1_180
# BB#179:                               # %if.then.765
	movq	display, %rax
	movq	$0, 6008(%rax)
.LBB1_180:                              # %if.end.769
	movq	display, %rax
	cmpl	$0, 6216(%rax)
	je	.LBB1_186
# BB#181:                               # %if.then.774
	movq	display, %rax
	cmpq	$0, 6224(%rax)
	jne	.LBB1_183
# BB#182:                               # %if.then.780
	movabsq	$.L.str.26, %rax
	movq	display, %rcx
	movq	%rax, 6224(%rcx)
.LBB1_183:                              # %if.end.784
	movq	display, %rax
	cmpq	$0, 6232(%rax)
	jne	.LBB1_185
# BB#184:                               # %if.then.790
	movabsq	$.L.str.14, %rax
	movq	display, %rcx
	movq	%rax, 6232(%rcx)
.LBB1_185:                              # %if.end.794
	movq	display, %rax
	movq	$0, 6264(%rax)
	movq	display, %rax
	movq	$0, 6272(%rax)
	jmp	.LBB1_200
.LBB1_186:                              # %if.else.801
	movq	display, %rax
	cmpq	$0, 6264(%rax)
	jne	.LBB1_189
# BB#187:                               # %lor.lhs.false.806
	movq	display, %rax
	cmpq	$0, 6248(%rax)
	je	.LBB1_198
# BB#188:                               # %land.lhs.true.811
	movq	display, %rax
	cmpq	$0, 6256(%rax)
	je	.LBB1_198
.LBB1_189:                              # %if.then.816
	movq	display, %rax
	cmpq	$0, 6248(%rax)
	je	.LBB1_192
# BB#190:                               # %land.lhs.true.821
	movq	display, %rax
	cmpq	$0, 6256(%rax)
	je	.LBB1_192
# BB#191:                               # %cond.true.826
	movq	display, %rax
	movq	6248(%rax), %rax
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	jmp	.LBB1_193
.LBB1_192:                              # %cond.false.830
	movabsq	$.L.str.27, %rax
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	jmp	.LBB1_193
.LBB1_193:                              # %cond.end.831
	movq	-2160(%rbp), %rax       # 8-byte Reload
	movq	display, %rcx
	movq	%rax, 6224(%rcx)
	movq	display, %rax
	cmpq	$0, 6248(%rax)
	je	.LBB1_196
# BB#194:                               # %land.lhs.true.840
	movq	display, %rax
	cmpq	$0, 6256(%rax)
	je	.LBB1_196
# BB#195:                               # %cond.true.845
	movq	display, %rax
	movq	6256(%rax), %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	jmp	.LBB1_197
.LBB1_196:                              # %cond.false.849
	movabsq	$.L.str.27, %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	jmp	.LBB1_197
.LBB1_197:                              # %cond.end.850
	movq	-2168(%rbp), %rax       # 8-byte Reload
	movq	display, %rcx
	movq	%rax, 6232(%rcx)
	movq	display, %rax
	movq	6264(%rax), %rax
	movq	display, %rcx
	movq	%rax, 6240(%rcx)
	jmp	.LBB1_199
.LBB1_198:                              # %if.else.861
	movabsq	$.L.str.27, %rax
	movq	display, %rcx
	movq	%rax, 6232(%rcx)
	movq	display, %rcx
	movq	%rax, 6224(%rcx)
	movq	display, %rcx
	movq	$0, 6240(%rcx)
	movq	display, %rcx
	movq	%rax, 6264(%rcx)
.LBB1_199:                              # %if.end.874
	jmp	.LBB1_200
.LBB1_200:                              # %if.end.875
	movl	$0, -28(%rbp)
.LBB1_201:                              # %for.cond.876
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB1_204
# BB#202:                               # %for.body.879
                                        #   in Loop: Header=BB1_201 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movslq	-28(%rbp), %rdx
	movq	display, %rsi
	movb	%cl, 7110(%rsi,%rdx)
# BB#203:                               # %for.inc.883
                                        #   in Loop: Header=BB1_201 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_201
.LBB1_204:                              # %for.end.885
	movq	display, %rax
	cmpq	$0, 6264(%rax)
	je	.LBB1_210
# BB#205:                               # %if.then.890
	movabsq	$.L.str.28, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	subq	$2, %rax
	andq	$-2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB1_206:                              # %for.cond.893
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB1_209
# BB#207:                               # %for.body.896
                                        #   in Loop: Header=BB1_206 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movb	%sil, 7110(%rdx,%rcx)
# BB#208:                               # %for.inc.906
                                        #   in Loop: Header=BB1_206 Depth=1
	movl	-28(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_206
.LBB1_209:                              # %for.end.908
	jmp	.LBB1_210
.LBB1_210:                              # %if.end.909
	movq	display, %rax
	cmpq	$0, 6240(%rax)
	je	.LBB1_216
# BB#211:                               # %if.then.914
	movq	display, %rax
	movq	6240(%rax), %rdi
	callq	strlen
	subq	$2, %rax
	andq	$-2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB1_212:                              # %for.cond.922
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB1_215
# BB#213:                               # %for.body.925
                                        #   in Loop: Header=BB1_212 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	6240(%rdx), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-28(%rbp), %rcx
	movq	display, %rdx
	movq	6240(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movb	%sil, 7110(%rdx,%rcx)
# BB#214:                               # %for.inc.941
                                        #   in Loop: Header=BB1_212 Depth=1
	movl	-28(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_212
.LBB1_215:                              # %for.end.943
	jmp	.LBB1_216
.LBB1_216:                              # %if.end.944
	jmp	.LBB1_217
.LBB1_217:                              # %do.body.945
	jmp	.LBB1_218
.LBB1_218:                              # %do.end.946
	movq	display, %rax
	cmpq	$0, 6032(%rax)
	jne	.LBB1_220
# BB#219:                               # %if.then.952
	movq	display, %rax
	movq	$0, 6024(%rax)
.LBB1_220:                              # %if.end.956
	jmp	.LBB1_221
.LBB1_221:                              # %do.body.957
	jmp	.LBB1_222
.LBB1_222:                              # %do.end.958
	movq	display, %rax
	cmpq	$0, 6280(%rax)
	je	.LBB1_226
# BB#223:                               # %if.then.963
	movq	display, %rax
	movq	6280(%rax), %rdi
	callq	CreateTransTable
	cmpl	$0, %eax
	je	.LBB1_225
# BB#224:                               # %if.then.969
	movl	$-1, -4(%rbp)
	jmp	.LBB1_278
.LBB1_225:                              # %if.end.970
	jmp	.LBB1_226
.LBB1_226:                              # %if.end.971
	movq	display, %rax
	cmpq	$0, 5808(%rax)
	jne	.LBB1_228
# BB#227:                               # %if.then.977
	movq	display, %rax
	movq	$0, 5800(%rax)
.LBB1_228:                              # %if.end.981
	xorl	%edi, %edi
	movl	$132, Z0width
	movl	$80, Z1width
	callq	CheckScreenSize
	movq	display, %rax
	cmpq	$0, 6056(%rax)
	je	.LBB1_231
# BB#229:                               # %lor.lhs.false.987
	movq	display, %rax
	cmpq	$0, 6064(%rax)
	je	.LBB1_231
# BB#230:                               # %lor.lhs.false.993
	movq	display, %rax
	cmpq	$0, 6072(%rax)
	jne	.LBB1_232
.LBB1_231:                              # %if.then.999
	movq	display, %rax
	movl	$0, 6040(%rax)
.LBB1_232:                              # %if.end.1003
	movq	display, %rax
	cmpl	$0, 6040(%rax)
	je	.LBB1_238
# BB#233:                               # %if.then.1008
	jmp	.LBB1_234
.LBB1_234:                              # %do.body.1009
	jmp	.LBB1_235
.LBB1_235:                              # %do.end.1010
	movq	display, %rax
	cmpl	$0, 6048(%rax)
	jge	.LBB1_237
# BB#236:                               # %if.then.1016
	movq	display, %rax
	movl	$0, 6048(%rax)
.LBB1_237:                              # %if.end.1020
	jmp	.LBB1_238
.LBB1_238:                              # %if.end.1021
	movl	hardstatusemu, %eax
	andl	$-9, %eax
	movq	display, %rcx
	movl	%eax, 528(%rcx)
	movq	display, %rcx
	cmpl	$0, 6040(%rcx)
	je	.LBB1_241
# BB#239:                               # %land.lhs.true.1027
	movl	hardstatusemu, %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB1_241
# BB#240:                               # %if.then.1030
	movq	display, %rax
	movl	$3, 528(%rax)
.LBB1_241:                              # %if.end.1032
	movq	display, %rax
	cmpq	$0, 6176(%rax)
	je	.LBB1_245
# BB#242:                               # %if.then.1037
	movq	display, %rax
	movq	6176(%rax), %rdi
	callq	FindEncoding
	movl	%eax, -2108(%rbp)
	cmpl	$-1, -2108(%rbp)
	je	.LBB1_244
# BB#243:                               # %if.then.1044
	movl	-2108(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 496(%rcx)
.LBB1_244:                              # %if.end.1045
	jmp	.LBB1_245
.LBB1_245:                              # %if.end.1046
	movq	display, %rax
	cmpq	$0, 6704(%rax)
	jne	.LBB1_248
# BB#246:                               # %land.lhs.true.1051
	movq	display, %rax
	cmpq	$0, 6712(%rax)
	je	.LBB1_248
# BB#247:                               # %if.then.1056
	movq	display, %rax
	movq	6712(%rax), %rax
	movq	display, %rcx
	movq	%rax, 6704(%rcx)
.LBB1_248:                              # %if.end.1063
	movq	display, %rax
	cmpq	$0, 6720(%rax)
	jne	.LBB1_251
# BB#249:                               # %land.lhs.true.1068
	movq	display, %rax
	cmpq	$0, 6728(%rax)
	je	.LBB1_251
# BB#250:                               # %if.then.1073
	movq	display, %rax
	movq	6728(%rax), %rax
	movq	display, %rcx
	movq	%rax, 6720(%rcx)
.LBB1_251:                              # %if.end.1080
	movq	display, %rax
	movq	5504(%rax), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7376(%rdi)
	movq	display, %rdi
	movq	5520(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7380(%rdi)
	movq	display, %rdi
	movq	5592(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7404(%rdi)
	movq	display, %rdi
	movq	5544(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7384(%rdi)
	movq	display, %rdi
	movq	5568(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7388(%rdi)
	movq	display, %rdi
	movq	5496(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7392(%rdi)
	movq	display, %rdi
	movq	5656(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7396(%rdi)
	movq	display, %rdi
	movq	5664(%rdi), %rdi
	callq	CalcCost
	movq	display, %rdi
	movl	%eax, 7400(%rdi)
	movq	display, %rdi
	cmpl	$0, 6160(%rdi)
	je	.LBB1_255
# BB#252:                               # %if.then.1117
	jmp	.LBB1_253
.LBB1_253:                              # %do.body.1118
	jmp	.LBB1_254
.LBB1_254:                              # %do.end.1119
	movq	display, %rax
	movl	$1, 5308(%rax)
.LBB1_255:                              # %if.end.1120
	movq	display, %rax
	cmpl	$0, 6168(%rax)
	jle	.LBB1_259
# BB#256:                               # %if.then.1126
	jmp	.LBB1_257
.LBB1_257:                              # %do.body.1127
	jmp	.LBB1_258
.LBB1_258:                              # %do.end.1128
	movq	display, %rax
	movl	6168(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 5284(%rax)
	movq	display, %rax
	movl	5280(%rax), %ecx
	movq	display, %rax
	subl	5284(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 5288(%rax)
.LBB1_259:                              # %if.end.1134
	movq	display, %rax
	cmpq	$0, 6288(%rax)
	je	.LBB1_263
# BB#260:                               # %land.lhs.true.1139
	movq	display, %rax
	cmpq	$0, 6368(%rax)
	je	.LBB1_263
# BB#261:                               # %land.lhs.true.1144
	movq	display, %rax
	movq	6288(%rax), %rdi
	movq	display, %rax
	movq	6368(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_263
# BB#262:                               # %if.then.1153
	movq	display, %rax
	movq	$0, 6288(%rax)
.LBB1_263:                              # %if.end.1157
	movq	display, %rax
	cmpq	$0, 6760(%rax)
	je	.LBB1_266
# BB#264:                               # %land.lhs.true.1162
	movq	display, %rax
	movq	6760(%rax), %rdi
	movl	$.L.str.29, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_266
# BB#265:                               # %if.then.1168
	movq	display, %rax
	movq	$0, 6760(%rax)
.LBB1_266:                              # %if.end.1172
	movq	display, %rax
	cmpq	$0, 6792(%rax)
	je	.LBB1_269
# BB#267:                               # %land.lhs.true.1177
	movq	display, %rax
	movq	6792(%rax), %rdi
	movl	$.L.str.30, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_269
# BB#268:                               # %if.then.1183
	movq	display, %rax
	movq	$0, 6792(%rax)
.LBB1_269:                              # %if.end.1187
	movq	display, %rax
	movl	$0, 5312(%rax)
	movl	$0, -28(%rbp)
.LBB1_270:                              # %for.cond.1188
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$82, -28(%rbp)
	jge	.LBB1_273
# BB#271:                               # %for.body.1191
                                        #   in Loop: Header=BB1_270 Depth=1
	movl	$1, %esi
	movl	-28(%rbp), %edi
	callq	remap
	movl	%eax, -2172(%rbp)       # 4-byte Spill
# BB#272:                               # %for.inc.1193
                                        #   in Loop: Header=BB1_270 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_270
.LBB1_273:                              # %for.end.1195
	movl	$0, -28(%rbp)
.LBB1_274:                              # %for.cond.1196
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	kmap_extn, %eax
	jge	.LBB1_277
# BB#275:                               # %for.body.1199
                                        #   in Loop: Header=BB1_274 Depth=1
	movl	$1, %esi
	movl	-28(%rbp), %eax
	addl	$104, %eax
	movl	%eax, %edi
	callq	remap
	movl	%eax, -2176(%rbp)       # 4-byte Spill
# BB#276:                               # %for.inc.1202
                                        #   in Loop: Header=BB1_274 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_274
.LBB1_277:                              # %for.end.1204
	xorl	%edi, %edi
	movq	display, %rax
	movq	5320(%rax), %rax
	addq	$3, %rax
	movq	display, %rcx
	movq	%rax, 5328(%rcx)
	movq	display, %rax
	movl	$0, 5336(%rax)
	movq	display, %rax
	movq	$0, 5344(%rax)
	movq	display, %rax
	movb	$1, 440(%rax)
	callq	MakeTermcap
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	callq	CheckEscape
	movl	$0, -4(%rbp)
.LBB1_278:                              # %return
	movl	-4(%rbp), %eax
	addq	$2192, %rsp             # imm = 0x890
	popq	%rbp
	retq
.Lfunc_end1:
	.size	InitTermcap, .Lfunc_end1-InitTermcap
	.cfi_endproc

	.align	16, 0x90
	.type	e_tgetent,@function
e_tgetent:                              # @e_tgetent
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tgetent
	movl	%eax, -20(%rbp)
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	e_tgetent, .Lfunc_end2-e_tgetent
	.cfi_endproc

	.align	16, 0x90
	.type	e_tgetflag,@function
e_tgetflag:                             # @e_tgetflag
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
	leaq	-32(%rbp), %rsi
	movl	$2, %edx
	leaq	-18(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	findcap
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$64, %esi
	cmovel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	tgetflag
	cmpl	$0, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	e_tgetflag, .Lfunc_end3-e_tgetflag
	.cfi_endproc

	.align	16, 0x90
	.type	e_tgetnum,@function
e_tgetnum:                              # @e_tgetnum
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
	leaq	-56(%rbp), %rsi
	movl	$20, %edx
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	$10, -76(%rbp)
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	findcap
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB4_11
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -65(%rbp)
	movsbl	-65(%rbp), %edx
	cmpl	$64, %edx
	jne	.LBB4_3
# BB#2:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB4_12
.LBB4_3:                                # %if.end
	movsbl	-65(%rbp), %eax
	cmpl	$48, %eax
	jne	.LBB4_5
# BB#4:                                 # %if.then.6
	movl	$8, -76(%rbp)
.LBB4_5:                                # %if.end.7
	movl	$0, -72(%rbp)
.LBB4_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
	movb	(%rdx), %dil
	movb	%dil, -65(%rbp)
	movsbl	%dil, %eax
	cmpl	$48, %eax
	movb	%cl, -77(%rbp)          # 1-byte Spill
	jl	.LBB4_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB4_6 Depth=1
	movsbl	-65(%rbp), %eax
	cmpl	$57, %eax
	setle	%cl
	movb	%cl, -77(%rbp)          # 1-byte Spill
.LBB4_8:                                # %land.end
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	-77(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_9
	jmp	.LBB4_10
.LBB4_9:                                # %while.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-72(%rbp), %eax
	imull	-76(%rbp), %eax
	movsbl	-65(%rbp), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_6
.LBB4_10:                               # %while.end
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.end.15
	movq	-16(%rbp), %rdi
	callq	tgetnum
	movl	%eax, -4(%rbp)
.LBB4_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	e_tgetnum, .Lfunc_end4-e_tgetnum
	.cfi_endproc

	.align	16, 0x90
	.type	e_tgetstr,@function
e_tgetstr:                              # @e_tgetstr
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
	subq	$48, %rsp
	xorl	%edx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	findcap
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$64, %ecx
	jne	.LBB5_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB5_4:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	tgetstr
	movq	%rax, -8(%rbp)
.LBB5_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	e_tgetstr, .Lfunc_end5-e_tgetstr
	.cfi_endproc

	.globl	CreateTransTable
	.align	16, 0x90
	.type	CreateTransTable,@function
CreateTransTable:                       # @CreateTransTable
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
	subq	$112, %rsp
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	calloc
	movq	display, %rcx
	movq	%rax, 7368(%rcx)
	cmpq	$0, %rax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB6_75
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_16 Depth 2
                                        #     Child Loop BB6_32 Depth 2
                                        #       Child Loop BB6_53 Depth 3
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_74
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB6_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB6_8
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$44, %ecx
	je	.LBB6_8
# BB#7:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB6_9
.LBB6_8:                                # %if.then.15
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB6_9:                                # %if.end.16
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -20(%rbp)
	cmpl	$66, -20(%rbp)
	jne	.LBB6_11
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$0, -20(%rbp)
.LBB6_11:                               # %if.end.22
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movslq	-20(%rbp), %rax
	movq	display, %rcx
	movq	7368(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB6_15
# BB#12:                                # %if.then.27
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$257, %eax              # imm = 0x101
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	calloc
	movslq	-20(%rbp), %rsi
	movq	display, %rdi
	movq	7368(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	cmpq	$0, %rax
	jne	.LBB6_14
# BB#13:                                # %if.then.34
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	callq	FreeTransTable
	movl	$-1, -4(%rbp)
	jmp	.LBB6_75
.LBB6_14:                               # %if.end.35
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.36
                                        #   in Loop: Header=BB6_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	display, %rcx
	movq	7368(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
.LBB6_16:                               # %for.cond
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB6_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB6_18:                               # %land.end
                                        #   in Loop: Header=BB6_16 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_19
	jmp	.LBB6_29
.LBB6_19:                               # %for.body
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB6_24
# BB#20:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB6_23
# BB#21:                                # %lor.lhs.false.53
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$44, %ecx
	je	.LBB6_23
# BB#22:                                # %lor.lhs.false.58
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB6_24
.LBB6_23:                               # %if.then.63
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_27
.LBB6_24:                               # %if.else
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB6_26
# BB#25:                                # %if.then.68
                                        #   in Loop: Header=BB6_16 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_28
.LBB6_26:                               # %if.end.69
                                        #   in Loop: Header=BB6_16 Depth=2
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.70
                                        #   in Loop: Header=BB6_16 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB6_28:                               # %for.inc
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_16
.LBB6_29:                               # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB6_31
# BB#30:                                # %if.then.77
	jmp	.LBB6_74
.LBB6_31:                               # %if.end.78
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_32
.LBB6_32:                               # %while.cond.79
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_53 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -82(%rbp)          # 1-byte Spill
	je	.LBB6_34
# BB#33:                                # %land.rhs.82
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -82(%rbp)          # 1-byte Spill
.LBB6_34:                               # %land.end.86
                                        #   in Loop: Header=BB6_32 Depth=2
	movb	-82(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_35
	jmp	.LBB6_71
.LBB6_35:                               # %while.body.87
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rax
	movsbl	-1(%rax), %edx
	cmpl	$92, %edx
	jne	.LBB6_40
# BB#36:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB6_39
# BB#37:                                # %lor.lhs.false.99
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	je	.LBB6_39
# BB#38:                                # %lor.lhs.false.105
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB6_40
.LBB6_39:                               # %if.then.111
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -80(%rbp)
	jmp	.LBB6_43
.LBB6_40:                               # %if.else.114
                                        #   in Loop: Header=BB6_32 Depth=2
	cmpl	$37, -80(%rbp)
	jne	.LBB6_42
# BB#41:                                # %if.then.117
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	$256, -80(%rbp)         # imm = 0x100
.LBB6_42:                               # %if.end.118
                                        #   in Loop: Header=BB6_32 Depth=2
	jmp	.LBB6_43
.LBB6_43:                               # %if.end.119
                                        #   in Loop: Header=BB6_32 Depth=2
	movslq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB6_45
# BB#44:                                # %if.then.123
                                        #   in Loop: Header=BB6_32 Depth=2
	movslq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free
.LBB6_45:                               # %if.end.126
                                        #   in Loop: Header=BB6_32 Depth=2
	leaq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	callq	copyarg
	movl	%eax, -76(%rbp)
	cmpl	$256, -80(%rbp)         # imm = 0x100
	je	.LBB6_47
# BB#46:                                # %if.then.130
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-76(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB6_47:                               # %if.end.131
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc
	movslq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	cmpq	$0, %rax
	jne	.LBB6_49
# BB#48:                                # %if.then.139
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	callq	FreeTransTable
	movl	$-1, -4(%rbp)
	jmp	.LBB6_75
.LBB6_49:                               # %if.end.140
                                        #   in Loop: Header=BB6_32 Depth=2
	movslq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	cmpl	$256, -80(%rbp)         # imm = 0x100
	jne	.LBB6_51
# BB#50:                                # %cond.true
                                        #   in Loop: Header=BB6_32 Depth=2
	movabsq	$.L.str.87, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_52
.LBB6_51:                               # %cond.false
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB6_52:                               # %cond.end
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB6_53:                               # %for.cond.145
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB6_55
# BB#54:                                # %land.rhs.148
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -97(%rbp)          # 1-byte Spill
.LBB6_55:                               # %land.end.152
                                        #   in Loop: Header=BB6_53 Depth=3
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_56
	jmp	.LBB6_66
.LBB6_56:                               # %for.body.153
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB6_61
# BB#57:                                # %land.lhs.true.157
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB6_60
# BB#58:                                # %lor.lhs.false.162
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$44, %ecx
	je	.LBB6_60
# BB#59:                                # %lor.lhs.false.167
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB6_61
.LBB6_60:                               # %if.then.172
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB6_64
.LBB6_61:                               # %if.else.174
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB6_63
# BB#62:                                # %if.then.178
                                        #   in Loop: Header=BB6_53 Depth=3
	leaq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rsi
	callq	copyarg
	movq	-64(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
	jmp	.LBB6_65
.LBB6_63:                               # %if.end.181
                                        #   in Loop: Header=BB6_53 Depth=3
	jmp	.LBB6_64
.LBB6_64:                               # %if.end.182
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
.LBB6_65:                               # %for.inc.184
                                        #   in Loop: Header=BB6_53 Depth=3
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB6_53
.LBB6_66:                               # %for.end.186
                                        #   in Loop: Header=BB6_32 Depth=2
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
# BB#67:                                # %do.body
                                        #   in Loop: Header=BB6_32 Depth=2
	jmp	.LBB6_68
.LBB6_68:                               # %do.end
                                        #   in Loop: Header=BB6_32 Depth=2
	jmp	.LBB6_69
.LBB6_69:                               # %do.body.187
                                        #   in Loop: Header=BB6_32 Depth=2
	jmp	.LBB6_70
.LBB6_70:                               # %do.end.188
                                        #   in Loop: Header=BB6_32 Depth=2
	jmp	.LBB6_32
.LBB6_71:                               # %while.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	jne	.LBB6_73
# BB#72:                                # %if.then.192
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB6_73:                               # %if.end.194
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_74:                               # %while.end.195
	movl	$0, -4(%rbp)
.LBB6_75:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CreateTransTable, .Lfunc_end6-CreateTransTable
	.cfi_endproc

	.globl	remap
	.align	16, 0x90
	.type	remap,@function
remap:                                  # @remap
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
	subq	$112, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$104, -8(%rbp)
	jl	.LBB7_2
# BB#1:                                 # %if.then
	movq	kmap_exts, %rax
	movl	-8(%rbp), %ecx
	subl	$104, %ecx
	movslq	%ecx, %rdx
	imulq	$112, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%ecx, -60(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16384, %ecx            # imm = 0x4000
	movl	%ecx, -28(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
.LBB7_2:                                # %if.end
	movabsq	$umtab, %rax
	movq	%rax, -56(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rbp)
	cmpl	$104, -8(%rbp)
	jge	.LBB7_12
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$82, -8(%rbp)
	jl	.LBB7_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-8(%rbp), %eax
	subl	$22, %eax
	movl	%eax, -8(%rbp)
.LBB7_6:                                # %if.end.9
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$106, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	5440(%rdx,%rcx,8), %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false
                                        #   in Loop: Header=BB7_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_9:                                # %cond.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$60, -8(%rbp)
	jl	.LBB7_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$22, %eax
	movslq	%eax, %rcx
	shlq	$5, %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB7_11:                               # %if.end.19
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.20
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$0, -60(%rbp)
	jne	.LBB7_15
.LBB7_14:                               # %if.then.25
	movl	$0, -4(%rbp)
	jmp	.LBB7_59
.LBB7_15:                               # %if.end.26
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_18
# BB#17:                                # %if.then.30
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$0, -40(%rbp)
.LBB7_18:                               # %if.end.31
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB7_21
# BB#19:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB7_21
# BB#20:                                # %if.then.37
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$0, -48(%rbp)
.LBB7_21:                               # %if.end.38
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_26
# BB#22:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$158, (%rax)
	jne	.LBB7_26
# BB#23:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB7_26
# BB#24:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_26
# BB#25:                                # %if.then.53
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$0, -40(%rbp)
.LBB7_26:                               # %if.end.54
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB7_31
# BB#27:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$158, (%rax)
	jne	.LBB7_31
# BB#28:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB7_31
# BB#29:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_31
# BB#30:                                # %if.then.70
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	$0, -48(%rbp)
.LBB7_31:                               # %if.end.71
                                        #   in Loop: Header=BB7_3 Depth=1
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -81(%rbp)          # 1-byte Spill
	jne	.LBB7_33
# BB#32:                                # %lor.rhs
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB7_33:                               # %lor.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	movabsq	$umtab, %rcx
	andb	$1, %al
	movzbl	%al, %edx
	orl	-32(%rbp), %edx
	movl	%edx, -32(%rbp)
	cmpq	%rcx, -56(%rbp)
	jne	.LBB7_38
# BB#34:                                # %if.then.76
                                        #   in Loop: Header=BB7_3 Depth=1
	movabsq	$dmtab, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_36
# BB#35:                                # %cond.true.78
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_37
.LBB7_36:                               # %cond.false.79
                                        #   in Loop: Header=BB7_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_37
.LBB7_37:                               # %cond.end.80
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_45
.LBB7_38:                               # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	movabsq	$dmtab, %rax
	cmpq	%rax, -56(%rbp)
	jne	.LBB7_43
# BB#39:                                # %if.then.84
                                        #   in Loop: Header=BB7_3 Depth=1
	movabsq	$mmtab, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_41
# BB#40:                                # %cond.true.86
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-72(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_42
.LBB7_41:                               # %cond.false.87
                                        #   in Loop: Header=BB7_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_42
.LBB7_42:                               # %cond.end.88
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.90
	jmp	.LBB7_46
.LBB7_44:                               # %if.end.91
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_45
.LBB7_45:                               # %if.end.92
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_3
.LBB7_46:                               # %for.end
	cmpl	$82, -8(%rbp)
	jge	.LBB7_48
# BB#47:                                # %if.then.95
	movl	$1, -32(%rbp)
.LBB7_48:                               # %if.end.96
	cmpl	$0, -12(%rbp)
	jne	.LBB7_51
# BB#49:                                # %land.lhs.true.99
	cmpl	$0, -32(%rbp)
	je	.LBB7_51
# BB#50:                                # %if.then.101
	movl	$0, -4(%rbp)
	jmp	.LBB7_59
.LBB7_51:                               # %if.end.102
	cmpl	$0, -12(%rbp)
	je	.LBB7_54
# BB#52:                                # %land.lhs.true.104
	cmpl	$0, -32(%rbp)
	jne	.LBB7_54
# BB#53:                                # %if.then.106
	movl	$0, -4(%rbp)
	jmp	.LBB7_59
.LBB7_54:                               # %if.end.107
	jmp	.LBB7_55
.LBB7_55:                               # %do.body
	jmp	.LBB7_56
.LBB7_56:                               # %do.end
	cmpl	$0, -12(%rbp)
	je	.LBB7_58
# BB#57:                                # %if.then.109
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-8(%rbp), %eax
	orl	-28(%rbp), %eax
	movl	%eax, %edx
	callq	addmapseq
	movl	%eax, -4(%rbp)
	jmp	.LBB7_59
.LBB7_58:                               # %if.else.112
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	remmapseq
	movl	%eax, -4(%rbp)
.LBB7_59:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	remap, .Lfunc_end7-remap
	.cfi_endproc

	.globl	MakeTermcap
	.align	16, 0x90
	.type	MakeTermcap,@function
MakeTermcap:                            # @MakeTermcap
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
	subq	$2256, %rsp             # imm = 0x8D0
	movl	%edi, -12(%rbp)
	cmpq	$0, display
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	display, %rax
	movl	444(%rax), %ecx
	movl	%ecx, -2112(%rbp)
	movq	display, %rax
	movl	448(%rax), %ecx
	movl	%ecx, -2116(%rbp)
	movq	display, %rax
	addq	$396, %rax              # imm = 0x18C
	movq	%rax, -2104(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movabsq	$.L.str.32, %rax
	movl	$80, -2112(%rbp)
	movl	$24, -2116(%rbp)
	movq	%rax, -2104(%rbp)
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %do.body
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movabsq	$.L.str.33, %rdi
	callq	getenv
	movq	%rax, -2088(%rbp)
	cmpq	$0, %rax
	je	.LBB8_10
# BB#6:                                 # %land.lhs.true
	movq	-2088(%rbp), %rdi
	callq	strlen
	cmpq	$2048, %rax             # imm = 0x800
	jae	.LBB8_10
# BB#7:                                 # %if.then.3
	movabsq	$Termcap, %rdi
	movabsq	$.L.str.34, %rsi
	movq	-2088(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movl	$Term, %ecx
	movl	%ecx, %edi
	movl	$.L.str.35, %ecx
	movl	%ecx, %esi
	movl	%eax, -2132(%rbp)       # 4-byte Spill
	callq	strcpy
	movq	%rax, -2144(%rbp)       # 8-byte Spill
# BB#8:                                 # %do.body.6
	jmp	.LBB8_9
.LBB8_9:                                # %do.end.7
	movabsq	$Termcap, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_153
.LBB8_10:                               # %if.end.8
	movl	$0, Termcaplen
# BB#11:                                # %do.body.9
	jmp	.LBB8_12
.LBB8_12:                               # %do.end.10
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	jmp	.LBB8_14
.LBB8_14:                               # %do.end.12
	movsbl	screenterm, %eax
	cmpl	$0, %eax
	je	.LBB8_16
# BB#15:                                # %lor.lhs.false
	movl	$screenterm, %eax
	movl	%eax, %edi
	callq	strlen
	cmpq	$765, %rax              # imm = 0x2FD
	jbe	.LBB8_19
.LBB8_16:                               # %if.then.18
	jmp	.LBB8_17
.LBB8_17:                               # %do.body.19
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.20
	movabsq	$screenterm, %rdi
	movabsq	$.L.str.36, %rsi
	movl	$32, %eax
	movl	%eax, %edx
	callq	strncpy
	movb	$0, screenterm+32
	movq	%rax, -2152(%rbp)       # 8-byte Spill
.LBB8_19:                               # %if.end.22
	jmp	.LBB8_20
.LBB8_20:                               # %do.body.23
	movabsq	$Term, %rax
	addq	$5, %rax
	movl	$Term, %ecx
	movl	%ecx, %edi
	movl	$.L.str.37, %ecx
	movl	%ecx, %esi
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	callq	strcpy
	movq	-2160(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -2072(%rbp)
	cmpl	$0, -12(%rbp)
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	jne	.LBB8_25
# BB#21:                                # %land.lhs.true.26
	movl	$screenterm, %eax
	movl	%eax, %edi
	callq	strlen
	movq	-2104(%rbp), %rdi
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-2176(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$767, %rdi              # imm = 0x2FF
	jae	.LBB8_25
# BB#22:                                # %if.then.31
	movabsq	$.L.str.38, %rsi
	movabsq	$screenterm, %rdx
	movq	-2072(%rbp), %rdi
	movq	-2104(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	leaq	-2064(%rbp), %rdi
	movq	-2072(%rbp), %rsi
	movl	%eax, -2180(%rbp)       # 4-byte Spill
	callq	e_tgetent
	cmpl	$1, %eax
	jne	.LBB8_24
# BB#23:                                # %if.then.37
	jmp	.LBB8_32
.LBB8_24:                               # %if.end.38
	jmp	.LBB8_25
.LBB8_25:                               # %if.end.39
	cmpl	$0, nwin_default+88
	je	.LBB8_29
# BB#26:                                # %if.then.41
	movabsq	$.L.str.39, %rsi
	movabsq	$screenterm, %rdx
	movq	-2072(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	leaq	-2064(%rbp), %rdi
	movq	-2072(%rbp), %rsi
	movl	%eax, -2184(%rbp)       # 4-byte Spill
	callq	e_tgetent
	cmpl	$1, %eax
	jne	.LBB8_28
# BB#27:                                # %if.then.47
	jmp	.LBB8_32
.LBB8_28:                               # %if.end.48
	jmp	.LBB8_29
.LBB8_29:                               # %if.end.49
	leaq	-2064(%rbp), %rdi
	movq	-2072(%rbp), %rax
	movl	$screenterm, %ecx
	movl	%ecx, %esi
	movq	%rdi, -2192(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	strcpy
	movq	-2072(%rbp), %rsi
	movq	-2192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	callq	e_tgetent
	cmpl	$1, %eax
	jne	.LBB8_31
# BB#30:                                # %if.then.55
	jmp	.LBB8_32
.LBB8_31:                               # %if.end.56
	movq	-2072(%rbp), %rdi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -2208(%rbp)       # 8-byte Spill
.LBB8_32:                               # %do.end.58
	movl	$100, tcLineLen
	movl	$Term, %eax
	movl	%eax, %edi
	callq	strlen
	cmpq	$2008, %rax             # imm = 0x7D8
	jbe	.LBB8_34
# BB#33:                                # %if.then.62
	movl	$Term, %eax
	movl	%eax, %edi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -2216(%rbp)       # 8-byte Spill
.LBB8_34:                               # %if.end.64
	movabsq	$Termcap, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$Term, %rax
	addq	$5, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movl	$Termcap, %ecx
	movl	%ecx, %edi
	movl	%eax, -2220(%rbp)       # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, Termcaplen
# BB#35:                                # %do.body.68
	jmp	.LBB8_36
.LBB8_36:                               # %do.end.69
	cmpq	$0, extra_outcap
	je	.LBB8_43
# BB#37:                                # %land.lhs.true.71
	movq	extra_outcap, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_43
# BB#38:                                # %if.then.74
	movq	extra_outcap, %rax
	movq	%rax, -2080(%rbp)
.LBB8_39:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$58, %esi
	movq	-2080(%rbp), %rdi
	callq	index
	movq	%rax, -2072(%rbp)
	cmpq	$0, %rax
	je	.LBB8_42
# BB#40:                                # %for.body
                                        #   in Loop: Header=BB8_39 Depth=1
	movq	-2072(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -2072(%rbp)
	movb	1(%rax), %dl
	movb	%dl, -2089(%rbp)
	movq	-2072(%rbp), %rax
	movb	$0, (%rax)
	movq	-2080(%rbp), %rdi
	callq	AddCap
	movb	-2089(%rbp), %dl
	movq	-2072(%rbp), %rax
	movb	%dl, (%rax)
# BB#41:                                # %for.inc
                                        #   in Loop: Header=BB8_39 Depth=1
	movq	-2072(%rbp), %rax
	movq	%rax, -2080(%rbp)
	jmp	.LBB8_39
.LBB8_42:                               # %for.end
	movl	$100, tcLineLen
.LBB8_43:                               # %if.end.77
	jmp	.LBB8_44
.LBB8_44:                               # %do.body.78
	jmp	.LBB8_45
.LBB8_45:                               # %do.end.79
	movslq	Termcaplen, %rax
	movl	$TermcapConst, %ecx
	movl	%ecx, %edi
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	cmpq	$2048, %rdi             # imm = 0x800
	jae	.LBB8_47
# BB#46:                                # %if.then.85
	movabsq	$Termcap, %rax
	movslq	Termcaplen, %rcx
	addq	%rcx, %rax
	movl	$TermcapConst, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	$TermcapConst, %edx
	movl	%edx, %edi
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	callq	strlen
	movslq	Termcaplen, %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, Termcaplen
.LBB8_47:                               # %if.end.91
	movabsq	$.L.str.42, %rsi
	leaq	-2064(%rbp), %rdi
	movl	-2116(%rbp), %edx
	movl	-2112(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	leaq	-2064(%rbp), %rdi
	movl	%eax, -2244(%rbp)       # 4-byte Spill
	callq	AddCap
	movabsq	$.L.str.43, %rdi
	callq	AddCap
	cmpl	$0, -12(%rbp)
	jne	.LBB8_52
# BB#48:                                # %lor.lhs.false.96
	cmpl	$0, force_vt
	je	.LBB8_50
# BB#49:                                # %land.lhs.true.98
	movq	display, %rax
	cmpl	$0, 6128(%rax)
	je	.LBB8_52
.LBB8_50:                               # %lor.lhs.false.100
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	jne	.LBB8_52
# BB#51:                                # %lor.lhs.false.105
	movq	display, %rax
	cmpl	$0, 6104(%rax)
	jne	.LBB8_53
.LBB8_52:                               # %if.then.110
	movabsq	$.L.str.44, %rdi
	callq	AddCap
	movabsq	$.L.str.45, %rdi
	callq	AddCap
	movabsq	$.L.str.46, %rdi
	callq	AddCap
.LBB8_53:                               # %if.end.111
	cmpl	$0, -12(%rbp)
	jne	.LBB8_58
# BB#54:                                # %lor.lhs.false.113
	movq	display, %rax
	cmpq	$0, 5584(%rax)
	je	.LBB8_56
# BB#55:                                # %land.lhs.true.117
	movq	display, %rax
	cmpq	$0, 5608(%rax)
	jne	.LBB8_58
.LBB8_56:                               # %lor.lhs.false.122
	movq	display, %rax
	cmpq	$0, 5616(%rax)
	jne	.LBB8_58
# BB#57:                                # %lor.lhs.false.127
	movq	display, %rax
	cmpq	$0, 5624(%rax)
	je	.LBB8_59
.LBB8_58:                               # %if.then.132
	movabsq	$.L.str.47, %rdi
	callq	AddCap
	movabsq	$.L.str.48, %rdi
	callq	AddCap
	movabsq	$.L.str.49, %rdi
	callq	AddCap
	jmp	.LBB8_62
.LBB8_59:                               # %if.else.133
	movq	display, %rax
	cmpq	$0, 5608(%rax)
	je	.LBB8_61
# BB#60:                                # %if.then.138
	movabsq	$.L.str.47, %rdi
	callq	AddCap
.LBB8_61:                               # %if.end.139
	jmp	.LBB8_62
.LBB8_62:                               # %if.end.140
	cmpl	$0, -12(%rbp)
	jne	.LBB8_64
# BB#63:                                # %lor.lhs.false.142
	movq	display, %rax
	cmpq	$0, 5584(%rax)
	je	.LBB8_65
.LBB8_64:                               # %if.then.147
	movabsq	$.L.str.50, %rdi
	callq	AddCap
.LBB8_65:                               # %if.end.148
	cmpl	$0, -12(%rbp)
	jne	.LBB8_69
# BB#66:                                # %lor.lhs.false.150
	movq	display, %rax
	cmpq	$0, 5584(%rax)
	jne	.LBB8_69
# BB#67:                                # %lor.lhs.false.155
	movq	display, %rax
	cmpq	$0, 5632(%rax)
	jne	.LBB8_69
# BB#68:                                # %lor.lhs.false.160
	movq	display, %rax
	cmpq	$0, 5640(%rax)
	je	.LBB8_70
.LBB8_69:                               # %if.then.165
	movabsq	$.L.str.51, %rdi
	callq	AddCap
	movabsq	$.L.str.52, %rdi
	callq	AddCap
.LBB8_70:                               # %if.end.166
	cmpl	$0, -12(%rbp)
	jne	.LBB8_73
# BB#71:                                # %lor.lhs.false.168
	movq	display, %rax
	cmpq	$0, 5688(%rax)
	jne	.LBB8_73
# BB#72:                                # %lor.lhs.false.173
	movq	display, %rax
	cmpq	$0, 5696(%rax)
	je	.LBB8_74
.LBB8_73:                               # %if.then.178
	movabsq	$.L.str.53, %rdi
	callq	AddCap
	movabsq	$.L.str.54, %rdi
	callq	AddCap
.LBB8_74:                               # %if.end.179
	cmpl	$0, -12(%rbp)
	jne	.LBB8_78
# BB#75:                                # %lor.lhs.false.181
	movq	display, %rax
	cmpq	$0, 5680(%rax)
	jne	.LBB8_78
# BB#76:                                # %lor.lhs.false.186
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	jne	.LBB8_78
# BB#77:                                # %lor.lhs.false.191
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB8_79
.LBB8_78:                               # %if.then.196
	movabsq	$.L.str.55, %rdi
	callq	AddCap
	movabsq	$.L.str.56, %rdi
	callq	AddCap
	movabsq	$.L.str.57, %rdi
	callq	AddCap
	movabsq	$.L.str.58, %rdi
	callq	AddCap
.LBB8_79:                               # %if.end.197
	movabsq	$.L.str.59, %rdi
	callq	AddCap
	movabsq	$.L.str.60, %rdi
	callq	AddCap
	movabsq	$.L.str.61, %rdi
	callq	AddCap
	movabsq	$.L.str.62, %rdi
	callq	AddCap
	movabsq	$.L.str.63, %rdi
	callq	AddCap
	movabsq	$.L.str.64, %rdi
	callq	AddCap
	movabsq	$.L.str.65, %rdi
	callq	AddCap
	cmpq	$0, display
	je	.LBB8_114
# BB#80:                                # %if.then.199
	movq	display, %rax
	cmpq	$0, 5824(%rax)
	je	.LBB8_82
# BB#81:                                # %if.then.204
	movabsq	$.L.str.66, %rdi
	callq	AddCap
	movabsq	$.L.str.67, %rdi
	callq	AddCap
.LBB8_82:                               # %if.end.205
	movq	display, %rax
	cmpq	$0, 5848(%rax)
	je	.LBB8_84
# BB#83:                                # %if.then.210
	movabsq	$.L.str.68, %rdi
	callq	AddCap
	movabsq	$.L.str.69, %rdi
	callq	AddCap
.LBB8_84:                               # %if.end.211
	movq	display, %rax
	cmpq	$0, 5856(%rax)
	je	.LBB8_86
# BB#85:                                # %if.then.216
	movabsq	$.L.str.70, %rdi
	callq	AddCap
.LBB8_86:                               # %if.end.217
	movq	display, %rax
	cmpq	$0, 5832(%rax)
	je	.LBB8_88
# BB#87:                                # %if.then.222
	movabsq	$.L.str.71, %rdi
	callq	AddCap
.LBB8_88:                               # %if.end.223
	movq	display, %rax
	cmpq	$0, 5816(%rax)
	je	.LBB8_90
# BB#89:                                # %if.then.228
	movabsq	$.L.str.72, %rdi
	callq	AddCap
.LBB8_90:                               # %if.end.229
	movq	display, %rax
	cmpq	$0, 5840(%rax)
	je	.LBB8_92
# BB#91:                                # %if.then.234
	movabsq	$.L.str.73, %rdi
	callq	AddCap
.LBB8_92:                               # %if.end.235
	movq	display, %rax
	cmpq	$0, 5856(%rax)
	jne	.LBB8_96
# BB#93:                                # %lor.lhs.false.240
	movq	display, %rax
	cmpq	$0, 5832(%rax)
	jne	.LBB8_96
# BB#94:                                # %lor.lhs.false.245
	movq	display, %rax
	cmpq	$0, 5816(%rax)
	jne	.LBB8_96
# BB#95:                                # %lor.lhs.false.250
	movq	display, %rax
	cmpq	$0, 5840(%rax)
	je	.LBB8_97
.LBB8_96:                               # %if.then.255
	movabsq	$.L.str.74, %rdi
	callq	AddCap
.LBB8_97:                               # %if.end.256
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB8_99
# BB#98:                                # %if.then.258
	movabsq	$.L.str.75, %rdi
	callq	AddCap
.LBB8_99:                               # %if.end.259
	movq	display, %rax
	cmpq	$0, 5784(%rax)
	je	.LBB8_101
# BB#100:                               # %if.then.264
	movabsq	$.L.str.76, %rdi
	callq	AddCap
.LBB8_101:                              # %if.end.265
	movq	display, %rax
	cmpl	$0, 6216(%rax)
	je	.LBB8_103
# BB#102:                               # %if.then.270
	movabsq	$.L.str.77, %rdi
	callq	AddCap
.LBB8_103:                              # %if.end.271
	movq	display, %rax
	cmpq	$0, 6240(%rax)
	jne	.LBB8_106
# BB#104:                               # %lor.lhs.false.276
	movq	display, %rax
	cmpq	$0, 6224(%rax)
	je	.LBB8_107
# BB#105:                               # %land.lhs.true.281
	movq	display, %rax
	movq	6224(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_107
.LBB8_106:                              # %if.then.287
	movabsq	$.L.str.78, %rdi
	callq	AddCap
	movabsq	$.L.str.79, %rdi
	callq	AddCap
	movabsq	$.L.str.80, %rdi
	callq	AddCap
.LBB8_107:                              # %if.end.288
	movq	display, %rax
	cmpq	$0, 6024(%rax)
	je	.LBB8_109
# BB#108:                               # %if.then.293
	movabsq	$.L.str.81, %rdi
	callq	AddCap
	movabsq	$.L.str.82, %rdi
	callq	AddCap
.LBB8_109:                              # %if.end.294
	movq	display, %rax
	cmpq	$0, 5800(%rax)
	je	.LBB8_111
# BB#110:                               # %if.then.299
	movabsq	$.L.str.83, %rdi
	callq	AddCap
	movabsq	$.L.str.84, %rdi
	callq	AddCap
.LBB8_111:                              # %if.end.300
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	je	.LBB8_113
# BB#112:                               # %if.then.305
	movabsq	$.L.str.85, %rdi
	callq	AddCap
.LBB8_113:                              # %if.end.306
	jmp	.LBB8_114
.LBB8_114:                              # %if.end.307
	movl	$106, -2108(%rbp)
.LBB8_115:                              # %for.cond.308
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$201, -2108(%rbp)
	jge	.LBB8_150
# BB#116:                               # %for.body.311
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpl	$188, -2108(%rbp)
	jge	.LBB8_138
# BB#117:                               # %if.then.314
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpl	$170, -2108(%rbp)
	jl	.LBB8_119
# BB#118:                               # %if.then.317
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_149
.LBB8_119:                              # %if.end.318
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpl	$166, -2108(%rbp)
	jl	.LBB8_124
# BB#120:                               # %land.lhs.true.321
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpl	$188, -2108(%rbp)
	jge	.LBB8_124
# BB#121:                               # %if.then.324
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$umtab, %rax
	movl	-2108(%rbp), %ecx
	subl	$84, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
	movq	-2128(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB8_123
# BB#122:                               # %if.then.328
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$dmtab, %rax
	movl	-2108(%rbp), %ecx
	subl	$84, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
.LBB8_123:                              # %if.end.332
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_127
.LBB8_124:                              # %if.else.333
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$umtab, %rax
	movl	-2108(%rbp), %ecx
	subl	$106, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
	movq	-2128(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB8_126
# BB#125:                               # %if.then.340
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$dmtab, %rax
	movl	-2108(%rbp), %ecx
	subl	$106, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
.LBB8_126:                              # %if.end.344
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_127
.LBB8_127:                              # %if.end.345
                                        #   in Loop: Header=BB8_115 Depth=1
	movq	-2128(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB8_133
# BB#128:                               # %land.lhs.true.349
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpl	$159, -2108(%rbp)
	je	.LBB8_130
# BB#129:                               # %lor.lhs.false.352
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpl	$161, -2108(%rbp)
	jne	.LBB8_133
.LBB8_130:                              # %if.then.355
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$umtab, %rax
	movl	-2108(%rbp), %ecx
	subl	$106, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
	movq	-2128(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB8_132
# BB#131:                               # %if.then.363
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$dmtab, %rax
	movl	-2108(%rbp), %ecx
	subl	$106, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
.LBB8_132:                              # %if.end.368
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_133
.LBB8_133:                              # %if.end.369
                                        #   in Loop: Header=BB8_115 Depth=1
	movq	-2128(%rbp), %rax
	cmpl	$-1, (%rax)
	je	.LBB8_137
# BB#134:                               # %if.then.373
                                        #   in Loop: Header=BB8_115 Depth=1
	movq	-2128(%rbp), %rax
	cmpl	$158, (%rax)
	jne	.LBB8_136
# BB#135:                               # %if.then.377
                                        #   in Loop: Header=BB8_115 Depth=1
	movl	$2048, %edx             # imm = 0x800
	leaq	-2064(%rbp), %rsi
	movabsq	$term, %rax
	movslq	-2108(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	-2128(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	callq	MakeString
	leaq	-2064(%rbp), %rdi
	callq	AddCap
.LBB8_136:                              # %if.end.383
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_149
.LBB8_137:                              # %if.end.384
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_138
.LBB8_138:                              # %if.end.385
                                        #   in Loop: Header=BB8_115 Depth=1
	cmpq	$0, display
	jne	.LBB8_140
# BB#139:                               # %if.then.388
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_149
.LBB8_140:                              # %if.end.389
                                        #   in Loop: Header=BB8_115 Depth=1
	movslq	-2108(%rbp), %rax
	shlq	$4, %rax
	movl	term+8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -2248(%rbp)       # 4-byte Spill
	je	.LBB8_144
	jmp	.LBB8_154
.LBB8_154:                              # %if.end.389
                                        #   in Loop: Header=BB8_115 Depth=1
	movl	-2248(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -2252(%rbp)       # 4-byte Spill
	jne	.LBB8_147
	jmp	.LBB8_141
.LBB8_141:                              # %sw.bb
                                        #   in Loop: Header=BB8_115 Depth=1
	movslq	-2108(%rbp), %rax
	movq	display, %rcx
	cmpq	$0, 5440(%rcx,%rax,8)
	jne	.LBB8_143
# BB#142:                               # %if.then.398
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_148
.LBB8_143:                              # %if.end.399
                                        #   in Loop: Header=BB8_115 Depth=1
	movl	$2048, %edx             # imm = 0x800
	leaq	-2064(%rbp), %rsi
	movabsq	$term, %rax
	movslq	-2108(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movslq	-2108(%rbp), %rax
	movq	display, %rcx
	movq	5440(%rcx,%rax,8), %rcx
	callq	MakeString
	leaq	-2064(%rbp), %rdi
	callq	AddCap
	jmp	.LBB8_148
.LBB8_144:                              # %sw.bb.409
                                        #   in Loop: Header=BB8_115 Depth=1
	movslq	-2108(%rbp), %rax
	movq	display, %rcx
	cmpl	$0, 5440(%rcx,%rax,8)
	jne	.LBB8_146
# BB#145:                               # %if.then.416
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_148
.LBB8_146:                              # %if.end.417
                                        #   in Loop: Header=BB8_115 Depth=1
	movabsq	$.L.str.86, %rsi
	movabsq	$term, %rax
	leaq	-2064(%rbp), %rdi
	movslq	-2108(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-2064(%rbp), %rdi
	movl	%eax, -2256(%rbp)       # 4-byte Spill
	callq	AddCap
	jmp	.LBB8_148
.LBB8_147:                              # %sw.default
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_148
.LBB8_148:                              # %sw.epilog
                                        #   in Loop: Header=BB8_115 Depth=1
	jmp	.LBB8_149
.LBB8_149:                              # %for.inc.424
                                        #   in Loop: Header=BB8_115 Depth=1
	movl	-2108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2108(%rbp)
	jmp	.LBB8_115
.LBB8_150:                              # %for.end.425
	jmp	.LBB8_151
.LBB8_151:                              # %do.body.426
	jmp	.LBB8_152
.LBB8_152:                              # %do.end.427
	movabsq	$Termcap, %rax
	movq	%rax, -8(%rbp)
.LBB8_153:                              # %return
	movq	-8(%rbp), %rax
	addq	$2256, %rsp             # imm = 0x8D0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	MakeTermcap, .Lfunc_end8-MakeTermcap
	.cfi_endproc

	.globl	CheckEscape
	.align	16, 0x90
	.type	CheckEscape,@function
CheckEscape:                            # @CheckEscape
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
	subq	$32, %rsp
	cmpl	$0, DefaultEsc
	jl	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_30
.LBB9_2:                                # %if.end
	movq	display, %rax
	movq	%rax, -8(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB9_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	cmpq	$0, display
	je	.LBB9_23
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$0, -12(%rbp)
.LBB9_5:                                # %for.cond.1
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movq	display, %rcx
	cmpl	5312(%rcx), %eax
	jge	.LBB9_21
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB9_5 Depth=2
	movslq	-12(%rbp), %rax
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$8, %edx
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	orl	%esi, %edx
	andl	$-16385, %edx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%edx, -16(%rbp)
	cmpl	$104, -16(%rbp)
	jge	.LBB9_13
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB9_5 Depth=2
	movabsq	$umtab, %rax
	movslq	-16(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpl	$35, (%rax)
	jne	.LBB9_9
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_21
.LBB9_9:                                # %if.end.17
                                        #   in Loop: Header=BB9_5 Depth=2
	movabsq	$umtab, %rax
	movslq	-16(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpl	$-1, (%rax)
	jne	.LBB9_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_5 Depth=2
	movabsq	$dmtab, %rax
	movslq	-16(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpl	$35, (%rax)
	jne	.LBB9_12
# BB#11:                                # %if.then.28
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_21
.LBB9_12:                               # %if.end.29
                                        #   in Loop: Header=BB9_5 Depth=2
	jmp	.LBB9_19
.LBB9_13:                               # %if.else
                                        #   in Loop: Header=BB9_5 Depth=2
	movq	kmap_exts, %rax
	movslq	-16(%rbp), %rcx
	imulq	$112, %rcx, %rcx
	addq	%rcx, %rax
	addq	$-11648, %rax           # imm = 0xFFFFFFFFFFFFD280
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$35, 16(%rax)
	jne	.LBB9_15
# BB#14:                                # %if.then.34
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_21
.LBB9_15:                               # %if.end.35
                                        #   in Loop: Header=BB9_5 Depth=2
	movq	-24(%rbp), %rax
	cmpl	$-1, 16(%rax)
	jne	.LBB9_18
# BB#16:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB9_5 Depth=2
	movq	-24(%rbp), %rax
	cmpl	$35, 48(%rax)
	jne	.LBB9_18
# BB#17:                                # %if.then.44
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_21
.LBB9_18:                               # %if.end.45
                                        #   in Loop: Header=BB9_5 Depth=2
	jmp	.LBB9_19
.LBB9_19:                               # %if.end.46
                                        #   in Loop: Header=BB9_5 Depth=2
	jmp	.LBB9_20
.LBB9_20:                               # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=2
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	display, %rdx
	movq	5320(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$1, %eax
	addl	$4, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_5
.LBB9_21:                               # %for.end
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_22
.LBB9_22:                               # %for.inc.54
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB9_3
.LBB9_23:                               # %for.end.55
	cmpq	$0, display
	jne	.LBB9_25
# BB#24:                                # %if.then.58
	movq	-8(%rbp), %rax
	movq	%rax, display
	jmp	.LBB9_30
.LBB9_25:                               # %if.end.59
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1, %esi
	movl	$97, %edx
	callq	SetEscape
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	cmpl	$-1, 292(%rdi)
	jne	.LBB9_27
# BB#26:                                # %if.then.62
	movl	DefaultEsc, %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 292(%rcx)
.LBB9_27:                               # %if.end.65
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$-1, 296(%rax)
	jne	.LBB9_29
# BB#28:                                # %if.then.69
	movl	DefaultMetaEsc, %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 296(%rcx)
.LBB9_29:                               # %if.end.72
	xorl	%edi, %edi
	movabsq	$.L.str.31, %rsi
	movq	$0, display
	movb	$0, %al
	callq	Msg
	movq	-8(%rbp), %rsi
	movq	%rsi, display
.LBB9_30:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	CheckEscape, .Lfunc_end9-CheckEscape
	.cfi_endproc

	.align	16, 0x90
	.type	addmapseq,@function
addmapseq:                              # @addmapseq
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$254, -20(%rbp)
	jl	.LBB10_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_41
.LBB10_2:                               # %if.end
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	findseq_ge
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.2
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	$0, -4(%rbp)
	jmp	.LBB10_41
.LBB10_4:                               # %if.end.5
	movq	-56(%rbp), %rax
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movq	display, %rax
	movl	5312(%rax), %edx
	movl	-20(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	addl	$4, %edx
	movq	display, %rax
	cmpl	5316(%rax), %edx
	jl	.LBB10_6
# BB#5:                                 # %if.then.10
	movq	display, %rax
	movq	5320(%rax), %rdi
	movq	display, %rax
	movl	5316(%rax), %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	callq	xrealloc
	movq	display, %rdi
	movq	%rax, 5320(%rdi)
	movq	display, %rax
	movl	5316(%rax), %ecx
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, 5316(%rax)
	movq	display, %rax
	movq	5320(%rax), %rax
	movslq	-28(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -56(%rbp)
.LBB10_6:                               # %if.end.19
	movq	display, %rax
	movq	5320(%rax), %rax
	addq	$3, %rax
	movq	display, %rcx
	movq	%rax, 5328(%rcx)
	movq	display, %rax
	movl	$0, 5336(%rax)
	movq	display, %rax
	movq	$0, 5344(%rax)
	movq	display, %rax
	addq	$5352, %rax             # imm = 0x14E8
	movq	%rax, %rdi
	callq	evdeq
	cmpl	$0, -32(%rbp)
	jle	.LBB10_8
# BB#7:                                 # %if.then.24
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	display, %rdx
	movl	5312(%rdx), %ecx
	subl	-28(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	bcopy
.LBB10_8:                               # %if.end.31
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	addq	$3, %rdx
	movslq	-20(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	xorl	%esi, %esi
	movq	-56(%rbp), %rdx
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rdx
	addq	$3, %rdx
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	display, %rdx
	addl	5312(%rdx), %eax
	movl	%eax, 5312(%rdx)
	cmpl	$0, -32(%rbp)
	jle	.LBB10_19
# BB#9:                                 # %if.then.52
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB10_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_18
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-28(%rbp), %esi
	addl	$3, %esi
	movslq	%esi, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	je	.LBB10_13
# BB#12:                                # %if.then.70
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	addl	$4, %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB10_18
.LBB10_13:                              # %if.end.76
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-36(%rbp), %eax
	addl	$4, %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB10_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-36(%rbp), %eax
	addl	$4, %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_16
.LBB10_15:                              # %cond.false
                                        #   in Loop: Header=BB10_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_16
.LBB10_16:                              # %cond.end
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	setseqoff
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_10
.LBB10_18:                              # %for.end
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.89
	movq	display, %rax
	movq	5320(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB10_20:                              # %for.cond.91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_22 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB10_40
# BB#21:                                # %for.body.94
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -44(%rbp)
.LBB10_22:                              # %for.cond.97
                                        #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB10_38
# BB#23:                                # %for.body.100
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB10_26
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-32(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	je	.LBB10_26
# BB#25:                                # %if.then.111
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	$1, -44(%rbp)
.LBB10_26:                              # %if.end.112
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-36(%rbp), %eax
	addl	$4, %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB10_31
# BB#27:                                # %if.then.120
                                        #   in Loop: Header=BB10_22 Depth=2
	cmpl	$0, -40(%rbp)
	jne	.LBB10_30
# BB#28:                                # %land.lhs.true.122
                                        #   in Loop: Header=BB10_22 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB10_30
# BB#29:                                # %if.then.124
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %r8
	subq	%r8, %rdx
	subq	$4, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %r9d
	movl	%r9d, %edx
	callq	setseqoff
.LBB10_30:                              # %if.end.130
                                        #   in Loop: Header=BB10_22 Depth=2
	jmp	.LBB10_36
.LBB10_31:                              # %if.else
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$4, %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	cmpq	-56(%rbp), %rax
	ja	.LBB10_34
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$4, %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-64(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_35
# BB#33:                                # %land.lhs.true.153
                                        #   in Loop: Header=BB10_22 Depth=2
	cmpl	$0, -44(%rbp)
	jne	.LBB10_35
.LBB10_34:                              # %if.then.155
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-64(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %eax
	addl	$4, %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	callq	setseqoff
.LBB10_35:                              # %if.end.163
                                        #   in Loop: Header=BB10_22 Depth=2
	jmp	.LBB10_36
.LBB10_36:                              # %if.end.164
                                        #   in Loop: Header=BB10_22 Depth=2
	jmp	.LBB10_37
.LBB10_37:                              # %for.inc.165
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_22
.LBB10_38:                              # %for.end.167
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_39
.LBB10_39:                              # %for.inc.168
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	-36(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB10_20
.LBB10_40:                              # %for.end.173
	movl	$0, -4(%rbp)
.LBB10_41:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	addmapseq, .Lfunc_end10-addmapseq
	.cfi_endproc

	.align	16, 0x90
	.type	remmapseq,@function
remmapseq:                              # @remmapseq
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$254, -20(%rbp)
	jge	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	findseq_ge
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	je	.LBB11_3
.LBB11_2:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB11_22
.LBB11_3:                               # %if.end
	movq	display, %rax
	movq	5320(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB11_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB11_19
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	$0, -24(%rbp)
.LBB11_6:                               # %for.cond.3
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_17
# BB#7:                                 # %for.body.6
                                        #   in Loop: Header=BB11_6 Depth=2
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_12
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB11_6 Depth=2
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %eax
	addl	$4, %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	je	.LBB11_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB11_6 Depth=2
	movl	-28(%rbp), %eax
	addl	$4, %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	-20(%rbp), %esi
	addl	$4, %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%esi, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false
                                        #   in Loop: Header=BB11_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB11_11
.LBB11_11:                              # %cond.end
                                        #   in Loop: Header=BB11_6 Depth=2
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	setseqoff
	jmp	.LBB11_15
.LBB11_12:                              # %if.else
                                        #   in Loop: Header=BB11_6 Depth=2
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB11_14
# BB#13:                                # %if.then.41
                                        #   in Loop: Header=BB11_6 Depth=2
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%eax, %ecx
	movb	%cl, %dil
	movb	%dil, (%rsi,%rdx)
.LBB11_14:                              # %if.end.50
                                        #   in Loop: Header=BB11_6 Depth=2
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.51
                                        #   in Loop: Header=BB11_6 Depth=2
	jmp	.LBB11_16
.LBB11_16:                              # %for.inc
                                        #   in Loop: Header=BB11_6 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_6
.LBB11_17:                              # %for.end
                                        #   in Loop: Header=BB11_4 Depth=1
	jmp	.LBB11_18
.LBB11_18:                              # %for.inc.52
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB11_4
.LBB11_19:                              # %for.end.57
	movq	display, %rax
	movq	5320(%rax), %rax
	movq	display, %rcx
	movslq	5312(%rcx), %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB11_21
# BB#20:                                # %if.then.67
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	-40(%rbp), %rsi
	movq	display, %rdx
	movq	5320(%rdx), %rdx
	movq	display, %rdi
	movslq	5312(%rdi), %rdi
	addq	%rdi, %rdx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %r8
	addq	%r8, %rdi
	addq	$4, %rdi
	subq	%rdi, %rdx
	movq	%rax, %rdi
	callq	bcopy
.LBB11_21:                              # %if.end.80
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	display, %rcx
	movl	5312(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 5312(%rcx)
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	addq	$3, %rcx
	movq	display, %rsi
	movq	%rcx, 5328(%rsi)
	movq	display, %rcx
	movl	$0, 5336(%rcx)
	movq	display, %rcx
	movq	$0, 5344(%rcx)
	movq	display, %rcx
	addq	$5352, %rcx             # imm = 0x14E8
	movq	%rcx, %rdi
	callq	evdeq
	movl	$0, -4(%rbp)
.LBB11_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	remmapseq, .Lfunc_end11-remmapseq
	.cfi_endproc

	.align	16, 0x90
	.type	AddCap,@function
AddCap:                                 # @AddCap
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
	movl	tcLineLen, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-16(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$55, %edx
	jle	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpl	$2043, Termcaplen       # imm = 0x7FB
	jge	.LBB12_3
# BB#2:                                 # %if.then
	movabsq	$Termcap, %rax
	movslq	Termcaplen, %rcx
	addq	%rcx, %rax
	movl	$.L.str.88, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	Termcaplen, %edx
	addl	$4, %edx
	movl	%edx, Termcaplen
	movl	$0, tcLineLen
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB12_3:                               # %if.end
	movl	Termcaplen, %eax
	addl	-12(%rbp), %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jge	.LBB12_5
# BB#4:                                 # %if.then.9
	movabsq	$Termcap, %rax
	movslq	Termcaplen, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movl	-12(%rbp), %edx
	addl	Termcaplen, %edx
	movl	%edx, Termcaplen
	movl	-12(%rbp), %edx
	addl	tcLineLen, %edx
	movl	%edx, tcLineLen
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	xorl	%edi, %edi
	movabsq	$.L.str.89, %rsi
	movb	$0, %al
	callq	Panic
.LBB12_6:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	AddCap, .Lfunc_end12-AddCap
	.cfi_endproc

	.align	16, 0x90
	.type	MakeString,@function
MakeString:                             # @MakeString
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rcx
	addq	$-9, %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	(%rcx), %al
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%al, (%rcx)
	movq	-8(%rbp), %rcx
	movb	(%rcx), %al
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%al, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	$61, (%rcx)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movsbl	(%rdx), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	movb	%cl, -53(%rbp)          # 1-byte Spill
	je	.LBB13_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	setb	%cl
	movb	%cl, -53(%rbp)          # 1-byte Spill
.LBB13_3:                               # %land.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_4
	jmp	.LBB13_16
.LBB13_4:                               # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	subl	$27, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_17
.LBB13_17:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB13_6
	jmp	.LBB13_18
.LBB13_18:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB13_7
	jmp	.LBB13_19
.LBB13_19:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB13_7
	jmp	.LBB13_8
.LBB13_5:                               # %sw.bb
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$92, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$69, (%rax)
	jmp	.LBB13_15
.LBB13_6:                               # %sw.bb.9
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.90, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-40(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB13_15
.LBB13_7:                               # %sw.bb.11
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$92, (%rax)
	movl	-52(%rbp), %edx
	movb	%dl, %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB13_15
.LBB13_8:                               # %sw.default
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$200, -52(%rbp)
	jb	.LBB13_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$.L.str.91, %rsi
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %eax
	andl	$255, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movq	-40(%rbp), %rsi
	addq	$4, %rsi
	movq	%rsi, -40(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB13_14
.LBB13_10:                              # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$32, -52(%rbp)
	jae	.LBB13_12
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$94, (%rax)
	movl	-52(%rbp), %edx
	addl	$64, %edx
	movb	%dl, %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB13_13
.LBB13_12:                              # %if.else.25
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
.LBB13_13:                              # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.28
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_15
.LBB13_15:                              # %sw.epilog
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_1
.LBB13_16:                              # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$58, (%rax)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	MakeString, .Lfunc_end13-MakeString
	.cfi_endproc

	.globl	FreeTransTable
	.align	16, 0x90
	.type	FreeTransTable,@function
FreeTransTable:                         # @FreeTransTable
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
	subq	$32, %rsp
	movq	display, %rax
	movq	7368(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_15
.LBB14_2:                               # %if.end
	movl	$0, -20(%rbp)
.LBB14_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_7 Depth 2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB14_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_13
.LBB14_6:                               # %if.end.4
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB14_7:                               # %for.cond.5
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$257, -24(%rbp)         # imm = 0x101
	jge	.LBB14_12
# BB#8:                                 # %for.body.7
                                        #   in Loop: Header=BB14_7 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
                                        #   in Loop: Header=BB14_7 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB14_10:                              # %if.end.9
                                        #   in Loop: Header=BB14_7 Depth=2
	jmp	.LBB14_11
.LBB14_11:                              # %for.inc
                                        #   in Loop: Header=BB14_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB14_7
.LBB14_12:                              # %for.end
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB14_13:                              # %for.inc.10
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB14_3
.LBB14_14:                              # %for.end.13
	movq	display, %rax
	movq	7368(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB14_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	FreeTransTable, .Lfunc_end14-FreeTransTable
	.cfi_endproc

	.align	16, 0x90
	.type	copyarg,@function
copyarg:                                # @copyarg
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB15_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB15_3:                               # %land.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_4
	jmp	.LBB15_13
.LBB15_4:                               # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB15_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB15_8
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$44, %ecx
	je	.LBB15_8
# BB#7:                                 # %lor.lhs.false.13
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB15_9
.LBB15_8:                               # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB15_9:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB15_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movb	%cl, (%rax)
.LBB15_11:                              # %if.end.21
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB15_1
.LBB15_13:                              # %for.end
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	jne	.LBB15_15
# BB#14:                                # %if.then.26
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB15_15:                              # %if.end.28
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	copyarg, .Lfunc_end15-copyarg
	.cfi_endproc

	.align	16, 0x90
	.type	findseq_ge,@function
findseq_ge:                             # @findseq_ge
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	display, %rdx
	movq	5320(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movq	-40(%rbp), %rax
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	subq	%rcx, %rax
	movq	display, %rcx
	movslq	5312(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB16_15
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB16_3:                               # %for.cond
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB16_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB16_6
.LBB16_5:                               # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB16_10
.LBB16_6:                               # %if.else
                                        #   in Loop: Header=BB16_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	.LBB16_8
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB16_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.23
                                        #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_11
.LBB16_9:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_10
.LBB16_10:                              # %if.end.24
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_12
.LBB16_11:                              # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB16_3
.LBB16_12:                              # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB16_14
# BB#13:                                # %if.then.27
	movq	-40(%rbp), %rax
	addq	$-3, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-44(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB16_16
.LBB16_14:                              # %if.end.29
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-48(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB16_1
.LBB16_15:                              # %while.end
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$-1, -4(%rbp)
.LBB16_16:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	findseq_ge, .Lfunc_end16-findseq_ge
	.cfi_endproc

	.align	16, 0x90
	.type	setseqoff,@function
setseqoff:                              # @setseqoff
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %edx
	movl	%edx, -32(%rbp)
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB17_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	addl	$4, %eax
	addl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB17_7
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-8(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	cmpq	$256, %rax              # imm = 0x100
	jl	.LBB17_5
# BB#4:                                 # %if.then.13
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$4, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movb	%al, %dil
	movl	-32(%rbp), %r8d
	addl	$4, %r8d
	addl	-12(%rbp), %r8d
	movslq	%r8d, %rax
	movq	-8(%rbp), %rcx
	movb	%dil, (%rcx,%rax)
	jmp	.LBB17_7
.LBB17_5:                               # %if.end.23
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_6
.LBB17_6:                               # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	$4, %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB17_3
.LBB17_7:                               # %return
	popq	%rbp
	retq
.Lfunc_end17:
	.size	setseqoff, .Lfunc_end17-setseqoff
	.cfi_endproc

	.align	16, 0x90
	.type	findcap,@function
findcap:                                # @findcap
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -72(%rbp)
	cmpq	$0, extra_incap
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB18_58
.LBB18_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	extra_incap, %rax
	movq	%rax, -56(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_17 Depth 2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB18_57
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-76(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB18_16
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	-76(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movb	(%rcx), %sil
	movb	%sil, -41(%rbp)
	movsbl	-41(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB18_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$58, %eax
	je	.LBB18_9
# BB#7:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$64, %eax
	je	.LBB18_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB18_9:                               # %if.end.16
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB18_14
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$64, %eax
	je	.LBB18_14
# BB#11:                                # %lor.lhs.false.23
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$61, %eax
	je	.LBB18_14
# BB#12:                                # %lor.lhs.false.27
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$58, %eax
	je	.LBB18_14
# BB#13:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB18_3 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$35, %eax
	jne	.LBB18_15
.LBB18_14:                              # %if.then.35
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB18_15:                              # %if.end.36
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_16
.LBB18_16:                              # %if.end.37
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_17
.LBB18_17:                              # %while.cond
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -41(%rbp)
	cmpb	$0, %cl
	je	.LBB18_52
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB18_17 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB18_26
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB18_17 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$58, %eax
	jne	.LBB18_21
# BB#20:                                # %if.then.46
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_52
.LBB18_21:                              # %if.end.47
                                        #   in Loop: Header=BB18_17 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$94, %eax
	jne	.LBB18_23
# BB#22:                                # %if.then.51
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	$1, -68(%rbp)
.LBB18_23:                              # %if.end.52
                                        #   in Loop: Header=BB18_17 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB18_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	$2, -68(%rbp)
.LBB18_25:                              # %if.end.57
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_40
.LBB18_26:                              # %if.else
                                        #   in Loop: Header=BB18_17 Depth=2
	cmpl	$1, -68(%rbp)
	jne	.LBB18_28
# BB#27:                                # %if.then.60
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	$0, -68(%rbp)
	movsbl	-41(%rbp), %eax
	andl	$31, %eax
	movb	%al, %cl
	movb	%cl, -41(%rbp)
	jmp	.LBB18_39
.LBB18_28:                              # %if.else.63
                                        #   in Loop: Header=BB18_17 Depth=2
	cmpl	$2, -68(%rbp)
	jne	.LBB18_38
# BB#29:                                # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	$0, -68(%rbp)
	movsbl	-41(%rbp), %eax
	movl	%eax, %ecx
	addl	$-48, %ecx
	subl	$10, %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jb	.LBB18_30
	jmp	.LBB18_59
.LBB18_59:                              # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$69, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB18_31
	jmp	.LBB18_60
.LBB18_60:                              # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB18_35
	jmp	.LBB18_61
.LBB18_61:                              # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB18_36
	jmp	.LBB18_62
.LBB18_62:                              # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB18_32
	jmp	.LBB18_63
.LBB18_63:                              # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB18_33
	jmp	.LBB18_64
.LBB18_64:                              # %if.then.66
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB18_34
	jmp	.LBB18_37
.LBB18_30:                              # %sw.bb
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	$3, -68(%rbp)
	movl	$0, -72(%rbp)
	jmp	.LBB18_37
.LBB18_31:                              # %sw.bb.68
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	$27, -41(%rbp)
	jmp	.LBB18_37
.LBB18_32:                              # %sw.bb.69
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	$10, -41(%rbp)
	jmp	.LBB18_37
.LBB18_33:                              # %sw.bb.70
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	$13, -41(%rbp)
	jmp	.LBB18_37
.LBB18_34:                              # %sw.bb.71
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	$9, -41(%rbp)
	jmp	.LBB18_37
.LBB18_35:                              # %sw.bb.72
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	$8, -41(%rbp)
	jmp	.LBB18_37
.LBB18_36:                              # %sw.bb.73
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	$12, -41(%rbp)
.LBB18_37:                              # %sw.epilog
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_38
.LBB18_38:                              # %if.end.74
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_39
.LBB18_39:                              # %if.end.75
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_40
.LBB18_40:                              # %if.end.76
                                        #   in Loop: Header=BB18_17 Depth=2
	cmpl	$2, -68(%rbp)
	jle	.LBB18_46
# BB#41:                                # %if.then.79
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-72(%rbp), %eax
	shll	$3, %eax
	movsbl	-41(%rbp), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$5, %eax
	je	.LBB18_44
# BB#42:                                # %lor.lhs.false.83
                                        #   in Loop: Header=BB18_17 Depth=2
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB18_44
# BB#43:                                # %lor.lhs.false.87
                                        #   in Loop: Header=BB18_17 Depth=2
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB18_45
.LBB18_44:                              # %if.then.91
                                        #   in Loop: Header=BB18_17 Depth=2
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -41(%rbp)
	movl	$0, -68(%rbp)
.LBB18_45:                              # %if.end.93
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_46
.LBB18_46:                              # %if.end.94
                                        #   in Loop: Header=BB18_17 Depth=2
	cmpl	$0, -68(%rbp)
	je	.LBB18_48
# BB#47:                                # %if.then.96
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_17
.LBB18_48:                              # %if.end.97
                                        #   in Loop: Header=BB18_17 Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB18_51
# BB#49:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB18_17 Depth=2
	cmpl	$1, -28(%rbp)
	je	.LBB18_51
# BB#50:                                # %if.then.102
                                        #   in Loop: Header=BB18_17 Depth=2
	movb	-41(%rbp), %al
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%al, (%rcx)
	movl	-28(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -28(%rbp)
.LBB18_51:                              # %if.end.104
                                        #   in Loop: Header=BB18_17 Depth=2
	jmp	.LBB18_17
.LBB18_52:                              # %while.end
                                        #   in Loop: Header=BB18_3 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB18_56
# BB#53:                                # %if.then.106
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#54:                                # %do.body
	jmp	.LBB18_55
.LBB18_55:                              # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_58
.LBB18_56:                              # %if.end.108
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_3
.LBB18_57:                              # %for.end
	movq	$0, -8(%rbp)
.LBB18_58:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	findcap, .Lfunc_end18-findcap
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot find terminfo entry for '%s'."
	.size	.L.str, 37

	.type	extra_incap,@object     # @extra_incap
	.comm	extra_incap,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Illegal tc type in entry #%d"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"You can't run screen on a hardcopy terminal."
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"You can't run screen on a terminal that overstrikes."
	.size	.L.str.4, 53

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Clear screen capability required."
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Addressable cursor capability required."
	.size	.L.str.6, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"COLUMNS"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"LINES"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033[m"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033[0m"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033[3%p1%dm"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033[4%p1%dm"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033[39;49m"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033(B"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033(0"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"xterm"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"rxvt"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\033[M"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\007"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\b"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\r"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\n"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Warning: 'so' but no 'se' capability."
	.size	.L.str.23, 38

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Warning: 'us' but no 'ue' capability."
	.size	.L.str.24, 38

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Warning: 'm?' but no 'me' capability."
	.size	.L.str.25, 38

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033(%p1%c"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.zero	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"l+m+k+j+u+t+v+w+q-x|n+o~s_p\"r#`+a:f'g#~o.v-^+<,>h#I#0#y<z>"
	.size	.L.str.28, 59

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\0177"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata,"a",@progbits
.L.str.30:
	.asciz	"\0008"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"Warning: escape char set back to ^A"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"vt100"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"SCREENCAP"
	.size	.L.str.33, 10

	.type	Termcap,@object         # @Termcap
	.comm	Termcap,2056,16
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"TERMCAP=%s"
	.size	.L.str.34, 11

	.type	Term,@object            # @Term
	.comm	Term,773,16
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"TERM=screen"
	.size	.L.str.35, 12

	.type	Termcaplen,@object      # @Termcaplen
	.local	Termcaplen
	.comm	Termcaplen,4,4
	.type	screenterm,@object      # @screenterm
	.comm	screenterm,33,16
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"screen"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"TERM="
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s.%s"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s-bce"
	.size	.L.str.39, 7

	.type	tcLineLen,@object       # @tcLineLen
	.local	tcLineLen
	.comm	tcLineLen,4,4
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"too_long"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"TERMCAP=SC|%s|VT 100/ANSI X3.64 virtual terminal:"
	.size	.L.str.41, 50

	.type	extra_outcap,@object    # @extra_outcap
	.comm	extra_outcap,8,8
	.type	TermcapConst,@object    # @TermcapConst
	.section	.rodata,"a",@progbits
	.align	16
TermcapConst:
	.asciz	"\\\n\t:DO=\\E[%dB:LE=\\E[%dD:RI=\\E[%dC:UP=\\E[%dA:bs:bt=\\E[Z:\\\n\t:cd=\\E[J:ce=\\E[K:cl=\\E[H\\E[J:cm=\\E[%i%d;%dH:ct=\\E[3g:\\\n\t:do=^J:nd=\\E[C:pt:rc=\\E8:rs=\\Ec:sc=\\E7:st=\\EH:up=\\EM:\\\n\t:le=^H:bl=^G:cr=^M:it#8:ho=\\E[H:nw=\\EE:ta=^I:is=\\E)0:"
	.size	TermcapConst, 224

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"li#%d:co#%d:"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"am:"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"xn:"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"xv:"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"LP:"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"sr=\\EM:"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"al=\\E[L:"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"AL=\\E[%dL:"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"cs=\\E[%i%d;%dr:"
	.size	.L.str.50, 16

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"dl=\\E[M:"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"DL=\\E[%dM:"
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"dc=\\E[P:"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"DC=\\E[%dP:"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"im=\\E[4h:"
	.size	.L.str.55, 10

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"ei=\\E[4l:"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"mi:"
	.size	.L.str.57, 4

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"IC=\\E[%d@:"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ks=\\E[?1h\\E=:"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"ke=\\E[?1l\\E>:"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"vi=\\E[?25l:"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"ve=\\E[34h\\E[?25h:"
	.size	.L.str.62, 18

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"vs=\\E[34l:"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"ti=\\E[?1049h:"
	.size	.L.str.64, 14

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"te=\\E[?1049l:"
	.size	.L.str.65, 14

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"us=\\E[4m:"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"ue=\\E[24m:"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"so=\\E[3m:"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"se=\\E[23m:"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"mb=\\E[5m:"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"md=\\E[1m:"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"mh=\\E[2m:"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"mr=\\E[7m:"
	.size	.L.str.73, 10

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"me=\\E[m:ms:"
	.size	.L.str.74, 12

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Co#8:pa#64:AF=\\E[3%dm:AB=\\E[4%dm:op=\\E[39;49m:AX:"
	.size	.L.str.75, 50

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"vb=\\Eg:"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"G0:"
	.size	.L.str.77, 4

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"as=\\E(0:"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"ae=\\E(B:"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"ac=\\140\\140aaffggjjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~..--++,,hhII00:"
	.size	.L.str.80, 75

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"po=\\E[5i:"
	.size	.L.str.81, 10

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"pf=\\E[4i:"
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Z0=\\E[?3h:"
	.size	.L.str.83, 11

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Z1=\\E[?3l:"
	.size	.L.str.84, 11

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"WS=\\E[8;%d;%dt:"
	.size	.L.str.85, 16

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"%s:"
	.size	.L.str.86, 4

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"%"
	.size	.L.str.87, 2

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"\\\n\t:"
	.size	.L.str.88, 5

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"TERMCAP overflow - sorry."
	.size	.L.str.89, 26

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"\\072"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"\\%03o"
	.size	.L.str.91, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
