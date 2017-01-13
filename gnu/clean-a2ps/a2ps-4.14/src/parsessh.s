	.text
	.file	"parsessh.bc"
	.globl	sshparse
	.align	16, 0x90
	.type	sshparse,@function
sshparse:                               # @sshparse
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
	subq	$2608, %rsp             # imm = 0xA30
	leaq	-2192(%rbp), %rax
	leaq	-576(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movl	$0, -20(%rbp)
	movq	%rdx, -168(%rbp)
	movq	$128, -176(%rbp)
	movq	%rcx, -584(%rbp)
	movq	%rax, -2200(%rbp)
	movq	$200, -2216(%rbp)
	movl	$0, -2228(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, sshdebug
	je	.LBB0_3
# BB#2:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2396(%rbp)       # 4-byte Spill
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %do.end
	movl	$0, -4(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, sshnerrs
	movl	$-2, sshchar
	movq	-584(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	-2200(%rbp), %rax
	movq	%rax, -2208(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %yynewstate
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-592(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -592(%rbp)
.LBB0_6:                                # %yysetstate
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_228 Depth 2
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movq	-592(%rbp), %rdx
	movw	%cx, (%rdx)
	movq	-584(%rbp), %rdx
	movq	-2216(%rbp), %rsi
	shlq	$1, %rsi
	addq	%rsi, %rdx
	addq	$-2, %rdx
	cmpq	-592(%rbp), %rdx
	ja	.LBB0_26
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, %ecx
	movq	-592(%rbp), %rdx
	movq	-584(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$1, %rdx
	addq	$1, %rdx
	movq	%rdx, -2240(%rbp)
	cmpq	-2216(%rbp), %rcx
	ja	.LBB0_9
# BB#8:                                 # %if.then.8
	jmp	.LBB0_252
.LBB0_9:                                # %if.end.9
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, %ecx
	movq	-2216(%rbp), %rdx
	shlq	$1, %rdx
	movq	%rdx, -2216(%rbp)
	cmpq	-2216(%rbp), %rcx
	jae	.LBB0_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	$10000, -2216(%rbp)     # imm = 0x2710
.LBB0_11:                               # %if.end.13
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-584(%rbp), %rax
	movq	%rax, -2248(%rbp)
	imulq	$10, -2216(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -2256(%rbp)
	cmpq	$0, -2256(%rbp)
	jne	.LBB0_13
# BB#12:                                # %if.then.18
	jmp	.LBB0_252
.LBB0_13:                               # %if.end.19
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %do.body.20
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2256(%rbp), %rax
	movq	-584(%rbp), %rcx
	movq	-2240(%rbp), %rdx
	shlq	$1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-2256(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-2216(%rbp), %rax
	shlq	$1, %rax
	addq	$7, %rax
	movq	%rax, -2264(%rbp)
	movq	-2264(%rbp), %rax
	shrq	$3, %rax
	shlq	$3, %rax
	addq	-2256(%rbp), %rax
	movq	%rax, -2256(%rbp)
# BB#15:                                # %do.end.27
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.28
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2256(%rbp), %rax
	movq	-2200(%rbp), %rcx
	movq	-2240(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-2256(%rbp), %rax
	movq	%rax, -2200(%rbp)
	movq	-2216(%rbp), %rax
	shlq	$3, %rax
	addq	$7, %rax
	movq	%rax, -2272(%rbp)
	movq	-2272(%rbp), %rax
	shrq	$3, %rax
	shlq	$3, %rax
	addq	-2256(%rbp), %rax
	movq	%rax, -2256(%rbp)
# BB#17:                                # %do.end.37
                                        #   in Loop: Header=BB0_6 Depth=1
	leaq	-576(%rbp), %rax
	movq	-2248(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_19
# BB#18:                                # %if.then.41
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2248(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_19:                               # %if.end.42
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-584(%rbp), %rax
	movq	-2240(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	addq	$-2, %rax
	movq	%rax, -592(%rbp)
	movq	-2200(%rbp), %rax
	movq	-2240(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -2208(%rbp)
# BB#20:                                # %do.body.47
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_22
# BB#21:                                # %if.then.49
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movq	-2216(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2400(%rbp)       # 4-byte Spill
.LBB0_22:                               # %if.end.51
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %do.end.52
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-584(%rbp), %rax
	movq	-2216(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	addq	$-2, %rax
	cmpq	-592(%rbp), %rax
	ja	.LBB0_25
# BB#24:                                # %if.then.57
	jmp	.LBB0_251
.LBB0_25:                               # %if.end.58
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.59
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               # %do.body.60
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_29
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2404(%rbp)       # 4-byte Spill
.LBB0_29:                               # %if.end.64
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.65
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %yybackup
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movswl	sshpact(,%rax,2), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$-150, -8(%rbp)
	jne	.LBB0_33
# BB#32:                                # %if.then.69
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_73
.LBB0_33:                               # %if.end.70
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$-2, sshchar
	jne	.LBB0_39
# BB#34:                                # %if.then.73
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %do.body.74
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_37
# BB#36:                                # %if.then.76
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2408(%rbp)       # 4-byte Spill
.LBB0_37:                               # %if.end.78
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               # %do.end.79
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	sshlex
	movl	%eax, sshchar
.LBB0_39:                               # %if.end.81
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshchar
	jg	.LBB0_45
# BB#40:                                # %if.then.84
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$0, -20(%rbp)
	movl	$0, sshchar
# BB#41:                                # %do.body.85
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_43
# BB#42:                                # %if.then.87
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2412(%rbp)       # 4-byte Spill
.LBB0_43:                               # %if.end.89
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               # %do.end.90
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_53
.LBB0_45:                               # %if.else
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$289, sshchar           # imm = 0x121
	ja	.LBB0_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	sshchar, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2416(%rbp)       # 4-byte Spill
	jmp	.LBB0_48
.LBB0_47:                               # %cond.false
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$2, %eax
	movl	%eax, -2416(%rbp)       # 4-byte Spill
	jmp	.LBB0_48
.LBB0_48:                               # %cond.end
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-2416(%rbp), %eax       # 4-byte Reload
	movl	%eax, -20(%rbp)
# BB#49:                                # %do.body.96
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_51
# BB#50:                                # %if.then.98
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$sshlval, %rdx
	movq	stderr, %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -2420(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2424(%rbp)       # 4-byte Spill
.LBB0_51:                               # %if.end.101
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %do.end.102
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_53
.LBB0_53:                               # %if.end.103
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-20(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB0_56
# BB#54:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$218, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB0_56
# BB#55:                                # %lor.lhs.false.109
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-8(%rbp), %rax
	movzbl	sshyycheck(,%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB0_57
.LBB0_56:                               # %if.then.115
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_73
.LBB0_57:                               # %if.end.116
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-8(%rbp), %rax
	movzbl	sshyytable(,%rax), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.LBB0_62
# BB#58:                                # %if.then.122
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB0_60
# BB#59:                                # %lor.lhs.false.125
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$-1, -8(%rbp)
	jne	.LBB0_61
.LBB0_60:                               # %if.then.128
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_200
.LBB0_61:                               # %if.end.129
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_62:                               # %if.end.130
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$5, -8(%rbp)
	jne	.LBB0_64
# BB#63:                                # %if.then.133
	jmp	.LBB0_250
.LBB0_64:                               # %if.end.134
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB0_66
# BB#65:                                # %if.then.136
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB0_66:                               # %if.end.137
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_67
.LBB0_67:                               # %do.body.138
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_69
# BB#68:                                # %if.then.140
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.8, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$sshlval, %rdx
	movq	stderr, %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -2428(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2432(%rbp)       # 4-byte Spill
.LBB0_69:                               # %if.end.143
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               # %do.end.144
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshchar
	je	.LBB0_72
# BB#71:                                # %if.then.147
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$-2, sshchar
.LBB0_72:                               # %if.end.148
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-2208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2208(%rbp)
	movq	sshlval, %rdx
	movq	%rdx, 8(%rcx)
	jmp	.LBB0_5
.LBB0_73:                               # %yydefault
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	yydefact(,%rax), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_75
# BB#74:                                # %if.then.155
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_200
.LBB0_75:                               # %if.end.156
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_76
.LBB0_76:                               # %yyreduce
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %eax
	movslq	-8(%rbp), %rcx
	movzbl	sshr2(,%rcx), %edx
	movl	%edx, -2228(%rbp)
	subl	-2228(%rbp), %eax
	movslq	%eax, %rcx
	movq	-2208(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rcx, -2224(%rbp)
# BB#77:                                # %do.body.163
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_79
# BB#78:                                # %if.then.165
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	yy_reduce_print
.LBB0_79:                               # %if.end.166
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_80
.LBB0_80:                               # %do.end.167
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	subl	$90, %eax
	movq	%rcx, -2440(%rbp)       # 8-byte Spill
	movl	%eax, -2444(%rbp)       # 4-byte Spill
	ja	.LBB0_185
# BB#268:                               # %do.end.167
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2440(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_81:                               # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, parsed_style_sheet
	jmp	.LBB0_186
.LBB0_82:                               # %sw.bb.169
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.9, %rax
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rcx
	movq	-2208(%rbp), %rdx
	movq	-16(%rdx), %rdx
	movq	%rcx, 8(%rdx)
	movq	-2208(%rbp), %rcx
	movq	-16(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_83:                               # %sw.bb.178
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.10, %rdi
	callq	new_style_sheet
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_84:                               # %sw.bb.181
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$2, highlight_level
	jne	.LBB0_86
# BB#85:                                # %if.then.184
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	Plain_fface, %rsi
	callq	words_set_no_face
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	592(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rsi
	callq	words_merge_rules_unique
	jmp	.LBB0_87
.LBB0_86:                               # %if.else.190
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	callq	words_free
.LBB0_87:                               # %if.end.193
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_88:                               # %sw.bb.197
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	Plain_fface, %rsi
	callq	words_set_no_face
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	592(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rsi
	callq	words_merge_rules_unique
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_89:                               # %sw.bb.208
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$2, highlight_level
	jne	.LBB0_91
# BB#90:                                # %if.then.211
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	Plain_fface, %rsi
	callq	words_set_no_face
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	600(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rsi
	callq	words_merge_rules_unique
	jmp	.LBB0_92
.LBB0_91:                               # %if.else.218
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	callq	words_free
.LBB0_92:                               # %if.end.221
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_93:                               # %sw.bb.225
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	Plain_fface, %rsi
	callq	words_set_no_face
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	600(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rsi
	callq	words_merge_rules_unique
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_94:                               # %sw.bb.236
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$2, highlight_level
	jne	.LBB0_96
# BB#95:                                # %if.then.239
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	608(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	da_concat
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	da_erase
	jmp	.LBB0_97
.LBB0_96:                               # %if.else.245
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$free_sequence, %rax
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	da_free
.LBB0_97:                               # %if.end.248
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_98:                               # %sw.bb.252
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	608(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	da_concat
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	da_erase
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_99:                               # %sw.bb.263
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	64(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	da_concat
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	da_erase
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_100:                              # %sw.bb.273
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	addq	$76, %rax
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	string_to_array
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	addq	$332, %rax              # imm = 0x14C
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	string_to_array
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	movq	-2208(%rbp), %rax
	movq	$0, (%rax)
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_101:                              # %sw.bb.291
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	addq	$76, %rax
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	string_to_array
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	movq	-2208(%rbp), %rax
	movq	$0, (%rax)
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_102:                              # %sw.bb.305
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	addq	$332, %rax              # imm = 0x14C
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	string_to_array
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	movq	-2208(%rbp), %rax
	movq	$0, (%rax)
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_103:                              # %sw.bb.319
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movl	%ecx, 72(%rax)
	jmp	.LBB0_186
.LBB0_104:                              # %sw.bb.324
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB0_186
.LBB0_105:                              # %sw.bb.329
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB0_186
.LBB0_106:                              # %sw.bb.334
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	style_sheet_set_version
	jmp	.LBB0_186
.LBB0_107:                              # %sw.bb.339
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	style_sheet_set_requirement
	cmpl	$0, %eax
	jne	.LBB0_109
# BB#108:                               # %if.then.346
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	sshfilename, %rcx
	movq	-2208(%rbp), %rdx
	movq	(%rdx), %r8
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB0_109:                              # %if.end.350
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_186
.LBB0_110:                              # %sw.bb.351
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_111:                              # %sw.bb.355
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_112:                              # %sw.bb.359
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_113:                              # %sw.bb.363
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_114:                              # %sw.bb.367
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	callq	strlen
	movq	%rax, -2280(%rbp)
	movq	-2280(%rbp), %rax
	movq	-2208(%rbp), %rdi
	movq	-8(%rdi), %rdi
	movb	$10, (%rdi,%rax)
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	%rax, -2288(%rbp)
	movq	-2280(%rbp), %rax
	addq	-2288(%rbp), %rax
	addq	$2, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rsi
	movq	-2280(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	stpncpy
	movq	-2208(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rax, %rdi
	callq	stpcpy
	movq	-2208(%rbp), %rdx
	movq	-8(%rdx), %rdi
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	callq	free
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	jmp	.LBB0_186
.LBB0_115:                              # %sw.bb.394
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_116:                              # %sw.bb.398
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_117:                              # %sw.bb.402
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_118:                              # %sw.bb.406
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_119:                              # %sw.bb.410
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.12, %rdi
	movl	$2, %eax
	movl	%eax, %ecx
	movl	$1, %edx
	movabsq	$da_str_print, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rcx, %rsi
	callq	da_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	da_append
	jmp	.LBB0_186
.LBB0_120:                              # %sw.bb.416
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	da_append
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_121:                              # %sw.bb.424
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_122:                              # %sw.bb.428
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_123:                              # %sw.bb.431
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rax
	movq	(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	8(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	8(%rcx), %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-2224(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-2224(%rbp), %rax
	movq	(%rax), %rax
	movq	-2224(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rdi
	callq	strncpy
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-2224(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, 8(%rdx)
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	callq	free
	jmp	.LBB0_186
.LBB0_124:                              # %sw.bb.469
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	rhs_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	rhs_add
	jmp	.LBB0_186
.LBB0_125:                              # %sw.bb.474
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdx
	callq	faced_string_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_126:                              # %sw.bb.480
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	movq	No_fface, %rdx
	callq	faced_string_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_127:                              # %sw.bb.485
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rdx
	callq	faced_string_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_128:                              # %sw.bb.490
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movl	-8(%rcx), %esi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rdx
	callq	faced_string_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_129:                              # %sw.bb.496
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movl	(%rcx), %esi
	movq	No_fface, %rdx
	callq	faced_string_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_130:                              # %sw.bb.501
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rdi
	movq	Symbol_fface, %rdx
	callq	faced_string_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_131:                              # %sw.bb.506
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	rhs_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	rhs_add
	jmp	.LBB0_186
.LBB0_132:                              # %sw.bb.512
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	rhs_add
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_133:                              # %sw.bb.520
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -2224(%rbp)
	movl	$0, -2220(%rbp)
	jmp	.LBB0_186
.LBB0_134:                              # %sw.bb.525
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$-1, -2224(%rbp)
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -2220(%rbp)
	movl	-2220(%rbp), %ecx
	orl	$1, %ecx
	movl	%ecx, -2220(%rbp)
	jmp	.LBB0_186
.LBB0_135:                              # %sw.bb.535
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	cmpl	$-1, -2224(%rbp)
	jne	.LBB0_137
# BB#136:                               # %if.then.543
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-2220(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -2220(%rbp)
.LBB0_137:                              # %if.end.549
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_186
.LBB0_138:                              # %sw.bb.550
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -2224(%rbp)
	movl	$0, -2220(%rbp)
	jmp	.LBB0_186
.LBB0_139:                              # %sw.bb.557
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$-1, -2224(%rbp)
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -2220(%rbp)
	jmp	.LBB0_186
.LBB0_140:                              # %sw.bb.564
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	movq	-2208(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_141:                              # %sw.bb.572
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	movl	-2220(%rbp), %ecx
	movq	-2208(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, -2220(%rbp)
	jmp	.LBB0_186
.LBB0_142:                              # %sw.bb.583
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_143:                              # %sw.bb.590
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	No_fface, %rdx
	movq	%rcx, -2472(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_144:                              # %sw.bb.597
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-2208(%rbp), %rcx
	movq	-16(%rcx), %rdi
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_145:                              # %sw.bb.605
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rsi
	callq	words_set_no_face
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_146:                              # %sw.bb.613
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_147:                              # %sw.bb.617
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$100, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_string
	jmp	.LBB0_186
.LBB0_148:                              # %sw.bb.623
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$100, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_regex
	jmp	.LBB0_186
.LBB0_149:                              # %sw.bb.629
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_string
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_150:                              # %sw.bb.637
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_regex
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_151:                              # %sw.bb.645
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rsi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	keyword_rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_152:                              # %sw.bb.653
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	No_fface, %rdx
	movq	%rcx, -2480(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2480(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	keyword_rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_153:                              # %sw.bb.660
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movq	-16(%rcx), %rsi
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	keyword_rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_154:                              # %sw.bb.668
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rsi
	callq	words_set_no_face
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_155:                              # %sw.bb.676
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_156:                              # %sw.bb.680
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$100, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_string
	jmp	.LBB0_186
.LBB0_157:                              # %sw.bb.686
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$100, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_regex
	jmp	.LBB0_186
.LBB0_158:                              # %sw.bb.692
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_string
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_159:                              # %sw.bb.700
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_regex
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_160:                              # %sw.bb.708
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rsi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_161:                              # %sw.bb.716
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	No_fface, %rdx
	movq	%rcx, -2488(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2488(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_162:                              # %sw.bb.723
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movq	-16(%rcx), %rsi
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	rule_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_163:                              # %sw.bb.731
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_164:                              # %sw.bb.735
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.17, %rdi
	movl	$100, %eax
	movl	%eax, %ecx
	movl	$1, %edx
	movabsq	$sequence_self_print, %rsi
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rsi, -2496(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	-2496(%rbp), %r8        # 8-byte Reload
	callq	da_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	da_append
	jmp	.LBB0_186
.LBB0_165:                              # %sw.bb.740
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	da_append
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_166:                              # %sw.bb.748
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	Symbol_fface, %rdx
	movq	%rdi, -2504(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2296(%rbp)
	movq	-2296(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_167:                              # %sw.bb.764
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	-40(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-24(%rcx), %rdx
	movq	%rdi, -2512(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2304(%rbp)
	movq	-2304(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_168:                              # %sw.bb.783
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rcx
	movq	-2208(%rbp), %rdx
	movq	-24(%rdx), %rdx
	movq	%rcx, -2520(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2312(%rbp)
	movq	-2312(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_169:                              # %sw.bb.800
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-24(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-16(%rcx), %rdx
	movq	%rdi, -2528(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2320(%rbp)
	movq	-2320(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_170:                              # %sw.bb.819
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	-24(%rcx), %rcx
	movq	-2208(%rbp), %rdx
	movq	-16(%rdx), %rdx
	movq	%rcx, -2536(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2328(%rbp)
	movq	-2328(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_171:                              # %sw.bb.836
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	-40(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rdi
	movq	-2208(%rbp), %rcx
	movq	-24(%rcx), %rdx
	movq	%rax, -2544(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2544(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2336(%rbp)
	movq	-2336(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_172:                              # %sw.bb.855
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rcx
	movq	-2208(%rbp), %rdx
	movq	-24(%rdx), %rdx
	movq	%rcx, -2552(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2552(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2344(%rbp)
	movq	-2344(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_173:                              # %sw.bb.872
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-24(%rcx), %rdi
	movq	-2208(%rbp), %rcx
	movq	-16(%rcx), %rdx
	movq	%rax, -2560(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2560(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2352(%rbp)
	movq	-2352(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_174:                              # %sw.bb.891
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-2208(%rbp), %rcx
	movq	-24(%rcx), %rcx
	movq	No_fface, %rdx
	movq	%rcx, -2568(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2568(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	%rax, -2360(%rbp)
	movq	-2360(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_175:                              # %sw.bb.906
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-2208(%rbp), %rcx
	movq	-40(%rcx), %rdi
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	rule_new
	movq	%rax, -2368(%rbp)
	movq	-2368(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_176:                              # %sw.bb.922
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-2208(%rbp), %rcx
	movq	-40(%rcx), %rsi
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rdx
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	callq	rule_new
	movq	%rax, -2376(%rbp)
	movq	-2376(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	-2208(%rbp), %rcx
	movq	-8(%rcx), %rdx
	movq	-2208(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rax), %rsi
	callq	sequence_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_177:                              # %sw.bb.938
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.18, %rdi
	callq	new_C_string_sequence
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_178:                              # %sw.bb.941
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	new_C_string_sequence
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_179:                              # %sw.bb.944
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movabsq	$.L.str.7, %rdi
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rax
	movq	%rax, -2576(%rbp)       # 8-byte Spill
	callq	xstrdup
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	xorl	%esi, %esi
	movq	No_fface, %rdx
	movq	%rax, -2584(%rbp)       # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	sshfilename, %rcx
	movslq	sshlineno, %r8
	movq	-2584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	-2576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	words_add_string
	jmp	.LBB0_186
.LBB0_180:                              # %sw.bb.952
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_string
	jmp	.LBB0_186
.LBB0_181:                              # %sw.bb.958
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rdi
	movq	-2208(%rbp), %rax
	movq	(%rax), %rsi
	callq	words_add_regex
	jmp	.LBB0_186
.LBB0_182:                              # %sw.bb.964
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_183:                              # %sw.bb.968
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_184:                              # %sw.bb.971
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_186
.LBB0_185:                              # %sw.default
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_186
.LBB0_186:                              # %sw.epilog
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_187
.LBB0_187:                              # %do.body.975
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_189
# BB#188:                               # %if.then.977
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.24, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	leaq	-2224(%rbp), %rdx
	movq	stderr, %rdi
	movslq	-8(%rbp), %rsi
	movzbl	sshr1(,%rsi), %esi
	movl	%eax, -2588(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2592(%rbp)       # 4-byte Spill
.LBB0_189:                              # %if.end.983
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_190
.LBB0_190:                              # %do.end.984
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-2228(%rbp), %eax
	movq	-2208(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -2208(%rbp)
	movl	-2228(%rbp), %eax
	movq	-592(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -592(%rbp)
	movl	$0, -2228(%rbp)
# BB#191:                               # %do.body.989
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_193
# BB#192:                               # %if.then.991
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-584(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	yy_stack_print
.LBB0_193:                              # %if.end.992
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_194
.LBB0_194:                              # %do.end.993
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movq	-2208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2208(%rbp)
	movq	-2224(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movslq	-8(%rbp), %rcx
	movzbl	sshr1(,%rcx), %esi
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %esi
	subl	$39, %esi
	movslq	%esi, %rcx
	movswl	yypgoto(,%rcx,2), %esi
	movq	-592(%rbp), %rcx
	movswl	(%rcx), %edi
	addl	%edi, %esi
	movl	%esi, -4(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB0_198
# BB#195:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$218, -4(%rbp)
	jg	.LBB0_198
# BB#196:                               # %land.lhs.true.1008
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	sshyycheck(,%rax), %ecx
	movq	-592(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB0_198
# BB#197:                               # %if.then.1015
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	sshyytable(,%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_199
.LBB0_198:                              # %if.else.1019
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	subl	$39, %eax
	movslq	%eax, %rcx
	movswl	yydefgoto(,%rcx,2), %eax
	movl	%eax, -4(%rbp)
.LBB0_199:                              # %if.end.1024
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_5
.LBB0_200:                              # %yyerrlab
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB0_219
# BB#201:                               # %if.then.1026
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	sshnerrs, %eax
	addl	$1, %eax
	movl	%eax, sshnerrs
	movl	-4(%rbp), %esi
	movl	sshchar, %edx
	callq	yysyntax_error
	movq	%rax, -2384(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-2384(%rbp), %rax
	jae	.LBB0_212
# BB#202:                               # %land.lhs.true.1031
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpq	$-1, -176(%rbp)
	jae	.LBB0_212
# BB#203:                               # %if.then.1034
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2384(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -2392(%rbp)
	movq	-2384(%rbp), %rax
	cmpq	-2392(%rbp), %rax
	ja	.LBB0_205
# BB#204:                               # %land.lhs.true.1038
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpq	$-1, -2392(%rbp)
	jbe	.LBB0_206
.LBB0_205:                              # %if.then.1041
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	$-1, -2392(%rbp)
.LBB0_206:                              # %if.end.1042
                                        #   in Loop: Header=BB0_6 Depth=1
	leaq	-160(%rbp), %rax
	movq	-168(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_208
# BB#207:                               # %if.then.1046
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-168(%rbp), %rdi
	callq	free
.LBB0_208:                              # %if.end.1047
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2392(%rbp), %rdi
	callq	malloc
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB0_210
# BB#209:                               # %if.then.1050
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2392(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB0_211
.LBB0_210:                              # %if.else.1051
                                        #   in Loop: Header=BB0_6 Depth=1
	leaq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$128, -176(%rbp)
.LBB0_211:                              # %if.end.1053
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_212
.LBB0_212:                              # %if.end.1054
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-2384(%rbp), %rcx
	jae	.LBB0_215
# BB#213:                               # %land.lhs.true.1057
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2384(%rbp), %rax
	cmpq	-176(%rbp), %rax
	ja	.LBB0_215
# BB#214:                               # %if.then.1060
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-168(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	sshchar, %edx
	callq	yysyntax_error
	movq	-168(%rbp), %rdi
	movq	%rax, -2600(%rbp)       # 8-byte Spill
	callq	ssherror
	jmp	.LBB0_218
.LBB0_215:                              # %if.else.1062
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.25, %rdi
	callq	ssherror
	cmpq	$0, -2384(%rbp)
	je	.LBB0_217
# BB#216:                               # %if.then.1065
	jmp	.LBB0_252
.LBB0_217:                              # %if.end.1066
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_218
.LBB0_218:                              # %if.end.1067
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_219
.LBB0_219:                              # %if.end.1068
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, -16(%rbp)
	jne	.LBB0_226
# BB#220:                               # %if.then.1071
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshchar
	jg	.LBB0_224
# BB#221:                               # %if.then.1074
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshchar
	jne	.LBB0_223
# BB#222:                               # %if.then.1077
	jmp	.LBB0_251
.LBB0_223:                              # %if.end.1078
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_225
.LBB0_224:                              # %if.else.1079
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.26, %rdi
	movabsq	$sshlval, %rdx
	movl	-20(%rbp), %esi
	callq	yydestruct
	movl	$-2, sshchar
.LBB0_225:                              # %if.end.1080
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_226
.LBB0_226:                              # %if.end.1081
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_227
.LBB0_227:                              # %yyerrlab1
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$3, -16(%rbp)
.LBB0_228:                              # %for.cond
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movswl	sshpact(,%rax,2), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$-150, -8(%rbp)
	je	.LBB0_236
# BB#229:                               # %if.then.1099
                                        #   in Loop: Header=BB0_228 Depth=2
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jg	.LBB0_235
# BB#230:                               # %land.lhs.true.1103
                                        #   in Loop: Header=BB0_228 Depth=2
	cmpl	$218, -8(%rbp)
	jg	.LBB0_235
# BB#231:                               # %land.lhs.true.1106
                                        #   in Loop: Header=BB0_228 Depth=2
	movslq	-8(%rbp), %rax
	movzbl	sshyycheck(,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_235
# BB#232:                               # %if.then.1112
                                        #   in Loop: Header=BB0_228 Depth=2
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	movzbl	sshyytable(,%rcx), %edx
	movl	%edx, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jge	.LBB0_234
# BB#233:                               # %if.then.1118
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_243
.LBB0_234:                              # %if.end.1119
                                        #   in Loop: Header=BB0_228 Depth=2
	jmp	.LBB0_235
.LBB0_235:                              # %if.end.1120
                                        #   in Loop: Header=BB0_228 Depth=2
	jmp	.LBB0_236
.LBB0_236:                              # %if.end.1121
                                        #   in Loop: Header=BB0_228 Depth=2
	movq	-592(%rbp), %rax
	cmpq	-584(%rbp), %rax
	jne	.LBB0_238
# BB#237:                               # %if.then.1124
	jmp	.LBB0_251
.LBB0_238:                              # %if.end.1125
                                        #   in Loop: Header=BB0_228 Depth=2
	movabsq	$.L.str.27, %rdi
	movslq	-4(%rbp), %rax
	movzbl	yystos(,%rax), %esi
	movq	-2208(%rbp), %rdx
	callq	yydestruct
	movq	-2208(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -2208(%rbp)
	movq	-592(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rax
	movswl	(%rax), %esi
	movl	%esi, -4(%rbp)
# BB#239:                               # %do.body.1132
                                        #   in Loop: Header=BB0_228 Depth=2
	cmpl	$0, sshdebug
	je	.LBB0_241
# BB#240:                               # %if.then.1134
                                        #   in Loop: Header=BB0_228 Depth=2
	movq	-584(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	yy_stack_print
.LBB0_241:                              # %if.end.1135
                                        #   in Loop: Header=BB0_228 Depth=2
	jmp	.LBB0_242
.LBB0_242:                              # %do.end.1136
                                        #   in Loop: Header=BB0_228 Depth=2
	jmp	.LBB0_228
.LBB0_243:                              # %for.end
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$5, -8(%rbp)
	jne	.LBB0_245
# BB#244:                               # %if.then.1139
	jmp	.LBB0_250
.LBB0_245:                              # %if.end.1140
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -2208(%rbp)
	movq	sshlval, %rcx
	movq	%rcx, 8(%rax)
# BB#246:                               # %do.body.1142
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, sshdebug
	je	.LBB0_248
# BB#247:                               # %if.then.1144
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.8, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movslq	-8(%rbp), %rdx
	movzbl	yystos(,%rdx), %esi
	movq	-2208(%rbp), %rdx
	movl	%eax, -2604(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2608(%rbp)       # 4-byte Spill
.LBB0_248:                              # %if.end.1150
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_249
.LBB0_249:                              # %do.end.1151
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_250:                              # %yyacceptlab
	movl	$0, -12(%rbp)
	jmp	.LBB0_253
.LBB0_251:                              # %yyabortlab
	movl	$1, -12(%rbp)
	jmp	.LBB0_253
.LBB0_252:                              # %yyexhaustedlab
	movabsq	$.L.str.28, %rdi
	callq	ssherror
	movl	$2, -12(%rbp)
.LBB0_253:                              # %yyreturn
	cmpl	$0, sshchar
	je	.LBB0_256
# BB#254:                               # %land.lhs.true.1154
	cmpl	$-2, sshchar
	je	.LBB0_256
# BB#255:                               # %if.then.1157
	movabsq	$.L.str.29, %rdi
	movabsq	$sshlval, %rdx
	movl	-20(%rbp), %esi
	callq	yydestruct
.LBB0_256:                              # %if.end.1158
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-2228(%rbp), %eax
	movq	-2208(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -2208(%rbp)
	movl	-2228(%rbp), %eax
	movq	-592(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -592(%rbp)
# BB#257:                               # %do.body.1165
	cmpl	$0, sshdebug
	je	.LBB0_259
# BB#258:                               # %if.then.1167
	movq	-584(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	yy_stack_print
.LBB0_259:                              # %if.end.1168
	jmp	.LBB0_260
.LBB0_260:                              # %do.end.1169
	jmp	.LBB0_261
.LBB0_261:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-592(%rbp), %rax
	cmpq	-584(%rbp), %rax
	je	.LBB0_263
# BB#262:                               # %while.body
                                        #   in Loop: Header=BB0_261 Depth=1
	movabsq	$.L.str.30, %rdi
	movq	-592(%rbp), %rax
	movswq	(%rax), %rax
	movzbl	yystos(,%rax), %esi
	movq	-2208(%rbp), %rdx
	callq	yydestruct
	movq	-2208(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -2208(%rbp)
	movq	-592(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -592(%rbp)
	jmp	.LBB0_261
.LBB0_263:                              # %while.end
	leaq	-576(%rbp), %rax
	movq	-584(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_265
# BB#264:                               # %if.then.1180
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_265:                              # %if.end.1181
	leaq	-160(%rbp), %rax
	movq	-168(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_267
# BB#266:                               # %if.then.1185
	movq	-168(%rbp), %rdi
	callq	free
.LBB0_267:                              # %if.end.1186
	movl	-12(%rbp), %eax
	addq	$2608, %rsp             # imm = 0xA30
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sshparse, .Lfunc_end0-sshparse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_81
	.quad	.LBB0_82
	.quad	.LBB0_83
	.quad	.LBB0_84
	.quad	.LBB0_88
	.quad	.LBB0_89
	.quad	.LBB0_93
	.quad	.LBB0_94
	.quad	.LBB0_98
	.quad	.LBB0_99
	.quad	.LBB0_100
	.quad	.LBB0_101
	.quad	.LBB0_102
	.quad	.LBB0_103
	.quad	.LBB0_104
	.quad	.LBB0_105
	.quad	.LBB0_106
	.quad	.LBB0_107
	.quad	.LBB0_110
	.quad	.LBB0_111
	.quad	.LBB0_112
	.quad	.LBB0_113
	.quad	.LBB0_114
	.quad	.LBB0_115
	.quad	.LBB0_116
	.quad	.LBB0_117
	.quad	.LBB0_118
	.quad	.LBB0_119
	.quad	.LBB0_120
	.quad	.LBB0_121
	.quad	.LBB0_122
	.quad	.LBB0_123
	.quad	.LBB0_124
	.quad	.LBB0_125
	.quad	.LBB0_126
	.quad	.LBB0_127
	.quad	.LBB0_128
	.quad	.LBB0_129
	.quad	.LBB0_130
	.quad	.LBB0_131
	.quad	.LBB0_132
	.quad	.LBB0_133
	.quad	.LBB0_134
	.quad	.LBB0_135
	.quad	.LBB0_138
	.quad	.LBB0_139
	.quad	.LBB0_140
	.quad	.LBB0_141
	.quad	.LBB0_142
	.quad	.LBB0_143
	.quad	.LBB0_144
	.quad	.LBB0_145
	.quad	.LBB0_146
	.quad	.LBB0_147
	.quad	.LBB0_148
	.quad	.LBB0_149
	.quad	.LBB0_150
	.quad	.LBB0_151
	.quad	.LBB0_152
	.quad	.LBB0_153
	.quad	.LBB0_154
	.quad	.LBB0_155
	.quad	.LBB0_156
	.quad	.LBB0_157
	.quad	.LBB0_158
	.quad	.LBB0_159
	.quad	.LBB0_160
	.quad	.LBB0_161
	.quad	.LBB0_162
	.quad	.LBB0_163
	.quad	.LBB0_164
	.quad	.LBB0_165
	.quad	.LBB0_166
	.quad	.LBB0_167
	.quad	.LBB0_168
	.quad	.LBB0_169
	.quad	.LBB0_170
	.quad	.LBB0_171
	.quad	.LBB0_172
	.quad	.LBB0_173
	.quad	.LBB0_174
	.quad	.LBB0_175
	.quad	.LBB0_176
	.quad	.LBB0_177
	.quad	.LBB0_178
	.quad	.LBB0_179
	.quad	.LBB0_180
	.quad	.LBB0_181
	.quad	.LBB0_182
	.quad	.LBB0_183
	.quad	.LBB0_184

	.text
	.align	16, 0x90
	.type	yy_symbol_print,@function
yy_symbol_print:                        # @yy_symbol_print
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$39, -12(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.34, %rsi
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	yytname(,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movabsq	$.L.str.35, %rsi
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	yytname(,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB1_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	yy_symbol_value_print
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	yy_symbol_print, .Lfunc_end1-yy_symbol_print
	.cfi_endproc

	.align	16, 0x90
	.type	yy_reduce_print,@function
yy_reduce_print:                        # @yy_reduce_print
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
	subq	$48, %rsp
	movabsq	$.L.str.110, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movzbl	sshr2(,%rdi), %esi
	movl	%esi, -16(%rbp)
	movslq	-12(%rbp), %rdi
	movzwl	yyrline(,%rdi,2), %esi
	movl	%esi, %edi
	movq	%rdi, -32(%rbp)
	movq	stderr, %rdi
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movq	-32(%rbp), %rcx
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-36(%rbp), %edx         # 4-byte Reload
	movb	$0, %al
	callq	fprintf
	movl	$0, -20(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.111, %rsi
	movq	stderr, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movslq	-12(%rbp), %rsi
	movzwl	yyprhs(,%rsi,2), %edx
	addl	-20(%rbp), %edx
	movslq	%edx, %rsi
	movsbl	yyrhs(,%rsi), %esi
	movl	-20(%rbp), %edx
	addl	$1, %edx
	subl	-16(%rbp), %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	yy_reduce_print, .Lfunc_end2-yy_reduce_print
	.cfi_endproc

	.align	16, 0x90
	.type	yy_stack_print,@function
yy_stack_print:                         # @yy_stack_print
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
	movabsq	$.L.str.112, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	stderr, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.113, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movswl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	yy_stack_print, .Lfunc_end3-yy_stack_print
	.cfi_endproc

	.align	16, 0x90
	.type	yysyntax_error,@function
yysyntax_error:                         # @yysyntax_error
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
	subq	$272, %rsp              # imm = 0x110
	movl	$4294967146, %eax       # imm = 0xFFFFFF6A
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movslq	-20(%rbp), %rdi
	movswl	sshpact(,%rdi,2), %edx
	movl	%edx, -28(%rbp)
	cmpl	-28(%rbp), %eax
	jge	.LBB4_2
# BB#1:                                 # %land.lhs.true
	cmpl	$218, -28(%rbp)
	jle	.LBB4_3
.LBB4_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_34
.LBB4_3:                                # %if.else
	cmpl	$289, -24(%rbp)         # imm = 0x121
	ja	.LBB4_5
# BB#4:                                 # %cond.true
	movslq	-24(%rbp), %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	movl	$2, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_6:                                # %cond.end
	movl	-248(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rdx
	movq	yytname(,%rdx,8), %rsi
	callq	yytnamerr
	movabsq	$yysyntax_error.yyexpecting, %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	%rdx, -216(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB4_8
# BB#7:                                 # %cond.true.13
	xorl	%eax, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false.14
	xorl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_9:                                # %cond.end.15
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	$218, %ecx
	movl	%eax, -220(%rbp)
	subl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp)
	cmpl	$39, -224(%rbp)
	jge	.LBB4_11
# BB#10:                                # %cond.true.20
	movl	-224(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.21
	movl	$39, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_12
.LBB4_12:                               # %cond.end.22
	movl	-256(%rbp), %eax        # 4-byte Reload
	movabsq	$yysyntax_error.yyunexpected, %rsi
	leaq	-208(%rbp), %rdi
	movl	%eax, -228(%rbp)
	movl	$1, -232(%rbp)
	movslq	-32(%rbp), %rcx
	movq	yytname(,%rcx,8), %rcx
	movq	%rcx, -112(%rbp)
	callq	yystpcpy
	movq	%rax, -128(%rbp)
	movl	-220(%rbp), %edx
	movl	%edx, -116(%rbp)
.LBB4_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jge	.LBB4_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-116(%rbp), %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movzbl	sshyycheck(,%rcx), %eax
	cmpl	-116(%rbp), %eax
	jne	.LBB4_19
# BB#15:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	$1, -116(%rbp)
	je	.LBB4_19
# BB#16:                                # %if.then.39
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	$5, -232(%rbp)
	jne	.LBB4_18
# BB#17:                                # %if.then.42
	movl	$1, -232(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movb	$0, -181(%rbp)
	jmp	.LBB4_21
.LBB4_18:                               # %if.end
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movslq	-116(%rbp), %rcx
	movq	yytname(,%rcx,8), %rcx
	movl	-232(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -232(%rbp)
	movslq	%eax, %rsi
	movq	%rcx, -112(%rbp,%rsi,8)
	movq	-48(%rbp), %rcx
	movslq	-116(%rbp), %rsi
	movq	yytname(,%rsi,8), %rsi
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	yytnamerr
	movq	-264(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	orl	-60(%rbp), %edx
	movl	%edx, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	yystpcpy
	movabsq	$yysyntax_error.yyor, %rcx
	movq	%rax, -128(%rbp)
	movq	%rcx, -216(%rbp)
.LBB4_19:                               # %if.end.55
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB4_13
.LBB4_21:                               # %for.end
	leaq	-208(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-272(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	-60(%rbp), %edx
	movl	%edx, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB4_23
# BB#22:                                # %if.then.63
	movq	$-1, -8(%rbp)
	jmp	.LBB4_34
.LBB4_23:                               # %if.end.64
	cmpq	$0, -16(%rbp)
	je	.LBB4_33
# BB#24:                                # %if.then.66
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	$0, -244(%rbp)
.LBB4_25:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rax
	movb	(%rax), %cl
	movq	-240(%rbp), %rax
	movb	%cl, (%rax)
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB4_32
# BB#26:                                # %while.body
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-240(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB4_30
# BB#27:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-136(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$115, %ecx
	jne	.LBB4_30
# BB#28:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-244(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_30
# BB#29:                                # %if.then.81
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-240(%rbp), %rdi
	movl	-244(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -244(%rbp)
	movslq	%eax, %rdx
	movq	-112(%rbp,%rdx,8), %rsi
	callq	yytnamerr
	addq	-240(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-136(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.87
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-240(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
.LBB4_31:                               # %if.end.89
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_25
.LBB4_32:                               # %while.end
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.90
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end4:
	.size	yysyntax_error, .Lfunc_end4-yysyntax_error
	.cfi_endproc

	.globl	ssherror
	.align	16, 0x90
	.type	ssherror,@function
ssherror:                               # @ssherror
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
	movl	$1, %eax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	sshfilename, %rdx
	movl	sshlineno, %ecx
	movq	-8(%rbp), %r8
	movl	%eax, %edi
	movb	$0, %al
	callq	error_at_line
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ssherror, .Lfunc_end5-ssherror
	.cfi_endproc

	.align	16, 0x90
	.type	yydestruct,@function
yydestruct:                             # @yydestruct
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.114, %rax
	movq	%rax, -8(%rbp)
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
	cmpl	$0, sshdebug
	je	.LBB6_5
# BB#4:                                 # %if.then.2
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB6_5:                                # %if.end.4
	jmp	.LBB6_6
.LBB6_6:                                # %do.end
# BB#7:                                 # %sw.default
	jmp	.LBB6_8
.LBB6_8:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	yydestruct, .Lfunc_end6-yydestruct
	.cfi_endproc

	.globl	parse_style_sheet
	.align	16, 0x90
	.type	parse_style_sheet,@function
parse_style_sheet:                      # @parse_style_sheet
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, sshfilename
	movl	$1, sshlineno
	movq	sshfilename, %rdi
	callq	xrfopen
	movq	%rax, sshin
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$2116, %eax             # imm = 0x844
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.31, %rsi
	movq	stderr, %rdi
	movq	sshfilename, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %do.end
	callq	sshlex_initialize
	movl	msg_verbosity, %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then.4
	movl	$1, sshdebug
.LBB7_6:                                # %if.end.5
	callq	sshparse
	movl	%eax, -12(%rbp)
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB7_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str.32, %rsi
	movq	stderr, %rdi
	movq	parsed_style_sheet, %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movq	parsed_style_sheet, %rdi
	movq	stderr, %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	style_sheet_self_print
	movabsq	$.L.str.33, %rsi
	movq	stderr, %rdi
	movq	parsed_style_sheet, %rdx
	movq	(%rdx), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB7_8:                                # %if.end.13
	movq	sshin, %rdi
	callq	fclose
	movq	parsed_style_sheet, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	parse_style_sheet, .Lfunc_end7-parse_style_sheet
	.cfi_endproc

	.align	16, 0x90
	.type	yy_symbol_value_print,@function
yy_symbol_value_print:                  # @yy_symbol_value_print
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	cmpl	$39, -12(%rbp)
	jge	.LBB8_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movzwl	yytoknum(,%rax,2), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	callq	yyprint
.LBB8_4:                                # %if.end.2
# BB#5:                                 # %sw.default
	jmp	.LBB8_6
.LBB8_6:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	yy_symbol_value_print, .Lfunc_end8-yy_symbol_value_print
	.cfi_endproc

	.align	16, 0x90
	.type	yyprint,@function
yyprint:                                # @yyprint
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
	subq	$80, %rsp
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	addl	$-283, %esi             # imm = 0xFFFFFFFFFFFFFEE5
	movl	%esi, %edx
	subl	$6, %esi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%esi, -36(%rbp)         # 4-byte Spill
	ja	.LBB9_6
# BB#7:                                 # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movabsq	$.L.str.106, %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.1
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fflag_self_print
	jmp	.LBB9_6
.LBB9_3:                                # %sw.bb.3
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	face_to_string
	movabsq	$.L.str.107, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_4:                                # %sw.bb.6
	movabsq	$.L.str.108, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %sw.bb.9
	movabsq	$.L.str.109, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB9_6:                                # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	yyprint, .Lfunc_end9-yyprint
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_3
	.quad	.LBB9_2
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_4
	.quad	.LBB9_6
	.quad	.LBB9_1

	.text
	.align	16, 0x90
	.type	yytnamerr,@function
yytnamerr:                              # @yytnamerr
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$34, %eax
	jne	.LBB10_15
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %edx
	movl	%edx, %esi
	subl	$34, %esi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	je	.LBB10_10
	jmp	.LBB10_19
.LBB10_19:                              # %for.cond
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_20
.LBB10_20:                              # %for.cond
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_21
.LBB10_21:                              # %for.cond
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB10_4
	jmp	.LBB10_7
.LBB10_3:                               # %sw.bb
	jmp	.LBB10_14
.LBB10_4:                               # %sw.bb.3
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$92, %edx
	je	.LBB10_6
# BB#5:                                 # %if.then.8
	jmp	.LBB10_14
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_2 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %sw.default
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
.LBB10_9:                               # %if.end.10
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_13
.LBB10_10:                              # %sw.bb.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_12
# BB#11:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB10_12:                              # %if.end.15
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_18
.LBB10_13:                              # %sw.epilog
                                        #   in Loop: Header=BB10_2 Depth=1
	jmp	.LBB10_2
.LBB10_14:                              # %do_not_strip_quotes
	jmp	.LBB10_15
.LBB10_15:                              # %if.end.16
	cmpq	$0, -16(%rbp)
	jne	.LBB10_17
# BB#16:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -8(%rbp)
	jmp	.LBB10_18
.LBB10_17:                              # %if.end.19
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	yystpcpy
	movq	-16(%rbp), %rsi
	subq	%rsi, %rax
	movq	%rax, -8(%rbp)
.LBB10_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	yytnamerr, .Lfunc_end10-yytnamerr
	.cfi_endproc

	.align	16, 0x90
	.type	yystpcpy,@function
yystpcpy:                               # @yystpcpy
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movsbl	%dl, %esi
	cmpl	$0, %esi
	je	.LBB11_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_3:                               # %while.end
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	yystpcpy, .Lfunc_end11-yystpcpy
	.cfi_endproc

	.type	sshdebug,@object        # @sshdebug
	.comm	sshdebug,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Starting parse\n"
	.size	.L.str, 16

	.type	sshnerrs,@object        # @sshnerrs
	.comm	sshnerrs,4,4
	.type	sshchar,@object         # @sshchar
	.comm	sshchar,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Stack size increased to %lu\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Entering state %d\n"
	.size	.L.str.2, 19

	.type	sshpact,@object         # @sshpact
	.section	.rodata,"a",@progbits
	.align	16
sshpact:
	.short	11                      # 0xb
	.short	65534                   # 0xfffe
	.short	31                      # 0x1f
	.short	65386                   # 0xff6a
	.short	39                      # 0x27
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	98                      # 0x62
	.short	66                      # 0x42
	.short	126                     # 0x7e
	.short	183                     # 0xb7
	.short	56                      # 0x38
	.short	62                      # 0x3e
	.short	65                      # 0x41
	.short	75                      # 0x4b
	.short	91                      # 0x5b
	.short	40                      # 0x28
	.short	175                     # 0xaf
	.short	77                      # 0x4d
	.short	7                       # 0x7
	.short	80                      # 0x50
	.short	109                     # 0x6d
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	69                      # 0x45
	.short	60                      # 0x3c
	.short	132                     # 0x84
	.short	94                      # 0x5e
	.short	60                      # 0x3c
	.short	133                     # 0x85
	.short	35                      # 0x23
	.short	131                     # 0x83
	.short	142                     # 0x8e
	.short	140                     # 0x8c
	.short	167                     # 0xa7
	.short	65386                   # 0xff6a
	.short	126                     # 0x7e
	.short	183                     # 0xb7
	.short	65386                   # 0xff6a
	.short	168                     # 0xa8
	.short	169                     # 0xa9
	.short	65386                   # 0xff6a
	.short	8                       # 0x8
	.short	170                     # 0xaa
	.short	129                     # 0x81
	.short	65386                   # 0xff6a
	.short	18                      # 0x12
	.short	120                     # 0x78
	.short	65386                   # 0xff6a
	.short	1                       # 0x1
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	154                     # 0x9a
	.short	189                     # 0xbd
	.short	65386                   # 0xff6a
	.short	18                      # 0x12
	.short	120                     # 0x78
	.short	65386                   # 0xff6a
	.short	4                       # 0x4
	.short	65386                   # 0xff6a
	.short	194                     # 0xc2
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	138                     # 0x8a
	.short	34                      # 0x22
	.short	143                     # 0x8f
	.short	10                      # 0xa
	.short	65386                   # 0xff6a
	.short	172                     # 0xac
	.short	173                     # 0xad
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	5                       # 0x5
	.short	198                     # 0xc6
	.short	196                     # 0xc4
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	176                     # 0xb0
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	14                      # 0xe
	.short	60                      # 0x3c
	.short	65386                   # 0xff6a
	.short	60                      # 0x3c
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	129                     # 0x81
	.short	120                     # 0x78
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	69                      # 0x45
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	155                     # 0x9b
	.short	69                      # 0x45
	.short	120                     # 0x78
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	94                      # 0x5e
	.short	94                      # 0x5e
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	111                     # 0x6f
	.short	129                     # 0x81
	.short	120                     # 0x78
	.short	60                      # 0x3c
	.short	111                     # 0x6f
	.short	197                     # 0xc5
	.short	35                      # 0x23
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	146                     # 0x92
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	181                     # 0xb5
	.short	179                     # 0xb3
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	92                      # 0x5c
	.short	118                     # 0x76
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	166                     # 0xa6
	.short	21                      # 0x15
	.short	127                     # 0x7f
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	22                      # 0x16
	.short	111                     # 0x6f
	.short	38                      # 0x26
	.short	183                     # 0xb7
	.short	148                     # 0x94
	.short	38                      # 0x26
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	195                     # 0xc3
	.short	151                     # 0x97
	.short	152                     # 0x98
	.short	111                     # 0x6f
	.short	38                      # 0x26
	.short	195                     # 0xc3
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	129                     # 0x81
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	38                      # 0x26
	.short	195                     # 0xc3
	.short	195                     # 0xc3
	.short	191                     # 0xbf
	.short	195                     # 0xc3
	.short	183                     # 0xb7
	.short	65386                   # 0xff6a
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	38                      # 0x26
	.short	195                     # 0xc3
	.short	195                     # 0xc3
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	195                     # 0xc3
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	199                     # 0xc7
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	195                     # 0xc3
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	195                     # 0xc3
	.short	195                     # 0xc3
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.size	sshpact, 400

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Reading a token: "
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Now at end of input.\n"
	.size	.L.str.4, 22

	.type	yytranslate,@object     # @yytranslate
	.section	.rodata,"a",@progbits
	.align	16
yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002$%\002&#\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\""
	.size	yytranslate, 290

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%s "
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Next token is"
	.size	.L.str.6, 14

	.type	sshlval,@object         # @sshlval
	.comm	sshlval,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	sshyycheck,@object      # @sshyycheck
	.section	.rodata,"a",@progbits
	.align	16
sshyycheck:
	.ascii	"\037+\036\"2\232\0055$\005\005\0045\036\003\005!?!\005\251\252?\2544t\005\005\036\262\263\000\030\266>\036#\036\036#G\276I\004H#\303\304\036# \216\217\022\023\222##Y\025[\230\231\007\036\036  \036\003 $d!$\rh\250\rnop\007dst\261h\034\035vlmlm\004$\274\275\036\027 \220\005\006$\032\t\n\013\f\216\016\017\240\021\007\221\024`\026\230\030\031\036\033 #i%$\255\025\007\b\004qr\006\034\035\036\t \257\260\004$\034\035\036\037 #\"%$\034\035\036\037\017#\"%$\034\035\036\037\036\034\035\036$ \034\035\036$ \006\034\035\t\n##%%\007\b%&\034\035\007\036\036\036\036\007\036\036\006\t\036\n\033\036h\020\025*d\020m\021v"
	.size	sshyycheck, 219

	.type	sshyytable,@object      # @sshyytable
	.align	16
sshyytable:
	.ascii	"<R5C]\264c]Iky.b6\001u@]B~\267\270j\272`\232\245\247\004\277\300\005U\301izd/Vlp\305t\006rv\306\307_\1773\251\252EF\254dl\200\220\201\262\263$qG332\0353H5)>%5\266&\216\217\222'\205\230\231\27669:I\213@\214B(;\303\3042-3\253\b\t40\n\013\f\r\250\016\017\265\0201i\021\204\022\261\023\0242\0253\240\212\241>\273\220\036\037L\226\227=9:2D3\274\275M\2219:YZa\240[\242;9:YZ\235\240[\246;9:noN9:s;aef_;3*ef+\013\240\240\257\260!\"\207\210\243\244hOSTWmwx{|}\233\236\237\211\255\271Q\206\302\215,\234"
	.size	sshyytable, 219

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Shifting"
	.size	.L.str.8, 9

	.type	yydefact,@object        # @yydefact
	.section	.rodata,"a",@progbits
	.align	16
yydefact:
	.ascii	"\000\000\000\002\000\001\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\020\021\022\013\017\n\003\000\000\000\000\000\000\000\000\000\000\000\037\000\000\t\000\000\033\000\0003 \000<7\0008+,\000\000\006\000E@\000A\000\bUV\000\000\000\000H\000\000\f\027\000\000\000\031\032\000\024\035\000$('2\"%\000\000!;6\000./\000\000\000D?\000\000\000\000W\000\000\000W\000\000\r\016\000\030\005\007\025\000\000#&)\000\0009:-\000\000\000BC\000WW\000\000WXY[\000\000WW[GI\026\034\036\0004=015F>W[[\000[\000N\000\000W[[R*[MJZL\000WW[QPK\\[[OST"
	.size	yydefact, 200

	.type	sshr2,@object           # @sshr2
	.align	16
sshr2:
	.ascii	"\000\002\001\006\000\005\004\005\004\003\002\002\004\005\005\002\002\002\002\002\003\004\005\001\002\003\003\002\005\001\003\002\001\002\001\002\001\001\002\001\001\001\003\001\001\003\001\001\003\003\002\001\004\005\003\001\001\003\003\002\001\004\005\003\001\001\003\003\002\001\004\005\001\003\005\006\005\005\004\006\005\005\004\007\007\001\001\000\001\001\003\000\003"
	.size	sshr2, 93

	.type	parsed_style_sheet,@object # @parsed_style_sheet
	.local	parsed_style_sheet
	.comm	parsed_style_sheet,8,8
	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"<No key yet>"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"<no name>"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cannot process `%s' which requires a2ps version %s"
	.size	.L.str.11, 51

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Ancestors tmp"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Keywords: Strings"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Keywords: Regexps"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Operators: Strings"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Operators: Regexps"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Sequence tmp"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\""
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"'"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Closing: Strings"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Closing: Regexps"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Exceptions: Strings"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Exceptions: Regexps"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"-> $$ ="
	.size	.L.str.24, 8

	.type	sshr1,@object           # @sshr1
	.section	.rodata,"a",@progbits
	.align	16
sshr1:
	.ascii	"\000'()****************++,--.//0112334555555667778888999::;;;;<<<==>>>>???@AABBBBBBBBBBBBBCCCCDD"
	.size	sshr1, 93

	.type	yypgoto,@object         # @yypgoto
	.align	16
yypgoto:
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65386                   # 0xff6a
	.short	65508                   # 0xffe4
	.short	65495                   # 0xffd7
	.short	65490                   # 0xffd2
	.short	23                      # 0x17
	.short	65505                   # 0xffe1
	.short	65386                   # 0xff6a
	.short	65519                   # 0xffef
	.short	171                     # 0xab
	.short	106                     # 0x6a
	.short	114                     # 0x72
	.short	65494                   # 0xffd6
	.short	107                     # 0x6b
	.short	65521                   # 0xfff1
	.short	200                     # 0xc8
	.short	65386                   # 0xff6a
	.short	100                     # 0x64
	.short	65445                   # 0xffa5
	.short	65387                   # 0xff6b
	.size	yypgoto, 60

	.type	yydefgoto,@object       # @yydefgoto
	.align	16
yydefgoto:
	.short	65535                   # 0xffff
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	7                       # 0x7
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	80                      # 0x50
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	88                      # 0x58
	.short	27                      # 0x1b
	.short	63                      # 0x3f
	.short	92                      # 0x5c
	.short	130                     # 0x82
	.short	131                     # 0x83
	.short	94                      # 0x5e
	.short	103                     # 0x67
	.short	147                     # 0x93
	.short	32                      # 0x20
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	35                      # 0x23
	.short	65                      # 0x41
	.short	148                     # 0x94
	.short	28                      # 0x1c
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	149                     # 0x95
	.short	174                     # 0xae
	.size	yydefgoto, 60

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"syntax error"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Error: discarding"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Error: popping"
	.size	.L.str.27, 15

	.type	yystos,@object          # @yystos
	.section	.rodata,"a",@progbits
	.align	16
yystos:
	.ascii	"\000\003()\036\000\004*\005\006\t\n\013\f\016\017\021\024\026\030\031\033+,./02@\003\007\b:\007\b=\007\r\r\007\004!\006\t@\027\004\036\032\007\036 $39;<\034\035$7\006$39>?7\t\022\023\036$3AB\004\004\036\036-:=\036\036\030\036\0361\036\037\"457\0363 4\005#\034\0358\00734\005#\007\036\0377\0363\0367\005#\036\036\005\036\006\t\036\005#775669<%&;69?>77\025$79?C6677C\nB\017\033\036#%%\034\035\005%\0057CC=C\020D%%7CCD5CDD\025D=77CDDD\020CCDDD"
	.size	yystos, 200

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"memory exhausted"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Cleanup: discarding lookahead"
	.size	.L.str.29, 30

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Cleanup: popping"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Parsing file `%s'\n"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"---------- Right after parsing of %s\n"
	.size	.L.str.32, 38

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"---------- End of after parsing of %s\n"
	.size	.L.str.33, 39

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"token %s ("
	.size	.L.str.34, 11

	.type	yytname,@object         # @yytname
	.section	.rodata,"a",@progbits
	.align	16
yytname:
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	0
	.size	yytname, 560

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"nterm %s ("
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	")"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"$end"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"error"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"$undefined"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"tSTYLE"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"tIS"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"tEND"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"tKEYWORDS"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"tARE"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"tIN"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"tOPERATORS"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"tSEQUENCES"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"tFIRST"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"tSECOND"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"tALPHABET"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"tALPHABETS"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"tDOCUMENTATION"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"tEXCEPTIONS"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"tCASE"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"tCSTRING"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"tCCHAR"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"tOPTIONAL"
	.size	.L.str.57, 10

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"tCLOSERS"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"tWRITTEN"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"tBY"
	.size	.L.str.60, 4

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"tVERSION"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"tREQUIRES"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"tA2PS"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"tANCESTORS"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"tFACE"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"tFFLAGS"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"tSTRING"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"tLATEXSYMBOL"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"tREGEX"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"tSENSITIVENESS"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"tBACK_REF"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"','"
	.size	.L.str.72, 4

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"'('"
	.size	.L.str.73, 4

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"')'"
	.size	.L.str.74, 4

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"'+'"
	.size	.L.str.75, 4

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"$accept"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"file"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"style_sheet"
	.size	.L.str.78, 12

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"definition_list"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"requirement"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"documentation"
	.size	.L.str.81, 14

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"long_string"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"authors"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"version"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"ancestors_def"
	.size	.L.str.85, 14

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"ancestors_list"
	.size	.L.str.86, 15

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"case_def"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"regex"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"rhs"
	.size	.L.str.89, 4

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"a_rhs"
	.size	.L.str.90, 6

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"rhs_list"
	.size	.L.str.91, 9

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"fface"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"fface_sxp"
	.size	.L.str.93, 10

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"rule"
	.size	.L.str.94, 5

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"keywords_def"
	.size	.L.str.95, 13

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"keywords_rule_list"
	.size	.L.str.96, 19

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"keyword_regex"
	.size	.L.str.97, 14

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"operators_def"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"operators_rule_list"
	.size	.L.str.99, 20

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"operator_regex"
	.size	.L.str.100, 15

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"sequence_def"
	.size	.L.str.101, 13

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"sequence_list"
	.size	.L.str.102, 14

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"sequence"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"closers_opt"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"exception_def_opt"
	.size	.L.str.105, 18

	.type	yytoknum,@object        # @yytoknum
	.section	.rodata,"a",@progbits
	.align	16
yytoknum:
	.short	0                       # 0x0
	.short	256                     # 0x100
	.short	257                     # 0x101
	.short	258                     # 0x102
	.short	259                     # 0x103
	.short	260                     # 0x104
	.short	261                     # 0x105
	.short	262                     # 0x106
	.short	263                     # 0x107
	.short	264                     # 0x108
	.short	265                     # 0x109
	.short	266                     # 0x10a
	.short	267                     # 0x10b
	.short	268                     # 0x10c
	.short	269                     # 0x10d
	.short	270                     # 0x10e
	.short	271                     # 0x10f
	.short	272                     # 0x110
	.short	273                     # 0x111
	.short	274                     # 0x112
	.short	275                     # 0x113
	.short	276                     # 0x114
	.short	277                     # 0x115
	.short	278                     # 0x116
	.short	279                     # 0x117
	.short	280                     # 0x118
	.short	281                     # 0x119
	.short	282                     # 0x11a
	.short	283                     # 0x11b
	.short	284                     # 0x11c
	.short	285                     # 0x11d
	.short	286                     # 0x11e
	.short	287                     # 0x11f
	.short	288                     # 0x120
	.short	289                     # 0x121
	.short	44                      # 0x2c
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	43                      # 0x2b
	.size	yytoknum, 78

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	" \\%d"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	" %s"
	.size	.L.str.107, 4

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	" /%s/"
	.size	.L.str.108, 6

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	" \"%s\""
	.size	.L.str.109, 6

	.type	yyrline,@object         # @yyrline
	.section	.rodata,"a",@progbits
	.align	16
yyrline:
	.short	0                       # 0x0
	.short	129                     # 0x81
	.short	129                     # 0x81
	.short	136                     # 0x88
	.short	145                     # 0x91
	.short	148                     # 0x94
	.short	157                     # 0x9d
	.short	163                     # 0xa3
	.short	172                     # 0xac
	.short	178                     # 0xb2
	.short	186                     # 0xba
	.short	191                     # 0xbf
	.short	196                     # 0xc4
	.short	204                     # 0xcc
	.short	211                     # 0xd3
	.short	218                     # 0xda
	.short	221                     # 0xdd
	.short	224                     # 0xe0
	.short	227                     # 0xe3
	.short	230                     # 0xe6
	.short	245                     # 0xf5
	.short	246                     # 0xf6
	.short	249                     # 0xf9
	.short	251                     # 0xfb
	.short	252                     # 0xfc
	.short	267                     # 0x10b
	.short	270                     # 0x10e
	.short	271                     # 0x10f
	.short	276                     # 0x114
	.short	283                     # 0x11b
	.short	291                     # 0x123
	.short	298                     # 0x12a
	.short	306                     # 0x132
	.short	310                     # 0x136
	.short	322                     # 0x142
	.short	330                     # 0x14a
	.short	334                     # 0x14e
	.short	338                     # 0x152
	.short	342                     # 0x156
	.short	346                     # 0x15a
	.short	350                     # 0x15e
	.short	357                     # 0x165
	.short	363                     # 0x16b
	.short	374                     # 0x176
	.short	379                     # 0x17b
	.short	386                     # 0x182
	.short	396                     # 0x18c
	.short	401                     # 0x191
	.short	406                     # 0x196
	.short	412                     # 0x19c
	.short	426                     # 0x1aa
	.short	431                     # 0x1af
	.short	437                     # 0x1b5
	.short	449                     # 0x1c1
	.short	453                     # 0x1c5
	.short	460                     # 0x1cc
	.short	465                     # 0x1d1
	.short	470                     # 0x1d6
	.short	475                     # 0x1db
	.short	487                     # 0x1e7
	.short	492                     # 0x1ec
	.short	499                     # 0x1f3
	.short	509                     # 0x1fd
	.short	513                     # 0x201
	.short	520                     # 0x208
	.short	526                     # 0x20e
	.short	532                     # 0x214
	.short	537                     # 0x219
	.short	549                     # 0x225
	.short	554                     # 0x22a
	.short	560                     # 0x230
	.short	570                     # 0x23a
	.short	573                     # 0x23d
	.short	579                     # 0x243
	.short	602                     # 0x25a
	.short	610                     # 0x262
	.short	618                     # 0x26a
	.short	626                     # 0x272
	.short	634                     # 0x27a
	.short	642                     # 0x282
	.short	650                     # 0x28a
	.short	658                     # 0x292
	.short	666                     # 0x29a
	.short	674                     # 0x2a2
	.short	681                     # 0x2a9
	.short	689                     # 0x2b1
	.short	693                     # 0x2b5
	.short	701                     # 0x2bd
	.short	709                     # 0x2c5
	.short	715                     # 0x2cb
	.short	721                     # 0x2d1
	.short	730                     # 0x2da
	.short	733                     # 0x2dd
	.size	yyrline, 186

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"Reducing stack by rule %d (line %lu):\n"
	.size	.L.str.110, 39

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"   $%d = "
	.size	.L.str.111, 10

	.type	yyprhs,@object          # @yyprhs
	.section	.rodata,"a",@progbits
	.align	16
yyprhs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	3                       # 0x3
	.short	5                       # 0x5
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	19                      # 0x13
	.short	24                      # 0x18
	.short	30                      # 0x1e
	.short	35                      # 0x23
	.short	39                      # 0x27
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	50                      # 0x32
	.short	56                      # 0x38
	.short	62                      # 0x3e
	.short	65                      # 0x41
	.short	68                      # 0x44
	.short	71                      # 0x47
	.short	74                      # 0x4a
	.short	77                      # 0x4d
	.short	81                      # 0x51
	.short	86                      # 0x56
	.short	92                      # 0x5c
	.short	94                      # 0x5e
	.short	97                      # 0x61
	.short	101                     # 0x65
	.short	105                     # 0x69
	.short	108                     # 0x6c
	.short	114                     # 0x72
	.short	116                     # 0x74
	.short	120                     # 0x78
	.short	123                     # 0x7b
	.short	125                     # 0x7d
	.short	128                     # 0x80
	.short	130                     # 0x82
	.short	133                     # 0x85
	.short	135                     # 0x87
	.short	137                     # 0x89
	.short	140                     # 0x8c
	.short	142                     # 0x8e
	.short	144                     # 0x90
	.short	146                     # 0x92
	.short	150                     # 0x96
	.short	152                     # 0x98
	.short	154                     # 0x9a
	.short	158                     # 0x9e
	.short	160                     # 0xa0
	.short	162                     # 0xa2
	.short	166                     # 0xa6
	.short	170                     # 0xaa
	.short	173                     # 0xad
	.short	175                     # 0xaf
	.short	180                     # 0xb4
	.short	186                     # 0xba
	.short	190                     # 0xbe
	.short	192                     # 0xc0
	.short	194                     # 0xc2
	.short	198                     # 0xc6
	.short	202                     # 0xca
	.short	205                     # 0xcd
	.short	207                     # 0xcf
	.short	212                     # 0xd4
	.short	218                     # 0xda
	.short	222                     # 0xde
	.short	224                     # 0xe0
	.short	226                     # 0xe2
	.short	230                     # 0xe6
	.short	234                     # 0xea
	.short	237                     # 0xed
	.short	239                     # 0xef
	.short	244                     # 0xf4
	.short	250                     # 0xfa
	.short	252                     # 0xfc
	.short	256                     # 0x100
	.short	262                     # 0x106
	.short	269                     # 0x10d
	.short	275                     # 0x113
	.short	281                     # 0x119
	.short	286                     # 0x11e
	.short	293                     # 0x125
	.short	299                     # 0x12b
	.short	305                     # 0x131
	.short	310                     # 0x136
	.short	318                     # 0x13e
	.short	326                     # 0x146
	.short	328                     # 0x148
	.short	330                     # 0x14a
	.short	331                     # 0x14b
	.short	333                     # 0x14d
	.short	335                     # 0x14f
	.short	339                     # 0x153
	.short	340                     # 0x154
	.size	yyprhs, 186

	.type	yyrhs,@object           # @yyrhs
	.align	16
yyrhs:
	.ascii	"(\000\377)\377\003\036\004*\005\003\377\377*\024\006:\006\377*\006:\006\377*\024\t=\t\377*\t=\t\377*\024@\377*@\377*0\377*\016\007\036\377*\013\r\004\036\377*\f\r\004\036\377*2\377*,\377*.\377*/\377*+\377\031\032\036\377\031\032\030\036\377\017\004-\005\017\377\036\377-\036\377\026\027\036\377\030\004\036\377\030\036\377\033\0071\005\033\377\036\3771#\036\377\021!\377 \3773 \3775\377\0367\377\036\3777\377\"7\377\"\377\037\3775\3776#5\377\034\377\035\377$8%\377\034\377\035\3778&\034\3778&\035\377\0364\377\036\377$\0366%\377\b7\007;\005\377\007;\005\3779\377<\377;#9\377;#<\37734\3773\377$36%\377\b7\007>\005\377\007>\005\3779\377?\377>#9\377>#?\37734\3773\377$36%\377\n\007A\005\n\377B\377A#B\377\036\0377CD\377\036\03677CD\377\03677CD\377\036\0367CD\377\0367CD\3773\03677CD\377377CD\3773\0367CD\37737CD\377$\0366%7CD\377$36%7CD\377\022\377\023\377\3779\377?\377\025=\025\377\377\020=\020\377"
	.size	yyrhs, 344

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"Stack now"
	.size	.L.str.112, 10

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	" %d"
	.size	.L.str.113, 4

	.type	yysyntax_error.yyunexpected,@object # @yysyntax_error.yyunexpected
	.section	.rodata,"a",@progbits
	.align	16
yysyntax_error.yyunexpected:
	.asciz	"syntax error, unexpected %s"
	.size	yysyntax_error.yyunexpected, 28

	.type	yysyntax_error.yyexpecting,@object # @yysyntax_error.yyexpecting
yysyntax_error.yyexpecting:
	.asciz	", expecting %s"
	.size	yysyntax_error.yyexpecting, 15

	.type	yysyntax_error.yyor,@object # @yysyntax_error.yyor
yysyntax_error.yyor:
	.asciz	" or %s"
	.size	yysyntax_error.yyor, 7

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"Deleting"
	.size	.L.str.114, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
