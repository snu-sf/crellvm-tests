	.text
	.file	"screen.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	pushq	%rbx
	subq	$6904, %rsp             # imm = 0x1AF8
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -1588(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str, %rax
	movq	%rax, -6224(%rbp)       # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -6224(%rbp)       # 8-byte Spill
.LBB0_3:                                # %cond.end
	movq	-6224(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -1600(%rbp)
	movl	$0, -1884(%rbp)
	movq	$0, -1904(%rbp)
	callq	closeallfiles
	movabsq	$version, %rdi
	movl	$59, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.1, %rdx
	movl	$4, %ecx
	xorl	%r9d, %r9d
	movabsq	$.L.str.2, %rax
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r10
	movl	%ecx, -6228(%rbp)       # 4-byte Spill
	movl	-6228(%rbp), %r11d      # 4-byte Reload
	movq	%r8, -6240(%rbp)        # 8-byte Spill
	movl	%r11d, %r8d
	movq	%rax, (%rsp)
	movq	-6240(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movb	$0, %al
	callq	snprintf
	movl	$40400, nversion        # imm = 0x9DD0
	movl	%eax, -6244(%rbp)       # 4-byte Spill
# BB#4:                                 # %do.body
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	jmp	.LBB0_7
.LBB0_7:                                # %do.end.2
	jmp	.LBB0_8
.LBB0_8:                                # %do.body.3
	jmp	.LBB0_9
.LBB0_9:                                # %do.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.body.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.6
	jmp	.LBB0_12
.LBB0_12:                               # %do.body.7
	jmp	.LBB0_13
.LBB0_13:                               # %do.end.8
	jmp	.LBB0_14
.LBB0_14:                               # %do.body.9
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.10
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.11
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.12
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.13
	jmp	.LBB0_19
.LBB0_19:                               # %do.end.14
	jmp	.LBB0_20
.LBB0_20:                               # %do.body.15
	jmp	.LBB0_21
.LBB0_21:                               # %do.end.16
	jmp	.LBB0_22
.LBB0_22:                               # %do.body.17
	jmp	.LBB0_23
.LBB0_23:                               # %do.end.18
	jmp	.LBB0_24
.LBB0_24:                               # %do.body.19
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.20
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.21
	jmp	.LBB0_27
.LBB0_27:                               # %do.end.22
	movabsq	$.L.str.5, %rdi
	callq	SaveStr
	movabsq	$.L.str.6, %rdi
	movq	%rax, BellString
	callq	SaveStr
	movabsq	$.L.str.7, %rdi
	movq	%rax, VisualBellString
	callq	SaveStr
	movabsq	$.L.str.8, %rdi
	movq	%rax, ActivityString
	callq	SaveStr
	movabsq	$.L.str.9, %rdi
	movq	%rax, screenlogfile
	callq	SaveStr
	movabsq	$.L.str.10, %rdi
	movq	%rax, logtstamp_string
	callq	SaveStr
	movabsq	$.L.str.11, %rdi
	movq	%rax, hstatusstring
	callq	SaveStr
	movabsq	$.L.str.12, %rdi
	movq	%rax, captionstring
	callq	SaveStr
	movabsq	$.L.str.13, %rdi
	movq	%rax, timestring
	callq	SaveStr
	movabsq	$.L.str.14, %rdi
	movq	%rax, wlisttit
	callq	SaveStr
	movabsq	$.L.str.15, %rdi
	movq	%rax, wliststr
	callq	SaveStr
	movabsq	$.L.str.16, %rdi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rax, BufferFile
	movq	$0, ShellProg
	movq	$0, PowDetachString
	cmpl	$1, -16(%rbp)
	cmovgl	%edx, %ecx
	movl	%ecx, default_startup
	movl	$0, adaptflag
	movl	$1000, VBellWait        # imm = 0x3E8
	movl	$5000, MsgWait          # imm = 0x1388
	movl	$1000, MsgMinWait       # imm = 0x3E8
	movl	$30, SilenceWait
	callq	SaveStr
	movabsq	$.L.str.17, %rdi
	movq	%rax, zmodem_sendcmd
	callq	SaveStr
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%esi, %esi
	movabsq	$mark_key_tab, %rdx
	movq	%rax, zmodem_recvcmd
	callq	CompileKeys
	movl	%eax, -6248(%rbp)       # 4-byte Spill
	callq	InitBuiltinTabs
	movabsq	$.L.str.18, %rdi
	callq	SaveStr
	movabsq	$screenterm, %rdi
	movabsq	$.L.str, %rsi
	movl	$32, %ecx
	movl	%ecx, %edx
	movabsq	$nwin_options, %r8
	movabsq	$nwin_undef, %r9
	movl	$120, %ecx
	movl	%ecx, %r10d
	leaq	-1880(%rbp), %r11
	movq	%rax, screenencodings
	movl	$0, cjkwidth
	movq	%rdi, -6256(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -6264(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -6272(%rbp)       # 8-byte Spill
	movq	%r10, %rdx
	movq	%r10, -6280(%rbp)       # 8-byte Spill
	movq	%r9, -6288(%rbp)        # 8-byte Spill
	movq	%r8, -6296(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-6296(%rbp), %rdi       # 8-byte Reload
	movq	-6288(%rbp), %rsi       # 8-byte Reload
	movq	-6280(%rbp), %rdx       # 8-byte Reload
	callq	memcpy
	movq	-6256(%rbp), %rdi       # 8-byte Reload
	movq	-6264(%rbp), %rsi       # 8-byte Reload
	movq	-6272(%rbp), %rdx       # 8-byte Reload
	callq	strncpy
	movabsq	$lf_secreopen, %rdi
	movb	$0, screenterm+32
	movq	%rax, -6304(%rbp)       # 8-byte Spill
	callq	logreopen_register
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_29
# BB#28:                                # %if.then
	movabsq	$DefaultShell, %rdi
	movl	$4, rflag
	movl	$1, xflag
	callq	SaveStr
	movq	%rax, ShellProg
.LBB0_29:                               # %if.end
	jmp	.LBB0_30
.LBB0_30:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
	cmpl	$0, -16(%rbp)
	jle	.LBB0_157
# BB#31:                                # %while.body
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-16(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -16(%rbp)
	cmpl	$0, %edx
	jle	.LBB0_155
# BB#32:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_155
# BB#33:                                # %if.then.51
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_36
# BB#34:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_36
# BB#35:                                # %if.then.61
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB0_157
.LBB0_36:                               # %if.end.64
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_39
# BB#37:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_39
# BB#38:                                # %if.then.71
	xorl	%edi, %edi
	movabsq	$.L.str.20, %rsi
	movabsq	$version, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_39:                               # %if.end.72
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_42
# BB#40:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	-40(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_42
# BB#41:                                # %if.then.80
                                        #   in Loop: Header=BB0_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1600(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	exit_with_usage
.LBB0_42:                               # %if.end.81
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_43
.LBB0_43:                               # %while.cond.82
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -6305(%rbp)        # 1-byte Spill
	je	.LBB0_46
# BB#44:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB0_43 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -6305(%rbp)        # 1-byte Spill
	je	.LBB0_46
# BB#45:                                # %land.rhs
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -6305(%rbp)       # 1-byte Spill
.LBB0_46:                               # %land.end
                                        #   in Loop: Header=BB0_43 Depth=2
	movb	-6305(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_47
	jmp	.LBB0_154
.LBB0_47:                               # %while.body.90
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	addl	$-65, %ecx
	movl	%ecx, %eax
	subl	$55, %ecx
	movq	%rax, -6320(%rbp)       # 8-byte Spill
	movl	%ecx, -6324(%rbp)       # 4-byte Spill
	ja	.LBB0_152
# BB#544:                               # %while.body.90
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-6320(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_48:                               # %sw.bb
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, nwin_options+40
	jmp	.LBB0_153
.LBB0_49:                               # %sw.bb.92
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, adaptflag
	jmp	.LBB0_153
.LBB0_50:                               # %sw.bb.93
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB0_52
# BB#51:                                # %if.then.96
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, preselect
	jmp	.LBB0_55
.LBB0_52:                               # %if.else
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_54
# BB#53:                                # %if.then.99
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.22, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_54:                               # %if.end.100
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, preselect
.LBB0_55:                               # %if.end.102
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	$0, -40(%rbp)
	jmp	.LBB0_153
.LBB0_56:                               # %sw.bb.103
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB0_58
# BB#57:                                # %if.then.106
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, RcFileName
	jmp	.LBB0_61
.LBB0_58:                               # %if.else.107
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_60
# BB#59:                                # %if.then.111
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.23, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_60:                               # %if.end.112
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, RcFileName
.LBB0_61:                               # %if.end.114
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	$0, -40(%rbp)
	jmp	.LBB0_153
.LBB0_62:                               # %sw.bb.115
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	cmpb	$0, 1(%rax)
	jne	.LBB0_66
# BB#63:                                # %if.then.118
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_65
# BB#64:                                # %if.then.122
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.24, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_65:                               # %if.end.123
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_66:                               # %if.end.125
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rdi
	callq	ParseEscape
	cmpl	$0, %eax
	je	.LBB0_68
# BB#67:                                # %if.then.128
	xorl	%edi, %edi
	movabsq	$.L.str.25, %rsi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB0_68:                               # %if.end.129
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	$0, -40(%rbp)
	jmp	.LBB0_153
.LBB0_69:                               # %sw.bb.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -6328(%rbp)       # 4-byte Spill
	je	.LBB0_71
	jmp	.LBB0_552
.LBB0_552:                              # %sw.bb.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6328(%rbp), %eax       # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -6332(%rbp)       # 4-byte Spill
	je	.LBB0_70
	jmp	.LBB0_553
.LBB0_553:                              # %sw.bb.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6328(%rbp), %eax       # 4-byte Reload
	subl	$49, %eax
	movl	%eax, -6336(%rbp)       # 4-byte Spill
	je	.LBB0_72
	jmp	.LBB0_554
.LBB0_554:                              # %sw.bb.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6328(%rbp), %eax       # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -6340(%rbp)       # 4-byte Spill
	je	.LBB0_73
	jmp	.LBB0_555
.LBB0_555:                              # %sw.bb.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6328(%rbp), %eax       # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -6344(%rbp)       # 4-byte Spill
	je	.LBB0_70
	jmp	.LBB0_556
.LBB0_556:                              # %sw.bb.130
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6328(%rbp), %eax       # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -6348(%rbp)       # 4-byte Spill
	je	.LBB0_72
	jmp	.LBB0_74
.LBB0_70:                               # %sw.bb.134
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$0, nwin_options+44
	jmp	.LBB0_75
.LBB0_71:                               # %sw.bb.135
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB0_72:                               # %sw.bb.137
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, nwin_options+44
	jmp	.LBB0_75
.LBB0_73:                               # %sw.bb.138
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$4, nwin_options+44
	jmp	.LBB0_75
.LBB0_74:                               # %sw.default
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.26, %rsi
	movq	-1600(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %rdx
	callq	exit_with_usage
.LBB0_75:                               # %sw.epilog
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_76:                               # %sw.bb.140
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_78
# BB#77:                                # %if.then.144
                                        #   in Loop: Header=BB0_43 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1600(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	exit_with_usage
.LBB0_78:                               # %if.end.145
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, nwin_options+52
	cmpl	$0, nwin_options+52
	jge	.LBB0_80
# BB#79:                                # %if.then.150
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.27, %rsi
	movq	-1600(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	callq	exit_with_usage
.LBB0_80:                               # %if.end.151
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_81:                               # %sw.bb.152
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, iflag
	jmp	.LBB0_153
.LBB0_82:                               # %sw.bb.153
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_84
# BB#83:                                # %if.then.157
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.28, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_84:                               # %if.end.158
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, nwin_options+8
	jmp	.LBB0_153
.LBB0_85:                               # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -6352(%rbp)       # 4-byte Spill
	je	.LBB0_87
	jmp	.LBB0_545
.LBB0_545:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -6356(%rbp)       # 4-byte Spill
	je	.LBB0_86
	jmp	.LBB0_546
.LBB0_546:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$49, %eax
	movl	%eax, -6360(%rbp)       # 4-byte Spill
	je	.LBB0_88
	jmp	.LBB0_547
.LBB0_547:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -6364(%rbp)       # 4-byte Spill
	je	.LBB0_89
	jmp	.LBB0_548
.LBB0_548:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -6368(%rbp)       # 4-byte Spill
	je	.LBB0_90
	jmp	.LBB0_549
.LBB0_549:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -6372(%rbp)       # 4-byte Spill
	je	.LBB0_86
	jmp	.LBB0_550
.LBB0_550:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -6376(%rbp)       # 4-byte Spill
	je	.LBB0_90
	jmp	.LBB0_551
.LBB0_551:                              # %sw.bb.160
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-6352(%rbp), %eax       # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -6380(%rbp)       # 4-byte Spill
	je	.LBB0_88
	jmp	.LBB0_94
.LBB0_86:                               # %sw.bb.164
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$0, nwin_options+48
	jmp	.LBB0_95
.LBB0_87:                               # %sw.bb.165
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB0_88:                               # %sw.bb.167
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, nwin_options+48
	jmp	.LBB0_95
.LBB0_89:                               # %sw.bb.168
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$3, nwin_options+48
	jmp	.LBB0_95
.LBB0_90:                               # %sw.bb.169
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, lsflag
	cmpl	$1, -16(%rbp)
	jle	.LBB0_93
# BB#91:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	$0, SockMatch
	jne	.LBB0_93
# BB#92:                                # %if.then.174
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, SockMatch
	movl	-16(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -16(%rbp)
.LBB0_93:                               # %if.end.177
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	$0, -40(%rbp)
	jmp	.LBB0_95
.LBB0_94:                               # %sw.default.178
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.29, %rsi
	movq	-1600(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %rdx
	callq	exit_with_usage
.LBB0_95:                               # %sw.epilog.180
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_96:                               # %sw.bb.181
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	$.L.str.30, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_98
# BB#97:                                # %if.then.184
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.31, %rsi
	movq	-1600(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %rdx
	callq	exit_with_usage
.LBB0_98:                               # %if.end.186
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, lsflag
	movl	$1, wipeflag
	cmpl	$1, -16(%rbp)
	jle	.LBB0_101
# BB#99:                                # %land.lhs.true.189
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	$0, SockMatch
	jne	.LBB0_101
# BB#100:                               # %if.then.191
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, SockMatch
	movl	-16(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -16(%rbp)
.LBB0_101:                              # %if.end.194
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_102:                              # %sw.bb.195
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, nwin_options+72
	jmp	.LBB0_153
.LBB0_103:                              # %sw.bb.196
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, -1588(%rbp)
	jmp	.LBB0_153
.LBB0_104:                              # %sw.bb.197
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$0, force_vt
	jmp	.LBB0_153
.LBB0_105:                              # %sw.bb.198
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_107
# BB#106:                               # %if.then.202
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.32, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_107:                              # %if.end.203
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rdi
	callq	strlen
	cmpq	$32, %rax
	jae	.LBB0_109
# BB#108:                               # %if.then.208
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$screenterm, %rdi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	strncpy
	movb	$0, screenterm+32
	movq	%rax, -6392(%rbp)       # 8-byte Spill
	jmp	.LBB0_110
.LBB0_109:                              # %if.else.210
	xorl	%edi, %edi
	movabsq	$.L.str.33, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_110:                              # %if.end.211
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$screenterm, %rax
	movq	%rax, nwin_options+32
	jmp	.LBB0_153
.LBB0_111:                              # %sw.bb.212
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, quietflag
	jmp	.LBB0_153
.LBB0_112:                              # %sw.bb.213
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, queryflag
	movl	$1, cmdflag
	jmp	.LBB0_153
.LBB0_113:                              # %sw.bb.214
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpl	$1, -16(%rbp)
	jle	.LBB0_119
# BB#114:                               # %land.lhs.true.217
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB0_119
# BB#115:                               # %land.lhs.true.222
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	$0, SockMatch
	jne	.LBB0_119
# BB#116:                               # %if.then.224
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, SockMatch
	movl	-16(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -16(%rbp)
# BB#117:                               # %do.body.227
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_118
.LBB0_118:                              # %do.end.228
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_119
.LBB0_119:                              # %if.end.229
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB0_121
# BB#120:                               # %if.then.233
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, xflag
.LBB0_121:                              # %if.end.234
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpl	$0, rflag
	je	.LBB0_123
# BB#122:                               # %if.then.236
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$2, rflag
.LBB0_123:                              # %if.end.237
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$82, %esi
	cmovel	%ecx, %eax
	addl	rflag, %eax
	movl	%eax, rflag
	jmp	.LBB0_153
.LBB0_124:                              # %sw.bb.242
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, dflag
.LBB0_125:                              # %sw.bb.243
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpl	$0, dflag
	jne	.LBB0_127
# BB#126:                               # %if.then.245
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$2, dflag
.LBB0_127:                              # %if.end.246
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpl	$2, -16(%rbp)
	jne	.LBB0_134
# BB#128:                               # %if.then.249
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB0_133
# BB#129:                               # %land.lhs.true.254
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	$0, SockMatch
	jne	.LBB0_133
# BB#130:                               # %if.then.256
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, SockMatch
	movl	-16(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -16(%rbp)
# BB#131:                               # %do.body.259
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_132
.LBB0_132:                              # %do.end.260
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_133
.LBB0_133:                              # %if.end.261
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_134
.LBB0_134:                              # %if.end.262
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_135:                              # %sw.bb.263
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_137
# BB#136:                               # %if.then.267
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.34, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_137:                              # %if.end.268
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	$0, ShellProg
	je	.LBB0_139
# BB#138:                               # %if.then.270
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	ShellProg, %rdi
	callq	free
.LBB0_139:                              # %if.end.271
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rdi
	callq	SaveStr
	movq	%rax, ShellProg
# BB#140:                               # %do.body.274
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_141
.LBB0_141:                              # %do.end.275
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_142:                              # %sw.bb.276
                                        #   in Loop: Header=BB0_43 Depth=2
	cmpq	$0, SockMatch
	jne	.LBB0_146
# BB#143:                               # %if.then.278
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_145
# BB#144:                               # %if.then.282
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.35, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_145:                              # %if.end.283
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, SockMatch
.LBB0_146:                              # %if.end.285
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	SockMatch, %rax
	cmpb	$0, (%rax)
	jne	.LBB0_148
# BB#147:                               # %if.then.287
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.36, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1600(%rbp), %rdi
	callq	exit_with_usage
.LBB0_148:                              # %if.end.288
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_153
.LBB0_149:                              # %sw.bb.289
                                        #   in Loop: Header=BB0_43 Depth=2
	movl	$1, cmdflag
	jmp	.LBB0_153
.LBB0_150:                              # %sw.bb.290
	xorl	%edi, %edi
	movabsq	$.L.str.20, %rsi
	movabsq	$version, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_151:                              # %sw.bb.291
                                        #   in Loop: Header=BB0_43 Depth=2
	xorl	%eax, %eax
	movl	$8, %ecx
	cmpl	$-1, nwin_options+92
	cmovel	%ecx, %eax
	movl	%eax, nwin_options+92
	jmp	.LBB0_153
.LBB0_152:                              # %sw.default.295
                                        #   in Loop: Header=BB0_43 Depth=2
	movabsq	$.L.str.31, %rsi
	movq	-1600(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %rdx
	callq	exit_with_usage
.LBB0_153:                              # %sw.epilog.297
                                        #   in Loop: Header=BB0_43 Depth=2
	jmp	.LBB0_43
.LBB0_154:                              # %while.end
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_156
.LBB0_155:                              # %if.else.298
	jmp	.LBB0_157
.LBB0_156:                              # %if.end.299
                                        #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_30
.LBB0_157:                              # %while.end.300
	callq	getuid
	movl	%eax, real_uid
	callq	getgid
	movl	%eax, real_gid
	callq	geteuid
	movl	%eax, eff_uid
	callq	getegid
	movl	$7, %edi
	movabsq	$CoreDump, %rsi
	movl	%eax, eff_gid
	callq	xsignal
	movl	$11, %edi
	movabsq	$CoreDump, %rsi
	movq	%rax, -6400(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$6, %edi
	movabsq	$.L.str.2, %rsi
	movq	%rax, -6408(%rbp)       # 8-byte Spill
	callq	setlocale
	cmpl	$-1, nwin_options+92
	movq	%rax, -6416(%rbp)       # 8-byte Spill
	jne	.LBB0_161
# BB#158:                               # %if.then.310
	movl	$14, %edi
	callq	nl_langinfo
	movq	%rax, %rdi
	callq	FindEncoding
	movl	%eax, nwin_options+92
# BB#159:                               # %do.body.313
	jmp	.LBB0_160
.LBB0_160:                              # %do.end.314
	jmp	.LBB0_161
.LBB0_161:                              # %if.end.315
	callq	locale_name
	movq	%rax, -1912(%rbp)
	cmpq	$0, %rax
	je	.LBB0_167
# BB#162:                               # %if.then.318
	movabsq	$.L.str.37, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-1912(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_165
# BB#163:                               # %lor.lhs.false
	movabsq	$.L.str.38, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-1912(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_165
# BB#164:                               # %lor.lhs.false.323
	movabsq	$.L.str.39, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-1912(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_166
.LBB0_165:                              # %if.then.326
	movl	$1, cjkwidth
.LBB0_166:                              # %if.end.327
	jmp	.LBB0_167
.LBB0_167:                              # %if.end.328
	cmpq	$0, nwin_options+8
	je	.LBB0_174
# BB#168:                               # %if.then.330
	cmpl	$0, nwin_options+92
	jle	.LBB0_172
# BB#169:                               # %if.then.333
	movq	nwin_options+8, %rdi
	callq	strlen
	movq	%rax, -1920(%rbp)
	imulq	$3, -1920(%rbp), %rdi
	callq	malloc
	movq	%rax, -1936(%rbp)
	cmpq	$0, -1936(%rbp)
	jne	.LBB0_171
# BB#170:                               # %if.then.337
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_171:                              # %if.end.338
	xorl	%ecx, %ecx
	movq	nwin_options+8, %rdi
	movq	-1920(%rbp), %rax
	movl	%eax, %edx
	movl	nwin_options+92, %esi
	movq	-1936(%rbp), %r8
	movl	%esi, -6420(%rbp)       # 4-byte Spill
	movl	%edx, %esi
	movl	-6420(%rbp), %edx       # 4-byte Reload
	callq	RecodeBuf
	movslq	%eax, %rdi
	movq	%rdi, -1928(%rbp)
	movq	-1928(%rbp), %rdi
	movq	-1936(%rbp), %r8
	movb	$0, (%r8,%rdi)
	movq	-1936(%rbp), %rdi
	movq	%rdi, nwin_options+8
	jmp	.LBB0_173
.LBB0_172:                              # %if.else.343
	movq	nwin_options+8, %rdi
	callq	SaveStr
	movq	%rax, nwin_options+8
.LBB0_173:                              # %if.end.345
	jmp	.LBB0_174
.LBB0_174:                              # %if.end.346
	cmpq	$0, SockMatch
	je	.LBB0_177
# BB#175:                               # %land.lhs.true.348
	movq	SockMatch, %rdi
	callq	strlen
	cmpq	$768, %rax              # imm = 0x300
	jb	.LBB0_177
# BB#176:                               # %if.then.352
	xorl	%edi, %edi
	movabsq	$.L.str.41, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_177:                              # %if.end.353
	cmpl	$0, cmdflag
	je	.LBB0_182
# BB#178:                               # %land.lhs.true.355
	cmpl	$0, rflag
	jne	.LBB0_182
# BB#179:                               # %land.lhs.true.357
	cmpl	$0, dflag
	jne	.LBB0_182
# BB#180:                               # %land.lhs.true.359
	cmpl	$0, xflag
	jne	.LBB0_182
# BB#181:                               # %if.then.361
	movl	$1, xflag
.LBB0_182:                              # %if.end.362
	cmpl	$0, cmdflag
	jne	.LBB0_188
# BB#183:                               # %land.lhs.true.364
	cmpl	$0, dflag
	je	.LBB0_188
# BB#184:                               # %land.lhs.true.366
	cmpl	$0, -1588(%rbp)
	je	.LBB0_188
# BB#185:                               # %land.lhs.true.368
	cmpl	$0, rflag
	jne	.LBB0_188
# BB#186:                               # %lor.lhs.false.370
	cmpl	$0, xflag
	jne	.LBB0_188
# BB#187:                               # %if.then.372
	movl	$1, -1884(%rbp)
.LBB0_188:                              # %if.end.373
	movabsq	$nwin_options, %rax
	movl	$120, %ecx
	movl	%ecx, %edx
	leaq	-1880(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	nwin_undef+92, %ecx
	movl	%ecx, -1788(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_190
# BB#189:                               # %if.then.375
	movq	-24(%rbp), %rax
	movq	%rax, -1864(%rbp)
.LBB0_190:                              # %if.end.376
	movl	$25, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	xsignal
	movl	$13, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -6432(%rbp)       # 8-byte Spill
	callq	xsignal
	cmpq	$0, ShellProg
	movq	%rax, -6440(%rbp)       # 8-byte Spill
	jne	.LBB0_195
# BB#191:                               # %if.then.380
	movabsq	$.L.str.42, %rdi
	callq	getenv
	movq	%rax, -1944(%rbp)
	cmpq	$0, -1944(%rbp)
	je	.LBB0_193
# BB#192:                               # %cond.true.383
	movq	-1944(%rbp), %rax
	movq	%rax, -6448(%rbp)       # 8-byte Spill
	jmp	.LBB0_194
.LBB0_193:                              # %cond.false.384
	movabsq	$DefaultShell, %rax
	movq	%rax, -6448(%rbp)       # 8-byte Spill
	jmp	.LBB0_194
.LBB0_194:                              # %cond.end.385
	movq	-6448(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rdi
	callq	SaveStr
	movq	%rax, ShellProg
.LBB0_195:                              # %if.end.388
	movabsq	$.L.str.43, %rdi
	movq	ShellProg, %rax
	movq	%rax, ShellArgs
	callq	getenv
	movq	%rax, home
	cmpl	$0, -1588(%rbp)
	jne	.LBB0_201
# BB#196:                               # %land.lhs.true.391
	cmpq	$0, SockMatch
	jne	.LBB0_201
# BB#197:                               # %if.then.393
	movabsq	$.L.str.44, %rdi
	callq	getenv
	movq	%rax, -1904(%rbp)
	cmpq	$0, -1904(%rbp)
	je	.LBB0_200
# BB#198:                               # %land.lhs.true.396
	movq	-1904(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_200
# BB#199:                               # %if.then.400
	movq	$0, -1904(%rbp)
.LBB0_200:                              # %if.end.401
	jmp	.LBB0_201
.LBB0_201:                              # %if.end.402
	movabsq	$.L.str.45, %rdi
	callq	getenv
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, nethackflag
	testb	$1, %cl
	jne	.LBB0_206
# BB#202:                               # %if.then.406
	cmpq	$0, home
	je	.LBB0_205
# BB#203:                               # %land.lhs.true.408
	movq	home, %rdi
	callq	strlen
	cmpq	$4076, %rax             # imm = 0xFEC
	jae	.LBB0_205
# BB#204:                               # %if.then.412
	movabsq	$.L.str.46, %rsi
	leaq	-6048(%rbp), %rdi
	movq	home, %rdx
	movb	$0, %al
	callq	sprintf
	xorl	%esi, %esi
	leaq	-6048(%rbp), %rdi
	movl	%eax, -6452(%rbp)       # 4-byte Spill
	callq	access
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, nethackflag
.LBB0_205:                              # %if.end.417
	jmp	.LBB0_206
.LBB0_206:                              # %if.end.418
	movl	real_uid, %eax
	movl	%eax, multi_uid
	movl	%eax, own_uid
	cmpq	$0, SockMatch
	je	.LBB0_221
# BB#207:                               # %land.lhs.true.420
	movl	$47, %esi
	movq	SockMatch, %rdi
	callq	index
	movq	%rax, -1896(%rbp)
	cmpq	$0, %rax
	je	.LBB0_221
# BB#208:                               # %if.then.423
	movq	-1896(%rbp), %rax
	movb	$0, (%rax)
	movq	SockMatch, %rax
	movq	%rax, multi
	movq	-1896(%rbp), %rax
	addq	$1, %rax
	movq	%rax, SockMatch
	movq	multi, %rax
	cmpb	$0, (%rax)
	je	.LBB0_217
# BB#209:                               # %if.then.426
	movq	multi, %rdi
	callq	getpwnam
	movq	%rax, -6056(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_211
# BB#210:                               # %if.then.430
	xorl	%edi, %edi
	movabsq	$.L.str.47, %rsi
	movq	multi, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_211:                              # %if.end.431
	movq	-6056(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, multi_uid
	movq	-6056(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SaveStr
	movq	%rax, multi_home
	movq	multi_home, %rdi
	callq	strlen
	cmpq	$4086, %rax             # imm = 0xFF6
	jbe	.LBB0_213
# BB#212:                               # %if.then.436
	xorl	%edi, %edi
	movabsq	$.L.str.48, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_213:                              # %if.end.437
	cmpl	$0, rflag
	jne	.LBB0_215
# BB#214:                               # %lor.lhs.false.439
	cmpl	$0, lsflag
	je	.LBB0_216
.LBB0_215:                              # %if.then.441
	movl	$1, xflag
.LBB0_216:                              # %if.end.442
	movl	$0, -1884(%rbp)
	movl	$1, multiattach
.LBB0_217:                              # %if.end.443
	cmpl	$0, eff_uid
	je	.LBB0_220
# BB#218:                               # %land.lhs.true.445
	movl	multi_uid, %eax
	cmpl	eff_uid, %eax
	je	.LBB0_220
# BB#219:                               # %if.then.448
	xorl	%edi, %edi
	movabsq	$.L.str.49, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_220:                              # %if.end.449
	jmp	.LBB0_221
.LBB0_221:                              # %if.end.450
	cmpq	$0, SockMatch
	je	.LBB0_224
# BB#222:                               # %land.lhs.true.452
	movq	SockMatch, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_224
# BB#223:                               # %if.then.456
	movq	$0, SockMatch
.LBB0_224:                              # %if.end.457
	callq	getlogin
	movq	%rax, LoginName
	cmpq	$0, %rax
	je	.LBB0_231
# BB#225:                               # %land.lhs.true.460
	movq	LoginName, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_231
# BB#226:                               # %if.then.465
	movq	LoginName, %rdi
	callq	getpwnam
	movq	%rax, ppp
	cmpq	$0, %rax
	je	.LBB0_230
# BB#227:                               # %if.then.469
	movq	ppp, %rax
	movl	16(%rax), %ecx
	cmpl	real_uid, %ecx
	je	.LBB0_229
# BB#228:                               # %if.then.473
	movq	$0, ppp
.LBB0_229:                              # %if.end.474
	jmp	.LBB0_230
.LBB0_230:                              # %if.end.475
	jmp	.LBB0_231
.LBB0_231:                              # %if.end.476
	cmpq	$0, ppp
	jne	.LBB0_235
# BB#232:                               # %if.then.479
	movl	real_uid, %edi
	callq	getpwuid
	movq	%rax, ppp
	cmpq	$0, %rax
	jne	.LBB0_234
# BB#233:                               # %if.then.483
	xorl	%edi, %edi
	movabsq	$.L.str.50, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_234:                              # %if.end.484
	movq	ppp, %rax
	movq	(%rax), %rax
	movq	%rax, LoginName
.LBB0_235:                              # %if.end.485
	movq	LoginName, %rdi
	callq	SaveStr
	movq	%rax, LoginName
	movq	LoginName, %rdi
	movq	ppp, %rsi
	callq	getpwbyname
	movq	%rax, ppp
	cmpq	$0, home
	je	.LBB0_237
# BB#236:                               # %lor.lhs.false.490
	movq	home, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_238
.LBB0_237:                              # %if.then.494
	movq	ppp, %rax
	movq	32(%rax), %rax
	movq	%rax, home
.LBB0_238:                              # %if.end.496
	movq	LoginName, %rdi
	callq	strlen
	cmpq	$256, %rax              # imm = 0x100
	jbe	.LBB0_240
# BB#239:                               # %if.then.500
	xorl	%edi, %edi
	movabsq	$.L.str.51, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_240:                              # %if.end.501
	cmpq	$0, multi
	je	.LBB0_243
# BB#241:                               # %land.lhs.true.503
	movq	multi, %rdi
	callq	strlen
	cmpq	$256, %rax              # imm = 0x100
	jbe	.LBB0_243
# BB#242:                               # %if.then.507
	xorl	%edi, %edi
	movabsq	$.L.str.52, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_243:                              # %if.end.508
	movq	home, %rdi
	callq	strlen
	cmpq	$4071, %rax             # imm = 0xFE7
	jbe	.LBB0_245
# BB#244:                               # %if.then.512
	xorl	%edi, %edi
	movabsq	$.L.str.53, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_245:                              # %if.end.513
	movabsq	$.L.str.2, %rax
	movq	%rax, attach_tty
	cmpl	$0, -1884(%rbp)
	jne	.LBB0_283
# BB#246:                               # %land.lhs.true.515
	cmpl	$0, lsflag
	jne	.LBB0_283
# BB#247:                               # %land.lhs.true.517
	cmpl	$0, cmdflag
	jne	.LBB0_283
# BB#248:                               # %land.lhs.true.519
	cmpl	$0, dflag
	je	.LBB0_252
# BB#249:                               # %land.lhs.true.521
	cmpl	$0, -1588(%rbp)
	jne	.LBB0_252
# BB#250:                               # %land.lhs.true.523
	cmpl	$0, rflag
	jne	.LBB0_252
# BB#251:                               # %land.lhs.true.525
	cmpl	$0, xflag
	je	.LBB0_283
.LBB0_252:                              # %land.lhs.true.527
	cmpq	$0, -1904(%rbp)
	je	.LBB0_257
# BB#253:                               # %land.lhs.true.529
	cmpq	$0, SockMatch
	jne	.LBB0_257
# BB#254:                               # %land.lhs.true.531
	cmpl	$0, -1588(%rbp)
	jne	.LBB0_257
# BB#255:                               # %land.lhs.true.533
	cmpl	$0, rflag
	jne	.LBB0_257
# BB#256:                               # %land.lhs.true.535
	cmpl	$0, xflag
	je	.LBB0_283
.LBB0_257:                              # %if.then.537
	jmp	.LBB0_258
.LBB0_258:                              # %do.body.538
	xorl	%edi, %edi
	callq	ttyname
	movq	%rax, attach_tty
	cmpq	$0, %rax
	jne	.LBB0_260
# BB#259:                               # %if.then.541
	xorl	%edi, %edi
	movabsq	$.L.str.54, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_260:                              # %if.else.542
	leaq	-1752(%rbp), %rsi
	movq	attach_tty, %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB0_262
# BB#261:                               # %if.then.545
	callq	__errno_location
	movabsq	$.L.str.55, %rsi
	movl	(%rax), %edi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_262:                              # %if.end.547
	movq	attach_tty, %rdi
	callq	CheckTtyname
	cmpl	$0, %eax
	je	.LBB0_264
# BB#263:                               # %if.then.550
	xorl	%edi, %edi
	movabsq	$.L.str.56, %rsi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_264:                              # %if.end.551
	jmp	.LBB0_265
.LBB0_265:                              # %if.end.552
	movq	attach_tty, %rdi
	callq	strlen
	cmpq	$4096, %rax             # imm = 0x1000
	jb	.LBB0_267
# BB#266:                               # %if.then.556
	xorl	%edi, %edi
	movabsq	$.L.str.57, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_267:                              # %if.end.557
	jmp	.LBB0_268
.LBB0_268:                              # %do.end.558
	xorl	%eax, %eax
	movl	$3, %esi
	movl	-1728(%rbp), %ecx
	andl	$511, %ecx              # imm = 0x1FF
	movl	%ecx, tty_mode
	movl	%eax, %edi
	movl	%eax, %edx
	movb	$0, %al
	callq	fcntl
	movl	%eax, -6060(%rbp)
	cmpl	$-1, -6060(%rbp)
	je	.LBB0_271
# BB#269:                               # %land.lhs.true.562
	movl	-6060(%rbp), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	.LBB0_271
# BB#270:                               # %if.then.566
	movl	$0, attach_fd
.LBB0_271:                              # %if.end.567
	cmpl	$-1, attach_fd
	jne	.LBB0_275
# BB#272:                               # %if.then.570
	movl	$2050, %esi             # imm = 0x802
	xorl	%edx, %edx
	movq	attach_tty, %rdi
	callq	secopen
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_274
# BB#273:                               # %if.then.574
	xorl	%edi, %edi
	movabsq	$.L.str.58, %rsi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_274:                              # %if.end.575
	movl	-28(%rbp), %edi
	callq	close
	movl	%eax, -6456(%rbp)       # 4-byte Spill
.LBB0_275:                              # %if.end.577
	jmp	.LBB0_276
.LBB0_276:                              # %do.body.578
	jmp	.LBB0_277
.LBB0_277:                              # %do.end.579
	movabsq	$.L.str.59, %rdi
	callq	getenv
	movq	%rax, attach_term
	cmpq	$0, %rax
	je	.LBB0_279
# BB#278:                               # %lor.lhs.false.583
	movq	attach_term, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_280
.LBB0_279:                              # %if.then.587
	xorl	%edi, %edi
	movabsq	$.L.str.60, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_280:                              # %if.end.588
	movq	attach_term, %rdi
	callq	strlen
	cmpq	$32, %rax
	jbe	.LBB0_282
# BB#281:                               # %if.then.592
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_282:                              # %if.end.593
	xorl	%edi, %edi
	movabsq	$attach_Mode, %rsi
	callq	GetTTY
.LBB0_283:                              # %if.end.594
	xorl	%edi, %edi
	callq	umask
	movl	%eax, -1756(%rbp)
	cmpl	$-1, %eax
	jne	.LBB0_285
# BB#284:                               # %if.then.598
	callq	__errno_location
	movabsq	$.L.str.62, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_285:                              # %if.end.600
	movabsq	$.L.str.63, %rdi
	callq	getenv
	movq	%rax, -1608(%rbp)
	cmpq	$0, -1608(%rbp)
	je	.LBB0_291
# BB#286:                               # %if.then.603
	movq	-1608(%rbp), %rdi
	callq	strlen
	cmpq	$4095, %rax             # imm = 0xFFF
	jb	.LBB0_288
# BB#287:                               # %if.then.607
	xorl	%edi, %edi
	movabsq	$.L.str.64, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_288:                              # %if.end.608
	cmpq	$0, multi
	je	.LBB0_290
# BB#289:                               # %if.then.610
	xorl	%edi, %edi
	movabsq	$.L.str.65, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_290:                              # %if.end.611
	jmp	.LBB0_291
.LBB0_291:                              # %if.end.612
	cmpl	$0, multiattach
	je	.LBB0_293
# BB#292:                               # %if.then.614
	movabsq	$SockPath, %rdi
	movabsq	$.L.str.68, %rsi
	movabsq	$.L.str.67, %rax
	movabsq	$.L.str.66, %rcx
	cmpl	$0, eff_uid
	cmovneq	%rcx, %rax
	movq	%rax, -1608(%rbp)
	movq	-1608(%rbp), %rdx
	movq	multi, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6460(%rbp)       # 4-byte Spill
	jmp	.LBB0_339
.LBB0_293:                              # %if.else.618
	cmpq	$0, -1608(%rbp)
	je	.LBB0_307
# BB#294:                               # %if.then.620
	xorl	%esi, %esi
	movq	-1608(%rbp), %rdi
	callq	access
	cmpl	$0, %eax
	je	.LBB0_304
# BB#295:                               # %if.then.623
	jmp	.LBB0_296
.LBB0_296:                              # %do.body.624
	jmp	.LBB0_297
.LBB0_297:                              # %do.end.625
	callq	UserContext
	cmpl	$0, %eax
	jle	.LBB0_301
# BB#298:                               # %if.then.629
	movl	$448, %esi              # imm = 0x1C0
	movq	-1608(%rbp), %rdi
	callq	mkdir
	cmpl	$0, %eax
	je	.LBB0_300
# BB#299:                               # %if.then.632
	xorl	%edi, %edi
	callq	UserReturn
.LBB0_300:                              # %if.end.633
	movl	$1, %edi
	callq	UserReturn
.LBB0_301:                              # %if.end.634
	callq	UserStatus
	cmpl	$0, %eax
	jg	.LBB0_303
# BB#302:                               # %if.then.638
	xorl	%edi, %edi
	movabsq	$.L.str.69, %rsi
	movq	-1608(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB0_303:                              # %if.end.639
	jmp	.LBB0_304
.LBB0_304:                              # %if.end.640
	movabsq	$SockPath, %rax
	cmpq	%rax, -1608(%rbp)
	je	.LBB0_306
# BB#305:                               # %if.then.643
	movq	-1608(%rbp), %rsi
	movl	$SockPath, %eax
	movl	%eax, %edi
	callq	strcpy
	movq	%rax, -6472(%rbp)       # 8-byte Spill
.LBB0_306:                              # %if.end.645
	jmp	.LBB0_338
.LBB0_307:                              # %if.else.646
	leaq	-1752(%rbp), %rsi
	movabsq	$.L.str.67, %rax
	movabsq	$.L.str.66, %rcx
	cmpl	$0, eff_uid
	cmovneq	%rcx, %rax
	movq	%rax, -1608(%rbp)
	movq	-1608(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB0_316
# BB#308:                               # %if.then.651
	cmpl	$0, eff_uid
	jne	.LBB0_312
# BB#309:                               # %land.lhs.true.654
	cmpl	$0, real_uid
	jne	.LBB0_311
# BB#310:                               # %lor.lhs.false.656
	movl	eff_gid, %eax
	cmpl	real_gid, %eax
	jne	.LBB0_312
.LBB0_311:                              # %cond.true.659
	movl	$493, %eax              # imm = 0x1ED
	movl	%eax, -6476(%rbp)       # 4-byte Spill
	jmp	.LBB0_313
.LBB0_312:                              # %cond.false.660
	movl	$1023, %eax             # imm = 0x3FF
	movl	$509, %ecx              # imm = 0x1FD
	movl	eff_gid, %edx
	cmpl	real_gid, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -6476(%rbp)       # 4-byte Spill
.LBB0_313:                              # %cond.end.664
	movl	-6476(%rbp), %eax       # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-1608(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	mkdir
	cmpl	$-1, %eax
	jne	.LBB0_315
# BB#314:                               # %if.then.669
	callq	__errno_location
	movabsq	$.L.str.70, %rsi
	movl	(%rax), %edi
	movq	-1608(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB0_315:                              # %if.end.671
	jmp	.LBB0_332
.LBB0_316:                              # %if.else.672
	movl	-1728(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	je	.LBB0_318
# BB#317:                               # %if.then.677
	xorl	%edi, %edi
	movabsq	$.L.str.71, %rsi
	movq	-1608(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB0_318:                              # %if.end.678
	cmpl	$0, eff_uid
	jne	.LBB0_322
# BB#319:                               # %land.lhs.true.681
	cmpl	$0, real_uid
	je	.LBB0_322
# BB#320:                               # %land.lhs.true.683
	movl	-1724(%rbp), %eax
	cmpl	eff_uid, %eax
	je	.LBB0_322
# BB#321:                               # %if.then.686
	xorl	%edi, %edi
	movabsq	$.L.str.72, %rsi
	movq	-1608(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB0_322:                              # %if.end.687
	cmpl	$0, eff_uid
	jne	.LBB0_326
# BB#323:                               # %land.lhs.true.690
	cmpl	$0, real_uid
	jne	.LBB0_325
# BB#324:                               # %lor.lhs.false.692
	movl	-1728(%rbp), %eax
	andl	$509, %eax              # imm = 0x1FD
	cmpl	$509, %eax              # imm = 0x1FD
	je	.LBB0_326
.LBB0_325:                              # %cond.true.697
	movl	$493, %eax              # imm = 0x1ED
	movl	%eax, -6480(%rbp)       # 4-byte Spill
	jmp	.LBB0_329
.LBB0_326:                              # %cond.false.698
	xorl	%eax, %eax
	movb	%al, %cl
	movl	eff_gid, %eax
	cmpl	-1720(%rbp), %eax
	movb	%cl, -6481(%rbp)        # 1-byte Spill
	jne	.LBB0_328
# BB#327:                               # %land.rhs.701
	movl	eff_gid, %eax
	cmpl	real_gid, %eax
	setne	%cl
	movb	%cl, -6481(%rbp)        # 1-byte Spill
.LBB0_328:                              # %land.end.704
	movb	-6481(%rbp), %al        # 1-byte Reload
	movl	$511, %ecx              # imm = 0x1FF
	movl	$509, %edx              # imm = 0x1FD
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -6480(%rbp)       # 4-byte Spill
.LBB0_329:                              # %cond.end.706
	movl	-6480(%rbp), %eax       # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-1728(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	cmpl	-28(%rbp), %eax
	je	.LBB0_331
# BB#330:                               # %if.then.712
	xorl	%edi, %edi
	movabsq	$.L.str.73, %rsi
	movq	-1608(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movb	$0, %al
	callq	Panic
.LBB0_331:                              # %if.end.713
	jmp	.LBB0_332
.LBB0_332:                              # %if.end.714
	movabsq	$SockPath, %rdi
	movabsq	$.L.str.68, %rsi
	movq	-1608(%rbp), %rdx
	movq	LoginName, %rcx
	movb	$0, %al
	callq	sprintf
	movabsq	$SockPath, %rdi
	xorl	%esi, %esi
	movl	%eax, -6488(%rbp)       # 4-byte Spill
	callq	access
	cmpl	$0, %eax
	je	.LBB0_337
# BB#333:                               # %if.then.718
	movabsq	$SockPath, %rdi
	movl	$448, %esi              # imm = 0x1C0
	callq	mkdir
	cmpl	$-1, %eax
	jne	.LBB0_336
# BB#334:                               # %land.lhs.true.722
	callq	__errno_location
	cmpl	$17, (%rax)
	je	.LBB0_336
# BB#335:                               # %if.then.726
	callq	__errno_location
	movabsq	$.L.str.70, %rsi
	movabsq	$SockPath, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_336:                              # %if.end.728
	movabsq	$SockPath, %rdi
	movl	real_uid, %esi
	movl	real_gid, %edx
	callq	chown
	movl	%eax, -6492(%rbp)       # 4-byte Spill
.LBB0_337:                              # %if.end.730
	jmp	.LBB0_338
.LBB0_338:                              # %if.end.731
	jmp	.LBB0_339
.LBB0_339:                              # %if.end.732
	movabsq	$SockPath, %rdi
	leaq	-1752(%rbp), %rsi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB0_341
# BB#340:                               # %if.then.736
	callq	__errno_location
	movabsq	$.L.str.74, %rsi
	movabsq	$SockPath, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_341:                              # %if.else.738
	movl	-1728(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	je	.LBB0_343
# BB#342:                               # %if.then.743
	xorl	%edi, %edi
	movabsq	$.L.str.75, %rsi
	movabsq	$SockPath, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_343:                              # %if.end.744
	jmp	.LBB0_344
.LBB0_344:                              # %if.end.745
	cmpq	$0, multi
	je	.LBB0_348
# BB#345:                               # %if.then.747
	movl	-1724(%rbp), %eax
	cmpl	multi_uid, %eax
	je	.LBB0_347
# BB#346:                               # %if.then.751
	xorl	%edi, %edi
	movabsq	$.L.str.76, %rsi
	movabsq	$SockPath, %rcx
	movq	multi, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_347:                              # %if.end.752
	jmp	.LBB0_351
.LBB0_348:                              # %if.else.753
	movl	-1724(%rbp), %eax
	cmpl	real_uid, %eax
	je	.LBB0_350
# BB#349:                               # %if.then.757
	xorl	%edi, %edi
	movabsq	$.L.str.77, %rsi
	movabsq	$SockPath, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_350:                              # %if.end.758
	jmp	.LBB0_351
.LBB0_351:                              # %if.end.759
	movl	-1728(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	cmpl	$448, %eax              # imm = 0x1C0
	je	.LBB0_353
# BB#352:                               # %if.then.764
	xorl	%edi, %edi
	movabsq	$.L.str.78, %rsi
	movabsq	$SockPath, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_353:                              # %if.end.765
	cmpq	$0, SockMatch
	je	.LBB0_356
# BB#354:                               # %land.lhs.true.767
	movl	$47, %esi
	movq	SockMatch, %rdi
	callq	index
	cmpq	$0, %rax
	je	.LBB0_356
# BB#355:                               # %if.then.770
	xorl	%edi, %edi
	movabsq	$.L.str.79, %rsi
	movq	SockMatch, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_356:                              # %if.end.771
	movabsq	$SockPath, %rax
	movl	$SockPath, %ecx
	movl	%ecx, %edi
	movq	%rax, -6504(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-6504(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, SockName
	movq	SockName, %rax
	movb	$0, (%rax)
	movl	-1756(%rbp), %edi
	callq	umask
	movl	%eax, -6508(%rbp)       # 4-byte Spill
# BB#357:                               # %do.body.776
	jmp	.LBB0_358
.LBB0_358:                              # %do.end.777
	movabsq	$HostName, %rdi
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %esi
	callq	gethostname
	movabsq	$HostName, %rdi
	movl	$46, %esi
	movb	$0, HostName+767
	movl	%eax, -6512(%rbp)       # 4-byte Spill
	callq	index
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_360
# BB#359:                               # %if.then.782
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.LBB0_360:                              # %if.end.783
	cmpl	$0, lsflag
	je	.LBB0_374
# BB#361:                               # %if.then.785
	cmpq	$0, multi
	je	.LBB0_363
# BB#362:                               # %if.then.787
	movl	multi_uid, %eax
	movl	%eax, real_uid
.LBB0_363:                              # %if.end.788
	jmp	.LBB0_364
.LBB0_364:                              # %do.body.789
	movl	real_gid, %edi
	callq	setgid
	movl	real_uid, %edi
	movl	%eax, -6516(%rbp)       # 4-byte Spill
	callq	setuid
	movl	real_uid, %edi
	movl	%edi, eff_uid
	movl	real_gid, %edi
	movl	%edi, eff_gid
	movl	%eax, -6520(%rbp)       # 4-byte Spill
# BB#365:                               # %do.end.792
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-6068(%rbp), %rsi
	leaq	-6072(%rbp), %rdx
	movq	SockMatch, %rcx
	callq	FindSocket
	movl	%eax, -6064(%rbp)
	cmpl	$0, quietflag
	je	.LBB0_371
# BB#366:                               # %if.then.795
	cmpl	$0, rflag
	je	.LBB0_368
# BB#367:                               # %if.then.797
	movl	-6064(%rbp), %eax
	addl	$10, %eax
	movl	%eax, %edi
	callq	exit
.LBB0_368:                              # %if.else.799
	movb	$1, %al
	cmpl	$0, -6068(%rbp)
	movb	%al, -6521(%rbp)        # 1-byte Spill
	jne	.LBB0_370
# BB#369:                               # %lor.rhs
	cmpl	$0, -6072(%rbp)
	setne	%al
	movb	%al, -6521(%rbp)        # 1-byte Spill
.LBB0_370:                              # %lor.end
	movb	-6521(%rbp), %al        # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	addl	$9, %ecx
	addl	-6068(%rbp), %ecx
	movl	%ecx, %edi
	callq	exit
.LBB0_371:                              # %if.end.805
	cmpl	$0, -6068(%rbp)
	jne	.LBB0_373
# BB#372:                               # %if.then.808
	xorl	%edi, %edi
	movabsq	$.L.str.80, %rsi
	movabsq	$SockPath, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_373:                              # %if.end.809
	xorl	%edi, %edi
	movabsq	$.L.str.81, %rsi
	movabsq	$SockPath, %r8
	movabsq	$.L.str.2, %rax
	movabsq	$.L.str.82, %rcx
	movl	-6068(%rbp), %edx
	cmpl	$1, -6068(%rbp)
	cmovgq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	Msg
	xorl	%edi, %edi
	callq	eexit
.LBB0_374:                              # %if.end.813
	movl	$1, %edi
	movabsq	$AttacherFinit, %rsi
	callq	xsignal
	cmpl	$0, cmdflag
	movq	%rax, -6536(%rbp)       # 8-byte Spill
	je	.LBB0_391
# BB#375:                               # %if.then.816
	jmp	.LBB0_376
.LBB0_376:                              # %do.body.817
	xorl	%edi, %edi
	callq	ttyname
	movq	%rax, attach_tty
	cmpq	$0, %rax
	jne	.LBB0_378
# BB#377:                               # %if.then.820
	movabsq	$.L.str.2, %rax
	movq	%rax, attach_tty
	jmp	.LBB0_383
.LBB0_378:                              # %if.else.821
	leaq	-1752(%rbp), %rsi
	movq	attach_tty, %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB0_380
# BB#379:                               # %if.then.824
	callq	__errno_location
	movabsq	$.L.str.55, %rsi
	movl	(%rax), %edi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_380:                              # %if.end.826
	movq	attach_tty, %rdi
	callq	CheckTtyname
	cmpl	$0, %eax
	je	.LBB0_382
# BB#381:                               # %if.then.829
	xorl	%edi, %edi
	movabsq	$.L.str.56, %rsi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_382:                              # %if.end.830
	jmp	.LBB0_383
.LBB0_383:                              # %if.end.831
	movq	attach_tty, %rdi
	callq	strlen
	cmpq	$4096, %rax             # imm = 0x1000
	jb	.LBB0_385
# BB#384:                               # %if.then.835
	xorl	%edi, %edi
	movabsq	$.L.str.57, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_385:                              # %if.end.836
	jmp	.LBB0_386
.LBB0_386:                              # %do.end.837
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_388
# BB#387:                               # %if.then.839
	xorl	%edi, %edi
	movabsq	$.L.str.83, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_388:                              # %if.end.840
	jmp	.LBB0_389
.LBB0_389:                              # %do.body.841
	movl	real_gid, %edi
	callq	setgid
	movl	real_uid, %edi
	movl	%eax, -6540(%rbp)       # 4-byte Spill
	callq	setuid
	movl	real_uid, %edi
	movl	%edi, eff_uid
	movl	real_gid, %edi
	movl	%edi, eff_gid
	movl	%eax, -6544(%rbp)       # 4-byte Spill
# BB#390:                               # %do.end.844
	movq	-1904(%rbp), %rdi
	movq	SockMatch, %rsi
	movq	-24(%rbp), %rdx
	cmpl	$0, queryflag
	setge	%al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	SendCmdMessage
	xorl	%edi, %edi
	callq	exit
.LBB0_391:                              # %if.else.847
	cmpl	$0, rflag
	jne	.LBB0_393
# BB#392:                               # %lor.lhs.false.849
	cmpl	$0, xflag
	je	.LBB0_402
.LBB0_393:                              # %if.then.851
	jmp	.LBB0_394
.LBB0_394:                              # %do.body.852
	jmp	.LBB0_395
.LBB0_395:                              # %do.end.853
	movl	$2, %edi
	callq	Attach
	cmpl	$0, %eax
	je	.LBB0_397
# BB#396:                               # %if.then.856
	callq	Attacher
.LBB0_397:                              # %if.end.857
	cmpl	$0, multiattach
	je	.LBB0_399
# BB#398:                               # %if.then.859
	xorl	%edi, %edi
	movabsq	$.L.str.84, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_399:                              # %if.end.860
	jmp	.LBB0_400
.LBB0_400:                              # %do.body.861
	jmp	.LBB0_401
.LBB0_401:                              # %do.end.862
	jmp	.LBB0_417
.LBB0_402:                              # %if.else.863
	cmpl	$0, dflag
	je	.LBB0_416
# BB#403:                               # %land.lhs.true.865
	cmpl	$0, -1588(%rbp)
	jne	.LBB0_416
# BB#404:                               # %if.then.867
	jmp	.LBB0_405
.LBB0_405:                              # %do.body.868
	xorl	%edi, %edi
	callq	ttyname
	movq	%rax, attach_tty
	cmpq	$0, %rax
	jne	.LBB0_407
# BB#406:                               # %if.then.871
	movabsq	$.L.str.2, %rax
	movq	%rax, attach_tty
	jmp	.LBB0_412
.LBB0_407:                              # %if.else.872
	leaq	-1752(%rbp), %rsi
	movq	attach_tty, %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB0_409
# BB#408:                               # %if.then.875
	callq	__errno_location
	movabsq	$.L.str.55, %rsi
	movl	(%rax), %edi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_409:                              # %if.end.877
	movq	attach_tty, %rdi
	callq	CheckTtyname
	cmpl	$0, %eax
	je	.LBB0_411
# BB#410:                               # %if.then.880
	xorl	%edi, %edi
	movabsq	$.L.str.56, %rsi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_411:                              # %if.end.881
	jmp	.LBB0_412
.LBB0_412:                              # %if.end.882
	movq	attach_tty, %rdi
	callq	strlen
	cmpq	$4096, %rax             # imm = 0x1000
	jb	.LBB0_414
# BB#413:                               # %if.then.886
	xorl	%edi, %edi
	movabsq	$.L.str.57, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_414:                              # %if.end.887
	jmp	.LBB0_415
.LBB0_415:                              # %do.end.888
	movl	$4, %edi
	callq	Attach
	xorl	%edi, %edi
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.86, %rdx
	movq	SockName, %r8
	cmpl	$1, dflag
	cmovgq	%rdx, %rcx
	movq	%r8, %rdx
	movl	%eax, -6548(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	Msg
	xorl	%edi, %edi
	callq	eexit
.LBB0_416:                              # %if.end.893
	jmp	.LBB0_417
.LBB0_417:                              # %if.end.894
	jmp	.LBB0_418
.LBB0_418:                              # %if.end.895
	cmpq	$0, SockMatch
	jne	.LBB0_435
# BB#419:                               # %land.lhs.true.897
	cmpl	$0, -1588(%rbp)
	jne	.LBB0_435
# BB#420:                               # %land.lhs.true.899
	cmpq	$0, -1904(%rbp)
	je	.LBB0_435
# BB#421:                               # %if.then.901
	jmp	.LBB0_422
.LBB0_422:                              # %do.body.902
	xorl	%edi, %edi
	callq	ttyname
	movq	%rax, attach_tty
	cmpq	$0, %rax
	jne	.LBB0_424
# BB#423:                               # %if.then.905
	movabsq	$.L.str.2, %rax
	movq	%rax, attach_tty
	jmp	.LBB0_429
.LBB0_424:                              # %if.else.906
	leaq	-1752(%rbp), %rsi
	movq	attach_tty, %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB0_426
# BB#425:                               # %if.then.909
	callq	__errno_location
	movabsq	$.L.str.55, %rsi
	movl	(%rax), %edi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_426:                              # %if.end.911
	movq	attach_tty, %rdi
	callq	CheckTtyname
	cmpl	$0, %eax
	je	.LBB0_428
# BB#427:                               # %if.then.914
	xorl	%edi, %edi
	movabsq	$.L.str.56, %rsi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_428:                              # %if.end.915
	jmp	.LBB0_429
.LBB0_429:                              # %if.end.916
	movq	attach_tty, %rdi
	callq	strlen
	cmpq	$4096, %rax             # imm = 0x1000
	jb	.LBB0_431
# BB#430:                               # %if.then.920
	xorl	%edi, %edi
	movabsq	$.L.str.57, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_431:                              # %if.end.921
	jmp	.LBB0_432
.LBB0_432:                              # %do.end.922
	jmp	.LBB0_433
.LBB0_433:                              # %do.body.923
	movl	real_gid, %edi
	callq	setgid
	movl	real_uid, %edi
	movl	%eax, -6552(%rbp)       # 4-byte Spill
	callq	setuid
	movl	real_uid, %edi
	movl	%edi, eff_uid
	movl	real_gid, %edi
	movl	%edi, eff_gid
	movl	%eax, -6556(%rbp)       # 4-byte Spill
# BB#434:                               # %do.end.926
	leaq	-1880(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, nwin_options+16
	movq	-1904(%rbp), %rdi
	callq	SendCreateMsg
	xorl	%edi, %edi
	callq	exit
.LBB0_435:                              # %if.end.927
	movabsq	$nwin_default, %rax
	movabsq	$nwin_options, %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	nwin_compose
	cmpl	$0, -1884(%rbp)
	je	.LBB0_437
# BB#436:                               # %lor.lhs.false.929
	cmpl	$2, dflag
	je	.LBB0_438
.LBB0_437:                              # %if.then.932
	callq	fork
	movl	%eax, MasterPid
	jmp	.LBB0_439
.LBB0_438:                              # %if.else.934
	movl	$0, MasterPid
.LBB0_439:                              # %if.end.935
	movl	MasterPid(%rip), %eax
	movl	%eax, %ecx
	subl	$-1, %ecx
	movl	%eax, -6560(%rbp)       # 4-byte Spill
	movl	%ecx, -6564(%rbp)       # 4-byte Spill
	je	.LBB0_440
	jmp	.LBB0_557
.LBB0_557:                              # %if.end.935
	movl	-6560(%rbp), %eax       # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_441
	jmp	.LBB0_442
.LBB0_440:                              # %sw.bb.936
	callq	__errno_location
	movabsq	$.L.str.87, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_441:                              # %sw.bb.938
	jmp	.LBB0_458
.LBB0_442:                              # %sw.default.939
	cmpl	$0, -1884(%rbp)
	je	.LBB0_444
# BB#443:                               # %if.then.941
	xorl	%edi, %edi
	callq	exit
.LBB0_444:                              # %if.end.942
	cmpq	$0, SockMatch
	je	.LBB0_446
# BB#445:                               # %if.then.944
	movabsq	$.L.str.88, %rsi
	leaq	-1584(%rbp), %rdi
	movl	MasterPid, %edx
	movq	SockMatch, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6568(%rbp)       # 4-byte Spill
	jmp	.LBB0_447
.LBB0_446:                              # %if.else.947
	leaq	-1584(%rbp), %rdi
	movl	MasterPid, %edx
	movq	attach_tty, %rax
	movq	%rdi, -6576(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -6580(%rbp)       # 4-byte Spill
	callq	stripdev
	movabsq	$.L.str.89, %rsi
	movabsq	$HostName, %r8
	movq	-6576(%rbp), %rdi       # 8-byte Reload
	movl	-6580(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6584(%rbp)       # 4-byte Spill
.LBB0_447:                              # %if.end.951
	leaq	-1584(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_448:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_453
# BB#449:                               # %for.body
                                        #   in Loop: Header=BB0_448 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB0_451
# BB#450:                               # %if.then.957
                                        #   in Loop: Header=BB0_448 Depth=1
	movq	-40(%rbp), %rax
	movb	$45, (%rax)
.LBB0_451:                              # %if.end.958
                                        #   in Loop: Header=BB0_448 Depth=1
	jmp	.LBB0_452
.LBB0_452:                              # %for.inc
                                        #   in Loop: Header=BB0_448 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_448
.LBB0_453:                              # %for.end
	leaq	-1584(%rbp), %rdi
	callq	strlen
	cmpq	$255, %rax
	jbe	.LBB0_455
# BB#454:                               # %if.then.964
	movb	$0, -1329(%rbp)
.LBB0_455:                              # %if.end.966
	movabsq	$.L.str.90, %rsi
	leaq	-1584(%rbp), %rdx
	movabsq	$SockPath, %rax
	movl	$SockPath, %ecx
	movl	%ecx, %edi
	movq	%rsi, -6592(%rbp)       # 8-byte Spill
	movq	%rdx, -6600(%rbp)       # 8-byte Spill
	movq	%rax, -6608(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-6608(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rdi
	movq	-6592(%rbp), %rsi       # 8-byte Reload
	movq	-6600(%rbp), %rdx       # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6612(%rbp)       # 4-byte Spill
# BB#456:                               # %do.body.971
	movl	real_gid, %edi
	callq	setgid
	movl	real_uid, %edi
	movl	%eax, -6616(%rbp)       # 4-byte Spill
	callq	setuid
	movl	real_uid, %edi
	movl	%edi, eff_uid
	movl	real_gid, %edi
	movl	%edi, eff_gid
	movl	%eax, -6620(%rbp)       # 4-byte Spill
# BB#457:                               # %do.end.974
	callq	Attacher
.LBB0_458:                              # %sw.epilog.975
	cmpl	$0, -1884(%rbp)
	jne	.LBB0_460
# BB#459:                               # %if.then.977
	callq	getppid
	movl	%eax, PanicPid
.LBB0_460:                              # %if.end.979
	cmpl	$-1, DefaultEsc
	jne	.LBB0_462
# BB#461:                               # %if.then.982
	movl	$1, DefaultEsc
.LBB0_462:                              # %if.end.983
	cmpl	$-1, DefaultMetaEsc
	jne	.LBB0_464
# BB#463:                               # %if.then.986
	movl	$97, DefaultMetaEsc
.LBB0_464:                              # %if.end.987
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -6632(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-6632(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	addq	$-1, %rdi
	movq	%rdi, -40(%rbp)
.LBB0_465:                              # %while.cond.991
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.LBB0_469
# BB#466:                               # %while.body.994
                                        #   in Loop: Header=BB0_465 Depth=1
	movabsq	$.L.str, %rdi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_468
# BB#467:                               # %if.then.997
	movabsq	$.L.str.91, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	callq	strncpy
	movq	%rax, -6640(%rbp)       # 8-byte Spill
	jmp	.LBB0_469
.LBB0_468:                              # %if.end.999
                                        #   in Loop: Header=BB0_465 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_465
.LBB0_469:                              # %while.end.1001
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB0_471
# BB#470:                               # %if.then.1004
	movq	-48(%rbp), %rax
	movb	$83, (%rax)
.LBB0_471:                              # %if.end.1005
	cmpl	$0, -1884(%rbp)
	jne	.LBB0_478
# BB#472:                               # %if.then.1007
	cmpl	$-1, attach_fd
	jne	.LBB0_476
# BB#473:                               # %if.then.1010
	movl	$2050, %esi             # imm = 0x802
	xorl	%edx, %edx
	movq	attach_tty, %rdi
	callq	secopen
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_475
# BB#474:                               # %if.then.1014
	xorl	%edi, %edi
	movabsq	$.L.str.92, %rsi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_475:                              # %if.end.1015
	jmp	.LBB0_477
.LBB0_476:                              # %if.else.1016
	movl	attach_fd, %edi
	callq	dup
	movl	%eax, -28(%rbp)
.LBB0_477:                              # %if.end.1018
	jmp	.LBB0_479
.LBB0_478:                              # %if.else.1019
	movl	$-1, -28(%rbp)
.LBB0_479:                              # %if.end.1020
	movabsq	$.L.str.93, %rdi
	movabsq	$.L.str.94, %rsi
	movq	stdin, %rdx
	callq	freopen
	movabsq	$.L.str.93, %rdi
	movabsq	$.L.str.95, %rsi
	movq	stdout, %rdx
	movq	%rax, -6648(%rbp)       # 8-byte Spill
	callq	freopen
	movabsq	$.L.str.93, %rdi
	movabsq	$.L.str.95, %rsi
	movq	stderr, %rdx
	movq	%rax, -6656(%rbp)       # 8-byte Spill
	callq	freopen
	movq	%rax, -6664(%rbp)       # 8-byte Spill
# BB#480:                               # %do.body.1024
	jmp	.LBB0_481
.LBB0_481:                              # %do.end.1025
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	LoginName, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	UserAdd
	cmpl	$0, %eax
	jge	.LBB0_483
# BB#482:                               # %if.then.1029
	xorl	%edi, %edi
	movabsq	$.L.str.96, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_483:                              # %if.end.1030
	cmpl	$0, -1884(%rbp)
	jne	.LBB0_492
# BB#484:                               # %if.then.1032
	movq	LoginName, %rdi
	movq	attach_tty, %rsi
	movq	attach_term, %rdx
	movl	-28(%rbp), %ecx
	movq	%rdi, -6672(%rbp)       # 8-byte Spill
	movq	%rsi, -6680(%rbp)       # 8-byte Spill
	movq	%rdx, -6688(%rbp)       # 8-byte Spill
	movl	%ecx, -6692(%rbp)       # 4-byte Spill
	callq	getppid
	movabsq	$attach_Mode, %r9
	movq	-6672(%rbp), %rdi       # 8-byte Reload
	movq	-6680(%rbp), %rsi       # 8-byte Reload
	movq	-6688(%rbp), %rdx       # 8-byte Reload
	movl	-6692(%rbp), %ecx       # 4-byte Reload
	movl	%eax, %r8d
	callq	MakeDisplay
	cmpq	$0, %rax
	jne	.LBB0_486
# BB#485:                               # %if.then.1037
	xorl	%edi, %edi
	movabsq	$.L.str.97, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_486:                              # %if.end.1038
	movl	$0, PanicPid
	cmpl	$0, nwin_options+92
	jle	.LBB0_488
# BB#487:                               # %cond.true.1041
	movl	nwin_options+92, %eax
	movl	%eax, -6696(%rbp)       # 4-byte Spill
	jmp	.LBB0_489
.LBB0_488:                              # %cond.false.1042
	xorl	%eax, %eax
	movl	%eax, -6696(%rbp)       # 4-byte Spill
	jmp	.LBB0_489
.LBB0_489:                              # %cond.end.1043
	movl	-6696(%rbp), %eax       # 4-byte Reload
	movq	display, %rcx
	movl	%eax, 496(%rcx)
# BB#490:                               # %do.body.1045
	jmp	.LBB0_491
.LBB0_491:                              # %do.end.1046
	jmp	.LBB0_492
.LBB0_492:                              # %if.end.1047
	cmpq	$0, SockMatch
	je	.LBB0_494
# BB#493:                               # %if.then.1049
	leaq	-1584(%rbp), %rdi
	movq	%rdi, -6704(%rbp)       # 8-byte Spill
	callq	getpid
	movabsq	$.L.str.88, %rsi
	movq	SockMatch, %rcx
	movq	-6704(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6708(%rbp)       # 4-byte Spill
	jmp	.LBB0_495
.LBB0_494:                              # %if.else.1053
	leaq	-1584(%rbp), %rdi
	movq	%rdi, -6720(%rbp)       # 8-byte Spill
	callq	getpid
	movq	attach_tty, %rdi
	movl	%eax, -6724(%rbp)       # 4-byte Spill
	callq	stripdev
	movabsq	$.L.str.89, %rsi
	movabsq	$HostName, %r8
	movq	-6720(%rbp), %rdi       # 8-byte Reload
	movl	-6724(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6728(%rbp)       # 4-byte Spill
.LBB0_495:                              # %if.end.1058
	leaq	-1584(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_496:                              # %for.cond.1060
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_501
# BB#497:                               # %for.body.1062
                                        #   in Loop: Header=BB0_496 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB0_499
# BB#498:                               # %if.then.1066
                                        #   in Loop: Header=BB0_496 Depth=1
	movq	-40(%rbp), %rax
	movb	$45, (%rax)
.LBB0_499:                              # %if.end.1067
                                        #   in Loop: Header=BB0_496 Depth=1
	jmp	.LBB0_500
.LBB0_500:                              # %for.inc.1068
                                        #   in Loop: Header=BB0_496 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_496
.LBB0_501:                              # %for.end.1070
	leaq	-1584(%rbp), %rdi
	callq	strlen
	cmpq	$255, %rax
	jbe	.LBB0_505
# BB#502:                               # %if.then.1075
	jmp	.LBB0_503
.LBB0_503:                              # %do.body.1076
	jmp	.LBB0_504
.LBB0_504:                              # %do.end.1077
	movb	$0, -1329(%rbp)
.LBB0_505:                              # %if.end.1079
	movabsq	$.L.str.90, %rsi
	leaq	-1584(%rbp), %rdx
	movabsq	$SockPath, %rax
	movl	$SockPath, %ecx
	movl	%ecx, %edi
	movq	%rsi, -6736(%rbp)       # 8-byte Spill
	movq	%rdx, -6744(%rbp)       # 8-byte Spill
	movq	%rax, -6752(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-6752(%rbp), %rdx       # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rdi
	movq	-6736(%rbp), %rsi       # 8-byte Reload
	movq	-6744(%rbp), %rdx       # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6756(%rbp)       # 4-byte Spill
	callq	MakeServerSocket
	movl	%eax, ServerSocket
	callq	InitKeytab
	movabsq	$.L.str.98, %rdi
	callq	getenv
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_507
# BB#506:                               # %if.then.1087
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	StartRc
	movl	%eax, -6760(%rbp)       # 4-byte Spill
	jmp	.LBB0_508
.LBB0_507:                              # %if.else.1089
	movabsq	$.L.str.99, %rdi
	xorl	%esi, %esi
	callq	StartRc
	movl	%eax, -6764(%rbp)       # 4-byte Spill
.LBB0_508:                              # %if.end.1091
	xorl	%esi, %esi
	movq	RcFileName, %rdi
	callq	StartRc
	movl	%eax, -6768(%rbp)       # 4-byte Spill
	callq	InitUtmp
	cmpq	$0, display
	je	.LBB0_516
# BB#509:                               # %if.then.1094
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	InitTermcap
	cmpl	$0, %eax
	je	.LBB0_515
# BB#510:                               # %if.then.1097
	jmp	.LBB0_511
.LBB0_511:                              # %do.body.1098
	jmp	.LBB0_512
.LBB0_512:                              # %do.end.1099
	movl	$4, %esi
	xorl	%edx, %edx
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	movl	%eax, -6772(%rbp)       # 4-byte Spill
	callq	freetty
	movq	display, %rcx
	cmpl	$0, 800(%rcx)
	je	.LBB0_514
# BB#513:                               # %if.then.1102
	movl	$1, %esi
	movq	display, %rax
	movl	800(%rax), %edi
	callq	Kill
.LBB0_514:                              # %if.end.1104
	movl	$1, %edi
	callq	eexit
.LBB0_515:                              # %if.end.1105
	callq	MakeDefaultCanvas
	xorl	%edi, %edi
	movl	%eax, -6776(%rbp)       # 4-byte Spill
	callq	InitTerm
	callq	RemoveLoginSlot
	jmp	.LBB0_517
.LBB0_516:                              # %if.else.1107
	movl	$1, %edi
	callq	MakeTermcap
	movq	%rax, -6784(%rbp)       # 8-byte Spill
.LBB0_517:                              # %if.end.1109
	callq	InitLoadav
	callq	MakeNewEnv
	movl	$1, %edi
	movabsq	$SigHup, %rsi
	callq	xsignal
	movl	$2, %edi
	movabsq	$FinitHandler, %rsi
	movq	%rax, -6792(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$3, %edi
	movabsq	$FinitHandler, %rsi
	movq	%rax, -6800(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$15, %edi
	movabsq	$FinitHandler, %rsi
	movq	%rax, -6808(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$21, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -6816(%rbp)       # 8-byte Spill
	callq	xsignal
	movl	$22, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -6824(%rbp)       # 8-byte Spill
	callq	xsignal
	cmpq	$0, display
	movq	%rax, -6832(%rbp)       # 8-byte Spill
	je	.LBB0_521
# BB#518:                               # %if.then.1117
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	brktty
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	display, %rcx
	addq	$5204, %rcx             # imm = 0x1454
	movq	display, %rdx
	movl	5264(%rdx), %edx
	movl	iflag, %edi
	movl	%edi, -6836(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-6836(%rbp), %ecx       # 4-byte Reload
	callq	SetMode
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	addq	$5204, %rax             # imm = 0x1454
	movq	%rax, %rsi
	callq	SetTTY
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	cmpl	$0, %eax
	je	.LBB0_520
# BB#519:                               # %if.then.1124
	callq	__errno_location
	movabsq	$.L.str.100, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB0_520:                              # %if.end.1126
	jmp	.LBB0_522
.LBB0_521:                              # %if.else.1127
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	brktty
.LBB0_522:                              # %if.end.1128
	movl	$17, %edi
	movabsq	$SigChld, %rsi
	callq	xsignal
	movabsq	$.L.str.98, %rdi
	movq	%rax, -6848(%rbp)       # 8-byte Spill
	callq	getenv
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_524
# BB#523:                               # %if.then.1132
	movq	-40(%rbp), %rdi
	callq	FinishRc
	jmp	.LBB0_525
.LBB0_524:                              # %if.else.1133
	movabsq	$.L.str.99, %rdi
	callq	FinishRc
.LBB0_525:                              # %if.end.1134
	movq	RcFileName, %rdi
	callq	FinishRc
# BB#526:                               # %do.body.1135
	jmp	.LBB0_527
.LBB0_527:                              # %do.end.1136
	cmpq	$0, windows
	jne	.LBB0_533
# BB#528:                               # %if.then.1139
	jmp	.LBB0_529
.LBB0_529:                              # %do.body.1140
	jmp	.LBB0_530
.LBB0_530:                              # %do.end.1141
	leaq	-1880(%rbp), %rdi
	callq	MakeWindow
	cmpl	$-1, %eax
	jne	.LBB0_532
# BB#531:                               # %if.then.1145
	xorl	%edi, %edi
	movabsq	$.L.str.101, %rsi
	movl	$1000, %eax             # imm = 0x3E8
	movl	MsgWait, %ecx
	movl	%eax, -6852(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-6852(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %r8
	movq	%r8, -6216(%rbp)
	movl	MsgWait, %eax
	cltd
	idivl	%ecx
	imull	$1000, %edx, %edx       # imm = 0x3E8
	movslq	%edx, %r8
	movq	%r8, -6208(%rbp)
	movq	-6200(%rbp), %r8
	orq	$1, %r8
	movq	%r8, -6200(%rbp)
	movb	$0, %al
	callq	Msg
	movl	$1, %edi
	leaq	-6200(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-6216(%rbp), %r9
	movq	%r8, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	select
	xorl	%edi, %edi
	movl	%eax, -6856(%rbp)       # 4-byte Spill
	callq	Finit
.LBB0_532:                              # %if.end.1151
	jmp	.LBB0_536
.LBB0_533:                              # %if.else.1152
	cmpl	$0, -16(%rbp)
	je	.LBB0_535
# BB#534:                               # %if.then.1154
	leaq	-1880(%rbp), %rdi
	callq	MakeWindow
	movl	%eax, -6860(%rbp)       # 4-byte Spill
.LBB0_535:                              # %if.end.1156
	jmp	.LBB0_536
.LBB0_536:                              # %if.end.1157
	cmpq	$0, display
	je	.LBB0_539
# BB#537:                               # %land.lhs.true.1159
	cmpl	$0, default_startup
	je	.LBB0_539
# BB#538:                               # %if.then.1161
	callq	display_copyright
.LBB0_539:                              # %if.end.1162
	movl	$2, %edi
	movabsq	$SigInt, %rsi
	callq	xsignal
	cmpl	$0, rflag
	movq	%rax, -6872(%rbp)       # 8-byte Spill
	je	.LBB0_543
# BB#540:                               # %land.lhs.true.1165
	movl	rflag, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB0_543
# BB#541:                               # %land.lhs.true.1169
	cmpl	$0, quietflag
	jne	.LBB0_543
# BB#542:                               # %if.then.1171
	xorl	%edi, %edi
	movabsq	$.L.str.102, %rsi
	movb	$0, %al
	callq	Msg
	movl	$0, rflag
.LBB0_543:                              # %if.end.1172
	movabsq	$serv_read, %rdi
	movabsq	$serv_read_fn, %rax
	movl	$1, serv_read+28
	movl	ServerSocket, %ecx
	movl	%ecx, serv_read+24
	movq	%rax, serv_read+8
	callq	evenq
	movabsq	$serv_select, %rdi
	movabsq	$serv_select_fn, %rax
	movl	$-10, serv_select+32
	movl	$3, serv_select+28
	movq	%rax, serv_select+8
	callq	evenq
	movabsq	$logflush_fn, %rax
	movl	$0, logflushev+28
	movq	%rax, logflushev+8
	callq	sched
	xorl	%eax, %eax
	addq	$6904, %rsp             # imm = 0x1AF8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_49
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_125
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_102
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_104
	.quad	.LBB0_152
	.quad	.LBB0_112
	.quad	.LBB0_113
	.quad	.LBB0_142
	.quad	.LBB0_105
	.quad	.LBB0_151
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_149
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_48
	.quad	.LBB0_152
	.quad	.LBB0_56
	.quad	.LBB0_124
	.quad	.LBB0_62
	.quad	.LBB0_69
	.quad	.LBB0_152
	.quad	.LBB0_76
	.quad	.LBB0_81
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_85
	.quad	.LBB0_103
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_50
	.quad	.LBB0_111
	.quad	.LBB0_113
	.quad	.LBB0_135
	.quad	.LBB0_82
	.quad	.LBB0_152
	.quad	.LBB0_150
	.quad	.LBB0_96
	.quad	.LBB0_113

	.text
	.align	16, 0x90
	.type	lf_secreopen,@function
lf_secreopen:                           # @lf_secreopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %edi
	callq	close
	movl	$1089, %esi             # imm = 0x441
	movl	$438, %edx              # imm = 0x1B6
	movq	-16(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	secopen
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jl	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movl	-36(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	lf_move_fd
	cmpl	$0, %eax
	jge	.LBB1_5
.LBB1_2:                                # %if.then
	movq	-32(%rbp), %rdi
	callq	logfclose
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#3:                                 # %do.body
	jmp	.LBB1_4
.LBB1_4:                                # %do.end
	movl	$-1, -4(%rbp)
	jmp	.LBB1_8
.LBB1_5:                                # %if.end
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	$0, 8(%rax)
# BB#6:                                 # %do.body.6
	jmp	.LBB1_7
.LBB1_7:                                # %do.end.7
	movl	$0, -4(%rbp)
.LBB1_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lf_secreopen, .Lfunc_end1-lf_secreopen
	.cfi_endproc

	.globl	Panic
	.align	16, 0x90
	.type	Panic,@function
Panic:                                  # @Panic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$8704, %rsp             # imm = 0x2200
	testb	%al, %al
	movaps	%xmm7, -8448(%rbp)      # 16-byte Spill
	movaps	%xmm6, -8464(%rbp)      # 16-byte Spill
	movaps	%xmm5, -8480(%rbp)      # 16-byte Spill
	movaps	%xmm4, -8496(%rbp)      # 16-byte Spill
	movaps	%xmm3, -8512(%rbp)      # 16-byte Spill
	movaps	%xmm2, -8528(%rbp)      # 16-byte Spill
	movaps	%xmm1, -8544(%rbp)      # 16-byte Spill
	movaps	%xmm0, -8560(%rbp)      # 16-byte Spill
	movl	%edi, -8564(%rbp)       # 4-byte Spill
	movq	%r9, -8576(%rbp)        # 8-byte Spill
	movq	%r8, -8584(%rbp)        # 8-byte Spill
	movq	%rcx, -8592(%rbp)       # 8-byte Spill
	movq	%rdx, -8600(%rbp)       # 8-byte Spill
	movq	%rsi, -8608(%rbp)       # 8-byte Spill
	je	.LBB2_31
# BB#30:                                # %entry
	movaps	-8560(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -8384(%rbp)
	movaps	-8544(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -8368(%rbp)
	movaps	-8528(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -8352(%rbp)
	movaps	-8512(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -8336(%rbp)
	movaps	-8496(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -8320(%rbp)
	movaps	-8480(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -8304(%rbp)
	movaps	-8464(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -8288(%rbp)
	movaps	-8448(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -8272(%rbp)
.LBB2_31:                               # %entry
	movq	-8576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -8392(%rbp)
	movq	-8584(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -8400(%rbp)
	movq	-8592(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -8408(%rbp)
	movq	-8600(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -8416(%rbp)
	movq	-8608(%rbp), %rdi       # 8-byte Reload
	movl	-8564(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, -4(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	leaq	-8240(%rbp), %rax
	leaq	-8208(%rbp), %rcx
	movq	%rcx, -8216(%rbp)
	leaq	-8432(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$16, (%rax)
	movq	-16(%rbp), %rdi
	callq	DoNLS
	movl	$8092, %edx             # imm = 0x1F9C
	movl	%edx, %esi
	leaq	-8240(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	-8216(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	vsnprintf
	leaq	-8240(%rbp), %rcx
	cmpl	$0, -4(%rbp)
	movl	%eax, -8612(%rbp)       # 4-byte Spill
	movq	%rcx, -8624(%rbp)       # 8-byte Spill
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-8216(%rbp), %rdi
	callq	strlen
	addq	-8216(%rbp), %rax
	movq	%rax, -8216(%rbp)
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8216(%rbp)
	movb	$58, (%rax)
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8216(%rbp)
	movb	$32, (%rax)
	movq	-8216(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -8632(%rbp)       # 8-byte Spill
	movl	%ecx, %edi
	callq	strerror
	leaq	-8208(%rbp), %rdx
	addq	$8192, %rdx             # imm = 0x2000
	movq	-8216(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$1, %rdx
	movq	-8632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, -17(%rbp)
	movq	%rax, -8640(%rbp)       # 8-byte Spill
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %do.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.body.13
	jmp	.LBB2_6
.LBB2_6:                                # %do.end.14
	cmpq	$0, displays
	jne	.LBB2_11
# BB#7:                                 # %land.lhs.true
	cmpq	$0, display
	jne	.LBB2_11
# BB#8:                                 # %if.then.16
	movabsq	$.L.str.128, %rdi
	leaq	-8208(%rbp), %rsi
	movb	$0, %al
	callq	printf
	cmpl	$0, PanicPid
	movl	%eax, -8644(%rbp)       # 4-byte Spill
	je	.LBB2_10
# BB#9:                                 # %if.then.20
	movl	$1, %esi
	movl	PanicPid, %edi
	callq	Kill
.LBB2_10:                               # %if.end.21
	jmp	.LBB2_23
.LBB2_11:                               # %if.else
	cmpq	$0, displays
	jne	.LBB2_13
# BB#12:                                # %if.then.23
	leaq	-8208(%rbp), %rsi
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	movq	%rax, -8248(%rbp)
	movq	$0, display
	movq	-8248(%rbp), %rdi
	callq	SendErrorMsg
	movl	$2, %edi
	movl	%eax, -8648(%rbp)       # 4-byte Spill
	callq	sleep
	movl	$1, %edi
	movl	%eax, -8652(%rbp)       # 4-byte Spill
	callq	_exit
.LBB2_13:                               # %if.else.28
	movq	displays, %rax
	movq	%rax, display
.LBB2_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB2_21
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB2_17
# BB#16:                                # %if.then.31
                                        #   in Loop: Header=BB2_14 Depth=1
	callq	RemoveStatus
.LBB2_17:                               # %if.end.32
                                        #   in Loop: Header=BB2_14 Depth=1
	callq	FinitTerm
	movl	$3, %edi
	callq	Flush
	callq	RestoreLoginSlot
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	%rax, %rsi
	callq	SetTTY
	movl	$4, %esi
	xorl	%edx, %edx
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	leaq	-8208(%rbp), %rcx
	movq	display, %r8
	movl	4900(%r8), %edi
	movl	%edi, -8656(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -8660(%rbp)       # 4-byte Spill
	movq	%rcx, -8672(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-8656(%rbp), %edi       # 4-byte Reload
	movq	-8672(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movabsq	$.L.str.129, %rsi
	movl	$1, %edi
	movl	%edi, %edx
	movq	display, %rcx
	movl	4900(%rcx), %edi
	movq	%rax, -8680(%rbp)       # 8-byte Spill
	callq	write
	movq	%rax, -8688(%rbp)       # 8-byte Spill
	callq	freetty
	movq	display, %rax
	cmpl	$0, 800(%rax)
	je	.LBB2_19
# BB#18:                                # %if.then.43
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	$1, %esi
	movq	display, %rax
	movl	800(%rax), %edi
	callq	Kill
.LBB2_19:                               # %if.end.45
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_20
.LBB2_20:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB2_14
.LBB2_21:                               # %for.end
	jmp	.LBB2_22
.LBB2_22:                               # %if.end.46
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.47
	cmpl	$0, tty_oldmode
	jl	.LBB2_29
# BB#24:                                # %if.then.49
	movl	own_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB2_26
# BB#25:                                # %if.then.52
	movl	own_uid, %edi
	callq	xseteuid
.LBB2_26:                               # %if.end.53
	jmp	.LBB2_27
.LBB2_27:                               # %do.body.54
	jmp	.LBB2_28
.LBB2_28:                               # %do.end.55
	movq	attach_tty, %rdi
	movl	tty_oldmode, %esi
	callq	chmod
	movl	%eax, -8692(%rbp)       # 4-byte Spill
.LBB2_29:                               # %if.end.57
	movl	$1, %edi
	callq	eexit
.Lfunc_end2:
	.size	Panic, .Lfunc_end2-Panic
	.cfi_endproc

	.align	16, 0x90
	.type	ParseEscape,@function
ParseEscape:                            # @ParseEscape
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	(%rdi), %eax
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movl	%eax, %edx
	callq	SetEscape
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	leaq	-18(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	ParseChar
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB3_5
# BB#3:                                 # %lor.lhs.false
	leaq	-18(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$1, %rax
	movq	%rax, %rsi
	callq	ParseChar
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB3_5
# BB#4:                                 # %lor.lhs.false.8
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_6
.LBB3_5:                                # %if.then.10
	movl	$-1, -4(%rbp)
	jmp	.LBB3_8
.LBB3_6:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movzbl	-18(%rbp), %esi
	movzbl	-17(%rbp), %edx
	callq	SetEscape
.LBB3_7:                                # %if.end.14
	movl	$0, -4(%rbp)
.LBB3_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ParseEscape, .Lfunc_end3-ParseEscape
	.cfi_endproc

	.align	16, 0x90
	.type	CoreDump,@function
CoreDump:                               # @CoreDump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movabsq	$.L.str.151, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, -104(%rbp)
	callq	getuid
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	geteuid
	movl	-112(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rax
	movq	%rax, -104(%rbp)
.LBB4_2:                                # %if.end
	callq	getgid
	movl	%eax, %edi
	callq	setgid
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	getuid
	movl	%eax, %edi
	callq	setuid
	movabsq	$.L.str.152, %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	unlink
	movabsq	$.L.str.153, %rsi
	leaq	-96(%rbp), %rdi
	movl	-4(%rbp), %edx
	movq	-104(%rbp), %rcx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	sprintf
	movq	displays, %rcx
	movq	%rcx, -16(%rbp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$-1, 392(%rax)
	jl	.LBB4_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1000000, 392(%rax)     # imm = 0xF4240
	jle	.LBB4_7
.LBB4_6:                                # %if.then.14
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_8
.LBB4_7:                                # %if.end.15
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$4, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	movq	-16(%rbp), %rcx
	movl	4900(%rcx), %edi
	movq	display, %rcx
	addq	$5144, %rcx             # imm = 0x1418
	movq	%rcx, %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	SetTTY
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movl	4900(%rsi), %edi
	movl	%edi, -136(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	strlen
	movl	-136(%rbp), %edi        # 4-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movl	$1, %esi
	movq	-16(%rbp), %rcx
	movl	800(%rcx), %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	Kill
.LBB4_8:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_3
.LBB4_9:                                # %for.end
	cmpl	$0, -108(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.24
	callq	getpid
	movl	$9, %esi
	movl	%eax, %edi
	callq	Kill
	movl	$11, %edi
	callq	eexit
.LBB4_11:                               # %if.else
	callq	abort
.Lfunc_end4:
	.size	CoreDump, .Lfunc_end4-CoreDump
	.cfi_endproc

	.align	16, 0x90
	.type	locale_name,@function
locale_name:                            # @locale_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	cmpq	$0, locale_name.s
	jne	.LBB5_6
# BB#1:                                 # %if.then
	movabsq	$.L.str.148, %rdi
	callq	getenv
	movq	%rax, locale_name.s
	cmpq	$0, locale_name.s
	jne	.LBB5_3
# BB#2:                                 # %if.then.1
	movabsq	$.L.str.149, %rdi
	callq	getenv
	movq	%rax, locale_name.s
.LBB5_3:                                # %if.end
	cmpq	$0, locale_name.s
	jne	.LBB5_5
# BB#4:                                 # %if.then.4
	movabsq	$.L.str.150, %rdi
	callq	getenv
	movq	%rax, locale_name.s
.LBB5_5:                                # %if.end.6
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.7
	movq	locale_name.s, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	locale_name, .Lfunc_end5-locale_name
	.cfi_endproc

	.align	16, 0x90
	.type	getpwbyname,@function
getpwbyname:                            # @getpwbyname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	getpwnam
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB6_35
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %pw_try_again
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB6_8
# BB#5:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	1(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB6_8
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	$13, -28(%rbp)
.LBB6_8:                                # %if.end.15
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.cond
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$13, -28(%rbp)
	jge	.LBB6_22
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB6_9 Depth=2
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -41(%rbp)
	movsbl	-41(%rbp), %esi
	cmpl	$46, %esi
	je	.LBB6_20
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$47, %eax
	je	.LBB6_20
# BB#12:                                # %lor.lhs.false.26
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$36, %eax
	je	.LBB6_20
# BB#13:                                # %lor.lhs.false.30
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB6_15
# BB#14:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$57, %eax
	jle	.LBB6_20
.LBB6_15:                               # %lor.lhs.false.38
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB6_17
# BB#16:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$122, %eax
	jle	.LBB6_20
.LBB6_17:                               # %lor.lhs.false.46
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB6_19
# BB#18:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB6_9 Depth=2
	movsbl	-41(%rbp), %eax
	cmpl	$90, %eax
	jle	.LBB6_20
.LBB6_19:                               # %if.then.54
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_22
.LBB6_20:                               # %if.end.55
                                        #   in Loop: Header=BB6_9 Depth=2
	jmp	.LBB6_21
.LBB6_21:                               # %for.inc
                                        #   in Loop: Header=BB6_9 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_9
.LBB6_22:                               # %for.end
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$13, -28(%rbp)
	jge	.LBB6_29
# BB#23:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB6_29
# BB#24:                                # %if.then.61
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	getspnam
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_28
# BB#25:                                # %if.then.65
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, getpwbyname.spw
	je	.LBB6_27
# BB#26:                                # %if.then.67
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	getpwbyname.spw, %rdi
	callq	free
.LBB6_27:                               # %if.end.68
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SaveStr
	movq	%rax, getpwbyname.spw
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	callq	endspent
	jmp	.LBB6_4
.LBB6_28:                               # %if.end.71
	callq	endspent
.LBB6_29:                               # %if.end.72
	cmpl	$13, -28(%rbp)
	jge	.LBB6_31
# BB#30:                                # %if.then.75
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_31:                               # %if.end.77
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_34
# BB#32:                                # %land.lhs.true.80
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	cmpq	$24, %rax
	jne	.LBB6_34
# BB#33:                                # %if.then.85
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, 13(%rax)
.LBB6_34:                               # %if.end.88
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_35:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	getpwbyname, .Lfunc_end6-getpwbyname
	.cfi_endproc

	.globl	Msg
	.align	16, 0x90
	.type	Msg,@function
Msg:                                    # @Msg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$8672, %rsp             # imm = 0x21E0
	testb	%al, %al
	movaps	%xmm7, -8448(%rbp)      # 16-byte Spill
	movaps	%xmm6, -8464(%rbp)      # 16-byte Spill
	movaps	%xmm5, -8480(%rbp)      # 16-byte Spill
	movaps	%xmm4, -8496(%rbp)      # 16-byte Spill
	movaps	%xmm3, -8512(%rbp)      # 16-byte Spill
	movaps	%xmm2, -8528(%rbp)      # 16-byte Spill
	movaps	%xmm1, -8544(%rbp)      # 16-byte Spill
	movaps	%xmm0, -8560(%rbp)      # 16-byte Spill
	movl	%edi, -8564(%rbp)       # 4-byte Spill
	movq	%r9, -8576(%rbp)        # 8-byte Spill
	movq	%r8, -8584(%rbp)        # 8-byte Spill
	movq	%rcx, -8592(%rbp)       # 8-byte Spill
	movq	%rdx, -8600(%rbp)       # 8-byte Spill
	movq	%rsi, -8608(%rbp)       # 8-byte Spill
	je	.LBB7_24
# BB#23:                                # %entry
	movaps	-8560(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -8384(%rbp)
	movaps	-8544(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -8368(%rbp)
	movaps	-8528(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -8352(%rbp)
	movaps	-8512(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -8336(%rbp)
	movaps	-8496(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -8320(%rbp)
	movaps	-8480(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -8304(%rbp)
	movaps	-8464(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -8288(%rbp)
	movaps	-8448(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -8272(%rbp)
.LBB7_24:                               # %entry
	movq	-8576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -8392(%rbp)
	movq	-8584(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -8400(%rbp)
	movq	-8592(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -8408(%rbp)
	movq	-8600(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -8416(%rbp)
	movq	-8608(%rbp), %rdi       # 8-byte Reload
	movl	-8564(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, -4(%rbp)
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	leaq	-8240(%rbp), %rax
	leaq	-8208(%rbp), %rcx
	movq	%rcx, -8216(%rbp)
	leaq	-8432(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$16, (%rax)
	movq	-16(%rbp), %rdi
	callq	DoNLS
	movl	$8092, %edx             # imm = 0x1F9C
	movl	%edx, %esi
	leaq	-8240(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	-8216(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	vsnprintf
	leaq	-8240(%rbp), %rcx
	cmpl	$0, -4(%rbp)
	movl	%eax, -8612(%rbp)       # 4-byte Spill
	movq	%rcx, -8624(%rbp)       # 8-byte Spill
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-8216(%rbp), %rdi
	callq	strlen
	addq	-8216(%rbp), %rax
	movq	%rax, -8216(%rbp)
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8216(%rbp)
	movb	$58, (%rax)
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8216(%rbp)
	movb	$32, (%rax)
	movq	-8216(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -8632(%rbp)       # 8-byte Spill
	movl	%ecx, %edi
	callq	strerror
	leaq	-8208(%rbp), %rdx
	addq	$8192, %rdx             # imm = 0x2000
	movq	-8216(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$1, %rdx
	movq	-8632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, -17(%rbp)
	movq	%rax, -8640(%rbp)       # 8-byte Spill
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.body.13
	jmp	.LBB7_6
.LBB7_6:                                # %do.end.14
	cmpq	$0, display
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true
	cmpq	$0, displays
	je	.LBB7_9
# BB#8:                                 # %if.then.17
	leaq	-8208(%rbp), %rdi
	callq	MakeStatus
	jmp	.LBB7_20
.LBB7_9:                                # %if.else
	cmpq	$0, displays
	je	.LBB7_15
# BB#10:                                # %if.then.20
	movq	displays, %rax
	movq	%rax, display
.LBB7_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB7_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB7_11 Depth=1
	leaq	-8208(%rbp), %rdi
	callq	MakeStatus
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB7_11
.LBB7_14:                               # %for.end
	jmp	.LBB7_19
.LBB7_15:                               # %if.else.23
	cmpq	$0, display
	je	.LBB7_17
# BB#16:                                # %if.then.25
	leaq	-8208(%rbp), %rsi
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	movq	%rax, -8248(%rbp)
	movq	display, %rax
	movq	%rax, -8256(%rbp)
	movq	$0, display
	movq	-8248(%rbp), %rdi
	callq	SendErrorMsg
	movq	-8256(%rbp), %rsi
	movq	%rsi, display
	movl	%eax, -8644(%rbp)       # 4-byte Spill
	jmp	.LBB7_18
.LBB7_17:                               # %if.else.29
	movabsq	$.L.str.128, %rdi
	leaq	-8208(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -8648(%rbp)       # 4-byte Spill
.LBB7_18:                               # %if.end.32
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.33
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.34
	cmpl	$0, queryflag
	jl	.LBB7_22
# BB#21:                                # %if.then.35
	leaq	-8208(%rbp), %rax
	movl	queryflag, %edi
	movl	%edi, -8652(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	%rax, -8664(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-8652(%rbp), %edi       # 4-byte Reload
	movq	-8664(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -8672(%rbp)       # 8-byte Spill
.LBB7_22:                               # %if.end.40
	addq	$8672, %rsp             # imm = 0x21E0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Msg, .Lfunc_end7-Msg
	.cfi_endproc

	.globl	eexit
	.align	16, 0x90
	.type	eexit,@function
eexit:                                  # @eexit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB8_2
.LBB8_2:                                # %do.end
	cmpl	$-1, ServerSocket
	je	.LBB8_6
# BB#3:                                 # %if.then
	jmp	.LBB8_4
.LBB8_4:                                # %do.body.1
	jmp	.LBB8_5
.LBB8_5:                                # %do.end.2
	movl	real_gid, %edi
	callq	setgid
	movl	real_uid, %edi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	setuid
	movabsq	$SockPath, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	unlink
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB8_6:                                # %if.end
	movl	-4(%rbp), %edi
	callq	exit
.Lfunc_end8:
	.size	eexit, .Lfunc_end8-eexit
	.cfi_endproc

	.globl	MakeNewEnv
	.align	16, 0x90
	.type	MakeNewEnv,@function
MakeNewEnv:                             # @MakeNewEnv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	environ, %rax
	movq	%rax, -8(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_3
.LBB9_3:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	cmpq	$0, NewEnv
	je	.LBB9_6
# BB#5:                                 # %if.then
	movq	NewEnv, %rax
	movq	%rax, %rdi
	callq	free
.LBB9_6:                                # %if.end
	movq	-8(%rbp), %rax
	movq	environ, %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	addq	$7, %rax
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	movq	%rax, NewEnv
	cmpq	$0, NewEnv
	jne	.LBB9_8
# BB#7:                                 # %if.then.5
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB9_8:                                # %if.end.6
	movq	SockName, %rdi
	callq	strlen
	cmpq	$763, %rax              # imm = 0x2FB
	ja	.LBB9_10
# BB#9:                                 # %cond.true
	movq	SockName, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false
	movabsq	$.L.str.109, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_11:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movabsq	$MakeNewEnv.stybuf, %rdi
	movabsq	$.L.str.122, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movabsq	$Term, %rdx
	movabsq	$MakeNewEnv.stybuf, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rsi, (%rdi)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$8, %rsi
	movq	%rsi, -16(%rbp)
	movq	%rdx, (%rcx)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -16(%rbp)
	movq	environ, %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB9_12:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_24
# BB#13:                                # %for.body.15
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.59, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.123, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#15:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#16:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.124, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#17:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.125, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#18:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.42, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#19:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.126, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#20:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB9_12 Depth=1
	movabsq	$.L.str.127, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	IsSymbol
	cmpl	$0, %eax
	jne	.LBB9_22
# BB#21:                                # %if.then.38
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, (%rcx)
.LBB9_22:                               # %if.end.40
                                        #   in Loop: Header=BB9_12 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %for.inc.41
                                        #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_12
.LBB9_24:                               # %for.end.43
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	MakeNewEnv, .Lfunc_end9-MakeNewEnv
	.cfi_endproc

	.globl	SigHup
	.align	16, 0x90
	.type	SigHup,@function
SigHup:                                 # @SigHup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	displays, %rax
	movq	%rax, display
	cmpq	$0, %rax
	je	.LBB10_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	callq	Hangup
	jmp	.LBB10_1
.LBB10_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	SigHup, .Lfunc_end10-SigHup
	.cfi_endproc

	.align	16, 0x90
	.type	FinitHandler,@function
FinitHandler:                           # @FinitHandler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB11_2
.LBB11_2:                               # %do.end
	movl	$1, %edi
	callq	Finit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	FinitHandler, .Lfunc_end11-FinitHandler
	.cfi_endproc

	.align	16, 0x90
	.type	SigChld,@function
SigChld:                                # @SigChld
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB12_2
.LBB12_2:                               # %do.end
	movl	$1, GotSigChld
	popq	%rbp
	retq
.Lfunc_end12:
	.size	SigChld, .Lfunc_end12-SigChld
	.cfi_endproc

	.globl	Finit
	.align	16, 0x90
	.type	Finit,@function
Finit:                                  # @Finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$17, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	xsignal
	movl	$1, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	xsignal
	movq	%rax, -32(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	jmp	.LBB13_2
.LBB13_2:                               # %do.end
	jmp	.LBB13_3
.LBB13_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, windows
	je	.LBB13_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	windows, %rax
	movq	%rax, -16(%rbp)
	movq	windows, %rax
	movq	(%rax), %rax
	movq	%rax, windows
	movq	-16(%rbp), %rdi
	callq	FreeWindow
	jmp	.LBB13_3
.LBB13_5:                               # %while.end
	cmpl	$-1, ServerSocket
	je	.LBB13_9
# BB#6:                                 # %if.then
	jmp	.LBB13_7
.LBB13_7:                               # %do.body.2
	jmp	.LBB13_8
.LBB13_8:                               # %do.end.3
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	movabsq	$SockPath, %rdi
	callq	unlink
	movl	eff_uid, %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
.LBB13_9:                               # %if.end
	movq	displays, %rax
	movq	%rax, display
.LBB13_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB13_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB13_10 Depth=1
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB13_13
# BB#12:                                # %if.then.7
                                        #   in Loop: Header=BB13_10 Depth=1
	callq	RemoveStatus
.LBB13_13:                              # %if.end.8
                                        #   in Loop: Header=BB13_10 Depth=1
	callq	FinitTerm
	callq	RestoreLoginSlot
	movabsq	$.L.str.110, %rdi
	callq	AddStr
	movl	$3, %edi
	callq	Flush
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	%rax, %rsi
	callq	SetTTY
	movl	$4, %esi
	xorl	%edx, %edx
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	freetty
	movl	$1, %esi
	movq	display, %rcx
	movl	800(%rcx), %edi
	callq	Kill
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB13_10 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB13_10
.LBB13_15:                              # %for.end
	movl	-4(%rbp), %edi
	callq	exit
.Lfunc_end13:
	.size	Finit, .Lfunc_end13-Finit
	.cfi_endproc

	.align	16, 0x90
	.type	SigInt,@function
SigInt:                                 # @SigInt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2, %eax
	movabsq	$SigInt, %rsi
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	xsignal
	movq	%rax, -16(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	jmp	.LBB14_2
.LBB14_2:                               # %do.end
	movl	$1, InterruptPlease
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	SigInt, .Lfunc_end14-SigInt
	.cfi_endproc

	.align	16, 0x90
	.type	serv_read_fn,@function
serv_read_fn:                           # @serv_read_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB15_2
.LBB15_2:                               # %do.end
	callq	ReceiveMsg
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	serv_read_fn, .Lfunc_end15-serv_read_fn
	.cfi_endproc

	.align	16, 0x90
	.type	serv_select_fn,@function
serv_select_fn:                         # @serv_select_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB16_2
.LBB16_2:                               # %do.end
	cmpl	$0, GotSigChld
	je	.LBB16_4
# BB#3:                                 # %if.then
	callq	SigChldHandler
.LBB16_4:                               # %if.end
	cmpl	$0, InterruptPlease
	je	.LBB16_19
# BB#5:                                 # %if.then.2
	jmp	.LBB16_6
.LBB16_6:                               # %do.body.3
	jmp	.LBB16_7
.LBB16_7:                               # %do.end.4
	cmpq	$0, fore
	je	.LBB16_18
# BB#8:                                 # %land.lhs.true
	cmpq	$0, displays
	je	.LBB16_18
# BB#9:                                 # %if.then.7
	movq	displays, %rax
	movb	5161(%rax), %cl
	movb	%cl, -25(%rbp)
	movq	fore, %rax
	cmpq	$0, 168(%rax)
	je	.LBB16_12
# BB#10:                                # %land.lhs.true.9
	movq	fore, %rax
	movq	168(%rax), %rax
	movl	(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB16_12
# BB#11:                                # %cond.true
	movq	fore, %rax
	movq	168(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB16_13
.LBB16_12:                              # %cond.false
	movq	fore, %rax
	movl	524(%rax), %ecx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
.LBB16_13:                              # %cond.end
	movl	-308(%rbp), %eax        # 4-byte Reload
	leaq	-25(%rbp), %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, %edi
	callq	write
	movq	%rax, -320(%rbp)        # 8-byte Spill
# BB#14:                                # %do.body.13
	jmp	.LBB16_15
.LBB16_15:                              # %do.end.14
	jmp	.LBB16_16
.LBB16_16:                              # %do.body.15
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.16
	jmp	.LBB16_18
.LBB16_18:                              # %if.end.17
	movl	$0, InterruptPlease
.LBB16_19:                              # %if.end.18
	movq	windows, %rax
	movq	%rax, -24(%rbp)
.LBB16_20:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_26 Depth 2
                                        #       Child Loop BB16_28 Depth 3
                                        #     Child Loop BB16_52 Depth 2
                                        #       Child Loop BB16_54 Depth 3
	cmpq	$0, -24(%rbp)
	je	.LBB16_72
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$1, 10816(%rax)
	je	.LBB16_23
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$3, 10816(%rax)
	jne	.LBB16_50
.LBB16_23:                              # %if.then.22
                                        #   in Loop: Header=BB16_20 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	cmpl	$3, 10816(%rcx)
	movb	%al, -321(%rbp)         # 1-byte Spill
	je	.LBB16_25
# BB#24:                                # %lor.rhs
                                        #   in Loop: Header=BB16_20 Depth=1
	cmpl	$0, visual_bell
	setne	%al
	movb	%al, -321(%rbp)         # 1-byte Spill
.LBB16_25:                              # %lor.end
                                        #   in Loop: Header=BB16_20 Depth=1
	movb	-321(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rdx
	movl	$0, 10816(%rdx)
	movq	displays, %rdx
	movq	%rdx, display
.LBB16_26:                              # %for.cond.27
                                        #   Parent Loop BB16_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_28 Depth 3
	cmpq	$0, display
	je	.LBB16_47
# BB#27:                                # %for.body.29
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB16_28:                              # %for.cond.30
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -40(%rbp)
	je	.LBB16_33
# BB#29:                                # %for.body.32
                                        #   in Loop: Header=BB16_28 Depth=3
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB16_31
# BB#30:                                # %if.then.34
                                        #   in Loop: Header=BB16_26 Depth=2
	jmp	.LBB16_33
.LBB16_31:                              # %if.end.35
                                        #   in Loop: Header=BB16_28 Depth=3
	jmp	.LBB16_32
.LBB16_32:                              # %for.inc
                                        #   in Loop: Header=BB16_28 Depth=3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB16_28
.LBB16_33:                              # %for.end
                                        #   in Loop: Header=BB16_26 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB16_35
# BB#34:                                # %if.then.37
                                        #   in Loop: Header=BB16_26 Depth=2
	movl	$37, %edx
	movq	-24(%rbp), %rax
	movl	$2, 10816(%rax)
	movq	BellString, %rdi
	movq	-24(%rbp), %rsi
	callq	MakeWinMsg
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB16_45
.LBB16_35:                              # %if.else
                                        #   in Loop: Header=BB16_26 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB16_44
# BB#36:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	cmpq	$0, 5784(%rax)
	jne	.LBB16_44
# BB#37:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB16_39
# BB#38:                                # %lor.lhs.false.46
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	cmpb	$0, 580(%rax)
	jne	.LBB16_44
.LBB16_39:                              # %if.then.48
                                        #   in Loop: Header=BB16_26 Depth=2
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	VisualBellString, %rdx
	movb	$0, %al
	callq	Msg
	movq	display, %rdx
	cmpl	$0, 576(%rdx)
	je	.LBB16_43
# BB#40:                                # %if.then.51
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	movb	$1, 580(%rax)
# BB#41:                                # %do.body.53
                                        #   in Loop: Header=BB16_26 Depth=2
	jmp	.LBB16_42
.LBB16_42:                              # %do.end.54
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	addq	$624, %rax              # imm = 0x270
	movl	VBellWait, %esi
	movq	%rax, %rdi
	callq	SetTimeout
.LBB16_43:                              # %if.end.55
                                        #   in Loop: Header=BB16_26 Depth=2
	jmp	.LBB16_44
.LBB16_44:                              # %if.end.56
                                        #   in Loop: Header=BB16_26 Depth=2
	jmp	.LBB16_45
.LBB16_45:                              # %if.end.57
                                        #   in Loop: Header=BB16_26 Depth=2
	jmp	.LBB16_46
.LBB16_46:                              # %for.inc.58
                                        #   in Loop: Header=BB16_26 Depth=2
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB16_26
.LBB16_47:                              # %for.end.59
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$2, 10836(%rax)
	jne	.LBB16_49
# BB#48:                                # %if.then.61
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	movl	$3, 10836(%rax)
.LBB16_49:                              # %if.end.63
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$102, %esi
	movq	-24(%rbp), %rdi
	callq	WindowChanged
.LBB16_50:                              # %if.end.64
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$2, 10836(%rax)
	jne	.LBB16_66
# BB#51:                                # %if.then.67
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	movl	$1, 10836(%rax)
	movq	displays, %rax
	movq	%rax, display
.LBB16_52:                              # %for.cond.70
                                        #   Parent Loop BB16_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_54 Depth 3
	cmpq	$0, display
	je	.LBB16_65
# BB#53:                                # %for.body.72
                                        #   in Loop: Header=BB16_52 Depth=2
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB16_54:                              # %for.cond.74
                                        #   Parent Loop BB16_20 Depth=1
                                        #     Parent Loop BB16_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -56(%rbp)
	je	.LBB16_59
# BB#55:                                # %for.body.76
                                        #   in Loop: Header=BB16_54 Depth=3
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jne	.LBB16_57
# BB#56:                                # %if.then.81
                                        #   in Loop: Header=BB16_52 Depth=2
	jmp	.LBB16_59
.LBB16_57:                              # %if.end.82
                                        #   in Loop: Header=BB16_54 Depth=3
	jmp	.LBB16_58
.LBB16_58:                              # %for.inc.83
                                        #   in Loop: Header=BB16_54 Depth=3
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_54
.LBB16_59:                              # %for.end.85
                                        #   in Loop: Header=BB16_52 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB16_61
# BB#60:                                # %if.then.87
                                        #   in Loop: Header=BB16_52 Depth=2
	jmp	.LBB16_64
.LBB16_61:                              # %if.end.88
                                        #   in Loop: Header=BB16_52 Depth=2
	movl	$128, %eax
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rsi
	movq	9848(%rsi), %rsi
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
	jne	.LBB16_63
# BB#62:                                # %if.then.96
                                        #   in Loop: Header=BB16_52 Depth=2
	jmp	.LBB16_64
.LBB16_63:                              # %if.end.97
                                        #   in Loop: Header=BB16_52 Depth=2
	movl	$37, %edx
	movq	ActivityString, %rdi
	movq	-24(%rbp), %rsi
	callq	MakeWinMsg
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movq	-24(%rbp), %rdx
	movl	$3, 10836(%rdx)
.LBB16_64:                              # %for.inc.100
                                        #   in Loop: Header=BB16_52 Depth=2
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB16_52
.LBB16_65:                              # %for.end.102
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$102, %esi
	movq	-24(%rbp), %rdi
	callq	WindowChanged
.LBB16_66:                              # %if.end.103
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$2, 10844(%rax)
	jne	.LBB16_70
# BB#67:                                # %if.then.106
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_69
# BB#68:                                # %if.then.109
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$102, %esi
	movq	-24(%rbp), %rax
	movl	$1, 10844(%rax)
	movq	-24(%rbp), %rdi
	callq	WindowChanged
.LBB16_69:                              # %if.end.111
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_70
.LBB16_70:                              # %if.end.112
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_71
.LBB16_71:                              # %for.inc.113
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_20
.LBB16_72:                              # %for.end.114
	movq	displays, %rax
	movq	%rax, display
.LBB16_73:                              # %for.cond.115
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_77 Depth 2
                                        #       Child Loop BB16_84 Depth 3
                                        #       Child Loop BB16_94 Depth 3
                                        #       Child Loop BB16_109 Depth 3
                                        #       Child Loop BB16_123 Depth 3
	cmpq	$0, display
	je	.LBB16_134
# BB#74:                                # %for.body.117
                                        #   in Loop: Header=BB16_73 Depth=1
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB16_76
# BB#75:                                # %if.then.122
                                        #   in Loop: Header=BB16_73 Depth=1
	jmp	.LBB16_133
.LBB16_76:                              # %if.end.123
                                        #   in Loop: Header=BB16_73 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB16_77:                              # %for.cond.125
                                        #   Parent Loop BB16_73 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_84 Depth 3
                                        #       Child Loop BB16_94 Depth 3
                                        #       Child Loop BB16_109 Depth 3
                                        #       Child Loop BB16_123 Depth 3
	cmpq	$0, -64(%rbp)
	je	.LBB16_132
# BB#78:                                # %for.body.127
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB16_80
# BB#79:                                # %if.then.133
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
.LBB16_80:                              # %if.end.134
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-72(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	212(%rcx), %eax
	movq	-64(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jge	.LBB16_90
# BB#81:                                # %if.then.137
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movl	224(%rax), %ecx
	movl	-72(%rbp), %edx
	movq	-64(%rbp), %rax
	addl	212(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	224(%rax), %ecx
	subl	-72(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 212(%rax)
	movq	-64(%rbp), %rdi
	callq	RethinkViewportOffsets
	movl	-80(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	cmpl	12(%rax), %ecx
	jle	.LBB16_83
# BB#82:                                # %if.then.147
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB16_83:                              # %if.end.150
                                        #   in Loop: Header=BB16_77 Depth=2
	xorl	%eax, %eax
	movq	display, %rcx
	movq	%rcx, -88(%rbp)
	movq	flayer, %rcx
	movq	%rcx, -96(%rbp)
	movq	-64(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movq	-64(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, flayer
	movq	-64(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-64(%rbp), %rcx
	movq	$0, 72(%rcx)
	movq	flayer, %rdi
	movl	%eax, %esi
	subl	-80(%rbp), %esi
	movq	flayer, %rcx
	movl	12(%rcx), %r8d
	subl	$1, %r8d
	movl	%eax, %edx
	movl	%r8d, %ecx
	movl	%eax, %r8d
	callq	LScrollV
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	flayer, %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	movq	-336(%rbp), %r9         # 8-byte Reload
	callq	*16(%r9)
	movl	$0, -76(%rbp)
.LBB16_84:                              # %for.cond.158
                                        #   Parent Loop BB16_73 Depth=1
                                        #     Parent Loop BB16_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB16_87
# BB#85:                                # %for.body.161
                                        #   in Loop: Header=BB16_84 Depth=3
	xorl	%esi, %esi
	movl	$1, %ecx
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edi
	movq	flayer, %rdx
	movl	8(%rdx), %r8d
	subl	$1, %r8d
	movl	%r8d, %edx
	callq	*%rax
# BB#86:                                # %for.inc.166
                                        #   in Loop: Header=BB16_84 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB16_84
.LBB16_87:                              # %for.end.167
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB16_89
# BB#88:                                # %if.then.170
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
.LBB16_89:                              # %if.end.173
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, flayer
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, display
	jmp	.LBB16_101
.LBB16_90:                              # %if.else.176
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-72(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	212(%rcx), %eax
	movq	-64(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jle	.LBB16_100
# BB#91:                                # %if.then.181
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-72(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	212(%rcx), %eax
	movq	-64(%rbp), %rcx
	subl	228(%rcx), %eax
	movl	%eax, -128(%rbp)
	movq	-64(%rbp), %rcx
	movl	228(%rcx), %eax
	subl	-72(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movq	-64(%rbp), %rdi
	callq	RethinkViewportOffsets
	movl	-128(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB16_93
# BB#92:                                # %if.then.195
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -128(%rbp)
.LBB16_93:                              # %if.end.198
                                        #   in Loop: Header=BB16_77 Depth=2
	xorl	%eax, %eax
	movq	display, %rcx
	movq	%rcx, -136(%rbp)
	movq	flayer, %rcx
	movq	%rcx, -144(%rbp)
	movq	-64(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -160(%rbp)
	movq	-64(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, flayer
	movq	-64(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-64(%rbp), %rcx
	movq	$0, 72(%rcx)
	movq	flayer, %rdi
	movl	-128(%rbp), %esi
	movq	-64(%rbp), %rcx
	movq	64(%rcx), %rcx
	movl	12(%rcx), %r8d
	subl	$1, %r8d
	movl	%eax, %edx
	movl	%r8d, %ecx
	movl	%eax, %r8d
	callq	LScrollV
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	flayer, %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	movq	-344(%rbp), %r9         # 8-byte Reload
	callq	*16(%r9)
	movl	$0, -124(%rbp)
.LBB16_94:                              # %for.cond.214
                                        #   Parent Loop BB16_73 Depth=1
                                        #     Parent Loop BB16_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB16_97
# BB#95:                                # %for.body.217
                                        #   in Loop: Header=BB16_94 Depth=3
	xorl	%esi, %esi
	movl	$1, %ecx
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movl	-124(%rbp), %edx
	movq	flayer, %rdi
	addl	12(%rdi), %edx
	subl	-128(%rbp), %edx
	movq	flayer, %rdi
	movl	8(%rdi), %r8d
	subl	$1, %r8d
	movl	%edx, %edi
	movl	%r8d, %edx
	callq	*%rax
# BB#96:                                # %for.inc.225
                                        #   in Loop: Header=BB16_94 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB16_94
.LBB16_97:                              # %for.end.227
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB16_99
# BB#98:                                # %if.then.232
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
.LBB16_99:                              # %if.end.235
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-144(%rbp), %rax
	movq	%rax, flayer
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, display
.LBB16_100:                             # %if.end.238
                                        #   in Loop: Header=BB16_77 Depth=2
	jmp	.LBB16_101
.LBB16_101:                             # %if.end.239
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	208(%rcx), %eax
	movq	-64(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jge	.LBB16_115
# BB#102:                               # %if.then.243
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	$2, %eax
	movq	-64(%rbp), %rcx
	movl	216(%rcx), %edx
	movl	-68(%rbp), %esi
	movq	-64(%rbp), %rcx
	addl	208(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, -176(%rbp)
	movl	-176(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	220(%rcx), %esi
	movq	-64(%rbp), %rcx
	subl	216(%rcx), %esi
	addl	$1, %esi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -352(%rbp)        # 4-byte Spill
	cltd
	movl	-348(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-352(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jge	.LBB16_104
# BB#103:                               # %if.then.255
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	$2, %eax
	movq	-64(%rbp), %rcx
	movl	220(%rcx), %edx
	movq	-64(%rbp), %rcx
	subl	216(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-356(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -176(%rbp)
.LBB16_104:                             # %if.end.261
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movl	208(%rax), %ecx
	addl	-176(%rbp), %ecx
	movq	-64(%rbp), %rax
	cmpl	216(%rax), %ecx
	jle	.LBB16_106
# BB#105:                               # %if.then.267
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movl	216(%rax), %ecx
	movq	-64(%rbp), %rax
	subl	208(%rax), %ecx
	movl	%ecx, -176(%rbp)
.LBB16_106:                             # %if.end.271
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-176(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	208(%rcx), %eax
	movl	%eax, 208(%rcx)
	movq	-64(%rbp), %rdi
	callq	RethinkViewportOffsets
	movl	-176(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB16_108
# BB#107:                               # %if.then.278
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)
.LBB16_108:                             # %if.end.281
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	display, %rdx
	movq	%rdx, -184(%rbp)
	movq	flayer, %rdx
	movq	%rdx, -192(%rbp)
	movq	-64(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -208(%rbp)
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, -216(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rdx, flayer
	movq	-64(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-64(%rbp), %rdx
	movq	$0, 72(%rdx)
	movq	flayer, %rdx
	movq	32(%rdx), %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-368(%rbp), %r8         # 8-byte Reload
	callq	*16(%r8)
	movl	$0, -172(%rbp)
.LBB16_109:                             # %for.cond.294
                                        #   Parent Loop BB16_73 Depth=1
                                        #     Parent Loop BB16_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	movq	flayer, %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB16_112
# BB#110:                               # %for.body.298
                                        #   in Loop: Header=BB16_109 Depth=3
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	flayer, %rdi
	movl	%eax, %ecx
	subl	-176(%rbp), %ecx
	movl	-172(%rbp), %esi
	movq	flayer, %r8
	movl	8(%r8), %r9d
	subl	$1, %r9d
	movl	%esi, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-372(%rbp), %ecx        # 4-byte Reload
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%r9d, %r8d
	movl	%eax, %r9d
	movq	$0, (%rsp)
	callq	LScrollH
	xorl	%esi, %esi
	movl	$1, %ecx
	movq	flayer, %rdi
	movq	32(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	-172(%rbp), %eax
	movl	-176(%rbp), %edx
	subl	$1, %edx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	-392(%rbp), %r10        # 8-byte Reload
	callq	*%r10
# BB#111:                               # %for.inc.305
                                        #   in Loop: Header=BB16_109 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB16_109
.LBB16_112:                             # %for.end.307
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB16_114
# BB#113:                               # %if.then.312
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
.LBB16_114:                             # %if.end.315
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-192(%rbp), %rax
	movq	%rax, flayer
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-216(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-184(%rbp), %rax
	movq	%rax, display
	jmp	.LBB16_130
.LBB16_115:                             # %if.else.318
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	208(%rcx), %eax
	movq	-64(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB16_129
# BB#116:                               # %if.then.324
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	$2, %eax
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rdx
	addl	208(%rdx), %ecx
	movq	-64(%rbp), %rdx
	subl	220(%rdx), %ecx
	movl	%ecx, -224(%rbp)
	movl	-224(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	220(%rdx), %esi
	movq	-64(%rbp), %rdx
	subl	216(%rdx), %esi
	addl	$1, %esi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-396(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB16_118
# BB#117:                               # %if.then.338
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	$2, %eax
	movq	-64(%rbp), %rcx
	movl	220(%rcx), %edx
	movq	-64(%rbp), %rcx
	subl	216(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -400(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-400(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -224(%rbp)
.LBB16_118:                             # %if.end.344
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movl	208(%rax), %ecx
	subl	-224(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-64(%rbp), %rax
	cmpl	220(%rax), %ecx
	jge	.LBB16_120
# BB#119:                               # %if.then.354
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-64(%rbp), %rax
	subl	220(%rax), %ecx
	movl	%ecx, -224(%rbp)
.LBB16_120:                             # %if.end.362
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	-224(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	208(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 208(%rcx)
	movq	-64(%rbp), %rdi
	callq	RethinkViewportOffsets
	movl	-224(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB16_122
# BB#121:                               # %if.then.369
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -224(%rbp)
.LBB16_122:                             # %if.end.372
                                        #   in Loop: Header=BB16_77 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	display, %rdx
	movq	%rdx, -232(%rbp)
	movq	flayer, %rdx
	movq	%rdx, -240(%rbp)
	movq	-64(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, -248(%rbp)
	movq	-248(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -256(%rbp)
	movq	-64(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, -264(%rbp)
	movq	-248(%rbp), %rdx
	movq	%rdx, flayer
	movq	-64(%rbp), %rdx
	movq	-248(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-64(%rbp), %rdx
	movq	$0, 72(%rdx)
	movq	flayer, %rdx
	movq	32(%rdx), %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-408(%rbp), %r8         # 8-byte Reload
	callq	*16(%r8)
	movl	$0, -220(%rbp)
.LBB16_123:                             # %for.cond.385
                                        #   Parent Loop BB16_73 Depth=1
                                        #     Parent Loop BB16_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-220(%rbp), %eax
	movq	flayer, %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB16_126
# BB#124:                               # %for.body.389
                                        #   in Loop: Header=BB16_123 Depth=3
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	flayer, %rdi
	movl	-224(%rbp), %esi
	movl	-220(%rbp), %ecx
	movq	flayer, %r8
	movl	8(%r8), %r9d
	subl	$1, %r9d
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%r9d, %r8d
	movl	%eax, %r9d
	movq	$0, (%rsp)
	callq	LScrollH
	movl	$1, %ecx
	movq	flayer, %rdi
	movq	32(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	-220(%rbp), %eax
	movq	flayer, %r10
	movl	8(%r10), %edx
	subl	-224(%rbp), %edx
	movq	flayer, %r10
	movl	8(%r10), %esi
	subl	$1, %esi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%esi, -428(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-428(%rbp), %edx        # 4-byte Reload
	movq	-424(%rbp), %r10        # 8-byte Reload
	callq	*%r10
# BB#125:                               # %for.inc.398
                                        #   in Loop: Header=BB16_123 Depth=3
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB16_123
.LBB16_126:                             # %for.end.400
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB16_128
# BB#127:                               # %if.then.405
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
.LBB16_128:                             # %if.end.408
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-240(%rbp), %rax
	movq	%rax, flayer
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-264(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-232(%rbp), %rax
	movq	%rax, display
.LBB16_129:                             # %if.end.411
                                        #   in Loop: Header=BB16_77 Depth=2
	jmp	.LBB16_130
.LBB16_130:                             # %if.end.412
                                        #   in Loop: Header=BB16_77 Depth=2
	jmp	.LBB16_131
.LBB16_131:                             # %for.inc.413
                                        #   in Loop: Header=BB16_77 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB16_77
.LBB16_132:                             # %for.end.415
                                        #   in Loop: Header=BB16_73 Depth=1
	jmp	.LBB16_133
.LBB16_133:                             # %for.inc.416
                                        #   in Loop: Header=BB16_73 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB16_73
.LBB16_134:                             # %for.end.418
	movq	displays, %rax
	movq	%rax, display
.LBB16_135:                             # %for.cond.419
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB16_144
# BB#136:                               # %for.body.421
                                        #   in Loop: Header=BB16_135 Depth=1
	movq	display, %rax
	cmpl	$1, 576(%rax)
	je	.LBB16_139
# BB#137:                               # %lor.lhs.false.425
                                        #   in Loop: Header=BB16_135 Depth=1
	movq	display, %rax
	cmpq	$0, 328(%rax)
	je	.LBB16_139
# BB#138:                               # %lor.lhs.false.429
                                        #   in Loop: Header=BB16_135 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB16_140
.LBB16_139:                             # %if.then.434
                                        #   in Loop: Header=BB16_135 Depth=1
	jmp	.LBB16_143
.LBB16_140:                             # %if.end.435
                                        #   in Loop: Header=BB16_135 Depth=1
	jmp	.LBB16_141
.LBB16_141:                             # %do.body.436
                                        #   in Loop: Header=BB16_135 Depth=1
	jmp	.LBB16_142
.LBB16_142:                             # %do.end.437
                                        #   in Loop: Header=BB16_135 Depth=1
	movq	display, %rax
	movq	%rax, -272(%rbp)
	movq	flayer, %rax
	movq	%rax, -280(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	336(%rax), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	$0, 72(%rax)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*48(%rax)
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	movq	-280(%rbp), %rax
	movq	%rax, flayer
	movq	-296(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-304(%rbp), %rax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-272(%rbp), %rax
	movq	%rax, display
.LBB16_143:                             # %for.inc.458
                                        #   in Loop: Header=BB16_135 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB16_135
.LBB16_144:                             # %for.end.460
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	serv_select_fn, .Lfunc_end16-serv_select_fn
	.cfi_endproc

	.align	16, 0x90
	.type	logflush_fn,@function
logflush_fn:                            # @logflush_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	islogfile
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_19
.LBB17_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	logfflush
	cmpl	$0, log_flush
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB17_4
# BB#3:                                 # %cond.true
	movl	log_flush, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movl	$5, %eax
	movl	logtstamp_after, %ecx
	addl	$4, %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB17_5:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB17_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	imull	$1000, -36(%rbp), %esi  # imm = 0x3E8
	callq	SetTimeout
	movq	-8(%rbp), %rdi
	callq	evenq
.LBB17_7:                               # %if.end.5
	cmpl	$0, logtstamp_on
	jne	.LBB17_9
# BB#8:                                 # %if.then.7
	jmp	.LBB17_19
.LBB17_9:                               # %if.end.8
	movq	windows, %rax
	movq	%rax, -24(%rbp)
.LBB17_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_19
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 10824(%rax)
	jne	.LBB17_13
# BB#12:                                # %if.then.11
                                        #   in Loop: Header=BB17_10 Depth=1
	jmp	.LBB17_18
.LBB17_13:                              # %if.end.12
                                        #   in Loop: Header=BB17_10 Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	10832(%rcx), %eax
	movl	%eax, 10832(%rcx)
	movq	-24(%rbp), %rcx
	movl	10832(%rcx), %eax
	cmpl	logtstamp_after, %eax
	jge	.LBB17_15
# BB#14:                                # %if.then.15
                                        #   in Loop: Header=BB17_10 Depth=1
	jmp	.LBB17_18
.LBB17_15:                              # %if.end.16
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	-24(%rbp), %rax
	movl	10832(%rax), %ecx
	subl	-36(%rbp), %ecx
	cmpl	logtstamp_after, %ecx
	jl	.LBB17_17
# BB#16:                                # %if.then.19
                                        #   in Loop: Header=BB17_10 Depth=1
	jmp	.LBB17_18
.LBB17_17:                              # %if.end.20
                                        #   in Loop: Header=BB17_10 Depth=1
	movl	$37, %edx
	movq	logtstamp_string, %rdi
	movq	-24(%rbp), %rsi
	callq	MakeWinMsg
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	10824(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	logfwrite
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB17_18:                              # %for.inc
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_10
.LBB17_19:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	logflush_fn, .Lfunc_end17-logflush_fn
	.cfi_endproc

	.globl	WindowDied
	.align	16, 0x90
	.type	WindowDied,@function
WindowDied:                             # @WindowDied
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	12816(%rdi), %rdi
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdi
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	12880(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	$1, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$12800, %rax            # imm = 0x3200
	movq	%rax, %rdi
	callq	evdeq
	movq	-8(%rbp), %rax
	movq	$0, 12816(%rax)
.LBB18_2:                               # %if.end
	cmpl	$0, -16(%rbp)
	jne	.LBB18_7
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 10992(%rax)
	jle	.LBB18_7
# BB#4:                                 # %if.then.5
	leaq	-12(%rbp), %rsi
	movl	$3, %edx
	movq	-8(%rbp), %rax
	movl	10992(%rax), %edi
	callq	waitpid
	movq	-8(%rbp), %rsi
	cmpl	10992(%rsi), %eax
	jne	.LBB18_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movl	$0, 10992(%rax)
	movl	$1, -16(%rbp)
.LBB18_6:                               # %if.end.11
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.12
	cmpl	$0, ZombieKey_destroy
	je	.LBB18_13
# BB#8:                                 # %land.lhs.true.14
	cmpl	$0, ZombieKey_onerror
	je	.LBB18_13
# BB#9:                                 # %land.lhs.true.16
	cmpl	$0, -16(%rbp)
	je	.LBB18_13
# BB#10:                                # %land.lhs.true.18
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	jne	.LBB18_13
# BB#11:                                # %land.lhs.true.20
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB18_13
# BB#12:                                # %if.then.26
	movl	$1, -20(%rbp)
.LBB18_13:                              # %if.end.27
	cmpl	$0, ZombieKey_destroy
	je	.LBB18_42
# BB#14:                                # %land.lhs.true.29
	cmpl	$0, -20(%rbp)
	jne	.LBB18_42
# BB#15:                                # %if.then.31
	cmpl	$0, -16(%rbp)
	je	.LBB18_25
# BB#16:                                # %if.then.33
	movl	-12(%rbp), %eax
	movl	%eax, -272(%rbp)
	movl	-272(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	jne	.LBB18_21
# BB#17:                                # %if.then.39
	movl	-12(%rbp), %eax
	movl	%eax, -280(%rbp)
	movl	-280(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$0, %eax
	je	.LBB18_19
# BB#18:                                # %if.then.46
	movabsq	$.L.str.103, %rsi
	leaq	-256(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, -288(%rbp)
	movl	-288(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB18_20
.LBB18_19:                              # %if.else
	movabsq	$.L.str.104, %rsi
	leaq	-256(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB18_20:                              # %if.end.55
	jmp	.LBB18_24
.LBB18_21:                              # %if.else.56
	movl	-12(%rbp), %eax
	movl	%eax, -296(%rbp)
	movl	-296(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	sarl	$1, %eax
	cmpl	$0, %eax
	jle	.LBB18_23
# BB#22:                                # %if.then.65
	movabsq	$.L.str.105, %rsi
	movabsq	$.L.str.2, %rax
	movabsq	$.L.str.106, %rcx
	leaq	-256(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	%edx, -304(%rbp)
	movl	-304(%rbp), %edx
	andl	$127, %edx
	movl	-12(%rbp), %r8d
	movl	%r8d, -312(%rbp)
	movl	-312(%rbp), %r8d
	andl	$128, %r8d
	cmpl	$0, %r8d
	cmovneq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB18_23:                              # %if.end.77
	jmp	.LBB18_24
.LBB18_24:                              # %if.end.78
	jmp	.LBB18_26
.LBB18_25:                              # %if.else.79
	movabsq	$.L.str.107, %rsi
	leaq	-256(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB18_26:                              # %if.end.82
	leaq	-264(%rbp), %rdi
	callq	time
	leaq	-264(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	ctime
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB18_29
# BB#27:                                # %land.lhs.true.86
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB18_29
# BB#28:                                # %if.then.89
	movq	-152(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-152(%rbp), %rdi
	movb	$0, (%rdi,%rax)
.LBB18_29:                              # %if.end.91
	jmp	.LBB18_30
.LBB18_30:                              # %do.body
	jmp	.LBB18_31
.LBB18_31:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 11536(%rax)
	je	.LBB18_34
# BB#32:                                # %land.lhs.true.94
	movq	$-1, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB18_34
# BB#33:                                # %if.then.98
	movq	-8(%rbp), %rdi
	callq	RemoveUtmp
	movq	-8(%rbp), %rdi
	movq	$0, 11536(%rdi)
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB18_34:                              # %if.end.101
	movq	-8(%rbp), %rdi
	callq	CloseDevice
	movq	-8(%rbp), %rdi
	movl	10992(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 10996(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 10992(%rdi)
	movq	-8(%rbp), %rdi
	callq	ResetWindow
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	9960(%rcx), %esi
	callq	MFindUsedLine
	leaq	-256(%rbp), %rdx
	leaq	-144(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
	cmpq	$0, -152(%rbp)
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	je	.LBB18_36
# BB#35:                                # %cond.true
	movq	-152(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB18_37
.LBB18_36:                              # %cond.false
	movabsq	$.L.str.109, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB18_37
.LBB18_37:                              # %cond.end
	movq	-368(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.108, %rsi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	leaq	-144(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, %edx
	callq	WriteString
	movq	-8(%rbp), %rax
	cmpl	$0, 520(%rax)
	je	.LBB18_41
# BB#38:                                # %if.then.115
	jmp	.LBB18_39
.LBB18_39:                              # %do.body.116
	jmp	.LBB18_40
.LBB18_40:                              # %do.end.117
	movq	-8(%rbp), %rax
	addq	$440, %rax              # imm = 0x1B8
	movq	-8(%rbp), %rcx
	imull	$1000, 520(%rcx), %esi  # imm = 0x3E8
	movq	%rax, %rdi
	callq	SetTimeout
	movq	-8(%rbp), %rax
	addq	$440, %rax              # imm = 0x1B8
	movq	%rax, %rdi
	callq	evenq
.LBB18_41:                              # %if.end.120
	movl	$102, %esi
	movq	-8(%rbp), %rdi
	callq	WindowChanged
	jmp	.LBB18_43
.LBB18_42:                              # %if.else.121
	movq	-8(%rbp), %rdi
	callq	KillWindow
.LBB18_43:                              # %if.end.122
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end18:
	.size	WindowDied, .Lfunc_end18-WindowDied
	.cfi_endproc

	.globl	Hangup
	.align	16, 0x90
	.type	Hangup,@function
Hangup:                                 # @Hangup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, display
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_10
.LBB19_2:                               # %if.end
	jmp	.LBB19_3
.LBB19_3:                               # %do.body
	jmp	.LBB19_4
.LBB19_4:                               # %do.end
	movq	display, %rax
	cmpl	$0, 4900(%rax)
	jl	.LBB19_6
# BB#5:                                 # %if.then.2
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	close
	movq	display, %rcx
	movl	$-1, 4900(%rcx)
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB19_6:                               # %if.end.5
	cmpl	$0, auto_detach
	jne	.LBB19_8
# BB#7:                                 # %lor.lhs.false
	movq	displays, %rax
	cmpq	$0, (%rax)
	je	.LBB19_9
.LBB19_8:                               # %if.then.7
	movl	$6, %edi
	callq	Detach
	jmp	.LBB19_10
.LBB19_9:                               # %if.else
	xorl	%edi, %edi
	callq	Finit
.LBB19_10:                              # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Hangup, .Lfunc_end19-Hangup
	.cfi_endproc

	.globl	Detach
	.align	16, 0x90
	.type	Detach,@function
Detach:                                 # @Detach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, display
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_78
.LBB20_2:                               # %if.end
	movl	$1, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	xsignal
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#3:                                 # %do.body
	jmp	.LBB20_4
.LBB20_4:                               # %do.end
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB20_6
# BB#5:                                 # %if.then.1
	callq	RemoveStatus
.LBB20_6:                               # %if.end.2
	callq	FinitTerm
	cmpq	$0, display
	jne	.LBB20_8
# BB#7:                                 # %if.then.4
	jmp	.LBB20_78
.LBB20_8:                               # %if.end.5
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$6, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB20_40
# BB#79:                                # %if.end.5
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI20_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB20_9:                               # %sw.bb
	movl	$1, -8(%rbp)
	jmp	.LBB20_40
.LBB20_10:                              # %sw.bb.6
	jmp	.LBB20_11
.LBB20_11:                              # %do.body.7
	cmpq	$0, SockName
	je	.LBB20_13
# BB#12:                                # %if.then.9
	movabsq	$.L.str.111, %rdi
	callq	AddStr
	movq	SockName, %rdi
	callq	AddStr
	movabsq	$.L.str.112, %rdi
	callq	AddStr
	jmp	.LBB20_14
.LBB20_13:                              # %if.else
	movabsq	$.L.str.113, %rdi
	callq	AddStr
.LBB20_14:                              # %if.end.10
	jmp	.LBB20_15
.LBB20_15:                              # %do.end.11
	movl	$1, -8(%rbp)
	jmp	.LBB20_40
.LBB20_16:                              # %sw.bb.12
	movl	$20, -8(%rbp)
	jmp	.LBB20_40
.LBB20_17:                              # %sw.bb.13
	jmp	.LBB20_18
.LBB20_18:                              # %do.body.14
	cmpq	$0, SockName
	je	.LBB20_20
# BB#19:                                # %if.then.16
	movabsq	$.L.str.114, %rdi
	callq	AddStr
	movq	SockName, %rdi
	callq	AddStr
	movabsq	$.L.str.112, %rdi
	callq	AddStr
	jmp	.LBB20_21
.LBB20_20:                              # %if.else.17
	movabsq	$.L.str.115, %rdi
	callq	AddStr
.LBB20_21:                              # %if.end.18
	jmp	.LBB20_22
.LBB20_22:                              # %do.end.19
	movl	$1, -8(%rbp)
	jmp	.LBB20_40
.LBB20_23:                              # %sw.bb.20
	jmp	.LBB20_24
.LBB20_24:                              # %do.body.21
	cmpq	$0, SockName
	je	.LBB20_26
# BB#25:                                # %if.then.23
	movabsq	$.L.str.116, %rdi
	callq	AddStr
	movq	SockName, %rdi
	callq	AddStr
	movabsq	$.L.str.112, %rdi
	callq	AddStr
	jmp	.LBB20_27
.LBB20_26:                              # %if.else.24
	movabsq	$.L.str.117, %rdi
	callq	AddStr
.LBB20_27:                              # %if.end.25
	jmp	.LBB20_28
.LBB20_28:                              # %do.end.26
	cmpq	$0, PowDetachString
	je	.LBB20_30
# BB#29:                                # %if.then.28
	movq	PowDetachString, %rdi
	callq	AddStr
	movabsq	$.L.str.118, %rdi
	callq	AddStr
.LBB20_30:                              # %if.end.29
	movl	$10, -8(%rbp)
	jmp	.LBB20_40
.LBB20_31:                              # %sw.bb.30
	jmp	.LBB20_32
.LBB20_32:                              # %do.body.31
	cmpq	$0, SockName
	je	.LBB20_34
# BB#33:                                # %if.then.33
	movabsq	$.L.str.119, %rdi
	callq	AddStr
	movq	SockName, %rdi
	callq	AddStr
	movabsq	$.L.str.112, %rdi
	callq	AddStr
	jmp	.LBB20_35
.LBB20_34:                              # %if.else.34
	movabsq	$.L.str.120, %rdi
	callq	AddStr
.LBB20_35:                              # %if.end.35
	jmp	.LBB20_36
.LBB20_36:                              # %do.end.36
	cmpq	$0, PowDetachString
	je	.LBB20_38
# BB#37:                                # %if.then.38
	movq	PowDetachString, %rdi
	callq	AddStr
	movabsq	$.L.str.118, %rdi
	callq	AddStr
.LBB20_38:                              # %if.end.39
	movl	$10, -8(%rbp)
	jmp	.LBB20_40
.LBB20_39:                              # %sw.bb.40
	callq	ClearAll
	movl	$12, -8(%rbp)
.LBB20_40:                              # %sw.epilog
	movq	displays, %rax
	cmpq	$0, (%rax)
	jne	.LBB20_49
# BB#41:                                # %if.then.42
	movq	windows, %rax
	movq	%rax, -32(%rbp)
.LBB20_42:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_48
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB20_42 Depth=1
	movq	$-1, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB20_46
# BB#44:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_42 Depth=1
	movq	-32(%rbp), %rax
	movl	11528(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	jne	.LBB20_46
# BB#45:                                # %if.then.46
                                        #   in Loop: Header=BB20_42 Depth=1
	movq	-32(%rbp), %rdi
	callq	RemoveUtmp
	movq	-32(%rbp), %rdi
	movq	$0, 11536(%rdi)
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB20_46:                              # %if.end.49
                                        #   in Loop: Header=BB20_42 Depth=1
	jmp	.LBB20_47
.LBB20_47:                              # %for.inc
                                        #   in Loop: Header=BB20_42 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB20_42
.LBB20_48:                              # %for.end
	jmp	.LBB20_49
.LBB20_49:                              # %if.end.50
	cmpl	$6, -4(%rbp)
	je	.LBB20_51
# BB#50:                                # %if.then.52
	callq	RestoreLoginSlot
.LBB20_51:                              # %if.end.53
	movq	displays, %rax
	cmpq	$0, (%rax)
	jne	.LBB20_58
# BB#52:                                # %land.lhs.true.56
	cmpq	$0, console_window
	je	.LBB20_58
# BB#53:                                # %if.then.58
	xorl	%esi, %esi
	movabsq	$.L.str.121, %rdx
	movq	console_window, %rax
	movl	524(%rax), %edi
	callq	TtyGrabConsole
	cmpl	$0, %eax
	je	.LBB20_57
# BB#54:                                # %if.then.61
	jmp	.LBB20_55
.LBB20_55:                              # %do.body.62
	jmp	.LBB20_56
.LBB20_56:                              # %do.end.63
	movq	console_window, %rdi
	callq	KillWindow
	movq	displays, %rdi
	movq	%rdi, display
.LBB20_57:                              # %if.end.64
	jmp	.LBB20_58
.LBB20_58:                              # %if.end.65
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB20_63
# BB#59:                                # %if.then.67
	movq	display, %rdi
	movq	display, %rax
	movq	376(%rax), %rsi
	callq	ReleaseAutoWritelock
	movq	display, %rsi
	movq	376(%rsi), %rsi
	movl	192(%rsi), %ecx
	movq	display, %rsi
	movq	8(%rsi), %rsi
	movl	%ecx, 284(%rsi)
	movq	display, %rsi
	cmpq	$0, 384(%rsi)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB20_61
# BB#60:                                # %cond.true
	movq	display, %rax
	movq	384(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB20_62
.LBB20_61:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB20_62
.LBB20_62:                              # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	display, %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 288(%rcx)
.LBB20_63:                              # %if.end.75
	movq	display, %rax
	movq	344(%rax), %rdi
	callq	AutosaveLayout
	movq	display, %rax
	movq	344(%rax), %rax
	movq	%rax, layout_last
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB20_64:                              # %for.cond.77
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB20_69
# BB#65:                                # %for.body.79
                                        #   in Loop: Header=BB20_64 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	SetCanvasWindow
	cmpq	$0, -32(%rbp)
	je	.LBB20_67
# BB#66:                                # %if.then.81
                                        #   in Loop: Header=BB20_64 Depth=1
	movl	$117, %esi
	movq	-32(%rbp), %rdi
	callq	WindowChanged
.LBB20_67:                              # %if.end.82
                                        #   in Loop: Header=BB20_64 Depth=1
	jmp	.LBB20_68
.LBB20_68:                              # %for.inc.83
                                        #   in Loop: Header=BB20_64 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB20_64
.LBB20_69:                              # %for.end.84
	movq	display, %rax
	movl	800(%rax), %ecx
	movl	%ecx, -12(%rbp)
# BB#70:                                # %do.body.85
	jmp	.LBB20_71
.LBB20_71:                              # %do.end.86
	callq	FreeDisplay
	cmpq	$0, displays
	jne	.LBB20_73
# BB#72:                                # %if.then.88
	callq	chsock
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB20_73:                              # %if.end.90
	movl	-12(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	Kill
# BB#74:                                # %do.body.91
	jmp	.LBB20_75
.LBB20_75:                              # %do.end.92
	jmp	.LBB20_76
.LBB20_76:                              # %do.body.93
	jmp	.LBB20_77
.LBB20_77:                              # %do.end.94
	movl	$1, %edi
	movabsq	$SigHup, %rsi
	callq	xsignal
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB20_78:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Detach, .Lfunc_end20-Detach
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_10
	.quad	.LBB20_16
	.quad	.LBB20_17
	.quad	.LBB20_23
	.quad	.LBB20_31
	.quad	.LBB20_39
	.quad	.LBB20_9

	.text
	.align	16, 0x90
	.type	IsSymbol,@function
IsSymbol:                               # @IsSymbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	strncmp
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -21(%rbp)         # 1-byte Spill
	jne	.LBB21_2
# BB#1:                                 # %land.rhs
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$61, %edx
	sete	%sil
	movb	%sil, -21(%rbp)         # 1-byte Spill
.LBB21_2:                               # %land.end
	movb	-21(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	IsSymbol, .Lfunc_end21-IsSymbol
	.cfi_endproc

	.globl	QueryMsg
	.align	16, 0x90
	.type	QueryMsg,@function
QueryMsg:                               # @QueryMsg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$8656, %rsp             # imm = 0x21D0
	testb	%al, %al
	movaps	%xmm7, -8432(%rbp)      # 16-byte Spill
	movaps	%xmm6, -8448(%rbp)      # 16-byte Spill
	movaps	%xmm5, -8464(%rbp)      # 16-byte Spill
	movaps	%xmm4, -8480(%rbp)      # 16-byte Spill
	movaps	%xmm3, -8496(%rbp)      # 16-byte Spill
	movaps	%xmm2, -8512(%rbp)      # 16-byte Spill
	movaps	%xmm1, -8528(%rbp)      # 16-byte Spill
	movaps	%xmm0, -8544(%rbp)      # 16-byte Spill
	movl	%edi, -8548(%rbp)       # 4-byte Spill
	movq	%r9, -8560(%rbp)        # 8-byte Spill
	movq	%r8, -8568(%rbp)        # 8-byte Spill
	movq	%rcx, -8576(%rbp)       # 8-byte Spill
	movq	%rdx, -8584(%rbp)       # 8-byte Spill
	movq	%rsi, -8592(%rbp)       # 8-byte Spill
	je	.LBB22_9
# BB#8:                                 # %entry
	movaps	-8544(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -8368(%rbp)
	movaps	-8528(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -8352(%rbp)
	movaps	-8512(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -8336(%rbp)
	movaps	-8496(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -8320(%rbp)
	movaps	-8480(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -8304(%rbp)
	movaps	-8464(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -8288(%rbp)
	movaps	-8448(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -8272(%rbp)
	movaps	-8432(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -8256(%rbp)
.LBB22_9:                               # %entry
	movq	-8560(%rbp), %rax       # 8-byte Reload
	movq	%rax, -8376(%rbp)
	movq	-8568(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -8384(%rbp)
	movq	-8576(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -8392(%rbp)
	movq	-8584(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -8400(%rbp)
	movq	-8592(%rbp), %rdi       # 8-byte Reload
	movl	-8548(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, -4(%rbp)
	movq	%rdi, -16(%rbp)
	cmpl	$0, queryflag
	jge	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_7
.LBB22_2:                               # %if.end
	jmp	.LBB22_3
.LBB22_3:                               # %do.body
	leaq	-8240(%rbp), %rax
	leaq	-8208(%rbp), %rcx
	movq	%rcx, -8216(%rbp)
	leaq	-8416(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$16, (%rax)
	movq	-16(%rbp), %rdi
	callq	DoNLS
	movl	$8092, %edx             # imm = 0x1F9C
	movl	%edx, %esi
	leaq	-8240(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	-8216(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	vsnprintf
	leaq	-8240(%rbp), %rcx
	cmpl	$0, -4(%rbp)
	movl	%eax, -8596(%rbp)       # 4-byte Spill
	movq	%rcx, -8608(%rbp)       # 8-byte Spill
	je	.LBB22_5
# BB#4:                                 # %if.then.7
	movq	-8216(%rbp), %rdi
	callq	strlen
	addq	-8216(%rbp), %rax
	movq	%rax, -8216(%rbp)
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8216(%rbp)
	movb	$58, (%rax)
	movq	-8216(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8216(%rbp)
	movb	$32, (%rax)
	movq	-8216(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -8616(%rbp)       # 8-byte Spill
	movl	%ecx, %edi
	callq	strerror
	leaq	-8208(%rbp), %rdx
	addq	$8192, %rdx             # imm = 0x2000
	movq	-8216(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$1, %rdx
	movq	-8616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, -17(%rbp)
	movq	%rax, -8624(%rbp)       # 8-byte Spill
.LBB22_5:                               # %if.end.14
	jmp	.LBB22_6
.LBB22_6:                               # %do.end
	leaq	-8208(%rbp), %rax
	movl	queryflag, %edi
	movl	%edi, -8628(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	%rax, -8640(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-8628(%rbp), %edi       # 4-byte Reload
	movq	-8640(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -8648(%rbp)       # 8-byte Spill
.LBB22_7:                               # %return
	addq	$8656, %rsp             # imm = 0x21D0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	QueryMsg, .Lfunc_end22-QueryMsg
	.cfi_endproc

	.globl	Dummy
	.align	16, 0x90
	.type	Dummy,@function
Dummy:                                  # @Dummy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Dummy, .Lfunc_end23-Dummy
	.cfi_endproc

	.globl	setbacktick
	.align	16, 0x90
	.type	setbacktick,@function
setbacktick:                            # @setbacktick
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB24_2
.LBB24_2:                               # %do.end
	movabsq	$backticks, %rax
	movq	%rax, -32(%rbp)
.LBB24_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB24_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	jne	.LBB24_6
# BB#5:                                 # %if.then
	jmp	.LBB24_8
.LBB24_6:                               # %if.end
                                        #   in Loop: Header=BB24_3 Depth=1
	jmp	.LBB24_7
.LBB24_7:                               # %for.inc
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB24_3
.LBB24_8:                               # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB24_11
# BB#9:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	jne	.LBB24_11
# BB#10:                                # %if.then.4
	jmp	.LBB24_37
.LBB24_11:                              # %if.end.5
	cmpq	$0, -40(%rbp)
	je	.LBB24_21
# BB#12:                                # %if.then.7
	movq	-40(%rbp), %rax
	movq	800(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB24_13:                              # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_16
# BB#14:                                # %for.body.11
                                        #   in Loop: Header=BB24_13 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
# BB#15:                                # %for.inc.12
                                        #   in Loop: Header=BB24_13 Depth=1
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB24_13
.LBB24_16:                              # %for.end.13
	movq	-40(%rbp), %rax
	movq	800(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	cmpq	$0, 888(%rax)
	je	.LBB24_18
# BB#17:                                # %if.then.16
	movq	-40(%rbp), %rax
	movq	888(%rax), %rdi
	callq	free
.LBB24_18:                              # %if.end.18
	movq	-40(%rbp), %rax
	cmpl	$0, 832(%rax)
	jl	.LBB24_20
# BB#19:                                # %if.then.20
	movq	-40(%rbp), %rax
	movl	832(%rax), %edi
	callq	close
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB24_20:                              # %if.end.23
	movq	-40(%rbp), %rax
	addq	$808, %rax              # imm = 0x328
	movq	%rax, %rdi
	callq	evdeq
.LBB24_21:                              # %if.end.25
	cmpq	$0, -40(%rbp)
	je	.LBB24_24
# BB#22:                                # %land.lhs.true.27
	cmpq	$0, -24(%rbp)
	jne	.LBB24_24
# BB#23:                                # %if.then.29
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB24_37
.LBB24_24:                              # %if.end.31
	cmpq	$0, -40(%rbp)
	jne	.LBB24_28
# BB#25:                                # %if.then.33
	movl	$904, %eax              # imm = 0x388
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_27
# BB#26:                                # %if.then.36
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB24_37
.LBB24_27:                              # %if.end.37
	xorl	%esi, %esi
	movl	$904, %eax              # imm = 0x388
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-40(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
.LBB24_28:                              # %if.end.39
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-40(%rbp), %rcx
	movq	$0, 24(%rcx)
	movq	-40(%rbp), %rcx
	movb	$0, 32(%rcx)
	movq	-40(%rbp), %rcx
	movq	$0, 888(%rcx)
	movq	-40(%rbp), %rcx
	movl	$0, 896(%rcx)
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 800(%rdx)
	movq	-40(%rbp), %rcx
	movl	$-1, 832(%rcx)
	movq	-40(%rbp), %rcx
	cmpl	$0, 12(%rcx)
	jne	.LBB24_37
# BB#29:                                # %land.lhs.true.49
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB24_37
# BB#30:                                # %if.then.52
	jmp	.LBB24_31
.LBB24_31:                              # %do.body.53
	jmp	.LBB24_32
.LBB24_32:                              # %do.end.54
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edi
	callq	malloc
	movq	-40(%rbp), %rdi
	movq	%rax, 888(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 888(%rax)
	jne	.LBB24_34
# BB#33:                                # %if.then.59
	xorl	%edi, %edi
	movabsq	$.L.str.40, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	xorl	%edi, %edi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-4(%rbp), %r8d
	movl	%edi, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %edi
	movl	-56(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	callq	setbacktick
	jmp	.LBB24_37
.LBB24_34:                              # %if.end.60
	movq	-40(%rbp), %rax
	movl	$1, 836(%rax)
	movq	-40(%rbp), %rax
	movq	800(%rax), %rdi
	callq	readpipe
	movabsq	$backtick_fn, %rdi
	movq	-40(%rbp), %rcx
	movl	%eax, 832(%rcx)
	movq	-40(%rbp), %rcx
	movq	%rdi, 816(%rcx)
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rcx, 824(%rdi)
	movq	-40(%rbp), %rcx
	cmpl	$0, 832(%rcx)
	jl	.LBB24_36
# BB#35:                                # %if.then.71
	movq	-40(%rbp), %rax
	addq	$808, %rax              # imm = 0x328
	movq	%rax, %rdi
	callq	evenq
.LBB24_36:                              # %if.end.73
	jmp	.LBB24_37
.LBB24_37:                              # %if.end.74
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	setbacktick, .Lfunc_end24-setbacktick
	.cfi_endproc

	.align	16, 0x90
	.type	backtick_fn,@function
backtick_fn:                            # @backtick_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB25_2
.LBB25_2:                               # %do.end
	movl	$768, %eax              # imm = 0x300
	movq	-24(%rbp), %rcx
	movl	896(%rcx), %edx
	movl	%edx, -28(%rbp)
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edi
	movq	-24(%rbp), %rcx
	movq	888(%rcx), %rcx
	movslq	-28(%rbp), %rsi
	addq	%rsi, %rcx
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	callq	read
	movl	%eax, %edi
	movl	%edi, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jg	.LBB25_6
# BB#3:                                 # %if.then
	jmp	.LBB25_4
.LBB25_4:                               # %do.body.3
	jmp	.LBB25_5
.LBB25_5:                               # %do.end.4
	movq	-8(%rbp), %rdi
	callq	evdeq
	movq	-8(%rbp), %rdi
	movl	24(%rdi), %edi
	callq	close
	movq	-8(%rbp), %rcx
	movl	$-1, 24(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB25_30
.LBB25_6:                               # %if.end
	jmp	.LBB25_7
.LBB25_7:                               # %do.body.8
	jmp	.LBB25_8
.LBB25_8:                               # %do.end.9
	movl	-40(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB25_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB25_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB25_9 Depth=1
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	888(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB25_12
# BB#11:                                # %if.then.18
	jmp	.LBB25_14
.LBB25_12:                              # %if.end.19
                                        #   in Loop: Header=BB25_9 Depth=1
	jmp	.LBB25_13
.LBB25_13:                              # %for.inc
                                        #   in Loop: Header=BB25_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB25_9
.LBB25_14:                              # %for.end
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB25_22
# BB#15:                                # %if.then.22
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -36(%rbp)
.LBB25_16:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB25_21
# BB#17:                                # %for.body.28
                                        #   in Loop: Header=BB25_16 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	888(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB25_19
# BB#18:                                # %if.then.35
	jmp	.LBB25_21
.LBB25_19:                              # %if.end.36
                                        #   in Loop: Header=BB25_16 Depth=1
	jmp	.LBB25_20
.LBB25_20:                              # %for.inc.37
                                        #   in Loop: Header=BB25_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB25_16
.LBB25_21:                              # %for.end.38
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	888(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	$0, 32(%rdx,%rcx)
	movq	-24(%rbp), %rdi
	callq	backtick_filter
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$96, %esi
	callq	WindowChanged
.LBB25_22:                              # %if.end.52
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB25_25
# BB#23:                                # %land.lhs.true
	cmpl	$768, -28(%rbp)         # imm = 0x300
	jne	.LBB25_25
# BB#24:                                # %if.then.57
	movl	$384, -32(%rbp)         # imm = 0x180
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB25_25:                              # %if.end.59
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB25_29
# BB#26:                                # %if.then.62
	cmpl	$0, -32(%rbp)
	je	.LBB25_28
# BB#27:                                # %if.then.63
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	888(%rdx), %rdx
	movslq	-28(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-32(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rcx
	movq	888(%rcx), %rsi
	movslq	-32(%rbp), %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	bcopy
.LBB25_28:                              # %if.end.71
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB25_29:                              # %if.end.72
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 896(%rcx)
.LBB25_30:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	backtick_fn, .Lfunc_end25-backtick_fn
	.cfi_endproc

	.globl	AddWinMsgRend
	.align	16, 0x90
	.type	AddWinMsgRend,@function
AddWinMsgRend:                          # @AddWinMsgRend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$256, winmsg_numrend    # imm = 0x100
	jge	.LBB26_3
# BB#1:                                 # %lor.lhs.false
	movabsq	$winmsg_buf, %rax
	cmpq	%rax, -16(%rbp)
	jb	.LBB26_3
# BB#2:                                 # %lor.lhs.false.2
	movabsq	$winmsg_buf, %rax
	addq	$768, %rax              # imm = 0x300
	cmpq	%rax, -16(%rbp)
	jb	.LBB26_4
.LBB26_3:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.end
	movabsq	$winmsg_buf, %rax
	movl	-20(%rbp), %ecx
	movslq	winmsg_numrend, %rdx
	movl	%ecx, winmsg_rend(,%rdx,4)
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movl	%edx, %ecx
	movslq	winmsg_numrend, %rax
	movl	%ecx, winmsg_rendpos(,%rax,4)
	movl	winmsg_numrend, %ecx
	addl	$1, %ecx
	movl	%ecx, winmsg_numrend
	movl	$0, -4(%rbp)
.LBB26_5:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	AddWinMsgRend, .Lfunc_end26-AddWinMsgRend
	.cfi_endproc

	.globl	MakeWinMsgEv
	.align	16, 0x90
	.type	MakeWinMsgEv,@function
MakeWinMsgEv:                           # @MakeWinMsgEv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$1488, %rsp             # imm = 0x5D0
	movabsq	$winmsg_buf, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	movq	$0, -144(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movl	$-1, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movq	$0, -176(%rbp)
	cmpl	$0, winmsg_numrend
	jl	.LBB27_2
# BB#1:                                 # %if.then
	movl	$0, winmsg_numrend
	jmp	.LBB27_3
.LBB27_2:                               # %if.else
	xorl	%eax, %eax
	subl	winmsg_numrend, %eax
	movl	%eax, winmsg_numrend
.LBB27_3:                               # %if.end
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$0, MakeWinMsgEv.tick
	movq	$0, -88(%rbp)
	movl	$0, -60(%rbp)
	callq	gettimeofday
	movl	%eax, -1148(%rbp)       # 4-byte Spill
.LBB27_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_28 Depth 2
                                        #     Child Loop BB27_160 Depth 2
                                        #     Child Loop BB27_109 Depth 2
                                        #     Child Loop BB27_128 Depth 2
                                        #     Child Loop BB27_81 Depth 2
                                        #     Child Loop BB27_277 Depth 2
                                        #     Child Loop BB27_302 Depth 2
                                        #     Child Loop BB27_314 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1149(%rbp)        # 1-byte Spill
	je	.LBB27_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	addq	$767, %rax              # imm = 0x2FF
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -92(%rbp)
	cmpl	$0, %edx
	setg	%sil
	movb	%sil, -1149(%rbp)       # 1-byte Spill
.LBB27_6:                               # %land.end
                                        #   in Loop: Header=BB27_4 Depth=1
	movb	-1149(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_7
	jmp	.LBB27_335
.LBB27_7:                               # %for.body
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, (%rax)
	cmpl	$0, -60(%rbp)
	je	.LBB27_12
# BB#8:                                 # %if.then.5
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$0, -60(%rbp)
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	je	.LBB27_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$64, %ecx
	jl	.LBB27_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	andl	$31, %ecx
	movb	%cl, %dl
	movb	%dl, (%rax)
.LBB27_11:                              # %if.end.15
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_334
.LBB27_12:                              # %if.end.16
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB27_19
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$37, -20(%rbp)
	jne	.LBB27_18
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$94, %ecx
	movl	%ecx, -1156(%rbp)       # 4-byte Spill
	jne	.LBB27_16
	jmp	.LBB27_15
.LBB27_15:                              # %sw.bb
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$94, (%rax)
	jmp	.LBB27_17
.LBB27_16:                              # %sw.default
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_17
.LBB27_17:                              # %sw.epilog
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_18
.LBB27_18:                              # %if.end.25
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_334
.LBB27_19:                              # %if.end.26
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movsbl	1(%rax), %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB27_21
# BB#20:                                # %if.then.31
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_334
.LBB27_21:                              # %if.end.32
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -120(%rbp)
	cmpl	$0, %ecx
	je	.LBB27_23
# BB#22:                                # %if.then.38
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB27_23:                              # %if.end.40
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, %ecx
	je	.LBB27_25
# BB#24:                                # %if.then.46
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB27_25:                              # %if.end.48
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	$0, %ecx
	je	.LBB27_27
# BB#26:                                # %if.then.54
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB27_27:                              # %if.end.56
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$0, -104(%rbp)
.LBB27_28:                              # %while.cond
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -1157(%rbp)        # 1-byte Spill
	jl	.LBB27_30
# BB#29:                                # %land.rhs.60
                                        #   in Loop: Header=BB27_28 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -1157(%rbp)        # 1-byte Spill
.LBB27_30:                              # %land.end.64
                                        #   in Loop: Header=BB27_28 Depth=2
	movb	-1157(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_31
	jmp	.LBB27_32
.LBB27_31:                              # %while.body
                                        #   in Loop: Header=BB27_28 Depth=2
	imull	$10, -104(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movsbl	(%rcx), %esi
	subl	$48, %esi
	addl	%esi, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB27_28
.LBB27_32:                              # %while.end
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$76, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$0, %ecx
	je	.LBB27_34
# BB#33:                                # %if.then.73
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB27_34:                              # %if.end.75
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	addl	$-58, %ecx
	movl	%ecx, %eax
	subl	$65, %ecx
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	movl	%ecx, -1172(%rbp)       # 4-byte Spill
	ja	.LBB27_325
# BB#353:                               # %if.end.75
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movq	.LJTI27_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB27_35:                              # %sw.bb.77
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB27_43
# BB#36:                                # %if.then.80
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -124(%rbp)
	jne	.LBB27_38
# BB#37:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -128(%rbp)
	je	.LBB27_39
.LBB27_38:                              # %lor.lhs.false
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$1, -128(%rbp)
	jne	.LBB27_42
.LBB27_39:                              # %if.then.86
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	winmsg_numrend, %ecx
	jge	.LBB27_41
# BB#40:                                # %if.then.89
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, winmsg_numrend
.LBB27_41:                              # %if.end.90
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_42
.LBB27_42:                              # %if.end.91
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	$0, -144(%rbp)
	jmp	.LBB27_333
.LBB27_43:                              # %if.end.92
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	winmsg_numrend, %ecx
	movl	%ecx, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -124(%rbp)
	jmp	.LBB27_333
.LBB27_44:                              # %sw.bb.93
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB27_46
# BB#45:                                # %if.then.96
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_46:                              # %if.end.97
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -124(%rbp)
	je	.LBB27_49
# BB#47:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$1, -128(%rbp)
	je	.LBB27_49
# BB#48:                                # %if.then.102
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	winmsg_numrend, %ecx
	movl	%ecx, -132(%rbp)
	jmp	.LBB27_52
.LBB27_49:                              # %if.else.103
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	winmsg_numrend, %ecx
	jge	.LBB27_51
# BB#50:                                # %if.then.106
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, winmsg_numrend
.LBB27_51:                              # %if.end.107
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$-1, -128(%rbp)
.LBB27_52:                              # %if.end.108
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_53:                              # %sw.bb.109
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$4, -92(%rbp)
	jge	.LBB27_55
# BB#54:                                # %if.then.112
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_55:                              # %if.end.113
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB27_57
# BB#56:                                # %if.then.116
                                        #   in Loop: Header=BB27_4 Depth=1
	leaq	-184(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	localtime
	movq	%rax, -88(%rbp)
.LBB27_57:                              # %if.end.118
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
	cmpl	$0, MakeWinMsgEv.tick
	je	.LBB27_59
# BB#58:                                # %lor.lhs.false.120
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$3600, MakeWinMsgEv.tick # imm = 0xE10
	jle	.LBB27_60
.LBB27_59:                              # %if.then.123
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$3600, MakeWinMsgEv.tick # imm = 0xE10
.LBB27_60:                              # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$65, %edx
	movl	%ecx, -1176(%rbp)       # 4-byte Spill
	movl	%edx, -1180(%rbp)       # 4-byte Spill
	je	.LBB27_68
	jmp	.LBB27_354
.LBB27_354:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -1184(%rbp)       # 4-byte Spill
	je	.LBB27_74
	jmp	.LBB27_355
.LBB27_355:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -1188(%rbp)       # 4-byte Spill
	je	.LBB27_62
	jmp	.LBB27_356
.LBB27_356:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -1192(%rbp)       # 4-byte Spill
	je	.LBB27_64
	jmp	.LBB27_357
.LBB27_357:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$89, %eax
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	je	.LBB27_66
	jmp	.LBB27_358
.LBB27_358:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -1200(%rbp)       # 4-byte Spill
	je	.LBB27_67
	jmp	.LBB27_359
.LBB27_359:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	je	.LBB27_70
	jmp	.LBB27_360
.LBB27_360:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -1208(%rbp)       # 4-byte Spill
	je	.LBB27_61
	jmp	.LBB27_361
.LBB27_361:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	je	.LBB27_63
	jmp	.LBB27_362
.LBB27_362:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	je	.LBB27_69
	jmp	.LBB27_363
.LBB27_363:                             # %if.end.124
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1176(%rbp), %eax       # 4-byte Reload
	subl	$121, %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	je	.LBB27_65
	jmp	.LBB27_78
.LBB27_61:                              # %sw.bb.126
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.130, %rsi
	movl	$100, %eax
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%eax, -1224(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1224(%rbp), %r8d       # 4-byte Reload
	idivl	%r8d
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_62:                              # %sw.bb.128
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.132, %rax
	movabsq	$.L.str.131, %rcx
	movq	-56(%rbp), %rdi
	movslq	-92(%rbp), %rsi
	cmpl	$0, -112(%rbp)
	cmovneq	%rcx, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	strftime
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB27_79
.LBB27_63:                              # %sw.bb.132
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.130, %rsi
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_64:                              # %sw.bb.135
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.134, %rax
	movabsq	$.L.str.133, %rcx
	movq	-56(%rbp), %rdi
	movslq	-92(%rbp), %rsi
	cmpl	$0, -112(%rbp)
	cmovneq	%rcx, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	strftime
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB27_79
.LBB27_65:                              # %sw.bb.140
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.130, %rsi
	movl	$100, %eax
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	20(%rcx), %edx
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1260(%rbp), %r8d       # 4-byte Reload
	idivl	%r8d
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1264(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_66:                              # %sw.bb.143
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.135, %rsi
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1900, %ecx             # imm = 0x76C
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1268(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_67:                              # %sw.bb.147
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.137, %rax
	movabsq	$.L.str.136, %rcx
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rdx
	cmpl	$12, 8(%rdx)
	cmovgeq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1272(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_68:                              # %sw.bb.152
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.139, %rax
	movabsq	$.L.str.138, %rcx
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rdx
	cmpl	$12, 8(%rdx)
	cmovgeq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_69:                              # %sw.bb.158
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.130, %rsi
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	$1, MakeWinMsgEv.tick
	movl	%eax, -1280(%rbp)       # 4-byte Spill
	jmp	.LBB27_79
.LBB27_70:                              # %sw.bb.160
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.141, %rax
	movabsq	$.L.str.140, %rcx
	movq	-56(%rbp), %rdi
	cmpl	$0, -108(%rbp)
	cmovneq	%rcx, %rax
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-88(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	cmpl	$0, MakeWinMsgEv.tick
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	je	.LBB27_72
# BB#71:                                # %lor.lhs.false.166
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$60, MakeWinMsgEv.tick
	jle	.LBB27_73
.LBB27_72:                              # %if.then.169
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$60, MakeWinMsgEv.tick
.LBB27_73:                              # %if.end.170
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_79
.LBB27_74:                              # %sw.bb.171
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$12, %eax
	movabsq	$.L.str.141, %rcx
	movabsq	$.L.str.140, %rdx
	movq	-56(%rbp), %rdi
	cmpl	$0, -108(%rbp)
	cmovneq	%rdx, %rcx
	movq	-88(%rbp), %rdx
	movl	8(%rdx), %esi
	addl	$11, %esi
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1288(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	$1, %edx
	movq	-88(%rbp), %r8
	movl	4(%r8), %r9d
	movq	%rcx, %rsi
	movl	%r9d, %ecx
	movb	$0, %al
	callq	sprintf
	cmpl	$0, MakeWinMsgEv.tick
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	je	.LBB27_76
# BB#75:                                # %lor.lhs.false.181
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$60, MakeWinMsgEv.tick
	jle	.LBB27_77
.LBB27_76:                              # %if.then.184
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$60, MakeWinMsgEv.tick
.LBB27_77:                              # %if.end.185
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_79
.LBB27_78:                              # %sw.default.186
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_79
.LBB27_79:                              # %sw.epilog.187
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_80:                              # %sw.bb.190
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -96(%rbp)
.LBB27_81:                              # %for.cond.191
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -1293(%rbp)        # 1-byte Spill
	je	.LBB27_83
# BB#82:                                # %land.rhs.193
                                        #   in Loop: Header=BB27_81 Depth=2
	movslq	-96(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 11000(%rcx,%rax,8)
	setne	%dl
	movb	%dl, -1293(%rbp)        # 1-byte Spill
.LBB27_83:                              # %land.end.195
                                        #   in Loop: Header=BB27_81 Depth=2
	movb	-1293(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_84
	jmp	.LBB27_91
.LBB27_84:                              # %for.body.196
                                        #   in Loop: Header=BB27_81 Depth=2
	movslq	-92(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	11000(%rdx,%rcx,8), %rdi
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB27_86
# BB#85:                                # %if.then.205
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_91
.LBB27_86:                              # %if.end.206
                                        #   in Loop: Header=BB27_81 Depth=2
	movabsq	$.L.str.142, %rax
	movabsq	$.L.str.40, %rcx
	movq	-56(%rbp), %rdi
	cmpl	$0, -96(%rbp)
	cmovneq	%rcx, %rax
	movslq	-96(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	11000(%rdx,%rcx,8), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movq	-56(%rbp), %rdi
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	callq	strlen
	movslq	-92(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %r8d
	movl	%r8d, -92(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -96(%rbp)
	jne	.LBB27_89
# BB#87:                                # %land.lhs.true.221
                                        #   in Loop: Header=BB27_81 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$88, %ecx
	jne	.LBB27_89
# BB#88:                                # %if.then.225
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_91
.LBB27_89:                              # %if.end.226
                                        #   in Loop: Header=BB27_81 Depth=2
	jmp	.LBB27_90
.LBB27_90:                              # %for.inc
                                        #   in Loop: Header=BB27_81 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB27_81
.LBB27_91:                              # %for.end
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_92:                              # %sw.bb.228
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$20, -92(%rbp)
	jle	.LBB27_94
# BB#93:                                # %if.then.231
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	AddLoadav
.LBB27_94:                              # %if.end.232
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_96
# BB#95:                                # %if.then.234
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_97
.LBB27_96:                              # %if.else.238
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$63, (%rax)
.LBB27_97:                              # %if.end.239
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, MakeWinMsgEv.tick
	je	.LBB27_99
# BB#98:                                # %lor.lhs.false.241
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$60, MakeWinMsgEv.tick
	jle	.LBB27_100
.LBB27_99:                              # %if.then.244
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$60, MakeWinMsgEv.tick
.LBB27_100:                             # %if.end.245
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_101:                             # %sw.bb.249
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$10, -36(%rbp)
	jge	.LBB27_106
# BB#102:                               # %lor.lhs.false.252
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$104, %ecx
	jne	.LBB27_107
# BB#103:                               # %land.lhs.true.256
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB27_106
# BB#104:                               # %lor.lhs.false.259
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 10000(%rax)
	je	.LBB27_106
# BB#105:                               # %lor.lhs.false.262
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	movq	10000(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB27_107
.LBB27_106:                             # %if.then.267
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_107:                             # %if.end.269
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$96, %ecx
	jne	.LBB27_117
# BB#108:                               # %if.then.273
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	backticks, %rax
	movq	%rax, -176(%rbp)
.LBB27_109:                             # %for.cond.274
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -176(%rbp)
	je	.LBB27_114
# BB#110:                               # %for.body.276
                                        #   in Loop: Header=BB27_109 Depth=2
	movq	-176(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-104(%rbp), %ecx
	jne	.LBB27_112
# BB#111:                               # %if.then.280
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_114
.LBB27_112:                             # %if.end.281
                                        #   in Loop: Header=BB27_109 Depth=2
	jmp	.LBB27_113
.LBB27_113:                             # %for.inc.282
                                        #   in Loop: Header=BB27_109 Depth=2
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB27_109
.LBB27_114:                             # %for.end.283
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -176(%rbp)
	jne	.LBB27_116
# BB#115:                               # %if.then.286
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_116:                             # %if.end.288
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_117
.LBB27_117:                             # %if.end.289
                                        #   in Loop: Header=BB27_4 Depth=1
	xorl	%eax, %eax
	leaq	-960(%rbp), %rdi
	movl	MakeWinMsgEv.tick, %ecx
	movl	%ecx, -964(%rbp)
	movl	winmsg_numrend, %ecx
	movl	%ecx, -968(%rbp)
	movq	-56(%rbp), %rdx
	movb	$0, (%rdx)
	movl	$winmsg_buf, %ecx
	movl	%ecx, %esi
	movl	%eax, -1312(%rbp)       # 4-byte Spill
	callq	strcpy
	movl	-1312(%rbp), %ecx       # 4-byte Reload
	subl	winmsg_numrend, %ecx
	movl	%ecx, winmsg_numrend
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %ecx
	cmpl	$104, %ecx
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jne	.LBB27_119
# BB#118:                               # %cond.true
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	movq	10000(%rax), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB27_120
.LBB27_119:                             # %cond.false
                                        #   in Loop: Header=BB27_4 Depth=1
	leaq	-964(%rbp), %rsi
	movq	-176(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	runbacktick
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB27_120:                             # %cond.end
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movl	$5, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -1332(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movl	-1332(%rbp), %r9d       # 4-byte Reload
	callq	MakeWinMsgEv
	movq	%rax, -1344(%rbp)       # 8-byte Spill
# BB#121:                               # %do.body
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_122
.LBB27_122:                             # %do.end
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, MakeWinMsgEv.tick
	je	.LBB27_124
# BB#123:                               # %lor.lhs.false.302
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-964(%rbp), %eax
	cmpl	MakeWinMsgEv.tick, %eax
	jge	.LBB27_125
.LBB27_124:                             # %if.then.305
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-964(%rbp), %eax
	movl	%eax, MakeWinMsgEv.tick
.LBB27_125:                             # %if.end.306
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$winmsg_buf, %eax
	movl	%eax, %edi
	callq	strlen
	movl	%eax, %ecx
	cmpl	-92(%rbp), %ecx
	jge	.LBB27_127
# BB#126:                               # %if.then.311
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rsi
	leaq	-960(%rbp), %rdi
	callq	strcat
	movq	%rax, -1352(%rbp)       # 8-byte Spill
.LBB27_127:                             # %if.end.314
                                        #   in Loop: Header=BB27_4 Depth=1
	leaq	-960(%rbp), %rsi
	movl	$winmsg_buf, %eax
	movl	%eax, %edi
	callq	strcpy
	movq	%rax, -1360(%rbp)       # 8-byte Spill
.LBB27_128:                             # %while.cond.317
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-968(%rbp), %eax
	cmpl	winmsg_numrend, %eax
	jge	.LBB27_130
# BB#129:                               # %while.body.320
                                        #   in Loop: Header=BB27_128 Depth=2
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	-968(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -968(%rbp)
	movslq	%edx, %rax
	movslq	winmsg_rendpos(,%rax,4), %rdi
	addq	%rcx, %rdi
	movl	%edi, %edx
	movl	%edx, winmsg_rendpos(,%rax,4)
	jmp	.LBB27_128
.LBB27_130:                             # %while.end.328
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_132
# BB#131:                               # %if.then.330
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_132:                             # %if.end.331
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_133:                             # %sw.bb.335
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	$0, -976(%rbp)
	cmpq	$0, display
	je	.LBB27_135
# BB#134:                               # %if.then.337
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, -976(%rbp)
	movq	-16(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 376(%rcx)
.LBB27_135:                             # %if.end.339
                                        #   in Loop: Header=BB27_4 Depth=1
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	$1, %edi
	movq	-56(%rbp), %r8
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movq	-48(%rbp), %r10
	movsbl	(%r10), %r11d
	cmpl	$119, %r11d
	cmovel	%eax, %edi
	cmpl	$0, -112(%rbp)
	cmovnel	%eax, %esi
	orl	%esi, %edi
	cmpl	$0, -120(%rbp)
	movl	%eax, %esi
	cmovnel	%edx, %esi
	orl	%esi, %edi
	cmpl	$0, -116(%rbp)
	cmovnel	%ecx, %eax
	orl	%eax, %edi
	cmpq	$0, -16(%rbp)
	movl	%r9d, -1364(%rbp)       # 4-byte Spill
	movl	%edi, -1368(%rbp)       # 4-byte Spill
	movq	%r8, -1376(%rbp)        # 8-byte Spill
	je	.LBB27_137
# BB#136:                               # %cond.true.354
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -1380(%rbp)       # 4-byte Spill
	jmp	.LBB27_138
.LBB27_137:                             # %cond.false.355
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -1380(%rbp)       # 4-byte Spill
	jmp	.LBB27_138
.LBB27_138:                             # %cond.end.356
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1380(%rbp), %eax       # 4-byte Reload
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movl	-1364(%rbp), %esi       # 4-byte Reload
	movl	-1368(%rbp), %edx       # 4-byte Reload
	movl	%eax, %ecx
	callq	AddWindows
	movq	%rax, -984(%rbp)
	cmpq	$0, display
	je	.LBB27_140
# BB#139:                               # %if.then.360
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-976(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 376(%rcx)
.LBB27_140:                             # %if.end.362
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_142
# BB#141:                               # %if.then.364
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_142:                             # %if.end.365
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_143:                             # %sw.bb.369
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB27_145
# BB#144:                               # %if.then.371
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	AddOtherUsers
	movq	%rax, -1392(%rbp)       # 8-byte Spill
.LBB27_145:                             # %if.end.374
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_147
# BB#146:                               # %if.then.376
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_147:                             # %if.end.377
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_148:                             # %sw.bb.381
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB27_150
# BB#149:                               # %if.then.383
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	AddWindowFlags
	movq	%rax, -1400(%rbp)       # 8-byte Spill
.LBB27_150:                             # %if.end.386
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB27_152
# BB#151:                               # %if.then.388
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_152:                             # %if.end.389
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_153:                             # %sw.bb.393
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB27_158
# BB#154:                               # %land.lhs.true.395
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	movq	8736(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	cmpl	-92(%rbp), %ecx
	jge	.LBB27_158
# BB#155:                               # %if.then.400
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8736(%rax), %rsi
	callq	strcpy
	movq	-56(%rbp), %rsi
	cmpb	$0, (%rsi)
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	je	.LBB27_157
# BB#156:                               # %if.then.404
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_157:                             # %if.end.405
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_158
.LBB27_158:                             # %if.end.406
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_159:                             # %sw.bb.410
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -96(%rbp)
.LBB27_160:                             # %for.cond.412
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$127, -96(%rbp)
	jge	.LBB27_167
# BB#161:                               # %for.body.415
                                        #   in Loop: Header=BB27_160 Depth=2
	movslq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB27_164
# BB#162:                               # %land.lhs.true.420
                                        #   in Loop: Header=BB27_160 Depth=2
	movslq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	je	.LBB27_164
# BB#163:                               # %if.then.426
                                        #   in Loop: Header=BB27_160 Depth=2
	movslq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-96(%rbp), %rax
	movb	%dl, -1120(%rbp,%rax)
	jmp	.LBB27_165
.LBB27_164:                             # %if.else.431
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_167
.LBB27_165:                             # %if.end.432
                                        #   in Loop: Header=BB27_160 Depth=2
	jmp	.LBB27_166
.LBB27_166:                             # %for.inc.433
                                        #   in Loop: Header=BB27_160 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB27_160
.LBB27_167:                             # %for.end.435
                                        #   in Loop: Header=BB27_4 Depth=1
	movslq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	jne	.LBB27_179
# BB#168:                               # %land.lhs.true.441
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$256, winmsg_numrend    # imm = 0x100
	jge	.LBB27_179
# BB#169:                               # %if.then.444
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$-1, -100(%rbp)
	movslq	-96(%rbp), %rax
	movb	$0, -1120(%rbp,%rax)
# BB#170:                               # %do.body.447
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_171
.LBB27_171:                             # %do.end.448
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$1, -96(%rbp)
	jne	.LBB27_173
# BB#172:                               # %lor.lhs.false.451
                                        #   in Loop: Header=BB27_4 Depth=1
	movsbl	-1120(%rbp), %eax
	cmpl	$45, %eax
	je	.LBB27_174
.LBB27_173:                             # %if.then.456
                                        #   in Loop: Header=BB27_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	leaq	-1120(%rbp), %rdi
	callq	ParseAttrColor
	movl	%eax, -100(%rbp)
.LBB27_174:                             # %if.end.459
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$-1, -100(%rbp)
	jne	.LBB27_177
# BB#175:                               # %lor.lhs.false.462
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$1, -96(%rbp)
	jne	.LBB27_178
# BB#176:                               # %land.lhs.true.465
                                        #   in Loop: Header=BB27_4 Depth=1
	movsbl	-1120(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB27_178
.LBB27_177:                             # %if.then.470
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movl	-100(%rbp), %ecx
	movslq	winmsg_numrend, %rdx
	movl	%ecx, winmsg_rend(,%rdx,4)
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movl	%edx, %ecx
	movslq	winmsg_numrend, %rax
	movl	%ecx, winmsg_rendpos(,%rax,4)
	movl	winmsg_numrend, %ecx
	addl	$1, %ecx
	movl	%ecx, winmsg_numrend
.LBB27_178:                             # %if.end.479
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_179
.LBB27_179:                             # %if.end.480
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-96(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movq	-56(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB27_333
.LBB27_180:                             # %sw.bb.483
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movl	$HostName, %ecx
	movl	%ecx, %edi
	callq	strlen
	movl	%eax, %ecx
	cmpl	-92(%rbp), %ecx
	jge	.LBB27_184
# BB#181:                               # %if.then.488
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	movl	$HostName, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	-56(%rbp), %rsi
	cmpb	$0, (%rsi)
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	je	.LBB27_183
# BB#182:                               # %if.then.491
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_183:                             # %if.end.492
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_184
.LBB27_184:                             # %if.end.493
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_185:                             # %sw.bb.497
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$46, %esi
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	SockName, %rdi
	callq	strchr
	addq	$1, %rax
	movq	%rax, -1128(%rbp)
	movq	-1128(%rbp), %rdi
	callq	strlen
	movl	%eax, %esi
	cmpl	-92(%rbp), %esi
	jge	.LBB27_189
# BB#186:                               # %if.then.504
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	movq	-1128(%rbp), %rsi
	callq	strcpy
	movq	-56(%rbp), %rsi
	cmpb	$0, (%rsi)
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	je	.LBB27_188
# BB#187:                               # %if.then.507
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_188:                             # %if.end.508
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_189
.LBB27_189:                             # %if.end.509
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_190:                             # %sw.bb.513
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rdi
	cmpl	$0, -120(%rbp)
	movq	%rdi, -1432(%rbp)       # 8-byte Spill
	je	.LBB27_193
# BB#191:                               # %land.lhs.true.515
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, display
	je	.LBB27_193
# BB#192:                               # %cond.true.517
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	display, %rax
	movl	800(%rax), %ecx
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
	jmp	.LBB27_194
.LBB27_193:                             # %cond.false.518
                                        #   in Loop: Header=BB27_4 Depth=1
	callq	getpid
	movl	%eax, -1436(%rbp)       # 4-byte Spill
.LBB27_194:                             # %cond.end.520
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1436(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.143, %rsi
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movq	-56(%rbp), %rdi
	movl	%eax, -1440(%rbp)       # 4-byte Spill
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_333
.LBB27_195:                             # %sw.bb.526
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, display
	je	.LBB27_202
# BB#196:                               # %land.lhs.true.529
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB27_198
# BB#197:                               # %land.lhs.true.531
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-32(%rbp), %rax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	addq	$232, %rcx
	cmpq	%rcx, %rax
	je	.LBB27_201
.LBB27_198:                             # %lor.lhs.false.534
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB27_202
# BB#199:                               # %land.lhs.true.536
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB27_202
# BB#200:                               # %land.lhs.true.538
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-16(%rbp), %rax
	movq	display, %rcx
	cmpq	376(%rcx), %rax
	jne	.LBB27_202
.LBB27_201:                             # %if.then.542
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -116(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -116(%rbp)
.LBB27_202:                             # %if.end.544
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -116(%rbp)
	je	.LBB27_204
# BB#203:                               # %if.then.546
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_204:                             # %if.end.547
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_205:                             # %sw.bb.548
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, display
	je	.LBB27_212
# BB#206:                               # %land.lhs.true.551
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB27_212
# BB#207:                               # %land.lhs.true.553
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-32(%rbp), %rax
	movq	display, %rcx
	addq	$704, %rcx              # imm = 0x2C0
	cmpq	%rcx, %rax
	je	.LBB27_212
# BB#208:                               # %if.then.556
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -1136(%rbp)
	movq	-32(%rbp), %rax
	movq	-1136(%rbp), %rcx
	addq	$232, %rcx
	cmpq	%rcx, %rax
	jne	.LBB27_211
# BB#209:                               # %land.lhs.true.560
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$MarkLf, %rax
	movq	-1136(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB27_211
# BB#210:                               # %if.then.563
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_211:                             # %if.end.564
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_212
.LBB27_212:                             # %if.end.565
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_213:                             # %sw.bb.566
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, display
	je	.LBB27_216
# BB#214:                               # %land.lhs.true.569
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	display, %rax
	cmpq	$0, 792(%rax)
	je	.LBB27_216
# BB#215:                               # %if.then.571
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
.LBB27_216:                             # %if.end.572
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_217:                             # %sw.bb.573
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -156(%rbp)
	cmpl	$100, -104(%rbp)
	jle	.LBB27_219
# BB#218:                               # %cond.true.579
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$100, %eax
	movl	%eax, -1444(%rbp)       # 4-byte Spill
	jmp	.LBB27_220
.LBB27_219:                             # %cond.false.580
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -1444(%rbp)       # 4-byte Spill
.LBB27_220:                             # %cond.end.581
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1444(%rbp), %eax       # 4-byte Reload
	movl	%eax, -160(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -164(%rbp)
	movq	-56(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB27_333
.LBB27_221:                             # %sw.bb.584
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$32, (%rax)
	cmpl	$0, -104(%rbp)
	jne	.LBB27_226
# BB#222:                               # %lor.lhs.false.586
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -108(%rbp)
	jne	.LBB27_226
# BB#223:                               # %lor.lhs.false.588
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -120(%rbp)
	jne	.LBB27_226
# BB#224:                               # %lor.lhs.false.590
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -112(%rbp)
	jne	.LBB27_226
# BB#225:                               # %lor.lhs.false.592
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	je	.LBB27_320
.LBB27_226:                             # %if.then.596
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -116(%rbp)
	je	.LBB27_234
# BB#227:                               # %if.then.598
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -120(%rbp)
	je	.LBB27_229
# BB#228:                               # %cond.true.600
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -1448(%rbp)       # 4-byte Spill
	jmp	.LBB27_230
.LBB27_229:                             # %cond.false.601
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -1448(%rbp)       # 4-byte Spill
.LBB27_230:                             # %cond.end.602
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1448(%rbp), %eax       # 4-byte Reload
	subl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -120(%rbp)
	jne	.LBB27_233
# BB#231:                               # %land.lhs.true.606
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB27_233
# BB#232:                               # %if.then.609
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -104(%rbp)
.LBB27_233:                             # %if.end.613
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$0, -120(%rbp)
	jmp	.LBB27_249
.LBB27_234:                             # %if.else.614
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -108(%rbp)
	jne	.LBB27_248
# BB#235:                               # %if.then.616
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	je	.LBB27_239
# BB#236:                               # %land.lhs.true.620
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -104(%rbp)
	jne	.LBB27_239
# BB#237:                               # %land.lhs.true.623
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -120(%rbp)
	jne	.LBB27_239
# BB#238:                               # %if.then.625
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$100, -104(%rbp)
.LBB27_239:                             # %if.end.626
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$100, -104(%rbp)
	jle	.LBB27_241
# BB#240:                               # %if.then.629
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$100, -104(%rbp)
.LBB27_241:                             # %if.end.630
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB27_243
# BB#242:                               # %if.then.633
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -104(%rbp)
	jmp	.LBB27_247
.LBB27_243:                             # %if.else.637
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-24(%rbp), %eax
	cmpl	$0, -120(%rbp)
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	je	.LBB27_245
# BB#244:                               # %cond.true.639
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -1456(%rbp)       # 4-byte Spill
	jmp	.LBB27_246
.LBB27_245:                             # %cond.false.640
                                        #   in Loop: Header=BB27_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1456(%rbp)       # 4-byte Spill
	jmp	.LBB27_246
.LBB27_246:                             # %cond.end.641
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1456(%rbp), %eax       # 4-byte Reload
	movl	$100, %ecx
	movl	-1452(%rbp), %edx       # 4-byte Reload
	subl	%eax, %edx
	imull	-104(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -104(%rbp)
.LBB27_247:                             # %if.end.645
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_248
.LBB27_248:                             # %if.end.646
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_249
.LBB27_249:                             # %if.end.647
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -104(%rbp)
	jge	.LBB27_251
# BB#250:                               # %if.then.650
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$0, -104(%rbp)
.LBB27_251:                             # %if.end.651
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -120(%rbp)
	je	.LBB27_253
# BB#252:                               # %if.then.653
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB27_253:                             # %if.end.655
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$767, -104(%rbp)        # imm = 0x2FF
	jle	.LBB27_255
# BB#254:                               # %if.then.658
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$767, -104(%rbp)        # imm = 0x2FF
.LBB27_255:                             # %if.end.659
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -148(%rbp)
	je	.LBB27_257
# BB#256:                               # %if.then.661
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rdi
	movq	-56(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-104(%rbp), %ecx
	callq	pad_expand
	movq	%rax, -56(%rbp)
.LBB27_257:                             # %if.end.663
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movl	$0, -148(%rbp)
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-104(%rbp), %rax
	cmpq	%rax, %rcx
	jle	.LBB27_312
# BB#258:                               # %land.lhs.true.669
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -112(%rbp)
	jne	.LBB27_312
# BB#259:                               # %if.then.671
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$-1, -156(%rbp)
	jne	.LBB27_261
# BB#260:                               # %if.then.674
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -160(%rbp)
.LBB27_261:                             # %if.end.675
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$100, %eax
	movl	-152(%rbp), %ecx
	movl	-160(%rbp), %edx
	movl	-104(%rbp), %esi
	subl	-152(%rbp), %esi
	imull	%esi, %edx
	movl	%eax, -1460(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1460(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -1144(%rbp)
	movl	-1144(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.LBB27_263
# BB#262:                               # %if.then.682
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -1144(%rbp)
.LBB27_263:                             # %if.end.683
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-1144(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB27_265
# BB#264:                               # %if.then.686
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -1144(%rbp)
.LBB27_265:                             # %if.end.687
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movl	-156(%rbp), %ecx
	subl	-1144(%rbp), %ecx
	movl	%ecx, -1140(%rbp)
	movslq	-1140(%rbp), %rdx
	movq	-56(%rbp), %rsi
	subq	%rax, %rsi
	movslq	-104(%rbp), %rax
	subq	%rax, %rsi
	cmpq	%rsi, %rdx
	jle	.LBB27_267
# BB#266:                               # %if.then.696
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-104(%rbp), %rax
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -1140(%rbp)
.LBB27_267:                             # %if.end.702
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_268
.LBB27_268:                             # %do.body.703
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_269
.LBB27_269:                             # %do.end.704
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_270
.LBB27_270:                             # %do.body.705
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_271
.LBB27_271:                             # %do.end.706
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -1140(%rbp)
	jle	.LBB27_292
# BB#272:                               # %if.then.709
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movl	-1140(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-56(%rbp), %rsi
	subq	%rax, %rsi
	cmpq	%rsi, %rdx
	jle	.LBB27_274
# BB#273:                               # %if.then.716
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-152(%rbp), %rax
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -1140(%rbp)
.LBB27_274:                             # %if.end.722
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-152(%rbp), %rax
	subq	%rax, %rcx
	movslq	-1140(%rbp), %rax
	subq	%rax, %rcx
	cmpq	$0, %rcx
	jle	.LBB27_276
# BB#275:                               # %if.then.731
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movslq	-152(%rbp), %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movslq	-1140(%rbp), %rcx
	addq	%rcx, %rdx
	movslq	-152(%rbp), %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-152(%rbp), %rax
	subq	%rax, %rcx
	movslq	-1140(%rbp), %rax
	subq	%rax, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	bcopy
.LBB27_276:                             # %if.end.744
                                        #   in Loop: Header=BB27_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-1140(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movl	winmsg_numrend, %eax
	movl	%eax, -100(%rbp)
.LBB27_277:                             # %while.cond.747
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -100(%rbp)
	movb	%cl, -1461(%rbp)        # 1-byte Spill
	je	.LBB27_279
# BB#278:                               # %land.rhs.749
                                        #   in Loop: Header=BB27_277 Depth=2
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	winmsg_rendpos(,%rcx,4), %eax
	cmpl	-152(%rbp), %eax
	setg	%dl
	movb	%dl, -1461(%rbp)        # 1-byte Spill
.LBB27_279:                             # %land.end.755
                                        #   in Loop: Header=BB27_277 Depth=2
	movb	-1461(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_280
	jmp	.LBB27_283
.LBB27_280:                             # %while.body.756
                                        #   in Loop: Header=BB27_277 Depth=2
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	movl	-1140(%rbp), %eax
	movslq	-100(%rbp), %rcx
	movl	winmsg_rendpos(,%rcx,4), %edx
	subl	%eax, %edx
	movl	%edx, winmsg_rendpos(,%rcx,4)
	movslq	-100(%rbp), %rcx
	movl	winmsg_rendpos(,%rcx,4), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB27_282
# BB#281:                               # %if.then.764
                                        #   in Loop: Header=BB27_277 Depth=2
	movl	-152(%rbp), %eax
	movslq	-100(%rbp), %rcx
	movl	%eax, winmsg_rendpos(,%rcx,4)
.LBB27_282:                             # %if.end.767
                                        #   in Loop: Header=BB27_277 Depth=2
	jmp	.LBB27_277
.LBB27_283:                             # %while.end.768
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -164(%rbp)
	je	.LBB27_291
# BB#284:                               # %if.then.770
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-152(%rbp), %rax
	cmpq	%rax, %rcx
	jle	.LBB27_286
# BB#285:                               # %if.then.776
                                        #   in Loop: Header=BB27_4 Depth=1
	movslq	-152(%rbp), %rax
	movb	$46, winmsg_buf(,%rax)
.LBB27_286:                             # %if.end.779
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	-152(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	cmpq	%rax, %rcx
	jle	.LBB27_288
# BB#287:                               # %if.then.786
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$46, winmsg_buf(,%rcx)
.LBB27_288:                             # %if.end.790
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	-152(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	cmpq	%rax, %rcx
	jle	.LBB27_290
# BB#289:                               # %if.then.797
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-152(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	$46, winmsg_buf(,%rcx)
.LBB27_290:                             # %if.end.801
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_291
.LBB27_291:                             # %if.end.802
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_292
.LBB27_292:                             # %if.end.803
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-104(%rbp), %rax
	cmpq	%rax, %rcx
	jle	.LBB27_307
# BB#293:                               # %if.then.809
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movslq	-104(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB27_301
# BB#294:                               # %if.then.813
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-104(%rbp), %eax
	subl	$1, %eax
	cmpl	-152(%rbp), %eax
	jl	.LBB27_296
# BB#295:                               # %if.then.817
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$46, -1(%rax)
.LBB27_296:                             # %if.end.819
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-104(%rbp), %eax
	subl	$2, %eax
	cmpl	-152(%rbp), %eax
	jl	.LBB27_298
# BB#297:                               # %if.then.823
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$46, -2(%rax)
.LBB27_298:                             # %if.end.825
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	-104(%rbp), %eax
	subl	$3, %eax
	cmpl	-152(%rbp), %eax
	jl	.LBB27_300
# BB#299:                               # %if.then.829
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$46, -3(%rax)
.LBB27_300:                             # %if.end.831
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_301
.LBB27_301:                             # %if.end.832
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	winmsg_numrend, %eax
	movl	%eax, -100(%rbp)
.LBB27_302:                             # %while.cond.833
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -100(%rbp)
	movb	%cl, -1462(%rbp)        # 1-byte Spill
	je	.LBB27_304
# BB#303:                               # %land.rhs.835
                                        #   in Loop: Header=BB27_302 Depth=2
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	winmsg_rendpos(,%rcx,4), %eax
	cmpl	-104(%rbp), %eax
	setg	%dl
	movb	%dl, -1462(%rbp)        # 1-byte Spill
.LBB27_304:                             # %land.end.841
                                        #   in Loop: Header=BB27_302 Depth=2
	movb	-1462(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB27_305
	jmp	.LBB27_306
.LBB27_305:                             # %while.body.842
                                        #   in Loop: Header=BB27_302 Depth=2
	movl	-104(%rbp), %eax
	movl	-100(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	movslq	%ecx, %rdx
	movl	%eax, winmsg_rendpos(,%rdx,4)
	jmp	.LBB27_302
.LBB27_306:                             # %while.end.846
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_307
.LBB27_307:                             # %if.end.847
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movl	$-1, -156(%rbp)
	movl	$0, -164(%rbp)
	movslq	-152(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB27_309
# BB#308:                               # %if.then.853
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -152(%rbp)
.LBB27_309:                             # %if.end.857
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_310
.LBB27_310:                             # %do.body.858
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_311
.LBB27_311:                             # %do.end.859
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_312
.LBB27_312:                             # %if.end.860
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB27_319
# BB#313:                               # %if.then.864
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_314
.LBB27_314:                             # %while.cond.865
                                        #   Parent Loop BB27_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movslq	-104(%rbp), %rax
	cmpq	%rax, %rcx
	jge	.LBB27_316
# BB#315:                               # %while.body.871
                                        #   in Loop: Header=BB27_314 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$32, (%rax)
	jmp	.LBB27_314
.LBB27_316:                             # %while.end.873
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$winmsg_buf, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -152(%rbp)
	movl	$-1, -156(%rbp)
	movl	$0, -164(%rbp)
# BB#317:                               # %do.body.877
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_318
.LBB27_318:                             # %do.end.878
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_319
.LBB27_319:                             # %if.end.879
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_323
.LBB27_320:                             # %if.else.881
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB27_322
# BB#321:                               # %if.then.883
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-56(%rbp), %rax
	movb	$127, (%rax)
	movl	-148(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -148(%rbp)
.LBB27_322:                             # %if.end.885
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_323
.LBB27_323:                             # %if.end.886
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_324:                             # %sw.bb.887
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB27_325:                             # %sw.default.889
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movl	-92(%rbp), %ecx
	movl	-104(%rbp), %edx
	addl	$10, %edx
	cmpl	%edx, %ecx
	jle	.LBB27_332
# BB#326:                               # %if.then.894
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpl	$0, -104(%rbp)
	jne	.LBB27_328
# BB#327:                               # %if.then.897
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -104(%rbp)
.LBB27_328:                             # %if.end.898
                                        #   in Loop: Header=BB27_4 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB27_330
# BB#329:                               # %if.then.900
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.144, %rsi
	movabsq	$.L.str.146, %rax
	movabsq	$.L.str.145, %rcx
	movq	-56(%rbp), %rdi
	movl	-104(%rbp), %edx
	cmpl	$1, -104(%rbp)
	cmovgq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	jmp	.LBB27_331
.LBB27_330:                             # %if.else.905
                                        #   in Loop: Header=BB27_4 Depth=1
	movabsq	$.L.str.147, %rsi
	movq	-56(%rbp), %rdi
	movl	-104(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	192(%rax), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1472(%rbp)       # 4-byte Spill
.LBB27_331:                             # %if.end.908
                                        #   in Loop: Header=BB27_4 Depth=1
	movl	$1, -124(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB27_332:                             # %if.end.912
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_333
.LBB27_333:                             # %sw.epilog.913
                                        #   in Loop: Header=BB27_4 Depth=1
	jmp	.LBB27_334
.LBB27_334:                             # %for.inc.914
                                        #   in Loop: Header=BB27_4 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_4
.LBB27_335:                             # %for.end.917
	cmpq	$0, -144(%rbp)
	je	.LBB27_338
# BB#336:                               # %land.lhs.true.919
	cmpl	$0, -124(%rbp)
	jne	.LBB27_338
# BB#337:                               # %if.then.921
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB27_338:                             # %if.end.923
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -148(%rbp)
	je	.LBB27_342
# BB#339:                               # %if.then.925
	cmpl	$767, -24(%rbp)         # imm = 0x2FF
	jle	.LBB27_341
# BB#340:                               # %if.then.928
	movl	$767, -24(%rbp)         # imm = 0x2FF
.LBB27_341:                             # %if.end.929
	movabsq	$winmsg_buf, %rdi
	movq	-56(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	pad_expand
	movq	%rax, -56(%rbp)
.LBB27_342:                             # %if.end.931
	cmpq	$0, -32(%rbp)
	je	.LBB27_344
# BB#343:                               # %if.then.933
	movq	-32(%rbp), %rdi
	callq	evdeq
	movq	-32(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-32(%rbp), %rdi
	movq	$0, 48(%rdi)
.LBB27_344:                             # %if.end.936
	cmpq	$0, -32(%rbp)
	je	.LBB27_352
# BB#345:                               # %land.lhs.true.938
	cmpl	$0, MakeWinMsgEv.tick
	je	.LBB27_352
# BB#346:                               # %if.then.940
	movq	$100000, -72(%rbp)      # imm = 0x186A0
	cmpl	$1, MakeWinMsgEv.tick
	jne	.LBB27_348
# BB#347:                               # %if.then.944
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB27_349
.LBB27_348:                             # %if.else.947
	movslq	MakeWinMsgEv.tick, %rax
	movq	-80(%rbp), %rcx
	movslq	MakeWinMsgEv.tick, %rdx
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -1488(%rbp)       # 8-byte Spill
	cqto
	movq	-1488(%rbp), %rcx       # 8-byte Reload
	idivq	%rcx
	movq	-1480(%rbp), %rsi       # 8-byte Reload
	subq	%rdx, %rsi
	addq	-80(%rbp), %rsi
	movq	%rsi, -80(%rbp)
.LBB27_349:                             # %if.end.955
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, 40(%rax)
	movq	-72(%rbp), %rcx
	movq	%rcx, 48(%rax)
# BB#350:                               # %do.body.957
	jmp	.LBB27_351
.LBB27_351:                             # %do.end.958
	jmp	.LBB27_352
.LBB27_352:                             # %if.end.959
	movabsq	$winmsg_buf, %rax
	addq	$1488, %rsp             # imm = 0x5D0
	popq	%rbp
	retq
.Lfunc_end27:
	.size	MakeWinMsgEv, .Lfunc_end27-MakeWinMsgEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI27_0:
	.quad	.LBB27_44
	.quad	.LBB27_325
	.quad	.LBB27_221
	.quad	.LBB27_221
	.quad	.LBB27_217
	.quad	.LBB27_35
	.quad	.LBB27_325
	.quad	.LBB27_53
	.quad	.LBB27_325
	.quad	.LBB27_53
	.quad	.LBB27_53
	.quad	.LBB27_213
	.quad	.LBB27_195
	.quad	.LBB27_325
	.quad	.LBB27_180
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_53
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_205
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_185
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_133
	.quad	.LBB27_80
	.quad	.LBB27_53
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_101
	.quad	.LBB27_53
	.quad	.LBB27_325
	.quad	.LBB27_53
	.quad	.LBB27_53
	.quad	.LBB27_325
	.quad	.LBB27_148
	.quad	.LBB27_325
	.quad	.LBB27_101
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_92
	.quad	.LBB27_53
	.quad	.LBB27_324
	.quad	.LBB27_325
	.quad	.LBB27_190
	.quad	.LBB27_325
	.quad	.LBB27_325
	.quad	.LBB27_53
	.quad	.LBB27_153
	.quad	.LBB27_143
	.quad	.LBB27_325
	.quad	.LBB27_133
	.quad	.LBB27_80
	.quad	.LBB27_53
	.quad	.LBB27_325
	.quad	.LBB27_159

	.text
	.align	16, 0x90
	.type	runbacktick,@function
runbacktick:                            # @runbacktick
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB28_2
.LBB28_2:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB28_6
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB28_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB28_6
.LBB28_5:                               # %if.then
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB28_6:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB28_8
# BB#7:                                 # %land.lhs.true.5
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB28_9
.LBB28_8:                               # %lor.lhs.false.8
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB28_12
.LBB28_9:                               # %if.then.10
	jmp	.LBB28_10
.LBB28_10:                              # %do.body.11
	jmp	.LBB28_11
.LBB28_11:                              # %do.end.12
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_36
.LBB28_12:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	800(%rax), %rdi
	callq	readpipe
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB28_14
# BB#13:                                # %if.then.15
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_36
.LBB28_14:                              # %if.end.18
	movl	$0, -40(%rbp)
.LBB28_15:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_19 Depth 2
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %ecx
	movl	-36(%rbp), %edi
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movslq	-40(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-40(%rbp), %rsi
	subq	%rsi, %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -44(%rbp)
	cmpl	$0, %edi
	jle	.LBB28_30
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_17
.LBB28_17:                              # %do.body.25
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_18
.LBB28_18:                              # %do.end.26
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$1, -48(%rbp)
.LBB28_19:                              # %for.cond
                                        #   Parent Loop BB28_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB28_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB28_19 Depth=2
	movl	-40(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	32(%rdx,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB28_22
# BB#21:                                # %if.then.35
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_24
.LBB28_22:                              # %if.end.36
                                        #   in Loop: Header=BB28_19 Depth=2
	jmp	.LBB28_23
.LBB28_23:                              # %for.inc
                                        #   in Loop: Header=BB28_19 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB28_19
.LBB28_24:                              # %for.end
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB28_27
# BB#25:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB28_15 Depth=1
	movslq	-40(%rbp), %rax
	cmpq	$768, %rax              # imm = 0x300
	jne	.LBB28_27
# BB#26:                                # %if.then.43
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	$384, -48(%rbp)         # imm = 0x180
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB28_27:                              # %if.end.45
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB28_29
# BB#28:                                # %if.then.48
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movslq	-40(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-48(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rcx
	addq	$32, %rcx
	movslq	-48(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	bcopy
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB28_29:                              # %if.end.58
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_15
.LBB28_30:                              # %while.end
	movl	-36(%rbp), %edi
	callq	close
	movq	-16(%rbp), %rcx
	movb	$10, 799(%rcx)
	cmpl	$0, -40(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB28_33
# BB#31:                                # %land.lhs.true.63
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	32(%rdx,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB28_33
# BB#32:                                # %if.then.71
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
.LBB28_33:                              # %if.end.72
	jmp	.LBB28_34
.LBB28_34:                              # %do.body.73
	jmp	.LBB28_35
.LBB28_35:                              # %do.end.74
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, 32(%rcx,%rax)
	movq	-16(%rbp), %rdi
	callq	backtick_filter
	leaq	-56(%rbp), %rdi
	callq	time
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movslq	16(%rdi), %rdi
	addq	%rdi, %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, 24(%rdi)
	movq	-16(%rbp), %rcx
	addq	$32, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB28_36:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	runbacktick, .Lfunc_end28-runbacktick
	.cfi_endproc

	.align	16, 0x90
	.type	pad_expand,@function
pad_expand:                             # @pad_expand
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movslq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	subq	%rax, %rdi
	subq	%rdi, %rsi
	movl	%esi, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB29_2
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -40(%rbp)
	movl	winmsg_numrend, %edx
	movl	%edx, -48(%rbp)
.LBB29_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_13 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.LBB29_20
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB29_3 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB29_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$127, %ecx
	je	.LBB29_8
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movslq	winmsg_rendpos(,%rcx,4), %rcx
	cmpq	%rcx, %rax
	jne	.LBB29_8
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -48(%rbp)
	movslq	%esi, %rax
	movl	%edx, winmsg_rendpos(,%rax,4)
	jmp	.LBB29_3
.LBB29_8:                               # %if.end.23
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, -16(%rbp)
	movsbl	(%rax), %esi
	cmpl	$127, %esi
	jne	.LBB29_19
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-32(%rbp), %rax
	movb	$32, 1(%rax)
	cmpl	$0, -20(%rbp)
	jle	.LBB29_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB29_12
.LBB29_11:                              # %cond.false
                                        #   in Loop: Header=BB29_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB29_12
.LBB29_12:                              # %cond.end
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
.LBB29_13:                              # %while.cond.34
                                        #   Parent Loop BB29_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB29_15
# BB#14:                                # %while.body.38
                                        #   in Loop: Header=BB29_13 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$32, (%rax)
	jmp	.LBB29_13
.LBB29_15:                              # %while.end
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB29_18
# BB#16:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	-48(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movslq	winmsg_rendpos(,%rcx,4), %rcx
	cmpq	%rcx, %rax
	jne	.LBB29_18
# BB#17:                                # %if.then.53
                                        #   in Loop: Header=BB29_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -48(%rbp)
	movslq	%esi, %rax
	movl	%edx, winmsg_rendpos(,%rax,4)
.LBB29_18:                              # %if.end.62
                                        #   in Loop: Header=BB29_3 Depth=1
	jmp	.LBB29_19
.LBB29_19:                              # %if.end.63
                                        #   in Loop: Header=BB29_3 Depth=1
	jmp	.LBB29_3
.LBB29_20:                              # %while.end.64
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	pad_expand, .Lfunc_end29-pad_expand
	.cfi_endproc

	.globl	MakeWinMsg
	.align	16, 0x90
	.type	MakeWinMsg,@function
MakeWinMsg:                             # @MakeWinMsg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	MakeWinMsgEv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	MakeWinMsg, .Lfunc_end30-MakeWinMsg
	.cfi_endproc

	.globl	PutWinMsg
	.align	16, 0x90
	.type	PutWinMsg,@function
PutWinMsg:                              # @PutWinMsg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$1600, %rsp             # imm = 0x640
	movabsq	$winmsg_buf, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -1588(%rbp)
	cmpq	%rax, -8(%rbp)
	je	.LBB31_9
# BB#1:                                 # %if.then
	jmp	.LBB31_2
.LBB31_2:                               # %do.body
	jmp	.LBB31_3
.LBB31_3:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jle	.LBB31_5
# BB#4:                                 # %if.then.3
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB31_5:                               # %if.end
	movl	-12(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
.LBB31_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_8
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB31_6 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movsbl	(%rax), %edi
	callq	PUTCHARLP
	jmp	.LBB31_6
.LBB31_8:                               # %while.end
	jmp	.LBB31_45
.LBB31_9:                               # %if.end.7
	movq	display, %rax
	movl	476(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movw	480(%rax), %dx
	movw	%dx, -44(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
# BB#10:                                # %do.body.10
	jmp	.LBB31_11
.LBB31_11:                              # %do.end.11
	movl	$0, -20(%rbp)
.LBB31_12:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_22 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	cmpl	winmsg_numrend, %eax
	movb	%cl, -1589(%rbp)        # 1-byte Spill
	jge	.LBB31_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB31_12 Depth=1
	cmpl	$0, -16(%rbp)
	setg	%al
	movb	%al, -1589(%rbp)        # 1-byte Spill
.LBB31_14:                              # %land.end
                                        #   in Loop: Header=BB31_12 Depth=1
	movb	-1589(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_15
	jmp	.LBB31_35
.LBB31_15:                              # %for.body
                                        #   in Loop: Header=BB31_12 Depth=1
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	cmpl	winmsg_rendpos(,%rcx,4), %eax
	jg	.LBB31_17
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB31_12 Depth=1
	movslq	-20(%rbp), %rax
	movl	winmsg_rendpos(,%rax,4), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB31_18
.LBB31_17:                              # %if.then.22
	jmp	.LBB31_35
.LBB31_18:                              # %if.end.23
                                        #   in Loop: Header=BB31_12 Depth=1
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	cmpl	winmsg_rendpos(,%rcx,4), %eax
	jge	.LBB31_28
# BB#19:                                # %if.then.28
                                        #   in Loop: Header=BB31_12 Depth=1
	movslq	-20(%rbp), %rax
	movl	winmsg_rendpos(,%rax,4), %ecx
	subl	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jle	.LBB31_21
# BB#20:                                # %if.then.34
                                        #   in Loop: Header=BB31_12 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB31_21:                              # %if.end.35
                                        #   in Loop: Header=BB31_12 Depth=1
	movl	-36(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	movl	-36(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB31_22:                              # %while.cond.37
                                        #   Parent Loop BB31_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_27
# BB#23:                                # %while.body.41
                                        #   in Loop: Header=BB31_22 Depth=2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_25
# BB#24:                                # %if.then.45
                                        #   in Loop: Header=BB31_22 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_26
.LBB31_25:                              # %if.else
                                        #   in Loop: Header=BB31_22 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movsbl	(%rax), %edi
	callq	PUTCHARLP
.LBB31_26:                              # %if.end.49
                                        #   in Loop: Header=BB31_22 Depth=2
	jmp	.LBB31_22
.LBB31_27:                              # %while.end.50
                                        #   in Loop: Header=BB31_12 Depth=1
	jmp	.LBB31_28
.LBB31_28:                              # %if.end.51
                                        #   in Loop: Header=BB31_12 Depth=1
	movslq	-20(%rbp), %rax
	movl	winmsg_rend(,%rax,4), %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.LBB31_32
# BB#29:                                # %if.then.56
                                        #   in Loop: Header=BB31_12 Depth=1
	cmpl	$0, -1588(%rbp)
	jle	.LBB31_31
# BB#30:                                # %if.then.59
                                        #   in Loop: Header=BB31_12 Depth=1
	leaq	-1584(%rbp), %rax
	movl	-1588(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -1588(%rbp)
	movslq	%ecx, %rdx
	imulq	$6, %rdx, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movw	4(%rax), %si
	movw	%si, -44(%rbp)
.LBB31_31:                              # %if.end.63
                                        #   in Loop: Header=BB31_12 Depth=1
	jmp	.LBB31_33
.LBB31_32:                              # %if.else.64
                                        #   in Loop: Header=BB31_12 Depth=1
	leaq	-48(%rbp), %rsi
	leaq	-1584(%rbp), %rax
	movl	-1588(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -1588(%rbp)
	movslq	%ecx, %rdi
	imulq	$6, %rdi, %rdi
	addq	%rdi, %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, (%rax)
	movw	-44(%rbp), %r8w
	movw	%r8w, 4(%rax)
	movl	-32(%rbp), %edi
	callq	ApplyAttrColor
.LBB31_33:                              # %if.end.67
                                        #   in Loop: Header=BB31_12 Depth=1
	leaq	-48(%rbp), %rdi
	callq	SetRendition
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB31_12 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB31_12
.LBB31_35:                              # %for.end
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB31_45
# BB#36:                                # %if.then.71
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB31_38
# BB#37:                                # %if.then.75
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB31_38:                              # %if.end.76
	jmp	.LBB31_39
.LBB31_39:                              # %while.cond.77
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_44
# BB#40:                                # %while.body.81
                                        #   in Loop: Header=BB31_39 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_42
# BB#41:                                # %if.then.85
                                        #   in Loop: Header=BB31_39 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_43
.LBB31_42:                              # %if.else.87
                                        #   in Loop: Header=BB31_39 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movsbl	(%rax), %edi
	callq	PUTCHARLP
.LBB31_43:                              # %if.end.90
                                        #   in Loop: Header=BB31_39 Depth=1
	jmp	.LBB31_39
.LBB31_44:                              # %while.end.91
	jmp	.LBB31_45
.LBB31_45:                              # %if.end.92
	addq	$1600, %rsp             # imm = 0x640
	popq	%rbp
	retq
.Lfunc_end31:
	.size	PutWinMsg, .Lfunc_end31-PutWinMsg
	.cfi_endproc

	.align	16, 0x90
	.type	backtick_filter,@function
backtick_filter:                        # @backtick_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$32, %rdi
	movq	%rdi, -24(%rbp)
	movq	%rdi, -16(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, %edx
	je	.LBB32_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$9, -28(%rbp)
	jne	.LBB32_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$32, -28(%rbp)
.LBB32_4:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$32, -28(%rbp)
	jge	.LBB32_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$5, -28(%rbp)
	jne	.LBB32_7
.LBB32_6:                               # %if.then.8
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
.LBB32_7:                               # %if.end.11
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_1
.LBB32_8:                               # %for.end
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	backtick_filter, .Lfunc_end32-backtick_filter
	.cfi_endproc

	.align	16, 0x90
	.type	SigChldHandler,@function
SigChldHandler:                         # @SigChldHandler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
.LBB33_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, GotSigChld
	je	.LBB33_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	$0, GotSigChld
	callq	DoWait
	jmp	.LBB33_1
.LBB33_3:                               # %while.end
	movabsq	$SockPath, %rdi
	leaq	-144(%rbp), %rsi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB33_14
# BB#4:                                 # %if.then
	jmp	.LBB33_5
.LBB33_5:                               # %do.body
	jmp	.LBB33_6
.LBB33_6:                               # %do.end
	callq	RecoverSocket
	cmpl	$0, %eax
	jne	.LBB33_10
# BB#7:                                 # %if.then.3
	jmp	.LBB33_8
.LBB33_8:                               # %do.body.4
	jmp	.LBB33_9
.LBB33_9:                               # %do.end.5
	movl	$1, %edi
	callq	Finit
	jmp	.LBB33_13
.LBB33_10:                              # %if.else
	jmp	.LBB33_11
.LBB33_11:                              # %do.body.6
	jmp	.LBB33_12
.LBB33_12:                              # %do.end.7
	jmp	.LBB33_13
.LBB33_13:                              # %if.end
	jmp	.LBB33_17
.LBB33_14:                              # %if.else.8
	jmp	.LBB33_15
.LBB33_15:                              # %do.body.9
	jmp	.LBB33_16
.LBB33_16:                              # %do.end.10
	jmp	.LBB33_17
.LBB33_17:                              # %if.end.11
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	SigChldHandler, .Lfunc_end33-SigChldHandler
	.cfi_endproc

	.align	16, 0x90
	.type	DoWait,@function
DoWait:                                 # @DoWait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
.LBB34_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_3 Depth 2
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	leaq	-28(%rbp), %rsi
	movl	$3, %edx
	callq	waitpid
	movl	%eax, -4(%rbp)
	cmpl	$0, %eax
	jle	.LBB34_32
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	windows, %rax
	movq	%rax, -16(%rbp)
.LBB34_3:                               # %for.cond
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB34_27
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB34_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 10992(%rax)
	je	.LBB34_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB34_3 Depth=2
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10992(%rcx), %eax
	je	.LBB34_8
.LBB34_6:                               # %lor.lhs.false
                                        #   in Loop: Header=BB34_3 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$0, 10996(%rax)
	je	.LBB34_20
# BB#7:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB34_3 Depth=2
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10996(%rcx), %eax
	jne	.LBB34_20
.LBB34_8:                               # %if.then
                                        #   in Loop: Header=BB34_3 Depth=2
	movq	-16(%rbp), %rax
	movl	$0, 10992(%rax)
	movl	-28(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	andl	$255, %ecx
	cmpl	$127, %ecx
	jne	.LBB34_18
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB34_3 Depth=2
	jmp	.LBB34_10
.LBB34_10:                              # %do.body
                                        #   in Loop: Header=BB34_3 Depth=2
	jmp	.LBB34_11
.LBB34_11:                              # %do.end
                                        #   in Loop: Header=BB34_3 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$21, %eax
	jne	.LBB34_13
# BB#12:                                # %if.then.16
                                        #   in Loop: Header=BB34_3 Depth=2
	xorl	%edi, %edi
	movabsq	$.L.str.154, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB34_26
.LBB34_13:                              # %if.end
                                        #   in Loop: Header=BB34_3 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$22, %eax
	jne	.LBB34_15
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB34_3 Depth=2
	xorl	%edi, %edi
	movabsq	$.L.str.155, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB34_26
.LBB34_15:                              # %if.end.24
                                        #   in Loop: Header=BB34_1 Depth=1
	xorl	%edi, %edi
	movabsq	$.L.str.156, %rsi
	movb	$0, %al
	callq	Msg
	movl	$18, %esi
	movl	-4(%rbp), %edi
	callq	killpg
	cmpl	$0, %eax
	je	.LBB34_17
# BB#16:                                # %if.then.27
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$18, %esi
	movl	-4(%rbp), %edi
	callq	kill
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB34_17:                              # %if.end.29
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_19
.LBB34_18:                              # %if.else
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$10000, %esi            # imm = 0x2710
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 12816(%rcx)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 12880(%rax)
	movq	-16(%rbp), %rax
	addq	$12800, %rax            # imm = 0x3200
	movq	%rax, %rdi
	callq	SetTimeout
	movq	-16(%rbp), %rax
	addq	$12800, %rax            # imm = 0x3200
	movq	%rax, %rdi
	callq	evenq
.LBB34_19:                              # %if.end.32
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_27
.LBB34_20:                              # %if.end.33
                                        #   in Loop: Header=BB34_3 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB34_25
# BB#21:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB34_3 Depth=2
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB34_25
# BB#22:                                # %if.then.38
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_23
.LBB34_23:                              # %do.body.39
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_24
.LBB34_24:                              # %do.end.40
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	FreePseudowin
	jmp	.LBB34_27
.LBB34_25:                              # %if.end.41
                                        #   in Loop: Header=BB34_3 Depth=2
	jmp	.LBB34_26
.LBB34_26:                              # %for.inc
                                        #   in Loop: Header=BB34_3 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_3
.LBB34_27:                              # %for.end
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB34_31
# BB#28:                                # %if.then.43
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_29
.LBB34_29:                              # %do.body.44
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_30
.LBB34_30:                              # %do.end.45
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_31
.LBB34_31:                              # %if.end.46
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_1
.LBB34_32:                              # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	DoWait, .Lfunc_end34-DoWait
	.cfi_endproc

	.align	16, 0x90
	.type	ParseChar,@function
ParseChar:                              # @ParseChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$0, %eax
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB35_23
.LBB35_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	jne	.LBB35_11
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB35_11
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$63, %edx
	jne	.LBB35_6
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movb	$127, (%rax)
	jmp	.LBB35_10
.LBB35_6:                               # %if.else
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$64, %ecx
	jl	.LBB35_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	andl	$31, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.LBB35_9
.LBB35_8:                               # %if.else.17
	movq	$0, -8(%rbp)
	jmp	.LBB35_23
.LBB35_9:                               # %if.end.18
	jmp	.LBB35_10
.LBB35_10:                              # %if.end.19
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB35_22
.LBB35_11:                              # %if.else.21
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB35_20
# BB#12:                                # %land.lhs.true.25
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$55, %edx
	jg	.LBB35_20
# BB#13:                                # %land.lhs.true.30
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB35_20
# BB#14:                                # %if.then.34
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.LBB35_15:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	shll	$3, %ecx
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	addl	%edx, %ecx
	subl	$48, %ecx
	movb	%cl, %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
# BB#16:                                # %do.cond
                                        #   in Loop: Header=BB35_15 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movsbl	1(%rdx), %eax
	cmpl	$55, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jg	.LBB35_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB35_15 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	setge	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB35_18:                              # %land.end
                                        #   in Loop: Header=BB35_15 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_15
# BB#19:                                # %do.end
	jmp	.LBB35_21
.LBB35_20:                              # %if.else.45
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
.LBB35_21:                              # %if.end.47
	jmp	.LBB35_22
.LBB35_22:                              # %if.end.48
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB35_23:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	ParseChar, .Lfunc_end35-ParseChar
	.cfi_endproc

	.type	force_vt,@object        # @force_vt
	.data
	.globl	force_vt
	.align	4
force_vt:
	.long	1                       # 0x1
	.size	force_vt, 4

	.type	attach_fd,@object       # @attach_fd
	.globl	attach_fd
	.align	4
attach_fd:
	.long	4294967295              # 0xffffffff
	.size	attach_fd, 4

	.type	SockMatch,@object       # @SockMatch
	.bss
	.globl	SockMatch
	.align	8
SockMatch:
	.quad	0
	.size	SockMatch, 8

	.type	ServerSocket,@object    # @ServerSocket
	.data
	.globl	ServerSocket
	.align	4
ServerSocket:
	.long	4294967295              # 0xffffffff
	.size	ServerSocket, 4

	.type	NewEnv,@object          # @NewEnv
	.bss
	.globl	NewEnv
	.align	8
NewEnv:
	.quad	0
	.size	NewEnv, 8

	.type	RcFileName,@object      # @RcFileName
	.globl	RcFileName
	.align	8
RcFileName:
	.quad	0
	.size	RcFileName, 8

	.type	log_flush,@object       # @log_flush
	.data
	.globl	log_flush
	.align	4
log_flush:
	.long	10                      # 0xa
	.size	log_flush, 4

	.type	logtstamp_on,@object    # @logtstamp_on
	.bss
	.globl	logtstamp_on
	.align	4
logtstamp_on:
	.long	0                       # 0x0
	.size	logtstamp_on, 4

	.type	logtstamp_after,@object # @logtstamp_after
	.data
	.globl	logtstamp_after
	.align	4
logtstamp_after:
	.long	120                     # 0x78
	.size	logtstamp_after, 4

	.type	hardcopydir,@object     # @hardcopydir
	.bss
	.globl	hardcopydir
	.align	8
hardcopydir:
	.quad	0
	.size	hardcopydir, 8

	.type	auto_detach,@object     # @auto_detach
	.data
	.globl	auto_detach
	.align	4
auto_detach:
	.long	1                       # 0x1
	.size	auto_detach, 4

	.type	queryflag,@object       # @queryflag
	.globl	queryflag
	.align	4
queryflag:
	.long	4294967295              # 0xffffffff
	.size	queryflag, 4

	.type	tty_oldmode,@object     # @tty_oldmode
	.globl	tty_oldmode
	.align	4
tty_oldmode:
	.long	4294967295              # 0xffffffff
	.size	tty_oldmode, 4

	.type	preselect,@object       # @preselect
	.bss
	.globl	preselect
	.align	8
preselect:
	.quad	0
	.size	preselect, 8

	.type	nethackflag,@object     # @nethackflag
	.globl	nethackflag
	.align	4
nethackflag:
	.long	0                       # 0x0
	.size	nethackflag, 4

	.type	strnomem,@object        # @strnomem
	.data
	.globl	strnomem
strnomem:
	.asciz	"Out of memory."
	.size	strnomem, 15

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"screen"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d.%.2d.%.2d%s (%s%s) %s"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GNU"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"19-Jun-16"
	.size	.L.str.4, 10

	.type	nversion,@object        # @nversion
	.comm	nversion,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Bell in window %n"
	.size	.L.str.5, 18

	.type	BellString,@object      # @BellString
	.comm	BellString,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"   Wuff,  Wuff!!  "
	.size	.L.str.6, 19

	.type	VisualBellString,@object # @VisualBellString
	.comm	VisualBellString,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Activity in window %n"
	.size	.L.str.7, 22

	.type	ActivityString,@object  # @ActivityString
	.comm	ActivityString,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"screenlog.%n"
	.size	.L.str.8, 13

	.type	screenlogfile,@object   # @screenlogfile
	.comm	screenlogfile,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-- %n:%t -- time-stamp -- %M/%d/%y %c:%s --\n"
	.size	.L.str.9, 45

	.type	logtstamp_string,@object # @logtstamp_string
	.comm	logtstamp_string,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%h"
	.size	.L.str.10, 3

	.type	hstatusstring,@object   # @hstatusstring
	.comm	hstatusstring,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%4n %t"
	.size	.L.str.11, 7

	.type	captionstring,@object   # @captionstring
	.comm	captionstring,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%c:%s %M %d %H%? %l%?"
	.size	.L.str.12, 22

	.type	timestring,@object      # @timestring
	.comm	timestring,8,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" Num Name%=Flags"
	.size	.L.str.13, 17

	.type	wlisttit,@object        # @wlisttit
	.comm	wlisttit,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%4n %t%=%f"
	.size	.L.str.14, 11

	.type	wliststr,@object        # @wliststr
	.comm	wliststr,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/tmp/screen-exchange"
	.size	.L.str.15, 21

	.type	BufferFile,@object      # @BufferFile
	.comm	BufferFile,8,8
	.type	ShellProg,@object       # @ShellProg
	.comm	ShellProg,8,8
	.type	PowDetachString,@object # @PowDetachString
	.comm	PowDetachString,8,8
	.type	default_startup,@object # @default_startup
	.comm	default_startup,4,4
	.type	adaptflag,@object       # @adaptflag
	.comm	adaptflag,4,4
	.type	VBellWait,@object       # @VBellWait
	.comm	VBellWait,4,4
	.type	MsgWait,@object         # @MsgWait
	.comm	MsgWait,4,4
	.type	MsgMinWait,@object      # @MsgMinWait
	.comm	MsgMinWait,4,4
	.type	SilenceWait,@object     # @SilenceWait
	.comm	SilenceWait,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"!!! sz -vv -b "
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"!!! rz -vv -b -E"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/usr/share/screen/utf8encodings"
	.size	.L.str.18, 32

	.type	screenencodings,@object # @screenencodings
	.comm	screenencodings,8,8
	.type	cjkwidth,@object        # @cjkwidth
	.comm	cjkwidth,4,4
	.type	rflag,@object           # @rflag
	.comm	rflag,4,4
	.type	xflag,@object           # @xflag
	.comm	xflag,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"--version"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Screen version %s"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"--help"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Specify a window to preselect with -p"
	.size	.L.str.22, 38

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Specify an alternate rc-filename with -c"
	.size	.L.str.23, 41

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Specify command characters with -e"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Two characters are required with -e option, not '%s'."
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Unknown flow option -%s"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"-h: %s: negative scrollback size?"
	.size	.L.str.27, 34

	.type	iflag,@object           # @iflag
	.comm	iflag,4,4
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Specify a new window-name with -t"
	.size	.L.str.28, 34

	.type	lsflag,@object          # @lsflag
	.comm	lsflag,4,4
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s: Unknown suboption to -l"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ipe"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unknown option %s"
	.size	.L.str.31, 18

	.type	wipeflag,@object        # @wipeflag
	.comm	wipeflag,4,4
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Specify terminal-type with -T"
	.size	.L.str.32, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"-T: terminal name too long. (max. 20 char)"
	.size	.L.str.33, 43

	.type	quietflag,@object       # @quietflag
	.comm	quietflag,4,4
	.type	cmdflag,@object         # @cmdflag
	.comm	cmdflag,4,4
	.type	dflag,@object           # @dflag
	.comm	dflag,4,4
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Specify shell with -s"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Specify session-name with -S"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Empty session-name?"
	.size	.L.str.36, 20

	.type	real_uid,@object        # @real_uid
	.comm	real_uid,4,4
	.type	real_gid,@object        # @real_gid
	.comm	real_gid,4,4
	.type	eff_uid,@object         # @eff_uid
	.comm	eff_uid,4,4
	.type	eff_gid,@object         # @eff_gid
	.comm	eff_gid,4,4
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"zh_"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"ja_"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ko_"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Ridiculously long socketname - try again."
	.size	.L.str.41, 42

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"SHELL"
	.size	.L.str.42, 6

	.type	ShellArgs,@object       # @ShellArgs
	.comm	ShellArgs,16,16
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"HOME"
	.size	.L.str.43, 5

	.type	home,@object            # @home
	.comm	home,8,8
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"STY"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"NETHACKOPTIONS"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%s/.nethackrc"
	.size	.L.str.46, 14

	.type	multi_uid,@object       # @multi_uid
	.comm	multi_uid,4,4
	.type	own_uid,@object         # @own_uid
	.comm	own_uid,4,4
	.type	multi,@object           # @multi
	.comm	multi,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Cannot identify account '%s'."
	.size	.L.str.47, 30

	.type	multi_home,@object      # @multi_home
	.comm	multi_home,8,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"home directory path too long"
	.size	.L.str.48, 29

	.type	multiattach,@object     # @multiattach
	.comm	multiattach,4,4
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Must run suid root for multiuser support."
	.size	.L.str.49, 42

	.type	LoginName,@object       # @LoginName
	.comm	LoginName,8,8
	.type	ppp,@object             # @ppp
	.comm	ppp,8,8
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"getpwuid() can't identify your account!"
	.size	.L.str.50, 40

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"LoginName too long - sorry."
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Screen owner name too long - sorry."
	.size	.L.str.52, 36

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"$HOME too long - sorry."
	.size	.L.str.53, 24

	.type	attach_tty,@object      # @attach_tty
	.comm	attach_tty,8,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Must be connected to a terminal."
	.size	.L.str.54, 33

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Cannot access '%s'"
	.size	.L.str.55, 19

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Bad tty '%s'"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"TtyName too long - sorry."
	.size	.L.str.57, 26

	.type	tty_mode,@object        # @tty_mode
	.comm	tty_mode,4,4
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Cannot open your terminal '%s' - please check."
	.size	.L.str.58, 47

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"TERM"
	.size	.L.str.59, 5

	.type	attach_term,@object     # @attach_term
	.comm	attach_term,8,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Please set a terminal type."
	.size	.L.str.60, 28

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"$TERM too long - sorry."
	.size	.L.str.61, 24

	.type	attach_Mode,@object     # @attach_Mode
	.comm	attach_Mode,60,4
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Cannot change umask to zero"
	.size	.L.str.62, 28

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"SCREENDIR"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Ridiculously long $SCREENDIR - try again."
	.size	.L.str.64, 42

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"No $SCREENDIR with multi screens, please."
	.size	.L.str.65, 42

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"/tmp/uscreens"
	.size	.L.str.66, 14

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/tmp/screens"
	.size	.L.str.67, 13

	.type	SockPath,@object        # @SockPath
	.comm	SockPath,5632,16
	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%s/S-%s"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Cannot make directory '%s'."
	.size	.L.str.69, 28

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Cannot make directory '%s'"
	.size	.L.str.70, 27

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"'%s' must be a directory."
	.size	.L.str.71, 26

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Directory '%s' must be owned by root."
	.size	.L.str.72, 38

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Directory '%s' must have mode %03o."
	.size	.L.str.73, 36

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Cannot access %s"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"%s is not a directory."
	.size	.L.str.75, 23

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"%s is not the owner of %s."
	.size	.L.str.76, 27

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"You are not the owner of %s."
	.size	.L.str.77, 29

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Directory %s must have mode 700."
	.size	.L.str.78, 33

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Bad session name '%s'"
	.size	.L.str.79, 22

	.type	SockName,@object        # @SockName
	.comm	SockName,8,8
	.type	HostName,@object        # @HostName
	.comm	HostName,768,16
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"No Sockets found in %s.\n"
	.size	.L.str.80, 25

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%d Socket%s in %s."
	.size	.L.str.81, 19

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"s"
	.size	.L.str.82, 2

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Please specify a command."
	.size	.L.str.83, 26

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Can't create sessions of other users."
	.size	.L.str.84, 38

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"[%s %sdetached.]\n"
	.size	.L.str.85, 18

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"power "
	.size	.L.str.86, 7

	.type	MasterPid,@object       # @MasterPid
	.comm	MasterPid,4,4
	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"fork"
	.size	.L.str.87, 5

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%d.%s"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%d.%s.%s"
	.size	.L.str.89, 9

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"/%s"
	.size	.L.str.90, 4

	.type	PanicPid,@object        # @PanicPid
	.comm	PanicPid,4,4
	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"SCREEN"
	.size	.L.str.91, 7

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Cannot reopen '%s' - please check."
	.size	.L.str.92, 35

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"/dev/null"
	.size	.L.str.93, 10

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"r"
	.size	.L.str.94, 2

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"w"
	.size	.L.str.95, 2

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Could not create user info"
	.size	.L.str.96, 27

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Could not alloc display"
	.size	.L.str.97, 24

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"SYSSCREENRC"
	.size	.L.str.98, 12

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"/usr/etc/screenrc"
	.size	.L.str.99, 18

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Warning: NBLOCK fcntl failed"
	.size	.L.str.100, 29

	.type	windows,@object         # @windows
	.comm	windows,8,8
	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Sorry, could not find a PTY or TTY."
	.size	.L.str.101, 36

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"New screen..."
	.size	.L.str.102, 14

	.type	serv_read,@object       # @serv_read
	.comm	serv_read,80,8
	.type	serv_select,@object     # @serv_select
	.comm	serv_select,80,8
	.type	logflushev,@object      # @logflushev
	.comm	logflushev,80,8
	.type	ZombieKey_destroy,@object # @ZombieKey_destroy
	.comm	ZombieKey_destroy,4,4
	.type	ZombieKey_onerror,@object # @ZombieKey_onerror
	.comm	ZombieKey_onerror,4,4
	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"terminated with exit status %d"
	.size	.L.str.103, 31

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"terminated normally"
	.size	.L.str.104, 20

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"terminated with signal %d%s"
	.size	.L.str.105, 28

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	" (core file generated)"
	.size	.L.str.106, 23

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"detached from window"
	.size	.L.str.107, 21

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"\n\r=== Command %s (%s) ==="
	.size	.L.str.108, 26

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"?"
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"[screen is terminating]\r\n"
	.size	.L.str.110, 26

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"[detached from "
	.size	.L.str.111, 16

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"]\r\n"
	.size	.L.str.112, 4

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"[detached]\r\n"
	.size	.L.str.113, 13

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"[remote detached from "
	.size	.L.str.114, 23

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"[remote detached]\r\n"
	.size	.L.str.115, 20

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"[power detached from "
	.size	.L.str.116, 22

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"[power detached]\r\n"
	.size	.L.str.117, 19

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"\r\n"
	.size	.L.str.118, 3

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"[remote power detached from "
	.size	.L.str.119, 29

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"[remote power detached]\r\n"
	.size	.L.str.120, 26

	.type	console_window,@object  # @console_window
	.comm	console_window,8,8
	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"detach"
	.size	.L.str.121, 7

	.type	MakeNewEnv.stybuf,@object # @MakeNewEnv.stybuf
	.local	MakeNewEnv.stybuf
	.comm	MakeNewEnv.stybuf,768,16
	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"STY=%s"
	.size	.L.str.122, 7

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"TERMCAP"
	.size	.L.str.123, 8

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"WINDOW"
	.size	.L.str.124, 7

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"SCREENCAP"
	.size	.L.str.125, 10

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"LINES"
	.size	.L.str.126, 6

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"COLUMNS"
	.size	.L.str.127, 8

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"%s\r\n"
	.size	.L.str.128, 5

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"\n"
	.size	.L.str.129, 2

	.type	backticks,@object       # @backticks
	.comm	backticks,8,8
	.type	winmsg_numrend,@object  # @winmsg_numrend
	.local	winmsg_numrend
	.comm	winmsg_numrend,4,4
	.type	winmsg_buf,@object      # @winmsg_buf
	.local	winmsg_buf
	.comm	winmsg_buf,768,16
	.type	winmsg_rend,@object     # @winmsg_rend
	.local	winmsg_rend
	.comm	winmsg_rend,1024,16
	.type	winmsg_rendpos,@object  # @winmsg_rendpos
	.local	winmsg_rendpos
	.comm	winmsg_rendpos,1024,16
	.type	MakeWinMsgEv.tick,@object # @MakeWinMsgEv.tick
	.local	MakeWinMsgEv.tick
	.comm	MakeWinMsgEv.tick,4,4
	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"%02d"
	.size	.L.str.130, 5

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"%A"
	.size	.L.str.131, 3

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"%a"
	.size	.L.str.132, 3

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"%B"
	.size	.L.str.133, 3

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"%b"
	.size	.L.str.134, 3

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"%04d"
	.size	.L.str.135, 5

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"pm"
	.size	.L.str.136, 3

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"am"
	.size	.L.str.137, 3

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"PM"
	.size	.L.str.138, 3

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"AM"
	.size	.L.str.139, 3

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"%02d:%02d"
	.size	.L.str.140, 10

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"%2d:%02d"
	.size	.L.str.141, 9

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	" %s"
	.size	.L.str.142, 4

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"%d"
	.size	.L.str.143, 3

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"%*s"
	.size	.L.str.144, 4

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"--"
	.size	.L.str.145, 3

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"-"
	.size	.L.str.146, 2

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"%*d"
	.size	.L.str.147, 4

	.type	ZombieKey_resurrect,@object # @ZombieKey_resurrect
	.comm	ZombieKey_resurrect,4,4
	.type	maxwin,@object          # @maxwin
	.comm	maxwin,4,4
	.type	flayer,@object          # @flayer
	.comm	flayer,8,8
	.type	fore,@object            # @fore
	.comm	fore,8,8
	.type	locale_name.s,@object   # @locale_name.s
	.local	locale_name.s
	.comm	locale_name.s,8,8
	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"LC_ALL"
	.size	.L.str.148, 7

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"LC_CTYPE"
	.size	.L.str.149, 9

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"LANG"
	.size	.L.str.150, 5

	.type	getpwbyname.spw,@object # @getpwbyname.spw
	.local	getpwbyname.spw
	.comm	getpwbyname.spw,8,8
	.type	GotSigChld,@object      # @GotSigChld
	.local	GotSigChld
	.comm	GotSigChld,4,4
	.type	InterruptPlease,@object # @InterruptPlease
	.local	InterruptPlease
	.comm	InterruptPlease,4,4
	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	" (core dumped)"
	.size	.L.str.151, 15

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"core"
	.size	.L.str.152, 5

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"\r\n[screen caught signal %d.%s]\r\n"
	.size	.L.str.153, 33

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Suspended (tty input)"
	.size	.L.str.154, 22

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Suspended (tty output)"
	.size	.L.str.155, 23

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Child has been stopped, restarting."
	.size	.L.str.156, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
