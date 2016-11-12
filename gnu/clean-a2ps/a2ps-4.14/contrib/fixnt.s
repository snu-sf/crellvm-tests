	.text
	.file	"fixnt.bc"
	.globl	yylex
	.align	16, 0x90
	.type	yylex,@function
yylex:                                  # @yylex
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
	subq	$192, %rsp
	cmpl	$0, first_time
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$3, yy_start
	movl	$0, first_time
.LBB0_2:                                # %if.end
	cmpl	$0, yy_init
	jne	.LBB0_14
# BB#3:                                 # %if.then.2
	movl	$1, yy_init
	cmpl	$0, yy_start
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movl	$1, yy_start
.LBB0_5:                                # %if.end.5
	cmpq	$0, yyin
	jne	.LBB0_7
# BB#6:                                 # %if.then.7
	movq	stdin, %rax
	movq	%rax, yyin
.LBB0_7:                                # %if.end.8
	cmpq	$0, yyout
	jne	.LBB0_9
# BB#8:                                 # %if.then.10
	movq	stdout, %rax
	movq	%rax, yyout
.LBB0_9:                                # %if.end.11
	cmpq	$0, yy_buffer_stack
	je	.LBB0_11
# BB#10:                                # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB0_13
	jmp	.LBB0_12
.LBB0_11:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB0_13
	jmp	.LBB0_12
.LBB0_12:                               # %if.then.14
	callq	yyensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	yyin, %rdi
	callq	yy_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB0_13:                               # %if.end.16
	callq	yy_load_buffer_state
.LBB0_14:                               # %if.end.17
	jmp	.LBB0_15
.LBB0_15:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_20 Depth 4
                                        #       Child Loop BB0_27 Depth 3
                                        #         Child Loop BB0_30 Depth 4
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	yy_hold_char, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	yy_start, %edx
	movl	%edx, -8(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rax,8), %rax
	movl	40(%rax), %edx
	addl	-8(%rbp), %edx
	movl	%edx, -8(%rbp)
.LBB0_16:                               # %yy_match
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_20 Depth 4
                                        #       Child Loop BB0_27 Depth 3
                                        #         Child Loop BB0_30 Depth 4
	jmp	.LBB0_17
.LBB0_17:                               # %do.body
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_20 Depth 4
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movb	%cl, %dl
	movb	%dl, -29(%rbp)
	movslq	-8(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB0_19
# BB#18:                                # %if.then.24
                                        #   in Loop: Header=BB0_17 Depth=3
	movl	-8(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB0_19:                               # %if.end.25
                                        #   in Loop: Header=BB0_17 Depth=3
	jmp	.LBB0_20
.LBB0_20:                               # %while.cond.26
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-29(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB0_24
# BB#21:                                # %while.body.36
                                        #   in Loop: Header=BB0_20 Depth=4
	movslq	-8(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$477, -8(%rbp)          # imm = 0x1DD
	jl	.LBB0_23
# BB#22:                                # %if.then.42
                                        #   in Loop: Header=BB0_20 Depth=4
	movzbl	-29(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -29(%rbp)
.LBB0_23:                               # %if.end.47
                                        #   in Loop: Header=BB0_20 Depth=4
	jmp	.LBB0_20
.LBB0_24:                               # %while.end
                                        #   in Loop: Header=BB0_17 Depth=3
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-29(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB0_17 Depth=3
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	cmpl	$815, %ecx              # imm = 0x32F
	jne	.LBB0_17
# BB#26:                                # %do.end
                                        #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_27
.LBB0_27:                               # %yy_find_action
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_30 Depth 4
	movslq	-8(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_29
# BB#28:                                # %if.then.66
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	yy_last_accepting_cpos, %rax
	movq	%rax, -16(%rbp)
	movl	yy_last_accepting_state, %ecx
	movl	%ecx, -8(%rbp)
	movslq	-8(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
.LBB0_29:                               # %if.end.70
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	-24(%rbp), %rax
	movq	%rax, yytext
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, yyleng
	movq	-16(%rbp), %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, yy_c_buf_p
.LBB0_30:                               # %do_action
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$32, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB0_129
# BB#132:                               # %do_action
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_31:                               # %sw.bb
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	yy_hold_char, %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	yy_last_accepting_cpos, %rcx
	movq	%rcx, -16(%rbp)
	movl	yy_last_accepting_state, %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB0_27
.LBB0_32:                               # %sw.bb.72
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_34
# BB#33:                                # %if.then.75
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_34:                               # %if.end.83
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	yytext, %rdi
	movslq	yyleng, %rsi
	movq	yyout, %rcx
	callq	fwrite
	movl	$5, yy_start
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_130
.LBB0_35:                               # %sw.bb.86
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_37
# BB#36:                                # %if.then.89
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_37:                               # %if.end.98
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_130
.LBB0_38:                               # %sw.bb.99
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_40
# BB#39:                                # %if.then.102
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_40:                               # %if.end.111
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movl	$1, ifcorel
	movq	yytext, %rdi
	movslq	yyleng, %rsi
	movq	yyout, %rcx
	callq	fwrite
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_130
.LBB0_41:                               # %sw.bb.114
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_43
# BB#42:                                # %if.then.117
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_43:                               # %if.end.126
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str, %rsi
	movq	yyout, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, ifendsetup
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB0_130
.LBB0_44:                               # %sw.bb.128
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_46
# BB#45:                                # %if.then.131
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_46:                               # %if.end.140
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$bodyfname, %rdi
	movabsq	$.L.str.1, %rsi
	movq	tmpdir, %rdx
	movl	pid, %ecx
	movb	$0, %al
	callq	sprintf
	movabsq	$bodyfname, %rdi
	movabsq	$.L.str.2, %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	fopen
	movabsq	$.L.str.3, %rsi
	movq	%rax, body
	movq	body, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$7, yy_start
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB0_130
.LBB0_47:                               # %sw.bb.144
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_49
# BB#48:                                # %if.then.147
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_49:                               # %if.end.156
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	yyout, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB0_130
.LBB0_50:                               # %sw.bb.158
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_52
# BB#51:                                # %if.then.161
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_52:                               # %if.end.170
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$adobefname, %rdi
	movabsq	$.L.str.4, %rsi
	movq	tmpdir, %rdx
	movl	pid, %ecx
	movb	$0, %al
	callq	sprintf
	movabsq	$adobefname, %rdi
	movabsq	$.L.str.2, %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	fopen
	movabsq	$.L.str.3, %rsi
	movq	%rax, adobe
	movq	adobe, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$9, yy_start
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB0_130
.LBB0_53:                               # %sw.bb.174
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_55
# BB#54:                                # %if.then.177
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_55:                               # %if.end.186
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	adobe, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$7, yy_start
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_56:                               # %sw.bb.188
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_58
# BB#57:                                # %if.then.191
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_58:                               # %if.end.200
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	adobe, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_59:                               # %sw.bb.202
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_61
# BB#60:                                # %if.then.205
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_61:                               # %if.end.214
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$1, ifcorel
	jne	.LBB0_63
# BB#62:                                # %if.then.217
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	body, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_64
.LBB0_63:                               # %if.else
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	body, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB0_64:                               # %if.end.220
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_130
.LBB0_65:                               # %sw.bb.221
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_67
# BB#66:                                # %if.then.224
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_67:                               # %if.end.233
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$fontfname, %rdi
	movabsq	$.L.str.6, %rsi
	movq	tmpdir, %rdx
	movl	pid, %ecx
	movb	$0, %al
	callq	sprintf
	movabsq	$fontfname, %rdi
	movabsq	$.L.str.2, %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	fopen
	movabsq	$.L.str.3, %rsi
	movq	%rax, font
	movq	font, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$11, yy_start
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_68:                               # %sw.bb.237
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_70
# BB#69:                                # %if.then.240
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_70:                               # %if.end.249
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	font, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$11, yy_start
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_71:                               # %sw.bb.251
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_73
# BB#72:                                # %if.then.254
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_73:                               # %if.end.263
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	font, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$7, yy_start
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_74:                               # %sw.bb.265
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_76
# BB#75:                                # %if.then.268
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_76:                               # %if.end.277
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	font, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$11, yy_start
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_77:                               # %sw.bb.279
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_79
# BB#78:                                # %if.then.282
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_79:                               # %if.end.291
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	font, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$7, yy_start
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_80:                               # %sw.bb.293
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_82
# BB#81:                                # %if.then.296
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_82:                               # %if.end.305
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	font, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_83:                               # %sw.bb.307
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_85
# BB#84:                                # %if.then.310
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_85:                               # %if.end.319
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, ifpagesv
	jmp	.LBB0_130
.LBB0_86:                               # %sw.bb.320
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_88
# BB#87:                                # %if.then.323
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_88:                               # %if.end.332
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.7, %rsi
	movq	body, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_89:                               # %sw.bb.334
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_91
# BB#90:                                # %if.then.337
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_91:                               # %if.end.346
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	body, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_92:                               # %sw.bb.348
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_94
# BB#93:                                # %if.then.351
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_94:                               # %if.end.360
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.9, %rsi
	movq	body, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_95:                               # %sw.bb.362
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_97
# BB#96:                                # %if.then.365
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_97:                               # %if.end.374
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	body, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_98:                               # %sw.bb.376
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_100
# BB#99:                                # %if.then.379
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_100:                              # %if.end.388
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_130
.LBB0_101:                              # %sw.bb.389
	cmpl	$0, yyleng
	jle	.LBB0_103
# BB#102:                               # %if.then.392
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_103:                              # %if.end.401
	movabsq	$.L.str.3, %rsi
	movq	body, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$0, -4(%rbp)
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB0_131
.LBB0_104:                              # %sw.bb.403
	movl	$0, -4(%rbp)
	jmp	.LBB0_131
.LBB0_105:                              # %sw.bb.404
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_107
# BB#106:                               # %if.then.407
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_107:                              # %if.end.416
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	body, %rdi
	movq	yytext, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB0_130
.LBB0_108:                              # %sw.bb.418
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yyleng
	jle	.LBB0_110
# BB#109:                               # %if.then.421
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	yyleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	yytext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_110:                              # %if.end.430
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	yytext, %rdi
	movslq	yyleng, %rsi
	movq	yyout, %rcx
	callq	fwrite
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_130
.LBB0_111:                              # %sw.bb.433
	movl	$0, -4(%rbp)
	jmp	.LBB0_131
.LBB0_112:                              # %sw.bb.434
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	-16(%rbp), %rax
	movq	yytext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -36(%rbp)
	movb	yy_hold_char, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB0_114
# BB#113:                               # %if.then.443
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	28(%rax), %edx
	movl	%edx, yy_n_chars
	movq	yyin, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 56(%rax)
.LBB0_114:                              # %if.end.448
                                        #   in Loop: Header=BB0_30 Depth=4
	movq	yy_c_buf_p, %rax
	movslq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_118
# BB#115:                               # %if.then.454
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	yytext, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	yy_try_NUL_trans
	movl	%eax, -40(%rbp)
	movq	yytext, %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_117
# BB#116:                               # %if.then.459
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	yy_c_buf_p, %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB0_16
.LBB0_117:                              # %if.else.461
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_27
.LBB0_118:                              # %if.else.462
                                        #   in Loop: Header=BB0_30 Depth=4
	callq	yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	je	.LBB0_125
	jmp	.LBB0_133
.LBB0_133:                              # %if.else.462
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB0_119
	jmp	.LBB0_134
.LBB0_134:                              # %if.else.462
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB0_126
	jmp	.LBB0_127
.LBB0_119:                              # %sw.bb.464
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	$0, yy_did_buffer_switch_on_eof
	callq	yywrap
	cmpl	$0, %eax
	je	.LBB0_121
# BB#120:                               # %if.then.467
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	$2, %eax
	movq	yytext, %rcx
	movq	%rcx, yy_c_buf_p
	movl	yy_start, %edx
	subl	$1, %edx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-192(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$26, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_30
.LBB0_121:                              # %if.else.472
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, yy_did_buffer_switch_on_eof
	jne	.LBB0_123
# BB#122:                               # %if.then.474
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	yyin, %rdi
	callq	yyrestart
.LBB0_123:                              # %if.end.475
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_124
.LBB0_124:                              # %if.end.476
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_127
.LBB0_125:                              # %sw.bb.477
                                        #   in Loop: Header=BB0_16 Depth=2
	movq	yytext, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	yytext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_16
.LBB0_126:                              # %sw.bb.482
                                        #   in Loop: Header=BB0_27 Depth=3
	movslq	yy_n_chars, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	addq	8(%rcx), %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	yytext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_27
.LBB0_127:                              # %sw.epilog
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_128
.LBB0_128:                              # %if.end.489
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_130
.LBB0_129:                              # %sw.default
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	yy_fatal_error
.LBB0_130:                              # %sw.epilog.490
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_15
.LBB0_131:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	yylex, .Lfunc_end0-yylex
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_31
	.quad	.LBB0_32
	.quad	.LBB0_35
	.quad	.LBB0_38
	.quad	.LBB0_41
	.quad	.LBB0_44
	.quad	.LBB0_47
	.quad	.LBB0_50
	.quad	.LBB0_53
	.quad	.LBB0_56
	.quad	.LBB0_59
	.quad	.LBB0_65
	.quad	.LBB0_68
	.quad	.LBB0_71
	.quad	.LBB0_74
	.quad	.LBB0_77
	.quad	.LBB0_80
	.quad	.LBB0_83
	.quad	.LBB0_86
	.quad	.LBB0_89
	.quad	.LBB0_92
	.quad	.LBB0_95
	.quad	.LBB0_98
	.quad	.LBB0_101
	.quad	.LBB0_105
	.quad	.LBB0_108
	.quad	.LBB0_112
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_104
	.quad	.LBB0_111
	.quad	.LBB0_111

	.text
	.align	16, 0x90
	.type	yyensure_buffer_stack,@function
yyensure_buffer_stack:                  # @yyensure_buffer_stack
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
	cmpq	$0, yy_buffer_stack
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	yyalloc
	xorl	%esi, %esi
	movq	%rax, yy_buffer_stack
	movq	yy_buffer_stack, %rax
	movslq	-4(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	callq	memset
	movslq	-4(%rbp), %rax
	movq	%rax, yy_buffer_stack_max
	movq	$0, yy_buffer_stack_top
	jmp	.LBB1_4
.LBB1_2:                                # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack_max, %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_4
# BB#3:                                 # %if.then.6
	movl	$8, -8(%rbp)
	movq	yy_buffer_stack_max, %rax
	movslq	-8(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
	movq	yy_buffer_stack, %rax
	movslq	-4(%rbp), %rcx
	shlq	$3, %rcx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	yyrealloc
	xorl	%esi, %esi
	movq	%rax, yy_buffer_stack
	movq	yy_buffer_stack, %rax
	movq	yy_buffer_stack_max, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-8(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movslq	-4(%rbp), %rax
	movq	%rax, yy_buffer_stack_max
.LBB1_4:                                # %if.end.16
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	yyensure_buffer_stack, .Lfunc_end1-yyensure_buffer_stack
	.cfi_endproc

	.globl	yy_create_buffer
	.align	16, 0x90
	.type	yy_create_buffer,@function
yy_create_buffer:                       # @yy_create_buffer
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
	movl	$64, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%eax, %edi
	callq	yyalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	callq	yy_fatal_error
.LBB2_2:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	addl	$2, %eax
	movl	%eax, %edi
	callq	yyalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.12, %rdi
	callq	yy_fatal_error
.LBB2_4:                                # %if.end.6
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	yy_init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	yy_create_buffer, .Lfunc_end2-yy_create_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	yy_load_buffer_state,@function
yy_load_buffer_state:                   # @yy_load_buffer_state
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
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	28(%rax), %edx
	movl	%edx, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	16(%rax), %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, yytext
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, yyin
	movq	yy_c_buf_p, %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	popq	%rbp
	retq
.Lfunc_end3:
	.size	yy_load_buffer_state, .Lfunc_end3-yy_load_buffer_state
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_previous_state,@function
yy_get_previous_state:                  # @yy_get_previous_state
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
	movl	yy_start, %eax
	movl	%eax, -4(%rbp)
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	40(%rcx), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	yytext, %rcx
	movq	%rcx, -16(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	movq	-16(%rbp), %rax
	cmpq	yy_c_buf_p, %rax
	jae	.LBB4_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movslq	-4(%rbp), %rdx
	cmpw	$0, yy_accept(,%rdx,2)
	je	.LBB4_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_8
.LBB4_8:                                # %while.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB4_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB4_8 Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$477, -4(%rbp)          # imm = 0x1DD
	jl	.LBB4_11
# BB#10:                                # %if.then.22
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB4_11:                               # %if.end.27
                                        #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_8
.LBB4_12:                               # %while.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_1
.LBB4_14:                               # %for.end
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	yy_get_previous_state, .Lfunc_end4-yy_get_previous_state
	.cfi_endproc

	.align	16, 0x90
	.type	yy_try_NUL_trans,@function
yy_try_NUL_trans:                       # @yy_try_NUL_trans
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
	movl	%edi, -4(%rbp)
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	$1, -17(%rbp)
	movslq	-4(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB5_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$477, -4(%rbp)          # imm = 0x1DD
	jl	.LBB5_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB5_3 Depth=1
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB5_6:                                # %if.end.18
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_3
.LBB5_7:                                # %while.end
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$476, -4(%rbp)          # imm = 0x1DC
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB5_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB5_10:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end5:
	.size	yy_try_NUL_trans, .Lfunc_end5-yy_try_NUL_trans
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_next_buffer,@function
yy_get_next_buffer:                     # @yy_get_next_buffer
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
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	yytext, %rax
	movq	%rax, -24(%rbp)
	movq	yy_c_buf_p, %rax
	movl	yy_n_chars, %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	yy_buffer_stack_top, %rsi
	movq	yy_buffer_stack, %rdi
	movq	(%rdi,%rsi,8), %rsi
	addq	8(%rsi), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.20, %rdi
	callq	yy_fatal_error
.LBB6_2:                                # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB6_6
# BB#3:                                 # %if.then.6
	movq	yy_c_buf_p, %rax
	movq	yytext, %rcx
	subq	%rcx, %rax
	subq	$0, %rax
	cmpq	$1, %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB6_58
.LBB6_5:                                # %if.else
	movl	$2, -4(%rbp)
	jmp	.LBB6_58
.LBB6_6:                                # %if.end.9
	movq	yy_c_buf_p, %rax
	movq	yytext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB6_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB6_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB6_7 Depth=1
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
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_7
.LBB6_10:                               # %for.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB6_12
# BB#11:                                # %if.then.20
	movl	$0, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$0, 28(%rax)
	jmp	.LBB6_51
.LBB6_12:                               # %if.else.22
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %edx
	subl	-28(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -40(%rbp)
.LBB6_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jg	.LBB6_26
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB6_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_17
.LBB6_17:                               # %cond.end
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	yy_c_buf_p, %rax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB6_22
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jg	.LBB6_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$3, %ecx
	movq	-48(%rbp), %rax
	addl	24(%rax), %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.43
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB6_21:                               # %if.end.46
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	yyrealloc
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.51
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_23:                               # %if.end.53
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB6_13 Depth=1
	movabsq	$.L.str.21, %rdi
	callq	yy_fatal_error
.LBB6_25:                               # %if.end.57
                                        #   in Loop: Header=BB6_13 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, yy_c_buf_p
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %edx
	subl	-28(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -40(%rbp)
	jmp	.LBB6_13
.LBB6_26:                               # %while.end
	cmpl	$8192, -40(%rbp)        # imm = 0x2000
	jle	.LBB6_28
# BB#27:                                # %if.then.67
	movl	$8192, -40(%rbp)        # imm = 0x2000
.LBB6_28:                               # %if.end.68
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 36(%rax)
	je	.LBB6_42
# BB#29:                                # %if.then.71
	movl	$42, -60(%rbp)
	movq	$0, -72(%rbp)
.LBB6_30:                               # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jae	.LBB6_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_30 Depth=1
	movq	yyin, %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -60(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -81(%rbp)          # 1-byte Spill
	je	.LBB6_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB6_30 Depth=1
	cmpl	$10, -60(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB6_33:                               # %land.end
                                        #   in Loop: Header=BB6_30 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_34
	jmp	.LBB6_36
.LBB6_34:                               # %for.body.81
                                        #   in Loop: Header=BB6_30 Depth=1
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %r8
	movq	(%r8,%rdi,8), %rdi
	addq	8(%rdi), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#35:                                # %for.inc.88
                                        #   in Loop: Header=BB6_30 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB6_30
.LBB6_36:                               # %for.end.90
	cmpl	$10, -60(%rbp)
	jne	.LBB6_38
# BB#37:                                # %if.then.93
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movslq	-28(%rbp), %rsi
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %r8
	movq	(%r8,%rdi,8), %rdi
	addq	8(%rdi), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB6_38:                               # %if.end.101
	cmpl	$-1, -60(%rbp)
	jne	.LBB6_41
# BB#39:                                # %land.lhs.true.104
	movq	yyin, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB6_41
# BB#40:                                # %if.then.107
	movabsq	$.L.str.22, %rdi
	callq	yy_fatal_error
.LBB6_41:                               # %if.end.108
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, yy_n_chars
	jmp	.LBB6_50
.LBB6_42:                               # %if.else.110
	callq	__errno_location
	movl	$0, (%rax)
.LBB6_43:                               # %while.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rdi
	movq	(%rdi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	movslq	-40(%rbp), %rdx
	movq	yyin, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	fread
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	movl	%eax, %r8d
	movl	%r8d, yy_n_chars
	cmpl	$0, %r8d
	movb	%r9b, -97(%rbp)         # 1-byte Spill
	jne	.LBB6_45
# BB#44:                                # %land.rhs.122
                                        #   in Loop: Header=BB6_43 Depth=1
	movq	yyin, %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB6_45:                               # %land.end.125
                                        #   in Loop: Header=BB6_43 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_46
	jmp	.LBB6_49
.LBB6_46:                               # %while.body.126
                                        #   in Loop: Header=BB6_43 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB6_48
# BB#47:                                # %if.then.130
	movabsq	$.L.str.22, %rdi
	callq	yy_fatal_error
	jmp	.LBB6_49
.LBB6_48:                               # %if.end.131
                                        #   in Loop: Header=BB6_43 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	yyin, %rdi
	callq	clearerr
	jmp	.LBB6_43
.LBB6_49:                               # %while.end.133
	jmp	.LBB6_50
.LBB6_50:                               # %if.end.134
	movl	yy_n_chars, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 28(%rcx)
.LBB6_51:                               # %if.end.137
	cmpl	$0, yy_n_chars
	jne	.LBB6_56
# BB#52:                                # %if.then.140
	cmpl	$0, -28(%rbp)
	jne	.LBB6_54
# BB#53:                                # %if.then.143
	movl	$1, -36(%rbp)
	movq	yyin, %rdi
	callq	yyrestart
	jmp	.LBB6_55
.LBB6_54:                               # %if.else.144
	movl	$2, -36(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$2, 56(%rax)
.LBB6_55:                               # %if.end.147
	jmp	.LBB6_57
.LBB6_56:                               # %if.else.148
	movl	$0, -36(%rbp)
.LBB6_57:                               # %if.end.149
	movl	-28(%rbp), %eax
	addl	yy_n_chars, %eax
	movl	%eax, yy_n_chars
	movslq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	8(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	movl	yy_n_chars, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	8(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, yytext
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_58:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	yy_get_next_buffer, .Lfunc_end6-yy_get_next_buffer
	.cfi_endproc

	.globl	yywrap
	.align	16, 0x90
	.type	yywrap,@function
yywrap:                                 # @yywrap
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
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	yywrap, .Lfunc_end7-yywrap
	.cfi_endproc

	.globl	yyrestart
	.align	16, 0x90
	.type	yyrestart,@function
yyrestart:                              # @yyrestart
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, yy_buffer_stack
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB8_4
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_4
	jmp	.LBB8_3
.LBB8_3:                                # %if.then
	callq	yyensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	yyin, %rdi
	callq	yy_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB8_4:                                # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB8_6
# BB#5:                                 # %cond.true.4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB8_7
.LBB8_7:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	yy_init_buffer
	callq	yy_load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	yyrestart, .Lfunc_end8-yyrestart
	.cfi_endproc

	.align	16, 0x90
	.type	yy_fatal_error,@function
yy_fatal_error:                         # @yy_fatal_error
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
	subq	$16, %rsp
	movabsq	$.L.str.23, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end9:
	.size	yy_fatal_error, .Lfunc_end9-yy_fatal_error
	.cfi_endproc

	.align	16, 0x90
	.type	yy_init_buffer,@function
yy_init_buffer:                         # @yy_init_buffer
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
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	yy_flush_buffer
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB10_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.LBB10_5:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB10_7
# BB#6:                                 # %cond.true.2
	movq	-16(%rbp), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	isatty
	cmpl	$0, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB10_8
.LBB10_8:                               # %cond.end.7
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	yy_init_buffer, .Lfunc_end10-yy_init_buffer
	.cfi_endproc

	.globl	yy_switch_to_buffer
	.align	16, 0x90
	.type	yy_switch_to_buffer,@function
yy_switch_to_buffer:                    # @yy_switch_to_buffer
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	yyensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then
	jmp	.LBB11_10
.LBB11_5:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB11_7
# BB#6:                                 # %cond.true.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB11_8
	jmp	.LBB11_9
.LBB11_7:                               # %cond.false.5
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_8
	jmp	.LBB11_9
.LBB11_8:                               # %if.then.6
	movb	yy_hold_char, %al
	movq	yy_c_buf_p, %rcx
	movb	%al, (%rcx)
	movq	yy_c_buf_p, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 16(%rdx)
	movl	yy_n_chars, %edi
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%edi, 28(%rcx)
.LBB11_9:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	yy_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB11_10:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	yy_switch_to_buffer, .Lfunc_end11-yy_switch_to_buffer
	.cfi_endproc

	.globl	yyalloc
	.align	16, 0x90
	.type	yyalloc,@function
yyalloc:                                # @yyalloc
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
                                        # kill: RDI<def> EDI<kill>
	callq	malloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	yyalloc, .Lfunc_end12-yyalloc
	.cfi_endproc

	.globl	yy_delete_buffer
	.align	16, 0x90
	.type	yy_delete_buffer,@function
yy_delete_buffer:                       # @yy_delete_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_10
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB13_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB13_5
.LBB13_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_7
# BB#6:                                 # %if.then.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	$0, (%rcx,%rax,8)
.LBB13_7:                               # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB13_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	yyfree
.LBB13_9:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	yyfree
.LBB13_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	yy_delete_buffer, .Lfunc_end13-yy_delete_buffer
	.cfi_endproc

	.globl	yyfree
	.align	16, 0x90
	.type	yyfree,@function
yyfree:                                 # @yyfree
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	yyfree, .Lfunc_end14-yyfree
	.cfi_endproc

	.globl	yy_flush_buffer
	.align	16, 0x90
	.type	yy_flush_buffer,@function
yy_flush_buffer:                        # @yy_flush_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_7
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB15_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB15_5
.LBB15_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_7
# BB#6:                                 # %if.then.7
	callq	yy_load_buffer_state
.LBB15_7:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	yy_flush_buffer, .Lfunc_end15-yy_flush_buffer
	.cfi_endproc

	.globl	yypush_buffer_state
	.align	16, 0x90
	.type	yypush_buffer_state,@function
yypush_buffer_state:                    # @yypush_buffer_state
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_11
.LBB16_2:                               # %if.end
	callq	yyensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB16_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB16_5
	jmp	.LBB16_6
.LBB16_4:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB16_5
	jmp	.LBB16_6
.LBB16_5:                               # %if.then.2
	movb	yy_hold_char, %al
	movq	yy_c_buf_p, %rcx
	movb	%al, (%rcx)
	movq	yy_c_buf_p, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 16(%rdx)
	movl	yy_n_chars, %edi
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%edi, 28(%rcx)
.LBB16_6:                               # %if.end.5
	cmpq	$0, yy_buffer_stack
	je	.LBB16_8
# BB#7:                                 # %cond.true.7
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB16_9
	jmp	.LBB16_10
.LBB16_8:                               # %cond.false.10
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB16_9
	jmp	.LBB16_10
.LBB16_9:                               # %if.then.11
	movq	yy_buffer_stack_top, %rax
	addq	$1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB16_10:                              # %if.end.12
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	yy_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB16_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	yypush_buffer_state, .Lfunc_end16-yypush_buffer_state
	.cfi_endproc

	.globl	yypop_buffer_state
	.align	16, 0x90
	.type	yypop_buffer_state,@function
yypop_buffer_state:                     # @yypop_buffer_state
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
	subq	$16, %rsp
	cmpq	$0, yy_buffer_stack
	je	.LBB17_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB17_4
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_4
	jmp	.LBB17_3
.LBB17_3:                               # %if.then
	jmp	.LBB17_13
.LBB17_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB17_6
# BB#5:                                 # %cond.true.3
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB17_7
.LBB17_6:                               # %cond.false.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB17_7
.LBB17_7:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	callq	yy_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	cmpq	$0, yy_buffer_stack_top
	jbe	.LBB17_9
# BB#8:                                 # %if.then.7
	movq	yy_buffer_stack_top, %rax
	addq	$-1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB17_9:                               # %if.end.8
	cmpq	$0, yy_buffer_stack
	je	.LBB17_11
# BB#10:                                # %cond.true.10
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB17_12
	jmp	.LBB17_13
.LBB17_11:                              # %cond.false.13
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_12
	jmp	.LBB17_13
.LBB17_12:                              # %if.then.14
	callq	yy_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB17_13:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	yypop_buffer_state, .Lfunc_end17-yypop_buffer_state
	.cfi_endproc

	.globl	yy_scan_buffer
	.align	16, 0x90
	.type	yy_scan_buffer,@function
yy_scan_buffer:                         # @yy_scan_buffer
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jb	.LBB18_3
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB18_3
# BB#2:                                 # %lor.lhs.false.3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB18_4
.LBB18_3:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB18_7
.LBB18_4:                               # %if.end
	movl	$64, %edi
	callq	yyalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.13, %rdi
	callq	yy_fatal_error
.LBB18_6:                               # %if.end.11
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-32(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-32(%rbp), %rcx
	movl	$0, 32(%rcx)
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 36(%rcx)
	movq	-32(%rbp), %rcx
	movl	$1, 40(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 52(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 56(%rcx)
	movq	-32(%rbp), %rdi
	callq	yy_switch_to_buffer
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB18_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	yy_scan_buffer, .Lfunc_end18-yy_scan_buffer
	.cfi_endproc

	.globl	yy_scan_string
	.align	16, 0x90
	.type	yy_scan_string,@function
yy_scan_string:                         # @yy_scan_string
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	callq	yy_scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	yy_scan_string, .Lfunc_end19-yy_scan_string
	.cfi_endproc

	.globl	yy_scan_bytes
	.align	16, 0x90
	.type	yy_scan_bytes,@function
yy_scan_bytes:                          # @yy_scan_bytes
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
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	$2, %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	yyalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.14, %rdi
	callq	yy_fatal_error
.LBB20_2:                               # %if.end
	movl	$0, -40(%rbp)
.LBB20_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB20_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_3
.LBB20_6:                               # %for.end
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movslq	-12(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	yy_scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.15, %rdi
	callq	yy_fatal_error
.LBB20_8:                               # %if.end.11
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	yy_scan_bytes, .Lfunc_end20-yy_scan_bytes
	.cfi_endproc

	.globl	yyget_lineno
	.align	16, 0x90
	.type	yyget_lineno,@function
yyget_lineno:                           # @yyget_lineno
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
	movl	yylineno, %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	yyget_lineno, .Lfunc_end21-yyget_lineno
	.cfi_endproc

	.globl	yyget_in
	.align	16, 0x90
	.type	yyget_in,@function
yyget_in:                               # @yyget_in
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
	movq	yyin, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	yyget_in, .Lfunc_end22-yyget_in
	.cfi_endproc

	.globl	yyget_out
	.align	16, 0x90
	.type	yyget_out,@function
yyget_out:                              # @yyget_out
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
	movq	yyout, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	yyget_out, .Lfunc_end23-yyget_out
	.cfi_endproc

	.globl	yyget_leng
	.align	16, 0x90
	.type	yyget_leng,@function
yyget_leng:                             # @yyget_leng
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
	movl	yyleng, %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	yyget_leng, .Lfunc_end24-yyget_leng
	.cfi_endproc

	.globl	yyget_text
	.align	16, 0x90
	.type	yyget_text,@function
yyget_text:                             # @yyget_text
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
	movq	yytext, %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	yyget_text, .Lfunc_end25-yyget_text
	.cfi_endproc

	.globl	yyset_lineno
	.align	16, 0x90
	.type	yyset_lineno,@function
yyset_lineno:                           # @yyset_lineno
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, yylineno
	popq	%rbp
	retq
.Lfunc_end26:
	.size	yyset_lineno, .Lfunc_end26-yyset_lineno
	.cfi_endproc

	.globl	yyset_in
	.align	16, 0x90
	.type	yyset_in,@function
yyset_in:                               # @yyset_in
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, yyin
	popq	%rbp
	retq
.Lfunc_end27:
	.size	yyset_in, .Lfunc_end27-yyset_in
	.cfi_endproc

	.globl	yyset_out
	.align	16, 0x90
	.type	yyset_out,@function
yyset_out:                              # @yyset_out
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, yyout
	popq	%rbp
	retq
.Lfunc_end28:
	.size	yyset_out, .Lfunc_end28-yyset_out
	.cfi_endproc

	.globl	yyget_debug
	.align	16, 0x90
	.type	yyget_debug,@function
yyget_debug:                            # @yyget_debug
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
	movl	yy_flex_debug, %eax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	yyget_debug, .Lfunc_end29-yyget_debug
	.cfi_endproc

	.globl	yyset_debug
	.align	16, 0x90
	.type	yyset_debug,@function
yyset_debug:                            # @yyset_debug
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, yy_flex_debug
	popq	%rbp
	retq
.Lfunc_end30:
	.size	yyset_debug, .Lfunc_end30-yyset_debug
	.cfi_endproc

	.globl	yylex_destroy
	.align	16, 0x90
	.type	yylex_destroy,@function
yylex_destroy:                          # @yylex_destroy
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
	subq	$32, %rsp
	jmp	.LBB31_1
.LBB31_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB31_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB31_4
.LBB31_3:                               # %cond.false
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB31_4
.LBB31_4:                               # %cond.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB31_9
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB31_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB31_8
.LBB31_7:                               # %cond.false.5
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB31_8
.LBB31_8:                               # %cond.end.6
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	yy_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	callq	yypop_buffer_state
	jmp	.LBB31_1
.LBB31_9:                               # %while.end
	movq	yy_buffer_stack, %rax
	movq	%rax, %rdi
	callq	yyfree
	movq	$0, yy_buffer_stack
	callq	yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	yylex_destroy, .Lfunc_end31-yylex_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	yy_init_globals,@function
yy_init_globals:                        # @yy_init_globals
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
	xorl	%eax, %eax
	movq	$0, yy_buffer_stack
	movq	$0, yy_buffer_stack_top
	movq	$0, yy_buffer_stack_max
	movq	$0, yy_c_buf_p
	movl	$0, yy_init
	movl	$0, yy_start
	movq	$0, yyin
	movq	$0, yyout
	popq	%rbp
	retq
.Lfunc_end32:
	.size	yy_init_globals, .Lfunc_end32-yy_init_globals
	.cfi_endproc

	.globl	yyrealloc
	.align	16, 0x90
	.type	yyrealloc,@function
yyrealloc:                              # @yyrealloc
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	callq	realloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	yyrealloc, .Lfunc_end33-yyrealloc
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.16, %rdi
	movl	$0, -4(%rbp)
	callq	getenv
	movq	%rax, tmpdir
	cmpq	$0, %rax
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rax
	movq	%rax, tmpdir
.LBB34_2:                               # %if.end
	callq	getpid
	movl	%eax, pid
	callq	yylex
	movabsq	$adobefname, %rcx
	movabsq	$fontfname, %r8
	movabsq	$bodyfname, %r9
	movq	adobe, %rdi
	movq	font, %rsi
	movq	body, %rdx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	reassemble
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	main, .Lfunc_end34-main
	.cfi_endproc

	.globl	reassemble
	.align	16, 0x90
	.type	reassemble,@function
reassemble:                             # @reassemble
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB35_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	rewind
.LBB35_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -52(%rbp)
	cmpl	$-1, %eax
	je	.LBB35_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB35_2 Depth=1
	movl	-52(%rbp), %edi
	movq	yyout, %rsi
	callq	_IO_putc
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB35_2
.LBB35_4:                               # %while.end
	movq	-8(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	remove
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB35_5:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB35_10
# BB#6:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	rewind
.LBB35_7:                               # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -52(%rbp)
	cmpl	$-1, %eax
	je	.LBB35_9
# BB#8:                                 # %while.body.10
                                        #   in Loop: Header=BB35_7 Depth=1
	movl	-52(%rbp), %edi
	movq	yyout, %rsi
	callq	_IO_putc
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB35_7
.LBB35_9:                               # %while.end.12
	movq	-16(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	remove
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB35_10:                              # %if.end.15
	cmpl	$1, ifendsetup
	jne	.LBB35_12
# BB#11:                                # %if.then.17
	movabsq	$.L.str.18, %rsi
	movq	yyout, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB35_12:                              # %if.end.19
	cmpq	$0, -24(%rbp)
	je	.LBB35_19
# BB#13:                                # %if.then.21
	movq	-24(%rbp), %rdi
	callq	rewind
	cmpl	$1, ifpagesv
	jne	.LBB35_15
# BB#14:                                # %if.then.23
	movabsq	$.L.str.19, %rsi
	movq	yyout, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB35_15:                              # %if.end.25
	jmp	.LBB35_16
.LBB35_16:                              # %while.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -52(%rbp)
	cmpl	$-1, %eax
	je	.LBB35_18
# BB#17:                                # %while.body.29
                                        #   in Loop: Header=BB35_16 Depth=1
	movl	-52(%rbp), %edi
	movq	yyout, %rsi
	callq	_IO_putc
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB35_16
.LBB35_18:                              # %while.end.31
	movq	-24(%rbp), %rdi
	callq	fclose
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	remove
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB35_19:                              # %if.end.34
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	reassemble, .Lfunc_end35-reassemble
	.cfi_endproc

	.type	yyin,@object            # @yyin
	.bss
	.globl	yyin
	.align	8
yyin:
	.quad	0
	.size	yyin, 8

	.type	yyout,@object           # @yyout
	.globl	yyout
	.align	8
yyout:
	.quad	0
	.size	yyout, 8

	.type	yylineno,@object        # @yylineno
	.data
	.globl	yylineno
	.align	4
yylineno:
	.long	1                       # 0x1
	.size	yylineno, 4

	.type	yy_flex_debug,@object   # @yy_flex_debug
	.bss
	.globl	yy_flex_debug
	.align	4
yy_flex_debug:
	.long	0                       # 0x0
	.size	yy_flex_debug, 4

	.type	ifpagesv,@object        # @ifpagesv
	.globl	ifpagesv
	.align	4
ifpagesv:
	.long	0                       # 0x0
	.size	ifpagesv, 4

	.type	ifcorel,@object         # @ifcorel
	.globl	ifcorel
	.align	4
ifcorel:
	.long	0                       # 0x0
	.size	ifcorel, 4

	.type	ifendsetup,@object      # @ifendsetup
	.globl	ifendsetup
	.align	4
ifendsetup:
	.long	0                       # 0x0
	.size	ifendsetup, 4

	.type	first_time,@object      # @first_time
	.data
	.align	4
first_time:
	.long	1                       # 0x1
	.size	first_time, 4

	.type	yy_start,@object        # @yy_start
	.local	yy_start
	.comm	yy_start,4,4
	.type	yy_init,@object         # @yy_init
	.local	yy_init
	.comm	yy_init,4,4
	.type	yy_buffer_stack,@object # @yy_buffer_stack
	.local	yy_buffer_stack
	.comm	yy_buffer_stack,8,8
	.type	yy_buffer_stack_top,@object # @yy_buffer_stack_top
	.local	yy_buffer_stack_top
	.comm	yy_buffer_stack_top,8,8
	.type	yy_c_buf_p,@object      # @yy_c_buf_p
	.local	yy_c_buf_p
	.comm	yy_c_buf_p,8,8
	.type	yy_hold_char,@object    # @yy_hold_char
	.local	yy_hold_char
	.comm	yy_hold_char,1,1
	.type	yy_ec,@object           # @yy_ec
	.section	.rodata,"a",@progbits
	.align	16
yy_ec:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	1                       # 0x1
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	28                      # 0x1c
	.long	1                       # 0x1
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	32                      # 0x20
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
	.long	1                       # 0x1
	.long	36                      # 0x24
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	37                      # 0x25
	.long	38                      # 0x26
	.long	39                      # 0x27
	.long	40                      # 0x28
	.long	41                      # 0x29
	.long	1                       # 0x1
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	44                      # 0x2c
	.long	45                      # 0x2d
	.long	46                      # 0x2e
	.long	1                       # 0x1
	.long	47                      # 0x2f
	.long	1                       # 0x1
	.long	48                      # 0x30
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	yy_ec, 1024

	.type	yy_accept,@object       # @yy_accept
	.align	16
yy_accept:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	26                      # 0x1a
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	2                       # 0x2
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	6                       # 0x6
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	9                       # 0x9
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	16                      # 0x10
	.short	25                      # 0x19
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	6                       # 0x6
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	9                       # 0x9
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	23                      # 0x17
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	5                       # 0x5
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	13                      # 0xd
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	6                       # 0x6
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	12                      # 0xc
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	10                      # 0xa
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	12                      # 0xc
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	15                      # 0xf
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	22                      # 0x16
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	11                      # 0xb
	.short	0                       # 0x0
	.short	17                      # 0x11
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	3                       # 0x3
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	14                      # 0xe
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	14                      # 0xe
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	20                      # 0x14
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	4                       # 0x4
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	19                      # 0x13
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	21                      # 0x15
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	7                       # 0x7
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	18                      # 0x12
	.short	0                       # 0x0
	.size	yy_accept, 954

	.type	yy_last_accepting_state,@object # @yy_last_accepting_state
	.local	yy_last_accepting_state
	.comm	yy_last_accepting_state,4,4
	.type	yy_last_accepting_cpos,@object # @yy_last_accepting_cpos
	.local	yy_last_accepting_cpos
	.comm	yy_last_accepting_cpos,8,8
	.type	yy_base,@object         # @yy_base
	.align	16
yy_base:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	809                     # 0x329
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	6                       # 0x6
	.short	27                      # 0x1b
	.short	8                       # 0x8
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	813                     # 0x32d
	.short	815                     # 0x32f
	.short	808                     # 0x328
	.short	809                     # 0x329
	.short	815                     # 0x32f
	.short	18                      # 0x12
	.short	808                     # 0x328
	.short	815                     # 0x32f
	.short	29                      # 0x1d
	.short	807                     # 0x327
	.short	815                     # 0x32f
	.short	33                      # 0x21
	.short	35                      # 0x23
	.short	7                       # 0x7
	.short	14                      # 0xe
	.short	21                      # 0x15
	.short	23                      # 0x17
	.short	48                      # 0x30
	.short	806                     # 0x326
	.short	815                     # 0x32f
	.short	19                      # 0x13
	.short	805                     # 0x325
	.short	815                     # 0x32f
	.short	54                      # 0x36
	.short	804                     # 0x324
	.short	803                     # 0x323
	.short	815                     # 0x32f
	.short	802                     # 0x322
	.short	801                     # 0x321
	.short	815                     # 0x32f
	.short	49                      # 0x31
	.short	800                     # 0x320
	.short	815                     # 0x32f
	.short	53                      # 0x35
	.short	40                      # 0x28
	.short	25                      # 0x19
	.short	34                      # 0x22
	.short	41                      # 0x29
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	62                      # 0x3e
	.short	66                      # 0x42
	.short	799                     # 0x31f
	.short	815                     # 0x32f
	.short	67                      # 0x43
	.short	798                     # 0x31e
	.short	815                     # 0x32f
	.short	71                      # 0x47
	.short	797                     # 0x31d
	.short	815                     # 0x32f
	.short	796                     # 0x31c
	.short	815                     # 0x32f
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	81                      # 0x51
	.short	77                      # 0x4d
	.short	82                      # 0x52
	.short	78                      # 0x4e
	.short	84                      # 0x54
	.short	85                      # 0x55
	.short	91                      # 0x5b
	.short	87                      # 0x57
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	94                      # 0x5e
	.short	98                      # 0x62
	.short	102                     # 0x66
	.short	103                     # 0x67
	.short	104                     # 0x68
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	108                     # 0x6c
	.short	114                     # 0x72
	.short	116                     # 0x74
	.short	121                     # 0x79
	.short	125                     # 0x7d
	.short	134                     # 0x86
	.short	117                     # 0x75
	.short	122                     # 0x7a
	.short	126                     # 0x7e
	.short	128                     # 0x80
	.short	132                     # 0x84
	.short	137                     # 0x89
	.short	141                     # 0x8d
	.short	795                     # 0x31b
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	146                     # 0x92
	.short	151                     # 0x97
	.short	152                     # 0x98
	.short	149                     # 0x95
	.short	158                     # 0x9e
	.short	153                     # 0x99
	.short	154                     # 0x9a
	.short	159                     # 0x9f
	.short	167                     # 0xa7
	.short	160                     # 0xa0
	.short	161                     # 0xa1
	.short	164                     # 0xa4
	.short	162                     # 0xa2
	.short	794                     # 0x31a
	.short	815                     # 0x32f
	.short	166                     # 0xa6
	.short	174                     # 0xae
	.short	179                     # 0xb3
	.short	171                     # 0xab
	.short	180                     # 0xb4
	.short	169                     # 0xa9
	.short	186                     # 0xba
	.short	184                     # 0xb8
	.short	190                     # 0xbe
	.short	189                     # 0xbd
	.short	197                     # 0xc5
	.short	200                     # 0xc8
	.short	201                     # 0xc9
	.short	793                     # 0x319
	.short	204                     # 0xcc
	.short	206                     # 0xce
	.short	205                     # 0xcd
	.short	207                     # 0xcf
	.short	209                     # 0xd1
	.short	202                     # 0xca
	.short	212                     # 0xd4
	.short	217                     # 0xd9
	.short	214                     # 0xd6
	.short	215                     # 0xd7
	.short	216                     # 0xd8
	.short	218                     # 0xda
	.short	219                     # 0xdb
	.short	220                     # 0xdc
	.short	221                     # 0xdd
	.short	792                     # 0x318
	.short	815                     # 0x32f
	.short	228                     # 0xe4
	.short	229                     # 0xe5
	.short	232                     # 0xe8
	.short	237                     # 0xed
	.short	233                     # 0xe9
	.short	238                     # 0xee
	.short	240                     # 0xf0
	.short	242                     # 0xf2
	.short	244                     # 0xf4
	.short	245                     # 0xf5
	.short	246                     # 0xf6
	.short	249                     # 0xf9
	.short	251                     # 0xfb
	.short	255                     # 0xff
	.short	257                     # 0x101
	.short	258                     # 0x102
	.short	259                     # 0x103
	.short	262                     # 0x106
	.short	265                     # 0x109
	.short	260                     # 0x104
	.short	266                     # 0x10a
	.short	268                     # 0x10c
	.short	281                     # 0x119
	.short	282                     # 0x11a
	.short	269                     # 0x10d
	.short	270                     # 0x10e
	.short	284                     # 0x11c
	.short	272                     # 0x110
	.short	280                     # 0x118
	.short	288                     # 0x120
	.short	291                     # 0x123
	.short	292                     # 0x124
	.short	791                     # 0x317
	.short	293                     # 0x125
	.short	790                     # 0x316
	.short	301                     # 0x12d
	.short	295                     # 0x127
	.short	294                     # 0x126
	.short	300                     # 0x12c
	.short	302                     # 0x12e
	.short	304                     # 0x130
	.short	306                     # 0x132
	.short	310                     # 0x136
	.short	312                     # 0x138
	.short	315                     # 0x13b
	.short	317                     # 0x13d
	.short	319                     # 0x13f
	.short	320                     # 0x140
	.short	321                     # 0x141
	.short	789                     # 0x315
	.short	815                     # 0x32f
	.short	323                     # 0x143
	.short	788                     # 0x314
	.short	769                     # 0x301
	.short	325                     # 0x145
	.short	322                     # 0x142
	.short	324                     # 0x144
	.short	326                     # 0x146
	.short	327                     # 0x147
	.short	334                     # 0x14e
	.short	335                     # 0x14f
	.short	339                     # 0x153
	.short	344                     # 0x158
	.short	340                     # 0x154
	.short	342                     # 0x156
	.short	343                     # 0x157
	.short	345                     # 0x159
	.short	347                     # 0x15b
	.short	351                     # 0x15f
	.short	763                     # 0x2fb
	.short	366                     # 0x16e
	.short	785                     # 0x311
	.short	355                     # 0x163
	.short	368                     # 0x170
	.short	371                     # 0x173
	.short	373                     # 0x175
	.short	369                     # 0x171
	.short	375                     # 0x177
	.short	376                     # 0x178
	.short	784                     # 0x310
	.short	384                     # 0x180
	.short	783                     # 0x30f
	.short	381                     # 0x17d
	.short	386                     # 0x182
	.short	762                     # 0x2fa
	.short	385                     # 0x181
	.short	781                     # 0x30d
	.short	815                     # 0x32f
	.short	389                     # 0x185
	.short	388                     # 0x184
	.short	392                     # 0x188
	.short	393                     # 0x189
	.short	387                     # 0x183
	.short	397                     # 0x18d
	.short	403                     # 0x193
	.short	780                     # 0x30c
	.short	815                     # 0x32f
	.short	391                     # 0x187
	.short	779                     # 0x30b
	.short	815                     # 0x32f
	.short	400                     # 0x190
	.short	778                     # 0x30a
	.short	755                     # 0x2f3
	.short	420                     # 0x1a4
	.short	404                     # 0x194
	.short	396                     # 0x18c
	.short	406                     # 0x196
	.short	405                     # 0x195
	.short	407                     # 0x197
	.short	408                     # 0x198
	.short	409                     # 0x199
	.short	776                     # 0x308
	.short	775                     # 0x307
	.short	410                     # 0x19a
	.short	411                     # 0x19b
	.short	774                     # 0x306
	.short	815                     # 0x32f
	.short	754                     # 0x2f2
	.short	413                     # 0x19d
	.short	430                     # 0x1ae
	.short	412                     # 0x19c
	.short	440                     # 0x1b8
	.short	444                     # 0x1bc
	.short	445                     # 0x1bd
	.short	447                     # 0x1bf
	.short	414                     # 0x19e
	.short	772                     # 0x304
	.short	751                     # 0x2ef
	.short	770                     # 0x302
	.short	766                     # 0x2fe
	.short	449                     # 0x1c1
	.short	450                     # 0x1c2
	.short	739                     # 0x2e3
	.short	453                     # 0x1c5
	.short	454                     # 0x1c6
	.short	452                     # 0x1c4
	.short	767                     # 0x2ff
	.short	766                     # 0x2fe
	.short	457                     # 0x1c9
	.short	738                     # 0x2e2
	.short	761                     # 0x2f9
	.short	763                     # 0x2fb
	.short	460                     # 0x1cc
	.short	720                     # 0x2d0
	.short	462                     # 0x1ce
	.short	463                     # 0x1cf
	.short	467                     # 0x1d3
	.short	761                     # 0x2f9
	.short	815                     # 0x32f
	.short	760                     # 0x2f8
	.short	815                     # 0x32f
	.short	464                     # 0x1d0
	.short	726                     # 0x2d6
	.short	735                     # 0x2df
	.short	757                     # 0x2f5
	.short	815                     # 0x32f
	.short	465                     # 0x1d1
	.short	748                     # 0x2ec
	.short	468                     # 0x1d4
	.short	815                     # 0x32f
	.short	469                     # 0x1d5
	.short	470                     # 0x1d6
	.short	471                     # 0x1d7
	.short	473                     # 0x1d9
	.short	724                     # 0x2d4
	.short	714                     # 0x2ca
	.short	474                     # 0x1da
	.short	747                     # 0x2eb
	.short	479                     # 0x1df
	.short	476                     # 0x1dc
	.short	483                     # 0x1e3
	.short	484                     # 0x1e4
	.short	730                     # 0x2da
	.short	724                     # 0x2d4
	.short	485                     # 0x1e5
	.short	749                     # 0x2ed
	.short	487                     # 0x1e7
	.short	490                     # 0x1ea
	.short	493                     # 0x1ed
	.short	491                     # 0x1eb
	.short	725                     # 0x2d5
	.short	714                     # 0x2ca
	.short	494                     # 0x1ee
	.short	501                     # 0x1f5
	.short	503                     # 0x1f7
	.short	747                     # 0x2eb
	.short	505                     # 0x1f9
	.short	506                     # 0x1fa
	.short	745                     # 0x2e9
	.short	710                     # 0x2c6
	.short	744                     # 0x2e8
	.short	712                     # 0x2c8
	.short	514                     # 0x202
	.short	742                     # 0x2e6
	.short	815                     # 0x32f
	.short	515                     # 0x203
	.short	520                     # 0x208
	.short	701                     # 0x2bd
	.short	709                     # 0x2c5
	.short	739                     # 0x2e3
	.short	815                     # 0x32f
	.short	705                     # 0x2c1
	.short	526                     # 0x20e
	.short	524                     # 0x20c
	.short	531                     # 0x213
	.short	706                     # 0x2c2
	.short	696                     # 0x2b8
	.short	701                     # 0x2bd
	.short	530                     # 0x212
	.short	535                     # 0x217
	.short	533                     # 0x215
	.short	693                     # 0x2b5
	.short	733                     # 0x2dd
	.short	695                     # 0x2b7
	.short	542                     # 0x21e
	.short	545                     # 0x221
	.short	517                     # 0x205
	.short	689                     # 0x2b1
	.short	730                     # 0x2da
	.short	815                     # 0x32f
	.short	729                     # 0x2d9
	.short	544                     # 0x220
	.short	548                     # 0x224
	.short	549                     # 0x225
	.short	690                     # 0x2b2
	.short	727                     # 0x2d7
	.short	815                     # 0x32f
	.short	558                     # 0x22e
	.short	562                     # 0x232
	.short	686                     # 0x2ae
	.short	534                     # 0x216
	.short	546                     # 0x222
	.short	694                     # 0x2b6
	.short	553                     # 0x229
	.short	563                     # 0x233
	.short	724                     # 0x2d4
	.short	568                     # 0x238
	.short	565                     # 0x235
	.short	723                     # 0x2d3
	.short	719                     # 0x2cf
	.short	569                     # 0x239
	.short	570                     # 0x23a
	.short	718                     # 0x2ce
	.short	571                     # 0x23b
	.short	573                     # 0x23d
	.short	697                     # 0x2b9
	.short	574                     # 0x23e
	.short	575                     # 0x23f
	.short	679                     # 0x2a7
	.short	577                     # 0x241
	.short	581                     # 0x245
	.short	691                     # 0x2b3
	.short	578                     # 0x242
	.short	579                     # 0x243
	.short	683                     # 0x2ab
	.short	582                     # 0x246
	.short	584                     # 0x248
	.short	681                     # 0x2a9
	.short	585                     # 0x249
	.short	589                     # 0x24d
	.short	684                     # 0x2ac
	.short	591                     # 0x24f
	.short	586                     # 0x24a
	.short	674                     # 0x2a2
	.short	592                     # 0x250
	.short	593                     # 0x251
	.short	713                     # 0x2c9
	.short	580                     # 0x244
	.short	595                     # 0x253
	.short	712                     # 0x2c8
	.short	815                     # 0x32f
	.short	596                     # 0x254
	.short	598                     # 0x256
	.short	711                     # 0x2c7
	.short	600                     # 0x258
	.short	710                     # 0x2c6
	.short	815                     # 0x32f
	.short	601                     # 0x259
	.short	603                     # 0x25b
	.short	609                     # 0x261
	.short	709                     # 0x2c5
	.short	708                     # 0x2c4
	.short	691                     # 0x2b3
	.short	668                     # 0x29c
	.short	668                     # 0x29c
	.short	662                     # 0x296
	.short	681                     # 0x2a9
	.short	678                     # 0x2a6
	.short	700                     # 0x2bc
	.short	660                     # 0x294
	.short	668                     # 0x29c
	.short	657                     # 0x291
	.short	655                     # 0x28f
	.short	658                     # 0x292
	.short	655                     # 0x28f
	.short	663                     # 0x297
	.short	693                     # 0x2b5
	.short	692                     # 0x2b4
	.short	671                     # 0x29f
	.short	663                     # 0x297
	.short	656                     # 0x290
	.short	657                     # 0x291
	.short	665                     # 0x299
	.short	662                     # 0x296
	.short	684                     # 0x2ac
	.short	644                     # 0x284
	.short	652                     # 0x28c
	.short	641                     # 0x281
	.short	639                     # 0x27f
	.short	642                     # 0x282
	.short	639                     # 0x27f
	.short	647                     # 0x287
	.short	677                     # 0x2a5
	.short	676                     # 0x2a4
	.short	672                     # 0x2a0
	.short	671                     # 0x29f
	.short	650                     # 0x28a
	.short	632                     # 0x278
	.short	644                     # 0x284
	.short	636                     # 0x27c
	.short	634                     # 0x27a
	.short	637                     # 0x27d
	.short	627                     # 0x273
	.short	666                     # 0x29a
	.short	665                     # 0x299
	.short	815                     # 0x32f
	.short	815                     # 0x32f
	.short	665                     # 0x299
	.short	664                     # 0x298
	.short	663                     # 0x297
	.short	662                     # 0x296
	.short	661                     # 0x295
	.short	660                     # 0x294
	.short	659                     # 0x293
	.short	658                     # 0x292
	.short	657                     # 0x291
	.short	656                     # 0x290
	.short	655                     # 0x28f
	.short	654                     # 0x28e
	.short	653                     # 0x28d
	.short	652                     # 0x28c
	.short	651                     # 0x28b
	.short	650                     # 0x28a
	.short	649                     # 0x289
	.short	648                     # 0x288
	.short	646                     # 0x286
	.short	645                     # 0x285
	.short	644                     # 0x284
	.short	643                     # 0x283
	.short	642                     # 0x282
	.short	641                     # 0x281
	.short	640                     # 0x280
	.short	637                     # 0x27d
	.short	636                     # 0x27c
	.short	633                     # 0x279
	.short	631                     # 0x277
	.short	630                     # 0x276
	.short	629                     # 0x275
	.short	628                     # 0x274
	.short	627                     # 0x273
	.short	624                     # 0x270
	.short	619                     # 0x26b
	.short	617                     # 0x269
	.short	611                     # 0x263
	.short	603                     # 0x25b
	.short	0                       # 0x0
	.size	yy_base, 1032

	.type	yy_chk,@object          # @yy_chk
	.align	16
yy_chk:
	.short	0                       # 0x0
	.short	515                     # 0x203
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	26                      # 0x1a
	.short	9                       # 0x9
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	27                      # 0x1b
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	7                       # 0x7
	.short	18                      # 0x12
	.short	33                      # 0x21
	.short	18                      # 0x12
	.short	28                      # 0x1c
	.short	7                       # 0x7
	.short	29                      # 0x1d
	.short	7                       # 0x7
	.short	48                      # 0x30
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	21                      # 0x15
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	21                      # 0x15
	.short	24                      # 0x18
	.short	49                      # 0x31
	.short	25                      # 0x19
	.short	24                      # 0x18
	.short	26                      # 0x1a
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	47                      # 0x2f
	.short	50                      # 0x32
	.short	10                      # 0xa
	.short	8                       # 0x8
	.short	28                      # 0x1c
	.short	8                       # 0x8
	.short	25                      # 0x19
	.short	8                       # 0x8
	.short	30                      # 0x1e
	.short	43                      # 0x2b
	.short	29                      # 0x1d
	.short	25                      # 0x19
	.short	27                      # 0x1b
	.short	46                      # 0x2e
	.short	36                      # 0x24
	.short	25                      # 0x19
	.short	33                      # 0x21
	.short	36                      # 0x24
	.short	30                      # 0x1e
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	49                      # 0x31
	.short	53                      # 0x35
	.short	48                      # 0x30
	.short	43                      # 0x2b
	.short	46                      # 0x2e
	.short	54                      # 0x36
	.short	57                      # 0x39
	.short	46                      # 0x2e
	.short	43                      # 0x2b
	.short	47                      # 0x2f
	.short	60                      # 0x3c
	.short	43                      # 0x2b
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	70                      # 0x46
	.short	72                      # 0x48
	.short	50                      # 0x32
	.short	52                      # 0x34
	.short	69                      # 0x45
	.short	71                      # 0x47
	.short	60                      # 0x3c
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	60                      # 0x3c
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	75                      # 0x4b
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	53                      # 0x35
	.short	51                      # 0x33
	.short	57                      # 0x39
	.short	82                      # 0x52
	.short	54                      # 0x36
	.short	69                      # 0x45
	.short	66                      # 0x42
	.short	83                      # 0x53
	.short	84                      # 0x54
	.short	85                      # 0x55
	.short	86                      # 0x56
	.short	87                      # 0x57
	.short	68                      # 0x44
	.short	88                      # 0x58
	.short	67                      # 0x43
	.short	65                      # 0x41
	.short	72                      # 0x48
	.short	73                      # 0x49
	.short	75                      # 0x4b
	.short	89                      # 0x59
	.short	70                      # 0x46
	.short	90                      # 0x5a
	.short	94                      # 0x5e
	.short	76                      # 0x4c
	.short	71                      # 0x47
	.short	85                      # 0x55
	.short	91                      # 0x5b
	.short	95                      # 0x5f
	.short	79                      # 0x4f
	.short	81                      # 0x51
	.short	92                      # 0x5c
	.short	96                      # 0x60
	.short	74                      # 0x4a
	.short	97                      # 0x61
	.short	77                      # 0x4d
	.short	80                      # 0x50
	.short	82                      # 0x52
	.short	98                      # 0x62
	.short	86                      # 0x56
	.short	93                      # 0x5d
	.short	93                      # 0x5d
	.short	84                      # 0x54
	.short	99                      # 0x63
	.short	90                      # 0x5a
	.short	88                      # 0x58
	.short	91                      # 0x5b
	.short	100                     # 0x64
	.short	102                     # 0x66
	.short	103                     # 0x67
	.short	83                      # 0x53
	.short	89                      # 0x59
	.short	104                     # 0x68
	.short	92                      # 0x5c
	.short	87                      # 0x57
	.short	107                     # 0x6b
	.short	97                      # 0x61
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	95                      # 0x5f
	.short	96                      # 0x60
	.short	94                      # 0x5e
	.short	108                     # 0x6c
	.short	111                     # 0x6f
	.short	113                     # 0x71
	.short	114                     # 0x72
	.short	116                     # 0x74
	.short	98                      # 0x62
	.short	115                     # 0x73
	.short	103                     # 0x67
	.short	119                     # 0x77
	.short	112                     # 0x70
	.short	104                     # 0x68
	.short	124                     # 0x7c
	.short	114                     # 0x72
	.short	122                     # 0x7a
	.short	99                      # 0x63
	.short	102                     # 0x66
	.short	120                     # 0x78
	.short	100                     # 0x64
	.short	106                     # 0x6a
	.short	105                     # 0x69
	.short	107                     # 0x6b
	.short	121                     # 0x79
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	108                     # 0x6c
	.short	112                     # 0x70
	.short	126                     # 0x7e
	.short	110                     # 0x6e
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	112                     # 0x70
	.short	128                     # 0x80
	.short	127                     # 0x7f
	.short	113                     # 0x71
	.short	119                     # 0x77
	.short	111                     # 0x6f
	.short	109                     # 0x6d
	.short	115                     # 0x73
	.short	122                     # 0x7a
	.short	129                     # 0x81
	.short	120                     # 0x78
	.short	116                     # 0x74
	.short	130                     # 0x82
	.short	131                     # 0x83
	.short	138                     # 0x8a
	.short	121                     # 0x79
	.short	133                     # 0x85
	.short	135                     # 0x87
	.short	134                     # 0x86
	.short	136                     # 0x88
	.short	136                     # 0x88
	.short	137                     # 0x89
	.short	137                     # 0x89
	.short	124                     # 0x7c
	.short	139                     # 0x8b
	.short	133                     # 0x85
	.short	141                     # 0x8d
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	140                     # 0x8c
	.short	144                     # 0x90
	.short	145                     # 0x91
	.short	146                     # 0x92
	.short	147                     # 0x93
	.short	134                     # 0x86
	.short	126                     # 0x7e
	.short	127                     # 0x7f
	.short	140                     # 0x8c
	.short	128                     # 0x80
	.short	134                     # 0x86
	.short	150                     # 0x96
	.short	151                     # 0x97
	.short	135                     # 0x87
	.short	130                     # 0x82
	.short	152                     # 0x98
	.short	154                     # 0x9a
	.short	144                     # 0x90
	.short	129                     # 0x81
	.short	138                     # 0x8a
	.short	153                     # 0x99
	.short	155                     # 0x9b
	.short	144                     # 0x90
	.short	156                     # 0x9c
	.short	150                     # 0x96
	.short	157                     # 0x9d
	.short	131                     # 0x83
	.short	158                     # 0x9e
	.short	159                     # 0x9f
	.short	160                     # 0xa0
	.short	160                     # 0xa0
	.short	142                     # 0x8e
	.short	161                     # 0xa1
	.short	158                     # 0x9e
	.short	162                     # 0xa2
	.short	139                     # 0x8b
	.short	143                     # 0x8f
	.short	141                     # 0x8d
	.short	163                     # 0xa3
	.short	145                     # 0x91
	.short	164                     # 0xa4
	.short	165                     # 0xa5
	.short	166                     # 0xa6
	.short	169                     # 0xa9
	.short	146                     # 0x92
	.short	167                     # 0xa7
	.short	152                     # 0x98
	.short	147                     # 0x93
	.short	168                     # 0xa8
	.short	170                     # 0xaa
	.short	151                     # 0x97
	.short	171                     # 0xab
	.short	174                     # 0xae
	.short	175                     # 0xaf
	.short	153                     # 0x99
	.short	177                     # 0xb1
	.short	157                     # 0x9d
	.short	154                     # 0x9a
	.short	167                     # 0xa7
	.short	159                     # 0x9f
	.short	156                     # 0x9c
	.short	168                     # 0xa8
	.short	155                     # 0x9b
	.short	178                     # 0xb2
	.short	172                     # 0xac
	.short	173                     # 0xad
	.short	161                     # 0xa1
	.short	176                     # 0xb0
	.short	176                     # 0xb0
	.short	163                     # 0xa3
	.short	174                     # 0xae
	.short	179                     # 0xb3
	.short	162                     # 0xa2
	.short	178                     # 0xb2
	.short	180                     # 0xb4
	.short	181                     # 0xb5
	.short	183                     # 0xb7
	.short	187                     # 0xbb
	.short	186                     # 0xba
	.short	165                     # 0xa5
	.short	169                     # 0xa9
	.short	166                     # 0xa6
	.short	164                     # 0xa4
	.short	188                     # 0xbc
	.short	185                     # 0xb9
	.short	189                     # 0xbd
	.short	168                     # 0xa8
	.short	190                     # 0xbe
	.short	171                     # 0xab
	.short	191                     # 0xbf
	.short	170                     # 0xaa
	.short	172                     # 0xac
	.short	173                     # 0xad
	.short	192                     # 0xc0
	.short	175                     # 0xaf
	.short	193                     # 0xc1
	.short	177                     # 0xb1
	.short	185                     # 0xb9
	.short	194                     # 0xc2
	.short	193                     # 0xc1
	.short	195                     # 0xc3
	.short	188                     # 0xbc
	.short	196                     # 0xc4
	.short	197                     # 0xc5
	.short	198                     # 0xc6
	.short	205                     # 0xcd
	.short	201                     # 0xc9
	.short	206                     # 0xce
	.short	204                     # 0xcc
	.short	207                     # 0xcf
	.short	208                     # 0xd0
	.short	180                     # 0xb4
	.short	191                     # 0xbf
	.short	179                     # 0xb3
	.short	205                     # 0xcd
	.short	187                     # 0xbb
	.short	181                     # 0xb5
	.short	209                     # 0xd1
	.short	210                     # 0xd2
	.short	183                     # 0xb7
	.short	186                     # 0xba
	.short	204                     # 0xcc
	.short	211                     # 0xd3
	.short	213                     # 0xd5
	.short	185                     # 0xb9
	.short	214                     # 0xd6
	.short	215                     # 0xd7
	.short	212                     # 0xd4
	.short	216                     # 0xd8
	.short	189                     # 0xbd
	.short	217                     # 0xd9
	.short	190                     # 0xbe
	.short	207                     # 0xcf
	.short	195                     # 0xc3
	.short	218                     # 0xda
	.short	192                     # 0xc0
	.short	196                     # 0xc4
	.short	216                     # 0xd8
	.short	222                     # 0xde
	.short	204                     # 0xcc
	.short	194                     # 0xc2
	.short	208                     # 0xd0
	.short	198                     # 0xc6
	.short	212                     # 0xd4
	.short	210                     # 0xd2
	.short	197                     # 0xc5
	.short	201                     # 0xc9
	.short	212                     # 0xd4
	.short	209                     # 0xd1
	.short	220                     # 0xdc
	.short	206                     # 0xce
	.short	223                     # 0xdf
	.short	226                     # 0xe2
	.short	215                     # 0xd7
	.short	224                     # 0xe0
	.short	224                     # 0xe0
	.short	225                     # 0xe1
	.short	225                     # 0xe1
	.short	227                     # 0xe3
	.short	228                     # 0xe4
	.short	211                     # 0xd3
	.short	213                     # 0xd5
	.short	220                     # 0xdc
	.short	218                     # 0xda
	.short	232                     # 0xe8
	.short	214                     # 0xd6
	.short	226                     # 0xe2
	.short	230                     # 0xe6
	.short	235                     # 0xeb
	.short	233                     # 0xe9
	.short	242                     # 0xf2
	.short	239                     # 0xef
	.short	238                     # 0xee
	.short	217                     # 0xd9
	.short	247                     # 0xf7
	.short	240                     # 0xf0
	.short	241                     # 0xf1
	.short	223                     # 0xdf
	.short	222                     # 0xde
	.short	255                     # 0xff
	.short	243                     # 0xf3
	.short	235                     # 0xeb
	.short	235                     # 0xeb
	.short	250                     # 0xfa
	.short	220                     # 0xdc
	.short	239                     # 0xef
	.short	244                     # 0xf4
	.short	254                     # 0xfe
	.short	257                     # 0x101
	.short	256                     # 0x100
	.short	258                     # 0x102
	.short	259                     # 0x103
	.short	260                     # 0x104
	.short	263                     # 0x107
	.short	264                     # 0x108
	.short	270                     # 0x10e
	.short	268                     # 0x10c
	.short	275                     # 0x113
	.short	227                     # 0xe3
	.short	228                     # 0xe4
	.short	233                     # 0xe9
	.short	238                     # 0xee
	.short	230                     # 0xe6
	.short	253                     # 0xfd
	.short	232                     # 0xe8
	.short	240                     # 0xf0
	.short	241                     # 0xf1
	.short	268                     # 0x10c
	.short	247                     # 0xf7
	.short	268                     # 0x10c
	.short	242                     # 0xf2
	.short	243                     # 0xf3
	.short	250                     # 0xfa
	.short	269                     # 0x10d
	.short	240                     # 0xf0
	.short	241                     # 0xf1
	.short	253                     # 0xfd
	.short	244                     # 0xf4
	.short	254                     # 0xfe
	.short	255                     # 0xff
	.short	256                     # 0x100
	.short	258                     # 0x102
	.short	269                     # 0x10d
	.short	271                     # 0x10f
	.short	253                     # 0xfd
	.short	264                     # 0x108
	.short	260                     # 0x104
	.short	272                     # 0x110
	.short	273                     # 0x111
	.short	270                     # 0x10e
	.short	274                     # 0x112
	.short	257                     # 0x101
	.short	280                     # 0x118
	.short	281                     # 0x119
	.short	259                     # 0x103
	.short	285                     # 0x11d
	.short	283                     # 0x11b
	.short	284                     # 0x11c
	.short	284                     # 0x11c
	.short	263                     # 0x107
	.short	288                     # 0x120
	.short	275                     # 0x113
	.short	281                     # 0x119
	.short	292                     # 0x124
	.short	292                     # 0x124
	.short	294                     # 0x126
	.short	295                     # 0x127
	.short	301                     # 0x12d
	.short	306                     # 0x132
	.short	283                     # 0x11b
	.short	296                     # 0x128
	.short	308                     # 0x134
	.short	310                     # 0x136
	.short	311                     # 0x137
	.short	312                     # 0x138
	.short	271                     # 0x10f
	.short	313                     # 0x139
	.short	316                     # 0x13c
	.short	294                     # 0x126
	.short	319                     # 0x13f
	.short	273                     # 0x111
	.short	283                     # 0x11b
	.short	318                     # 0x13e
	.short	280                     # 0x118
	.short	308                     # 0x134
	.short	310                     # 0x136
	.short	320                     # 0x140
	.short	321                     # 0x141
	.short	324                     # 0x144
	.short	272                     # 0x110
	.short	326                     # 0x146
	.short	288                     # 0x120
	.short	274                     # 0x112
	.short	327                     # 0x147
	.short	329                     # 0x149
	.short	318                     # 0x13e
	.short	328                     # 0x148
	.short	332                     # 0x14c
	.short	295                     # 0x127
	.short	285                     # 0x11d
	.short	306                     # 0x132
	.short	296                     # 0x128
	.short	313                     # 0x139
	.short	326                     # 0x146
	.short	321                     # 0x141
	.short	333                     # 0x14d
	.short	334                     # 0x14e
	.short	301                     # 0x12d
	.short	336                     # 0x150
	.short	337                     # 0x151
	.short	310                     # 0x136
	.short	311                     # 0x137
	.short	320                     # 0x140
	.short	328                     # 0x148
	.short	312                     # 0x138
	.short	316                     # 0x13c
	.short	319                     # 0x13f
	.short	342                     # 0x156
	.short	345                     # 0x159
	.short	334                     # 0x14e
	.short	366                     # 0x16e
	.short	326                     # 0x146
	.short	318                     # 0x13e
	.short	346                     # 0x15a
	.short	346                     # 0x15a
	.short	324                     # 0x144
	.short	329                     # 0x149
	.short	353                     # 0x161
	.short	353                     # 0x161
	.short	352                     # 0x160
	.short	342                     # 0x156
	.short	342                     # 0x156
	.short	333                     # 0x14d
	.short	358                     # 0x166
	.short	354                     # 0x162
	.short	327                     # 0x147
	.short	360                     # 0x168
	.short	380                     # 0x17c
	.short	359                     # 0x167
	.short	332                     # 0x14c
	.short	336                     # 0x150
	.short	334                     # 0x14e
	.short	352                     # 0x160
	.short	359                     # 0x167
	.short	358                     # 0x166
	.short	364                     # 0x16c
	.short	358                     # 0x166
	.short	371                     # 0x173
	.short	365                     # 0x16d
	.short	381                     # 0x17d
	.short	352                     # 0x160
	.short	372                     # 0x174
	.short	373                     # 0x175
	.short	373                     # 0x175
	.short	337                     # 0x151
	.short	365                     # 0x16d
	.short	383                     # 0x17f
	.short	372                     # 0x174
	.short	364                     # 0x16c
	.short	366                     # 0x16e
	.short	371                     # 0x173
	.short	377                     # 0x179
	.short	377                     # 0x179
	.short	345                     # 0x159
	.short	354                     # 0x162
	.short	378                     # 0x17a
	.short	384                     # 0x180
	.short	380                     # 0x17c
	.short	387                     # 0x183
	.short	378                     # 0x17a
	.short	364                     # 0x16c
	.short	386                     # 0x182
	.short	390                     # 0x186
	.short	391                     # 0x187
	.short	393                     # 0x189
	.short	393                     # 0x189
	.short	394                     # 0x18a
	.short	396                     # 0x18c
	.short	397                     # 0x18d
	.short	360                     # 0x168
	.short	399                     # 0x18f
	.short	402                     # 0x192
	.short	403                     # 0x193
	.short	417                     # 0x1a1
	.short	400                     # 0x190
	.short	405                     # 0x195
	.short	405                     # 0x195
	.short	406                     # 0x196
	.short	408                     # 0x198
	.short	412                     # 0x19c
	.short	383                     # 0x17f
	.short	381                     # 0x17d
	.short	409                     # 0x199
	.short	409                     # 0x199
	.short	411                     # 0x19b
	.short	414                     # 0x19e
	.short	415                     # 0x19f
	.short	384                     # 0x180
	.short	418                     # 0x1a2
	.short	421                     # 0x1a5
	.short	386                     # 0x182
	.short	422                     # 0x1a6
	.short	422                     # 0x1a6
	.short	424                     # 0x1a8
	.short	427                     # 0x1ab
	.short	514                     # 0x202
	.short	428                     # 0x1ac
	.short	396                     # 0x18c
	.short	387                     # 0x183
	.short	391                     # 0x187
	.short	394                     # 0x18a
	.short	400                     # 0x190
	.short	429                     # 0x1ad
	.short	513                     # 0x201
	.short	390                     # 0x186
	.short	397                     # 0x18d
	.short	408                     # 0x198
	.short	417                     # 0x1a1
	.short	406                     # 0x196
	.short	512                     # 0x200
	.short	402                     # 0x192
	.short	511                     # 0x1ff
	.short	412                     # 0x19c
	.short	399                     # 0x18f
	.short	403                     # 0x193
	.short	411                     # 0x19b
	.short	510                     # 0x1fe
	.short	415                     # 0x19f
	.short	414                     # 0x19e
	.short	509                     # 0x1fd
	.short	508                     # 0x1fc
	.short	507                     # 0x1fb
	.short	506                     # 0x1fa
	.short	505                     # 0x1f9
	.short	424                     # 0x1a8
	.short	504                     # 0x1f8
	.short	421                     # 0x1a5
	.short	428                     # 0x1ac
	.short	503                     # 0x1f7
	.short	502                     # 0x1f6
	.short	418                     # 0x1a2
	.short	429                     # 0x1ad
	.short	501                     # 0x1f5
	.short	500                     # 0x1f4
	.short	499                     # 0x1f3
	.short	498                     # 0x1f2
	.short	497                     # 0x1f1
	.short	496                     # 0x1f0
	.short	495                     # 0x1ef
	.short	427                     # 0x1ab
	.short	494                     # 0x1ee
	.short	493                     # 0x1ed
	.short	492                     # 0x1ec
	.short	491                     # 0x1eb
	.short	490                     # 0x1ea
	.short	489                     # 0x1e9
	.short	488                     # 0x1e8
	.short	487                     # 0x1e7
	.short	486                     # 0x1e6
	.short	485                     # 0x1e5
	.short	484                     # 0x1e4
	.short	483                     # 0x1e3
	.short	482                     # 0x1e2
	.short	481                     # 0x1e1
	.short	480                     # 0x1e0
	.short	479                     # 0x1df
	.short	478                     # 0x1de
	.short	477                     # 0x1dd
	.short	474                     # 0x1da
	.short	473                     # 0x1d9
	.short	472                     # 0x1d8
	.short	471                     # 0x1d7
	.short	470                     # 0x1d6
	.short	469                     # 0x1d5
	.short	468                     # 0x1d4
	.short	467                     # 0x1d3
	.short	466                     # 0x1d2
	.short	465                     # 0x1d1
	.short	464                     # 0x1d0
	.short	463                     # 0x1cf
	.short	462                     # 0x1ce
	.short	461                     # 0x1cd
	.short	460                     # 0x1cc
	.short	459                     # 0x1cb
	.short	458                     # 0x1ca
	.short	457                     # 0x1c9
	.short	456                     # 0x1c8
	.short	455                     # 0x1c7
	.short	454                     # 0x1c6
	.short	453                     # 0x1c5
	.short	452                     # 0x1c4
	.short	451                     # 0x1c3
	.short	450                     # 0x1c2
	.short	449                     # 0x1c1
	.short	448                     # 0x1c0
	.short	447                     # 0x1bf
	.short	446                     # 0x1be
	.short	445                     # 0x1bd
	.short	444                     # 0x1bc
	.short	443                     # 0x1bb
	.short	442                     # 0x1ba
	.short	441                     # 0x1b9
	.short	440                     # 0x1b8
	.short	439                     # 0x1b7
	.short	438                     # 0x1b6
	.short	437                     # 0x1b5
	.short	436                     # 0x1b4
	.short	435                     # 0x1b3
	.short	434                     # 0x1b2
	.short	433                     # 0x1b1
	.short	432                     # 0x1b0
	.short	431                     # 0x1af
	.short	430                     # 0x1ae
	.short	425                     # 0x1a9
	.short	423                     # 0x1a7
	.short	419                     # 0x1a3
	.short	416                     # 0x1a0
	.short	413                     # 0x19d
	.short	410                     # 0x19a
	.short	407                     # 0x197
	.short	404                     # 0x194
	.short	401                     # 0x191
	.short	398                     # 0x18e
	.short	395                     # 0x18b
	.short	392                     # 0x188
	.short	389                     # 0x185
	.short	388                     # 0x184
	.short	385                     # 0x181
	.short	382                     # 0x17e
	.short	379                     # 0x17b
	.short	375                     # 0x177
	.short	374                     # 0x176
	.short	370                     # 0x172
	.short	368                     # 0x170
	.short	367                     # 0x16f
	.short	363                     # 0x16b
	.short	362                     # 0x16a
	.short	361                     # 0x169
	.short	357                     # 0x165
	.short	356                     # 0x164
	.short	355                     # 0x163
	.short	351                     # 0x15f
	.short	349                     # 0x15d
	.short	348                     # 0x15c
	.short	347                     # 0x15b
	.short	343                     # 0x157
	.short	341                     # 0x155
	.short	340                     # 0x154
	.short	339                     # 0x153
	.short	338                     # 0x152
	.short	335                     # 0x14f
	.short	331                     # 0x14b
	.short	330                     # 0x14a
	.short	325                     # 0x145
	.short	323                     # 0x143
	.short	322                     # 0x142
	.short	317                     # 0x13d
	.short	315                     # 0x13b
	.short	314                     # 0x13a
	.short	307                     # 0x133
	.short	304                     # 0x130
	.short	303                     # 0x12f
	.short	302                     # 0x12e
	.short	299                     # 0x12b
	.short	297                     # 0x129
	.short	293                     # 0x125
	.short	291                     # 0x123
	.short	290                     # 0x122
	.short	289                     # 0x121
	.short	287                     # 0x11f
	.short	286                     # 0x11e
	.short	282                     # 0x11a
	.short	279                     # 0x117
	.short	278                     # 0x116
	.short	277                     # 0x115
	.short	276                     # 0x114
	.short	267                     # 0x10b
	.short	265                     # 0x109
	.short	262                     # 0x106
	.short	261                     # 0x105
	.short	252                     # 0xfc
	.short	251                     # 0xfb
	.short	248                     # 0xf8
	.short	245                     # 0xf5
	.short	236                     # 0xec
	.short	234                     # 0xea
	.short	231                     # 0xe7
	.short	229                     # 0xe5
	.short	221                     # 0xdd
	.short	219                     # 0xdb
	.short	203                     # 0xcb
	.short	202                     # 0xca
	.short	199                     # 0xc7
	.short	184                     # 0xb8
	.short	182                     # 0xb6
	.short	148                     # 0x94
	.short	132                     # 0x84
	.short	117                     # 0x75
	.short	101                     # 0x65
	.short	63                      # 0x3f
	.short	61                      # 0x3d
	.short	58                      # 0x3a
	.short	55                      # 0x37
	.short	44                      # 0x2c
	.short	41                      # 0x29
	.short	40                      # 0x28
	.short	38                      # 0x26
	.short	37                      # 0x25
	.short	34                      # 0x22
	.short	31                      # 0x1f
	.short	22                      # 0x16
	.short	19                      # 0x13
	.short	16                      # 0x10
	.short	15                      # 0xf
	.short	13                      # 0xd
	.short	3                       # 0x3
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.size	yy_chk, 1728

	.type	yy_def,@object          # @yy_def
	.align	16
yy_def:
	.short	0                       # 0x0
	.short	477                     # 0x1dd
	.short	477                     # 0x1dd
	.short	477                     # 0x1dd
	.short	478                     # 0x1de
	.short	479                     # 0x1df
	.short	479                     # 0x1df
	.short	480                     # 0x1e0
	.short	480                     # 0x1e0
	.short	481                     # 0x1e1
	.short	481                     # 0x1e1
	.short	482                     # 0x1e2
	.short	482                     # 0x1e2
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	483                     # 0x1e3
	.short	476                     # 0x1dc
	.short	483                     # 0x1e3
	.short	484                     # 0x1e4
	.short	476                     # 0x1dc
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	476                     # 0x1dc
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	488                     # 0x1e8
	.short	483                     # 0x1e3
	.short	476                     # 0x1dc
	.short	489                     # 0x1e9
	.short	484                     # 0x1e4
	.short	476                     # 0x1dc
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	476                     # 0x1dc
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	488                     # 0x1e8
	.short	476                     # 0x1dc
	.short	489                     # 0x1e9
	.short	476                     # 0x1dc
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	490                     # 0x1ea
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	490                     # 0x1ea
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	484                     # 0x1e4
	.short	491                     # 0x1eb
	.short	484                     # 0x1e4
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	484                     # 0x1e4
	.short	491                     # 0x1eb
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	484                     # 0x1e4
	.short	492                     # 0x1ec
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	493                     # 0x1ed
	.short	487                     # 0x1e7
	.short	494                     # 0x1ee
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	493                     # 0x1ed
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	494                     # 0x1ee
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	495                     # 0x1ef
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	496                     # 0x1f0
	.short	486                     # 0x1e6
	.short	497                     # 0x1f1
	.short	487                     # 0x1e7
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	495                     # 0x1ef
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	496                     # 0x1f0
	.short	476                     # 0x1dc
	.short	486                     # 0x1e6
	.short	497                     # 0x1f1
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	498                     # 0x1f2
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	499                     # 0x1f3
	.short	500                     # 0x1f4
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	498                     # 0x1f2
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	499                     # 0x1f3
	.short	476                     # 0x1dc
	.short	500                     # 0x1f4
	.short	476                     # 0x1dc
	.short	486                     # 0x1e6
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	492                     # 0x1ec
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	501                     # 0x1f5
	.short	502                     # 0x1f6
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	503                     # 0x1f7
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	501                     # 0x1f5
	.short	476                     # 0x1dc
	.short	502                     # 0x1f6
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	503                     # 0x1f7
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	487                     # 0x1e7
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	505                     # 0x1f9
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	506                     # 0x1fa
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	505                     # 0x1f9
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	506                     # 0x1fa
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	507                     # 0x1fb
	.short	476                     # 0x1dc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	507                     # 0x1fb
	.short	476                     # 0x1dc
	.short	508                     # 0x1fc
	.short	504                     # 0x1f8
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	508                     # 0x1fc
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	509                     # 0x1fd
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	509                     # 0x1fd
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	510                     # 0x1fe
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	510                     # 0x1fe
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	511                     # 0x1ff
	.short	485                     # 0x1e5
	.short	511                     # 0x1ff
	.short	476                     # 0x1dc
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	485                     # 0x1e5
	.short	512                     # 0x200
	.short	512                     # 0x200
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	513                     # 0x201
	.short	513                     # 0x201
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	514                     # 0x202
	.short	514                     # 0x202
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	515                     # 0x203
	.short	515                     # 0x203
	.short	476                     # 0x1dc
	.short	0                       # 0x0
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.size	yy_def, 1032

	.type	yy_meta,@object         # @yy_meta
	.align	16
yy_meta:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	yy_meta, 196

	.type	yy_nxt,@object          # @yy_nxt
	.align	16
yy_nxt:
	.short	0                       # 0x0
	.short	474                     # 0x1da
	.short	17                      # 0x11
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	18                      # 0x12
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	23                      # 0x17
	.short	45                      # 0x2d
	.short	32                      # 0x20
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	32                      # 0x20
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	45                      # 0x2d
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	26                      # 0x1a
	.short	39                      # 0x27
	.short	56                      # 0x38
	.short	40                      # 0x28
	.short	45                      # 0x2d
	.short	27                      # 0x1b
	.short	45                      # 0x2d
	.short	28                      # 0x1c
	.short	45                      # 0x2d
	.short	29                      # 0x1d
	.short	23                      # 0x17
	.short	30                      # 0x1e
	.short	42                      # 0x2a
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	43                      # 0x2b
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	50                      # 0x32
	.short	26                      # 0x1a
	.short	33                      # 0x21
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	33                      # 0x21
	.short	27                      # 0x1b
	.short	52                      # 0x34
	.short	28                      # 0x1c
	.short	47                      # 0x2f
	.short	29                      # 0x1d
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	53                      # 0x35
	.short	48                      # 0x30
	.short	51                      # 0x33
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	49                      # 0x31
	.short	57                      # 0x39
	.short	60                      # 0x3c
	.short	54                      # 0x36
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	72                      # 0x48
	.short	45                      # 0x2d
	.short	71                      # 0x47
	.short	65                      # 0x41
	.short	68                      # 0x44
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	69                      # 0x45
	.short	66                      # 0x42
	.short	70                      # 0x46
	.short	59                      # 0x3b
	.short	67                      # 0x43
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	73                      # 0x49
	.short	75                      # 0x4b
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	79                      # 0x4f
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	80                      # 0x50
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	94                      # 0x5e
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	42                      # 0x2a
	.short	76                      # 0x4c
	.short	74                      # 0x4a
	.short	78                      # 0x4e
	.short	42                      # 0x2a
	.short	77                      # 0x4d
	.short	85                      # 0x55
	.short	82                      # 0x52
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	84                      # 0x54
	.short	45                      # 0x2d
	.short	83                      # 0x53
	.short	81                      # 0x51
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	91                      # 0x5b
	.short	45                      # 0x2d
	.short	86                      # 0x56
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	92                      # 0x5c
	.short	87                      # 0x57
	.short	101                     # 0x65
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	95                      # 0x5f
	.short	97                      # 0x61
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	90                      # 0x5a
	.short	42                      # 0x2a
	.short	93                      # 0x5d
	.short	96                      # 0x60
	.short	98                      # 0x62
	.short	42                      # 0x2a
	.short	102                     # 0x66
	.short	45                      # 0x2d
	.short	109                     # 0x6d
	.short	100                     # 0x64
	.short	42                      # 0x2a
	.short	106                     # 0x6a
	.short	104                     # 0x68
	.short	107                     # 0x6b
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	99                      # 0x63
	.short	105                     # 0x69
	.short	45                      # 0x2d
	.short	108                     # 0x6c
	.short	103                     # 0x67
	.short	45                      # 0x2d
	.short	113                     # 0x71
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	111                     # 0x6f
	.short	112                     # 0x70
	.short	110                     # 0x6e
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	42                      # 0x2a
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	114                     # 0x72
	.short	42                      # 0x2a
	.short	120                     # 0x78
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	121                     # 0x79
	.short	45                      # 0x2d
	.short	132                     # 0x84
	.short	45                      # 0x2d
	.short	115                     # 0x73
	.short	119                     # 0x77
	.short	45                      # 0x2d
	.short	116                     # 0x74
	.short	123                     # 0x7b
	.short	122                     # 0x7a
	.short	124                     # 0x7c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	139                     # 0x8b
	.short	125                     # 0x7d
	.short	129                     # 0x81
	.short	45                      # 0x2d
	.short	127                     # 0x7f
	.short	45                      # 0x2d
	.short	141                     # 0x8d
	.short	130                     # 0x82
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	131                     # 0x83
	.short	135                     # 0x87
	.short	128                     # 0x80
	.short	126                     # 0x7e
	.short	133                     # 0x85
	.short	138                     # 0x8a
	.short	59                      # 0x3b
	.short	136                     # 0x88
	.short	134                     # 0x86
	.short	59                      # 0x3b
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	137                     # 0x89
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	154                     # 0x9a
	.short	45                      # 0x2d
	.short	155                     # 0x9b
	.short	140                     # 0x8c
	.short	45                      # 0x2d
	.short	150                     # 0x96
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	42                      # 0x2a
	.short	151                     # 0x97
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	158                     # 0x9e
	.short	144                     # 0x90
	.short	152                     # 0x98
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	153                     # 0x99
	.short	146                     # 0x92
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	162                     # 0xa2
	.short	145                     # 0x91
	.short	156                     # 0x9c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	163                     # 0xa3
	.short	45                      # 0x2d
	.short	168                     # 0xa8
	.short	45                      # 0x2d
	.short	147                     # 0x93
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	178                     # 0xb2
	.short	160                     # 0xa0
	.short	56                      # 0x38
	.short	176                     # 0xb0
	.short	59                      # 0x3b
	.short	157                     # 0x9d
	.short	161                     # 0xa1
	.short	159                     # 0x9f
	.short	59                      # 0x3b
	.short	164                     # 0xa4
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	165                     # 0xa5
	.short	42                      # 0x2a
	.short	170                     # 0xaa
	.short	166                     # 0xa6
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	169                     # 0xa9
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	171                     # 0xab
	.short	45                      # 0x2d
	.short	175                     # 0xaf
	.short	172                     # 0xac
	.short	168                     # 0xa8
	.short	177                     # 0xb1
	.short	174                     # 0xae
	.short	168                     # 0xa8
	.short	173                     # 0xad
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	179                     # 0xb3
	.short	45                      # 0x2d
	.short	193                     # 0xc1
	.short	181                     # 0xb5
	.short	191                     # 0xbf
	.short	56                      # 0x38
	.short	180                     # 0xb4
	.short	195                     # 0xc3
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	183                     # 0xb7
	.short	186                     # 0xba
	.short	184                     # 0xb8
	.short	182                     # 0xb6
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	185                     # 0xb9
	.short	45                      # 0x2d
	.short	188                     # 0xbc
	.short	45                      # 0x2d
	.short	187                     # 0xbb
	.short	189                     # 0xbd
	.short	190                     # 0xbe
	.short	45                      # 0x2d
	.short	192                     # 0xc0
	.short	45                      # 0x2d
	.short	194                     # 0xc2
	.short	168                     # 0xa8
	.short	45                      # 0x2d
	.short	212                     # 0xd4
	.short	45                      # 0x2d
	.short	207                     # 0xcf
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	197                     # 0xc5
	.short	210                     # 0xd2
	.short	196                     # 0xc4
	.short	221                     # 0xdd
	.short	206                     # 0xce
	.short	198                     # 0xc6
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	201                     # 0xc9
	.short	205                     # 0xcd
	.short	168                     # 0xa8
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	204                     # 0xcc
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	208                     # 0xd0
	.short	59                      # 0x3b
	.short	209                     # 0xd1
	.short	223                     # 0xdf
	.short	214                     # 0xd6
	.short	59                      # 0x3b
	.short	211                     # 0xd3
	.short	215                     # 0xd7
	.short	231                     # 0xe7
	.short	45                      # 0x2d
	.short	220                     # 0xdc
	.short	213                     # 0xd5
	.short	224                     # 0xe0
	.short	217                     # 0xd9
	.short	48                      # 0x30
	.short	226                     # 0xe2
	.short	216                     # 0xd8
	.short	218                     # 0xda
	.short	49                      # 0x31
	.short	225                     # 0xe1
	.short	42                      # 0x2a
	.short	222                     # 0xde
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	230                     # 0xe6
	.short	45                      # 0x2d
	.short	240                     # 0xf0
	.short	45                      # 0x2d
	.short	241                     # 0xf1
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	227                     # 0xe3
	.short	228                     # 0xe4
	.short	168                     # 0xa8
	.short	233                     # 0xe9
	.short	59                      # 0x3b
	.short	229                     # 0xe5
	.short	242                     # 0xf2
	.short	56                      # 0x38
	.short	42                      # 0x2a
	.short	59                      # 0x3b
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	232                     # 0xe8
	.short	56                      # 0x38
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	239                     # 0xef
	.short	238                     # 0xee
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	168                     # 0xa8
	.short	253                     # 0xfd
	.short	59                      # 0x3b
	.short	235                     # 0xeb
	.short	255                     # 0xff
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	243                     # 0xf3
	.short	244                     # 0xf4
	.short	251                     # 0xfb
	.short	254                     # 0xfe
	.short	247                     # 0xf7
	.short	42                      # 0x2a
	.short	250                     # 0xfa
	.short	256                     # 0x100
	.short	258                     # 0x102
	.short	283                     # 0x11b
	.short	263                     # 0x107
	.short	168                     # 0xa8
	.short	260                     # 0x104
	.short	261                     # 0x105
	.short	264                     # 0x108
	.short	45                      # 0x2d
	.short	257                     # 0x101
	.short	259                     # 0x103
	.short	168                     # 0xa8
	.short	262                     # 0x106
	.short	269                     # 0x10d
	.short	270                     # 0x10e
	.short	271                     # 0x10f
	.short	273                     # 0x111
	.short	284                     # 0x11c
	.short	45                      # 0x2d
	.short	268                     # 0x10c
	.short	281                     # 0x119
	.short	275                     # 0x113
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	285                     # 0x11d
	.short	45                      # 0x2d
	.short	272                     # 0x110
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	274                     # 0x112
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	295                     # 0x127
	.short	280                     # 0x118
	.short	45                      # 0x2d
	.short	288                     # 0x120
	.short	292                     # 0x124
	.short	59                      # 0x3b
	.short	306                     # 0x132
	.short	309                     # 0x135
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	168                     # 0xa8
	.short	45                      # 0x2d
	.short	309                     # 0x135
	.short	309                     # 0x135
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	286                     # 0x11e
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	310                     # 0x136
	.short	45                      # 0x2d
	.short	287                     # 0x11f
	.short	294                     # 0x126
	.short	309                     # 0x135
	.short	291                     # 0x123
	.short	310                     # 0x136
	.short	310                     # 0x136
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	286                     # 0x11e
	.short	309                     # 0x135
	.short	301                     # 0x12d
	.short	287                     # 0x11f
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	310                     # 0x136
	.short	45                      # 0x2d
	.short	59                      # 0x3b
	.short	311                     # 0x137
	.short	296                     # 0x128
	.short	316                     # 0x13c
	.short	312                     # 0x138
	.short	321                     # 0x141
	.short	310                     # 0x136
	.short	329                     # 0x149
	.short	333                     # 0x14d
	.short	309                     # 0x135
	.short	313                     # 0x139
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	318                     # 0x13e
	.short	319                     # 0x13f
	.short	328                     # 0x148
	.short	336                     # 0x150
	.short	320                     # 0x140
	.short	324                     # 0x144
	.short	327                     # 0x147
	.short	309                     # 0x135
	.short	45                      # 0x2d
	.short	310                     # 0x136
	.short	45                      # 0x2d
	.short	334                     # 0x14e
	.short	326                     # 0x146
	.short	45                      # 0x2d
	.short	354                     # 0x162
	.short	332                     # 0x14c
	.short	337                     # 0x151
	.short	45                      # 0x2d
	.short	359                     # 0x167
	.short	309                     # 0x135
	.short	310                     # 0x136
	.short	352                     # 0x160
	.short	341                     # 0x155
	.short	309                     # 0x135
	.short	45                      # 0x2d
	.short	335                     # 0x14f
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	340                     # 0x154
	.short	345                     # 0x159
	.short	342                     # 0x156
	.short	310                     # 0x136
	.short	365                     # 0x16d
	.short	364                     # 0x16c
	.short	309                     # 0x135
	.short	310                     # 0x136
	.short	309                     # 0x135
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	358                     # 0x166
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	378                     # 0x17a
	.short	346                     # 0x15a
	.short	372                     # 0x174
	.short	45                      # 0x2d
	.short	377                     # 0x179
	.short	310                     # 0x136
	.short	373                     # 0x175
	.short	310                     # 0x136
	.short	45                      # 0x2d
	.short	380                     # 0x17c
	.short	353                     # 0x161
	.short	360                     # 0x168
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	383                     # 0x17f
	.short	45                      # 0x2d
	.short	381                     # 0x17d
	.short	371                     # 0x173
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	396                     # 0x18c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	366                     # 0x16e
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	408                     # 0x198
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	386                     # 0x182
	.short	384                     # 0x180
	.short	45                      # 0x2d
	.short	412                     # 0x19c
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	387                     # 0x183
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	390                     # 0x186
	.short	45                      # 0x2d
	.short	424                     # 0x1a8
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	463                     # 0x1cf
	.short	45                      # 0x2d
	.short	399                     # 0x18f
	.short	391                     # 0x187
	.short	394                     # 0x18a
	.short	397                     # 0x18d
	.short	403                     # 0x193
	.short	45                      # 0x2d
	.short	447                     # 0x1bf
	.short	393                     # 0x189
	.short	400                     # 0x190
	.short	411                     # 0x19b
	.short	421                     # 0x1a5
	.short	409                     # 0x199
	.short	431                     # 0x1af
	.short	405                     # 0x195
	.short	425                     # 0x1a9
	.short	415                     # 0x19f
	.short	402                     # 0x192
	.short	406                     # 0x196
	.short	414                     # 0x19e
	.short	419                     # 0x1a3
	.short	418                     # 0x1a2
	.short	417                     # 0x1a1
	.short	388                     # 0x184
	.short	375                     # 0x177
	.short	368                     # 0x170
	.short	349                     # 0x15d
	.short	343                     # 0x157
	.short	427                     # 0x1ab
	.short	308                     # 0x134
	.short	423                     # 0x1a7
	.short	429                     # 0x1ad
	.short	304                     # 0x130
	.short	299                     # 0x12b
	.short	422                     # 0x1a6
	.short	430                     # 0x1ae
	.short	297                     # 0x129
	.short	278                     # 0x116
	.short	276                     # 0x114
	.short	265                     # 0x109
	.short	248                     # 0xf8
	.short	245                     # 0xf5
	.short	236                     # 0xec
	.short	428                     # 0x1ac
	.short	202                     # 0xca
	.short	199                     # 0xc7
	.short	167                     # 0xa7
	.short	148                     # 0x94
	.short	117                     # 0x75
	.short	63                      # 0x3f
	.short	61                      # 0x3d
	.short	58                      # 0x3a
	.short	55                      # 0x37
	.short	44                      # 0x2c
	.short	41                      # 0x29
	.short	38                      # 0x26
	.short	34                      # 0x22
	.short	31                      # 0x1f
	.short	22                      # 0x16
	.short	19                      # 0x13
	.short	16                      # 0x10
	.short	14                      # 0xe
	.short	475                     # 0x1db
	.short	475                     # 0x1db
	.short	473                     # 0x1d9
	.short	472                     # 0x1d8
	.short	471                     # 0x1d7
	.short	470                     # 0x1d6
	.short	469                     # 0x1d5
	.short	468                     # 0x1d4
	.short	467                     # 0x1d3
	.short	466                     # 0x1d2
	.short	465                     # 0x1d1
	.short	464                     # 0x1d0
	.short	464                     # 0x1d0
	.short	462                     # 0x1ce
	.short	461                     # 0x1cd
	.short	460                     # 0x1cc
	.short	459                     # 0x1cb
	.short	458                     # 0x1ca
	.short	457                     # 0x1c9
	.short	456                     # 0x1c8
	.short	455                     # 0x1c7
	.short	454                     # 0x1c6
	.short	453                     # 0x1c5
	.short	452                     # 0x1c4
	.short	451                     # 0x1c3
	.short	450                     # 0x1c2
	.short	449                     # 0x1c1
	.short	448                     # 0x1c0
	.short	448                     # 0x1c0
	.short	446                     # 0x1be
	.short	445                     # 0x1bd
	.short	444                     # 0x1bc
	.short	443                     # 0x1bb
	.short	442                     # 0x1ba
	.short	441                     # 0x1b9
	.short	440                     # 0x1b8
	.short	439                     # 0x1b7
	.short	438                     # 0x1b6
	.short	437                     # 0x1b5
	.short	436                     # 0x1b4
	.short	435                     # 0x1b3
	.short	434                     # 0x1b2
	.short	433                     # 0x1b1
	.short	432                     # 0x1b0
	.short	432                     # 0x1b0
	.short	426                     # 0x1aa
	.short	426                     # 0x1aa
	.short	420                     # 0x1a4
	.short	420                     # 0x1a4
	.short	416                     # 0x1a0
	.short	413                     # 0x19d
	.short	410                     # 0x19a
	.short	407                     # 0x197
	.short	404                     # 0x194
	.short	401                     # 0x191
	.short	398                     # 0x18e
	.short	395                     # 0x18b
	.short	392                     # 0x188
	.short	389                     # 0x185
	.short	389                     # 0x185
	.short	385                     # 0x181
	.short	382                     # 0x17e
	.short	376                     # 0x178
	.short	379                     # 0x17b
	.short	376                     # 0x178
	.short	369                     # 0x171
	.short	374                     # 0x176
	.short	370                     # 0x172
	.short	369                     # 0x171
	.short	367                     # 0x16f
	.short	363                     # 0x16b
	.short	362                     # 0x16a
	.short	361                     # 0x169
	.short	357                     # 0x165
	.short	350                     # 0x15e
	.short	356                     # 0x164
	.short	355                     # 0x163
	.short	344                     # 0x158
	.short	351                     # 0x15f
	.short	350                     # 0x15e
	.short	348                     # 0x15c
	.short	347                     # 0x15b
	.short	344                     # 0x158
	.short	339                     # 0x153
	.short	338                     # 0x152
	.short	333                     # 0x14d
	.short	331                     # 0x14b
	.short	330                     # 0x14a
	.short	325                     # 0x145
	.short	323                     # 0x143
	.short	322                     # 0x142
	.short	317                     # 0x13d
	.short	305                     # 0x131
	.short	315                     # 0x13b
	.short	314                     # 0x13a
	.short	300                     # 0x12c
	.short	298                     # 0x12a
	.short	307                     # 0x133
	.short	305                     # 0x131
	.short	303                     # 0x12f
	.short	302                     # 0x12e
	.short	300                     # 0x12c
	.short	298                     # 0x12a
	.short	293                     # 0x125
	.short	290                     # 0x122
	.short	279                     # 0x117
	.short	289                     # 0x121
	.short	277                     # 0x115
	.short	282                     # 0x11a
	.short	266                     # 0x10a
	.short	279                     # 0x117
	.short	277                     # 0x115
	.short	267                     # 0x10b
	.short	266                     # 0x10a
	.short	249                     # 0xf9
	.short	246                     # 0xf6
	.short	237                     # 0xed
	.short	252                     # 0xfc
	.short	249                     # 0xf9
	.short	246                     # 0xf6
	.short	237                     # 0xed
	.short	234                     # 0xea
	.short	219                     # 0xdb
	.short	203                     # 0xcb
	.short	200                     # 0xc8
	.short	203                     # 0xcb
	.short	200                     # 0xc8
	.short	149                     # 0x95
	.short	149                     # 0x95
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	64                      # 0x40
	.short	62                      # 0x3e
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	64                      # 0x40
	.short	39                      # 0x27
	.short	62                      # 0x3e
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	45                      # 0x2d
	.short	42                      # 0x2a
	.short	39                      # 0x27
	.short	37                      # 0x25
	.short	476                     # 0x1dc
	.short	15                      # 0xf
	.short	13                      # 0xd
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.short	476                     # 0x1dc
	.size	yy_nxt, 1728

	.type	yytext,@object          # @yytext
	.comm	yytext,8,8
	.type	yyleng,@object          # @yyleng
	.comm	yyleng,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NTPSOct95 begin\n"
	.size	.L.str, 17

	.type	bodyfname,@object       # @bodyfname
	.comm	bodyfname,255,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s/fixnt_Body_%d"
	.size	.L.str.1, 17

	.type	tmpdir,@object          # @tmpdir
	.comm	tmpdir,8,8
	.type	pid,@object             # @pid
	.comm	pid,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"w+"
	.size	.L.str.2, 3

	.type	body,@object            # @body
	.comm	body,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s"
	.size	.L.str.3, 3

	.type	adobefname,@object      # @adobefname
	.comm	adobefname,255,16
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s/fixnt_Adobe_%d"
	.size	.L.str.4, 18

	.type	adobe,@object           # @adobe
	.comm	adobe,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" @gs @gr\n"
	.size	.L.str.5, 10

	.type	fontfname,@object       # @fontfname
	.comm	fontfname,255,16
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s/fixnt_Font_%d"
	.size	.L.str.6, 17

	.type	font,@object            # @font
	.comm	font,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%%%%Trailer\nAdobe_WinNT_Driver_Gfx dup /terminate get exec\nPageSV restore\nFontSV restore\n"
	.size	.L.str.7, 90

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PageSV restore\nFontSV restore\n"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%%%%Trailer\nPageSV restore\n"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%%%%Trailer\nPageSV restore\nFontSV restore\n"
	.size	.L.str.10, 43

	.type	yy_n_chars,@object      # @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
	.type	yy_did_buffer_switch_on_eof,@object # @yy_did_buffer_switch_on_eof
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str.11, 51

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"out of dynamic memory in yy_create_buffer()"
	.size	.L.str.12, 44

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"out of dynamic memory in yy_scan_buffer()"
	.size	.L.str.13, 42

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"out of dynamic memory in yy_scan_bytes()"
	.size	.L.str.14, 41

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"bad buffer in yy_scan_bytes()"
	.size	.L.str.15, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"TMPDIR"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/tmp"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%%%%EndSetup:\n"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"NTPSOct95 /PageSV save put\n"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.21, 44

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"input in flex scanner failed"
	.size	.L.str.22, 29

	.type	yy_buffer_stack_max,@object # @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s\n"
	.size	.L.str.23, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
