	.text
	.file	"sheets-map.bc"
	.globl	smaplex
	.align	16, 0x90
	.type	smaplex,@function
smaplex:                                # @smaplex
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
	subq	$448, %rsp              # imm = 0x1C0
	cmpl	$0, yy_init
	jne	.LBB0_12
# BB#1:                                 # %if.then
	movl	$1, yy_init
	cmpl	$0, yy_start
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	$1, yy_start
.LBB0_3:                                # %if.end
	cmpq	$0, smapin
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movq	stdin, %rax
	movq	%rax, smapin
.LBB0_5:                                # %if.end.5
	cmpq	$0, smapout
	jne	.LBB0_7
# BB#6:                                 # %if.then.7
	movq	stdout, %rax
	movq	%rax, smapout
.LBB0_7:                                # %if.end.8
	cmpq	$0, yy_buffer_stack
	je	.LBB0_9
# BB#8:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB0_11
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB0_11
	jmp	.LBB0_10
.LBB0_10:                               # %if.then.11
	callq	smapensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	smapin, %rdi
	callq	smap_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB0_11:                               # %if.end.13
	callq	smap_load_buffer_state
.LBB0_12:                               # %if.end.14
	jmp	.LBB0_13
.LBB0_13:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_37 Depth 4
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	yy_hold_char, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	yy_start, %edx
	movl	%edx, -8(%rbp)
.LBB0_14:                               # %yy_match
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_37 Depth 4
	jmp	.LBB0_15
.LBB0_15:                               # %do.body
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_18 Depth 4
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movb	%cl, %dl
	movb	%dl, -29(%rbp)
	movslq	-8(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB0_17
# BB#16:                                # %if.then.20
                                        #   in Loop: Header=BB0_15 Depth=3
	movl	-8(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB0_17:                               # %if.end.21
                                        #   in Loop: Header=BB0_15 Depth=3
	jmp	.LBB0_18
.LBB0_18:                               # %while.cond.22
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-29(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB0_22
# BB#19:                                # %while.body.31
                                        #   in Loop: Header=BB0_18 Depth=4
	movslq	-8(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$74, -8(%rbp)
	jl	.LBB0_21
# BB#20:                                # %if.then.37
                                        #   in Loop: Header=BB0_18 Depth=4
	movzbl	-29(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -29(%rbp)
.LBB0_21:                               # %if.end.42
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_18
.LBB0_22:                               # %while.end
                                        #   in Loop: Header=BB0_15 Depth=3
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
# BB#23:                                # %do.cond
                                        #   in Loop: Header=BB0_15 Depth=3
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	cmpl	$174, %ecx
	jne	.LBB0_15
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               # %yy_find_action
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_37 Depth 4
	movslq	-8(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.61
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_last_accepting_cpos, %rax
	movq	%rax, -16(%rbp)
	movl	yy_last_accepting_state, %ecx
	movl	%ecx, -8(%rbp)
	movslq	-8(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
.LBB0_27:                               # %if.end.65
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	-24(%rbp), %rax
	movq	%rax, smaptext
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, smapleng
	movq	-16(%rbp), %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, yy_c_buf_p
	cmpl	$39, -28(%rbp)
	je	.LBB0_36
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_25 Depth=3
	movslq	-28(%rbp), %rax
	cmpl	$0, yy_rule_can_match_eol(,%rax,4)
	je	.LBB0_36
# BB#29:                                # %if.then.72
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	$0, -36(%rbp)
.LBB0_30:                               # %for.cond
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-36(%rbp), %eax
	cmpl	smapleng, %eax
	jge	.LBB0_35
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB0_30 Depth=4
	movslq	-36(%rbp), %rax
	movq	smaptext, %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB0_33
# BB#32:                                # %if.then.80
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	smaplineno, %eax
	addl	$1, %eax
	movl	%eax, smaplineno
.LBB0_33:                               # %if.end.81
                                        #   in Loop: Header=BB0_30 Depth=4
	jmp	.LBB0_34
.LBB0_34:                               # %for.inc
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_30
.LBB0_35:                               # %for.end
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.83
                                        #   in Loop: Header=BB0_25 Depth=3
	jmp	.LBB0_37
.LBB0_37:                               # %do_action
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$42, %rdx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	ja	.LBB0_166
# BB#169:                               # %do_action
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_38:                               # %sw.bb
                                        #   in Loop: Header=BB0_25 Depth=3
	movb	yy_hold_char, %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	yy_last_accepting_cpos, %rcx
	movq	%rcx, -16(%rbp)
	movl	yy_last_accepting_state, %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB0_25
.LBB0_39:                               # %sw.bb.84
	movq	smaptext, %rdi
	movl	smapleng, %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	callq	xstrndup
	movq	%rax, token_val
	movl	$10, -4(%rbp)
	jmp	.LBB0_168
.LBB0_40:                               # %sw.bb.87
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$3, yy_start
	jmp	.LBB0_167
.LBB0_41:                               # %sw.bb.88
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$5, yy_start
	jmp	.LBB0_167
.LBB0_42:                               # %sw.bb.89
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_167
.LBB0_43:                               # %sw.bb.90
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_167
.LBB0_44:                               # %sw.bb.91
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	smapleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	smaptext, %rdx
	movb	$0, (%rdx,%rcx)
	movq	smaptext, %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	yy_include_push
	jmp	.LBB0_167
.LBB0_45:                               # %sw.bb.95
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str, %rdi
	movq	yyfilename, %rdx
	movl	smaplineno, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	smaptext, %rdx
	movsbl	(%rdx), %r9d
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movl	-372(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error_at_line
	jmp	.LBB0_167
.LBB0_46:                               # %sw.bb.98
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_47
.LBB0_47:                               # %do.body.99
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_49
# BB#48:                                # %if.then.101
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movq	yyfilename, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB0_49:                               # %if.end.103
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               # %do.end.105
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	include_stack_ptr, %eax
	addl	$-1, %eax
	movl	%eax, include_stack_ptr
	cmpl	$0, %eax
	jge	.LBB0_52
# BB#51:                                # %if.then.108
	movl	$0, -4(%rbp)
	jmp	.LBB0_168
.LBB0_52:                               # %if.else
                                        #   in Loop: Header=BB0_13 Depth=1
	callq	yy_include_pop
# BB#53:                                # %if.end.109
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_167
.LBB0_54:                               # %sw.bb.110
	movabsq	$string_stack, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-56(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_56
# BB#55:                                # %if.then.114
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_56:                               # %if.end.115
	movabsq	$string_stack, %rax
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	$0, (%rdx)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_58
# BB#57:                                # %if.then.121
	movq	-64(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB0_58:                               # %if.end.122
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$0, %rdx
	movq	-64(%rbp), %rsi
	movslq	48(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-64(%rbp), %rsi
	movl	48(%rsi), %eax
	xorl	$-1, %eax
	movslq	%eax, %rsi
	andq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-64(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB0_60
# BB#59:                                # %if.then.144
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_60:                               # %if.end.147
	movabsq	$string_stack, %rax
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_63
# BB#61:                                # %land.lhs.true.156
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB0_63
# BB#62:                                # %if.then.160
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-88(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB0_64
.LBB0_63:                               # %if.else.163
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	obstack_free
.LBB0_64:                               # %if.end.164
	movq	-48(%rbp), %rdi
	callq	xstrdup
	movq	%rax, token_val
	movq	smaptext, %rax
	movsbl	1(%rax), %ecx
	cmpl	$105, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, insensitive_p
	movl	$1, yy_start
	movl	$11, -4(%rbp)
	jmp	.LBB0_168
.LBB0_65:                               # %sw.bb.170
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rdi
	movq	smaptext, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	obstack_octal_grow
	jmp	.LBB0_167
.LBB0_66:                               # %sw.bb.172
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rdi
	movq	smaptext, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	obstack_hexa_grow
	jmp	.LBB0_167
.LBB0_67:                               # %sw.bb.174
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-104(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_69
# BB#68:                                # %if.then.182
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-104(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_69:                               # %if.end.183
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-104(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$7, (%rcx)
	jmp	.LBB0_167
.LBB0_70:                               # %sw.bb.186
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-112(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_72
# BB#71:                                # %if.then.194
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-112(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_72:                               # %if.end.195
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$8, (%rcx)
	jmp	.LBB0_167
.LBB0_73:                               # %sw.bb.198
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-120(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_75
# BB#74:                                # %if.then.206
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_75:                               # %if.end.207
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-120(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$127, (%rcx)
	jmp	.LBB0_167
.LBB0_76:                               # %sw.bb.210
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-128(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_78
# BB#77:                                # %if.then.218
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-128(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_78:                               # %if.end.219
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-128(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$27, (%rcx)
	jmp	.LBB0_167
.LBB0_79:                               # %sw.bb.222
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-136(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_81
# BB#80:                                # %if.then.230
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-136(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_81:                               # %if.end.231
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-136(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$12, (%rcx)
	jmp	.LBB0_167
.LBB0_82:                               # %sw.bb.234
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-144(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_84
# BB#83:                                # %if.then.242
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-144(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_84:                               # %if.end.243
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-144(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$10, (%rcx)
	jmp	.LBB0_167
.LBB0_85:                               # %sw.bb.246
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-152(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_87
# BB#86:                                # %if.then.254
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-152(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_87:                               # %if.end.255
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-152(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$13, (%rcx)
	jmp	.LBB0_167
.LBB0_88:                               # %sw.bb.258
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-160(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_90
# BB#89:                                # %if.then.266
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-160(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_90:                               # %if.end.267
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-160(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$9, (%rcx)
	jmp	.LBB0_167
.LBB0_91:                               # %sw.bb.270
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-168(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_93
# BB#92:                                # %if.then.278
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-168(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_93:                               # %if.end.279
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-168(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$11, (%rcx)
	jmp	.LBB0_167
.LBB0_94:                               # %sw.bb.282
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-176(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_96
# BB#95:                                # %if.then.290
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-176(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_96:                               # %if.end.291
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	smaptext, %rax
	movb	1(%rax), %cl
	movq	-176(%rbp), %rax
	movq	24(%rax), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%cl, (%rdx)
	jmp	.LBB0_167
.LBB0_97:                               # %sw.bb.295
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.2, %rdi
	movq	yyfilename, %rdx
	movl	smaplineno, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.3, %r9
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movl	-392(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error_at_line
	jmp	.LBB0_167
.LBB0_98:                               # %sw.bb.297
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -184(%rbp)
	movl	smapleng, %ecx
	movl	%ecx, -188(%rbp)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-188(%rbp), %rdx
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB0_100
# BB#99:                                # %if.then.306
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-184(%rbp), %rdi
	movl	-188(%rbp), %esi
	callq	_obstack_newchunk
.LBB0_100:                              # %if.end.307
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-184(%rbp), %rax
	movq	24(%rax), %rdi
	movq	smaptext, %rsi
	movslq	-188(%rbp), %rdx
	callq	memcpy
	movl	-188(%rbp), %ecx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	jmp	.LBB0_167
.LBB0_101:                              # %sw.bb.313
	movabsq	$string_stack, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-208(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_103
# BB#102:                               # %if.then.323
	movl	$1, %esi
	movq	-208(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_103:                              # %if.end.324
	movabsq	$string_stack, %rax
	movq	-208(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	$0, (%rdx)
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB0_105
# BB#104:                               # %if.then.335
	movq	-216(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB0_105:                              # %if.end.340
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$0, %rdx
	movq	-216(%rbp), %rsi
	movslq	48(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-216(%rbp), %rsi
	movl	48(%rsi), %eax
	xorl	$-1, %eax
	movslq	%eax, %rsi
	andq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-216(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-216(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-216(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	movq	-216(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-216(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB0_107
# BB#106:                               # %if.then.365
	movq	-216(%rbp), %rax
	movq	32(%rax), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_107:                              # %if.end.368
	movabsq	$string_stack, %rax
	movq	-216(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-216(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-224(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	%rax, -240(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_110
# BB#108:                               # %land.lhs.true.379
	movq	-248(%rbp), %rax
	movq	-240(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB0_110
# BB#109:                               # %if.then.383
	movq	-248(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-240(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB0_111
.LBB0_110:                              # %if.else.386
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	obstack_free
.LBB0_111:                              # %if.end.387
	movq	-200(%rbp), %rdi
	callq	xstrdup
	movq	%rax, token_val
	movq	smaptext, %rax
	movsbl	1(%rax), %ecx
	cmpl	$105, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, insensitive_p
	movl	$1, yy_start
	movl	$12, -4(%rbp)
	jmp	.LBB0_168
.LBB0_112:                              # %sw.bb.394
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rdi
	movq	smaptext, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	obstack_octal_grow
	jmp	.LBB0_167
.LBB0_113:                              # %sw.bb.396
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rdi
	movq	smaptext, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	obstack_hexa_grow
	jmp	.LBB0_167
.LBB0_114:                              # %sw.bb.398
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-256(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_116
# BB#115:                               # %if.then.406
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-256(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_116:                              # %if.end.407
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-256(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$7, (%rcx)
	jmp	.LBB0_167
.LBB0_117:                              # %sw.bb.410
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-264(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_119
# BB#118:                               # %if.then.418
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-264(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_119:                              # %if.end.419
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-264(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$8, (%rcx)
	jmp	.LBB0_167
.LBB0_120:                              # %sw.bb.422
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-272(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_122
# BB#121:                               # %if.then.430
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-272(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_122:                              # %if.end.431
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-272(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$127, (%rcx)
	jmp	.LBB0_167
.LBB0_123:                              # %sw.bb.434
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-280(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_125
# BB#124:                               # %if.then.442
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-280(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_125:                              # %if.end.443
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-280(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$27, (%rcx)
	jmp	.LBB0_167
.LBB0_126:                              # %sw.bb.446
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-288(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_128
# BB#127:                               # %if.then.454
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-288(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_128:                              # %if.end.455
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-288(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$12, (%rcx)
	jmp	.LBB0_167
.LBB0_129:                              # %sw.bb.458
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-296(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_131
# BB#130:                               # %if.then.466
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-296(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_131:                              # %if.end.467
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-296(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$10, (%rcx)
	jmp	.LBB0_167
.LBB0_132:                              # %sw.bb.470
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-304(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_134
# BB#133:                               # %if.then.478
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-304(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_134:                              # %if.end.479
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-304(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$13, (%rcx)
	jmp	.LBB0_167
.LBB0_135:                              # %sw.bb.482
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-312(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_137
# BB#136:                               # %if.then.490
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-312(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_137:                              # %if.end.491
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-312(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$9, (%rcx)
	jmp	.LBB0_167
.LBB0_138:                              # %sw.bb.494
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-320(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_140
# BB#139:                               # %if.then.502
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-320(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_140:                              # %if.end.503
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-320(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$11, (%rcx)
	jmp	.LBB0_167
.LBB0_141:                              # %sw.bb.506
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-328(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_143
# BB#142:                               # %if.then.514
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-328(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_143:                              # %if.end.515
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	smaptext, %rax
	movb	1(%rax), %cl
	movq	-328(%rbp), %rax
	movq	24(%rax), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%cl, (%rdx)
	jmp	.LBB0_167
.LBB0_144:                              # %sw.bb.519
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.2, %rdi
	movq	yyfilename, %rdx
	movl	smaplineno, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.4, %r9
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movl	-404(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error_at_line
	jmp	.LBB0_167
.LBB0_145:                              # %sw.bb.521
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -336(%rbp)
	movl	smapleng, %ecx
	movl	%ecx, -340(%rbp)
	movq	-336(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-340(%rbp), %rdx
	addq	%rdx, %rax
	movq	-336(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB0_147
# BB#146:                               # %if.then.532
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-336(%rbp), %rdi
	movl	-340(%rbp), %esi
	callq	_obstack_newchunk
.LBB0_147:                              # %if.end.533
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-336(%rbp), %rax
	movq	24(%rax), %rdi
	movq	smaptext, %rsi
	movslq	-340(%rbp), %rdx
	callq	memcpy
	movl	-340(%rbp), %ecx
	movq	-336(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	jmp	.LBB0_167
.LBB0_148:                              # %sw.bb.539
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	smaptext, %rdi
	movslq	smapleng, %rsi
	movq	smapout, %rcx
	callq	fwrite
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB0_167
.LBB0_149:                              # %sw.bb.542
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	-16(%rbp), %rax
	movq	smaptext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -344(%rbp)
	movb	yy_hold_char, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB0_151
# BB#150:                               # %if.then.552
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	28(%rax), %edx
	movl	%edx, yy_n_chars
	movq	smapin, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 56(%rax)
.LBB0_151:                              # %if.end.557
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	yy_c_buf_p, %rax
	movslq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_155
# BB#152:                               # %if.then.563
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	smaptext, %rax
	movslq	-344(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	yy_try_NUL_trans
	movl	%eax, -348(%rbp)
	movq	smaptext, %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -348(%rbp)
	je	.LBB0_154
# BB#153:                               # %if.then.571
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	yy_c_buf_p, %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, -16(%rbp)
	movl	-348(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB0_14
.LBB0_154:                              # %if.else.573
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_25
.LBB0_155:                              # %if.else.574
                                        #   in Loop: Header=BB0_37 Depth=4
	callq	yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	je	.LBB0_162
	jmp	.LBB0_170
.LBB0_170:                              # %if.else.574
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	-428(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	je	.LBB0_156
	jmp	.LBB0_171
.LBB0_171:                              # %if.else.574
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	-428(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	je	.LBB0_163
	jmp	.LBB0_164
.LBB0_156:                              # %sw.bb.576
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	$0, yy_did_buffer_switch_on_eof
	callq	smapwrap
	cmpl	$0, %eax
	je	.LBB0_158
# BB#157:                               # %if.then.579
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	$2, %eax
	movq	smaptext, %rcx
	movq	%rcx, yy_c_buf_p
	movl	yy_start, %edx
	subl	$1, %edx
	movl	%eax, -440(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-440(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$39, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_37
.LBB0_158:                              # %if.else.584
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, yy_did_buffer_switch_on_eof
	jne	.LBB0_160
# BB#159:                               # %if.then.586
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	smapin, %rdi
	callq	smaprestart
.LBB0_160:                              # %if.end.587
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_161
.LBB0_161:                              # %if.end.588
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_164
.LBB0_162:                              # %sw.bb.589
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	smaptext, %rax
	movslq	-344(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	smaptext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_14
.LBB0_163:                              # %sw.bb.594
                                        #   in Loop: Header=BB0_25 Depth=3
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
	movq	smaptext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_25
.LBB0_164:                              # %sw.epilog
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_165
.LBB0_165:                              # %if.end.601
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_167
.LBB0_166:                              # %sw.default
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.5, %rdi
	callq	yy_fatal_error
.LBB0_167:                              # %sw.epilog.602
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_13
.LBB0_168:                              # %return
	movl	-4(%rbp), %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	smaplex, .Lfunc_end0-smaplex
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_38
	.quad	.LBB0_39
	.quad	.LBB0_40
	.quad	.LBB0_41
	.quad	.LBB0_42
	.quad	.LBB0_43
	.quad	.LBB0_44
	.quad	.LBB0_45
	.quad	.LBB0_54
	.quad	.LBB0_65
	.quad	.LBB0_66
	.quad	.LBB0_67
	.quad	.LBB0_70
	.quad	.LBB0_73
	.quad	.LBB0_76
	.quad	.LBB0_79
	.quad	.LBB0_82
	.quad	.LBB0_85
	.quad	.LBB0_88
	.quad	.LBB0_91
	.quad	.LBB0_94
	.quad	.LBB0_97
	.quad	.LBB0_98
	.quad	.LBB0_101
	.quad	.LBB0_112
	.quad	.LBB0_113
	.quad	.LBB0_114
	.quad	.LBB0_117
	.quad	.LBB0_120
	.quad	.LBB0_123
	.quad	.LBB0_126
	.quad	.LBB0_129
	.quad	.LBB0_132
	.quad	.LBB0_135
	.quad	.LBB0_138
	.quad	.LBB0_141
	.quad	.LBB0_144
	.quad	.LBB0_145
	.quad	.LBB0_148
	.quad	.LBB0_149
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46

	.text
	.align	16, 0x90
	.type	smapensure_buffer_stack,@function
smapensure_buffer_stack:                # @smapensure_buffer_stack
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
	callq	smapalloc
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
	callq	smaprealloc
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
	.size	smapensure_buffer_stack, .Lfunc_end1-smapensure_buffer_stack
	.cfi_endproc

	.globl	smap_create_buffer
	.align	16, 0x90
	.type	smap_create_buffer,@function
smap_create_buffer:                     # @smap_create_buffer
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
	callq	smapalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	callq	yy_fatal_error
.LBB2_2:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	addl	$2, %eax
	movl	%eax, %edi
	callq	smapalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.6, %rdi
	callq	yy_fatal_error
.LBB2_4:                                # %if.end.6
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	smap_init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	smap_create_buffer, .Lfunc_end2-smap_create_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	smap_load_buffer_state,@function
smap_load_buffer_state:                 # @smap_load_buffer_state
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
	movq	%rax, smaptext
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, smapin
	movq	yy_c_buf_p, %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	popq	%rbp
	retq
.Lfunc_end3:
	.size	smap_load_buffer_state, .Lfunc_end3-smap_load_buffer_state
	.cfi_endproc

	.align	16, 0x90
	.type	yy_include_push,@function
yy_include_push:                        # @yy_include_push
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$10, include_stack_ptr
	jl	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB4_2:                                # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movslq	include_stack_ptr, %rcx
	movq	%rax, include_stack(,%rcx,8)
	movl	smaplineno, %edx
	movslq	include_stack_ptr, %rax
	movl	%edx, lineno_stack(,%rax,4)
	movq	yyfilename, %rax
	movl	include_stack_ptr, %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, include_stack_ptr
	movslq	%edx, %rcx
	movq	%rax, filename_stack(,%rcx,8)
# BB#6:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB4_8
# BB#7:                                 # %if.then.7
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	yyfilename, %rdx
	movl	smaplineno, %ecx
	movq	-8(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB4_8:                                # %if.end.9
	jmp	.LBB4_9
.LBB4_9:                                # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, yyfilename
	movq	yyfilename, %rdi
	callq	xrfopen
	movl	$16384, %esi            # imm = 0x4000
	movq	%rax, smapin
	movq	smapin, %rdi
	callq	smap_create_buffer
	movq	%rax, %rdi
	callq	smap_switch_to_buffer
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	yy_include_push, .Lfunc_end4-yy_include_push
	.cfi_endproc

	.align	16, 0x90
	.type	yy_include_pop,@function
yy_include_pop:                         # @yy_include_pop
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
	subq	$32, %rsp
	movq	smapin, %rdi
	callq	fclose
	cmpq	$0, yy_buffer_stack
	movl	%eax, -4(%rbp)          # 4-byte Spill
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	smap_delete_buffer
	movslq	include_stack_ptr, %rax
	movq	filename_stack(,%rax,8), %rax
	movq	%rax, yyfilename
	movslq	include_stack_ptr, %rax
	movl	lineno_stack(,%rax,4), %ecx
	movl	%ecx, smaplineno
	movslq	include_stack_ptr, %rax
	movq	include_stack(,%rax,8), %rdi
	callq	smap_switch_to_buffer
# BB#4:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.17, %rsi
	movq	stderr, %rdi
	movq	yyfilename, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	yy_include_pop, .Lfunc_end5-yy_include_pop
	.cfi_endproc

	.align	16, 0x90
	.type	obstack_octal_grow,@function
obstack_octal_grow:                     # @obstack_octal_grow
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movsbl	(%rsi), %eax
	subl	$48, %eax
	movl	%eax, -20(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$3, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_3:                                # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB6_5
# BB#4:                                 # %if.then
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	_obstack_newchunk
.LBB6_5:                                # %if.end
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	obstack_octal_grow, .Lfunc_end6-obstack_octal_grow
	.cfi_endproc

	.align	16, 0x90
	.type	obstack_hexa_grow,@function
obstack_hexa_grow:                      # @obstack_hexa_grow
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
	movl	$0, -20(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB7_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	jg	.LBB7_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_10
.LBB7_5:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB7_8
# BB#6:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jg	.LBB7_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.21
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$4, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, -20(%rbp)
.LBB7_9:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.27
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_11:                               # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB7_13
# BB#12:                                # %if.then.30
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	_obstack_newchunk
.LBB7_13:                               # %if.end.31
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	obstack_hexa_grow, .Lfunc_end7-obstack_hexa_grow
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_previous_state,@function
yy_get_previous_state:                  # @yy_get_previous_state
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
	movl	yy_start, %eax
	movl	%eax, -4(%rbp)
	movq	smaptext, %rcx
	movq	%rcx, -16(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
	movq	-16(%rbp), %rax
	cmpq	yy_c_buf_p, %rax
	jae	.LBB8_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movslq	-4(%rbp), %rdx
	cmpw	$0, yy_accept(,%rdx,2)
	je	.LBB8_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_8
.LBB8_8:                                # %while.cond
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB8_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB8_8 Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$74, -4(%rbp)
	jl	.LBB8_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB8_8 Depth=2
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB8_11:                               # %if.end.25
                                        #   in Loop: Header=BB8_8 Depth=2
	jmp	.LBB8_8
.LBB8_12:                               # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB8_1
.LBB8_14:                               # %for.end
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	yy_get_previous_state, .Lfunc_end8-yy_get_previous_state
	.cfi_endproc

	.align	16, 0x90
	.type	yy_try_NUL_trans,@function
yy_try_NUL_trans:                       # @yy_try_NUL_trans
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
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	$1, -17(%rbp)
	movslq	-4(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB9_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$74, -4(%rbp)
	jl	.LBB9_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB9_3 Depth=1
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB9_6:                                # %if.end.18
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_7:                                # %while.end
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$73, -4(%rbp)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB9_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB9_10:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end9:
	.size	yy_try_NUL_trans, .Lfunc_end9-yy_try_NUL_trans
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_next_buffer,@function
yy_get_next_buffer:                     # @yy_get_next_buffer
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
	subq	$112, %rsp
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	smaptext, %rax
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
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	callq	yy_fatal_error
.LBB10_2:                               # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB10_6
# BB#3:                                 # %if.then.6
	movq	yy_c_buf_p, %rax
	movq	smaptext, %rcx
	subq	%rcx, %rax
	subq	$0, %rax
	cmpq	$1, %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB10_58
.LBB10_5:                               # %if.else
	movl	$2, -4(%rbp)
	jmp	.LBB10_58
.LBB10_6:                               # %if.end.9
	movq	yy_c_buf_p, %rax
	movq	smaptext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB10_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB10_7 Depth=1
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
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_7
.LBB10_10:                              # %for.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB10_12
# BB#11:                                # %if.then.20
	movl	$0, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$0, 28(%rax)
	jmp	.LBB10_51
.LBB10_12:                              # %if.else.22
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %edx
	subl	-28(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -40(%rbp)
.LBB10_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jg	.LBB10_26
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB10_13 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB10_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_17
.LBB10_17:                              # %cond.end
                                        #   in Loop: Header=BB10_13 Depth=1
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
	je	.LBB10_22
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jg	.LBB10_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$3, %ecx
	movq	-48(%rbp), %rax
	addl	24(%rax), %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.43
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB10_21:                              # %if.end.46
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	smaprealloc
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.51
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.LBB10_23:                              # %if.end.53
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB10_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB10_13 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	yy_fatal_error
.LBB10_25:                              # %if.end.57
                                        #   in Loop: Header=BB10_13 Depth=1
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
	jmp	.LBB10_13
.LBB10_26:                              # %while.end
	cmpl	$8192, -40(%rbp)        # imm = 0x2000
	jle	.LBB10_28
# BB#27:                                # %if.then.67
	movl	$8192, -40(%rbp)        # imm = 0x2000
.LBB10_28:                              # %if.end.68
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 36(%rax)
	je	.LBB10_42
# BB#29:                                # %if.then.71
	movl	$42, -60(%rbp)
	movq	$0, -72(%rbp)
.LBB10_30:                              # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jae	.LBB10_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	smapin, %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -60(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -81(%rbp)          # 1-byte Spill
	je	.LBB10_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB10_30 Depth=1
	cmpl	$10, -60(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB10_33:                              # %land.end
                                        #   in Loop: Header=BB10_30 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_34
	jmp	.LBB10_36
.LBB10_34:                              # %for.body.81
                                        #   in Loop: Header=BB10_30 Depth=1
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
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB10_30
.LBB10_36:                              # %for.end.90
	cmpl	$10, -60(%rbp)
	jne	.LBB10_38
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
.LBB10_38:                              # %if.end.101
	cmpl	$-1, -60(%rbp)
	jne	.LBB10_41
# BB#39:                                # %land.lhs.true.104
	movq	smapin, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB10_41
# BB#40:                                # %if.then.107
	movabsq	$.L.str.13, %rdi
	callq	yy_fatal_error
.LBB10_41:                              # %if.end.108
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, yy_n_chars
	jmp	.LBB10_50
.LBB10_42:                              # %if.else.110
	callq	__errno_location
	movl	$0, (%rax)
.LBB10_43:                              # %while.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rdi
	movq	(%rdi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	movslq	-40(%rbp), %rdx
	movq	smapin, %rdi
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
	jne	.LBB10_45
# BB#44:                                # %land.rhs.122
                                        #   in Loop: Header=BB10_43 Depth=1
	movq	smapin, %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB10_45:                              # %land.end.125
                                        #   in Loop: Header=BB10_43 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_46
	jmp	.LBB10_49
.LBB10_46:                              # %while.body.126
                                        #   in Loop: Header=BB10_43 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB10_48
# BB#47:                                # %if.then.130
	movabsq	$.L.str.13, %rdi
	callq	yy_fatal_error
	jmp	.LBB10_49
.LBB10_48:                              # %if.end.131
                                        #   in Loop: Header=BB10_43 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	smapin, %rdi
	callq	clearerr
	jmp	.LBB10_43
.LBB10_49:                              # %while.end.133
	jmp	.LBB10_50
.LBB10_50:                              # %if.end.134
	movl	yy_n_chars, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 28(%rcx)
.LBB10_51:                              # %if.end.137
	cmpl	$0, yy_n_chars
	jne	.LBB10_56
# BB#52:                                # %if.then.140
	cmpl	$0, -28(%rbp)
	jne	.LBB10_54
# BB#53:                                # %if.then.143
	movl	$1, -36(%rbp)
	movq	smapin, %rdi
	callq	smaprestart
	jmp	.LBB10_55
.LBB10_54:                              # %if.else.144
	movl	$2, -36(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$2, 56(%rax)
.LBB10_55:                              # %if.end.147
	jmp	.LBB10_57
.LBB10_56:                              # %if.else.148
	movl	$0, -36(%rbp)
.LBB10_57:                              # %if.end.149
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
	movq	%rcx, smaptext
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_58:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	yy_get_next_buffer, .Lfunc_end10-yy_get_next_buffer
	.cfi_endproc

	.globl	smapwrap
	.align	16, 0x90
	.type	smapwrap,@function
smapwrap:                               # @smapwrap
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
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	smapwrap, .Lfunc_end11-smapwrap
	.cfi_endproc

	.globl	smaprestart
	.align	16, 0x90
	.type	smaprestart,@function
smaprestart:                            # @smaprestart
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, yy_buffer_stack
	je	.LBB12_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB12_4
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB12_4
	jmp	.LBB12_3
.LBB12_3:                               # %if.then
	callq	smapensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	smapin, %rdi
	callq	smap_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB12_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB12_6
# BB#5:                                 # %cond.true.4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_7:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	smap_init_buffer
	callq	smap_load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	smaprestart, .Lfunc_end12-smaprestart
	.cfi_endproc

	.align	16, 0x90
	.type	yy_fatal_error,@function
yy_fatal_error:                         # @yy_fatal_error
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
	movabsq	$.L.str.14, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end13:
	.size	yy_fatal_error, .Lfunc_end13-yy_fatal_error
	.cfi_endproc

	.align	16, 0x90
	.type	smap_init_buffer,@function
smap_init_buffer:                       # @smap_init_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	smap_flush_buffer
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB14_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.LBB14_5:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB14_7
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
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end.7
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
.Lfunc_end14:
	.size	smap_init_buffer, .Lfunc_end14-smap_init_buffer
	.cfi_endproc

	.globl	smap_switch_to_buffer
	.align	16, 0x90
	.type	smap_switch_to_buffer,@function
smap_switch_to_buffer:                  # @smap_switch_to_buffer
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
	movq	%rdi, -8(%rbp)
	callq	smapensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB15_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB15_5
# BB#4:                                 # %if.then
	jmp	.LBB15_10
.LBB15_5:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB15_7
# BB#6:                                 # %cond.true.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB15_8
	jmp	.LBB15_9
.LBB15_7:                               # %cond.false.5
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_8
	jmp	.LBB15_9
.LBB15_8:                               # %if.then.6
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
.LBB15_9:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	smap_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB15_10:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	smap_switch_to_buffer, .Lfunc_end15-smap_switch_to_buffer
	.cfi_endproc

	.globl	smapalloc
	.align	16, 0x90
	.type	smapalloc,@function
smapalloc:                              # @smapalloc
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
                                        # kill: RDI<def> EDI<kill>
	callq	malloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	smapalloc, .Lfunc_end16-smapalloc
	.cfi_endproc

	.globl	smap_delete_buffer
	.align	16, 0x90
	.type	smap_delete_buffer,@function
smap_delete_buffer:                     # @smap_delete_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_10
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB17_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB17_5
.LBB17_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_7
# BB#6:                                 # %if.then.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	$0, (%rcx,%rax,8)
.LBB17_7:                               # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB17_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	smapfree
.LBB17_9:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	smapfree
.LBB17_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	smap_delete_buffer, .Lfunc_end17-smap_delete_buffer
	.cfi_endproc

	.globl	smapfree
	.align	16, 0x90
	.type	smapfree,@function
smapfree:                               # @smapfree
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	smapfree, .Lfunc_end18-smapfree
	.cfi_endproc

	.globl	smap_flush_buffer
	.align	16, 0x90
	.type	smap_flush_buffer,@function
smap_flush_buffer:                      # @smap_flush_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_7
.LBB19_2:                               # %if.end
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
	je	.LBB19_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB19_5
.LBB19_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_7
# BB#6:                                 # %if.then.7
	callq	smap_load_buffer_state
.LBB19_7:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	smap_flush_buffer, .Lfunc_end19-smap_flush_buffer
	.cfi_endproc

	.globl	smappush_buffer_state
	.align	16, 0x90
	.type	smappush_buffer_state,@function
smappush_buffer_state:                  # @smappush_buffer_state
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_11
.LBB20_2:                               # %if.end
	callq	smapensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB20_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB20_5
	jmp	.LBB20_6
.LBB20_4:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_5
	jmp	.LBB20_6
.LBB20_5:                               # %if.then.2
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
.LBB20_6:                               # %if.end.5
	cmpq	$0, yy_buffer_stack
	je	.LBB20_8
# BB#7:                                 # %cond.true.7
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB20_9
	jmp	.LBB20_10
.LBB20_8:                               # %cond.false.10
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_9
	jmp	.LBB20_10
.LBB20_9:                               # %if.then.11
	movq	yy_buffer_stack_top, %rax
	addq	$1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB20_10:                              # %if.end.12
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	smap_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB20_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	smappush_buffer_state, .Lfunc_end20-smappush_buffer_state
	.cfi_endproc

	.globl	smappop_buffer_state
	.align	16, 0x90
	.type	smappop_buffer_state,@function
smappop_buffer_state:                   # @smappop_buffer_state
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
	subq	$16, %rsp
	cmpq	$0, yy_buffer_stack
	je	.LBB21_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB21_4
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB21_4
	jmp	.LBB21_3
.LBB21_3:                               # %if.then
	jmp	.LBB21_13
.LBB21_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB21_6
# BB#5:                                 # %cond.true.3
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB21_7
.LBB21_7:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	callq	smap_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	cmpq	$0, yy_buffer_stack_top
	jbe	.LBB21_9
# BB#8:                                 # %if.then.7
	movq	yy_buffer_stack_top, %rax
	addq	$-1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB21_9:                               # %if.end.8
	cmpq	$0, yy_buffer_stack
	je	.LBB21_11
# BB#10:                                # %cond.true.10
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB21_12
	jmp	.LBB21_13
.LBB21_11:                              # %cond.false.13
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB21_12
	jmp	.LBB21_13
.LBB21_12:                              # %if.then.14
	callq	smap_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB21_13:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	smappop_buffer_state, .Lfunc_end21-smappop_buffer_state
	.cfi_endproc

	.globl	smap_scan_buffer
	.align	16, 0x90
	.type	smap_scan_buffer,@function
smap_scan_buffer:                       # @smap_scan_buffer
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jb	.LBB22_3
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB22_3
# BB#2:                                 # %lor.lhs.false.3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB22_4
.LBB22_3:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB22_7
.LBB22_4:                               # %if.end
	movl	$64, %edi
	callq	smapalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.7, %rdi
	callq	yy_fatal_error
.LBB22_6:                               # %if.end.11
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
	callq	smap_switch_to_buffer
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB22_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	smap_scan_buffer, .Lfunc_end22-smap_scan_buffer
	.cfi_endproc

	.globl	smap_scan_string
	.align	16, 0x90
	.type	smap_scan_string,@function
smap_scan_string:                       # @smap_scan_string
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
	callq	smap_scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	smap_scan_string, .Lfunc_end23-smap_scan_string
	.cfi_endproc

	.globl	smap_scan_bytes
	.align	16, 0x90
	.type	smap_scan_bytes,@function
smap_scan_bytes:                        # @smap_scan_bytes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	$2, %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	smapalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	callq	yy_fatal_error
.LBB24_2:                               # %if.end
	movl	$0, -40(%rbp)
.LBB24_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB24_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB24_3
.LBB24_6:                               # %for.end
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
	callq	smap_scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.9, %rdi
	callq	yy_fatal_error
.LBB24_8:                               # %if.end.11
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	smap_scan_bytes, .Lfunc_end24-smap_scan_bytes
	.cfi_endproc

	.globl	smapget_lineno
	.align	16, 0x90
	.type	smapget_lineno,@function
smapget_lineno:                         # @smapget_lineno
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
	movl	smaplineno, %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	smapget_lineno, .Lfunc_end25-smapget_lineno
	.cfi_endproc

	.globl	smapget_in
	.align	16, 0x90
	.type	smapget_in,@function
smapget_in:                             # @smapget_in
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
	movq	smapin, %rax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	smapget_in, .Lfunc_end26-smapget_in
	.cfi_endproc

	.globl	smapget_out
	.align	16, 0x90
	.type	smapget_out,@function
smapget_out:                            # @smapget_out
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
	movq	smapout, %rax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	smapget_out, .Lfunc_end27-smapget_out
	.cfi_endproc

	.globl	smapget_leng
	.align	16, 0x90
	.type	smapget_leng,@function
smapget_leng:                           # @smapget_leng
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
	movl	smapleng, %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	smapget_leng, .Lfunc_end28-smapget_leng
	.cfi_endproc

	.globl	smapget_text
	.align	16, 0x90
	.type	smapget_text,@function
smapget_text:                           # @smapget_text
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
	movq	smaptext, %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	smapget_text, .Lfunc_end29-smapget_text
	.cfi_endproc

	.globl	smapset_lineno
	.align	16, 0x90
	.type	smapset_lineno,@function
smapset_lineno:                         # @smapset_lineno
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
	movl	%edi, smaplineno
	popq	%rbp
	retq
.Lfunc_end30:
	.size	smapset_lineno, .Lfunc_end30-smapset_lineno
	.cfi_endproc

	.globl	smapset_in
	.align	16, 0x90
	.type	smapset_in,@function
smapset_in:                             # @smapset_in
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, smapin
	popq	%rbp
	retq
.Lfunc_end31:
	.size	smapset_in, .Lfunc_end31-smapset_in
	.cfi_endproc

	.globl	smapset_out
	.align	16, 0x90
	.type	smapset_out,@function
smapset_out:                            # @smapset_out
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, smapout
	popq	%rbp
	retq
.Lfunc_end32:
	.size	smapset_out, .Lfunc_end32-smapset_out
	.cfi_endproc

	.globl	smapget_debug
	.align	16, 0x90
	.type	smapget_debug,@function
smapget_debug:                          # @smapget_debug
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
	movl	smap_flex_debug, %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	smapget_debug, .Lfunc_end33-smapget_debug
	.cfi_endproc

	.globl	smapset_debug
	.align	16, 0x90
	.type	smapset_debug,@function
smapset_debug:                          # @smapset_debug
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, smap_flex_debug
	popq	%rbp
	retq
.Lfunc_end34:
	.size	smapset_debug, .Lfunc_end34-smapset_debug
	.cfi_endproc

	.globl	smaplex_destroy
	.align	16, 0x90
	.type	smaplex_destroy,@function
smaplex_destroy:                        # @smaplex_destroy
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
	subq	$32, %rsp
	jmp	.LBB35_1
.LBB35_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB35_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB35_4
.LBB35_3:                               # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB35_4
.LBB35_4:                               # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB35_9
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB35_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_7:                               # %cond.false.5
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_8:                               # %cond.end.6
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	smap_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	callq	smappop_buffer_state
	jmp	.LBB35_1
.LBB35_9:                               # %while.end
	movq	yy_buffer_stack, %rax
	movq	%rax, %rdi
	callq	smapfree
	movq	$0, yy_buffer_stack
	callq	yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	smaplex_destroy, .Lfunc_end35-smaplex_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	yy_init_globals,@function
yy_init_globals:                        # @yy_init_globals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	$1, smaplineno
	movq	$0, yy_buffer_stack
	movq	$0, yy_buffer_stack_top
	movq	$0, yy_buffer_stack_max
	movq	$0, yy_c_buf_p
	movl	$0, yy_init
	movl	$0, yy_start
	movq	$0, smapin
	movq	$0, smapout
	popq	%rbp
	retq
.Lfunc_end36:
	.size	yy_init_globals, .Lfunc_end36-yy_init_globals
	.cfi_endproc

	.globl	smaprealloc
	.align	16, 0x90
	.type	smaprealloc,@function
smaprealloc:                            # @smaprealloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
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
.Lfunc_end37:
	.size	smaprealloc, .Lfunc_end37-smaprealloc
	.cfi_endproc

	.globl	sheets_map_load
	.align	16, 0x90
	.type	sheets_map_load,@function
sheets_map_load:                        # @sheets_map_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, sheets_map_load.first_time
	je	.LBB38_2
# BB#1:                                 # %if.then
	movabsq	$string_stack, %rdi
	xorl	%eax, %eax
	movabsq	$xmalloc, %rcx
	movabsq	$free, %r8
	movl	$0, sheets_map_load.first_time
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_obstack_begin
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB38_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	yy_open
.LBB38_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	smaplex
	movl	%eax, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB38_13
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB38_5
	jmp	.LBB38_14
.LBB38_14:                              # %while.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB38_6
	jmp	.LBB38_15
.LBB38_15:                              # %while.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB38_9
	jmp	.LBB38_12
.LBB38_5:                               # %sw.bb
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	token_val, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB38_12
.LBB38_6:                               # %sw.bb.3
                                        #   in Loop: Header=BB38_3 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB38_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB38_3 Depth=1
	movabsq	$.L.str.10, %rdi
	movq	yyfilename, %rdx
	movl	smaplineno, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	token_val, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB38_8:                               # %if.end.8
                                        #   in Loop: Header=BB38_3 Depth=1
	xorl	%esi, %esi
	movq	token_val, %rdi
	movb	insensitive_p, %al
	movq	-24(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	callq	sheets_map_add
	jmp	.LBB38_12
.LBB38_9:                               # %sw.bb.10
                                        #   in Loop: Header=BB38_3 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB38_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB38_3 Depth=1
	movabsq	$.L.str.10, %rdi
	movq	yyfilename, %rdx
	movl	smaplineno, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	token_val, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB38_11:                              # %if.end.15
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	$1, %esi
	movq	token_val, %rdi
	movb	insensitive_p, %al
	movq	-24(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	callq	sheets_map_add
.LBB38_12:                              # %sw.epilog
                                        #   in Loop: Header=BB38_3 Depth=1
	jmp	.LBB38_3
.LBB38_13:                              # %while.end
	callq	yy_close
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	sheets_map_load, .Lfunc_end38-sheets_map_load
	.cfi_endproc

	.align	16, 0x90
	.type	yy_open,@function
yy_open:                                # @yy_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	xstrdup
	movq	%rax, yyfilename
	movq	yyfilename, %rdi
	callq	xrfopen
	movq	%rax, smapin
	movl	$0, include_stack_ptr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	yy_open, .Lfunc_end39-yy_open
	.cfi_endproc

	.align	16, 0x90
	.type	yy_close,@function
yy_close:                               # @yy_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	smapin, %rdi
	callq	fclose
	movq	yyfilename, %rdi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	yy_close, .Lfunc_end40-yy_close
	.cfi_endproc

	.type	smapin,@object          # @smapin
	.bss
	.globl	smapin
	.align	8
smapin:
	.quad	0
	.size	smapin, 8

	.type	smapout,@object         # @smapout
	.globl	smapout
	.align	8
smapout:
	.quad	0
	.size	smapout, 8

	.type	smaplineno,@object      # @smaplineno
	.data
	.globl	smaplineno
	.align	4
smaplineno:
	.long	1                       # 0x1
	.size	smaplineno, 4

	.type	smap_flex_debug,@object # @smap_flex_debug
	.bss
	.globl	smap_flex_debug
	.align	4
smap_flex_debug:
	.long	0                       # 0x0
	.size	smap_flex_debug, 4

	.type	yy_init,@object         # @yy_init
	.local	yy_init
	.comm	yy_init,4,4
	.type	yy_start,@object        # @yy_start
	.local	yy_start
	.comm	yy_start,4,4
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
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
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
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	21                      # 0x15
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	22                      # 0x16
	.long	7                       # 0x7
	.long	23                      # 0x17
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	24                      # 0x18
	.long	7                       # 0x7
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	7                       # 0x7
	.long	28                      # 0x1c
	.long	7                       # 0x7
	.long	7                       # 0x7
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
	.short	39                      # 0x27
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	7                       # 0x7
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	7                       # 0x7
	.short	22                      # 0x16
	.short	21                      # 0x15
	.short	8                       # 0x8
	.short	38                      # 0x26
	.short	37                      # 0x25
	.short	36                      # 0x24
	.short	23                      # 0x17
	.short	38                      # 0x26
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	22                      # 0x16
	.short	8                       # 0x8
	.short	20                      # 0x14
	.short	9                       # 0x9
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	37                      # 0x25
	.short	23                      # 0x17
	.short	35                      # 0x23
	.short	24                      # 0x18
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	0                       # 0x0
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	0                       # 0x0
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	6                       # 0x6
	.short	0                       # 0x0
	.size	yy_accept, 148

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
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	29                      # 0x1d
	.short	33                      # 0x21
	.short	154                     # 0x9a
	.short	174                     # 0xae
	.short	35                      # 0x23
	.short	42                      # 0x2a
	.short	0                       # 0x0
	.short	140                     # 0x8c
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	28                      # 0x1c
	.short	0                       # 0x0
	.short	174                     # 0xae
	.short	122                     # 0x7a
	.short	51                      # 0x33
	.short	0                       # 0x0
	.short	174                     # 0xae
	.short	103                     # 0x67
	.short	79                      # 0x4f
	.short	46                      # 0x2e
	.short	0                       # 0x0
	.short	112                     # 0x70
	.short	174                     # 0xae
	.short	97                      # 0x61
	.short	0                       # 0x0
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	110                     # 0x6e
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	108                     # 0x6c
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	0                       # 0x0
	.short	98                      # 0x62
	.short	106                     # 0x6a
	.short	0                       # 0x0
	.short	103                     # 0x67
	.short	0                       # 0x0
	.short	99                      # 0x63
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	100                     # 0x64
	.short	102                     # 0x66
	.short	111                     # 0x6f
	.short	0                       # 0x0
	.short	76                      # 0x4c
	.short	174                     # 0xae
	.short	174                     # 0xae
	.short	125                     # 0x7d
	.short	133                     # 0x85
	.short	141                     # 0x8d
	.short	146                     # 0x92
	.short	152                     # 0x98
	.short	159                     # 0x9f
	.short	48                      # 0x30
	.short	44                      # 0x2c
	.short	27                      # 0x1b
	.short	25                      # 0x19
	.short	165                     # 0xa5
	.size	yy_base, 170

	.type	yy_chk,@object          # @yy_chk
	.align	16
yy_chk:
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	83                      # 0x53
	.short	5                       # 0x5
	.short	82                      # 0x52
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	15                      # 0xf
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	81                      # 0x51
	.short	15                      # 0xf
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	80                      # 0x50
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	71                      # 0x47
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	28                      # 0x1c
	.short	57                      # 0x39
	.short	62                      # 0x3e
	.short	67                      # 0x43
	.short	60                      # 0x3c
	.short	68                      # 0x44
	.short	28                      # 0x1c
	.short	58                      # 0x3a
	.short	69                      # 0x45
	.short	46                      # 0x2e
	.short	67                      # 0x43
	.short	32                      # 0x20
	.short	57                      # 0x39
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	26                      # 0x1a
	.short	22                      # 0x16
	.short	62                      # 0x3e
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	18                      # 0x12
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	12                      # 0xc
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	7                       # 0x7
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	0                       # 0x0
	.short	78                      # 0x4e
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	0                       # 0x0
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	79                      # 0x4f
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	0                       # 0x0
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.size	yy_chk, 406

	.type	yy_def,@object          # @yy_def
	.align	16
yy_def:
	.short	0                       # 0x0
	.short	73                      # 0x49
	.short	1                       # 0x1
	.short	74                      # 0x4a
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	79                      # 0x4f
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	73                      # 0x49
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	80                      # 0x50
	.short	79                      # 0x4f
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	81                      # 0x51
	.short	77                      # 0x4d
	.short	73                      # 0x49
	.short	82                      # 0x52
	.short	73                      # 0x49
	.short	83                      # 0x53
	.short	77                      # 0x4d
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	77                      # 0x4d
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	73                      # 0x49
	.short	0                       # 0x0
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.size	yy_def, 170

	.type	yy_meta,@object         # @yy_meta
	.align	16
yy_meta:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.size	yy_meta, 116

	.type	yy_nxt,@object          # @yy_nxt
	.align	16
yy_nxt:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	8                       # 0x8
	.short	14                      # 0xe
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	15                      # 0xf
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	12                      # 0xc
	.short	17                      # 0x11
	.short	17                      # 0x11
	.short	66                      # 0x42
	.short	21                      # 0x15
	.short	64                      # 0x40
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	21                      # 0x15
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	27                      # 0x1b
	.short	19                      # 0x13
	.short	19                      # 0x13
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	61                      # 0x3d
	.short	28                      # 0x1c
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	59                      # 0x3b
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	31                      # 0x1f
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	31                      # 0x1f
	.short	41                      # 0x29
	.short	42                      # 0x2a
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	72                      # 0x48
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	45                      # 0x2d
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	45                      # 0x2d
	.short	45                      # 0x2d
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	45                      # 0x2d
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	65                      # 0x41
	.short	27                      # 0x1b
	.short	57                      # 0x39
	.short	63                      # 0x3f
	.short	70                      # 0x46
	.short	60                      # 0x3c
	.short	68                      # 0x44
	.short	58                      # 0x3a
	.short	62                      # 0x3e
	.short	69                      # 0x45
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	44                      # 0x2c
	.short	67                      # 0x43
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	25                      # 0x19
	.short	30                      # 0x1e
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	26                      # 0x1a
	.short	29                      # 0x1d
	.short	73                      # 0x49
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	73                      # 0x49
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	43                      # 0x2b
	.short	73                      # 0x49
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	73                      # 0x49
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	71                      # 0x47
	.short	7                       # 0x7
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.short	73                      # 0x49
	.size	yy_nxt, 406

	.type	smaptext,@object        # @smaptext
	.comm	smaptext,8,8
	.type	smapleng,@object        # @smapleng
	.comm	smapleng,4,4
	.type	yy_rule_can_match_eol,@object # @yy_rule_can_match_eol
	.align	16
yy_rule_can_match_eol:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	yy_rule_can_match_eol, 156

	.type	token_val,@object       # @token_val
	.local	token_val
	.comm	token_val,8,8
	.type	yyfilename,@object      # @yyfilename
	.local	yyfilename
	.comm	yyfilename,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected character `%c'"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"End of file `%s'.\n"
	.size	.L.str.1, 19

	.type	include_stack_ptr,@object # @include_stack_ptr
	.local	include_stack_ptr
	.comm	include_stack_ptr,4,4
	.type	string_stack,@object    # @string_stack
	.local	string_stack
	.comm	string_stack,88,8
	.type	insensitive_p,@object   # @insensitive_p
	.local	insensitive_p
	.comm	insensitive_p,1,1
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"end of line inside a %s"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/../"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<..>"
	.size	.L.str.4, 5

	.type	yy_n_chars,@object      # @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
	.type	yy_did_buffer_switch_on_eof,@object # @yy_did_buffer_switch_on_eof
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str.5, 51

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"out of dynamic memory in smap_create_buffer()"
	.size	.L.str.6, 46

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"out of dynamic memory in smap_scan_buffer()"
	.size	.L.str.7, 44

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"out of dynamic memory in smap_scan_bytes()"
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"bad buffer in smap_scan_bytes()"
	.size	.L.str.9, 32

	.type	sheets_map_load.first_time,@object # @sheets_map_load.first_time
	.data
	.align	4
sheets_map_load.first_time:
	.long	1                       # 0x1
	.size	sheets_map_load.first_time, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"no key defined for `%s'"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.11, 56

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.12, 44

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"input in flex scanner failed"
	.size	.L.str.13, 29

	.type	yy_buffer_stack_max,@object # @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s\n"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"too many includes"
	.size	.L.str.15, 18

	.type	include_stack,@object   # @include_stack
	.local	include_stack
	.comm	include_stack,80,16
	.type	lineno_stack,@object    # @lineno_stack
	.local	lineno_stack
	.comm	lineno_stack,40,16
	.type	filename_stack,@object  # @filename_stack
	.local	filename_stack
	.comm	filename_stack,80,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%d: includes %s\n"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Back to file `%s'.\n"
	.size	.L.str.17, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
