	.text
	.file	"socket.bc"
	.globl	FindSocket
	.align	16, 0x90
	.type	FindSocket,@function
FindSocket:                             # @FindSocket
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -204(%rbp)
	movl	$-1, -228(%rbp)
	movq	$0, -240(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -248(%rbp)
	movl	$0, -252(%rbp)
	movl	$0, -256(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -264(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -204(%rbp)
	cmpl	$255, -204(%rbp)
	jle	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	$255, -204(%rbp)
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %if.end.3
	movl	$SockPath, %eax
	movl	%eax, %edi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -200(%rbp)
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	movabsq	$SockPath, %rdi
	callq	opendir
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.9
	callq	__errno_location
	movabsq	$.L.str, %rsi
	movabsq	$SockPath, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB0_6:                                # %if.end.11
	leaq	-272(%rbp), %rax
	movq	$0, -272(%rbp)
	movq	%rax, -280(%rbp)
.LBB0_7:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_35 Depth 2
	movq	-40(%rbp), %rdi
	callq	readdir
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB0_129
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$0, -300(%rbp)
	movq	-48(%rbp), %rax
	addq	$19, %rax
	movq	%rax, -216(%rbp)
# BB#9:                                 # %do.body
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %do.end
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-216(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_13
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-216(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false.20
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-216(%rbp), %rdi
	callq	strlen
	cmpq	$1536, %rax             # imm = 0x600
	jbe	.LBB0_14
.LBB0_13:                               # %if.then.24
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_14:                               # %if.end.25
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_50
# BB#15:                                # %if.then.27
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jle	.LBB0_17
# BB#16:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB0_27
.LBB0_17:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jle	.LBB0_27
# BB#18:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB0_27
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               # %while.cond.43
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-224(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -313(%rbp)         # 1-byte Spill
	jl	.LBB0_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -313(%rbp)         # 1-byte Spill
.LBB0_22:                               # %land.end
                                        #   in Loop: Header=BB0_20 Depth=2
	movb	-313(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_23
	jmp	.LBB0_24
.LBB0_23:                               # %while.body.50
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB0_20
.LBB0_24:                               # %while.end
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB0_26
# BB#25:                                # %if.then.54
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
.LBB0_26:                               # %if.end.56
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.57
                                        #   in Loop: Header=BB0_7 Depth=1
	movabsq	$.L.str.1, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB0_7 Depth=1
	movabsq	$.L.str.1, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-224(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_30
# BB#29:                                # %if.then.64
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -224(%rbp)
.LBB0_30:                               # %if.end.65
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movslq	-204(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_46
# BB#31:                                # %if.then.69
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB0_44
# BB#32:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jle	.LBB0_44
# BB#33:                                # %land.lhs.true.76
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB0_44
# BB#34:                                # %if.then.80
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %while.cond.81
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-224(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -314(%rbp)         # 1-byte Spill
	jl	.LBB0_37
# BB#36:                                # %land.rhs.85
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -314(%rbp)         # 1-byte Spill
.LBB0_37:                               # %land.end.89
                                        #   in Loop: Header=BB0_35 Depth=2
	movb	-314(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_38
	jmp	.LBB0_39
.LBB0_38:                               # %while.body.90
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB0_35
.LBB0_39:                               # %while.end.92
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB0_41
# BB#40:                                # %if.then.96
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
.LBB0_41:                               # %if.end.98
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-32(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movslq	-204(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_43
# BB#42:                                # %if.then.102
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_43:                               # %if.end.103
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_45
.LBB0_44:                               # %if.else
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_45:                               # %if.end.104
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_47
.LBB0_46:                               # %if.else.105
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-224(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$0, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -300(%rbp)
.LBB0_47:                               # %if.end.110
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_48
.LBB0_48:                               # %do.body.111
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.112
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.113
                                        #   in Loop: Header=BB0_7 Depth=1
	movabsq	$.L.str.2, %rsi
	movabsq	$SockPath, %rax
	movslq	-200(%rbp), %rcx
	addq	%rcx, %rax
	movq	-216(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -320(%rbp)        # 4-byte Spill
# BB#51:                                # %do.body.117
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %do.end.118
                                        #   in Loop: Header=BB0_7 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
# BB#53:                                # %do.body.120
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_54
.LBB0_54:                               # %do.end.121
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %do.body.122
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_56
.LBB0_56:                               # %do.end.123
                                        #   in Loop: Header=BB0_7 Depth=1
	movabsq	$SockPath, %rdi
	leaq	-192(%rbp), %rsi
	callq	stat
	cmpl	$0, %eax
	je	.LBB0_60
# BB#57:                                # %if.then.126
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_58
.LBB0_58:                               # %do.body.127
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               # %do.end.128
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_60:                               # %if.end.129
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_61
.LBB0_61:                               # %do.body.130
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_62
.LBB0_62:                               # %do.end.131
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-168(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$49152, %eax            # imm = 0xC000
	je	.LBB0_64
# BB#63:                                # %if.then.134
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_64:                               # %if.end.135
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_65
.LBB0_65:                               # %do.body.136
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_66
.LBB0_66:                               # %do.end.137
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-164(%rbp), %eax
	cmpl	real_uid, %eax
	je	.LBB0_68
# BB#67:                                # %if.then.140
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_68:                               # %if.end.141
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-168(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	movl	%eax, -196(%rbp)
# BB#69:                                # %do.body.144
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               # %do.end.145
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpq	$0, multi
	je	.LBB0_82
# BB#71:                                # %land.lhs.true.147
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-196(%rbp), %eax
	andl	$447, %eax              # imm = 0x1BF
	cmpl	$385, %eax              # imm = 0x181
	je	.LBB0_82
# BB#72:                                # %if.then.151
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_73
.LBB0_73:                               # %do.body.152
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_74
.LBB0_74:                               # %do.end.153
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	multi, %rdi
	movq	LoginName, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_78
# BB#75:                                # %if.then.156
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_76
.LBB0_76:                               # %do.body.157
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               # %do.end.158
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$-4, -196(%rbp)
	jmp	.LBB0_81
.LBB0_78:                               # %if.else.159
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_79
.LBB0_79:                               # %do.body.160
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               # %do.end.161
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_81
.LBB0_81:                               # %if.end.162
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_82
.LBB0_82:                               # %if.end.163
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_83
.LBB0_83:                               # %do.body.164
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_84
.LBB0_84:                               # %do.end.165
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -288(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_86
# BB#85:                                # %if.then.169
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_86:                               # %if.end.170
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-288(%rbp), %rax
	movq	$0, (%rax)
	movq	-216(%rbp), %rdi
	callq	SaveStr
	xorl	%edi, %edi
	movq	-288(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-196(%rbp), %edx
	movq	-288(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-288(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	-244(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -244(%rbp)
	callq	MakeClientSocket
	movl	%eax, -232(%rbp)
	movl	real_uid, %edi
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	cmpl	$-1, -232(%rbp)
	jne	.LBB0_94
# BB#87:                                # %if.then.178
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_88
.LBB0_88:                               # %do.body.179
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_89
.LBB0_89:                               # %do.end.180
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-288(%rbp), %rax
	movl	$-3, 8(%rax)
	movl	-252(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -252(%rbp)
	movq	-288(%rbp), %rax
	movl	$-1, 8(%rax)
	cmpl	$0, wipeflag
	je	.LBB0_93
# BB#90:                                # %if.then.185
                                        #   in Loop: Header=BB0_7 Depth=1
	movabsq	$SockPath, %rdi
	callq	unlink
	cmpl	$0, %eax
	jne	.LBB0_92
# BB#91:                                # %if.then.189
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-288(%rbp), %rax
	movl	$-2, 8(%rax)
	movl	-256(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -256(%rbp)
.LBB0_92:                               # %if.end.192
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_93
.LBB0_93:                               # %if.end.193
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_94:                               # %if.end.194
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-196(%rbp), %eax
	andl	$510, %eax              # imm = 0x1FE
	movl	%eax, -196(%rbp)
# BB#95:                                # %do.body.196
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_96
.LBB0_96:                               # %do.end.197
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_97
.LBB0_97:                               # %do.body.198
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_98
.LBB0_98:                               # %do.end.199
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$448, -196(%rbp)        # imm = 0x1C0
	je	.LBB0_100
# BB#99:                                # %land.lhs.true.202
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$384, -196(%rbp)        # imm = 0x180
	jne	.LBB0_111
.LBB0_100:                              # %lor.lhs.false.205
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, dflag
	je	.LBB0_104
# BB#101:                               # %land.lhs.true.207
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, rflag
	jne	.LBB0_104
# BB#102:                               # %land.lhs.true.209
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, xflag
	jne	.LBB0_104
# BB#103:                               # %land.lhs.true.211
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$384, -196(%rbp)        # imm = 0x180
	je	.LBB0_111
.LBB0_104:                              # %lor.lhs.false.214
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, dflag
	jne	.LBB0_108
# BB#105:                               # %land.lhs.true.216
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, rflag
	je	.LBB0_108
# BB#106:                               # %land.lhs.true.218
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$448, -196(%rbp)        # imm = 0x1C0
	jne	.LBB0_108
# BB#107:                               # %land.lhs.true.221
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, xflag
	je	.LBB0_111
.LBB0_108:                              # %lor.lhs.false.223
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, dflag
	jne	.LBB0_114
# BB#109:                               # %land.lhs.true.225
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, rflag
	jne	.LBB0_114
# BB#110:                               # %land.lhs.true.227
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, xflag
	jne	.LBB0_114
.LBB0_111:                              # %if.then.229
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-232(%rbp), %edi
	callq	close
	movl	%eax, -324(%rbp)        # 4-byte Spill
# BB#112:                               # %do.body.231
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_113
.LBB0_113:                              # %do.end.232
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB0_7
.LBB0_114:                              # %if.end.234
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -300(%rbp)
	je	.LBB0_116
# BB#115:                               # %if.then.237
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
.LBB0_116:                              # %if.end.239
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB0_125
# BB#117:                               # %land.lhs.true.241
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$-1, -228(%rbp)
	je	.LBB0_120
# BB#118:                               # %lor.lhs.false.244
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$0, -300(%rbp)
	je	.LBB0_125
# BB#119:                               # %land.lhs.true.246
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$1, -264(%rbp)
	jne	.LBB0_125
.LBB0_120:                              # %if.then.249
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	$-1, -228(%rbp)
	je	.LBB0_122
# BB#121:                               # %if.then.252
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-228(%rbp), %edi
	callq	close
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB0_122:                              # %if.end.254
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-232(%rbp), %eax
	movl	%eax, -228(%rbp)
	movq	-288(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -240(%rbp)
# BB#123:                               # %do.body.256
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_124
.LBB0_124:                              # %do.end.257
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_128
.LBB0_125:                              # %if.else.258
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_126
.LBB0_126:                              # %do.body.259
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_127
.LBB0_127:                              # %do.end.260
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-232(%rbp), %edi
	callq	close
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB0_128:                              # %if.end.262
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_129:                              # %while.end.263
	movq	-40(%rbp), %rdi
	callq	closedir
	cmpl	$0, lsflag
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jne	.LBB0_132
# BB#130:                               # %land.lhs.true.266
	cmpl	$1, -264(%rbp)
	jne	.LBB0_132
# BB#131:                               # %if.then.269
	movl	-264(%rbp), %eax
	movl	%eax, -248(%rbp)
.LBB0_132:                              # %if.end.270
	cmpl	$0, -244(%rbp)
	je	.LBB0_154
# BB#133:                               # %land.lhs.true.272
	cmpl	$0, lsflag
	jne	.LBB0_135
# BB#134:                               # %lor.lhs.false.274
	cmpl	$1, -248(%rbp)
	je	.LBB0_154
.LBB0_135:                              # %land.lhs.true.277
	cmpl	$0, quietflag
	jne	.LBB0_154
# BB#136:                               # %if.then.279
	movl	-248(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	je	.LBB0_137
	jmp	.LBB0_172
.LBB0_172:                              # %if.then.279
	movl	-340(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB0_138
	jmp	.LBB0_139
.LBB0_137:                              # %sw.bb
	xorl	%edi, %edi
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.3, %rcx
	cmpl	$1, -244(%rbp)
	cmovgq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_140
.LBB0_138:                              # %sw.bb.282
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.5, %rcx
	cmpl	$1, -244(%rbp)
	cmovgq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_140
.LBB0_139:                              # %sw.default
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rsi
	movb	$0, %al
	callq	Msg
.LBB0_140:                              # %sw.epilog
	movq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
.LBB0_141:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -288(%rbp)
	je	.LBB0_153
# BB#142:                               # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movq	-288(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %edx
	subl	$-4, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%edx, -352(%rbp)        # 4-byte Spill
	je	.LBB0_150
	jmp	.LBB0_173
.LBB0_173:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$-3, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	je	.LBB0_149
	jmp	.LBB0_174
.LBB0_174:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$-2, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	je	.LBB0_148
	jmp	.LBB0_175
.LBB0_175:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB0_147
	jmp	.LBB0_176
.LBB0_176:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$384, %eax              # imm = 0x180
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB0_144
	jmp	.LBB0_177
.LBB0_177:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$385, %eax              # imm = 0x181
	movl	%eax, -372(%rbp)        # 4-byte Spill
	je	.LBB0_146
	jmp	.LBB0_178
.LBB0_178:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$448, %eax              # imm = 0x1C0
	movl	%eax, -376(%rbp)        # 4-byte Spill
	je	.LBB0_143
	jmp	.LBB0_179
.LBB0_179:                              # %for.body
                                        #   in Loop: Header=BB0_141 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$449, %eax              # imm = 0x1C1
	movl	%eax, -380(%rbp)        # 4-byte Spill
	je	.LBB0_145
	jmp	.LBB0_151
.LBB0_143:                              # %sw.bb.288
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.8, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_144:                              # %sw.bb.291
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_145:                              # %sw.bb.294
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.10, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_146:                              # %sw.bb.297
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.11, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_147:                              # %sw.bb.300
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.12, %rdi
	movl	$63, %edx
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_148:                              # %sw.bb.303
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.13, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_149:                              # %sw.bb.306
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.14, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB0_151
.LBB0_150:                              # %sw.bb.309
                                        #   in Loop: Header=BB0_141 Depth=1
	movabsq	$.L.str.15, %rdi
	movq	-288(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB0_151:                              # %sw.epilog.312
                                        #   in Loop: Header=BB0_141 Depth=1
	jmp	.LBB0_152
.LBB0_152:                              # %for.inc
                                        #   in Loop: Header=BB0_141 Depth=1
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB0_141
.LBB0_153:                              # %for.end
	jmp	.LBB0_154
.LBB0_154:                              # %if.end.314
	cmpl	$0, -252(%rbp)
	je	.LBB0_160
# BB#155:                               # %land.lhs.true.316
	cmpl	$0, quietflag
	jne	.LBB0_160
# BB#156:                               # %if.then.318
	movabsq	$.L.str.16, %rax
	movq	%rax, -312(%rbp)
	cmpl	$0, wipeflag
	je	.LBB0_158
# BB#157:                               # %if.then.320
	xorl	%edi, %edi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.18, %rcx
	movl	-256(%rbp), %edx
	cmpl	$1, -256(%rbp)
	cmovgq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	Msg
	jmp	.LBB0_159
.LBB0_158:                              # %if.else.324
	xorl	%edi, %edi
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.18, %rdx
	movq	-312(%rbp), %rsi
	cmpl	$1, -252(%rbp)
	movq	%rcx, %r8
	cmovgq	%rdx, %r8
	cmpl	$1, -252(%rbp)
	cmovgq	%rcx, %rax
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	Msg
.LBB0_159:                              # %if.end.331
	jmp	.LBB0_160
.LBB0_160:                              # %if.end.332
	cmpl	$-1, -228(%rbp)
	je	.LBB0_162
# BB#161:                               # %if.then.335
	movabsq	$.L.str.2, %rsi
	movabsq	$SockPath, %rax
	movslq	-200(%rbp), %rcx
	addq	%rcx, %rax
	movq	-240(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	-228(%rbp), %r8d
	movq	-8(%rbp), %rcx
	movl	%r8d, (%rcx)
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB0_163
.LBB0_162:                              # %if.else.339
	movslq	-200(%rbp), %rax
	movb	$0, SockPath(,%rax)
.LBB0_163:                              # %if.end.340
	movq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
.LBB0_164:                              # %for.cond.341
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -288(%rbp)
	je	.LBB0_167
# BB#165:                               # %for.body.343
                                        #   in Loop: Header=BB0_164 Depth=1
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	free
# BB#166:                               # %for.inc.346
                                        #   in Loop: Header=BB0_164 Depth=1
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB0_164
.LBB0_167:                              # %for.end.347
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	cmpq	$0, -24(%rbp)
	je	.LBB0_169
# BB#168:                               # %if.then.349
	movl	-260(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_169:                              # %if.end.350
	cmpq	$0, -16(%rbp)
	je	.LBB0_171
# BB#170:                               # %if.then.352
	movl	-244(%rbp), %eax
	subl	-256(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_171:                              # %if.end.353
	movl	-248(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FindSocket, .Lfunc_end0-FindSocket
	.cfi_endproc

	.globl	MakeClientSocket
	.align	16, 0x90
	.type	MakeClientSocket,@function
MakeClientSocket:                       # @MakeClientSocket
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
	subq	$144, %rsp
	movl	$1, %eax
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	socket
	movl	%eax, -8(%rbp)
	cmpl	$-1, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.21, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB1_2:                                # %if.end
	movabsq	$SockPath, %rsi
	movl	$108, %eax
	movl	%eax, %edx
	leaq	-120(%rbp), %rcx
	movw	$1, -120(%rbp)
	addq	$2, %rcx
	movq	%rcx, %rdi
	callq	strncpy
	movb	$0, -11(%rbp)
	movl	real_uid, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	leaq	-120(%rbp), %rax
	movl	-8(%rbp), %edi
	movq	%rax, -128(%rbp)
	movl	$SockPath, %r8d
	movl	%r8d, %eax
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$2, %rax
	movl	%eax, %r8d
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %edi        # 4-byte Reload
	movl	%r8d, %edx
	callq	connect
	cmpl	$-1, %eax
	jne	.LBB1_8
# BB#3:                                 # %if.then.8
	cmpl	$0, -4(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	callq	__errno_location
	movabsq	$.L.str.29, %rsi
	movabsq	$SockPath, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB1_5:                                # %if.end.11
	jmp	.LBB1_6
.LBB1_6:                                # %do.body
	jmp	.LBB1_7
.LBB1_7:                                # %do.end
	movl	-8(%rbp), %edi
	callq	close
	movl	$-1, -8(%rbp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB1_8:                                # %if.end.13
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	movl	-8(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	MakeClientSocket, .Lfunc_end1-MakeClientSocket
	.cfi_endproc

	.globl	MakeServerSocket
	.align	16, 0x90
	.type	MakeServerSocket,@function
MakeServerSocket:                       # @MakeServerSocket
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
	subq	$320, %rsp              # imm = 0x140
	movl	$1, %eax
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	socket
	movl	%eax, -4(%rbp)
	cmpl	$-1, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.21, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB2_2:                                # %if.end
	movabsq	$SockPath, %rsi
	movl	$108, %eax
	movl	%eax, %edx
	leaq	-120(%rbp), %rcx
	movw	$1, -120(%rbp)
	addq	$2, %rcx
	movq	%rcx, %rdi
	callq	strncpy
	movb	$0, -11(%rbp)
	movl	real_uid, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	xseteuid
	movl	real_gid, %edi
	callq	xsetegid
	leaq	-120(%rbp), %rax
	movl	-4(%rbp), %edi
	movq	%rax, -272(%rbp)
	movl	$SockPath, %r8d
	movl	%r8d, %eax
	movl	%edi, -292(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$2, %rax
	movl	%eax, %r8d
	movq	-272(%rbp), %rsi
	movl	-292(%rbp), %edi        # 4-byte Reload
	movl	%r8d, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB2_14
# BB#3:                                 # %if.then.8
	jmp	.LBB2_4
.LBB2_4:                                # %do.body
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	cmpl	$0, quietflag
	je	.LBB2_7
# BB#6:                                 # %if.then.9
	movl	$1, %esi
	movq	display, %rax
	movl	800(%rax), %edi
	callq	Kill
	movl	$11, %edi
	callq	eexit
.LBB2_7:                                # %if.end.10
	movabsq	$SockPath, %rdi
	callq	Filename
	xorl	%edi, %edi
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movabsq	$SockPath, %rdi
	leaq	-264(%rbp), %rsi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB2_9
# BB#8:                                 # %if.then.15
	callq	__errno_location
	movabsq	$.L.str.23, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB2_9:                                # %if.end.17
	movl	-236(%rbp), %eax
	cmpl	real_uid, %eax
	je	.LBB2_11
# BB#10:                                # %if.then.20
	xorl	%edi, %edi
	movabsq	$.L.str.24, %rsi
	movb	$0, %al
	callq	Panic
.LBB2_11:                               # %if.end.21
	movl	-240(%rbp), %eax
	andl	$448, %eax              # imm = 0x1C0
	cmpl	$384, %eax              # imm = 0x180
	jne	.LBB2_13
# BB#12:                                # %if.then.24
	xorl	%edi, %edi
	movabsq	$.L.str.25, %rsi
	movb	$0, %al
	callq	Panic
.LBB2_13:                               # %if.else
	xorl	%edi, %edi
	movabsq	$.L.str.26, %rsi
	movb	$0, %al
	callq	Panic
.LBB2_14:                               # %if.end.25
	movabsq	$SockPath, %rdi
	callq	unlink
	leaq	-120(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -280(%rbp)
	movl	$SockPath, %edx
	movl	%edx, %edi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$2, %rax
	movl	%eax, %ecx
	movq	-280(%rbp), %rsi
	movl	-300(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %edx
	callq	bind
	cmpl	$-1, %eax
	jne	.LBB2_16
# BB#15:                                # %if.then.36
	callq	__errno_location
	movabsq	$.L.str.27, %rsi
	movabsq	$SockPath, %rdx
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB2_16:                               # %if.end.38
	movabsq	$SockPath, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$64, %edx
	cmpq	$0, displays
	movl	%eax, %esi
	cmovnel	%edx, %esi
	orl	$384, %esi              # imm = 0x180
	cmpq	$0, multi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	callq	chmod
	movl	$5, %esi
	movl	-4(%rbp), %edi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	listen
	cmpl	$-1, %eax
	jne	.LBB2_18
# BB#17:                                # %if.then.47
	callq	__errno_location
	movabsq	$.L.str.28, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB2_18:                               # %if.end.49
	movl	-4(%rbp), %edi
	movl	%edi, -308(%rbp)        # 4-byte Spill
	callq	getpid
	movl	$8, %esi
	movl	-308(%rbp), %edi        # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	fcntl
	movl	%eax, -312(%rbp)        # 4-byte Spill
# BB#19:                                # %do.body.52
	jmp	.LBB2_20
.LBB2_20:                               # %do.end.53
	movl	eff_uid, %edi
	callq	xseteuid
	movl	eff_gid, %edi
	callq	xsetegid
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end2:
	.size	MakeServerSocket, .Lfunc_end2-MakeServerSocket
	.cfi_endproc

	.globl	SendCreateMsg
	.align	16, 0x90
	.type	SendCreateMsg,@function
SendCreateMsg:                          # @SendCreateMsg
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
	subq	$12752, %rsp            # imm = 0x31D0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -12632(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	cmpq	$255, %rax
	jbe	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	$0, 255(%rax)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	strlen
	cmpq	$1535, %rax             # imm = 0x5FF
	jbe	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movb	$0, 1535(%rax)
.LBB3_4:                                # %if.end.5
	movabsq	$.L.str.2, %rsi
	movabsq	$SockPath, %rax
	movl	$SockPath, %ecx
	movl	%ecx, %edi
	movq	%rsi, -12640(%rbp)      # 8-byte Spill
	movq	%rax, -12648(%rbp)      # 8-byte Spill
	callq	strlen
	movq	-12648(%rbp), %rsi      # 8-byte Reload
	addq	%rax, %rsi
	movq	-8(%rbp), %rdx
	movq	%rsi, %rdi
	movq	-12640(%rbp), %rsi      # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	$1, %edi
	movl	%eax, -12652(%rbp)      # 4-byte Spill
	callq	MakeClientSocket
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	jne	.LBB3_6
# BB#5:                                 # %if.then.10
	movl	$1, %edi
	callq	exit
.LBB3_6:                                # %if.end.11
	jmp	.LBB3_7
.LBB3_7:                                # %do.body
	jmp	.LBB3_8
.LBB3_8:                                # %do.end
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	leaq	-12608(%rbp), %rcx
	xorl	%esi, %esi
	movl	$12584, %eax            # imm = 0x3128
	movl	%eax, %edi
	movq	%rcx, %r8
	movq	%rdi, -12664(%rbp)      # 8-byte Spill
	movq	%r8, %rdi
	movq	-12664(%rbp), %r8       # 8-byte Reload
	movq	%rdx, -12672(%rbp)      # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -12680(%rbp)      # 8-byte Spill
	callq	memset
	movl	$0, -12604(%rbp)
	movq	-12680(%rbp), %rcx      # 8-byte Reload
	addq	$8, %rcx
	movq	attach_tty, %rsi
	movq	%rcx, %rdi
	movq	-12672(%rbp), %rdx      # 8-byte Reload
	callq	strncpy
	leaq	-12608(%rbp), %rcx
	movb	$0, -8505(%rbp)
	addq	$4104, %rcx             # imm = 0x1008
	addq	$20, %rcx
	movq	%rcx, -12616(%rbp)
	movl	$0, -12624(%rbp)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	nwin_undef+16, %rcx
	movq	%rax, -12688(%rbp)      # 8-byte Spill
	je	.LBB3_18
# BB#9:                                 # %if.then.19
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -12632(%rbp)
.LBB3_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-12632(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -12689(%rbp)       # 1-byte Spill
	je	.LBB3_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB3_10 Depth=1
	cmpl	$63, -12624(%rbp)
	setl	%al
	movb	%al, -12689(%rbp)       # 1-byte Spill
.LBB3_12:                               # %land.end
                                        #   in Loop: Header=BB3_10 Depth=1
	movb	-12689(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_13
	jmp	.LBB3_17
.LBB3_13:                               # %for.body
                                        #   in Loop: Header=BB3_10 Depth=1
	leaq	-12608(%rbp), %rax
	movq	-12632(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -12704(%rbp)      # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -12620(%rbp)
	movq	-12616(%rbp), %rax
	movslq	-12620(%rbp), %rcx
	addq	%rcx, %rax
	movq	-12704(%rbp), %rcx      # 8-byte Reload
	addq	$4104, %rcx             # imm = 0x1008
	addq	$20, %rcx
	addq	$4096, %rcx             # imm = 0x1000
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB3_15
# BB#14:                                # %if.then.32
	jmp	.LBB3_17
.LBB3_15:                               # %if.end.33
                                        #   in Loop: Header=BB3_10 Depth=1
	movq	-12616(%rbp), %rdi
	movq	-12632(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcpy
	movl	-12620(%rbp), %ecx
	movq	-12616(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -12616(%rbp)
	movq	%rax, -12712(%rbp)      # 8-byte Spill
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=1
	movq	-12632(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -12632(%rbp)
	movl	-12624(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -12624(%rbp)
	jmp	.LBB3_10
.LBB3_17:                               # %for.end
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.37
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	nwin_undef+8, %rax
	je	.LBB3_21
# BB#19:                                # %land.lhs.true
	leaq	-12608(%rbp), %rax
	movq	-12616(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	%rax, -12720(%rbp)      # 8-byte Spill
	movq	%rcx, -12728(%rbp)      # 8-byte Spill
	callq	strlen
	movq	-12728(%rbp), %rcx      # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	-12720(%rbp), %rax      # 8-byte Reload
	addq	$4104, %rax             # imm = 0x1008
	addq	$20, %rax
	addq	$4096, %rax             # imm = 0x1000
	cmpq	%rax, %rcx
	jae	.LBB3_21
# BB#20:                                # %if.then.51
	movq	-12616(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcpy
	movq	%rax, -12736(%rbp)      # 8-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %if.else
	movq	-12616(%rbp), %rax
	movb	$0, (%rax)
.LBB3_22:                               # %if.end.54
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %esi
	leaq	-12608(%rbp), %rcx
	movl	-12624(%rbp), %eax
	movl	%eax, -8488(%rbp)
	movq	-16(%rbp), %rdx
	movl	40(%rdx), %eax
	movl	%eax, -8500(%rbp)
	movq	-16(%rbp), %rdx
	movl	44(%rdx), %eax
	movl	%eax, -8496(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -8504(%rbp)
	movq	-16(%rbp), %rdx
	movl	52(%rdx), %eax
	movl	%eax, -8492(%rbp)
	addq	$4104, %rcx             # imm = 0x1008
	addq	$4116, %rcx             # imm = 0x1014
	movq	%rcx, %rdi
	callq	getcwd
	cmpq	$0, %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.74
	callq	__errno_location
	movabsq	$.L.str.30, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB3_31
.LBB3_24:                               # %if.end.76
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	nwin_undef+32, %rax
	je	.LBB3_26
# BB#25:                                # %if.then.79
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-12608(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	addq	$8212, %rcx             # imm = 0x2014
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movq	%rax, -12744(%rbp)      # 8-byte Spill
.LBB3_26:                               # %if.end.85
	movb	$0, -260(%rbp)
	movl	$1836279557, -12608(%rbp) # imm = 0x6D736705
# BB#27:                                # %do.body.90
	jmp	.LBB3_28
.LBB3_28:                               # %do.end.91
	movl	$12584, %eax            # imm = 0x3128
	movl	%eax, %edx
	leaq	-12608(%rbp), %rcx
	movl	-20(%rbp), %edi
	movq	%rcx, %rsi
	callq	write
	cmpq	$12584, %rax            # imm = 0x3128
	je	.LBB3_30
# BB#29:                                # %if.then.95
	callq	__errno_location
	movabsq	$.L.str.31, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB3_30:                               # %if.end.97
	movl	-20(%rbp), %edi
	callq	close
	movl	%eax, -12748(%rbp)      # 4-byte Spill
.LBB3_31:                               # %return
	addq	$12752, %rsp            # imm = 0x31D0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SendCreateMsg, .Lfunc_end3-SendCreateMsg
	.cfi_endproc

	.globl	SendErrorMsg
	.align	16, 0x90
	.type	SendErrorMsg,@function
SendErrorMsg:                           # @SendErrorMsg
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
	subq	$12656, %rsp            # imm = 0x3170
	movl	$8191, %eax             # imm = 0x1FFF
	movl	%eax, %edx
	leaq	-12616(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	addq	$4104, %rcx             # imm = 0x1008
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	xorl	%edi, %edi
	movb	$0, -321(%rbp)
	movq	%rax, -12624(%rbp)      # 8-byte Spill
	callq	MakeClientSocket
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	leaq	-12616(%rbp), %rcx
	movl	$1, -12612(%rbp)
	addq	$8, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movb	$0, -8513(%rbp)
	movl	$1836279557, -12616(%rbp) # imm = 0x6D736705
	movq	%rax, -12632(%rbp)      # 8-byte Spill
# BB#3:                                 # %do.body
	jmp	.LBB4_4
.LBB4_4:                                # %do.end
	movl	$12584, %eax            # imm = 0x3128
	movl	%eax, %edx
	leaq	-12616(%rbp), %rcx
	movl	-28(%rbp), %edi
	movq	%rcx, %rsi
	callq	write
	movl	-28(%rbp), %edi
	movq	%rax, -12640(%rbp)      # 8-byte Spill
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -12644(%rbp)      # 4-byte Spill
.LBB4_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$12656, %rsp            # imm = 0x3170
	popq	%rbp
	retq
.Lfunc_end4:
	.size	SendErrorMsg, .Lfunc_end4-SendErrorMsg
	.cfi_endproc

	.globl	ReceiveMsg
	.align	16, 0x90
	.type	ReceiveMsg,@function
ReceiveMsg:                             # @ReceiveMsg
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
	subq	$1456, %rsp             # imm = 0x5B0
	movl	ServerSocket, %eax
	movl	%eax, -20(%rbp)
	movl	$-1, -36(%rbp)
	movl	$110, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	leaq	-8(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movl	-20(%rbp), %edi
	movq	%rcx, -1272(%rbp)
	movq	-1272(%rbp), %rsi
	movq	%rax, %rdx
	callq	accept
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jge	.LBB5_4
# BB#3:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.32, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB5_128
.LBB5_4:                                # %if.end
	leaq	-1264(%rbp), %rax
	leaq	-232(%rbp), %rcx
	movabsq	$ReceiveMsg.m, %rdx
	xorl	%esi, %esi
	movl	$56, %edi
	movl	%edi, %r8d
	leaq	-216(%rbp), %r9
	movq	%rdx, -16(%rbp)
	movl	$12584, -4(%rbp)        # imm = 0x3128
	movq	%r9, %rdi
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
	callq	memset
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movq	%rax, -232(%rbp)
	movslq	-4(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -200(%rbp)
	movq	$1, -192(%rbp)
	movq	$1024, -176(%rbp)       # imm = 0x400
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -184(%rbp)
.LBB5_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB5_30
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB5_5 Depth=1
	leaq	-216(%rbp), %rsi
	xorl	%edx, %edx
	movl	-20(%rbp), %edi
	callq	recvmsg
	movl	%eax, %edx
	movl	%edx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB5_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_5 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB5_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB5_5 Depth=1
	jmp	.LBB5_5
.LBB5_9:                                # %if.end.12
	cmpl	$0, -8(%rbp)
	jge	.LBB5_11
# BB#10:                                # %if.then.15
	movl	-20(%rbp), %edi
	callq	close
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.33, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB5_128
.LBB5_11:                               # %if.end.18
	cmpq	$0, -176(%rbp)
	je	.LBB5_29
# BB#12:                                # %if.then.20
	cmpq	$16, -176(%rbp)
	jb	.LBB5_14
# BB#13:                                # %cond.true
	movq	-184(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB5_15
.LBB5_15:                               # %cond.end
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1280(%rbp)
.LBB5_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	cmpq	$0, -1280(%rbp)
	je	.LBB5_28
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-1280(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB5_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-1280(%rbp), %rax
	cmpl	$1, 12(%rax)
	je	.LBB5_20
.LBB5_19:                               # %if.then.30
                                        #   in Loop: Header=BB5_16 Depth=1
	jmp	.LBB5_27
.LBB5_20:                               # %if.end.31
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-1280(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -1296(%rbp)
	movq	-1280(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -1284(%rbp)
.LBB5_21:                               # %while.cond.33
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-1284(%rbp), %rax
	cmpq	$20, %rax
	jb	.LBB5_26
# BB#22:                                # %while.body.37
                                        #   in Loop: Header=BB5_21 Depth=2
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-1300(%rbp), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rcx, %rsi
	callq	bcopy
	cmpl	$0, -36(%rbp)
	jl	.LBB5_25
# BB#23:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB5_21 Depth=2
	movl	-1300(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.LBB5_25
# BB#24:                                # %if.then.43
                                        #   in Loop: Header=BB5_21 Depth=2
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -1364(%rbp)       # 4-byte Spill
.LBB5_25:                               # %if.end.45
                                        #   in Loop: Header=BB5_21 Depth=2
	movl	-1300(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-1284(%rbp), %rcx
	subq	$20, %rcx
	movl	%ecx, %eax
	movl	%eax, -1284(%rbp)
	jmp	.LBB5_21
.LBB5_26:                               # %while.end
                                        #   in Loop: Header=BB5_16 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc
                                        #   in Loop: Header=BB5_16 Depth=1
	leaq	-216(%rbp), %rdi
	movq	-1280(%rbp), %rsi
	callq	__cmsg_nxthdr
	movq	%rax, -1280(%rbp)
	jmp	.LBB5_16
.LBB5_28:                               # %for.end
	jmp	.LBB5_29
.LBB5_29:                               # %if.end.49
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -4(%rbp)
.LBB5_30:                               # %while.end.51
	jmp	.LBB5_31
.LBB5_31:                               # %while.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB5_38
# BB#32:                                # %while.body.55
                                        #   in Loop: Header=BB5_31 Depth=1
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	movslq	-4(%rbp), %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB5_35
# BB#33:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB5_31 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB5_35
# BB#34:                                # %if.then.65
                                        #   in Loop: Header=BB5_31 Depth=1
	jmp	.LBB5_31
.LBB5_35:                               # %if.end.66
                                        #   in Loop: Header=BB5_31 Depth=1
	cmpl	$0, -8(%rbp)
	jg	.LBB5_37
# BB#36:                                # %if.then.69
	jmp	.LBB5_38
.LBB5_37:                               # %if.end.70
                                        #   in Loop: Header=BB5_31 Depth=1
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB5_31
.LBB5_38:                               # %while.end.74
	movl	-20(%rbp), %edi
	callq	close
	cmpl	$0, -8(%rbp)
	movl	%eax, -1368(%rbp)       # 4-byte Spill
	jge	.LBB5_42
# BB#39:                                # %if.then.78
	callq	__errno_location
	movabsq	$.L.str.33, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	cmpl	$-1, -36(%rbp)
	je	.LBB5_41
# BB#40:                                # %if.then.82
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -1372(%rbp)       # 4-byte Spill
.LBB5_41:                               # %if.end.84
	jmp	.LBB5_128
.LBB5_42:                               # %if.end.85
	cmpl	$0, -4(%rbp)
	jle	.LBB5_49
# BB#43:                                # %if.then.88
	movslq	-4(%rbp), %rax
	cmpq	$12584, %rax            # imm = 0x3128
	je	.LBB5_45
# BB#44:                                # %if.then.92
	xorl	%edi, %edi
	movabsq	$.L.str.34, %rsi
	movl	$12584, %ecx            # imm = 0x3128
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	Msg
	jmp	.LBB5_48
.LBB5_45:                               # %if.else
	jmp	.LBB5_46
.LBB5_46:                               # %do.body.93
	jmp	.LBB5_47
.LBB5_47:                               # %do.end.94
	jmp	.LBB5_48
.LBB5_48:                               # %if.end.95
	jmp	.LBB5_128
.LBB5_49:                               # %if.end.96
	cmpl	$1836279557, ReceiveMsg.m # imm = 0x6D736705
	je	.LBB5_53
# BB#50:                                # %if.then.99
	cmpl	$-1, -36(%rbp)
	je	.LBB5_52
# BB#51:                                # %if.then.102
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -1376(%rbp)       # 4-byte Spill
.LBB5_52:                               # %if.end.104
	xorl	%edi, %edi
	movabsq	$.L.str.35, %rsi
	movl	ReceiveMsg.m, %edx
	movb	$0, %al
	callq	Msg
	jmp	.LBB5_128
.LBB5_53:                               # %if.end.105
	jmp	.LBB5_54
.LBB5_54:                               # %do.body.106
	jmp	.LBB5_55
.LBB5_55:                               # %do.end.107
	cmpl	$2, ReceiveMsg.m+4
	je	.LBB5_58
# BB#56:                                # %land.lhs.true.110
	cmpl	$-1, -36(%rbp)
	je	.LBB5_58
# BB#57:                                # %if.then.113
	movl	-36(%rbp), %edi
	callq	close
	movl	$-1, -36(%rbp)
	movl	%eax, -1380(%rbp)       # 4-byte Spill
.LBB5_58:                               # %if.end.115
	movq	displays, %rax
	movq	%rax, display
.LBB5_59:                               # %for.cond.116
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB5_64
# BB#60:                                # %for.body.118
                                        #   in Loop: Header=BB5_59 Depth=1
	movq	display, %rax
	addq	$804, %rax              # imm = 0x324
	movl	$ReceiveMsg.m+8, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_62
# BB#61:                                # %if.then.123
	jmp	.LBB5_64
.LBB5_62:                               # %if.end.124
                                        #   in Loop: Header=BB5_59 Depth=1
	jmp	.LBB5_63
.LBB5_63:                               # %for.inc.125
                                        #   in Loop: Header=BB5_59 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB5_59
.LBB5_64:                               # %for.end.126
	jmp	.LBB5_65
.LBB5_65:                               # %do.body.127
	jmp	.LBB5_66
.LBB5_66:                               # %do.end.128
	movq	$0, -32(%rbp)
	cmpq	$0, display
	jne	.LBB5_79
# BB#67:                                # %if.then.130
	movq	windows, %rax
	movq	%rax, -32(%rbp)
.LBB5_68:                               # %for.cond.131
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_78
# BB#69:                                # %for.body.133
                                        #   in Loop: Header=BB5_68 Depth=1
	movq	-32(%rbp), %rax
	addq	$11928, %rax            # imm = 0x2E98
	movl	$ReceiveMsg.m+8, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_76
# BB#70:                                # %if.then.137
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_72
# BB#71:                                # %cond.true.139
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB5_73
.LBB5_72:                               # %cond.false.142
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB5_73
.LBB5_73:                               # %cond.end.143
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movq	%rax, display
# BB#74:                                # %do.body.145
	jmp	.LBB5_75
.LBB5_75:                               # %do.end.146
	jmp	.LBB5_78
.LBB5_76:                               # %if.end.147
                                        #   in Loop: Header=BB5_68 Depth=1
	jmp	.LBB5_77
.LBB5_77:                               # %for.inc.148
                                        #   in Loop: Header=BB5_68 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_68
.LBB5_78:                               # %for.end.149
	jmp	.LBB5_79
.LBB5_79:                               # %if.end.150
	cmpq	$0, display
	je	.LBB5_82
# BB#80:                                # %land.lhs.true.152
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB5_82
# BB#81:                                # %if.then.154
	callq	RemoveStatus
.LBB5_82:                               # %if.end.155
	cmpq	$0, display
	je	.LBB5_88
# BB#83:                                # %land.lhs.true.157
	movq	display, %rax
	cmpb	$0, 440(%rax)
	jne	.LBB5_88
# BB#84:                                # %land.lhs.true.159
	cmpl	$7, ReceiveMsg.m+4
	je	.LBB5_88
# BB#85:                                # %if.then.162
	cmpl	$-1, -36(%rbp)
	je	.LBB5_87
# BB#86:                                # %if.then.165
	movl	-36(%rbp), %edi
	callq	close
	movl	%eax, -1396(%rbp)       # 4-byte Spill
.LBB5_87:                               # %if.end.167
	jmp	.LBB5_128
.LBB5_88:                               # %if.end.168
	movl	ReceiveMsg.m+4(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$9, %rdx
	movq	%rcx, -1408(%rbp)       # 8-byte Spill
	movq	%rdx, -1416(%rbp)       # 8-byte Spill
	ja	.LBB5_127
# BB#129:                               # %if.end.168
	movq	-1408(%rbp), %rax       # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_89:                               # %sw.bb
	cmpq	$0, display
	je	.LBB5_91
# BB#90:                                # %if.then.170
	movl	$1, %edi
	callq	CheckScreenSize
.LBB5_91:                               # %if.end.171
	jmp	.LBB5_128
.LBB5_92:                               # %sw.bb.172
	movabsq	$ReceiveMsg.m, %rdi
	callq	ExecCreate
	jmp	.LBB5_128
.LBB5_93:                               # %sw.bb.173
	cmpq	$0, display
	je	.LBB5_97
# BB#94:                                # %land.lhs.true.175
	movq	display, %rax
	cmpl	$0, 800(%rax)
	je	.LBB5_97
# BB#95:                                # %land.lhs.true.178
	xorl	%esi, %esi
	movq	display, %rax
	movl	800(%rax), %edi
	callq	kill
	cmpl	$0, %eax
	jne	.LBB5_97
# BB#96:                                # %if.then.183
	jmp	.LBB5_128
.LBB5_97:                               # %if.end.184
	jmp	.LBB5_98
.LBB5_98:                               # %do.body.185
	jmp	.LBB5_99
.LBB5_99:                               # %do.end.186
	jmp	.LBB5_100
.LBB5_100:                              # %sw.bb.187
	movabsq	$ReceiveMsg.m, %rdi
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	CreateTempDisplay
	cmpl	$0, %eax
	je	.LBB5_102
# BB#101:                               # %if.then.190
	jmp	.LBB5_128
.LBB5_102:                              # %if.end.191
	movq	display, %rax
	movq	8(%rax), %rax
	cmpq	$0, 272(%rax)
	je	.LBB5_105
# BB#103:                               # %land.lhs.true.193
	movq	display, %rax
	movq	8(%rax), %rax
	movq	272(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_105
# BB#104:                               # %if.then.198
	movabsq	$ReceiveMsg.m, %rdi
	callq	AskPassword
	jmp	.LBB5_106
.LBB5_105:                              # %if.else.199
	movabsq	$ReceiveMsg.m, %rdi
	callq	FinishAttach
.LBB5_106:                              # %if.end.200
	jmp	.LBB5_128
.LBB5_107:                              # %sw.bb.201
	xorl	%edi, %edi
	movabsq	$.L.str.36, %rsi
	movabsq	$ReceiveMsg.m, %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	jmp	.LBB5_128
.LBB5_108:                              # %sw.bb.202
	cmpq	$0, -32(%rbp)
	jne	.LBB5_110
# BB#109:                               # %if.then.204
	callq	Hangup
.LBB5_110:                              # %if.end.205
	jmp	.LBB5_128
.LBB5_111:                              # %sw.bb.206
	movabsq	$ReceiveMsg.m, %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, %rdi
	callq	FindUserPtr
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_117
# BB#112:                               # %land.lhs.true.209
	movq	-48(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB5_117
# BB#113:                               # %land.lhs.true.212
	movq	-48(%rbp), %rax
	movq	272(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_117
# BB#114:                               # %if.then.216
	movabsq	$ReceiveMsg.m, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %esi
	callq	CreateTempDisplay
	cmpl	$0, %eax
	je	.LBB5_116
# BB#115:                               # %if.then.219
	jmp	.LBB5_128
.LBB5_116:                              # %if.end.220
	movabsq	$ReceiveMsg.m, %rdi
	callq	AskPassword
	jmp	.LBB5_118
.LBB5_117:                              # %if.else.221
	movabsq	$ReceiveMsg.m, %rdi
	callq	FinishDetach
.LBB5_118:                              # %if.end.222
	jmp	.LBB5_128
.LBB5_119:                              # %sw.bb.223
	movabsq	$SockPath, %rdi
	callq	SaveStr
	xorl	%edi, %edi
	movq	%rax, -1312(%rbp)
	movl	$SockPath, %ecx
	movl	%ecx, %eax
	movl	$ReceiveMsg.m+8488, %ecx
	movl	%ecx, %esi
	movl	%edi, -1420(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	callq	strcpy
	movl	-1420(%rbp), %edi       # 4-byte Reload
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	MakeClientSocket
	movl	%eax, -1316(%rbp)
	movq	-1312(%rbp), %rsi
	movl	$SockPath, %eax
	movl	%eax, %edi
	callq	strcpy
	cmpq	$0, -1312(%rbp)
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jne	.LBB5_121
# BB#120:                               # %if.then.230
	callq	abort
.LBB5_121:                              # %if.else.231
	movq	-1312(%rbp), %rdi
	callq	free
# BB#122:                               # %if.end.232
	movq	$0, -1312(%rbp)
	cmpl	$0, -1316(%rbp)
	jl	.LBB5_124
# BB#123:                               # %if.then.235
	movabsq	$ReceiveMsg.m, %rdi
	movl	-1316(%rbp), %eax
	movl	%eax, queryflag
	callq	DoCommandMsg
	movl	-1316(%rbp), %edi
	callq	close
	movl	%eax, -1444(%rbp)       # 4-byte Spill
	jmp	.LBB5_125
.LBB5_124:                              # %if.else.237
	movl	$-1, queryflag
.LBB5_125:                              # %if.end.238
	movl	$1, %eax
	movl	$18, %ecx
	movl	ReceiveMsg.m+8464, %edi
	cmpl	$0, queryflag
	cmovgel	%ecx, %eax
	movl	%eax, %esi
	callq	Kill
	movl	$-1, queryflag
	jmp	.LBB5_128
.LBB5_126:                              # %sw.bb.242
	movabsq	$ReceiveMsg.m, %rdi
	callq	DoCommandMsg
	jmp	.LBB5_128
.LBB5_127:                              # %sw.default
	xorl	%edi, %edi
	movabsq	$.L.str.37, %rsi
	movl	ReceiveMsg.m+4, %edx
	movb	$0, %al
	callq	Msg
.LBB5_128:                              # %sw.epilog
	addq	$1456, %rsp             # imm = 0x5B0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ReceiveMsg, .Lfunc_end5-ReceiveMsg
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_92
	.quad	.LBB5_107
	.quad	.LBB5_100
	.quad	.LBB5_93
	.quad	.LBB5_111
	.quad	.LBB5_111
	.quad	.LBB5_89
	.quad	.LBB5_108
	.quad	.LBB5_126
	.quad	.LBB5_119

	.text
	.align	16, 0x90
	.type	ExecCreate,@function
ExecCreate:                             # @ExecCreate
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
	subq	$720, %rsp              # imm = 0x2D0
	movabsq	$nwin_undef, %rax
	movl	$120, %ecx
	movl	%ecx, %edx
	leaq	-128(%rbp), %rsi
	leaq	-640(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%r8, -656(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4104, %rdi             # imm = 0x1008
	addq	$20, %rdi
	movq	%rdi, -664(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-8(%rbp), %rax
	movl	4120(%rax), %ecx
	movl	%ecx, -644(%rbp)
	cmpl	$63, -644(%rbp)
	jle	.LBB6_2
# BB#1:                                 # %if.then
	movl	$63, -644(%rbp)
.LBB6_2:                                # %if.end
	cmpl	$0, -644(%rbp)
	je	.LBB6_11
# BB#3:                                 # %if.then.4
	movl	$10, %esi
	movl	$20, %ecx
	leaq	-688(%rbp), %rdx
	movq	-664(%rbp), %rdi
	movl	%esi, -700(%rbp)        # 4-byte Spill
	movl	%ecx, -704(%rbp)        # 4-byte Spill
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -692(%rbp)
	movq	-664(%rbp), %rdi
	movl	-700(%rbp), %esi        # 4-byte Reload
	movq	-712(%rbp), %rdx        # 8-byte Reload
	movl	-704(%rbp), %ecx        # 4-byte Reload
	callq	IsNumColon
	cmpl	$0, %eax
	je	.LBB6_10
# BB#4:                                 # %if.then.8
	cmpb	$0, -688(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.11
	leaq	-688(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB6_6:                                # %if.end.13
	movq	-664(%rbp), %rdi
	callq	atoi
	movl	%eax, -696(%rbp)
	cmpl	$0, -696(%rbp)
	jl	.LBB6_8
# BB#7:                                 # %lor.lhs.false
	movl	-696(%rbp), %eax
	movl	maxwin, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_9
.LBB6_8:                                # %if.then.19
	movl	$0, -696(%rbp)
.LBB6_9:                                # %if.end.20
	movl	-696(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-692(%rbp), %eax
	addl	$1, %eax
	movq	-664(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -664(%rbp)
	movl	-644(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -644(%rbp)
.LBB6_10:                               # %if.end.21
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.22
	jmp	.LBB6_12
.LBB6_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -644(%rbp)
	jle	.LBB6_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB6_12 Depth=1
	movq	-664(%rbp), %rax
	movq	-656(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -656(%rbp)
	movq	%rax, (%rcx)
	movq	-664(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	addq	-664(%rbp), %rax
	movq	%rax, -664(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	-644(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -644(%rbp)
	jmp	.LBB6_12
.LBB6_15:                               # %for.end
	movq	-656(%rbp), %rax
	movq	$0, (%rax)
	movq	-664(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_17
# BB#16:                                # %if.then.30
	movq	-664(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB6_17:                               # %if.end.32
	cmpq	$0, -640(%rbp)
	je	.LBB6_19
# BB#18:                                # %if.then.35
	leaq	-640(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB6_19:                               # %if.end.38
	movq	-8(%rbp), %rax
	movl	4108(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-8(%rbp), %rax
	movl	4112(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 8220(%rax)
	je	.LBB6_21
# BB#20:                                # %if.then.49
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$4116, %rax             # imm = 0x1014
	movq	%rax, -104(%rbp)
.LBB6_21:                               # %if.end.55
	movq	-8(%rbp), %rax
	movl	4104(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	4116(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 12316(%rax)
	je	.LBB6_23
# BB#22:                                # %if.then.65
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$8212, %rax             # imm = 0x2014
	movq	%rax, -96(%rbp)
.LBB6_23:                               # %if.end.70
	leaq	-128(%rbp), %rdi
	callq	MakeWindow
	movl	%eax, -716(%rbp)        # 4-byte Spill
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ExecCreate, .Lfunc_end6-ExecCreate
	.cfi_endproc

	.align	16, 0x90
	.type	CreateTempDisplay,@function
CreateTempDisplay:                      # @CreateTempDisplay
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	displays(%rip), %rdx
	movq	%rdx, -120(%rbp)
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %esi
	movl	%esi, %eax
	addl	$-2, %eax
	subl	$2, %eax
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jb	.LBB7_1
	jmp	.LBB7_53
.LBB7_53:                               # %entry
	movl	-132(%rbp), %eax        # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jb	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-16(%rbp), %rax
	movl	4364(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
	jmp	.LBB7_4
.LBB7_2:                                # %sw.bb.5
	movq	-16(%rbp), %rax
	movl	4364(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %sw.default
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_4:                                # %sw.epilog
	movl	-36(%rbp), %edi
	callq	CheckPid
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.38, %rsi
	movl	-36(%rbp), %edx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_6:                                # %if.end
	cmpl	$-1, -20(%rbp)
	je	.LBB7_14
# BB#7:                                 # %if.then.10
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$-1, -20(%rbp)
	movl	-52(%rbp), %edi
	callq	ttyname
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB7_9
# BB#8:                                 # %lor.lhs.false
	movq	-128(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_13
.LBB7_9:                                # %if.then.16
	callq	__errno_location
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	cmpq	$0, -128(%rbp)
	movl	%edi, -144(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	je	.LBB7_11
# BB#10:                                # %cond.true
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB7_12
.LBB7_11:                               # %cond.false
	movabsq	$.L.str.40, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB7_12
.LBB7_12:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.39, %rsi
	movl	-144(%rbp), %edi        # 4-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	Msg
	movl	-52(%rbp), %edi
	callq	close
	movl	$1, %esi
	movl	-36(%rbp), %edi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	Kill
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_13:                               # %if.end.22
	jmp	.LBB7_17
.LBB7_14:                               # %if.else
	movl	$2050, %esi             # imm = 0x802
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	secopen
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	jge	.LBB7_16
# BB#15:                                # %if.then.27
	callq	__errno_location
	movabsq	$.L.str.41, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movl	$1, %esi
	movl	-36(%rbp), %edi
	callq	Kill
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_16:                               # %if.end.31
	jmp	.LBB7_17
.LBB7_17:                               # %if.end.32
	cmpl	$0, -40(%rbp)
	je	.LBB7_19
# BB#18:                                # %if.then.34
	movl	$18, %esi
	movl	-36(%rbp), %edi
	callq	Kill
.LBB7_19:                               # %if.end.35
	cmpl	$0, -40(%rbp)
	je	.LBB7_30
# BB#20:                                # %if.then.37
	cmpq	$0, display
	jne	.LBB7_22
# BB#21:                                # %lor.lhs.false.39
	cmpq	$0, -32(%rbp)
	je	.LBB7_23
.LBB7_22:                               # %if.then.41
	movabsq	$.L.str.42, %rsi
	movl	$33, %eax
	movl	%eax, %edx
	movl	-52(%rbp), %edi
	callq	write
	movl	-52(%rbp), %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	close
	movl	$1, %esi
	movl	-36(%rbp), %edi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	Kill
	xorl	%edi, %edi
	movabsq	$.L.str.43, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_23:                               # %if.end.44
	movq	-48(%rbp), %rdi
	movq	LoginName, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB7_27
# BB#24:                                # %if.then.47
	movq	-48(%rbp), %rdi
	callq	FindUserPtr
	cmpq	$0, (%rax)
	jne	.LBB7_26
# BB#25:                                # %if.then.50
	movabsq	$.L.str.44, %rsi
	movl	$26, %eax
	movl	%eax, %edx
	movl	-52(%rbp), %edi
	callq	write
	movl	-52(%rbp), %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	close
	movl	$1, %esi
	movl	-36(%rbp), %edi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	Kill
	xorl	%edi, %edi
	movabsq	$.L.str.45, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_26:                               # %if.end.53
	jmp	.LBB7_27
.LBB7_27:                               # %if.end.54
	jmp	.LBB7_28
.LBB7_28:                               # %do.body
	jmp	.LBB7_29
.LBB7_29:                               # %do.end
	jmp	.LBB7_30
.LBB7_30:                               # %if.end.55
	leaq	-112(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	GetTTY
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	cmpl	$0, -40(%rbp)
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	je	.LBB7_32
# BB#31:                                # %cond.true.59
	movq	-16(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$304, %rax              # imm = 0x130
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB7_33
.LBB7_32:                               # %cond.false.63
	movabsq	$.L.str.19, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB7_33
.LBB7_33:                               # %cond.end.64
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %r9
	movl	-52(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	MakeDisplay
	cmpq	$0, %rax
	jne	.LBB7_35
# BB#34:                                # %if.then.68
	movabsq	$.L.str.46, %rsi
	movl	$24, %eax
	movl	%eax, %edx
	movl	-52(%rbp), %edi
	callq	write
	movl	-52(%rbp), %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	close
	xorl	%edi, %edi
	movabsq	$.L.str.47, %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	Msg
	movl	$1, %esi
	movl	-36(%rbp), %edi
	callq	Kill
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_35:                               # %if.end.71
	cmpl	$0, -40(%rbp)
	je	.LBB7_46
# BB#36:                                # %if.then.73
	movq	-16(%rbp), %rax
	cmpl	$1, 4444(%rax)
	jne	.LBB7_38
# BB#37:                                # %cond.true.77
	movl	$8, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB7_42
.LBB7_38:                               # %cond.false.78
	movq	-16(%rbp), %rax
	cmpl	$0, 4444(%rax)
	je	.LBB7_40
# BB#39:                                # %cond.true.83
	movq	-16(%rbp), %rax
	movl	4444(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB7_41
.LBB7_40:                               # %cond.false.87
	xorl	%eax, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB7_41
.LBB7_41:                               # %cond.end.88
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB7_42:                               # %cond.end.90
	movl	-240(%rbp), %eax        # 4-byte Reload
	movq	display, %rcx
	movl	%eax, 496(%rcx)
	movq	display, %rcx
	cmpl	$0, 496(%rcx)
	jl	.LBB7_44
# BB#43:                                # %lor.lhs.false.94
	movq	display, %rax
	movl	496(%rax), %edi
	callq	EncodingName
	cmpq	$0, %rax
	jne	.LBB7_45
.LBB7_44:                               # %if.then.98
	movq	display, %rax
	movl	$0, 496(%rax)
.LBB7_45:                               # %if.end.100
	jmp	.LBB7_46
.LBB7_46:                               # %if.end.101
	cmpl	$0, iflag
	je	.LBB7_49
# BB#47:                                # %land.lhs.true
	cmpq	$0, -120(%rbp)
	je	.LBB7_49
# BB#48:                                # %if.then.104
	movl	$0, iflag
	movq	-120(%rbp), %rax
	movb	$0, 5221(%rax)
	movq	-120(%rbp), %rax
	movl	5216(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 5216(%rax)
	movq	-120(%rbp), %rax
	movl	4900(%rax), %edi
	movq	-120(%rbp), %rax
	addq	$5204, %rax             # imm = 0x1454
	movq	%rax, %rsi
	callq	SetTTY
.LBB7_49:                               # %if.end.108
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	display, %rcx
	addq	$5204, %rcx             # imm = 0x1454
	movq	display, %rdx
	movl	5264(%rdx), %edx
	movl	iflag, %esi
	movq	%rax, %rdi
	movl	%esi, -248(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	-248(%rbp), %ecx        # 4-byte Reload
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
	je	.LBB7_51
# BB#50:                                # %if.then.115
	callq	__errno_location
	movabsq	$.L.str.48, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB7_51:                               # %if.end.117
	movl	$0, -4(%rbp)
.LBB7_52:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end7:
	.size	CreateTempDisplay, .Lfunc_end7-CreateTempDisplay
	.cfi_endproc

	.align	16, 0x90
	.type	AskPassword,@function
AskPassword:                            # @AskPassword
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB8_2
.LBB8_2:                                # %do.end
	movl	$12848, %eax            # imm = 0x3230
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.36, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB8_4:                                # %if.end
	movabsq	$.L.str.56, %rdi
	movabsq	$PasswordProcessInput, %rax
	movl	$12584, %ecx            # imm = 0x3128
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movl	$0, (%rsi)
	movq	-16(%rbp), %rsi
	addq	$264, %rsi              # imm = 0x108
	movq	-8(%rbp), %r8
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	display, %rdx
	movq	%rax, 360(%rdx)
	movq	display, %rax
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, 352(%rax)
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	AddStr
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	AskPassword, .Lfunc_end8-AskPassword
	.cfi_endproc

	.align	16, 0x90
	.type	FinishAttach,@function
FinishAttach:                           # @FinishAttach
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB9_2
.LBB9_2:                                # %do.end
	movq	display, %rax
	movl	800(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$4, 4448(%rax)
	je	.LBB9_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$5, 4448(%rax)
	jne	.LBB9_5
.LBB9_4:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	FinishDetach
.LBB9_5:                                # %if.end
	cmpq	$0, extra_outcap
	je	.LBB9_7
# BB#6:                                 # %if.then.6
	movq	extra_outcap, %rdi
	callq	free
.LBB9_7:                                # %if.end.7
	cmpq	$0, extra_incap
	je	.LBB9_9
# BB#8:                                 # %if.then.9
	movq	extra_incap, %rdi
	callq	free
.LBB9_9:                                # %if.end.10
	movq	$0, extra_outcap
	movq	$0, extra_incap
# BB#10:                                # %do.body.11
	jmp	.LBB9_11
.LBB9_11:                               # %do.end.12
	movabsq	$.L.str.49, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB9_13
# BB#12:                                # %if.then.14
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	StartRc
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %if.else
	movabsq	$.L.str.50, %rdi
	movl	$1, %esi
	callq	StartRc
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB9_14:                               # %if.end.17
	movl	$1, %esi
	movq	RcFileName, %rdi
	callq	StartRc
	movq	-8(%rbp), %rdi
	movl	4376(%rdi), %edi
	movq	-8(%rbp), %rcx
	movl	4372(%rcx), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	InitTermcap
	cmpl	$0, %eax
	je	.LBB9_16
# BB#15:                                # %if.then.25
	callq	FreeDisplay
	movl	$1, %esi
	movl	-20(%rbp), %edi
	callq	Kill
	jmp	.LBB9_72
.LBB9_16:                               # %if.end.26
	callq	MakeDefaultCanvas
	movq	-8(%rbp), %rcx
	movl	4368(%rcx), %edi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	InitTerm
	movq	displays, %rcx
	cmpq	$0, (%rcx)
	jne	.LBB9_18
# BB#17:                                # %if.then.31
	callq	chsock
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB9_18:                               # %if.end.33
	movl	$1, %edi
	movabsq	$SigHup, %rsi
	callq	xsignal
	movq	-8(%rbp), %rsi
	cmpl	$-1, 4400(%rsi)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB9_21
# BB#19:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$-1, 4404(%rax)
	je	.LBB9_21
# BB#20:                                # %if.then.41
	movq	-8(%rbp), %rax
	movl	4400(%rax), %ecx
	movq	display, %rax
	movq	8(%rax), %rax
	movl	%ecx, 292(%rax)
	movq	-8(%rbp), %rax
	movl	4404(%rax), %ecx
	movq	display, %rax
	movq	8(%rax), %rax
	movl	%ecx, 296(%rax)
.LBB9_21:                               # %if.end.49
	callq	RemoveLoginSlot
	movq	displays, %rax
	cmpq	$0, (%rax)
	jne	.LBB9_30
# BB#22:                                # %if.then.52
	movq	windows, %rax
	movq	%rax, -32(%rbp)
.LBB9_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_29
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 524(%rax)
	jl	.LBB9_27
# BB#25:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	$-1, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 11536(%rcx)
	je	.LBB9_27
# BB#26:                                # %if.then.57
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	-32(%rbp), %rdi
	callq	SetUtmp
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB9_27:                               # %if.end.59
                                        #   in Loop: Header=BB9_23 Depth=1
	jmp	.LBB9_28
.LBB9_28:                               # %for.inc
                                        #   in Loop: Header=BB9_23 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_23
.LBB9_29:                               # %for.end
	jmp	.LBB9_30
.LBB9_30:                               # %if.end.60
	movq	display, %rax
	movq	$0, 376(%rax)
	cmpq	$0, layout_attach
	je	.LBB9_36
# BB#31:                                # %if.then.62
	movabsq	$layout_last_marker, %rax
	movq	layout_attach, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	%rax, -40(%rbp)
	jne	.LBB9_33
# BB#32:                                # %if.then.64
	movq	layout_last, %rax
	movq	%rax, -40(%rbp)
.LBB9_33:                               # %if.end.65
	cmpq	$0, -40(%rbp)
	je	.LBB9_35
# BB#34:                                # %if.then.67
	movq	-40(%rbp), %rdi
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	LoadLayout
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	display, %rax
	movq	336(%rax), %rdi
	callq	SetCanvasWindow
.LBB9_35:                               # %if.end.68
	jmp	.LBB9_36
.LBB9_36:                               # %if.end.69
	jmp	.LBB9_37
.LBB9_37:                               # %do.body.70
	jmp	.LBB9_38
.LBB9_38:                               # %do.end.71
	movq	display, %rax
	movq	8(%rax), %rax
	cmpl	$0, 284(%rax)
	jl	.LBB9_40
# BB#39:                                # %if.then.74
	movq	display, %rax
	movq	8(%rax), %rax
	movslq	284(%rax), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, fore
	jmp	.LBB9_41
.LBB9_40:                               # %if.else.77
	movq	$0, fore
.LBB9_41:                               # %if.end.78
	movq	display, %rax
	movq	8(%rax), %rax
	cmpl	$0, 288(%rax)
	jl	.LBB9_43
# BB#42:                                # %if.then.81
	movq	display, %rax
	movq	8(%rax), %rax
	movslq	288(%rax), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	display, %rcx
	movq	%rax, 384(%rcx)
.LBB9_43:                               # %if.end.86
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 4380(%rax)
	je	.LBB9_54
# BB#44:                                # %if.then.90
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$276, %rax              # imm = 0x114
	movl	$.L.str.51, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_46
# BB#45:                                # %if.then.97
	movq	$0, fore
	jmp	.LBB9_53
.LBB9_46:                               # %if.else.98
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$276, %rax              # imm = 0x114
	movl	$.L.str.52, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_48
# BB#47:                                # %if.then.105
	movq	$0, fore
	movl	$1, -24(%rbp)
	jmp	.LBB9_52
.LBB9_48:                               # %if.else.106
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$276, %rax              # imm = 0x114
	movl	$.L.str.53, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_50
# BB#49:                                # %if.then.113
	leaq	-72(%rbp), %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-80(%rbp), %rax
	movq	$0, -80(%rbp)
	movl	$141, -72(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -48(%rbp)
	callq	DoAction
	jmp	.LBB9_51
.LBB9_50:                               # %if.else.114
	movq	fore, %rdi
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$276, %rax              # imm = 0x114
	movq	%rax, %rsi
	callq	FindNiceWindow
	movq	%rax, fore
.LBB9_51:                               # %if.end.120
	jmp	.LBB9_52
.LBB9_52:                               # %if.end.121
	jmp	.LBB9_53
.LBB9_53:                               # %if.end.122
	jmp	.LBB9_55
.LBB9_54:                               # %if.else.123
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	fore, %rdi
	callq	FindNiceWindow
	movq	%rax, fore
.LBB9_55:                               # %if.end.125
	cmpq	$0, fore
	je	.LBB9_57
# BB#56:                                # %if.then.127
	movq	fore, %rdi
	callq	SetForeWindow
	jmp	.LBB9_62
.LBB9_57:                               # %if.else.128
	cmpl	$0, -24(%rbp)
	jne	.LBB9_61
# BB#58:                                # %if.then.130
	xorl	%esi, %esi
	movabsq	$comms, %rax
	addq	$4272, %rax             # imm = 0x10B0
	movq	display, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, %rdx
	callq	AclCheckPermCmd
	cmpl	$0, %eax
	jne	.LBB9_60
# BB#59:                                # %if.then.134
	movl	$1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	display, %rcx
	movq	%rcx, -88(%rbp)
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, flayer
	callq	display_windows
	movl	$1, -24(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, display
.LBB9_60:                               # %if.end.136
	jmp	.LBB9_61
.LBB9_61:                               # %if.end.137
	jmp	.LBB9_62
.LBB9_62:                               # %if.end.138
	xorl	%edi, %edi
	callq	Activate
	callq	ResetIdle
	movq	display, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB9_65
# BB#63:                                # %land.lhs.true.141
	cmpl	$0, -24(%rbp)
	jne	.LBB9_65
# BB#64:                                # %if.then.143
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	ShowWindows
.LBB9_65:                               # %if.end.144
	movq	displays, %rax
	cmpq	$0, (%rax)
	jne	.LBB9_70
# BB#66:                                # %land.lhs.true.147
	cmpq	$0, console_window
	je	.LBB9_70
# BB#67:                                # %if.then.149
	movl	$1, %esi
	movabsq	$.L.str.54, %rdx
	movq	console_window, %rax
	movl	524(%rax), %edi
	callq	TtyGrabConsole
	cmpl	$0, %eax
	jne	.LBB9_69
# BB#68:                                # %if.then.153
	xorl	%edi, %edi
	movabsq	$.L.str.55, %rsi
	movabsq	$HostName, %rdx
	movq	console_window, %rax
	movl	192(%rax), %ecx
	movb	$0, %al
	callq	Msg
.LBB9_69:                               # %if.end.154
	jmp	.LBB9_70
.LBB9_70:                               # %if.end.155
	jmp	.LBB9_71
.LBB9_71:                               # %do.body.156
	jmp	.LBB9_72
.LBB9_72:                               # %do.end.157
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	FinishAttach, .Lfunc_end9-FinishAttach
	.cfi_endproc

	.align	16, 0x90
	.type	FinishDetach,@function
FinishDetach:                           # @FinishDetach
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$2, 4(%rdi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	display, %rax
	movl	800(%rax), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rax
	movl	4364(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB10_3:                               # %if.end
	movabsq	$displays, %rax
	movq	%rax, -24(%rbp)
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB10_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-32(%rbp), %rax
	movl	800(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB10_7
# BB#6:                                 # %if.then.4
	jmp	.LBB10_9
.LBB10_7:                               # %if.end.5
                                        #   in Loop: Header=BB10_4 Depth=1
	jmp	.LBB10_8
.LBB10_8:                               # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_4
.LBB10_9:                               # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB10_11
# BB#10:                                # %if.then.7
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB10_11:                              # %if.end.10
	movq	displays, %rax
	movq	%rax, display
.LBB10_12:                              # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB10_28
# BB#13:                                # %for.body.13
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB10_15
# BB#14:                                # %if.then.17
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	$4, %edi
	callq	Detach
	jmp	.LBB10_26
.LBB10_15:                              # %if.else.18
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$4, 4(%rax)
	jne	.LBB10_17
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	$2, %edi
	callq	Detach
	jmp	.LBB10_25
.LBB10_17:                              # %if.else.22
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 4(%rax)
	jne	.LBB10_24
# BB#18:                                # %if.then.25
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$5, 4448(%rax)
	jne	.LBB10_20
# BB#19:                                # %if.then.28
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	$4, %edi
	callq	Detach
	jmp	.LBB10_23
.LBB10_20:                              # %if.else.29
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$4, 4448(%rax)
	jne	.LBB10_22
# BB#21:                                # %if.then.34
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	$2, %edi
	callq	Detach
.LBB10_22:                              # %if.end.35
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.36
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.37
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_25
.LBB10_25:                              # %if.end.38
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_26
.LBB10_26:                              # %if.end.39
                                        #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_27
.LBB10_27:                              # %for.inc.40
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, display
	jmp	.LBB10_12
.LBB10_28:                              # %for.end.41
	movq	-32(%rbp), %rax
	movq	%rax, displays
	movq	%rax, display
	movq	-8(%rbp), %rax
	cmpl	$2, 4(%rax)
	je	.LBB10_32
# BB#29:                                # %if.then.44
	cmpq	$0, display
	je	.LBB10_31
# BB#30:                                # %if.then.46
	callq	FreeDisplay
.LBB10_31:                              # %if.end.47
	movl	$18, %esi
	movl	-36(%rbp), %edi
	callq	Kill
.LBB10_32:                              # %if.end.48
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	FinishDetach, .Lfunc_end10-FinishDetach
	.cfi_endproc

	.align	16, 0x90
	.type	DoCommandMsg,@function
DoCommandMsg:                           # @DoCommandMsg
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
	subq	$1648, %rsp             # imm = 0x670
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4104, %rdi             # imm = 0x1008
	addq	$264, %rdi              # imm = 0x108
	movq	%rdi, -1576(%rbp)
	movq	-8(%rbp), %rdi
	movl	4364(%rdi), %eax
	movl	%eax, -1564(%rbp)
	cmpl	$63, -1564(%rbp)
	jle	.LBB11_2
# BB#1:                                 # %if.then
	movl	$63, -1564(%rbp)
.LBB11_2:                               # %if.end
	leaq	-1552(%rbp), %rax
	movq	%rax, -1560(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -1564(%rbp)
	jle	.LBB11_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-1552(%rbp), %rax
	movq	-1576(%rbp), %rdi
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -1588(%rbp)
	movq	-1560(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -1560(%rbp)
	movb	$34, (%rax)
	movq	-1560(%rbp), %rdi
	movq	-1576(%rbp), %rsi
	movq	-1608(%rbp), %rax       # 8-byte Reload
	addq	$768, %rax              # imm = 0x300
	addq	$-2, %rax
	movq	%rax, %rdx
	callq	strncpy_escape_quote
	movq	%rax, -1560(%rbp)
	cmpq	$0, %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.8
	xorl	%edi, %edi
	movabsq	$.L.str.61, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, queryflag
	jmp	.LBB11_77
.LBB11_6:                               # %if.end.9
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-1588(%rbp), %eax
	addl	$1, %eax
	movq	-1576(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1576(%rbp)
	movq	-1560(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -1560(%rbp)
	movb	$34, (%rcx)
	movq	-1560(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -1560(%rbp)
	movb	$32, (%rcx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-1564(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1564(%rbp)
	jmp	.LBB11_3
.LBB11_8:                               # %for.end
	leaq	-1552(%rbp), %rax
	movq	-1560(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB11_10
# BB#9:                                 # %if.then.16
	movq	-1560(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -1560(%rbp)
	movb	$0, -1(%rax)
.LBB11_10:                              # %if.end.18
	movl	$768, %esi              # imm = 0x300
	leaq	-784(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	leaq	-1552(%rbp), %rdi
	callq	Parse
	cmpl	$0, %eax
	jg	.LBB11_12
# BB#11:                                # %if.then.25
	movl	$-1, queryflag
	jmp	.LBB11_77
.LBB11_12:                              # %if.end.26
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, %rdi
	callq	FindUserPtr
	movq	(%rax), %rax
	movq	%rax, -1584(%rbp)
	cmpq	$0, -1584(%rbp)
	jne	.LBB11_14
# BB#13:                                # %if.then.32
	xorl	%edi, %edi
	movabsq	$.L.str.62, %rsi
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, queryflag
	jmp	.LBB11_77
.LBB11_14:                              # %if.end.37
	movq	-1584(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB11_17
# BB#15:                                # %land.lhs.true
	movq	-1584(%rbp), %rax
	movq	272(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB11_17
# BB#16:                                # %if.then.42
	xorl	%edi, %edi
	movabsq	$.L.str.63, %rsi
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, queryflag
	jmp	.LBB11_77
.LBB11_17:                              # %if.end.47
	cmpq	$0, display
	jne	.LBB11_25
# BB#18:                                # %if.then.49
	movq	displays, %rax
	movq	%rax, display
.LBB11_19:                              # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB11_24
# BB#20:                                # %for.body.52
                                        #   in Loop: Header=BB11_19 Depth=1
	movq	display, %rax
	movq	8(%rax), %rax
	cmpq	-1584(%rbp), %rax
	jne	.LBB11_22
# BB#21:                                # %if.then.55
	jmp	.LBB11_24
.LBB11_22:                              # %if.end.56
                                        #   in Loop: Header=BB11_19 Depth=1
	jmp	.LBB11_23
.LBB11_23:                              # %for.inc.57
                                        #   in Loop: Header=BB11_19 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB11_19
.LBB11_24:                              # %for.end.58
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.59
	movq	windows, %rax
	movq	%rax, fore
.LBB11_26:                              # %for.cond.60
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, fore
	je	.LBB11_39
# BB#27:                                # %for.body.62
                                        #   in Loop: Header=BB11_26 Depth=1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	fore, %rcx
	addq	$11928, %rcx            # imm = 0x2E98
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_37
# BB#28:                                # %if.then.67
	cmpq	$0, display
	jne	.LBB11_33
# BB#29:                                # %if.then.69
	movq	fore, %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_31
# BB#30:                                # %cond.true
	movq	fore, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB11_32
.LBB11_31:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB11_32
.LBB11_32:                              # %cond.end
	movq	-1616(%rbp), %rax       # 8-byte Reload
	movq	%rax, display
.LBB11_33:                              # %if.end.73
	movq	fore, %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_35
# BB#34:                                # %lor.lhs.false
	movq	fore, %rax
	movq	24(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_36
.LBB11_35:                              # %if.then.81
	movq	$0, fore
.LBB11_36:                              # %if.end.82
	jmp	.LBB11_39
.LBB11_37:                              # %if.end.83
                                        #   in Loop: Header=BB11_26 Depth=1
	jmp	.LBB11_38
.LBB11_38:                              # %for.inc.84
                                        #   in Loop: Header=BB11_26 Depth=1
	movq	fore, %rax
	movq	(%rax), %rax
	movq	%rax, fore
	jmp	.LBB11_26
.LBB11_39:                              # %for.end.85
	cmpq	$0, display
	jne	.LBB11_41
# BB#40:                                # %if.then.87
	movq	displays, %rax
	movq	%rax, display
.LBB11_41:                              # %if.end.88
	movq	-8(%rbp), %rax
	cmpb	$0, 8468(%rax)
	je	.LBB11_51
# BB#42:                                # %if.then.93
	movl	$-1, -1592(%rbp)
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$4364, %rax             # imm = 0x110C
	movl	$.L.str.52, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_47
# BB#43:                                # %if.then.100
	movq	-8(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	addq	$4364, %rax             # imm = 0x110C
	movq	%rax, %rdi
	callq	WindowByNoN
	movl	%eax, -1592(%rbp)
	cmpl	$0, -1592(%rbp)
	jl	.LBB11_45
# BB#44:                                # %lor.lhs.false.108
	movslq	-1592(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB11_46
.LBB11_45:                              # %if.then.110
	xorl	%edi, %edi
	movabsq	$.L.str.64, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, queryflag
	jmp	.LBB11_77
.LBB11_46:                              # %if.end.111
	jmp	.LBB11_47
.LBB11_47:                              # %if.end.112
	cmpl	$0, -1592(%rbp)
	jl	.LBB11_49
# BB#48:                                # %cond.true.115
	movslq	-1592(%rbp), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	jmp	.LBB11_50
.LBB11_49:                              # %cond.false.118
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1624(%rbp)       # 8-byte Spill
	jmp	.LBB11_50
.LBB11_50:                              # %cond.end.119
	movq	-1624(%rbp), %rax       # 8-byte Reload
	movq	%rax, fore
	jmp	.LBB11_62
.LBB11_51:                              # %if.else
	cmpq	$0, fore
	jne	.LBB11_61
# BB#52:                                # %if.then.122
	cmpq	$0, display
	je	.LBB11_55
# BB#53:                                # %land.lhs.true.124
	movq	display, %rax
	movq	8(%rax), %rax
	cmpq	-1584(%rbp), %rax
	jne	.LBB11_55
# BB#54:                                # %if.then.128
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, fore
.LBB11_55:                              # %if.end.129
	cmpq	$0, fore
	jne	.LBB11_60
# BB#56:                                # %if.then.131
	movq	-1584(%rbp), %rax
	cmpl	$0, 284(%rax)
	jl	.LBB11_58
# BB#57:                                # %cond.true.134
	movq	-1584(%rbp), %rax
	movslq	284(%rax), %rax
	movq	wtab, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB11_59
.LBB11_58:                              # %cond.false.138
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB11_59
.LBB11_59:                              # %cond.end.139
	movq	-1632(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, fore
	movq	fore, %rdi
	callq	FindNiceWindow
	movq	%rax, fore
.LBB11_60:                              # %if.end.142
	jmp	.LBB11_61
.LBB11_61:                              # %if.end.143
	jmp	.LBB11_62
.LBB11_62:                              # %if.end.144
	cmpq	$0, fore
	jne	.LBB11_64
# BB#63:                                # %if.then.146
	movq	windows, %rax
	movq	%rax, fore
.LBB11_64:                              # %if.end.147
	movq	-1584(%rbp), %rax
	movq	%rax, EffectiveAclUser
	cmpq	$0, -528(%rbp)
	je	.LBB11_76
# BB#65:                                # %if.then.150
	movabsq	$.L.str.65, %rax
	movq	rc_name, %rcx
	movq	%rcx, -1600(%rbp)
	movq	%rax, rc_name
# BB#66:                                # %do.body
	jmp	.LBB11_67
.LBB11_67:                              # %do.end
	cmpq	$0, fore
	je	.LBB11_69
# BB#68:                                # %cond.true.152
	movq	fore, %rax
	addq	$24, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB11_70
.LBB11_69:                              # %cond.false.154
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB11_70
.LBB11_70:                              # %cond.end.155
	movq	-1640(%rbp), %rax       # 8-byte Reload
	movq	%rax, flayer
	cmpq	$0, fore
	je	.LBB11_75
# BB#71:                                # %land.lhs.true.158
	movq	fore, %rax
	cmpq	$0, 152(%rax)
	je	.LBB11_75
# BB#72:                                # %land.lhs.true.160
	movq	fore, %rax
	cmpl	$0, 160(%rax)
	jne	.LBB11_74
# BB#73:                                # %lor.lhs.false.162
	movq	fore, %rax
	movq	152(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_75
.LBB11_74:                              # %if.then.167
	movq	fore, %rax
	movq	152(%rax), %rax
	movq	%rax, flayer
.LBB11_75:                              # %if.end.169
	leaq	-784(%rbp), %rsi
	leaq	-528(%rbp), %rdi
	callq	DoCommand
	movq	-1600(%rbp), %rsi
	movq	%rsi, rc_name
.LBB11_76:                              # %if.end.172
	movq	$0, EffectiveAclUser
.LBB11_77:                              # %return
	addq	$1648, %rsp             # imm = 0x670
	popq	%rbp
	retq
.Lfunc_end11:
	.size	DoCommandMsg, .Lfunc_end11-DoCommandMsg
	.cfi_endproc

	.globl	ReceiveRaw
	.align	16, 0x90
	.type	ReceiveRaw,@function
ReceiveRaw:                             # @ReceiveRaw
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
	subq	$416, %rsp              # imm = 0x1A0
	leaq	-276(%rbp), %rax
	leaq	-392(%rbp), %rcx
	movl	%edi, -4(%rbp)
	movl	$0, -276(%rbp)
	movl	$110, -276(%rbp)
	movl	-4(%rbp), %edi
	movq	%rcx, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rax, %rdx
	callq	accept
	movl	%eax, -4(%rbp)
	cmpl	$0, %eax
	jge	.LBB12_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.32, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	jmp	.LBB12_6
.LBB12_2:                               # %if.end
	jmp	.LBB12_3
.LBB12_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$255, %eax
	movl	%eax, %edx
	leaq	-272(%rbp), %rsi
	movl	-4(%rbp), %edi
	callq	read
	movl	%eax, %edi
	movl	%edi, -276(%rbp)
	cmpl	$0, %edi
	jle	.LBB12_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movabsq	$.L.str.36, %rdi
	leaq	-272(%rbp), %rsi
	movslq	-276(%rbp), %rax
	movb	$0, -272(%rbp,%rax)
	movb	$0, %al
	callq	printf
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB12_3
.LBB12_5:                               # %while.end
	movl	-4(%rbp), %edi
	callq	close
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB12_6:                               # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ReceiveRaw, .Lfunc_end12-ReceiveRaw
	.cfi_endproc

	.globl	chsock
	.align	16, 0x90
	.type	chsock,@function
chsock:                                 # @chsock
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
	subq	$16, %rsp
	callq	geteuid
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	real_uid, %eax
	je	.LBB13_4
# BB#1:                                 # %if.then
	callq	UserContext
	cmpl	$0, %eax
	jg	.LBB13_3
# BB#2:                                 # %if.then.3
	callq	UserStatus
	movl	%eax, -4(%rbp)
	jmp	.LBB13_7
.LBB13_3:                               # %if.end
	jmp	.LBB13_4
.LBB13_4:                               # %if.end.5
	movabsq	$SockPath, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$64, %edx
	cmpq	$0, displays
	movl	%eax, %esi
	cmovnel	%edx, %esi
	orl	$384, %esi              # imm = 0x180
	cmpq	$0, multi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	callq	chmod
	movabsq	$SockPath, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, -8(%rbp)
	callq	utimes
	movl	-12(%rbp), %ecx
	cmpl	real_uid, %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB13_6
# BB#5:                                 # %if.then.12
	movl	-8(%rbp), %edi
	callq	UserReturn
.LBB13_6:                               # %if.end.13
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	chsock, .Lfunc_end13-chsock
	.cfi_endproc

	.globl	RecoverSocket
	.align	16, 0x90
	.type	RecoverSocket,@function
RecoverSocket:                          # @RecoverSocket
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
	movl	ServerSocket, %edi
	callq	close
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	geteuid
	cmpl	real_uid, %eax
	je	.LBB14_4
# BB#1:                                 # %if.then
	callq	UserContext
	cmpl	$0, %eax
	jle	.LBB14_3
# BB#2:                                 # %if.then.4
	movabsq	$SockPath, %rdi
	callq	unlink
	movl	%eax, %edi
	callq	UserReturn
.LBB14_3:                               # %if.end
	callq	UserStatus
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movabsq	$SockPath, %rdi
	callq	unlink
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB14_5:                               # %if.end.8
	callq	MakeServerSocket
	movl	%eax, ServerSocket
	cmpl	$0, %eax
	jge	.LBB14_7
# BB#6:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB14_8
.LBB14_7:                               # %if.end.12
	movabsq	$serv_read, %rdi
	callq	evdeq
	movabsq	$serv_read, %rdi
	movl	ServerSocket, %eax
	movl	%eax, serv_read+24
	callq	evenq
	movl	$1, -4(%rbp)
.LBB14_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	RecoverSocket, .Lfunc_end14-RecoverSocket
	.cfi_endproc

	.globl	SendAttachMsg
	.align	16, 0x90
	.type	SendAttachMsg,@function
SendAttachMsg:                          # @SendAttachMsg
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
	subq	$160, %rsp
	leaq	-128(%rbp), %rax
	leaq	-96(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	$56, %r9d
	movl	%r9d, %r10d
	leaq	-80(%rbp), %r11
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movq	$12584, -88(%rbp)       # imm = 0x3128
	movq	%r11, %rdi
	movl	%r8d, %esi
	movq	%r10, %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	memset
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	$1, -56(%rbp)
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -48(%rbp)
	movq	$24, -40(%rbp)
	cmpq	$16, -40(%rbp)
	jb	.LBB15_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB15_3
.LBB15_3:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	leaq	-20(%rbp), %rsi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-136(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-136(%rbp), %rax
	movq	$20, (%rax)
	movq	-136(%rbp), %rax
	addq	$16, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	bcopy
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB15_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	movl	-8(%rbp), %edi
	callq	sendmsg
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB15_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_4 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB15_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB15_4 Depth=1
	jmp	.LBB15_4
.LBB15_7:                               # %if.end
	cmpl	$-1, -24(%rbp)
	jne	.LBB15_9
# BB#8:                                 # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB15_10
.LBB15_9:                               # %if.end.14
	movl	$0, -4(%rbp)
.LBB15_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	SendAttachMsg, .Lfunc_end15-SendAttachMsg
	.cfi_endproc

	.align	16, 0x90
	.type	CheckPid,@function
CheckPid:                               # @CheckPid
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB16_2
.LBB16_2:                               # %do.end
	cmpl	$2, -8(%rbp)
	jge	.LBB16_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB16_9
.LBB16_4:                               # %if.end
	movl	eff_uid, %eax
	cmpl	real_uid, %eax
	jne	.LBB16_6
# BB#5:                                 # %if.then.2
	xorl	%esi, %esi
	movl	-8(%rbp), %edi
	callq	kill
	movl	%eax, -4(%rbp)
	jmp	.LBB16_9
.LBB16_6:                               # %if.end.3
	callq	UserContext
	cmpl	$0, %eax
	jle	.LBB16_8
# BB#7:                                 # %if.then.6
	xorl	%esi, %esi
	movl	-8(%rbp), %edi
	callq	kill
	movl	%eax, %edi
	callq	UserReturn
.LBB16_8:                               # %if.end.8
	callq	UserStatus
	movl	%eax, -4(%rbp)
.LBB16_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	CheckPid, .Lfunc_end16-CheckPid
	.cfi_endproc

	.align	16, 0x90
	.type	PasswordProcessInput,@function
PasswordProcessInput:                   # @PasswordProcessInput
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	display, %rdi
	movl	800(%rdi), %esi
	movl	%esi, -44(%rbp)
	movq	display, %rdi
	movq	360(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %esi
	movl	%esi, -32(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB17_27
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -28(%rbp)
	cmpl	$13, -28(%rbp)
	je	.LBB17_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$10, -28(%rbp)
	jne	.LBB17_15
.LBB17_4:                               # %if.then
	movq	$0, -56(%rbp)
	movq	display, %rax
	movq	8(%rax), %rax
	movq	272(%rax), %rax
	movq	%rax, -40(%rbp)
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, 4(%rcx,%rax)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	crypt
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB17_6
# BB#5:                                 # %lor.lhs.false.8
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB17_10
.LBB17_6:                               # %if.then.12
	xorl	%esi, %esi
	movl	$257, %eax              # imm = 0x101
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, %rdi
	callq	memset
	cmpq	$0, -56(%rbp)
	jne	.LBB17_8
# BB#7:                                 # %if.then.15
	movabsq	$.L.str.57, %rdi
	callq	AddStr
	jmp	.LBB17_9
.LBB17_8:                               # %if.else
	movabsq	$.L.str.58, %rdi
	callq	AddStr
.LBB17_9:                               # %if.end
	movq	display, %rax
	movq	$0, 360(%rax)
	callq	FreeDisplay
	xorl	%edi, %edi
	movabsq	$.L.str.59, %rsi
	movq	-24(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	addq	$8, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	Msg
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	callq	free
	movl	$1, %esi
	movl	-44(%rbp), %edi
	callq	Kill
	jmp	.LBB17_28
.LBB17_10:                              # %if.end.18
	movabsq	$.L.str.60, %rdi
	xorl	%esi, %esi
	movl	$257, %eax              # imm = 0x101
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$4, %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	AddStr
	movabsq	$ProcessInput, %rcx
	movq	display, %rdx
	movq	$0, 360(%rdx)
	movq	display, %rdx
	movq	%rcx, 352(%rdx)
	movq	-24(%rbp), %rcx
	cmpl	$4, 268(%rcx)
	je	.LBB17_12
# BB#11:                                # %lor.lhs.false.24
	movq	-24(%rbp), %rax
	cmpl	$5, 268(%rax)
	jne	.LBB17_13
.LBB17_12:                              # %if.then.29
	movq	-24(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	%rax, %rdi
	callq	FinishDetach
	jmp	.LBB17_14
.LBB17_13:                              # %if.else.31
	movq	-24(%rbp), %rax
	addq	$264, %rax              # imm = 0x108
	movq	%rax, %rdi
	callq	FinishAttach
.LBB17_14:                              # %if.end.33
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB17_28
.LBB17_15:                              # %if.end.34
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$3, -28(%rbp)
	jne	.LBB17_17
# BB#16:                                # %if.then.37
	movabsq	$.L.str.60, %rdi
	callq	AddStr
	callq	FreeDisplay
	movl	$1, %esi
	movl	-44(%rbp), %edi
	callq	Kill
	jmp	.LBB17_28
.LBB17_17:                              # %if.end.38
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$8, -28(%rbp)
	je	.LBB17_19
# BB#18:                                # %lor.lhs.false.41
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$127, -28(%rbp)
	jne	.LBB17_22
.LBB17_19:                              # %if.then.44
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	.LBB17_21
# BB#20:                                # %if.then.47
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
.LBB17_21:                              # %if.end.49
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_1
.LBB17_22:                              # %if.end.50
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$21, -28(%rbp)
	jne	.LBB17_24
# BB#23:                                # %if.then.53
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$0, -32(%rbp)
	jmp	.LBB17_1
.LBB17_24:                              # %if.end.54
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB17_26
# BB#25:                                # %if.then.57
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rsi
	movq	-24(%rbp), %rdi
	movb	%cl, 4(%rdi,%rsi)
.LBB17_26:                              # %if.end.62
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_1
.LBB17_27:                              # %while.end
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB17_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	PasswordProcessInput, .Lfunc_end17-PasswordProcessInput
	.cfi_endproc

	.align	16, 0x90
	.type	strncpy_escape_quote,@function
strncpy_escape_quote:                   # @strncpy_escape_quote
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB18_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setb	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB18_3:                               # %land.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_4
	jmp	.LBB18_10
.LBB18_4:                               # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB18_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$2, %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB18_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$92, (%rax)
	jmp	.LBB18_8
.LBB18_7:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB18_13
.LBB18_8:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_9
.LBB18_9:                               # %if.end.8
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB18_1
.LBB18_10:                              # %while.end
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.LBB18_12
# BB#11:                                # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB18_13
.LBB18_12:                              # %if.end.14
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_13:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	strncpy_escape_quote, .Lfunc_end18-strncpy_escape_quote
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot opendir %s"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tty"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/%s"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"There are screens on:"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"There is a screen on:"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"There are several screens on:"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"There is a suitable screen on:"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"There are several suitable screens on:"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\t%s\t(Attached)\n"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\t%s\t(Detached)\n"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\t%s\t(Multi, attached)\n"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\t%s\t(Multi, detached)\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\t%s\t(Dead ?%c?)\n"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\t%s\t(Removed)\n"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t%s\t(Remote or dead)\n"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\t%s\t(Private)\n"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Remove dead screens with 'screen -wipe'."
	.size	.L.str.16, 41

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%d socket%s wiped out."
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"s"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"es"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"socket"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"There is already a screen running on %s."
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"stat"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Unfortunately you are not its owner."
	.size	.L.str.24, 37

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"To resume it, use \"screen -r\""
	.size	.L.str.25, 30

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"It is not detached."
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"bind (%s)"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"listen"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s: connect"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"getcwd"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"write"
	.size	.L.str.31, 6

	.type	ReceiveMsg.m,@object    # @ReceiveMsg.m
	.local	ReceiveMsg.m
	.comm	ReceiveMsg.m,12584,4
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"accept"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"read"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Message %d of %d bytes too small"
	.size	.L.str.34, 33

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Invalid message (magic 0x%08x)."
	.size	.L.str.35, 32

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Invalid message (type %d)."
	.size	.L.str.37, 27

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Attach attempt with bad pid(%d)!"
	.size	.L.str.38, 33

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Attach: passed fd does not match tty: %s - %s!"
	.size	.L.str.39, 47

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"NULL"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Attach: Could not open %s!"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Attaching from inside of screen?\n"
	.size	.L.str.42, 34

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Attach msg ignored: coming from inside."
	.size	.L.str.43, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Access to session denied.\n"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Attach: access denied for user %s."
	.size	.L.str.45, 35

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Could not make display.\n"
	.size	.L.str.46, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Attach: could not make display for user %s"
	.size	.L.str.47, 43

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Warning: NBLOCK fcntl failed"
	.size	.L.str.48, 29

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"SYSSCREENRC"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"/usr/etc/screenrc"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"="
	.size	.L.str.51, 2

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"-"
	.size	.L.str.52, 2

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"+"
	.size	.L.str.53, 2

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"reattach"
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"console %s is on window %d"
	.size	.L.str.55, 27

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Screen password: "
	.size	.L.str.56, 18

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"\r\ncrypt() failed.\r\n"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"\r\nPassword incorrect.\r\n"
	.size	.L.str.58, 24

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Illegal reattach attempt from terminal %s."
	.size	.L.str.59, 43

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\r\n"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Remote command too long."
	.size	.L.str.61, 25

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Unknown user %s tried to send a command!"
	.size	.L.str.62, 41

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"User %s has a password, cannot use remote commands (using -Q or -X option)."
	.size	.L.str.63, 76

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Could not find pre-select window."
	.size	.L.str.64, 34

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"-X"
	.size	.L.str.65, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
