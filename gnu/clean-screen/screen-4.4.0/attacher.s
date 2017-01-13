	.text
	.file	"attacher.bc"
	.globl	Attach
	.align	16, 0x90
	.type	Attach,@function
Attach:                                 # @Attach
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
	subq	$12944, %rsp            # imm = 0x3290
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB0_2
.LBB0_2:                                # %do.end
	cmpl	$2, -8(%rbp)
	je	.LBB0_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$3, -8(%rbp)
	jne	.LBB0_10
.LBB0_4:                                # %land.lhs.true
	cmpl	$0, multiattach
	je	.LBB0_10
# BB#5:                                 # %if.then
	movl	multi_uid, %eax
	movl	%eax, real_uid
	movl	own_uid, %eax
	movl	%eax, eff_uid
	movl	multi_uid, %edi
	movl	own_uid, %esi
	movl	multi_uid, %edx
	callq	setresuid
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then.3
	callq	__errno_location
	movabsq	$.L.str, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_7:                                # %if.end
	movl	$438, %esi              # imm = 0x1B6
	movq	attach_tty, %rdi
	callq	chmod
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %if.then.7
	callq	__errno_location
	movabsq	$.L.str.1, %rsi
	movl	(%rax), %edi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_9:                                # %if.end.9
	movl	tty_mode, %eax
	movl	%eax, tty_oldmode
.LBB0_10:                               # %if.end.10
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	leaq	-12600(%rbp), %rcx
	xorl	%esi, %esi
	movl	$12584, %eax            # imm = 0x3128
	movl	%eax, %edi
	movq	%rcx, %r8
	movq	%rdi, -12760(%rbp)      # 8-byte Spill
	movq	%r8, %rdi
	movq	-12760(%rbp), %r8       # 8-byte Reload
	movq	%rdx, -12768(%rbp)      # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -12776(%rbp)      # 8-byte Spill
	callq	memset
	movl	-8(%rbp), %eax
	movl	%eax, -12596(%rbp)
	movl	$1836279557, -12600(%rbp) # imm = 0x6D736705
	movq	-12776(%rbp), %rcx      # 8-byte Reload
	addq	$8, %rcx
	movq	attach_tty, %rsi
	movq	%rcx, %rdi
	movq	-12768(%rbp), %rdx      # 8-byte Reload
	callq	strncpy
	movb	$0, -8497(%rbp)
	cmpl	$6, -8(%rbp)
	movq	%rax, -12784(%rbp)      # 8-byte Spill
	jne	.LBB0_14
# BB#11:                                # %if.then.14
	xorl	%edi, %edi
	callq	MakeClientSocket
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jl	.LBB0_13
# BB#12:                                # %if.then.17
	leaq	-12600(%rbp), %rsi
	movl	-16(%rbp), %edi
	callq	WriteMessage
	movl	-16(%rbp), %edi
	movl	%eax, -12788(%rbp)      # 4-byte Spill
	callq	close
	movl	%eax, -12792(%rbp)      # 4-byte Spill
.LBB0_13:                               # %if.end.20
	movl	$0, -4(%rbp)
	jmp	.LBB0_130
.LBB0_14:                               # %if.end.21
	cmpl	$3, -8(%rbp)
	jne	.LBB0_18
# BB#15:                                # %if.then.23
	xorl	%edi, %edi
	callq	MakeClientSocket
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_17
# BB#16:                                # %if.then.26
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movq	SockName, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_17:                               # %if.end.27
	jmp	.LBB0_41
.LBB0_18:                               # %if.else
	movq	SockMatch(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rdi
	movq	%rdx, %rsi
	callq	FindSocket
	movl	%eax, -12(%rbp)
	movl	%eax, %r8d
	testl	%eax, %eax
	movl	%r8d, -12796(%rbp)      # 4-byte Spill
	je	.LBB0_19
	jmp	.LBB0_131
.LBB0_131:                              # %if.else
	movl	-12796(%rbp), %eax      # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -12800(%rbp)      # 4-byte Spill
	je	.LBB0_34
	jmp	.LBB0_35
.LBB0_19:                               # %sw.bb
	cmpl	$0, rflag
	je	.LBB0_22
# BB#20:                                # %land.lhs.true.30
	movl	rflag, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then.32
	movl	$0, -4(%rbp)
	jmp	.LBB0_130
.LBB0_22:                               # %if.end.33
	cmpl	$0, quietflag
	je	.LBB0_24
# BB#23:                                # %if.then.35
	movl	$10, %edi
	callq	eexit
.LBB0_24:                               # %if.end.36
	cmpq	$0, SockMatch
	je	.LBB0_30
# BB#25:                                # %land.lhs.true.38
	movq	SockMatch, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_30
# BB#26:                                # %if.then.40
	cmpl	$0, xflag
	je	.LBB0_28
# BB#27:                                # %cond.true
	movabsq	$.L.str.4, %rax
	movq	%rax, -12808(%rbp)      # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:                               # %cond.false
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.5, %rcx
	cmpl	$0, dflag
	cmovneq	%rcx, %rax
	movq	%rax, -12808(%rbp)      # 8-byte Spill
.LBB0_29:                               # %cond.end
	movq	-12808(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movq	SockMatch, %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_30:                               # %if.else.44
	cmpl	$0, xflag
	je	.LBB0_32
# BB#31:                                # %cond.true.46
	movabsq	$.L.str.4, %rax
	movq	%rax, -12816(%rbp)      # 8-byte Spill
	jmp	.LBB0_33
.LBB0_32:                               # %cond.false.47
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.5, %rcx
	cmpl	$0, dflag
	cmovneq	%rcx, %rax
	movq	%rax, -12816(%rbp)      # 8-byte Spill
.LBB0_33:                               # %cond.end.50
	movq	-12816(%rbp), %rax      # 8-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_34:                               # %sw.bb.52
	jmp	.LBB0_40
.LBB0_35:                               # %sw.default
	cmpl	$3, rflag
	jge	.LBB0_39
# BB#36:                                # %if.then.55
	cmpl	$0, quietflag
	je	.LBB0_38
# BB#37:                                # %if.then.57
	movl	-12(%rbp), %eax
	addl	$10, %eax
	movl	%eax, %edi
	callq	eexit
.LBB0_38:                               # %if.end.58
	xorl	%edi, %edi
	movabsq	$.L.str.8, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_39:                               # %if.end.59
	jmp	.LBB0_40
.LBB0_40:                               # %sw.epilog
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.60
	cmpl	$0, multiattach
	jne	.LBB0_45
# BB#42:                                # %if.then.62
	movl	real_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB0_44
# BB#43:                                # %if.then.65
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_44:                               # %if.end.67
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.68
	movl	real_uid, %edi
	callq	xseteuid
.LBB0_46:                               # %if.end.69
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	je	.LBB0_48
# BB#47:                                # %if.then.72
	callq	__errno_location
	movabsq	$.L.str.10, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_48:                               # %if.end.74
	movl	real_uid, %eax
	movl	%eax, eff_uid
	movl	real_gid, %eax
	movl	%eax, eff_gid
# BB#49:                                # %do.body.75
	jmp	.LBB0_50
.LBB0_50:                               # %do.end.76
	movl	$0, MasterPid
	movq	SockName, %rax
	movq	%rax, -12752(%rbp)
.LBB0_51:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-12752(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_57
# BB#52:                                # %for.body
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-12752(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB0_54
# BB#53:                                # %lor.lhs.false.81
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-12752(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jge	.LBB0_55
.LBB0_54:                               # %if.then.85
	jmp	.LBB0_57
.LBB0_55:                               # %if.end.86
                                        #   in Loop: Header=BB0_51 Depth=1
	imull	$10, MasterPid, %eax
	movq	-12752(%rbp), %rcx
	movsbl	(%rcx), %edx
	subl	$48, %edx
	addl	%edx, %eax
	movl	%eax, MasterPid
# BB#56:                                # %for.inc
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	-12752(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -12752(%rbp)
	jmp	.LBB0_51
.LBB0_57:                               # %for.end
	jmp	.LBB0_58
.LBB0_58:                               # %do.body.89
	jmp	.LBB0_59
.LBB0_59:                               # %do.end.90
	jmp	.LBB0_60
.LBB0_60:                               # %do.body.91
	jmp	.LBB0_61
.LBB0_61:                               # %do.end.92
	movabsq	$SockPath, %rdi
	leaq	-12744(%rbp), %rsi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB0_63
# BB#62:                                # %if.then.96
	callq	__errno_location
	movabsq	$.L.str.11, %rsi
	movabsq	$SockPath, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_63:                               # %if.end.98
	movl	-12720(%rbp), %eax
	andl	$384, %eax              # imm = 0x180
	cmpl	$384, %eax              # imm = 0x180
	je	.LBB0_65
# BB#64:                                # %if.then.102
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rsi
	movl	-12720(%rbp), %edx
	movb	$0, %al
	callq	Panic
.LBB0_65:                               # %if.end.104
	cmpl	$0, xflag
	jne	.LBB0_67
# BB#66:                                # %lor.lhs.false.106
	cmpl	$0, rflag
	je	.LBB0_70
.LBB0_67:                               # %land.lhs.true.108
	cmpl	$0, dflag
	je	.LBB0_70
# BB#68:                                # %land.lhs.true.110
	movl	-12720(%rbp), %eax
	andl	$448, %eax              # imm = 0x1C0
	cmpl	$384, %eax              # imm = 0x180
	jne	.LBB0_70
# BB#69:                                # %if.then.115
	movl	$0, dflag
.LBB0_70:                               # %if.end.116
	cmpl	$0, dflag
	jne	.LBB0_72
# BB#71:                                # %lor.lhs.false.118
	cmpl	$0, xflag
	jne	.LBB0_74
.LBB0_72:                               # %land.lhs.true.120
	movl	$384, %eax              # imm = 0x180
	movl	$448, %ecx              # imm = 0x1C0
	movl	-12720(%rbp), %edx
	andl	$448, %edx              # imm = 0x1C0
	cmpl	$0, dflag
	cmovnel	%ecx, %eax
	cmpl	%eax, %edx
	je	.LBB0_74
# BB#73:                                # %if.then.127
	xorl	%edi, %edi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.14, %rcx
	cmpl	$0, dflag
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_74:                               # %if.end.130
	cmpl	$0, dflag
	je	.LBB0_90
# BB#75:                                # %land.lhs.true.132
	cmpl	$4, -8(%rbp)
	je	.LBB0_77
# BB#76:                                # %lor.lhs.false.135
	cmpl	$5, -8(%rbp)
	jne	.LBB0_90
.LBB0_77:                               # %if.then.138
	callq	getpid
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	leaq	-12600(%rbp), %rsi
	movl	%eax, -8236(%rbp)
	addq	$4104, %rsi             # imm = 0x1008
	movq	LoginName, %rdi
	movq	%rdi, -12824(%rbp)      # 8-byte Spill
	movq	%rsi, %rdi
	movq	-12824(%rbp), %rsi      # 8-byte Reload
	callq	strncpy
	movb	$0, -8240(%rbp)
	cmpl	$2, dflag
	movq	%rax, -12832(%rbp)      # 8-byte Spill
	jne	.LBB0_79
# BB#78:                                # %if.then.151
	movl	$5, -12596(%rbp)
	jmp	.LBB0_80
.LBB0_79:                               # %if.else.153
	movl	$4, -12596(%rbp)
.LBB0_80:                               # %if.end.155
	movl	$18, %edi
	movabsq	$AttachSigCont, %rsi
	callq	xsignal
	leaq	-12600(%rbp), %rsi
	movl	-16(%rbp), %edi
	movq	%rax, -12840(%rbp)      # 8-byte Spill
	callq	WriteMessage
	cmpl	$0, %eax
	je	.LBB0_82
# BB#81:                                # %if.then.159
	callq	__errno_location
	movabsq	$.L.str.16, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_82:                               # %if.end.161
	movl	-16(%rbp), %edi
	callq	close
	movl	%eax, -12844(%rbp)      # 4-byte Spill
.LBB0_83:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, ContinuePlease
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_84
	jmp	.LBB0_85
.LBB0_84:                               # %while.body
                                        #   in Loop: Header=BB0_83 Depth=1
	callq	pause
	movl	%eax, -12848(%rbp)      # 4-byte Spill
	jmp	.LBB0_83
.LBB0_85:                               # %while.end
	movl	$18, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movl	$0, ContinuePlease
	cmpl	$2, -8(%rbp)
	movq	%rax, -12856(%rbp)      # 8-byte Spill
	je	.LBB0_87
# BB#86:                                # %if.then.168
	movl	$0, -4(%rbp)
	jmp	.LBB0_130
.LBB0_87:                               # %if.end.169
	movl	$1, %edi
	callq	sleep
	xorl	%edi, %edi
	movl	%eax, -12860(%rbp)      # 4-byte Spill
	callq	MakeClientSocket
	movl	%eax, -16(%rbp)
	cmpl	$-1, %eax
	jne	.LBB0_89
# BB#88:                                # %if.then.174
	xorl	%edi, %edi
	movabsq	$.L.str.17, %rsi
	movb	$0, %al
	callq	Panic
.LBB0_89:                               # %if.end.175
	movl	-8(%rbp), %eax
	movl	%eax, -12596(%rbp)
.LBB0_90:                               # %if.end.177
	jmp	.LBB0_91
.LBB0_91:                               # %do.body.178
	jmp	.LBB0_92
.LBB0_92:                               # %do.end.179
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-12600(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	addq	$304, %rcx              # imm = 0x130
	movq	attach_term, %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movb	$0, -8160(%rbp)
	movq	%rax, -12872(%rbp)      # 8-byte Spill
# BB#93:                                # %do.body.187
	jmp	.LBB0_94
.LBB0_94:                               # %do.end.188
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-12600(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	movq	LoginName, %rsi
	movq	%rcx, %rdi
	callq	strncpy
	leaq	-12600(%rbp), %rcx
	movb	$0, -8240(%rbp)
	movl	DefaultEsc, %r8d
	movl	%r8d, -8200(%rbp)
	movl	DefaultMetaEsc, %r8d
	movl	%r8d, -8196(%rbp)
	addq	$4104, %rcx             # imm = 0x1008
	addq	$276, %rcx              # imm = 0x114
	cmpq	$0, preselect
	movq	%rax, -12880(%rbp)      # 8-byte Spill
	movq	%rcx, -12888(%rbp)      # 8-byte Spill
	je	.LBB0_96
# BB#95:                                # %cond.true.205
	movq	preselect, %rax
	movq	%rax, -12896(%rbp)      # 8-byte Spill
	jmp	.LBB0_97
.LBB0_96:                               # %cond.false.206
	movabsq	$.L.str.18, %rax
	movq	%rax, -12896(%rbp)      # 8-byte Spill
	jmp	.LBB0_97
.LBB0_97:                               # %cond.end.207
	movq	-12896(%rbp), %rax      # 8-byte Reload
	movl	$19, %ecx
	movl	%ecx, %edx
	movq	-12888(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, -8201(%rbp)
	movq	%rax, -12904(%rbp)      # 8-byte Spill
	callq	getpid
	movabsq	$.L.str.19, %rdi
	movl	%eax, -8236(%rbp)
	movl	adaptflag, %eax
	movl	%eax, -8232(%rbp)
	movl	$0, -8224(%rbp)
	movl	$0, -8228(%rbp)
	callq	getenv
	movq	%rax, -12752(%rbp)
	cmpq	$0, %rax
	je	.LBB0_99
# BB#98:                                # %if.then.225
	movq	-12752(%rbp), %rdi
	callq	atoi
	movl	%eax, -8228(%rbp)
.LBB0_99:                               # %if.end.230
	movabsq	$.L.str.20, %rdi
	callq	getenv
	movq	%rax, -12752(%rbp)
	cmpq	$0, %rax
	je	.LBB0_101
# BB#100:                               # %if.then.233
	movq	-12752(%rbp), %rdi
	callq	atoi
	movl	%eax, -8224(%rbp)
.LBB0_101:                              # %if.end.238
	cmpl	$0, nwin_options+92
	jle	.LBB0_103
# BB#102:                               # %cond.true.241
	movl	nwin_options+92, %eax
	addl	$1, %eax
	movl	%eax, -12908(%rbp)      # 4-byte Spill
	jmp	.LBB0_104
.LBB0_103:                              # %cond.false.243
	xorl	%eax, %eax
	movl	%eax, -12908(%rbp)      # 4-byte Spill
	jmp	.LBB0_104
.LBB0_104:                              # %cond.end.244
	movl	-12908(%rbp), %eax      # 4-byte Reload
	movl	%eax, -8156(%rbp)
	cmpl	$2, dflag
	jne	.LBB0_106
# BB#105:                               # %if.then.250
	movl	$5, -8152(%rbp)
	jmp	.LBB0_110
.LBB0_106:                              # %if.else.253
	cmpl	$0, dflag
	je	.LBB0_108
# BB#107:                               # %if.then.255
	movl	$4, -8152(%rbp)
	jmp	.LBB0_109
.LBB0_108:                              # %if.else.259
	movl	$2, -8152(%rbp)
.LBB0_109:                              # %if.end.263
	jmp	.LBB0_110
.LBB0_110:                              # %if.end.264
	cmpq	$0, multi
	je	.LBB0_114
# BB#111:                               # %land.lhs.true.266
	cmpl	$2, -8(%rbp)
	je	.LBB0_113
# BB#112:                               # %lor.lhs.false.269
	cmpl	$3, -8(%rbp)
	jne	.LBB0_114
.LBB0_113:                              # %if.then.272
	movl	$18, %edi
	movabsq	$AttachSigCont, %rsi
	callq	xsignal
	movq	%rax, -12920(%rbp)      # 8-byte Spill
.LBB0_114:                              # %if.end.274
	leaq	-12600(%rbp), %rsi
	movl	-16(%rbp), %edi
	callq	WriteMessage
	cmpl	$0, %eax
	je	.LBB0_116
# BB#115:                               # %if.then.277
	callq	__errno_location
	movabsq	$.L.str.16, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_116:                              # %if.end.279
	movl	-16(%rbp), %edi
	callq	close
	movl	%eax, -12924(%rbp)      # 4-byte Spill
# BB#117:                               # %do.body.281
	jmp	.LBB0_118
.LBB0_118:                              # %do.end.282
	cmpq	$0, multi
	je	.LBB0_129
# BB#119:                               # %land.lhs.true.284
	cmpl	$2, -8(%rbp)
	je	.LBB0_121
# BB#120:                               # %lor.lhs.false.287
	cmpl	$3, -8(%rbp)
	jne	.LBB0_129
.LBB0_121:                              # %if.then.290
	jmp	.LBB0_122
.LBB0_122:                              # %while.cond.291
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, ContinuePlease
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_123
	jmp	.LBB0_124
.LBB0_123:                              # %while.body.294
                                        #   in Loop: Header=BB0_122 Depth=1
	callq	pause
	movl	%eax, -12928(%rbp)      # 4-byte Spill
	jmp	.LBB0_122
.LBB0_124:                              # %while.end.296
	movl	$18, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movl	$0, ContinuePlease
	movl	own_uid, %edi
	movq	%rax, -12936(%rbp)      # 8-byte Spill
	callq	xseteuid
	cmpl	$0, tty_oldmode
	jl	.LBB0_128
# BB#125:                               # %if.then.300
	movq	attach_tty, %rdi
	movl	tty_oldmode, %esi
	callq	chmod
	cmpl	$0, %eax
	je	.LBB0_127
# BB#126:                               # %if.then.303
	callq	__errno_location
	movabsq	$.L.str.1, %rsi
	movl	(%rax), %edi
	movq	attach_tty, %rdx
	movb	$0, %al
	callq	Panic
.LBB0_127:                              # %if.end.305
	jmp	.LBB0_128
.LBB0_128:                              # %if.end.306
	movl	$-1, tty_oldmode
	movl	real_uid, %edi
	callq	xseteuid
.LBB0_129:                              # %if.end.307
	movl	$0, rflag
	movl	$1, -4(%rbp)
.LBB0_130:                              # %return
	movl	-4(%rbp), %eax
	addq	$12944, %rsp            # imm = 0x3290
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Attach, .Lfunc_end0-Attach
	.cfi_endproc

	.align	16, 0x90
	.type	WriteMessage,@function
WriteMessage:                           # @WriteMessage
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$12584, -24(%rbp)       # imm = 0x3128
	movq	-16(%rbp), %rsi
	cmpl	$2, 4(%rsi)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	attach_fd, %edx
	callq	SendAttachMsg
	movl	%eax, -4(%rbp)
	jmp	.LBB1_12
.LBB1_2:                                # %if.end
	jmp	.LBB1_3
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB1_11
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$12584, %eax            # imm = 0x3128
	movl	%eax, %ecx
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rdx
	movslq	-24(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB1_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB1_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_3
.LBB1_7:                                # %if.end.11
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$-1, -20(%rbp)
	je	.LBB1_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB1_10
.LBB1_9:                                # %if.then.16
	movl	$-1, -4(%rbp)
	jmp	.LBB1_12
.LBB1_10:                               # %if.end.17
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB1_3
.LBB1_11:                               # %while.end
	movl	$0, -4(%rbp)
.LBB1_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	WriteMessage, .Lfunc_end1-WriteMessage
	.cfi_endproc

	.align	16, 0x90
	.type	AttachSigCont,@function
AttachSigCont:                          # @AttachSigCont
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB2_2
.LBB2_2:                                # %do.end
	movl	$1, ContinuePlease
	popq	%rbp
	retq
.Lfunc_end2:
	.size	AttachSigCont, .Lfunc_end2-AttachSigCont
	.cfi_endproc

	.globl	AttacherFinit
	.align	16, 0x90
	.type	AttacherFinit,@function
AttacherFinit:                          # @AttacherFinit
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
	subq	$12800, %rsp            # imm = 0x3200
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movl	$1, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	xsignal
	movabsq	$SockPath, %rdi
	leaq	-152(%rbp), %rsi
	movq	%rax, -12752(%rbp)      # 8-byte Spill
	callq	stat
	cmpl	$0, %eax
	jne	.LBB3_11
# BB#3:                                 # %land.lhs.true
	movl	-128(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	cmpl	$384, %eax              # imm = 0x180
	je	.LBB3_11
# BB#4:                                 # %if.then
	jmp	.LBB3_5
.LBB3_5:                                # %do.body.3
	jmp	.LBB3_6
.LBB3_6:                                # %do.end.4
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	leaq	-12736(%rbp), %rcx
	xorl	%esi, %esi
	movl	$12584, %eax            # imm = 0x3128
	movl	%eax, %edi
	movq	%rcx, %r8
	movq	%rdi, -12760(%rbp)      # 8-byte Spill
	movq	%r8, %rdi
	movq	-12760(%rbp), %r8       # 8-byte Reload
	movq	%rdx, -12768(%rbp)      # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -12776(%rbp)      # 8-byte Spill
	callq	memset
	movq	-12776(%rbp), %rcx      # 8-byte Reload
	addq	$8, %rcx
	movq	attach_tty, %rsi
	movq	%rcx, %rdi
	movq	-12768(%rbp), %rdx      # 8-byte Reload
	callq	strncpy
	movb	$0, -8633(%rbp)
	movq	%rax, -12784(%rbp)      # 8-byte Spill
# BB#7:                                 # %do.body.7
	jmp	.LBB3_8
.LBB3_8:                                # %do.end.8
	callq	getpid
	xorl	%edi, %edi
	movl	%eax, -8372(%rbp)
	movl	$7, -12732(%rbp)
	movl	$1836279557, -12736(%rbp) # imm = 0x6D736705
	callq	MakeClientSocket
	movl	%eax, -12740(%rbp)
	cmpl	$0, %eax
	jl	.LBB3_10
# BB#9:                                 # %if.then.13
	leaq	-12736(%rbp), %rsi
	movl	-12740(%rbp), %edi
	callq	WriteMessage
	movl	-12740(%rbp), %edi
	movl	%eax, -12788(%rbp)      # 4-byte Spill
	callq	close
	movl	%eax, -12792(%rbp)      # 4-byte Spill
.LBB3_10:                               # %if.end
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.16
	cmpl	$0, tty_oldmode
	jl	.LBB3_15
# BB#12:                                # %if.then.18
	movl	own_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB3_14
# BB#13:                                # %if.then.20
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB3_14:                               # %if.end.22
	movq	attach_tty, %rdi
	movl	tty_oldmode, %esi
	callq	chmod
	movl	%eax, -12796(%rbp)      # 4-byte Spill
.LBB3_15:                               # %if.end.24
	xorl	%edi, %edi
	callq	exit
.Lfunc_end3:
	.size	AttacherFinit, .Lfunc_end3-AttacherFinit
	.cfi_endproc

	.globl	Attacher
	.align	16, 0x90
	.type	Attacher,@function
Attacher:                               # @Attacher
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
	subq	$128, %rsp
	movl	$1, %edi
	movabsq	$AttacherFinit, %rsi
	callq	xsignal
	movl	$1, %edi
	movabsq	$AttacherFinit, %rsi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	xsignal
	movl	$10, %edi
	movabsq	$AttacherFinitBye, %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	xsignal
	movl	$12, %edi
	movabsq	$DoLock, %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	xsignal
	movl	$2, %edi
	movabsq	$AttacherSigInt, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	xsignal
	movl	$20, %edi
	movabsq	$SigStop, %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	xsignal
	movl	$28, %edi
	movabsq	$AttacherWinch, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	xsignal
	movq	%rax, -56(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	movl	$0, dflag
	movl	$1, xflag
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$14, %edi
	movabsq	$AttacherSigAlarm, %rsi
	callq	xsignal
	movl	$15, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	alarm
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	pause
	xorl	%edi, %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	alarm
	xorl	%esi, %esi
	movl	MasterPid, %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	kill
	cmpl	$0, %eax
	jge	.LBB4_8
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	__errno_location
	cmpl	$1, (%rax)
	je	.LBB4_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.14
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %do.end.15
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	AttacherPanic, %eax
	addl	$1, %eax
	movl	%eax, AttacherPanic
.LBB4_8:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, AttacherPanic
	je	.LBB4_10
# BB#9:                                 # %if.then.16
	xorl	%eax, %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	movb	$0, %al
	callq	fcntl
	xorl	%edi, %edi
	movabsq	$attach_Mode, %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	SetTTY
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	eexit
.LBB4_10:                               # %if.end.19
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, SuspendPlease
	je	.LBB4_16
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$20, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$0, SuspendPlease
	callq	xsignal
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#12:                                # %do.body.23
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %do.end.24
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	getpid
	movl	$20, %esi
	movl	%eax, %edi
	callq	kill
	movl	%eax, -100(%rbp)        # 4-byte Spill
# BB#14:                                # %do.body.27
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.28
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$20, %edi
	movabsq	$SigStop, %rsi
	callq	xsignal
	movl	$3, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	Attach
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB4_16:                               # %if.end.31
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, LockPlease
	je	.LBB4_18
# BB#17:                                # %if.then.33
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$0, LockPlease
	callq	LockTerminal
	movl	$3, %edi
	callq	Attach
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB4_18:                               # %if.end.35
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, SigWinchPlease
	je	.LBB4_20
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$6, %edi
	movl	$0, SigWinchPlease
	callq	Attach
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB4_20:                               # %if.end.39
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_3
.Lfunc_end4:
	.size	Attacher, .Lfunc_end4-Attacher
	.cfi_endproc

	.align	16, 0x90
	.type	AttacherFinitBye,@function
AttacherFinitBye:                       # @AttacherFinitBye
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
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.10, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB5_4:                                # %if.end
	movl	own_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then.4
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB5_6:                                # %if.end.6
	callq	getppid
	movl	%eax, -8(%rbp)
	cmpl	$1, %eax
	jle	.LBB5_8
# BB#7:                                 # %if.then.8
	movl	$1, %esi
	movl	-8(%rbp), %edi
	callq	Kill
.LBB5_8:                                # %if.end.9
	xorl	%edi, %edi
	callq	exit
.Lfunc_end5:
	.size	AttacherFinitBye, .Lfunc_end5-AttacherFinitBye
	.cfi_endproc

	.align	16, 0x90
	.type	DoLock,@function
DoLock:                                 # @DoLock
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB6_2
.LBB6_2:                                # %do.end
	movl	$1, LockPlease
	popq	%rbp
	retq
.Lfunc_end6:
	.size	DoLock, .Lfunc_end6-DoLock
	.cfi_endproc

	.align	16, 0x90
	.type	AttacherSigInt,@function
AttacherSigInt:                         # @AttacherSigInt
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
	subq	$16, %rsp
	movl	$2, %eax
	movabsq	$AttacherSigInt, %rsi
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	xsignal
	movl	$2, %esi
	movl	MasterPid, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	Kill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	AttacherSigInt, .Lfunc_end7-AttacherSigInt
	.cfi_endproc

	.align	16, 0x90
	.type	SigStop,@function
SigStop:                                # @SigStop
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB8_2
.LBB8_2:                                # %do.end
	movl	$1, SuspendPlease
	popq	%rbp
	retq
.Lfunc_end8:
	.size	SigStop, .Lfunc_end8-SigStop
	.cfi_endproc

	.align	16, 0x90
	.type	AttacherWinch,@function
AttacherWinch:                          # @AttacherWinch
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB9_2
.LBB9_2:                                # %do.end
	movl	$1, SigWinchPlease
	popq	%rbp
	retq
.Lfunc_end9:
	.size	AttacherWinch, .Lfunc_end9-AttacherWinch
	.cfi_endproc

	.align	16, 0x90
	.type	AttacherSigAlarm,@function
AttacherSigAlarm:                       # @AttacherSigAlarm
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
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	AttacherSigAlarm, .Lfunc_end10-AttacherSigAlarm
	.cfi_endproc

	.align	16, 0x90
	.type	LockTerminal,@function
LockTerminal:                           # @LockTerminal
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
	subq	$656, %rsp              # imm = 0x290
	movl	$1, -12(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$65, -12(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %edi
	cmpl	$17, -12(%rbp)
	cmoveq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	xsignal
	movslq	-12(%rbp), %rcx
	movq	%rax, -544(%rbp,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movl	$1, %edi
	movabsq	$LockHup, %rsi
	callq	xsignal
	movabsq	$.L.str.27, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.28, %rdi
	movl	%eax, -604(%rbp)        # 4-byte Spill
	callq	getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB11_37
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	movl	$.L.str.29, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_37
# BB#6:                                 # %land.lhs.true.7
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	access
	cmpl	$0, %eax
	jne	.LBB11_37
# BB#7:                                 # %if.then
	movl	$17, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movq	%rax, -616(%rbp)        # 8-byte Spill
# BB#8:                                 # %do.body
	jmp	.LBB11_9
.LBB11_9:                               # %do.end
	callq	fork
	movl	%eax, -16(%rbp)
	cmpl	$0, %eax
	jne	.LBB11_15
# BB#10:                                # %if.then.13
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	je	.LBB11_12
# BB#11:                                # %if.then.16
	callq	__errno_location
	movabsq	$.L.str.10, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB11_12:                              # %if.end
	movl	own_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB11_14
# BB#13:                                # %if.then.20
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB11_14:                              # %if.end.22
	xorl	%edi, %edi
	callq	closeallfiles
	movabsq	$.L.str.30, %rsi
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	execl
	movl	%eax, -620(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	exit
.LBB11_15:                              # %if.end.25
	cmpl	$-1, -16(%rbp)
	jne	.LBB11_17
# BB#16:                                # %if.then.27
	callq	__errno_location
	movabsq	$.L.str.31, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB11_36
.LBB11_17:                              # %if.else
	callq	__errno_location
	movl	$0, (%rax)
.LBB11_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-548(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rdi
	callq	wait
	movb	$1, %cl
	movl	%eax, -552(%rbp)
	cmpl	-16(%rbp), %eax
	movb	%cl, -621(%rbp)         # 1-byte Spill
	jne	.LBB11_22
# BB#19:                                # %lor.rhs
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -552(%rbp)
	movb	%cl, -622(%rbp)         # 1-byte Spill
	jne	.LBB11_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB11_18 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -622(%rbp)         # 1-byte Spill
.LBB11_21:                              # %land.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	-622(%rbp), %al         # 1-byte Reload
	movb	%al, -621(%rbp)         # 1-byte Spill
.LBB11_22:                              # %lor.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	-621(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_23
	jmp	.LBB11_24
.LBB11_23:                              # %while.body
                                        #   in Loop: Header=BB11_18 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	jmp	.LBB11_18
.LBB11_24:                              # %while.end
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB11_26
# BB#25:                                # %if.then.38
	callq	__errno_location
	movabsq	$.L.str.32, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movl	$2, %edi
	callq	sleep
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB11_35
.LBB11_26:                              # %if.else.41
	movl	-548(%rbp), %eax
	movl	%eax, -568(%rbp)
	movl	-568(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	je	.LBB11_28
# BB#27:                                # %if.then.43
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.34, %rcx
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movl	-548(%rbp), %r8d
	movl	%r8d, -576(%rbp)
	movl	-576(%rbp), %r8d
	andl	$127, %r8d
	movl	-548(%rbp), %r9d
	movl	%r9d, -584(%rbp)
	movl	-584(%rbp), %r9d
	andl	$128, %r9d
	cmpl	$0, %r9d
	cmovneq	%rcx, %rax
	movl	%r8d, %ecx
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -632(%rbp)        # 4-byte Spill
	callq	sleep
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB11_34
.LBB11_28:                              # %if.else.56
	movl	-548(%rbp), %eax
	movl	%eax, -592(%rbp)
	movl	-592(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$0, %eax
	je	.LBB11_32
# BB#29:                                # %if.then.62
	jmp	.LBB11_30
.LBB11_30:                              # %do.body.63
	jmp	.LBB11_31
.LBB11_31:                              # %do.end.64
	jmp	.LBB11_33
.LBB11_32:                              # %if.else.65
	movabsq	$.L.str.35, %rdi
	movabsq	$LockEnd, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -640(%rbp)        # 4-byte Spill
.LBB11_33:                              # %if.end.67
	jmp	.LBB11_34
.LBB11_34:                              # %if.end.68
	jmp	.LBB11_35
.LBB11_35:                              # %if.end.69
	jmp	.LBB11_36
.LBB11_36:                              # %if.end.70
	jmp	.LBB11_45
.LBB11_37:                              # %if.else.71
	cmpq	$0, -8(%rbp)
	je	.LBB11_41
# BB#38:                                # %if.then.73
	jmp	.LBB11_39
.LBB11_39:                              # %do.body.74
	jmp	.LBB11_40
.LBB11_40:                              # %do.end.75
	jmp	.LBB11_44
.LBB11_41:                              # %if.else.76
	jmp	.LBB11_42
.LBB11_42:                              # %do.body.77
	jmp	.LBB11_43
.LBB11_43:                              # %do.end.78
	jmp	.LBB11_44
.LBB11_44:                              # %if.end.79
	callq	screen_builtin_lck
.LBB11_45:                              # %if.end.80
	movl	$1, -12(%rbp)
.LBB11_46:                              # %for.cond.81
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$65, -12(%rbp)
	jge	.LBB11_51
# BB#47:                                # %for.body.83
                                        #   in Loop: Header=BB11_46 Depth=1
	movq	$-1, %rax
	movslq	-12(%rbp), %rcx
	cmpq	%rax, -544(%rbp,%rcx,8)
	je	.LBB11_49
# BB#48:                                # %if.then.87
                                        #   in Loop: Header=BB11_46 Depth=1
	movl	-12(%rbp), %edi
	movslq	-12(%rbp), %rax
	movq	-544(%rbp,%rax,8), %rsi
	callq	xsignal
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB11_49:                              # %if.end.91
                                        #   in Loop: Header=BB11_46 Depth=1
	jmp	.LBB11_50
.LBB11_50:                              # %for.inc.92
                                        #   in Loop: Header=BB11_46 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_46
.LBB11_51:                              # %for.end.94
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end11:
	.size	LockTerminal, .Lfunc_end11-LockTerminal
	.cfi_endproc

	.globl	SendCmdMessage
	.align	16, 0x90
	.type	SendCmdMessage,@function
SendCmdMessage:                         # @SendCmdMessage
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
	subq	$12848, %rsp            # imm = 0x3230
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB12_6
# BB#1:                                 # %if.then
	leaq	-36(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -12672(%rbp)      # 8-byte Spill
	movq	%rcx, %rdx
	movq	-12672(%rbp), %rcx      # 8-byte Reload
	callq	FindSocket
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then.2
	xorl	%edi, %edi
	movabsq	$.L.str.22, %rsi
	movb	$0, %al
	callq	Panic
.LBB12_3:                               # %if.end
	cmpl	$1, -32(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.4
	xorl	%edi, %edi
	movabsq	$.L.str.23, %rsi
	movb	$0, %al
	callq	Panic
.LBB12_5:                               # %if.end.5
	jmp	.LBB12_13
.LBB12_6:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	strlen
	cmpq	$255, %rax
	jbe	.LBB12_8
# BB#7:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movb	$0, 255(%rax)
.LBB12_8:                               # %if.end.9
	movq	-8(%rbp), %rdi
	callq	strlen
	cmpq	$1535, %rax             # imm = 0x5FF
	jbe	.LBB12_10
# BB#9:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movb	$0, 1535(%rax)
.LBB12_10:                              # %if.end.14
	movabsq	$.L.str.24, %rsi
	movabsq	$SockPath, %rax
	movl	$SockPath, %ecx
	movl	%ecx, %edi
	movq	%rsi, -12680(%rbp)      # 8-byte Spill
	movq	%rax, -12688(%rbp)      # 8-byte Spill
	callq	strlen
	movq	-12688(%rbp), %rsi      # 8-byte Reload
	addq	%rax, %rsi
	movq	-8(%rbp), %rdx
	movq	%rsi, %rdi
	movq	-12680(%rbp), %rsi      # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	$1, %edi
	movl	%eax, -12692(%rbp)      # 4-byte Spill
	callq	MakeClientSocket
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	jne	.LBB12_12
# BB#11:                                # %if.then.19
	movl	$1, %edi
	callq	exit
.LBB12_12:                              # %if.end.20
	jmp	.LBB12_13
.LBB12_13:                              # %if.end.21
	movl	$8, %eax
	movl	$9, %ecx
	xorl	%esi, %esi
	movl	$12584, %edx            # imm = 0x3128
                                        # kill: RDX<def> EDX<kill>
	leaq	-12624(%rbp), %rdi
	movl	%eax, -12696(%rbp)      # 4-byte Spill
	movl	%ecx, -12700(%rbp)      # 4-byte Spill
	callq	memset
	cmpl	$0, -28(%rbp)
	movl	-12696(%rbp), %eax      # 4-byte Reload
	movl	-12700(%rbp), %ecx      # 4-byte Reload
	cmovnel	%ecx, %eax
	movl	%eax, -12620(%rbp)
	cmpq	$0, attach_tty
	je	.LBB12_15
# BB#14:                                # %if.then.23
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	leaq	-12624(%rbp), %rcx
	addq	$8, %rcx
	movq	attach_tty, %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movb	$0, -8521(%rbp)
	movq	%rax, -12712(%rbp)      # 8-byte Spill
.LBB12_15:                              # %if.end.27
	leaq	-12624(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$264, %rax              # imm = 0x108
	movq	%rax, -12632(%rbp)
	movl	$0, -12640(%rbp)
.LBB12_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -12713(%rbp)       # 1-byte Spill
	je	.LBB12_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB12_16 Depth=1
	cmpl	$63, -12640(%rbp)
	setl	%al
	movb	%al, -12713(%rbp)       # 1-byte Spill
.LBB12_18:                              # %land.end
                                        #   in Loop: Header=BB12_16 Depth=1
	movb	-12713(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_19
	jmp	.LBB12_23
.LBB12_19:                              # %for.body
                                        #   in Loop: Header=BB12_16 Depth=1
	leaq	-12624(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -12728(%rbp)      # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -12636(%rbp)
	movq	-12632(%rbp), %rax
	movslq	-12636(%rbp), %rcx
	addq	%rcx, %rax
	movq	-12728(%rbp), %rcx      # 8-byte Reload
	addq	$4104, %rcx             # imm = 0x1008
	addq	$264, %rcx              # imm = 0x108
	addq	$4096, %rcx             # imm = 0x1000
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB12_21
# BB#20:                                # %if.then.42
	jmp	.LBB12_23
.LBB12_21:                              # %if.end.43
                                        #   in Loop: Header=BB12_16 Depth=1
	movq	-12632(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcpy
	movl	-12636(%rbp), %ecx
	movq	-12632(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -12632(%rbp)
	movq	%rax, -12736(%rbp)      # 8-byte Spill
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB12_16 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movl	-12640(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -12640(%rbp)
	jmp	.LBB12_16
.LBB12_23:                              # %for.end
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-12624(%rbp), %rcx
	movq	-12632(%rbp), %rsi
	movb	$0, (%rsi)
	movl	-12640(%rbp), %eax
	movl	%eax, -8260(%rbp)
	addq	$4104, %rcx             # imm = 0x1008
	movq	LoginName, %rsi
	movq	%rcx, %rdi
	callq	strncpy
	leaq	-12624(%rbp), %rcx
	movb	$0, -8264(%rbp)
	movl	$1836279557, -12624(%rbp) # imm = 0x6D736705
	addq	$4104, %rcx             # imm = 0x1008
	addq	$4364, %rcx             # imm = 0x110C
	cmpq	$0, preselect
	movq	%rax, -12744(%rbp)      # 8-byte Spill
	movq	%rcx, -12752(%rbp)      # 8-byte Spill
	je	.LBB12_25
# BB#24:                                # %cond.true
	movq	preselect, %rax
	movq	%rax, -12760(%rbp)      # 8-byte Spill
	jmp	.LBB12_26
.LBB12_25:                              # %cond.false
	movabsq	$.L.str.18, %rax
	movq	%rax, -12760(%rbp)      # 8-byte Spill
	jmp	.LBB12_26
.LBB12_26:                              # %cond.end
	movq	-12760(%rbp), %rax      # 8-byte Reload
	movl	$19, %ecx
	movl	%ecx, %edx
	movq	-12752(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, -4137(%rbp)
	movq	%rax, -12768(%rbp)      # 8-byte Spill
	callq	getpid
	movl	%eax, -4160(%rbp)
# BB#27:                                # %do.body
	jmp	.LBB12_28
.LBB12_28:                              # %do.end
	cmpl	$0, -28(%rbp)
	je	.LBB12_53
# BB#29:                                # %if.then.70
	movabsq	$SockPath, %rax
	movl	$SockPath, %ecx
	movl	%ecx, %edi
	movq	%rax, -12776(%rbp)      # 8-byte Spill
	callq	strlen
	movq	-12776(%rbp), %rdi      # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -12648(%rbp)
	movq	.LSendCmdMessage.query, %rax
	movq	%rax, -12656(%rbp)
	movl	$-1, -12664(%rbp)
	movb	$65, -12657(%rbp)
.LBB12_30:                              # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-12657(%rbp), %eax
	cmpl	$90, %eax
	jg	.LBB12_35
# BB#31:                                # %for.body.78
                                        #   in Loop: Header=BB12_30 Depth=1
	leaq	-12656(%rbp), %rsi
	movb	-12657(%rbp), %al
	movb	%al, -12650(%rbp)
	movq	-12648(%rbp), %rdi
	callq	strcpy
	movq	%rax, -12784(%rbp)      # 8-byte Spill
	callq	MakeServerSocket
	movl	%eax, -12664(%rbp)
	cmpl	$0, %eax
	jl	.LBB12_33
# BB#32:                                # %if.then.85
	jmp	.LBB12_35
.LBB12_33:                              # %if.end.86
                                        #   in Loop: Header=BB12_30 Depth=1
	jmp	.LBB12_34
.LBB12_34:                              # %for.inc.87
                                        #   in Loop: Header=BB12_30 Depth=1
	movb	-12657(%rbp), %al
	addb	$1, %al
	movb	%al, -12657(%rbp)
	jmp	.LBB12_30
.LBB12_35:                              # %for.end.89
	cmpl	$0, -12664(%rbp)
	jge	.LBB12_43
# BB#36:                                # %if.then.92
	movb	$48, -12657(%rbp)
.LBB12_37:                              # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-12657(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB12_42
# BB#38:                                # %for.body.97
                                        #   in Loop: Header=BB12_37 Depth=1
	leaq	-12656(%rbp), %rsi
	movb	-12657(%rbp), %al
	movb	%al, -12650(%rbp)
	movq	-12648(%rbp), %rdi
	callq	strcpy
	movq	%rax, -12792(%rbp)      # 8-byte Spill
	callq	MakeServerSocket
	movl	%eax, -12664(%rbp)
	cmpl	$0, %eax
	jl	.LBB12_40
# BB#39:                                # %if.then.104
	jmp	.LBB12_42
.LBB12_40:                              # %if.end.105
                                        #   in Loop: Header=BB12_37 Depth=1
	jmp	.LBB12_41
.LBB12_41:                              # %for.inc.106
                                        #   in Loop: Header=BB12_37 Depth=1
	movb	-12657(%rbp), %al
	addb	$1, %al
	movb	%al, -12657(%rbp)
	jmp	.LBB12_37
.LBB12_42:                              # %for.end.108
	jmp	.LBB12_43
.LBB12_43:                              # %if.end.109
	cmpl	$0, -12664(%rbp)
	jge	.LBB12_45
# BB#44:                                # %if.then.112
	xorl	%edi, %edi
	movabsq	$.L.str.25, %rsi
	movb	$0, %al
	callq	Panic
.LBB12_45:                              # %if.end.113
	movabsq	$SockPath, %rsi
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	leaq	-12624(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	addq	$4384, %rcx             # imm = 0x1120
	movq	%rcx, %rdi
	callq	strncpy
	movl	$18, %edi
	movabsq	$QueryResultSuccess, %rsi
	movb	$0, -41(%rbp)
	movq	%rax, -12800(%rbp)      # 8-byte Spill
	callq	xsignal
	movl	$1, %edi
	movabsq	$QueryResultFail, %rsi
	movq	%rax, -12808(%rbp)      # 8-byte Spill
	callq	xsignal
	leaq	-12624(%rbp), %rsi
	movl	-36(%rbp), %edi
	movq	%rax, -12816(%rbp)      # 8-byte Spill
	callq	WriteMessage
	cmpl	$0, %eax
	je	.LBB12_47
# BB#46:                                # %if.then.126
	callq	__errno_location
	movabsq	$.L.str.26, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB12_47:                              # %if.end.128
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -12820(%rbp)      # 4-byte Spill
.LBB12_48:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, QueryResult
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB12_49
	jmp	.LBB12_50
.LBB12_49:                              # %while.body
                                        #   in Loop: Header=BB12_48 Depth=1
	callq	pause
	movl	%eax, -12824(%rbp)      # 4-byte Spill
	jmp	.LBB12_48
.LBB12_50:                              # %while.end
	movl	$18, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	xsignal
	movl	$1, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -12832(%rbp)      # 8-byte Spill
	callq	xsignal
	movl	-12664(%rbp), %edi
	movq	%rax, -12840(%rbp)      # 8-byte Spill
	callq	ReceiveRaw
	movabsq	$SockPath, %rdi
	callq	unlink
	cmpl	$2, QueryResult
	movl	%eax, -12844(%rbp)      # 4-byte Spill
	jne	.LBB12_52
# BB#51:                                # %if.then.137
	movl	$1, %edi
	callq	exit
.LBB12_52:                              # %if.end.138
	jmp	.LBB12_56
.LBB12_53:                              # %if.else.139
	leaq	-12624(%rbp), %rsi
	movl	-36(%rbp), %edi
	callq	WriteMessage
	cmpl	$0, %eax
	je	.LBB12_55
# BB#54:                                # %if.then.142
	callq	__errno_location
	movabsq	$.L.str.26, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB12_55:                              # %if.end.144
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -12848(%rbp)      # 4-byte Spill
.LBB12_56:                              # %if.end.146
	addq	$12848, %rsp            # imm = 0x3230
	popq	%rbp
	retq
.Lfunc_end12:
	.size	SendCmdMessage, .Lfunc_end12-SendCmdMessage
	.cfi_endproc

	.align	16, 0x90
	.type	QueryResultSuccess,@function
QueryResultSuccess:                     # @QueryResultSuccess
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
	movl	%edi, -4(%rbp)
	movl	$1, QueryResult
	popq	%rbp
	retq
.Lfunc_end13:
	.size	QueryResultSuccess, .Lfunc_end13-QueryResultSuccess
	.cfi_endproc

	.align	16, 0x90
	.type	QueryResultFail,@function
QueryResultFail:                        # @QueryResultFail
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
	movl	%edi, -4(%rbp)
	movl	$2, QueryResult
	popq	%rbp
	retq
.Lfunc_end14:
	.size	QueryResultFail, .Lfunc_end14-QueryResultFail
	.cfi_endproc

	.align	16, 0x90
	.type	LockHup,@function
LockHup:                                # @LockHup
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	getppid
	movl	%eax, -8(%rbp)
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.10, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB15_2:                               # %if.end
	movl	own_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB15_4
# BB#3:                                 # %if.then.5
	callq	__errno_location
	movabsq	$.L.str.9, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB15_4:                               # %if.end.7
	cmpl	$1, -8(%rbp)
	jle	.LBB15_6
# BB#5:                                 # %if.then.8
	movl	$1, %esi
	movl	-8(%rbp), %edi
	callq	Kill
.LBB15_6:                               # %if.end.9
	xorl	%edi, %edi
	callq	exit
.Lfunc_end15:
	.size	LockHup, .Lfunc_end15-LockHup
	.cfi_endproc

	.align	16, 0x90
	.type	screen_builtin_lck,@function
screen_builtin_lck:                     # @screen_builtin_lck
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	$0, -328(%rbp)
	movl	$1, -360(%rbp)
	movl	$0, -360(%rbp)
	movq	ppp, %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	je	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	movq	-328(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB16_15
.LBB16_2:                               # %if.then
	movabsq	$.L.str.36, %rdi
	callq	getpass
	movq	%rax, -328(%rbp)
	cmpq	$0, %rax
	je	.LBB16_10
# BB#3:                                 # %if.then.3
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-352(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	strncpy
	movb	$0, -336(%rbp)
	movsbl	-352(%rbp), %ecx
	cmpl	$0, %ecx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jne	.LBB16_5
# BB#4:                                 # %if.then.9
	jmp	.LBB16_40
.LBB16_5:                               # %if.end
	movabsq	$.L.str.37, %rdi
	callq	getpass
	movq	%rax, -328(%rbp)
	cmpq	$0, %rax
	je	.LBB16_9
# BB#6:                                 # %if.then.12
	leaq	-352(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB16_8
# BB#7:                                 # %if.then.16
	movabsq	$.L.str.38, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	sleep
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB16_40
.LBB16_8:                               # %if.end.19
	jmp	.LBB16_9
.LBB16_9:                               # %if.end.20
	jmp	.LBB16_10
.LBB16_10:                              # %if.end.21
	cmpq	$0, -328(%rbp)
	jne	.LBB16_12
# BB#11:                                # %if.then.24
	movabsq	$.L.str.39, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	sleep
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB16_40
.LBB16_12:                              # %if.end.27
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$26, %ecx
	movl	%ecx, %edx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	cqto
	movq	-400(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	%edx, %ecx
	addl	$65, %ecx
	movb	%cl, %r8b
	movb	%r8b, -355(%rbp)
	callq	time
	leaq	-355(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	movl	$26, %ecx
	movl	%ecx, %edx
	sarq	$6, %rax
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	cqto
	movq	-408(%rbp), %r9         # 8-byte Reload
	idivq	%r9
	movl	%edx, %ecx
	addl	$65, %ecx
	movb	%cl, %r8b
	movb	%r8b, -354(%rbp)
	movb	$0, -353(%rbp)
	callq	crypt
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.LBB16_14
# BB#13:                                # %if.then.43
	movabsq	$.L.str.40, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	sleep
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB16_40
.LBB16_14:                              # %if.end.46
	movq	-328(%rbp), %rdi
	callq	SaveStr
	movq	ppp, %rdi
	movq	%rax, 8(%rdi)
	movq	%rax, -328(%rbp)
.LBB16_15:                              # %if.end.49
	jmp	.LBB16_16
.LBB16_16:                              # %do.body
	jmp	.LBB16_17
.LBB16_17:                              # %do.end
	movl	$91, %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rdi
	movq	ppp, %rcx
	movq	24(%rcx), %rsi
	callq	strncpy
	movl	$44, %esi
	leaq	-112(%rbp), %rdi
	movb	$0, -21(%rbp)
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	index
	movq	%rax, -120(%rbp)
	cmpq	$0, %rax
	je	.LBB16_19
# BB#18:                                # %if.then.57
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
.LBB16_19:                              # %if.end.58
	movl	$38, %esi
	leaq	-112(%rbp), %rdi
	callq	index
	movq	%rax, -120(%rbp)
	cmpq	$0, %rax
	je	.LBB16_24
# BB#20:                                # %if.then.63
	movl	$8, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rdi
	movq	ppp, %rcx
	movq	(%rcx), %rsi
	callq	strncpy
	movq	-120(%rbp), %rcx
	movb	$0, 8(%rcx)
	movq	-120(%rbp), %rcx
	movsbl	(%rcx), %r8d
	cmpl	$97, %r8d
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jl	.LBB16_23
# BB#21:                                # %land.lhs.true
	movq	-120(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$122, %ecx
	jg	.LBB16_23
# BB#22:                                # %if.then.72
	movq	-120(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$32, %ecx
	movb	%cl, %dl
	movb	%dl, (%rax)
.LBB16_23:                              # %if.end.75
	jmp	.LBB16_24
.LBB16_24:                              # %if.end.76
	movabsq	$.L.str.41, %rsi
	movabsq	$HostName, %r9
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.42, %rcx
	leaq	-112(%rbp), %rdx
	leaq	-320(%rbp), %rdi
	movsbl	-112(%rbp), %r8d
	cmpl	$0, %r8d
	cmovneq	%rcx, %rax
	movq	ppp, %rcx
	movq	(%rcx), %r8
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB16_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB16_26
.LBB16_26:                              # %do.body.84
                                        #   in Loop: Header=BB16_25 Depth=1
	jmp	.LBB16_27
.LBB16_27:                              # %do.end.85
                                        #   in Loop: Header=BB16_25 Depth=1
	callq	__errno_location
	leaq	-320(%rbp), %rdi
	movl	$0, (%rax)
	callq	getpass
	movq	%rax, -120(%rbp)
	cmpq	$0, %rax
	jne	.LBB16_29
# BB#28:                                # %if.then.91
                                        #   in Loop: Header=BB16_25 Depth=1
	xorl	%edi, %edi
	callq	AttacherFinit
.LBB16_29:                              # %if.end.92
                                        #   in Loop: Header=BB16_25 Depth=1
	cmpl	$0, -360(%rbp)
	je	.LBB16_31
# BB#30:                                # %if.then.94
                                        #   in Loop: Header=BB16_25 Depth=1
	jmp	.LBB16_35
.LBB16_31:                              # %if.else
                                        #   in Loop: Header=BB16_25 Depth=1
	movq	-120(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	crypt
	movq	%rax, -368(%rbp)
	cmpq	$0, -368(%rbp)
	je	.LBB16_34
# BB#32:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB16_25 Depth=1
	movq	-368(%rbp), %rdi
	movq	-328(%rbp), %rsi
	movq	-328(%rbp), %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB16_34
# BB#33:                                # %if.then.101
	jmp	.LBB16_38
.LBB16_34:                              # %if.end.102
                                        #   in Loop: Header=BB16_25 Depth=1
	jmp	.LBB16_35
.LBB16_35:                              # %if.end.103
                                        #   in Loop: Header=BB16_25 Depth=1
	jmp	.LBB16_36
.LBB16_36:                              # %do.body.104
                                        #   in Loop: Header=BB16_25 Depth=1
	jmp	.LBB16_37
.LBB16_37:                              # %do.end.105
                                        #   in Loop: Header=BB16_25 Depth=1
	xorl	%esi, %esi
	movq	-120(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -468(%rbp)        # 4-byte Spill
	callq	strlen
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	-468(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB16_25
.LBB16_38:                              # %for.end
	xorl	%esi, %esi
	movq	-120(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -484(%rbp)        # 4-byte Spill
	callq	strlen
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movl	-484(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	memset
# BB#39:                                # %do.body.108
	jmp	.LBB16_40
.LBB16_40:                              # %do.end.109
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	screen_builtin_lck, .Lfunc_end16-screen_builtin_lck
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"setresuid"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"chmod %s"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Sorry, cannot contact session \"%s\" again.\r\n"
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"There is no screen to be %sed matching %s."
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"attach"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"detach"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"resum"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"There is no screen to be %sed."
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Type \"screen [-d] -r [pid.]tty.host\" to resume one of them."
	.size	.L.str.8, 60

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"setuid"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"setgid"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stat %s"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Socket is in wrong mode (%03o)"
	.size	.L.str.12, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"That screen is %sdetached."
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"already "
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"not "
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"WriteMessage"
	.size	.L.str.16, 13

	.type	ContinuePlease,@object  # @ContinuePlease
	.local	ContinuePlease
	.comm	ContinuePlease,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Cannot contact screen again. Sigh."
	.size	.L.str.17, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LINES"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"COLUMNS"
	.size	.L.str.20, 8

	.type	AttacherPanic,@object   # @AttacherPanic
	.local	AttacherPanic
	.comm	AttacherPanic,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\nError: Cannot find master process to attach to!\n"
	.size	.L.str.21, 50

	.type	SuspendPlease,@object   # @SuspendPlease
	.local	SuspendPlease
	.comm	SuspendPlease,4,4
	.type	LockPlease,@object      # @LockPlease
	.local	LockPlease
	.comm	LockPlease,4,4
	.type	SigWinchPlease,@object  # @SigWinchPlease
	.local	SigWinchPlease
	.comm	SigWinchPlease,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"No screen session found."
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Use -S to specify a session."
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/%s"
	.size	.L.str.24, 4

	.type	.LSendCmdMessage.query,@object # @SendCmdMessage.query
.LSendCmdMessage.query:
	.asciz	"-queryX"
	.size	.LSendCmdMessage.query, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Could not create a listening socket to read the results."
	.size	.L.str.25, 57

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"write"
	.size	.L.str.26, 6

	.type	QueryResult,@object     # @QueryResult
	.local	QueryResult
	.comm	QueryResult,4,4
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\n"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"LOCKPRG"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"builtin"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"SCREEN-LOCK"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Cannot lock terminal - fork failed"
	.size	.L.str.31, 35

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Lock"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Lock: %s: Killed by signal: %d%s\n"
	.size	.L.str.33, 34

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" (Core dumped)"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s"
	.size	.L.str.35, 3

	.type	LockEnd,@object         # @LockEnd
	.data
	.align	16
LockEnd:
	.asciz	"Welcome back to screen !!\n"
	.size	LockEnd, 27

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Key:   "
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Again: "
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Passwords don't match.\007\n"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Getpass error.\007\n"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"crypt() error.\007\n"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Screen used by %s%s<%s> on %s.\nPassword:\007"
	.size	.L.str.41, 42

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" "
	.size	.L.str.42, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
