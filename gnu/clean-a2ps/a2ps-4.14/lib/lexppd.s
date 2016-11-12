	.text
	.file	"lexppd.bc"
	.globl	ppdlex
	.align	16, 0x90
	.type	ppdlex,@function
ppdlex:                                 # @ppdlex
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
	subq	$528, %rsp              # imm = 0x210
	cmpl	$0, yy_init
	jne	.LBB0_12
# BB#1:                                 # %if.then
	movl	$1, yy_init
	cmpl	$0, yy_start
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	$1, yy_start
.LBB0_3:                                # %if.end
	cmpq	$0, ppdin
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movq	stdin, %rax
	movq	%rax, ppdin
.LBB0_5:                                # %if.end.5
	cmpq	$0, ppdout
	jne	.LBB0_7
# BB#6:                                 # %if.then.7
	movq	stdout, %rax
	movq	%rax, ppdout
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
	callq	ppdensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	ppdin, %rdi
	callq	ppd_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB0_11:                               # %if.end.13
	callq	ppd_load_buffer_state
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
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_127 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_63 Depth 2
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
	cmpl	$115, -8(%rbp)
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
	cmpl	$263, %ecx              # imm = 0x107
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
	movq	%rax, ppdtext
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, ppdleng
	movq	-16(%rbp), %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, yy_c_buf_p
	cmpl	$44, -28(%rbp)
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
	cmpl	ppdleng, %eax
	jge	.LBB0_35
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB0_30 Depth=4
	movslq	-36(%rbp), %rax
	movq	ppdtext, %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB0_33
# BB#32:                                # %if.then.80
                                        #   in Loop: Header=BB0_30 Depth=4
	movl	ppdlineno, %eax
	addl	$1, %eax
	movl	%eax, ppdlineno
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
	subq	$48, %rdx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	ja	.LBB0_227
# BB#230:                               # %do_action
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	-456(%rbp), %rax        # 8-byte Reload
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
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_228
.LBB0_40:                               # %sw.bb.85
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_228
.LBB0_41:                               # %sw.bb.86
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$3, yy_start
	jmp	.LBB0_228
.LBB0_42:                               # %sw.bb.87
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$5, yy_start
	jmp	.LBB0_228
.LBB0_43:                               # %sw.bb.88
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$7, yy_start
	jmp	.LBB0_228
.LBB0_44:                               # %sw.bb.89
	movl	$259, -4(%rbp)          # imm = 0x103
	jmp	.LBB0_229
.LBB0_45:                               # %sw.bb.90
	movl	$260, -4(%rbp)          # imm = 0x104
	jmp	.LBB0_229
.LBB0_46:                               # %sw.bb.91
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB0_229
.LBB0_47:                               # %sw.bb.92
	movl	$262, -4(%rbp)          # imm = 0x106
	jmp	.LBB0_229
.LBB0_48:                               # %sw.bb.93
	movq	ppdtext, %rdi
	callq	xstrdup
	movq	%rax, ppdlval
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB0_229
.LBB0_49:                               # %sw.bb.95
	movq	ppdtext, %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_229
.LBB0_50:                               # %sw.bb.98
	movl	$258, -4(%rbp)          # imm = 0x102
	jmp	.LBB0_229
.LBB0_51:                               # %sw.bb.99
	movabsq	$string_stack, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-56(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_53
# BB#52:                                # %if.then.102
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_53:                               # %if.end.103
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
	jne	.LBB0_55
# BB#54:                                # %if.then.109
	movq	-64(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB0_55:                               # %if.end.110
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
	jle	.LBB0_57
# BB#56:                                # %if.then.131
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_57:                               # %if.end.134
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
	jbe	.LBB0_60
# BB#58:                                # %land.lhs.true.143
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB0_60
# BB#59:                                # %if.then.147
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-88(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB0_61
.LBB0_60:                               # %if.else
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	obstack_free
.LBB0_61:                               # %if.end.150
	movl	$1, yy_start
	movq	-48(%rbp), %rdi
	callq	xstrdup
	movq	%rax, ppdlval
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB0_229
.LBB0_62:                               # %sw.bb.152
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdtext, %rax
	movsbl	1(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, -100(%rbp)
	movq	ppdtext, %rax
	addq	$2, %rax
	movq	%rax, -112(%rbp)
.LBB0_63:                               # %while.cond.159
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_65
# BB#64:                                # %while.body.161
                                        #   in Loop: Header=BB0_63 Depth=2
	movl	-100(%rbp), %eax
	shll	$3, %eax
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -112(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_63
.LBB0_65:                               # %while.end.166
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-120(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_67
# BB#66:                                # %if.then.174
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-120(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_67:                               # %if.end.175
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-120(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	jmp	.LBB0_228
.LBB0_68:                               # %sw.bb.179
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, -124(%rbp)
	movq	ppdtext, %rax
	addq	$2, %rax
	movq	%rax, -136(%rbp)
.LBB0_69:                               # %while.cond.185
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-136(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_79
# BB#70:                                # %while.body.187
                                        #   in Loop: Header=BB0_69 Depth=2
	movq	-136(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB0_73
# BB#71:                                # %land.lhs.true.191
                                        #   in Loop: Header=BB0_69 Depth=2
	movq	-136(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	jg	.LBB0_73
# BB#72:                                # %if.then.195
                                        #   in Loop: Header=BB0_69 Depth=2
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_78
.LBB0_73:                               # %if.else.202
                                        #   in Loop: Header=BB0_69 Depth=2
	movq	-136(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB0_76
# BB#74:                                # %land.lhs.true.206
                                        #   in Loop: Header=BB0_69 Depth=2
	movq	-136(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jg	.LBB0_76
# BB#75:                                # %if.then.210
                                        #   in Loop: Header=BB0_69 Depth=2
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_77
.LBB0_76:                               # %if.else.217
                                        #   in Loop: Header=BB0_69 Depth=2
	movl	-124(%rbp), %eax
	shll	$4, %eax
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, -124(%rbp)
.LBB0_77:                               # %if.end.223
                                        #   in Loop: Header=BB0_69 Depth=2
	jmp	.LBB0_78
.LBB0_78:                               # %if.end.224
                                        #   in Loop: Header=BB0_69 Depth=2
	jmp	.LBB0_69
.LBB0_79:                               # %while.end.225
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-144(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_81
# BB#80:                                # %if.then.233
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-144(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_81:                               # %if.end.234
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-124(%rbp), %eax
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	jmp	.LBB0_228
.LBB0_82:                               # %sw.bb.238
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-152(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_84
# BB#83:                                # %if.then.246
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-152(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_84:                               # %if.end.247
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-152(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$7, (%rcx)
	jmp	.LBB0_228
.LBB0_85:                               # %sw.bb.250
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-160(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_87
# BB#86:                                # %if.then.258
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-160(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_87:                               # %if.end.259
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-160(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$8, (%rcx)
	jmp	.LBB0_228
.LBB0_88:                               # %sw.bb.262
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-168(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_90
# BB#89:                                # %if.then.270
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-168(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_90:                               # %if.end.271
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-168(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$127, (%rcx)
	jmp	.LBB0_228
.LBB0_91:                               # %sw.bb.274
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-176(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_93
# BB#92:                                # %if.then.282
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-176(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_93:                               # %if.end.283
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-176(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$27, (%rcx)
	jmp	.LBB0_228
.LBB0_94:                               # %sw.bb.286
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-184(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_96
# BB#95:                                # %if.then.294
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-184(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_96:                               # %if.end.295
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-184(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$12, (%rcx)
	jmp	.LBB0_228
.LBB0_97:                               # %sw.bb.298
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-192(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_99
# BB#98:                                # %if.then.306
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-192(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_99:                               # %if.end.307
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-192(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$10, (%rcx)
	jmp	.LBB0_228
.LBB0_100:                              # %sw.bb.310
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-200(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_102
# BB#101:                               # %if.then.318
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-200(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_102:                              # %if.end.319
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$13, (%rcx)
	jmp	.LBB0_228
.LBB0_103:                              # %sw.bb.322
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-208(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_105
# BB#104:                               # %if.then.330
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-208(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_105:                              # %if.end.331
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-208(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$9, (%rcx)
	jmp	.LBB0_228
.LBB0_106:                              # %sw.bb.334
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-216(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_108
# BB#107:                               # %if.then.342
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-216(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_108:                              # %if.end.343
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-216(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$11, (%rcx)
	jmp	.LBB0_228
.LBB0_109:                              # %sw.bb.346
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-224(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_111
# BB#110:                               # %if.then.354
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-224(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_111:                              # %if.end.355
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdtext, %rax
	movb	1(%rax), %cl
	movq	-224(%rbp), %rax
	movq	24(%rax), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%cl, (%rdx)
	jmp	.LBB0_228
.LBB0_112:                              # %sw.bb.359
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -232(%rbp)
	movl	ppdleng, %ecx
	movl	%ecx, -236(%rbp)
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-236(%rbp), %rdx
	addq	%rdx, %rax
	movq	-232(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB0_114
# BB#113:                               # %if.then.368
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-232(%rbp), %rdi
	movl	-236(%rbp), %esi
	callq	_obstack_newchunk
.LBB0_114:                              # %if.end.369
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-232(%rbp), %rax
	movq	24(%rax), %rdi
	movq	ppdtext, %rsi
	movslq	-236(%rbp), %rdx
	callq	memcpy
	movl	-236(%rbp), %ecx
	movq	-232(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	jmp	.LBB0_228
.LBB0_115:                              # %sw.bb.375
	movabsq	$string_stack, %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-256(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_117
# BB#116:                               # %if.then.385
	movl	$1, %esi
	movq	-256(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_117:                              # %if.end.386
	movabsq	$string_stack, %rax
	movq	-256(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	$0, (%rdx)
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB0_119
# BB#118:                               # %if.then.397
	movq	-264(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB0_119:                              # %if.end.402
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-264(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$0, %rdx
	movq	-264(%rbp), %rsi
	movslq	48(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-264(%rbp), %rsi
	movl	48(%rsi), %eax
	xorl	$-1, %eax
	movslq	%eax, %rsi
	andq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-264(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-264(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-264(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	movq	-264(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-264(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB0_121
# BB#120:                               # %if.then.427
	movq	-264(%rbp), %rax
	movq	32(%rax), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_121:                              # %if.end.430
	movabsq	$string_stack, %rax
	movq	-264(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-264(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-272(%rbp), %rcx
	movq	%rcx, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	%rax, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_124
# BB#122:                               # %land.lhs.true.441
	movq	-296(%rbp), %rax
	movq	-288(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB0_124
# BB#123:                               # %if.then.445
	movq	-296(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-288(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB0_125
.LBB0_124:                              # %if.else.448
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	obstack_free
.LBB0_125:                              # %if.end.449
	movl	$1, yy_start
	movq	-248(%rbp), %rdi
	callq	xstrdup
	movq	%rax, ppdlval
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB0_229
.LBB0_126:                              # %sw.bb.451
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdtext, %rax
	movsbl	1(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, -300(%rbp)
	movq	ppdtext, %rax
	addq	$2, %rax
	movq	%rax, -312(%rbp)
.LBB0_127:                              # %while.cond.460
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-312(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_129
# BB#128:                               # %while.body.462
                                        #   in Loop: Header=BB0_127 Depth=2
	movl	-300(%rbp), %eax
	shll	$3, %eax
	movq	-312(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -312(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB0_127
.LBB0_129:                              # %while.end.468
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-320(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_131
# BB#130:                               # %if.then.476
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-320(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_131:                              # %if.end.477
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-300(%rbp), %eax
	movb	%al, %cl
	movq	-320(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	jmp	.LBB0_228
.LBB0_132:                              # %sw.bb.481
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, -324(%rbp)
	movq	ppdtext, %rax
	addq	$2, %rax
	movq	%rax, -336(%rbp)
.LBB0_133:                              # %while.cond.487
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-336(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_143
# BB#134:                               # %while.body.489
                                        #   in Loop: Header=BB0_133 Depth=2
	movq	-336(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$97, %ecx
	jl	.LBB0_137
# BB#135:                               # %land.lhs.true.493
                                        #   in Loop: Header=BB0_133 Depth=2
	movq	-336(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	jg	.LBB0_137
# BB#136:                               # %if.then.497
                                        #   in Loop: Header=BB0_133 Depth=2
	movl	-324(%rbp), %eax
	shll	$4, %eax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -336(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB0_142
.LBB0_137:                              # %if.else.504
                                        #   in Loop: Header=BB0_133 Depth=2
	movq	-336(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$65, %ecx
	jl	.LBB0_140
# BB#138:                               # %land.lhs.true.508
                                        #   in Loop: Header=BB0_133 Depth=2
	movq	-336(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jg	.LBB0_140
# BB#139:                               # %if.then.512
                                        #   in Loop: Header=BB0_133 Depth=2
	movl	-324(%rbp), %eax
	shll	$4, %eax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -336(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB0_141
.LBB0_140:                              # %if.else.519
                                        #   in Loop: Header=BB0_133 Depth=2
	movl	-324(%rbp), %eax
	shll	$4, %eax
	movq	-336(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -336(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, -324(%rbp)
.LBB0_141:                              # %if.end.525
                                        #   in Loop: Header=BB0_133 Depth=2
	jmp	.LBB0_142
.LBB0_142:                              # %if.end.526
                                        #   in Loop: Header=BB0_133 Depth=2
	jmp	.LBB0_133
.LBB0_143:                              # %while.end.527
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-344(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_145
# BB#144:                               # %if.then.535
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-344(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_145:                              # %if.end.536
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-324(%rbp), %eax
	movb	%al, %cl
	movq	-344(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	jmp	.LBB0_228
.LBB0_146:                              # %sw.bb.540
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-352(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_148
# BB#147:                               # %if.then.548
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-352(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_148:                              # %if.end.549
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-352(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$7, (%rcx)
	jmp	.LBB0_228
.LBB0_149:                              # %sw.bb.552
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-360(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_151
# BB#150:                               # %if.then.560
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-360(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_151:                              # %if.end.561
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-360(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$8, (%rcx)
	jmp	.LBB0_228
.LBB0_152:                              # %sw.bb.564
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-368(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_154
# BB#153:                               # %if.then.572
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-368(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_154:                              # %if.end.573
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-368(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$127, (%rcx)
	jmp	.LBB0_228
.LBB0_155:                              # %sw.bb.576
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-376(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_157
# BB#156:                               # %if.then.584
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-376(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_157:                              # %if.end.585
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-376(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$27, (%rcx)
	jmp	.LBB0_228
.LBB0_158:                              # %sw.bb.588
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-384(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_160
# BB#159:                               # %if.then.596
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-384(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_160:                              # %if.end.597
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-384(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$12, (%rcx)
	jmp	.LBB0_228
.LBB0_161:                              # %sw.bb.600
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-392(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_163
# BB#162:                               # %if.then.608
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-392(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_163:                              # %if.end.609
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-392(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$10, (%rcx)
	jmp	.LBB0_228
.LBB0_164:                              # %sw.bb.612
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-400(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_166
# BB#165:                               # %if.then.620
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-400(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_166:                              # %if.end.621
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-400(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$13, (%rcx)
	jmp	.LBB0_228
.LBB0_167:                              # %sw.bb.624
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-408(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_169
# BB#168:                               # %if.then.632
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-408(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_169:                              # %if.end.633
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-408(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$9, (%rcx)
	jmp	.LBB0_228
.LBB0_170:                              # %sw.bb.636
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-416(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_172
# BB#171:                               # %if.then.644
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-416(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_172:                              # %if.end.645
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-416(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$11, (%rcx)
	jmp	.LBB0_228
.LBB0_173:                              # %sw.bb.648
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-424(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB0_175
# BB#174:                               # %if.then.656
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %esi
	movq	-424(%rbp), %rdi
	callq	_obstack_newchunk
.LBB0_175:                              # %if.end.657
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdtext, %rax
	movb	1(%rax), %cl
	movq	-424(%rbp), %rax
	movq	24(%rax), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%cl, (%rdx)
	jmp	.LBB0_228
.LBB0_176:                              # %sw.bb.661
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$string_stack, %rax
	movq	%rax, -432(%rbp)
	movl	ppdleng, %ecx
	movl	%ecx, -436(%rbp)
	movq	-432(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-436(%rbp), %rdx
	addq	%rdx, %rax
	movq	-432(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB0_178
# BB#177:                               # %if.then.672
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-432(%rbp), %rdi
	movl	-436(%rbp), %esi
	callq	_obstack_newchunk
.LBB0_178:                              # %if.end.673
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-432(%rbp), %rax
	movq	24(%rax), %rdi
	movq	ppdtext, %rsi
	movslq	-436(%rbp), %rdx
	callq	memcpy
	movl	-436(%rbp), %ecx
	movq	-432(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	jmp	.LBB0_228
.LBB0_179:                              # %sw.bb.679
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_228
.LBB0_180:                              # %sw.bb.680
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$10, include_stack_ptr
	jl	.LBB0_182
# BB#181:                               # %if.then.683
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB0_182:                              # %if.end.685
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB0_184
# BB#183:                               # %cond.true.687
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_185
.LBB0_184:                              # %cond.false.689
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_185
.LBB0_185:                              # %cond.end
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movslq	include_stack_ptr, %rcx
	movq	%rax, include_stack(,%rcx,8)
	movq	ppdfilename, %rax
	movl	include_stack_ptr, %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, include_stack_ptr
	movslq	%edx, %rcx
	movq	%rax, filename_stack(,%rcx,8)
	movq	ppdtext, %rax
	addq	$1, %rax
	movq	%rax, ppdtext
	movl	ppdleng, %edx
	subl	$2, %edx
	movslq	%edx, %rax
	movq	ppdtext, %rcx
	movb	$0, (%rcx,%rax)
# BB#186:                               # %do.body.699
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_188
# BB#187:                               # %if.then.702
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movq	ppdfilename, %rdx
	movl	ppdlineno, %ecx
	movq	ppdtext, %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB0_188:                              # %if.end.704
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_189
.LBB0_189:                              # %do.end.706
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	ppdpath, %rdi
	movq	ppdfilename, %rsi
	movq	ppdtext, %rdx
	callq	xpw_find_included_file
	movq	%rax, ppdfilename
	movq	ppdfilename, %rdi
	callq	xrfopen
	movl	$16384, %esi            # imm = 0x4000
	movq	%rax, ppdin
	movq	ppdin, %rdi
	callq	ppd_create_buffer
	movq	%rax, %rdi
	callq	ppd_switch_to_buffer
	movl	$1, yy_start
	jmp	.LBB0_228
.LBB0_190:                              # %sw.bb.710
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_191
.LBB0_191:                              # %do.body.711
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_193
# BB#192:                               # %if.then.714
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movq	ppdfilename, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB0_193:                              # %if.end.716
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_194
.LBB0_194:                              # %do.end.718
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	include_stack_ptr, %eax
	addl	$-1, %eax
	movl	%eax, include_stack_ptr
	cmpl	$0, %eax
	jge	.LBB0_196
# BB#195:                               # %if.then.721
	movl	$0, -4(%rbp)
	jmp	.LBB0_229
.LBB0_196:                              # %if.else.722
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdin, %rdi
	callq	fclose
	cmpq	$0, yy_buffer_stack
	movl	%eax, -484(%rbp)        # 4-byte Spill
	je	.LBB0_198
# BB#197:                               # %cond.true.725
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB0_199
.LBB0_198:                              # %cond.false.727
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB0_199
.LBB0_199:                              # %cond.end.728
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	ppd_delete_buffer
# BB#200:                               # %do.body.730
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, ppdfilename
	je	.LBB0_202
# BB#201:                               # %if.then.732
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdfilename, %rdi
	callq	free
.LBB0_202:                              # %if.end.733
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_203
.LBB0_203:                              # %do.end.735
                                        #   in Loop: Header=BB0_13 Depth=1
	movslq	include_stack_ptr, %rax
	movq	filename_stack(,%rax,8), %rax
	movq	%rax, ppdfilename
	movslq	include_stack_ptr, %rax
	movq	include_stack(,%rax,8), %rdi
	callq	ppd_switch_to_buffer
# BB#204:                               # %do.body.740
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_206
# BB#205:                               # %if.then.743
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movq	ppdfilename, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB0_206:                              # %if.end.745
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_207
.LBB0_207:                              # %do.end.747
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_208
.LBB0_208:                              # %if.end.748
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_228
.LBB0_209:                              # %sw.bb.749
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	ppdtext, %rdi
	movslq	ppdleng, %rsi
	movq	ppdout, %rcx
	callq	fwrite
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB0_228
.LBB0_210:                              # %sw.bb.752
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	-16(%rbp), %rax
	movq	ppdtext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -440(%rbp)
	movb	yy_hold_char, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB0_212
# BB#211:                               # %if.then.762
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	28(%rax), %edx
	movl	%edx, yy_n_chars
	movq	ppdin, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 56(%rax)
.LBB0_212:                              # %if.end.767
                                        #   in Loop: Header=BB0_37 Depth=4
	movq	yy_c_buf_p, %rax
	movslq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_216
# BB#213:                               # %if.then.773
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	ppdtext, %rax
	movslq	-440(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	yy_try_NUL_trans
	movl	%eax, -444(%rbp)
	movq	ppdtext, %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -444(%rbp)
	je	.LBB0_215
# BB#214:                               # %if.then.781
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	yy_c_buf_p, %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, -16(%rbp)
	movl	-444(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB0_14
.LBB0_215:                              # %if.else.783
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_25
.LBB0_216:                              # %if.else.784
                                        #   in Loop: Header=BB0_37 Depth=4
	callq	yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	je	.LBB0_223
	jmp	.LBB0_231
.LBB0_231:                              # %if.else.784
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	-516(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	je	.LBB0_217
	jmp	.LBB0_232
.LBB0_232:                              # %if.else.784
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	-516(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	je	.LBB0_224
	jmp	.LBB0_225
.LBB0_217:                              # %sw.bb.786
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	$0, yy_did_buffer_switch_on_eof
	callq	ppdwrap
	cmpl	$0, %eax
	je	.LBB0_219
# BB#218:                               # %if.then.789
                                        #   in Loop: Header=BB0_37 Depth=4
	movl	$2, %eax
	movq	ppdtext, %rcx
	movq	%rcx, yy_c_buf_p
	movl	yy_start, %edx
	subl	$1, %edx
	movl	%eax, -528(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-528(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$44, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_37
.LBB0_219:                              # %if.else.794
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, yy_did_buffer_switch_on_eof
	jne	.LBB0_221
# BB#220:                               # %if.then.796
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	ppdin, %rdi
	callq	ppdrestart
.LBB0_221:                              # %if.end.797
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_222
.LBB0_222:                              # %if.end.798
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_225
.LBB0_223:                              # %sw.bb.799
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	ppdtext, %rax
	movslq	-440(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	ppdtext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_14
.LBB0_224:                              # %sw.bb.804
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
	movq	ppdtext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_25
.LBB0_225:                              # %sw.epilog
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_226
.LBB0_226:                              # %if.end.811
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_228
.LBB0_227:                              # %sw.default
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.4, %rdi
	callq	yy_fatal_error
.LBB0_228:                              # %sw.epilog.812
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_13
.LBB0_229:                              # %return
	movl	-4(%rbp), %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ppdlex, .Lfunc_end0-ppdlex
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
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_48
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_62
	.quad	.LBB0_68
	.quad	.LBB0_82
	.quad	.LBB0_85
	.quad	.LBB0_88
	.quad	.LBB0_91
	.quad	.LBB0_94
	.quad	.LBB0_97
	.quad	.LBB0_100
	.quad	.LBB0_103
	.quad	.LBB0_106
	.quad	.LBB0_109
	.quad	.LBB0_112
	.quad	.LBB0_115
	.quad	.LBB0_126
	.quad	.LBB0_132
	.quad	.LBB0_146
	.quad	.LBB0_149
	.quad	.LBB0_152
	.quad	.LBB0_155
	.quad	.LBB0_158
	.quad	.LBB0_161
	.quad	.LBB0_164
	.quad	.LBB0_167
	.quad	.LBB0_170
	.quad	.LBB0_173
	.quad	.LBB0_176
	.quad	.LBB0_179
	.quad	.LBB0_180
	.quad	.LBB0_209
	.quad	.LBB0_210
	.quad	.LBB0_190
	.quad	.LBB0_190
	.quad	.LBB0_190
	.quad	.LBB0_190

	.text
	.align	16, 0x90
	.type	ppdensure_buffer_stack,@function
ppdensure_buffer_stack:                 # @ppdensure_buffer_stack
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
	callq	ppdalloc
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
	callq	ppdrealloc
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
	.size	ppdensure_buffer_stack, .Lfunc_end1-ppdensure_buffer_stack
	.cfi_endproc

	.globl	ppd_create_buffer
	.align	16, 0x90
	.type	ppd_create_buffer,@function
ppd_create_buffer:                      # @ppd_create_buffer
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
	callq	ppdalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	callq	yy_fatal_error
.LBB2_2:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	addl	$2, %eax
	movl	%eax, %edi
	callq	ppdalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.5, %rdi
	callq	yy_fatal_error
.LBB2_4:                                # %if.end.6
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	ppd_init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ppd_create_buffer, .Lfunc_end2-ppd_create_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	ppd_load_buffer_state,@function
ppd_load_buffer_state:                  # @ppd_load_buffer_state
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
	movq	%rax, ppdtext
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, ppdin
	movq	yy_c_buf_p, %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ppd_load_buffer_state, .Lfunc_end3-ppd_load_buffer_state
	.cfi_endproc

	.globl	ppd_switch_to_buffer
	.align	16, 0x90
	.type	ppd_switch_to_buffer,@function
ppd_switch_to_buffer:                   # @ppd_switch_to_buffer
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
	movq	%rdi, -8(%rbp)
	callq	ppdensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then
	jmp	.LBB4_10
.LBB4_5:                                # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB4_7
# BB#6:                                 # %cond.true.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_7:                                # %cond.false.5
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_8:                                # %if.then.6
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
.LBB4_9:                                # %if.end.9
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	ppd_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB4_10:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ppd_switch_to_buffer, .Lfunc_end4-ppd_switch_to_buffer
	.cfi_endproc

	.globl	ppd_delete_buffer
	.align	16, 0x90
	.type	ppd_delete_buffer,@function
ppd_delete_buffer:                      # @ppd_delete_buffer
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_10
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_7
# BB#6:                                 # %if.then.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	$0, (%rcx,%rax,8)
.LBB5_7:                                # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB5_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	ppdfree
.LBB5_9:                                # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	ppdfree
.LBB5_10:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ppd_delete_buffer, .Lfunc_end5-ppd_delete_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_previous_state,@function
yy_get_previous_state:                  # @yy_get_previous_state
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
	movl	yy_start, %eax
	movl	%eax, -4(%rbp)
	movq	ppdtext, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	movq	-16(%rbp), %rax
	cmpq	yy_c_buf_p, %rax
	jae	.LBB6_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movslq	-4(%rbp), %rdx
	cmpw	$0, yy_accept(,%rdx,2)
	je	.LBB6_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %while.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB6_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB6_8 Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$115, -4(%rbp)
	jl	.LBB6_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB6_11:                               # %if.end.25
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_8
.LBB6_12:                               # %while.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_14:                               # %for.end
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	yy_get_previous_state, .Lfunc_end6-yy_get_previous_state
	.cfi_endproc

	.align	16, 0x90
	.type	yy_try_NUL_trans,@function
yy_try_NUL_trans:                       # @yy_try_NUL_trans
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
	movl	%edi, -4(%rbp)
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	$1, -17(%rbp)
	movslq	-4(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB7_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$115, -4(%rbp)
	jl	.LBB7_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB7_3 Depth=1
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB7_6:                                # %if.end.18
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_3
.LBB7_7:                                # %while.end
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$114, -4(%rbp)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB7_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB7_10:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end7:
	.size	yy_try_NUL_trans, .Lfunc_end7-yy_try_NUL_trans
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_next_buffer,@function
yy_get_next_buffer:                     # @yy_get_next_buffer
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
	subq	$112, %rsp
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	ppdtext, %rax
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
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	callq	yy_fatal_error
.LBB8_2:                                # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB8_6
# BB#3:                                 # %if.then.6
	movq	yy_c_buf_p, %rax
	movq	ppdtext, %rcx
	subq	%rcx, %rax
	subq	$0, %rax
	cmpq	$1, %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB8_58
.LBB8_5:                                # %if.else
	movl	$2, -4(%rbp)
	jmp	.LBB8_58
.LBB8_6:                                # %if.end.9
	movq	yy_c_buf_p, %rax
	movq	ppdtext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
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
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_7
.LBB8_10:                               # %for.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB8_12
# BB#11:                                # %if.then.20
	movl	$0, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$0, 28(%rax)
	jmp	.LBB8_51
.LBB8_12:                               # %if.else.22
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %edx
	subl	-28(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -40(%rbp)
.LBB8_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jg	.LBB8_26
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB8_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB8_17
.LBB8_16:                               # %cond.false
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB8_17
.LBB8_17:                               # %cond.end
                                        #   in Loop: Header=BB8_13 Depth=1
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
	je	.LBB8_22
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jg	.LBB8_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$3, %ecx
	movq	-48(%rbp), %rax
	addl	24(%rax), %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.43
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB8_21:                               # %if.end.46
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	ppdrealloc
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.51
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.LBB8_23:                               # %if.end.53
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB8_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB8_13 Depth=1
	movabsq	$.L.str.10, %rdi
	callq	yy_fatal_error
.LBB8_25:                               # %if.end.57
                                        #   in Loop: Header=BB8_13 Depth=1
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
	jmp	.LBB8_13
.LBB8_26:                               # %while.end
	cmpl	$8192, -40(%rbp)        # imm = 0x2000
	jle	.LBB8_28
# BB#27:                                # %if.then.67
	movl	$8192, -40(%rbp)        # imm = 0x2000
.LBB8_28:                               # %if.end.68
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 36(%rax)
	je	.LBB8_42
# BB#29:                                # %if.then.71
	movl	$42, -60(%rbp)
	movq	$0, -72(%rbp)
.LBB8_30:                               # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jae	.LBB8_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_30 Depth=1
	movq	ppdin, %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -60(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -81(%rbp)          # 1-byte Spill
	je	.LBB8_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB8_30 Depth=1
	cmpl	$10, -60(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB8_33:                               # %land.end
                                        #   in Loop: Header=BB8_30 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_34
	jmp	.LBB8_36
.LBB8_34:                               # %for.body.81
                                        #   in Loop: Header=BB8_30 Depth=1
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
                                        #   in Loop: Header=BB8_30 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB8_30
.LBB8_36:                               # %for.end.90
	cmpl	$10, -60(%rbp)
	jne	.LBB8_38
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
.LBB8_38:                               # %if.end.101
	cmpl	$-1, -60(%rbp)
	jne	.LBB8_41
# BB#39:                                # %land.lhs.true.104
	movq	ppdin, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB8_41
# BB#40:                                # %if.then.107
	movabsq	$.L.str.11, %rdi
	callq	yy_fatal_error
.LBB8_41:                               # %if.end.108
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, yy_n_chars
	jmp	.LBB8_50
.LBB8_42:                               # %if.else.110
	callq	__errno_location
	movl	$0, (%rax)
.LBB8_43:                               # %while.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rdi
	movq	(%rdi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	movslq	-40(%rbp), %rdx
	movq	ppdin, %rdi
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
	jne	.LBB8_45
# BB#44:                                # %land.rhs.122
                                        #   in Loop: Header=BB8_43 Depth=1
	movq	ppdin, %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB8_45:                               # %land.end.125
                                        #   in Loop: Header=BB8_43 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_46
	jmp	.LBB8_49
.LBB8_46:                               # %while.body.126
                                        #   in Loop: Header=BB8_43 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB8_48
# BB#47:                                # %if.then.130
	movabsq	$.L.str.11, %rdi
	callq	yy_fatal_error
	jmp	.LBB8_49
.LBB8_48:                               # %if.end.131
                                        #   in Loop: Header=BB8_43 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	ppdin, %rdi
	callq	clearerr
	jmp	.LBB8_43
.LBB8_49:                               # %while.end.133
	jmp	.LBB8_50
.LBB8_50:                               # %if.end.134
	movl	yy_n_chars, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 28(%rcx)
.LBB8_51:                               # %if.end.137
	cmpl	$0, yy_n_chars
	jne	.LBB8_56
# BB#52:                                # %if.then.140
	cmpl	$0, -28(%rbp)
	jne	.LBB8_54
# BB#53:                                # %if.then.143
	movl	$1, -36(%rbp)
	movq	ppdin, %rdi
	callq	ppdrestart
	jmp	.LBB8_55
.LBB8_54:                               # %if.else.144
	movl	$2, -36(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$2, 56(%rax)
.LBB8_55:                               # %if.end.147
	jmp	.LBB8_57
.LBB8_56:                               # %if.else.148
	movl	$0, -36(%rbp)
.LBB8_57:                               # %if.end.149
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
	movq	%rcx, ppdtext
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_58:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	yy_get_next_buffer, .Lfunc_end8-yy_get_next_buffer
	.cfi_endproc

	.globl	ppdwrap
	.align	16, 0x90
	.type	ppdwrap,@function
ppdwrap:                                # @ppdwrap
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
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ppdwrap, .Lfunc_end9-ppdwrap
	.cfi_endproc

	.globl	ppdrestart
	.align	16, 0x90
	.type	ppdrestart,@function
ppdrestart:                             # @ppdrestart
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, yy_buffer_stack
	je	.LBB10_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB10_4
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_4
	jmp	.LBB10_3
.LBB10_3:                               # %if.then
	callq	ppdensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	ppdin, %rdi
	callq	ppd_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB10_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB10_6
# BB#5:                                 # %cond.true.4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB10_7
.LBB10_7:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	ppd_init_buffer
	callq	ppd_load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ppdrestart, .Lfunc_end10-ppdrestart
	.cfi_endproc

	.align	16, 0x90
	.type	yy_fatal_error,@function
yy_fatal_error:                         # @yy_fatal_error
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
	movabsq	$.L.str.12, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end11:
	.size	yy_fatal_error, .Lfunc_end11-yy_fatal_error
	.cfi_endproc

	.align	16, 0x90
	.type	ppd_init_buffer,@function
ppd_init_buffer:                        # @ppd_init_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	ppd_flush_buffer
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB12_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.LBB12_5:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB12_7
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
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end.7
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
.Lfunc_end12:
	.size	ppd_init_buffer, .Lfunc_end12-ppd_init_buffer
	.cfi_endproc

	.globl	ppdalloc
	.align	16, 0x90
	.type	ppdalloc,@function
ppdalloc:                               # @ppdalloc
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
                                        # kill: RDI<def> EDI<kill>
	callq	malloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ppdalloc, .Lfunc_end13-ppdalloc
	.cfi_endproc

	.globl	ppdfree
	.align	16, 0x90
	.type	ppdfree,@function
ppdfree:                                # @ppdfree
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
	.size	ppdfree, .Lfunc_end14-ppdfree
	.cfi_endproc

	.globl	ppd_flush_buffer
	.align	16, 0x90
	.type	ppd_flush_buffer,@function
ppd_flush_buffer:                       # @ppd_flush_buffer
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
	callq	ppd_load_buffer_state
.LBB15_7:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ppd_flush_buffer, .Lfunc_end15-ppd_flush_buffer
	.cfi_endproc

	.globl	ppdpush_buffer_state
	.align	16, 0x90
	.type	ppdpush_buffer_state,@function
ppdpush_buffer_state:                   # @ppdpush_buffer_state
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
	callq	ppdensure_buffer_stack
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
	callq	ppd_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB16_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ppdpush_buffer_state, .Lfunc_end16-ppdpush_buffer_state
	.cfi_endproc

	.globl	ppdpop_buffer_state
	.align	16, 0x90
	.type	ppdpop_buffer_state,@function
ppdpop_buffer_state:                    # @ppdpop_buffer_state
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
	callq	ppd_delete_buffer
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
	callq	ppd_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB17_13:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ppdpop_buffer_state, .Lfunc_end17-ppdpop_buffer_state
	.cfi_endproc

	.globl	ppd_scan_buffer
	.align	16, 0x90
	.type	ppd_scan_buffer,@function
ppd_scan_buffer:                        # @ppd_scan_buffer
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
	callq	ppdalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.6, %rdi
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
	callq	ppd_switch_to_buffer
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB18_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ppd_scan_buffer, .Lfunc_end18-ppd_scan_buffer
	.cfi_endproc

	.globl	ppd_scan_string
	.align	16, 0x90
	.type	ppd_scan_string,@function
ppd_scan_string:                        # @ppd_scan_string
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
	callq	ppd_scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ppd_scan_string, .Lfunc_end19-ppd_scan_string
	.cfi_endproc

	.globl	ppd_scan_bytes
	.align	16, 0x90
	.type	ppd_scan_bytes,@function
ppd_scan_bytes:                         # @ppd_scan_bytes
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
	callq	ppdalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
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
	callq	ppd_scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.8, %rdi
	callq	yy_fatal_error
.LBB20_8:                               # %if.end.11
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ppd_scan_bytes, .Lfunc_end20-ppd_scan_bytes
	.cfi_endproc

	.globl	ppdget_lineno
	.align	16, 0x90
	.type	ppdget_lineno,@function
ppdget_lineno:                          # @ppdget_lineno
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
	movl	ppdlineno, %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ppdget_lineno, .Lfunc_end21-ppdget_lineno
	.cfi_endproc

	.globl	ppdget_in
	.align	16, 0x90
	.type	ppdget_in,@function
ppdget_in:                              # @ppdget_in
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
	movq	ppdin, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	ppdget_in, .Lfunc_end22-ppdget_in
	.cfi_endproc

	.globl	ppdget_out
	.align	16, 0x90
	.type	ppdget_out,@function
ppdget_out:                             # @ppdget_out
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
	movq	ppdout, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	ppdget_out, .Lfunc_end23-ppdget_out
	.cfi_endproc

	.globl	ppdget_leng
	.align	16, 0x90
	.type	ppdget_leng,@function
ppdget_leng:                            # @ppdget_leng
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
	movl	ppdleng, %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ppdget_leng, .Lfunc_end24-ppdget_leng
	.cfi_endproc

	.globl	ppdget_text
	.align	16, 0x90
	.type	ppdget_text,@function
ppdget_text:                            # @ppdget_text
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
	movq	ppdtext, %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	ppdget_text, .Lfunc_end25-ppdget_text
	.cfi_endproc

	.globl	ppdset_lineno
	.align	16, 0x90
	.type	ppdset_lineno,@function
ppdset_lineno:                          # @ppdset_lineno
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
	movl	%edi, ppdlineno
	popq	%rbp
	retq
.Lfunc_end26:
	.size	ppdset_lineno, .Lfunc_end26-ppdset_lineno
	.cfi_endproc

	.globl	ppdset_in
	.align	16, 0x90
	.type	ppdset_in,@function
ppdset_in:                              # @ppdset_in
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
	movq	%rdi, ppdin
	popq	%rbp
	retq
.Lfunc_end27:
	.size	ppdset_in, .Lfunc_end27-ppdset_in
	.cfi_endproc

	.globl	ppdset_out
	.align	16, 0x90
	.type	ppdset_out,@function
ppdset_out:                             # @ppdset_out
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
	movq	%rdi, ppdout
	popq	%rbp
	retq
.Lfunc_end28:
	.size	ppdset_out, .Lfunc_end28-ppdset_out
	.cfi_endproc

	.globl	ppdget_debug
	.align	16, 0x90
	.type	ppdget_debug,@function
ppdget_debug:                           # @ppdget_debug
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
	movl	ppd_flex_debug, %eax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	ppdget_debug, .Lfunc_end29-ppdget_debug
	.cfi_endproc

	.globl	ppdset_debug
	.align	16, 0x90
	.type	ppdset_debug,@function
ppdset_debug:                           # @ppdset_debug
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
	movl	%edi, ppd_flex_debug
	popq	%rbp
	retq
.Lfunc_end30:
	.size	ppdset_debug, .Lfunc_end30-ppdset_debug
	.cfi_endproc

	.globl	ppdlex_destroy
	.align	16, 0x90
	.type	ppdlex_destroy,@function
ppdlex_destroy:                         # @ppdlex_destroy
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
	callq	ppd_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	callq	ppdpop_buffer_state
	jmp	.LBB31_1
.LBB31_9:                               # %while.end
	movq	yy_buffer_stack, %rax
	movq	%rax, %rdi
	callq	ppdfree
	movq	$0, yy_buffer_stack
	callq	yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	ppdlex_destroy, .Lfunc_end31-ppdlex_destroy
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
	movl	$1, ppdlineno
	movq	$0, yy_buffer_stack
	movq	$0, yy_buffer_stack_top
	movq	$0, yy_buffer_stack_max
	movq	$0, yy_c_buf_p
	movl	$0, yy_init
	movl	$0, yy_start
	movq	$0, ppdin
	movq	$0, ppdout
	popq	%rbp
	retq
.Lfunc_end32:
	.size	yy_init_globals, .Lfunc_end32-yy_init_globals
	.cfi_endproc

	.globl	ppdrealloc
	.align	16, 0x90
	.type	ppdrealloc,@function
ppdrealloc:                             # @ppdrealloc
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
	.size	ppdrealloc, .Lfunc_end33-ppdrealloc
	.cfi_endproc

	.globl	ppdlex_initialize
	.align	16, 0x90
	.type	ppdlex_initialize,@function
ppdlex_initialize:                      # @ppdlex_initialize
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
	cmpl	$0, ppdlex_initialize.first_time
	je	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$string_stack, %rdi
	xorl	%eax, %eax
	movabsq	$xmalloc, %rcx
	movabsq	$free, %r8
	movl	$0, ppdlex_initialize.first_time
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_obstack_begin
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB34_2:                               # %if.end
	movl	$0, include_stack_ptr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	ppdlex_initialize, .Lfunc_end34-ppdlex_initialize
	.cfi_endproc

	.type	ppdin,@object           # @ppdin
	.bss
	.globl	ppdin
	.align	8
ppdin:
	.quad	0
	.size	ppdin, 8

	.type	ppdout,@object          # @ppdout
	.globl	ppdout
	.align	8
ppdout:
	.quad	0
	.size	ppdout, 8

	.type	ppdlineno,@object       # @ppdlineno
	.data
	.globl	ppdlineno
	.align	4
ppdlineno:
	.long	1                       # 0x1
	.size	ppdlineno, 4

	.type	ppd_flex_debug,@object  # @ppd_flex_debug
	.bss
	.globl	ppd_flex_debug
	.align	4
ppd_flex_debug:
	.long	0                       # 0x0
	.size	ppd_flex_debug, 4

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
	.long	1                       # 0x1
	.long	4                       # 0x4
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
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	9                       # 0x9
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	14                      # 0xe
	.long	12                      # 0xc
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	26                      # 0x1a
	.long	1                       # 0x1
	.long	27                      # 0x1b
	.long	28                      # 0x1c
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	32                      # 0x20
	.long	1                       # 0x1
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
	.long	1                       # 0x1
	.long	36                      # 0x24
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
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
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	41                      # 0x29
	.short	41                      # 0x29
	.short	44                      # 0x2c
	.short	10                      # 0xa
	.short	2                       # 0x2
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	3                       # 0x3
	.short	11                      # 0xb
	.short	10                      # 0xa
	.short	4                       # 0x4
	.short	26                      # 0x1a
	.short	13                      # 0xd
	.short	26                      # 0x1a
	.short	40                      # 0x28
	.short	27                      # 0x1b
	.short	43                      # 0x2b
	.short	43                      # 0x2b
	.short	41                      # 0x29
	.short	43                      # 0x2b
	.short	10                      # 0xa
	.short	2                       # 0x2
	.short	12                      # 0xc
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	26                      # 0x1a
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	14                      # 0xe
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	40                      # 0x28
	.short	39                      # 0x27
	.short	28                      # 0x1c
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	41                      # 0x29
	.short	0                       # 0x0
	.short	10                      # 0xa
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	42                      # 0x2a
	.short	1                       # 0x1
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	10                      # 0xa
	.short	7                       # 0x7
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	6                       # 0x6
	.short	0                       # 0x0
	.size	yy_accept, 230

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
	.short	12                      # 0xc
	.short	5                       # 0x5
	.short	14                      # 0xe
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	6                       # 0x6
	.short	26                      # 0x1a
	.short	125                     # 0x7d
	.short	0                       # 0x0
	.short	27                      # 0x1b
	.short	263                     # 0x107
	.short	121                     # 0x79
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	36                      # 0x24
	.short	263                     # 0x107
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	52                      # 0x34
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	78                      # 0x4e
	.short	263                     # 0x107
	.short	120                     # 0x78
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	36                      # 0x24
	.short	263                     # 0x107
	.short	113                     # 0x71
	.short	97                      # 0x61
	.short	81                      # 0x51
	.short	79                      # 0x4f
	.short	76                      # 0x4c
	.short	80                      # 0x50
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	94                      # 0x5e
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	116                     # 0x74
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	93                      # 0x5d
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	0                       # 0x0
	.short	98                      # 0x62
	.short	91                      # 0x5b
	.short	140                     # 0x8c
	.short	36                      # 0x24
	.short	263                     # 0x107
	.short	42                      # 0x2a
	.short	71                      # 0x47
	.short	65                      # 0x41
	.short	72                      # 0x48
	.short	70                      # 0x46
	.short	70                      # 0x46
	.short	80                      # 0x50
	.short	143                     # 0x8f
	.short	79                      # 0x4f
	.short	0                       # 0x0
	.short	80                      # 0x50
	.short	263                     # 0x107
	.short	63                      # 0x3f
	.short	48                      # 0x30
	.short	52                      # 0x34
	.short	55                      # 0x37
	.short	51                      # 0x33
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	263                     # 0x107
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	37                      # 0x25
	.short	42                      # 0x2a
	.short	51                      # 0x33
	.short	40                      # 0x28
	.short	44                      # 0x2c
	.short	48                      # 0x30
	.short	45                      # 0x2d
	.short	31                      # 0x1f
	.short	38                      # 0x26
	.short	41                      # 0x29
	.short	31                      # 0x1f
	.short	44                      # 0x2c
	.short	44                      # 0x2c
	.short	27                      # 0x1b
	.short	25                      # 0x19
	.short	17                      # 0x11
	.short	263                     # 0x107
	.short	22                      # 0x16
	.short	0                       # 0x0
	.short	5                       # 0x5
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	168                     # 0xa8
	.short	176                     # 0xb0
	.short	184                     # 0xb8
	.short	192                     # 0xc0
	.short	200                     # 0xc8
	.short	208                     # 0xd0
	.short	216                     # 0xd8
	.short	224                     # 0xe0
	.short	230                     # 0xe6
	.short	238                     # 0xee
	.short	246                     # 0xf6
	.short	24                      # 0x18
	.short	254                     # 0xfe
	.short	17                      # 0x11
	.size	yy_base, 258

	.type	yy_chk,@object          # @yy_chk
	.align	16
yy_chk:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	7                       # 0x7
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	7                       # 0x7
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	128                     # 0x80
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	8                       # 0x8
	.short	11                      # 0xb
	.short	126                     # 0x7e
	.short	11                      # 0xb
	.short	8                       # 0x8
	.short	4                       # 0x4
	.short	112                     # 0x70
	.short	110                     # 0x6e
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	28                      # 0x1c
	.short	66                      # 0x42
	.short	28                      # 0x1c
	.short	66                      # 0x42
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	16                      # 0x10
	.short	68                      # 0x44
	.short	108                     # 0x6c
	.short	68                      # 0x44
	.short	106                     # 0x6a
	.short	105                     # 0x69
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	20                      # 0x14
	.short	104                     # 0x68
	.short	103                     # 0x67
	.short	20                      # 0x14
	.short	102                     # 0x66
	.short	101                     # 0x65
	.short	100                     # 0x64
	.short	99                      # 0x63
	.short	20                      # 0x14
	.short	98                      # 0x62
	.short	97                      # 0x61
	.short	96                      # 0x60
	.short	95                      # 0x5f
	.short	94                      # 0x5e
	.short	93                      # 0x5d
	.short	92                      # 0x5c
	.short	91                      # 0x5b
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	89                      # 0x59
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	84                      # 0x54
	.short	83                      # 0x53
	.short	82                      # 0x52
	.short	81                      # 0x51
	.short	20                      # 0x14
	.short	80                      # 0x50
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	78                      # 0x4e
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	23                      # 0x17
	.short	76                      # 0x4c
	.short	74                      # 0x4a
	.short	73                      # 0x49
	.short	72                      # 0x48
	.short	71                      # 0x47
	.short	70                      # 0x46
	.short	69                      # 0x45
	.short	64                      # 0x40
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	63                      # 0x3f
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	52                      # 0x34
	.short	39                      # 0x27
	.short	35                      # 0x23
	.short	34                      # 0x22
	.short	23                      # 0x17
	.short	33                      # 0x21
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	32                      # 0x20
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	25                      # 0x19
	.short	30                      # 0x1e
	.short	13                      # 0xd
	.short	9                       # 0x9
	.short	30                      # 0x1e
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	0                       # 0x0
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	49                      # 0x31
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	65                      # 0x41
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	65                      # 0x41
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	0                       # 0x0
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	119                     # 0x77
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	119                     # 0x77
	.short	0                       # 0x0
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	0                       # 0x0
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	0                       # 0x0
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	122                     # 0x7a
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	0                       # 0x0
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	123                     # 0x7b
	.short	124                     # 0x7c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	124                     # 0x7c
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	125                     # 0x7d
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	127                     # 0x7f
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.size	yy_chk, 600

	.type	yy_def,@object          # @yy_def
	.align	16
yy_def:
	.short	0                       # 0x0
	.short	115                     # 0x73
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	116                     # 0x74
	.short	117                     # 0x75
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	118                     # 0x76
	.short	114                     # 0x72
	.short	119                     # 0x77
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	119                     # 0x77
	.short	114                     # 0x72
	.short	120                     # 0x78
	.short	114                     # 0x72
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	114                     # 0x72
	.short	123                     # 0x7b
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	124                     # 0x7c
	.short	119                     # 0x77
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	125                     # 0x7d
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	114                     # 0x72
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	122                     # 0x7a
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	126                     # 0x7e
	.short	114                     # 0x72
	.short	124                     # 0x7c
	.short	125                     # 0x7d
	.short	127                     # 0x7f
	.short	114                     # 0x72
	.short	127                     # 0x7f
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	114                     # 0x72
	.short	128                     # 0x80
	.short	124                     # 0x7c
	.short	114                     # 0x72
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	120                     # 0x78
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	114                     # 0x72
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	119                     # 0x77
	.short	0                       # 0x0
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.size	yy_def, 258

	.type	yy_meta,@object         # @yy_meta
	.align	16
yy_meta:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	yy_meta, 148

	.type	yy_nxt,@object          # @yy_nxt
	.align	16
yy_nxt:
	.short	0                       # 0x0
	.short	114                     # 0x72
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	25                      # 0x19
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	19                      # 0x13
	.short	26                      # 0x1a
	.short	15                      # 0xf
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	19                      # 0x13
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	88                      # 0x58
	.short	20                      # 0x14
	.short	15                      # 0xf
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	25                      # 0x19
	.short	28                      # 0x1c
	.short	77                      # 0x4d
	.short	28                      # 0x1c
	.short	26                      # 0x1a
	.short	20                      # 0x14
	.short	113                     # 0x71
	.short	112                     # 0x70
	.short	22                      # 0x16
	.short	22                      # 0x16
	.short	28                      # 0x1c
	.short	67                      # 0x43
	.short	28                      # 0x1c
	.short	68                      # 0x44
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	30                      # 0x1e
	.short	79                      # 0x4f
	.short	111                     # 0x6f
	.short	68                      # 0x44
	.short	110                     # 0x6e
	.short	109                     # 0x6d
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	108                     # 0x6c
	.short	107                     # 0x6b
	.short	38                      # 0x26
	.short	106                     # 0x6a
	.short	105                     # 0x69
	.short	104                     # 0x68
	.short	103                     # 0x67
	.short	39                      # 0x27
	.short	102                     # 0x66
	.short	101                     # 0x65
	.short	100                     # 0x64
	.short	99                      # 0x63
	.short	98                      # 0x62
	.short	97                      # 0x61
	.short	96                      # 0x60
	.short	95                      # 0x5f
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	94                      # 0x5e
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	93                      # 0x5d
	.short	92                      # 0x5c
	.short	91                      # 0x5b
	.short	90                      # 0x5a
	.short	45                      # 0x2d
	.short	89                      # 0x59
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	78                      # 0x4e
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	52                      # 0x34
	.short	87                      # 0x57
	.short	85                      # 0x55
	.short	84                      # 0x54
	.short	83                      # 0x53
	.short	82                      # 0x52
	.short	81                      # 0x51
	.short	80                      # 0x50
	.short	78                      # 0x4e
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	63                      # 0x3f
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	76                      # 0x4c
	.short	74                      # 0x4a
	.short	73                      # 0x49
	.short	72                      # 0x48
	.short	58                      # 0x3a
	.short	71                      # 0x47
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	70                      # 0x46
	.short	61                      # 0x3d
	.short	62                      # 0x3e
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	66                      # 0x42
	.short	68                      # 0x44
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	69                      # 0x45
	.short	63                      # 0x3f
	.short	66                      # 0x42
	.short	29                      # 0x1d
	.short	114                     # 0x72
	.short	66                      # 0x42
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	114                     # 0x72
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	75                      # 0x4b
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	66                      # 0x42
	.short	68                      # 0x44
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	66                      # 0x42
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	66                      # 0x42
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	114                     # 0x72
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	86                      # 0x56
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	21                      # 0x15
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	27                      # 0x1b
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	27                      # 0x1b
	.short	114                     # 0x72
	.short	27                      # 0x1b
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	114                     # 0x72
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	37                      # 0x25
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	114                     # 0x72
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	114                     # 0x72
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	51                      # 0x33
	.short	64                      # 0x40
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	64                      # 0x40
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	66                      # 0x42
	.short	9                       # 0x9
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.short	114                     # 0x72
	.size	yy_nxt, 600

	.type	ppdtext,@object         # @ppdtext
	.comm	ppdtext,8,8
	.type	ppdleng,@object         # @ppdleng
	.comm	ppdleng,4,4
	.type	yy_rule_can_match_eol,@object # @yy_rule_can_match_eol
	.align	16
yy_rule_can_match_eol:
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
	.long	1                       # 0x1
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	yy_rule_can_match_eol, 176

	.type	string_stack,@object    # @string_stack
	.local	string_stack
	.comm	string_stack,88,8
	.type	include_stack_ptr,@object # @include_stack_ptr
	.local	include_stack_ptr
	.comm	include_stack_ptr,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many includes"
	.size	.L.str, 18

	.type	include_stack,@object   # @include_stack
	.local	include_stack
	.comm	include_stack,80,16
	.type	ppdfilename,@object     # @ppdfilename
	.comm	ppdfilename,8,8
	.type	filename_stack,@object  # @filename_stack
	.local	filename_stack
	.comm	filename_stack,80,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s:%d: includes %s\n"
	.size	.L.str.1, 20

	.type	ppdpath,@object         # @ppdpath
	.comm	ppdpath,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"End of PPD file `%s'.\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Back to file `%s'.\n"
	.size	.L.str.3, 20

	.type	yy_n_chars,@object      # @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
	.type	yy_did_buffer_switch_on_eof,@object # @yy_did_buffer_switch_on_eof
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str.4, 51

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"out of dynamic memory in ppd_create_buffer()"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"out of dynamic memory in ppd_scan_buffer()"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"out of dynamic memory in ppd_scan_bytes()"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bad buffer in ppd_scan_bytes()"
	.size	.L.str.8, 31

	.type	ppdlex_initialize.first_time,@object # @ppdlex_initialize.first_time
	.data
	.align	4
ppdlex_initialize.first_time:
	.long	1                       # 0x1
	.size	ppdlex_initialize.first_time, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.9, 56

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.10, 44

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"input in flex scanner failed"
	.size	.L.str.11, 29

	.type	yy_buffer_stack_max,@object # @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s\n"
	.size	.L.str.12, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
