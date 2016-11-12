	.text
	.file	"imap_cern_parse.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	cern_parse
	.align	16, 0x90
	.type	cern_parse,@function
cern_parse:                             # @cern_parse
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
	subq	$2272, %rsp             # imm = 0x8E0
	leaq	-2032(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movl	$0, -2084(%rbp)
	movl	$0, -2068(%rbp)
	movq	%rcx, -424(%rbp)
	movq	%rax, -2040(%rbp)
	movq	$200, -2056(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, cern_nerrs
	movl	$-2, cern_char
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
                                        #     Child Loop BB0_78 Depth 2
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
	jmp	.LBB0_92
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
	jmp	.LBB0_92
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
	jmp	.LBB0_91
.LBB0_17:                               # %if.end.43
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.44
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, -4(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.47
	jmp	.LBB0_90
.LBB0_20:                               # %if.end.48
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               # %yybackup
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	yypact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$-6, -2060(%rbp)
	jne	.LBB0_23
# BB#22:                                # %if.then.52
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_40
.LBB0_23:                               # %if.end.53
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-2, cern_char
	jne	.LBB0_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	cern_lex
	movl	%eax, cern_char
.LBB0_25:                               # %if.end.58
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, cern_char
	jg	.LBB0_27
# BB#26:                                # %if.then.61
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -2068(%rbp)
	movl	$0, cern_char
	jmp	.LBB0_31
.LBB0_27:                               # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$267, cern_char         # imm = 0x10B
	ja	.LBB0_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	cern_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2212(%rbp)       # 4-byte Spill
	jmp	.LBB0_30
.LBB0_29:                               # %cond.false
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2212(%rbp)       # 4-byte Spill
	jmp	.LBB0_30
.LBB0_30:                               # %cond.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2212(%rbp), %eax       # 4-byte Reload
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
	movl	$39, %eax
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
	movl	$-2, cern_char
	movl	-2060(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-2048(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2048(%rbp)
	movq	cern_lval, %rdx
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
	jmp	.LBB0_61
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
	addl	$-10, %ecx
	movl	%ecx, %eax
	subl	$13, %ecx
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	movl	%ecx, -2228(%rbp)       # 4-byte Spill
	ja	.LBB0_54
# BB#104:                               # %yyreduce
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2224(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_44:                               # %sw.bb
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movq	%rax, -2136(%rbp)
	movq	-2136(%rbp), %rax
	addq	$32, %rax
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_55
.LBB0_45:                               # %sw.bb.110
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	cvttsd2si	-72(%rax), %ecx
	movl	%ecx, -2140(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-56(%rax), %ecx
	movl	%ecx, -2144(%rbp)
	movq	-2048(%rbp), %rax
	movsd	-32(%rax), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-2140(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -2148(%rbp)
	movq	-2048(%rbp), %rax
	movsd	-16(%rax), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-2144(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -2152(%rbp)
	movl	-2140(%rbp), %edi
	movl	-2144(%rbp), %esi
	movl	-2148(%rbp), %edx
	movl	-2152(%rbp), %ecx
	callq	create_rectangle
	movq	%rax, current_object
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rsi
	callq	object_set_url
	movq	current_object, %rdi
	callq	add_shape
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_55
.LBB0_46:                               # %sw.bb.133
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	cvttsd2si	-40(%rax), %ecx
	movl	%ecx, -2156(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-24(%rax), %ecx
	movl	%ecx, -2160(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-8(%rax), %ecx
	movl	%ecx, -2164(%rbp)
	movl	-2156(%rbp), %edi
	movl	-2160(%rbp), %esi
	movl	-2164(%rbp), %edx
	callq	create_circle
	movq	%rax, current_object
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rsi
	callq	object_set_url
	movq	current_object, %rdi
	callq	add_shape
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_55
.LBB0_47:                               # %sw.bb.150
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	create_polygon
	movq	%rax, current_object
	jmp	.LBB0_55
.LBB0_48:                               # %sw.bb.152
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rsi
	callq	object_set_url
	movq	current_object, %rdi
	callq	add_shape
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_55
.LBB0_49:                               # %sw.bb.157
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_55
.LBB0_50:                               # %sw.bb.158
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rax
	movq	%rax, -2176(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-24(%rax), %edi
	movq	-2048(%rbp), %rax
	cvttsd2si	-8(%rax), %esi
	callq	new_point
	movq	%rax, -2184(%rbp)
	movq	-2176(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-2184(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-2176(%rbp), %rsi
	movq	%rax, 88(%rsi)
	jmp	.LBB0_55
.LBB0_51:                               # %sw.bb.168
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_55
.LBB0_52:                               # %sw.bb.171
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movq	%rax, -2192(%rbp)
	movq	-2192(%rbp), %rax
	addq	$24, %rax
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_55
.LBB0_53:                               # %sw.bb.179
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movabsq	$.L.str, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -2200(%rbp)
	movq	-2200(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -2208(%rbp)
	movq	-2200(%rbp), %rax
	addq	$40, %rax
	movq	-2208(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_55
.LBB0_54:                               # %sw.default
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %sw.epilog
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
	subl	$16, %ecx
	movslq	%ecx, %rdx
	movsbl	yypgoto(,%rdx), %ecx
	movq	-432(%rbp), %rdx
	movswl	(%rdx), %r9d
	addl	%r9d, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB0_59
# BB#56:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$39, -4(%rbp)
	jg	.LBB0_59
# BB#57:                                # %land.lhs.true.208
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	movq	-432(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB0_59
# BB#58:                                # %if.then.215
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	yytable(,%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_60
.LBB0_59:                               # %if.else.219
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2060(%rbp), %eax
	subl	$16, %eax
	movslq	%eax, %rcx
	movsbl	yydefgoto(,%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB0_60:                               # %if.end.224
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_1
.LBB0_61:                               # %yyerrlab
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-2, cern_char
	jne	.LBB0_63
# BB#62:                                # %cond.true.227
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	movl	%eax, -2260(%rbp)       # 4-byte Spill
	jmp	.LBB0_67
.LBB0_63:                               # %cond.false.228
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$267, cern_char         # imm = 0x10B
	ja	.LBB0_65
# BB#64:                                # %cond.true.231
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	cern_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2264(%rbp)       # 4-byte Spill
	jmp	.LBB0_66
.LBB0_65:                               # %cond.false.235
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2264(%rbp)       # 4-byte Spill
	jmp	.LBB0_66
.LBB0_66:                               # %cond.end.236
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2264(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2260(%rbp)       # 4-byte Spill
.LBB0_67:                               # %cond.end.238
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2260(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2068(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_69
# BB#68:                                # %if.then.241
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.1, %rdi
	movl	cern_nerrs, %eax
	addl	$1, %eax
	movl	%eax, cern_nerrs
	callq	cern_error
.LBB0_69:                               # %if.end.242
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, -8(%rbp)
	jne	.LBB0_76
# BB#70:                                # %if.then.245
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, cern_char
	jg	.LBB0_74
# BB#71:                                # %if.then.248
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, cern_char
	jne	.LBB0_73
# BB#72:                                # %if.then.251
	jmp	.LBB0_91
.LBB0_73:                               # %if.end.252
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_75
.LBB0_74:                               # %if.else.253
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.2, %rdi
	movabsq	$cern_lval, %rdx
	movl	-2068(%rbp), %esi
	callq	yydestruct
	movl	$-2, cern_char
.LBB0_75:                               # %if.end.254
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_76
.LBB0_76:                               # %if.end.255
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               # %yyerrlab1
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$3, -8(%rbp)
.LBB0_78:                               # %for.cond
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movsbl	yypact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$-6, -2060(%rbp)
	je	.LBB0_86
# BB#79:                                # %if.then.268
                                        #   in Loop: Header=BB0_78 Depth=2
	xorl	%eax, %eax
	movl	-2060(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	-2060(%rbp), %eax
	jg	.LBB0_85
# BB#80:                                # %land.lhs.true.272
                                        #   in Loop: Header=BB0_78 Depth=2
	cmpl	$39, -2060(%rbp)
	jg	.LBB0_85
# BB#81:                                # %land.lhs.true.275
                                        #   in Loop: Header=BB0_78 Depth=2
	movslq	-2060(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_85
# BB#82:                                # %if.then.281
                                        #   in Loop: Header=BB0_78 Depth=2
	xorl	%eax, %eax
	movslq	-2060(%rbp), %rcx
	movzbl	yytable(,%rcx), %edx
	movl	%edx, -2060(%rbp)
	cmpl	-2060(%rbp), %eax
	jge	.LBB0_84
# BB#83:                                # %if.then.287
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_89
.LBB0_84:                               # %if.end.288
                                        #   in Loop: Header=BB0_78 Depth=2
	jmp	.LBB0_85
.LBB0_85:                               # %if.end.289
                                        #   in Loop: Header=BB0_78 Depth=2
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.290
                                        #   in Loop: Header=BB0_78 Depth=2
	movq	-432(%rbp), %rax
	cmpq	-424(%rbp), %rax
	jne	.LBB0_88
# BB#87:                                # %if.then.293
	jmp	.LBB0_91
.LBB0_88:                               # %if.end.294
                                        #   in Loop: Header=BB0_78 Depth=2
	movabsq	$.L.str.3, %rdi
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
	jmp	.LBB0_78
.LBB0_89:                               # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -2048(%rbp)
	movq	cern_lval, %rcx
	movq	%rcx, 8(%rax)
	movl	-2060(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB0_1
.LBB0_90:                               # %yyacceptlab
	movl	$0, -2064(%rbp)
	jmp	.LBB0_93
.LBB0_91:                               # %yyabortlab
	movl	$1, -2064(%rbp)
	jmp	.LBB0_93
.LBB0_92:                               # %yyexhaustedlab
	movabsq	$.L.str.4, %rdi
	callq	cern_error
	movl	$2, -2064(%rbp)
.LBB0_93:                               # %yyreturn
	cmpl	$-2, cern_char
	je	.LBB0_98
# BB#94:                                # %if.then.304
	cmpl	$267, cern_char         # imm = 0x10B
	ja	.LBB0_96
# BB#95:                                # %cond.true.307
	movslq	cern_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2268(%rbp)       # 4-byte Spill
	jmp	.LBB0_97
.LBB0_96:                               # %cond.false.311
	movl	$2, %eax
	movl	%eax, -2268(%rbp)       # 4-byte Spill
	jmp	.LBB0_97
.LBB0_97:                               # %cond.end.312
	movl	-2268(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.5, %rdi
	movabsq	$cern_lval, %rdx
	movl	%eax, -2068(%rbp)
	movl	-2068(%rbp), %esi
	callq	yydestruct
.LBB0_98:                               # %if.end.314
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
.LBB0_99:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-432(%rbp), %rax
	cmpq	-424(%rbp), %rax
	je	.LBB0_101
# BB#100:                               # %while.body
                                        #   in Loop: Header=BB0_99 Depth=1
	movabsq	$.L.str.6, %rdi
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
	jmp	.LBB0_99
.LBB0_101:                              # %while.end
	leaq	-416(%rbp), %rax
	movq	-424(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_103
# BB#102:                               # %if.then.331
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_103:                              # %if.end.332
	movl	-2064(%rbp), %eax
	addq	$2272, %rsp             # imm = 0x8E0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cern_parse, .Lfunc_end0-cern_parse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_44
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_48
	.quad	.LBB0_54
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_53

	.text
	.align	16, 0x90
	.type	cern_error,@function
cern_error:                             # @cern_error
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	cern_in, %rdi
	callq	cern_restart
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cern_error, .Lfunc_end1-cern_error
	.cfi_endproc

	.align	16, 0x90
	.type	yydestruct,@function
yydestruct:                             # @yydestruct
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rax
	movq	%rax, -8(%rbp)
.LBB2_2:                                # %if.end
# BB#3:                                 # %sw.default
	jmp	.LBB2_4
.LBB2_4:                                # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end2:
	.size	yydestruct, .Lfunc_end2-yydestruct
	.cfi_endproc

	.globl	load_cern
	.align	16, 0x90
	.type	load_cern,@function
load_cern:                              # @load_cern
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
	movabsq	$.L.str.7, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, cern_in
	cmpq	$0, cern_in
	je	.LBB3_2
# BB#1:                                 # %if.then
	callq	cern_parse
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -12(%rbp)
	movq	cern_in, %rdi
	callq	fclose
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	$0, -12(%rbp)
.LBB3_3:                                # %if.end
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_cern, .Lfunc_end3-load_cern
	.cfi_endproc

	.type	cern_nerrs,@object      # @cern_nerrs
	.bss
	.globl	cern_nerrs
	.align	4
cern_nerrs:
	.long	0                       # 0x0
	.size	cern_nerrs, 4

	.type	cern_char,@object       # @cern_char
	.globl	cern_char
	.align	4
cern_char:
	.long	0                       # 0x0
	.size	cern_char, 4

	.type	yypact,@object          # @yypact
	.section	.rodata,"a",@progbits
	.align	16
yypact:
	.ascii	"\372\t\375\372\376\372\377\001\003\004\005\372\372\372\372\372\372\372\372\372\000\372\007\372\372\372\372\006\373\b\013\372\r\372\016\n\f\017\020\021\022\025\023\024\026\372\372\027\030\031\372"
	.size	yypact, 51

	.type	yytranslate,@object     # @yytranslate
	.align	16
yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\r\017\002\002\016\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f"
	.size	yytranslate, 268

	.type	yycheck,@object         # @yycheck
	.align	16
yycheck:
	.ascii	"\003\004\005\006\007\b\t\f\r\000\n\r\r\f\013\013\013\n\377\377\016\n\016\n\n\017\016\n\n\r\017\n\f\n\017\377\016\f\377\017"
	.size	yycheck, 40

	.type	yytable,@object         # @yytable
	.align	16
yytable:
	.ascii	"\004\005\006\007\b\t\n\037 \003\033\024\026\027\030\031\032\035\000\000\036#\"$%&'*+)(,.0-\000/2\0001"
	.size	yytable, 40

	.type	cern_lval,@object       # @cern_lval
	.bss
	.globl	cern_lval
	.align	8
cern_lval:
	.zero	8
	.size	cern_lval, 8

	.type	yydefact,@object        # @yydefact
	.section	.rodata,"a",@progbits
	.align	16
yydefact:
	.ascii	"\003\000\002\001\000\r\000\000\000\000\000\004\005\006\007\b\t\024\022\023\000\017\000\n\026\027\025\000\000\000\000\016\000\020\000\000\000\000\000\000\000\000\000\000\000\021\f\000\000\000\013"
	.size	yydefact, 51

	.type	yyr2,@object            # @yyr2
	.align	16
yyr2:
	.ascii	"\000\002\001\000\002\001\001\001\001\001\002\f\b\000\004\000\002\005\001\001\001\002\002\002"
	.size	yyr2, 24

	.type	current_object,@object  # @current_object
	.local	current_object
	.comm	current_object,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	yyr1,@object            # @yyr1
	.section	.rodata,"a",@progbits
	.align	16
yyr1:
	.ascii	"\000\020\021\022\022\023\023\023\023\023\024\025\026\030\027\031\031\032\033\033\033\034\035\036"
	.size	yyr1, 24

	.type	yypgoto,@object         # @yypgoto
yypgoto:
	.zero	15,250
	.size	yypgoto, 15

	.type	yydefgoto,@object       # @yydefgoto
yydefgoto:
	.ascii	"\377\001\002\013\f\r\016\017\025\034!\020\021\022\023"
	.size	yydefgoto, 15

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"syntax error"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Error: discarding"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Error: popping"
	.size	.L.str.3, 15

	.type	yystos,@object          # @yystos
	.section	.rodata,"a",@progbits
	.align	16
yystos:
	.ascii	"\000\021\022\000\003\004\005\006\007\b\t\023\024\025\026\027\033\034\035\036\r\030\r\f\013\013\013\n\031\n\016\f\r\032\016\n\n\n\017\016\017\r\n\n\n\017\f\016\n\017\f"
	.size	yystos, 51

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"memory exhausted"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Cleanup: discarding lookahead"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Cleanup: popping"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Deleting"
	.size	.L.str.8, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
