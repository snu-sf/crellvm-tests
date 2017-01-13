	.text
	.file	"imap_ncsa_parse.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	ncsa_parse
	.align	16, 0x90
	.type	ncsa_parse,@function
ncsa_parse:                             # @ncsa_parse
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
	subq	$2288, %rsp             # imm = 0x8F0
	leaq	-2032(%rbp), %rax
	leaq	-416(%rbp), %rcx
	movl	$0, -2084(%rbp)
	movl	$0, -2068(%rbp)
	movq	%rcx, -424(%rbp)
	movq	%rax, -2040(%rbp)
	movq	$200, -2056(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, ncsa_nerrs
	movl	$-2, ncsa_char
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
                                        #     Child Loop BB0_79 Depth 2
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
	jmp	.LBB0_93
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
	jmp	.LBB0_93
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
	jmp	.LBB0_92
.LBB0_17:                               # %if.end.43
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.44
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, -4(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.47
	jmp	.LBB0_91
.LBB0_20:                               # %if.end.48
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               # %yybackup
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	yypact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$-9, -2060(%rbp)
	jne	.LBB0_23
# BB#22:                                # %if.then.52
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_40
.LBB0_23:                               # %if.end.53
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-2, ncsa_char
	jne	.LBB0_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	ncsa_lex
	movl	%eax, ncsa_char
.LBB0_25:                               # %if.end.58
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, ncsa_char
	jg	.LBB0_27
# BB#26:                                # %if.then.61
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -2068(%rbp)
	movl	$0, ncsa_char
	jmp	.LBB0_31
.LBB0_27:                               # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$268, ncsa_char         # imm = 0x10C
	ja	.LBB0_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	ncsa_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2220(%rbp)       # 4-byte Spill
	jmp	.LBB0_30
.LBB0_29:                               # %cond.false
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2220(%rbp)       # 4-byte Spill
	jmp	.LBB0_30
.LBB0_30:                               # %cond.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2220(%rbp), %eax       # 4-byte Reload
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
	movl	$35, %eax
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
	movl	$-2, ncsa_char
	movl	-2060(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-2048(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -2048(%rbp)
	movq	ncsa_lval, %rdx
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
	jmp	.LBB0_62
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
	addl	$-9, %ecx
	movl	%ecx, %eax
	subl	$18, %ecx
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	movl	%ecx, -2236(%rbp)       # 4-byte Spill
	ja	.LBB0_55
# BB#105:                               # %yyreduce
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2232(%rbp), %rax       # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_44:                               # %sw.bb
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	jmp	.LBB0_56
.LBB0_45:                               # %sw.bb.106
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movq	%rax, -2136(%rbp)
	movq	-2136(%rbp), %rax
	addq	$24, %rax
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_56
.LBB0_46:                               # %sw.bb.113
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movq	%rax, -2144(%rbp)
	movq	-2144(%rbp), %rax
	addq	$16, %rax
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_56
.LBB0_47:                               # %sw.bb.121
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movabsq	$.L.str, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -2152(%rbp)
	movq	-2152(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-2048(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -2160(%rbp)
	movq	-2152(%rbp), %rax
	addq	$40, %rax
	movq	-2160(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_56
.LBB0_48:                               # %sw.bb.132
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	get_map_info
	movq	%rax, -2168(%rbp)
	movq	-2168(%rbp), %rax
	addq	$32, %rax
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_strreplace
	movq	-2048(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	callq	g_free
	jmp	.LBB0_56
.LBB0_49:                               # %sw.bb.140
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	cvttsd2si	-40(%rax), %ecx
	movl	%ecx, -2172(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-24(%rax), %ecx
	movl	%ecx, -2176(%rbp)
	movq	-2048(%rbp), %rax
	movsd	-16(%rax), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-2172(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -2180(%rbp)
	movq	-2048(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-2176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -2184(%rbp)
	movl	-2172(%rbp), %edi
	movl	-2176(%rbp), %esi
	movl	-2180(%rbp), %edx
	movl	-2184(%rbp), %ecx
	callq	create_rectangle
	movq	%rax, current_object
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	-48(%rax), %rsi
	callq	object_set_url
	movq	current_object, %rdi
	callq	add_shape
	movq	-2048(%rbp), %rax
	movq	-48(%rax), %rdi
	callq	g_free
	jmp	.LBB0_56
.LBB0_50:                               # %sw.bb.163
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	cvttsd2si	-40(%rax), %ecx
	movl	%ecx, -2188(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-24(%rax), %ecx
	movl	%ecx, -2192(%rbp)
	movq	-2048(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-2048(%rbp), %rax
	subsd	-24(%rax), %xmm0
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -2196(%rbp)
	movl	-2188(%rbp), %edi
	movl	-2192(%rbp), %esi
	movl	-2196(%rbp), %edx
	callq	create_circle
	movq	%rax, current_object
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	-48(%rax), %rsi
	callq	object_set_url
	movq	current_object, %rdi
	callq	add_shape
	movq	-2048(%rbp), %rax
	movq	-48(%rax), %rdi
	callq	g_free
	jmp	.LBB0_56
.LBB0_51:                               # %sw.bb.184
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	create_polygon
	movq	%rax, current_object
	jmp	.LBB0_56
.LBB0_52:                               # %sw.bb.186
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rdi
	movq	-2048(%rbp), %rax
	movq	-16(%rax), %rsi
	callq	object_set_url
	movq	current_object, %rdi
	callq	add_shape
	movq	-2048(%rbp), %rax
	movq	-16(%rax), %rdi
	callq	g_free
	jmp	.LBB0_56
.LBB0_53:                               # %sw.bb.191
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_56
.LBB0_54:                               # %sw.bb.192
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	current_object, %rax
	movq	%rax, -2208(%rbp)
	movq	-2048(%rbp), %rax
	cvttsd2si	-16(%rax), %edi
	movq	-2048(%rbp), %rax
	cvttsd2si	(%rax), %esi
	callq	new_point
	movq	%rax, -2216(%rbp)
	movq	-2208(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-2216(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-2208(%rbp), %rsi
	movq	%rax, 88(%rsi)
	jmp	.LBB0_56
.LBB0_55:                               # %sw.default
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_56
.LBB0_56:                               # %sw.epilog
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
	subl	$15, %ecx
	movslq	%ecx, %rdx
	movsbl	yypgoto(,%rdx), %ecx
	movq	-432(%rbp), %rdx
	movswl	(%rdx), %r9d
	addl	%r9d, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB0_60
# BB#57:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$35, -4(%rbp)
	jg	.LBB0_60
# BB#58:                                # %land.lhs.true.220
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	movq	-432(%rbp), %rax
	movswl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB0_60
# BB#59:                                # %if.then.227
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-4(%rbp), %rax
	movzbl	yytable(,%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_61
.LBB0_60:                               # %if.else.231
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2060(%rbp), %eax
	subl	$15, %eax
	movslq	%eax, %rcx
	movsbl	yydefgoto(,%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB0_61:                               # %if.end.236
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_1
.LBB0_62:                               # %yyerrlab
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-2, ncsa_char
	jne	.LBB0_64
# BB#63:                                # %cond.true.239
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	movl	%eax, -2276(%rbp)       # 4-byte Spill
	jmp	.LBB0_68
.LBB0_64:                               # %cond.false.240
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$268, ncsa_char         # imm = 0x10C
	ja	.LBB0_66
# BB#65:                                # %cond.true.243
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	ncsa_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2280(%rbp)       # 4-byte Spill
	jmp	.LBB0_67
.LBB0_66:                               # %cond.false.247
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$2, %eax
	movl	%eax, -2280(%rbp)       # 4-byte Spill
	jmp	.LBB0_67
.LBB0_67:                               # %cond.end.248
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2280(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2276(%rbp)       # 4-byte Spill
.LBB0_68:                               # %cond.end.250
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-2276(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2068(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_70
# BB#69:                                # %if.then.253
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.1, %rdi
	movl	ncsa_nerrs, %eax
	addl	$1, %eax
	movl	%eax, ncsa_nerrs
	callq	ncsa_error
.LBB0_70:                               # %if.end.254
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$3, -8(%rbp)
	jne	.LBB0_77
# BB#71:                                # %if.then.257
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, ncsa_char
	jg	.LBB0_75
# BB#72:                                # %if.then.260
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, ncsa_char
	jne	.LBB0_74
# BB#73:                                # %if.then.263
	jmp	.LBB0_92
.LBB0_74:                               # %if.end.264
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_76
.LBB0_75:                               # %if.else.265
                                        #   in Loop: Header=BB0_2 Depth=1
	movabsq	$.L.str.2, %rdi
	movabsq	$ncsa_lval, %rdx
	movl	-2068(%rbp), %esi
	callq	yydestruct
	movl	$-2, ncsa_char
.LBB0_76:                               # %if.end.266
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               # %if.end.267
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_78
.LBB0_78:                               # %yyerrlab1
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$3, -8(%rbp)
.LBB0_79:                               # %for.cond
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movsbl	yypact(,%rax), %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	$-9, -2060(%rbp)
	je	.LBB0_87
# BB#80:                                # %if.then.280
                                        #   in Loop: Header=BB0_79 Depth=2
	xorl	%eax, %eax
	movl	-2060(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -2060(%rbp)
	cmpl	-2060(%rbp), %eax
	jg	.LBB0_86
# BB#81:                                # %land.lhs.true.284
                                        #   in Loop: Header=BB0_79 Depth=2
	cmpl	$35, -2060(%rbp)
	jg	.LBB0_86
# BB#82:                                # %land.lhs.true.287
                                        #   in Loop: Header=BB0_79 Depth=2
	movslq	-2060(%rbp), %rax
	movsbl	yycheck(,%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_86
# BB#83:                                # %if.then.293
                                        #   in Loop: Header=BB0_79 Depth=2
	xorl	%eax, %eax
	movslq	-2060(%rbp), %rcx
	movzbl	yytable(,%rcx), %edx
	movl	%edx, -2060(%rbp)
	cmpl	-2060(%rbp), %eax
	jge	.LBB0_85
# BB#84:                                # %if.then.299
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_90
.LBB0_85:                               # %if.end.300
                                        #   in Loop: Header=BB0_79 Depth=2
	jmp	.LBB0_86
.LBB0_86:                               # %if.end.301
                                        #   in Loop: Header=BB0_79 Depth=2
	jmp	.LBB0_87
.LBB0_87:                               # %if.end.302
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	-432(%rbp), %rax
	cmpq	-424(%rbp), %rax
	jne	.LBB0_89
# BB#88:                                # %if.then.305
	jmp	.LBB0_92
.LBB0_89:                               # %if.end.306
                                        #   in Loop: Header=BB0_79 Depth=2
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
	jmp	.LBB0_79
.LBB0_90:                               # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-2048(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -2048(%rbp)
	movq	ncsa_lval, %rcx
	movq	%rcx, 8(%rax)
	movl	-2060(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB0_1
.LBB0_91:                               # %yyacceptlab
	movl	$0, -2064(%rbp)
	jmp	.LBB0_94
.LBB0_92:                               # %yyabortlab
	movl	$1, -2064(%rbp)
	jmp	.LBB0_94
.LBB0_93:                               # %yyexhaustedlab
	movabsq	$.L.str.4, %rdi
	callq	ncsa_error
	movl	$2, -2064(%rbp)
.LBB0_94:                               # %yyreturn
	cmpl	$-2, ncsa_char
	je	.LBB0_99
# BB#95:                                # %if.then.316
	cmpl	$268, ncsa_char         # imm = 0x10C
	ja	.LBB0_97
# BB#96:                                # %cond.true.319
	movslq	ncsa_char, %rax
	movzbl	yytranslate(,%rax), %ecx
	movl	%ecx, -2284(%rbp)       # 4-byte Spill
	jmp	.LBB0_98
.LBB0_97:                               # %cond.false.323
	movl	$2, %eax
	movl	%eax, -2284(%rbp)       # 4-byte Spill
	jmp	.LBB0_98
.LBB0_98:                               # %cond.end.324
	movl	-2284(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.5, %rdi
	movabsq	$ncsa_lval, %rdx
	movl	%eax, -2068(%rbp)
	movl	-2068(%rbp), %esi
	callq	yydestruct
.LBB0_99:                               # %if.end.326
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
.LBB0_100:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-432(%rbp), %rax
	cmpq	-424(%rbp), %rax
	je	.LBB0_102
# BB#101:                               # %while.body
                                        #   in Loop: Header=BB0_100 Depth=1
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
	jmp	.LBB0_100
.LBB0_102:                              # %while.end
	leaq	-416(%rbp), %rax
	movq	-424(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB0_104
# BB#103:                               # %if.then.343
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_104:                              # %if.end.344
	movl	-2064(%rbp), %eax
	addq	$2288, %rsp             # imm = 0x8F0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ncsa_parse, .Lfunc_end0-ncsa_parse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_44
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_48
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_55
	.quad	.LBB0_53
	.quad	.LBB0_54

	.text
	.align	16, 0x90
	.type	ncsa_error,@function
ncsa_error:                             # @ncsa_error
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
	movq	ncsa_in, %rdi
	callq	ncsa_restart
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ncsa_error, .Lfunc_end1-ncsa_error
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

	.globl	load_ncsa
	.align	16, 0x90
	.type	load_ncsa,@function
load_ncsa:                              # @load_ncsa
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
	movq	%rax, ncsa_in
	cmpq	$0, ncsa_in
	je	.LBB3_2
# BB#1:                                 # %if.then
	callq	ncsa_parse
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -12(%rbp)
	movq	ncsa_in, %rdi
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
	.size	load_ncsa, .Lfunc_end3-load_ncsa
	.cfi_endproc

	.type	ncsa_nerrs,@object      # @ncsa_nerrs
	.bss
	.globl	ncsa_nerrs
	.align	4
ncsa_nerrs:
	.long	0                       # 0x0
	.size	ncsa_nerrs, 4

	.type	ncsa_char,@object       # @ncsa_char
	.globl	ncsa_char
	.align	4
ncsa_char:
	.long	0                       # 0x0
	.size	ncsa_char, 4

	.type	yypact,@object          # @yypact
	.section	.rodata,"a",@progbits
	.align	16
yypact:
	.ascii	"\367\004\001\367\370\371\377\000\367\367\367\367\367\375\367\367\367\367\002\003\005\006\367\367\367\367\367\367\b\367\t\367\007\367\n\013\f\016\017\r\367\021\020\022\023\024\367\025\367\367"
	.size	yypact, 50

	.type	yytranslate,@object     # @yytranslate
	.align	16
yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\016\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003\004\005\006\007\b\t\n\013\f\r"
	.size	yytranslate, 269

	.type	yycheck,@object         # @yycheck
	.align	16
yycheck:
	.ascii	"\003\004\005\006\000\r\r\n\007\b\t\n\r\r\f\f\377\f\f\013\013\016\013\013\016\013\013\016\013\013\016\013\013\016\377\r"
	.size	yycheck, 36

	.type	yytable,@object         # @yytable
	.align	16
yytable:
	.ascii	"\022\023\024\025\003\016\017\007\004\005\006\007\020\021\034\035\000\036\037 \"#&'%)*+,.-01/\000\026"
	.size	yytable, 36

	.type	ncsa_lval,@object       # @ncsa_lval
	.bss
	.globl	ncsa_lval
	.align	8
ncsa_lval:
	.zero	8
	.size	ncsa_lval, 8

	.type	yydefact,@object        # @yydefact
	.section	.rodata,"a",@progbits
	.align	16
yydefact:
	.ascii	"\003\000\r\001\000\000\000\000\004\b\005\006\007\002\n\013\f\t\000\000\000\000\023\016\017\020\021\022\000\027\000\024\000\031\000\000\030\000\000\000\032\000\000\000\000\000\033\000\025\026"
	.size	yydefact, 50

	.type	yyr2,@object            # @yyr2
	.align	16
yyr2:
	.ascii	"\000\002\002\000\002\001\001\001\001\002\002\002\002\000\002\001\001\001\001\001\002\b\b\000\004\000\002\003"
	.size	yyr2, 28

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	current_object,@object  # @current_object
	.local	current_object
	.comm	current_object,8,8
	.type	yyr1,@object            # @yyr1
	.section	.rodata,"a",@progbits
	.align	16
yyr1:
	.ascii	"\000\017\020\021\021\022\022\022\022\023\024\025\026\027\027\030\030\030\030\030\031\032\033\035\034\036\036\037"
	.size	yyr1, 28

	.type	yypgoto,@object         # @yypgoto
	.align	16
yypgoto:
	.ascii	"\367\367\367\367\026\367\367\367\367\367\367\367\367\367\367\367\367"
	.size	yypgoto, 17

	.type	yydefgoto,@object       # @yydefgoto
	.align	16
yydefgoto:
	.ascii	"\377\001\002\b\t\n\013\f\r\027\030\031\032\033!$("
	.size	yydefgoto, 17

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
	.ascii	"\000\020\021\000\007\b\t\n\022\023\024\025\026\027\r\r\r\r\003\004\005\006\023\030\031\032\033\034\f\f\f\f\013\035\013\016\036\016\013\013\037\013\013\016\013\016\013\016\013\013"
	.size	yystos, 50

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
