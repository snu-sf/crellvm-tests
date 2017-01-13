	.text
	.file	"imap_csim_parse.bc"
	.globl	csim_parse
	.align	16, 0x90
	.type	csim_parse,@function
csim_parse:                             # @csim_parse
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
	subq	$2336, %rsp             # imm = 0x920
	leaq	-2032(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movl	$0, -2084(%rbp)
	movl	$0, -2068(%rbp)
	movq	%rcx, -424(%rbp)
	movq	%rax, -2040(%rbp)
	movq	$200, -2056(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, csim_nerrs
	movl	$-2, csim_char
	movq	-424(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-2040(%rbp), %rax
	movq	%rax, -2048(%rbp)
	jmp	.LBB0_2
.LBB0_1:                                # %yynewstate
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-432(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -432(%rbp)
.LBB0_2:                                # %yysetstate
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_123 Depth 2
                                        #     Child Loop BB0_77 Depth 2
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movq	-432(%rbp), %rdx
	movw	%cx, (%rdx)
	movq	-424(%rbp), %rdx
	movq	-2056(%rbp), %rsi
	shlq	$1, %rsi
	addq	%rsi, %rdx
	addq	$-2, %rdx
	cmpq	-432(%rbp), %rdx
	ja	.LBB0_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, %ecx
	movq	-432(%rbp), %rdx
	movq	-424(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$1, %rdx
	addq	$1, %rdx
	movq	%rdx, -2096(%rbp)
	cmpq	-2056(%rbp), %rcx
	ja	.LBB0_5
# BB#4:                                 # %if.then.6
	jmp	.LBB0_137
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, %ecx
	movq	-2056(%rbp), %rdx
	shlq	$1, %rdx
	movq	%rdx, -2056(%rbp)
	cmpq	-2056(%rbp), %rcx
	jae	.LBB0_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	$10000, -2056(%rbp)     # imm = 0x2710
.LBB0_7:                                # %if.end.10
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-424(%rbp), %rax
	movq	%rax, -2104(%rbp)
	imulq	$10, -2056(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -2112(%rbp)
	cmpq	$0, -2112(%rbp)
	jne	.LBB0_9
# BB#8:                                 # %if.then.13
	jmp	.LBB0_137
.LBB0_9:                                # %if.end.14
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %do.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2112(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	-2096(%rbp), %rdx
	shlq	$1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-2112(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-2056(%rbp), %rax
	shlq	$1, %rax
	addq	$7, %rax
	movq	%rax, -2120(%rbp)
	movq	-2120(%rbp), %rax
	shrq	$3, %rax
	shlq	$3, %rax
	addq	-2112(%rbp), %rax
	movq	%rax, -2112(%rbp)
# BB#11:                                # %do.end
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %do.body.20
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2112(%rbp), %rax
	movq	-2040(%rbp), %rcx
	movq	-2096(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-2112(%rbp), %rax
	movq	%rax, -2040(%rbp)
	movq	-2056(%rbp), %rax
	shlq	$3, %rax
	addq	$7, %rax
	movq	%rax, -2128(%rbp)
	movq	-2128(%rbp), %rax
	shrq	$3, %rax
	shlq	$3, %rax
	addq	-2112(%rbp), %rax
	movq	%rax, -2112(%rbp)
# BB#13:                                # %do.end.28
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	-416(%rbp), %rax
	movq	-2104(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_15
# BB#14:                                # %if.then.32
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2104(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_15:                               # %if.end.33
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-424(%rbp), %rax
	movq	-2096(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	addq	$-2, %rax
	movq	%rax, -432(%rbp)
	movq	-2040(%rbp), %rax
	movq	-2096(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -2048(%rbp)
	movq	-424(%rbp), %rax
	movq	-2056(%rbp), %rcx
	shlq	$1, %rcx
	addq	%rcx, %rax
	addq	$-2, %rax
	cmpq	-432(%rbp), %rax
	ja	.LBB0_17
# BB#16:                                # %if.then.42
	jmp	.LBB0_136
.LBB0_17:                               # %if.end.43
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.44
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$5, -4(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.47
	jmp	.LBB0_135
.LBB0_20:                               # %if.end.48
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               # %yybackup
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	yypact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$-29, -2060(%rbp)
	jne	.LBB0_23
# BB#22:                                # %if.then.52
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_40
.LBB0_23:                               # %if.end.53
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-2, csim_char
	jne	.LBB0_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	csim_lex
	movl	%eax, csim_char
.LBB0_25:                               # %if.end.58
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, csim_char
	jg	.LBB0_27
# BB#26:                                # %if.then.61
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -2068(%rbp)
	movl	$0, csim_char
	jmp	.LBB0_31
.LBB0_27:                               # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$283, csim_char         # imm = 0x11B
	ja	.LBB0_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	csim_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2204(%rbp)       # 4-byte Spill
	jmp	.LBB0_30
.LBB0_29:                               # %cond.false
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2204(%rbp)       # 4-byte Spill
	jmp	.LBB0_30
.LBB0_30:                               # %cond.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2204(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2068(%rbp)
.LBB0_31:                               # %if.end.67
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2068(%rbp), %eax
	addl	-2060(%rbp), %eax
	movl	%eax, -2060(%rbp)
	cmpl	$0, -2060(%rbp)
	jl	.LBB0_34
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$84, %eax
	cmpl	-2060(%rbp), %eax
	jl	.LBB0_34
# BB#33:                                # %lor.lhs.false.73
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-2060(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	cmpl	-2068(%rbp), %ecx
	je	.LBB0_35
.LBB0_34:                               # %if.then.79
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_40
.LBB0_35:                               # %if.end.80
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-2060(%rbp), %rax
	movzbl	yytable(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$0, -2060(%rbp)
	jg	.LBB0_37
# BB#36:                                # %if.then.86
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	subl	-2060(%rbp), %eax
	movl	%eax, -2060(%rbp)
	jmp	.LBB0_43
.LBB0_37:                               # %if.end.87
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.89
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
.LBB0_39:                               # %if.end.90
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$-2, csim_char
	movl	-2060(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-2048(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2048(%rbp)
	movq	csim_lval, %rdx
	movq	%rdx, 8(%rcx)
	jmp	.LBB0_1
.LBB0_40:                               # %yydefault
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	yydefact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$0, -2060(%rbp)
	jne	.LBB0_42
# BB#41:                                # %if.then.97
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_106
.LBB0_42:                               # %if.end.98
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_43
.LBB0_43:                               # %yyreduce
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-2060(%rbp), %rax
	movzbl	yyr2(%rax), %ecx
	movl	%ecx, -2084(%rbp)
	movl	$1, %edx
	subl	%ecx, %edx
	movslq	%edx, %rax
	movq	-2048(%rbp), %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, -2080(%rbp)
	movl	-2060(%rbp), %ecx
	addl	$-3, %ecx
	movl	%ecx, %eax
	subl	$49, %ecx
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	movl	%ecx, -2220(%rbp)       # 4-byte Spill
	ja	.LBB0_99
# BB#149:                               # %yyreduce
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2216(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_44:                               # %sw.bb
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	_map_info, %rax
	addq	$8, %rax
	movq	-2048(%rbp), %rcx
	movq	-16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	-16(%rcx), %rdi
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_100
.LBB0_45:                               # %sw.bb.109
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_100
.LBB0_46:                               # %sw.bb.110
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_47:                               # %sw.bb.113
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_48:                               # %sw.bb.116
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movl	(%rax), %ecx
	movq	_map_info, %rax
	movl	%ecx, 48(%rax)
	jmp	.LBB0_100
.LBB0_49:                               # %sw.bb.118
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movl	(%rax), %ecx
	movq	_map_info, %rax
	movl	%ecx, 52(%rax)
	jmp	.LBB0_100
.LBB0_50:                               # %sw.bb.121
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -2080(%rbp)
	jmp	.LBB0_100
.LBB0_51:                               # %sw.bb.125
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	g_ascii_strtod
	cvttsd2si	%xmm0, %eax
	movl	%eax, -2080(%rbp)
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_52:                               # %sw.bb.133
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	_map_info, %rax
	addq	$16, %rax
	movq	-2048(%rbp), %rcx
	movq	-8(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	-8(%rcx), %rdi
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_100
.LBB0_53:                               # %sw.bb.139
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	-8(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_54:                               # %sw.bb.142
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	_map_info, %rax
	addq	$24, %rax
	movq	-2048(%rbp), %rcx
	movq	-8(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	-8(%rcx), %rdi
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_100
.LBB0_55:                               # %sw.bb.148
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	_map_info, %rsi
	movq	40(%rsi), %rdi
	movq	-2048(%rbp), %rsi
	movq	-8(%rsi), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -2136(%rbp)
	movq	_map_info, %rax
	addq	$40, %rax
	movq	-2136(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	-8(%rcx), %rdi
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_100
.LBB0_56:                               # %sw.bb.157
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, current_type
	je	.LBB0_58
# BB#57:                                # %if.then.160
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	callq	add_shape
.LBB0_58:                               # %if.end.161
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_100
.LBB0_59:                               # %sw.bb.162
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB0_61
# BB#60:                                # %if.then.167
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	create_rectangle
	movq	%rax, current_object
	movl	$1, current_type
	jmp	.LBB0_70
.LBB0_61:                               # %if.else.169
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.2, %rsi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB0_63
# BB#62:                                # %if.then.174
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	create_circle
	movq	%rax, current_object
	movl	$2, current_type
	jmp	.LBB0_69
.LBB0_63:                               # %if.else.176
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB0_65
# BB#64:                                # %if.then.181
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	create_polygon
	movq	%rax, current_object
	movl	$3, current_type
	jmp	.LBB0_68
.LBB0_65:                               # %if.else.183
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB0_67
# BB#66:                                # %if.then.188
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, current_type
.LBB0_67:                               # %if.end.189
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_68
.LBB0_68:                               # %if.end.190
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_69
.LBB0_69:                               # %if.end.191
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               # %if.end.192
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_71:                               # %sw.bb.195
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$1, current_type
	jne	.LBB0_73
# BB#72:                                # %if.then.198
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	current_object, %rax
	movq	%rax, -2152(%rbp)
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movq	-2152(%rbp), %rdx
	movl	%eax, 88(%rdx)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movq	-2152(%rbp), %rdx
	movl	%eax, 92(%rdx)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movq	-2152(%rbp), %rdx
	subl	88(%rdx), %eax
	movq	-2152(%rbp), %rdx
	movl	%eax, 96(%rdx)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	movq	-2152(%rbp), %rdx
	subl	92(%rdx), %eax
	movq	-2152(%rbp), %rdx
	movl	%eax, 100(%rdx)
	jmp	.LBB0_86
.LBB0_73:                               # %if.else.213
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$2, current_type
	jne	.LBB0_75
# BB#74:                                # %if.then.216
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	current_object, %rax
	movq	%rax, -2160(%rbp)
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movq	-2160(%rbp), %rdx
	movl	%eax, 88(%rdx)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movq	-2160(%rbp), %rdx
	movl	%eax, 92(%rdx)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	movq	-2160(%rbp), %rdx
	movl	%eax, 96(%rdx)
	jmp	.LBB0_85
.LBB0_75:                               # %if.else.227
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, current_type
	jne	.LBB0_84
# BB#76:                                # %if.then.230
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	current_object, %rax
	movq	%rax, -2168(%rbp)
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movl	%eax, -2196(%rbp)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	movl	%eax, -2200(%rbp)
	movl	-2196(%rbp), %edi
	movl	-2200(%rbp), %esi
	callq	new_point
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -2184(%rbp)
	movq	-2184(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -2176(%rbp)
.LBB0_77:                               # %while.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	callq	strtok
	movq	%rax, -2144(%rbp)
	cmpq	$0, -2144(%rbp)
	jne	.LBB0_79
# BB#78:                                # %if.then.243
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_80
.LBB0_79:                               # %if.end.244
                                        #   in Loop: Header=BB0_77 Depth=2
	movq	-2144(%rbp), %rdi
	callq	atoi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.5, %rsi
	movl	%eax, -2196(%rbp)
	callq	strtok
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rdi
	callq	atoi
	movl	%eax, -2200(%rbp)
	movl	-2196(%rbp), %edi
	movl	-2200(%rbp), %esi
	callq	new_point
	movq	%rax, -2184(%rbp)
	movq	-2176(%rbp), %rdi
	movq	-2184(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -2176(%rbp)
	jmp	.LBB0_77
.LBB0_80:                               # %while.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2192(%rbp)
	movq	-2176(%rbp), %rax
	movq	-2168(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-2192(%rbp), %rax
	movl	(%rax), %edx
	movq	-2184(%rbp), %rax
	cmpl	(%rax), %edx
	jne	.LBB0_83
# BB#81:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2192(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-2184(%rbp), %rax
	cmpl	4(%rax), %ecx
	jne	.LBB0_83
# BB#82:                                # %if.then.259
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2168(%rbp), %rdi
	callq	polygon_remove_last_point
.LBB0_83:                               # %if.end.260
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2176(%rbp), %rax
	movq	-2168(%rbp), %rcx
	movq	%rax, 88(%rcx)
.LBB0_84:                               # %if.end.262
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_85
.LBB0_85:                               # %if.end.263
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.264
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_87:                               # %sw.bb.267
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, current_type
	jne	.LBB0_89
# BB#88:                                # %if.then.270
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	_map_info, %rax
	addq	$32, %rax
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	jmp	.LBB0_90
.LBB0_89:                               # %if.else.274
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2272(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_url
.LBB0_90:                               # %if.end.278
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_91:                               # %sw.bb.281
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_100
.LBB0_92:                               # %sw.bb.282
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_93:                               # %sw.bb.285
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2280(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_comment
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_94:                               # %sw.bb.291
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_target
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_95:                               # %sw.bb.297
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_mouse_over
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_96:                               # %sw.bb.303
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2304(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_mouse_out
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_97:                               # %sw.bb.309
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2312(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_focus
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_98:                               # %sw.bb.315
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -2320(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	unescape_text
	movq	-2320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_blur
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_100
.LBB0_99:                               # %sw.default
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_100
.LBB0_100:                              # %sw.epilog
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-2084(%rbp), %ecx
	movq	-2048(%rbp), %rsi
	movslq	%ecx, %rdi
	movq	%rdx, %r8
	subq	%rdi, %r8
	shlq	$3, %r8
	addq	%r8, %rsi
	movq	%rsi, -2048(%rbp)
	movl	-2084(%rbp), %ecx
	movq	-432(%rbp), %rsi
	movslq	%ecx, %rdi
	subq	%rdi, %rdx
	shlq	$1, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -432(%rbp)
	movl	$0, -2084(%rbp)
	movq	-2048(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$8, %rsi
	movq	%rsi, -2048(%rbp)
	movq	-2080(%rbp), %rsi
	movq	%rsi, 8(%rdx)
	movslq	-2060(%rbp), %rdx
	movzbl	yyr1(,%rdx), %ecx
	movl	%ecx, -2060(%rbp)
	movl	-2060(%rbp), %ecx
	subl	$33, %ecx
	movslq	%ecx, %rdx
	movsbl	yypgoto(,%rdx), %ecx
	movq	-432(%rbp), %rdx
	movswl	(%rdx), %r9d
	addl	%r9d, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB0_104
# BB#101:                               # %land.lhs.true.337
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$84, -4(%rbp)
	jg	.LBB0_104
# BB#102:                               # %land.lhs.true.340
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	movq	-432(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB0_104
# BB#103:                               # %if.then.347
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	yytable(,%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_105
.LBB0_104:                              # %if.else.351
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2060(%rbp), %eax
	subl	$33, %eax
	movslq	%eax, %rcx
	movsbl	yydefgoto(,%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB0_105:                              # %if.end.356
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_1
.LBB0_106:                              # %yyerrlab
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-2, csim_char
	jne	.LBB0_108
# BB#107:                               # %cond.true.359
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	movl	%eax, -2324(%rbp)       # 4-byte Spill
	jmp	.LBB0_112
.LBB0_108:                              # %cond.false.360
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$283, csim_char         # imm = 0x11B
	ja	.LBB0_110
# BB#109:                               # %cond.true.363
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	csim_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2328(%rbp)       # 4-byte Spill
	jmp	.LBB0_111
.LBB0_110:                              # %cond.false.367
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2328(%rbp)       # 4-byte Spill
	jmp	.LBB0_111
.LBB0_111:                              # %cond.end.368
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2328(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2324(%rbp)       # 4-byte Spill
.LBB0_112:                              # %cond.end.370
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2324(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2068(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_114
# BB#113:                               # %if.then.373
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.6, %rdi
	movl	csim_nerrs, %eax
	addl	$1, %eax
	movl	%eax, csim_nerrs
	callq	csim_error
.LBB0_114:                              # %if.end.374
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, -8(%rbp)
	jne	.LBB0_121
# BB#115:                               # %if.then.377
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, csim_char
	jg	.LBB0_119
# BB#116:                               # %if.then.380
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, csim_char
	jne	.LBB0_118
# BB#117:                               # %if.then.383
	jmp	.LBB0_136
.LBB0_118:                              # %if.end.384
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_120
.LBB0_119:                              # %if.else.385
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.7, %rdi
	movabsq	$csim_lval, %rdx
	movl	-2068(%rbp), %esi
	callq	yydestruct
	movl	$-2, csim_char
.LBB0_120:                              # %if.end.386
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_121
.LBB0_121:                              # %if.end.387
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_122
.LBB0_122:                              # %yyerrlab1
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$3, -8(%rbp)
.LBB0_123:                              # %for.cond
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movsbl	yypact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$-29, -2060(%rbp)
	je	.LBB0_131
# BB#124:                               # %if.then.400
                                        #   in Loop: Header=BB0_123 Depth=2
	xorl	%eax, %eax
	movl	-2060(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	-2060(%rbp), %eax
	jg	.LBB0_130
# BB#125:                               # %land.lhs.true.404
                                        #   in Loop: Header=BB0_123 Depth=2
	cmpl	$84, -2060(%rbp)
	jg	.LBB0_130
# BB#126:                               # %land.lhs.true.407
                                        #   in Loop: Header=BB0_123 Depth=2
	movslq	-2060(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_130
# BB#127:                               # %if.then.413
                                        #   in Loop: Header=BB0_123 Depth=2
	xorl	%eax, %eax
	movslq	-2060(%rbp), %rcx
	movzbl	yytable(,%rcx), %edx
	movl	%edx, -2060(%rbp)
	cmpl	-2060(%rbp), %eax
	jge	.LBB0_129
# BB#128:                               # %if.then.419
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_134
.LBB0_129:                              # %if.end.420
                                        #   in Loop: Header=BB0_123 Depth=2
	jmp	.LBB0_130
.LBB0_130:                              # %if.end.421
                                        #   in Loop: Header=BB0_123 Depth=2
	jmp	.LBB0_131
.LBB0_131:                              # %if.end.422
                                        #   in Loop: Header=BB0_123 Depth=2
	movq	-432(%rbp), %rax
	cmpq	-424(%rbp), %rax
	jne	.LBB0_133
# BB#132:                               # %if.then.425
	jmp	.LBB0_136
.LBB0_133:                              # %if.end.426
                                        #   in Loop: Header=BB0_123 Depth=2
	movabsq	$.L.str.8, %rdi
	movslq	-4(%rbp), %rax
	movzbl	yystos(,%rax), %esi
	movq	-2048(%rbp), %rdx
	callq	yydestruct
	movq	-2048(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -2048(%rbp)
	movq	-432(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movswl	(%rax), %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB0_123
.LBB0_134:                              # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -2048(%rbp)
	movq	csim_lval, %rcx
	movq	%rcx, 8(%rax)
	movl	-2060(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB0_1
.LBB0_135:                              # %yyacceptlab
	movl	$0, -2064(%rbp)
	jmp	.LBB0_138
.LBB0_136:                              # %yyabortlab
	movl	$1, -2064(%rbp)
	jmp	.LBB0_138
.LBB0_137:                              # %yyexhaustedlab
	movabsq	$.L.str.9, %rdi
	callq	csim_error
	movl	$2, -2064(%rbp)
.LBB0_138:                              # %yyreturn
	cmpl	$-2, csim_char
	je	.LBB0_143
# BB#139:                               # %if.then.436
	cmpl	$283, csim_char         # imm = 0x11B
	ja	.LBB0_141
# BB#140:                               # %cond.true.439
	movslq	csim_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2332(%rbp)       # 4-byte Spill
	jmp	.LBB0_142
.LBB0_141:                              # %cond.false.443
	movl	$2, %eax
	movl	%eax, -2332(%rbp)       # 4-byte Spill
	jmp	.LBB0_142
.LBB0_142:                              # %cond.end.444
	movl	-2332(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.10, %rdi
	movabsq	$csim_lval, %rdx
	movl	%eax, -2068(%rbp)
	movl	-2068(%rbp), %esi
	callq	yydestruct
.LBB0_143:                              # %if.end.446
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-2084(%rbp), %eax
	movq	-2048(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -2048(%rbp)
	movl	-2084(%rbp), %eax
	movq	-432(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$1, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -432(%rbp)
.LBB0_144:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-432(%rbp), %rax
	cmpq	-424(%rbp), %rax
	je	.LBB0_146
# BB#145:                               # %while.body.455
                                        #   in Loop: Header=BB0_144 Depth=1
	movabsq	$.L.str.11, %rdi
	movq	-432(%rbp), %rax
	movswq	(%rax), %rax
	movzbl	yystos(,%rax), %esi
	movq	-2048(%rbp), %rdx
	callq	yydestruct
	movq	-2048(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -2048(%rbp)
	movq	-432(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -432(%rbp)
	jmp	.LBB0_144
.LBB0_146:                              # %while.end.461
	leaq	-416(%rbp), %rax
	movq	-424(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_148
# BB#147:                               # %if.then.465
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_148:                              # %if.end.466
	movl	-2064(%rbp), %eax
	addq	$2336, %rsp             # imm = 0x920
	popq	%rbp
	retq
.Lfunc_end0:
	.size	csim_parse, .Lfunc_end0-csim_parse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_44
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_48
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_56
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_99
	.quad	.LBB0_59
	.quad	.LBB0_71
	.quad	.LBB0_87
	.quad	.LBB0_91
	.quad	.LBB0_99
	.quad	.LBB0_92
	.quad	.LBB0_93
	.quad	.LBB0_94
	.quad	.LBB0_95
	.quad	.LBB0_96
	.quad	.LBB0_97
	.quad	.LBB0_98

	.text
	.align	16, 0x90
	.type	unescape_text,@function
unescape_text:                          # @unescape_text
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
	movq	$0, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpq	$5, -16(%rbp)
	jae	.LBB1_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movabsq	$unescape_text.tab, %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	shlq	$4, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	(%rcx), %rsi
	callq	strstr
	movq	%rax, -32(%rbp)
.LBB1_3:                                # %for.cond.4
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB1_8
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB1_3 Depth=2
	movabsq	$unescape_text.tab, %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movb	8(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rdi
	callq	strlen
	subq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	memmove
	movq	-32(%rbp), %rax
	movsbl	(%rax), %r8d
	cmpl	$0, %r8d
	jne	.LBB1_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_8
.LBB1_6:                                # %if.end
                                        #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movabsq	$unescape_text.tab, %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	strstr
	movq	%rax, -32(%rbp)
	jmp	.LBB1_3
.LBB1_8:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                # %for.inc.15
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_10:                               # %for.end.16
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	unescape_text, .Lfunc_end1-unescape_text
	.cfi_endproc

	.align	16, 0x90
	.type	csim_error,@function
csim_error:                             # @csim_error
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	csim_in, %rdi
	callq	csim_restart
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	csim_error, .Lfunc_end2-csim_error
	.cfi_endproc

	.align	16, 0x90
	.type	yydestruct,@function
yydestruct:                             # @yydestruct
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rax
	movq	%rax, -8(%rbp)
.LBB3_2:                                # %if.end
# BB#3:                                 # %sw.default
	jmp	.LBB3_4
.LBB3_4:                                # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end3:
	.size	yydestruct, .Lfunc_end3-yydestruct
	.cfi_endproc

	.globl	load_csim
	.align	16, 0x90
	.type	load_csim,@function
load_csim:                              # @load_csim
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
	movabsq	$.L.str.12, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, csim_in
	cmpq	$0, csim_in
	je	.LBB4_2
# BB#1:                                 # %if.then
	callq	get_map_info
	movq	%rax, _map_info
	callq	csim_parse
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -12(%rbp)
	movq	csim_in, %rdi
	callq	fclose
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movl	$0, -12(%rbp)
.LBB4_3:                                # %if.end
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	load_csim, .Lfunc_end4-load_csim
	.cfi_endproc

	.type	csim_nerrs,@object      # @csim_nerrs
	.bss
	.globl	csim_nerrs
	.align	4
csim_nerrs:
	.long	0                       # 0x0
	.size	csim_nerrs, 4

	.type	csim_char,@object       # @csim_char
	.globl	csim_char
	.align	4
csim_char:
	.long	0                       # 0x0
	.size	csim_char, 4

	.type	yypact,@object          # @yypact
	.section	.rodata,"a",@progbits
	.align	16
yypact:
	.ascii	"\353\026\034\002\035\343\027\343\004\030\355\b\007\n\013\f\343\343\343\343\r\343\017\022\023\024\375\343\343\373\020\343\343\343\021\343\025\031\032\033\036\343\037\343\343\343\343\343\343\376\372\372\372!#\343\"$%&'()*+,\343\343\343\343\343\343\343\343\343\343\343\343\343\343\343\343\343\343\343/0123\34345678\343\343\343\343\343\343\343\343\343\343"
	.size	yypact, 106

	.type	yytranslate,@object     # @yytranslate
	.align	16
yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002 \002\002\002\002\002\002\002\002\002\002\002\002\035\036\037\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034"
	.size	yytranslate, 284

	.type	yycheck,@object         # @yycheck
	.align	16
yycheck:
	.ascii	"\005\006\007\b\027\030\031\n\035\f\017\r\016\017\020\021\022\023\024\025\026\033\03434\003\037 \000\037 \035\t\004\036\013\034\036\034\034\0341\035\034\032\032\032\037\037\377\377\036\377\377\377\036\036\036\377\377\036\034\037\034\036\377\036\036\036\036\036\036\036\036\036\034\034\034\034\034\034\034\034\034\034"
	.size	yycheck, 85

	.type	yytable,@object         # @yytable
	.align	16
yytable:
	.ascii	"$%&'\r\016\017\"\001#(89:;<=>?@ANOQR\004)*\005)*\006\t\b\013\f\025\026\027\030\031B\032\036\037 !/0\000\0002\000\000\000345\000\0006S7TU\000VWXY[\\]^_`abcdefghi"
	.size	yytable, 85

	.type	csim_lval,@object       # @csim_lval
	.bss
	.globl	csim_lval
	.align	8
csim_lval:
	.zero	8
	.size	csim_lval, 8

	.type	yydefact,@object        # @yydefact
	.section	.rodata,"a",@progbits
	.align	16
yydefact:
	.ascii	"\000\000\000\000\000\001\000\020\000\000\030\000\000\000\000\000\021\024\022\023\000\004\000\000\000\000\000\031\002\000\000\026\027\025\000\035\000\000\000\000\000\033\000\005\006\007\003\0175\000\000\000\000\000\000\034\000\000\000\000-\000\000\000\000\000\032\036\037 !\"#$%&'(\r\016\013\f\b\t\n\000\000\000\000\000,\000\000\000\000\000)*/+.01234"
	.size	yydefact, 106

	.type	yyr2,@object            # @yyr2
	.align	16
yyr2:
	.ascii	"\000\002\005\007\000\002\001\001\003\003\003\003\003\001\001\006\000\002\001\001\001\003\003\003\000\002\004\001\002\000\002\001\001\001\001\001\001\001\001\001\001\003\003\003\002\000\002\003\003\003\003\003\003\003"
	.size	yyr2, 54

	.type	_map_info,@object       # @_map_info
	.local	_map_info
	.comm	_map_info,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	current_type,@object    # @current_type
	.local	current_type
	.comm	current_type,4,4
	.type	current_object,@object  # @current_object
	.local	current_object
	.comm	current_object,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"RECT"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CIRCLE"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"POLY"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DEFAULT"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	","
	.size	.L.str.5, 2

	.type	yyr1,@object            # @yyr1
	.section	.rodata,"a",@progbits
	.align	16
yyr1:
	.ascii	"\000!\"#$$%%%%%&'(()**+++,-.//0112233333333334567889:;<=>?"
	.size	yyr1, 54

	.type	yypgoto,@object         # @yypgoto
	.align	16
yypgoto:
	.ascii	"\343\343\343\343\343\343\343\344\343\343\343\343\343\343\343\343\370\343\343\343\343\343\343\343\343\343\343\343\343\343\343"
	.size	yypgoto, 31

	.type	yydefgoto,@object       # @yydefgoto
	.align	16
yydefgoto:
	.ascii	"\377\002\003\035+,-P\007\n\020\021\022\023\024\033.1CDEFGZHIJKLM\034"
	.size	yydefgoto, 31

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"syntax error"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Error: discarding"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error: popping"
	.size	.L.str.8, 15

	.type	yystos,@object          # @yystos
	.section	.rodata,"a",@progbits
	.align	16
yystos:
	.ascii	"\000\035\"#\003\000\035)\004\t*\036\013\027\030\031+,-./\034\036\034\034\034\0350?$\034\032\032\032\n\f\005\006\007\b\017\037 %&'1\037\0372\036\036\036\036\036\037\r\016\017\020\021\022\023\024\025\0261345679:;<=>\033\034(((\034\034\036\036\036\036\0368\036\036\036\036\036\034\034\034\034\034\034\034\034\034\034"
	.size	yystos, 106

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"memory exhausted"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Cleanup: discarding lookahead"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Cleanup: popping"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"r"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Deleting"
	.size	.L.str.13, 9

	.type	unescape_text.tab,@object # @unescape_text.tab
	.section	.rodata,"a",@progbits
	.align	16
unescape_text.tab:
	.quad	.L.str.14
	.byte	34                      # 0x22
	.zero	7
	.quad	.L.str.15
	.byte	39                      # 0x27
	.zero	7
	.quad	.L.str.16
	.byte	38                      # 0x26
	.zero	7
	.quad	.L.str.17
	.byte	60                      # 0x3c
	.zero	7
	.quad	.L.str.18
	.byte	62                      # 0x3e
	.zero	7
	.size	unescape_text.tab, 80

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"&quot;"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"&apos;"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"&amp;"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"&lt;"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"&gt;"
	.size	.L.str.18, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
