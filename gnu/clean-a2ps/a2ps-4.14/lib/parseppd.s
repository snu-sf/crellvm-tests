	.text
	.file	"parseppd.bc"
	.globl	ppdparse
	.align	16, 0x90
	.type	ppdparse,@function
ppdparse:                               # @ppdparse
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
	subq	$2368, %rsp             # imm = 0x940
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
	cmpl	$0, ppddebug
	je	.LBB0_3
# BB#2:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2292(%rbp)       # 4-byte Spill
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %do.end
	movl	$0, -4(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, ppdnerrs
	movl	$-2, ppdchar
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
                                        #     Child Loop BB0_140 Depth 2
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
	jmp	.LBB0_164
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
	jmp	.LBB0_164
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
	cmpl	$0, ppddebug
	je	.LBB0_22
# BB#21:                                # %if.then.49
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movq	-2216(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2296(%rbp)       # 4-byte Spill
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
	jmp	.LBB0_163
.LBB0_25:                               # %if.end.58
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.59
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               # %do.body.60
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_29
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2300(%rbp)       # 4-byte Spill
.LBB0_29:                               # %if.end.64
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.65
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %yybackup
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	ppdpact(,%rax), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$-4, -8(%rbp)
	jne	.LBB0_33
# BB#32:                                # %if.then.69
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_73
.LBB0_33:                               # %if.end.70
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$-2, ppdchar
	jne	.LBB0_39
# BB#34:                                # %if.then.73
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %do.body.74
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_37
# BB#36:                                # %if.then.76
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2304(%rbp)       # 4-byte Spill
.LBB0_37:                               # %if.end.78
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               # %do.end.79
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	ppdlex
	movl	%eax, ppdchar
.LBB0_39:                               # %if.end.81
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppdchar
	jg	.LBB0_45
# BB#40:                                # %if.then.84
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$0, -20(%rbp)
	movl	$0, ppdchar
# BB#41:                                # %do.body.85
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_43
# BB#42:                                # %if.then.87
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2308(%rbp)       # 4-byte Spill
.LBB0_43:                               # %if.end.89
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               # %do.end.90
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_53
.LBB0_45:                               # %if.else
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$265, ppdchar           # imm = 0x109
	ja	.LBB0_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	ppdchar, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2312(%rbp)       # 4-byte Spill
	jmp	.LBB0_48
.LBB0_47:                               # %cond.false
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$2, %eax
	movl	%eax, -2312(%rbp)       # 4-byte Spill
	jmp	.LBB0_48
.LBB0_48:                               # %cond.end
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-2312(%rbp), %eax       # 4-byte Reload
	movl	%eax, -20(%rbp)
# BB#49:                                # %do.body.96
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_51
# BB#50:                                # %if.then.98
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$ppdlval, %rdx
	movq	stderr, %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -2316(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2320(%rbp)       # 4-byte Spill
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
	movl	$26, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB0_56
# BB#55:                                # %lor.lhs.false.109
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-8(%rbp), %rax
	movsbl	ppdyycheck(,%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB0_57
.LBB0_56:                               # %if.then.115
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_73
.LBB0_57:                               # %if.end.116
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-8(%rbp), %rax
	movzbl	ppdyytable(,%rax), %ecx
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
	jmp	.LBB0_112
.LBB0_61:                               # %if.end.129
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_62:                               # %if.end.130
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, -8(%rbp)
	jne	.LBB0_64
# BB#63:                                # %if.then.133
	jmp	.LBB0_162
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
	cmpl	$0, ppddebug
	je	.LBB0_69
# BB#68:                                # %if.then.140
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.8, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$ppdlval, %rdx
	movq	stderr, %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -2324(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2328(%rbp)       # 4-byte Spill
.LBB0_69:                               # %if.end.143
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               # %do.end.144
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppdchar
	je	.LBB0_72
# BB#71:                                # %if.then.147
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$-2, ppdchar
.LBB0_72:                               # %if.end.148
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-2208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2208(%rbp)
	movq	ppdlval, %rdx
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
	jmp	.LBB0_112
.LBB0_75:                               # %if.end.156
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_76
.LBB0_76:                               # %yyreduce
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %eax
	movslq	-8(%rbp), %rcx
	movzbl	ppdr2(,%rcx), %edx
	movl	%edx, -2228(%rbp)
	subl	-2228(%rbp), %eax
	movslq	%eax, %rcx
	movq	-2208(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rcx, -2224(%rbp)
# BB#77:                                # %do.body.163
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
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
	subl	$11, %eax
	movq	%rcx, -2336(%rbp)       # 8-byte Spill
	movl	%eax, -2340(%rbp)       # 4-byte Spill
	ja	.LBB0_97
# BB#180:                               # %do.end.167
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2336(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_81:                               # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, ppd_parse_result
	jmp	.LBB0_98
.LBB0_82:                               # %sw.bb.169
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	ppd_new
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_83:                               # %sw.bb.172
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rdi
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rsi
	callq	ppd_font_add
	movq	-2208(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_84:                               # %sw.bb.179
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_86
# BB#85:                                # %if.then.183
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB0_86:                               # %if.end.189
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_87:                               # %sw.bb.193
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_89
# BB#88:                                # %if.then.197
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	-2208(%rbp), %rcx
	movq	-32(%rcx), %rcx
	movq	%rax, 16(%rcx)
.LBB0_89:                               # %if.end.203
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-32(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_90:                               # %sw.bb.207
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_91:                               # %sw.bb.211
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_92:                               # %sw.bb.215
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_93:                               # %sw.bb.219
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_94:                               # %sw.bb.223
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_95:                               # %sw.bb.227
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	-40(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_96:                               # %sw.bb.231
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2224(%rbp)
	jmp	.LBB0_98
.LBB0_97:                               # %sw.default
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_98
.LBB0_98:                               # %sw.epilog
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_99
.LBB0_99:                               # %do.body.235
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_101
# BB#100:                               # %if.then.237
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.9, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	leaq	-2224(%rbp), %rdx
	movq	stderr, %rdi
	movslq	-8(%rbp), %rsi
	movzbl	ppdr1(,%rsi), %esi
	movl	%eax, -2344(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2348(%rbp)       # 4-byte Spill
.LBB0_101:                              # %if.end.243
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_102
.LBB0_102:                              # %do.end.244
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
# BB#103:                               # %do.body.249
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_105
# BB#104:                               # %if.then.251
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-584(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	yy_stack_print
.LBB0_105:                              # %if.end.252
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_106
.LBB0_106:                              # %do.end.253
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movq	-2208(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2208(%rbp)
	movq	-2224(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movslq	-8(%rbp), %rcx
	movzbl	ppdr1(,%rcx), %esi
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %esi
	subl	$12, %esi
	movslq	%esi, %rcx
	movsbl	yypgoto(,%rcx), %esi
	movq	-592(%rbp), %rcx
	movswl	(%rcx), %edi
	addl	%edi, %esi
	movl	%esi, -4(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB0_110
# BB#107:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$26, -4(%rbp)
	jg	.LBB0_110
# BB#108:                               # %land.lhs.true.268
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	ppdyycheck(,%rax), %ecx
	movq	-592(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB0_110
# BB#109:                               # %if.then.275
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	ppdyytable(,%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_111
.LBB0_110:                              # %if.else.279
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	subl	$12, %eax
	movslq	%eax, %rcx
	movsbl	yydefgoto(,%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB0_111:                              # %if.end.284
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_5
.LBB0_112:                              # %yyerrlab
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB0_131
# BB#113:                               # %if.then.286
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	ppdnerrs, %eax
	addl	$1, %eax
	movl	%eax, ppdnerrs
	movl	-4(%rbp), %esi
	movl	ppdchar, %edx
	callq	yysyntax_error
	movq	%rax, -2280(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-2280(%rbp), %rax
	jae	.LBB0_124
# BB#114:                               # %land.lhs.true.291
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpq	$-1, -176(%rbp)
	jae	.LBB0_124
# BB#115:                               # %if.then.294
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2280(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -2288(%rbp)
	movq	-2280(%rbp), %rax
	cmpq	-2288(%rbp), %rax
	ja	.LBB0_117
# BB#116:                               # %land.lhs.true.298
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpq	$-1, -2288(%rbp)
	jbe	.LBB0_118
.LBB0_117:                              # %if.then.301
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	$-1, -2288(%rbp)
.LBB0_118:                              # %if.end.302
                                        #   in Loop: Header=BB0_6 Depth=1
	leaq	-160(%rbp), %rax
	movq	-168(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_120
# BB#119:                               # %if.then.306
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-168(%rbp), %rdi
	callq	free
.LBB0_120:                              # %if.end.307
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2288(%rbp), %rdi
	callq	malloc
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB0_122
# BB#121:                               # %if.then.310
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2288(%rbp), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB0_123
.LBB0_122:                              # %if.else.311
                                        #   in Loop: Header=BB0_6 Depth=1
	leaq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$128, -176(%rbp)
.LBB0_123:                              # %if.end.313
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_124
.LBB0_124:                              # %if.end.314
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-2280(%rbp), %rcx
	jae	.LBB0_127
# BB#125:                               # %land.lhs.true.317
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2280(%rbp), %rax
	cmpq	-176(%rbp), %rax
	ja	.LBB0_127
# BB#126:                               # %if.then.320
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-168(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	ppdchar, %edx
	callq	yysyntax_error
	movq	-168(%rbp), %rdi
	movq	%rax, -2360(%rbp)       # 8-byte Spill
	callq	ppderror
	jmp	.LBB0_130
.LBB0_127:                              # %if.else.322
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.10, %rdi
	callq	ppderror
	cmpq	$0, -2280(%rbp)
	je	.LBB0_129
# BB#128:                               # %if.then.325
	jmp	.LBB0_164
.LBB0_129:                              # %if.end.326
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_130
.LBB0_130:                              # %if.end.327
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_131
.LBB0_131:                              # %if.end.328
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, -16(%rbp)
	jne	.LBB0_138
# BB#132:                               # %if.then.331
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppdchar
	jg	.LBB0_136
# BB#133:                               # %if.then.334
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppdchar
	jne	.LBB0_135
# BB#134:                               # %if.then.337
	jmp	.LBB0_163
.LBB0_135:                              # %if.end.338
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_137
.LBB0_136:                              # %if.else.339
                                        #   in Loop: Header=BB0_6 Depth=1
	movabsq	$.L.str.11, %rdi
	movabsq	$ppdlval, %rdx
	movl	-20(%rbp), %esi
	callq	yydestruct
	movl	$-2, ppdchar
.LBB0_137:                              # %if.end.340
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_138
.LBB0_138:                              # %if.end.341
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_139
.LBB0_139:                              # %yyerrlab1
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$3, -16(%rbp)
.LBB0_140:                              # %for.cond
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movsbl	ppdpact(,%rax), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$-4, -8(%rbp)
	je	.LBB0_148
# BB#141:                               # %if.then.359
                                        #   in Loop: Header=BB0_140 Depth=2
	xorl	%eax, %eax
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jg	.LBB0_147
# BB#142:                               # %land.lhs.true.363
                                        #   in Loop: Header=BB0_140 Depth=2
	cmpl	$26, -8(%rbp)
	jg	.LBB0_147
# BB#143:                               # %land.lhs.true.366
                                        #   in Loop: Header=BB0_140 Depth=2
	movslq	-8(%rbp), %rax
	movsbl	ppdyycheck(,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_147
# BB#144:                               # %if.then.372
                                        #   in Loop: Header=BB0_140 Depth=2
	xorl	%eax, %eax
	movslq	-8(%rbp), %rcx
	movzbl	ppdyytable(,%rcx), %edx
	movl	%edx, -8(%rbp)
	cmpl	-8(%rbp), %eax
	jge	.LBB0_146
# BB#145:                               # %if.then.378
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_155
.LBB0_146:                              # %if.end.379
                                        #   in Loop: Header=BB0_140 Depth=2
	jmp	.LBB0_147
.LBB0_147:                              # %if.end.380
                                        #   in Loop: Header=BB0_140 Depth=2
	jmp	.LBB0_148
.LBB0_148:                              # %if.end.381
                                        #   in Loop: Header=BB0_140 Depth=2
	movq	-592(%rbp), %rax
	cmpq	-584(%rbp), %rax
	jne	.LBB0_150
# BB#149:                               # %if.then.384
	jmp	.LBB0_163
.LBB0_150:                              # %if.end.385
                                        #   in Loop: Header=BB0_140 Depth=2
	movabsq	$.L.str.12, %rdi
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
# BB#151:                               # %do.body.392
                                        #   in Loop: Header=BB0_140 Depth=2
	cmpl	$0, ppddebug
	je	.LBB0_153
# BB#152:                               # %if.then.394
                                        #   in Loop: Header=BB0_140 Depth=2
	movq	-584(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	yy_stack_print
.LBB0_153:                              # %if.end.395
                                        #   in Loop: Header=BB0_140 Depth=2
	jmp	.LBB0_154
.LBB0_154:                              # %do.end.396
                                        #   in Loop: Header=BB0_140 Depth=2
	jmp	.LBB0_140
.LBB0_155:                              # %for.end
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, -8(%rbp)
	jne	.LBB0_157
# BB#156:                               # %if.then.399
	jmp	.LBB0_162
.LBB0_157:                              # %if.end.400
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-2208(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -2208(%rbp)
	movq	ppdlval, %rcx
	movq	%rcx, 8(%rax)
# BB#158:                               # %do.body.402
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, ppddebug
	je	.LBB0_160
# BB#159:                               # %if.then.404
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
	movl	%eax, -2364(%rbp)       # 4-byte Spill
	callq	yy_symbol_print
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2368(%rbp)       # 4-byte Spill
.LBB0_160:                              # %if.end.410
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_161
.LBB0_161:                              # %do.end.411
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_162:                              # %yyacceptlab
	movl	$0, -12(%rbp)
	jmp	.LBB0_165
.LBB0_163:                              # %yyabortlab
	movl	$1, -12(%rbp)
	jmp	.LBB0_165
.LBB0_164:                              # %yyexhaustedlab
	movabsq	$.L.str.13, %rdi
	callq	ppderror
	movl	$2, -12(%rbp)
.LBB0_165:                              # %yyreturn
	cmpl	$0, ppdchar
	je	.LBB0_168
# BB#166:                               # %land.lhs.true.414
	cmpl	$-2, ppdchar
	je	.LBB0_168
# BB#167:                               # %if.then.417
	movabsq	$.L.str.14, %rdi
	movabsq	$ppdlval, %rdx
	movl	-20(%rbp), %esi
	callq	yydestruct
.LBB0_168:                              # %if.end.418
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
# BB#169:                               # %do.body.425
	cmpl	$0, ppddebug
	je	.LBB0_171
# BB#170:                               # %if.then.427
	movq	-584(%rbp), %rdi
	movq	-592(%rbp), %rsi
	callq	yy_stack_print
.LBB0_171:                              # %if.end.428
	jmp	.LBB0_172
.LBB0_172:                              # %do.end.429
	jmp	.LBB0_173
.LBB0_173:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-592(%rbp), %rax
	cmpq	-584(%rbp), %rax
	je	.LBB0_175
# BB#174:                               # %while.body
                                        #   in Loop: Header=BB0_173 Depth=1
	movabsq	$.L.str.15, %rdi
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
	jmp	.LBB0_173
.LBB0_175:                              # %while.end
	leaq	-576(%rbp), %rax
	movq	-584(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_177
# BB#176:                               # %if.then.440
	movq	-584(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_177:                              # %if.end.441
	leaq	-160(%rbp), %rax
	movq	-168(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_179
# BB#178:                               # %if.then.445
	movq	-168(%rbp), %rdi
	callq	free
.LBB0_179:                              # %if.end.446
	movl	-12(%rbp), %eax
	addq	$2368, %rsp             # imm = 0x940
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ppdparse, .Lfunc_end0-ppdparse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_81
	.quad	.LBB0_82
	.quad	.LBB0_83
	.quad	.LBB0_84
	.quad	.LBB0_87
	.quad	.LBB0_90
	.quad	.LBB0_91
	.quad	.LBB0_92
	.quad	.LBB0_93
	.quad	.LBB0_94
	.quad	.LBB0_95
	.quad	.LBB0_96

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
	cmpl	$12, -12(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	yytname(,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movabsq	$.L.str.18, %rsi
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
	movabsq	$.L.str.19, %rsi
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
	movabsq	$.L.str.39, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movzbl	ppdr2(,%rdi), %esi
	movl	%esi, -16(%rbp)
	movslq	-12(%rbp), %rdi
	movzbl	yyrline(,%rdi), %esi
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
	movabsq	$.L.str.40, %rsi
	movq	stderr, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movslq	-12(%rbp), %rsi
	movzbl	yyprhs(,%rsi), %edx
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
	movabsq	$.L.str.41, %rax
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
	movabsq	$.L.str.42, %rsi
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
	movl	$4294967292, %eax       # imm = 0xFFFFFFFC
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movslq	-20(%rbp), %rdi
	movsbl	ppdpact(,%rdi), %edx
	movl	%edx, -28(%rbp)
	cmpl	-28(%rbp), %eax
	jge	.LBB4_2
# BB#1:                                 # %land.lhs.true
	cmpl	$26, -28(%rbp)
	jle	.LBB4_3
.LBB4_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_34
.LBB4_3:                                # %if.else
	cmpl	$265, -24(%rbp)         # imm = 0x109
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
	movl	$26, %ecx
	movl	%eax, -220(%rbp)
	subl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp)
	cmpl	$12, -224(%rbp)
	jge	.LBB4_11
# BB#10:                                # %cond.true.20
	movl	-224(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.21
	movl	$12, %eax
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
	movsbl	ppdyycheck(,%rcx), %eax
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

	.globl	ppderror
	.align	16, 0x90
	.type	ppderror,@function
ppderror:                               # @ppderror
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
	movq	ppdfilename, %rdx
	movl	ppdlineno, %ecx
	movq	-8(%rbp), %r8
	movl	%eax, %edi
	movb	$0, %al
	callq	error_at_line
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ppderror, .Lfunc_end5-ppderror
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
	movabsq	$.L.str.43, %rax
	movq	%rax, -8(%rbp)
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
	cmpl	$0, ppddebug
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

	.globl	a2ps_ppd_parse
	.align	16, 0x90
	.type	a2ps_ppd_parse,@function
a2ps_ppd_parse:                         # @a2ps_ppd_parse
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, ppdfilename
	movl	$1, ppdlineno
	movq	ppdfilename, %rdi
	callq	xrfopen
	movq	%rax, ppdin
	movq	-16(%rbp), %rax
	movq	%rax, ppdpath
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$2624, %eax             # imm = 0xA40
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	ppdfilename, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %do.end
	callq	ppdlex_initialize
	movl	msg_verbosity, %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then.4
	movl	$1, ppddebug
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movl	$0, ppddebug
.LBB7_7:                                # %if.end.5
	callq	ppdparse
	movq	ppdin, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	fclose
	movq	ppd_parse_result, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdi, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	a2ps_ppd_parse, .Lfunc_end7-a2ps_ppd_parse
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
	cmpl	$12, -12(%rbp)
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
	subq	$48, %rsp
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%esi, %eax
	subl	$263, %esi              # imm = 0x107
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%esi, -28(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_5
.LBB9_5:                                # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_6
.LBB9_6:                                # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_1:                                # %sw.bb
	movabsq	$.L.str.36, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB9_4
.LBB9_2:                                # %sw.bb.1
	movabsq	$.L.str.37, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %sw.bb.4
	movabsq	$.L.str.38, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB9_4:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	yyprint, .Lfunc_end9-yyprint
	.cfi_endproc

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

	.type	ppddebug,@object        # @ppddebug
	.comm	ppddebug,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Starting parse\n"
	.size	.L.str, 16

	.type	ppdnerrs,@object        # @ppdnerrs
	.comm	ppdnerrs,4,4
	.type	ppdchar,@object         # @ppdchar
	.comm	ppdchar,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Stack size increased to %lu\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Entering state %d\n"
	.size	.L.str.2, 19

	.type	ppdpact,@object         # @ppdpact
	.section	.rodata,"a",@progbits
	.align	16
ppdpact:
	.ascii	"\374\t\375\374\374\377\002\001\003\374\374\374\374\n\006\005\013\f\374\374\b\017\022\016\374\374\020\021\374"
	.size	ppdpact, 29

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
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\013\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n"
	.size	yytranslate, 266

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%s "
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Next token is"
	.size	.L.str.6, 14

	.type	ppdlval,@object         # @ppdlval
	.comm	ppdlval,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	ppdyycheck,@object      # @ppdyycheck
	.section	.rodata,"a",@progbits
	.align	16
ppdyycheck:
	.ascii	"\003\004\005\006\007\b\t\n\013\000\013\t\013\003\013\t\013\t\003\b\b\003\b\377\377\t\t"
	.size	ppdyycheck, 27

	.type	ppdyytable,@object      # @ppdyytable
	.align	16
ppdyytable:
	.ascii	"\004\005\006\007\b\t\n\013\f\003\016\017\020\022\021\023\024\027\030\025\026\031\032\000\000\033\034"
	.size	ppdyytable, 27

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Shifting"
	.size	.L.str.8, 9

	.type	yydefact,@object        # @yydefact
	.section	.rodata,"a",@progbits
	.align	16
yydefact:
	.ascii	"\003\000\002\001\013\000\000\000\000\b\007\t\n\000\000\000\000\000\004\r\000\000\000\000\005\006\000\000\f"
	.size	yydefact, 29

	.type	ppdr2,@object           # @ppdr2
ppdr2:
	.ascii	"\000\002\001\000\003\005\005\002\002\002\002\002\007\003"
	.size	ppdr2, 14

	.type	ppd_parse_result,@object # @ppd_parse_result
	.local	ppd_parse_result
	.comm	ppd_parse_result,8,8
	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"-> $$ ="
	.size	.L.str.9, 8

	.type	ppdr1,@object           # @ppdr1
	.section	.rodata,"a",@progbits
ppdr1:
	.ascii	"\000\f\r\016\016\016\016\016\016\016\016\016\017\017"
	.size	ppdr1, 14

	.type	yypgoto,@object         # @yypgoto
yypgoto:
	.zero	4,252
	.size	yypgoto, 4

	.type	yydefgoto,@object       # @yydefgoto
yydefgoto:
	.ascii	"\377\001\002\r"
	.size	yydefgoto, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"syntax error"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Error: discarding"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Error: popping"
	.size	.L.str.12, 15

	.type	yystos,@object          # @yystos
	.section	.rodata,"a",@progbits
	.align	16
yystos:
	.ascii	"\000\r\016\000\003\004\005\006\007\b\t\n\013\017\013\t\013\013\003\t\013\b\b\t\003\003\b\t\t"
	.size	yystos, 29

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"memory exhausted"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Cleanup: discarding lookahead"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Cleanup: popping"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Parsing file `%s'\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"token %s ("
	.size	.L.str.17, 11

	.type	yytname,@object         # @yytname
	.section	.rodata,"a",@progbits
	.align	16
yytname:
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	0
	.size	yytname, 136

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"nterm %s ("
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	")"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"$end"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"error"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"$undefined"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"EOL"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"tDefaultFont"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tFont"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tModelName"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"tNickName"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"STRING"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"SYMBOL"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"USTRING"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"':'"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"$accept"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"file"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"ppd"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"font_clause"
	.size	.L.str.35, 12

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
	.short	58                      # 0x3a
	.size	yytoknum, 24

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	" \"%s\""
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	" %s"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	" u\"%s\""
	.size	.L.str.38, 7

	.type	yyrline,@object         # @yyrline
	.section	.rodata,"a",@progbits
yyrline:
	.ascii	"\000\\\\ehmsy}\201\205\211\223\225"
	.size	yyrline, 14

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"Reducing stack by rule %d (line %lu):\n"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"   $%d = "
	.size	.L.str.40, 10

	.type	yyprhs,@object          # @yyprhs
	.section	.rodata,"a",@progbits
yyprhs:
	.ascii	"\000\000\003\005\006\n\020\026\031\034\037\"%-"
	.size	yyprhs, 14

	.type	yyrhs,@object           # @yyrhs
	.align	16
yyrhs:
	.ascii	"\r\000\377\016\377\377\016\017\003\377\016\006\013\b\003\377\016\007\013\b\003\377\016\t\377\016\b\377\016\n\377\016\013\377\016\003\377\005\t\013\t\b\t\t\377\004\013\t\377"
	.size	yyrhs, 49

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"Stack now"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	" %d"
	.size	.L.str.42, 4

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

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"Deleting"
	.size	.L.str.43, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
