	.text
	.file	"imap_csim_lex.bc"
	.globl	csim_lex
	.align	16, 0x90
	.type	csim_lex,@function
csim_lex:                               # @csim_lex
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
	subq	$80, %rsp
	cmpl	$0, yy_init
	jne	.LBB0_12
# BB#1:                                 # %if.then
	movl	$1, yy_init
	cmpl	$0, yy_start
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	$1, yy_start
.LBB0_3:                                # %if.end
	cmpq	$0, csim_in
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movq	stdin, %rax
	movq	%rax, csim_in
.LBB0_5:                                # %if.end.5
	cmpq	$0, csim_out
	jne	.LBB0_7
# BB#6:                                 # %if.then.7
	movq	stdout, %rax
	movq	%rax, csim_out
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
	callq	csim_ensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	csim_in, %rdi
	callq	csim__create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB0_11:                               # %if.end.13
	callq	csim__load_buffer_state
.LBB0_12:                               # %if.end.14
	jmp	.LBB0_13
.LBB0_13:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #       Child Loop BB0_25 Depth 3
                                        #         Child Loop BB0_28 Depth 4
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
                                        #         Child Loop BB0_28 Depth 4
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
	cmpl	$154, -8(%rbp)
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
	cmpl	$322, %ecx              # imm = 0x142
	jne	.LBB0_15
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               # %yy_find_action
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_28 Depth 4
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
	movq	%rax, csim_text
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, csim_leng
	movq	-16(%rbp), %rax
	movb	(%rax), %dl
	movb	%dl, yy_hold_char
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, yy_c_buf_p
.LBB0_28:                               # %do_action
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$36, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB0_79
# BB#82:                                # %do_action
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_29:                               # %sw.bb
                                        #   in Loop: Header=BB0_25 Depth=3
	movb	yy_hold_char, %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	yy_last_accepting_cpos, %rcx
	movq	%rcx, -16(%rbp)
	movl	yy_last_accepting_state, %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB0_25
.LBB0_30:                               # %sw.bb.66
	movl	$5, yy_start
	movl	$278, -4(%rbp)          # imm = 0x116
	jmp	.LBB0_81
.LBB0_31:                               # %sw.bb.67
	movl	$5, yy_start
	movl	$279, -4(%rbp)          # imm = 0x117
	jmp	.LBB0_81
.LBB0_32:                               # %sw.bb.68
	movl	$5, yy_start
	movl	$280, -4(%rbp)          # imm = 0x118
	jmp	.LBB0_81
.LBB0_33:                               # %sw.bb.69
	movl	$1, yy_start
	movl	$281, -4(%rbp)          # imm = 0x119
	jmp	.LBB0_81
.LBB0_34:                               # %sw.bb.70
	movb	yy_hold_char, %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-16(%rbp), %rcx
	addq	$-3, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rcx, yy_c_buf_p
	movq	-24(%rbp), %rcx
	movq	%rcx, csim_text
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, csim_leng
	movq	-16(%rbp), %rcx
	movb	(%rcx), %al
	movb	%al, yy_hold_char
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_c_buf_p
	movq	csim_text, %rdi
	movq	csim_leng, %rsi
	callq	g_strndup
	movq	%rax, csim_lval
	movl	$283, -4(%rbp)          # imm = 0x11B
	jmp	.LBB0_81
.LBB0_35:                               # %sw.bb.75
	movl	$258, -4(%rbp)          # imm = 0x102
	jmp	.LBB0_81
.LBB0_36:                               # %sw.bb.76
	movl	$259, -4(%rbp)          # imm = 0x103
	jmp	.LBB0_81
.LBB0_37:                               # %sw.bb.77
	movl	$260, -4(%rbp)          # imm = 0x104
	jmp	.LBB0_81
.LBB0_38:                               # %sw.bb.78
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB0_81
.LBB0_39:                               # %sw.bb.79
	movl	$262, -4(%rbp)          # imm = 0x106
	jmp	.LBB0_81
.LBB0_40:                               # %sw.bb.80
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB0_81
.LBB0_41:                               # %sw.bb.81
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB0_81
.LBB0_42:                               # %sw.bb.82
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB0_81
.LBB0_43:                               # %sw.bb.83
	movl	$266, -4(%rbp)          # imm = 0x10A
	jmp	.LBB0_81
.LBB0_44:                               # %sw.bb.84
	movl	$267, -4(%rbp)          # imm = 0x10B
	jmp	.LBB0_81
.LBB0_45:                               # %sw.bb.85
	movl	$268, -4(%rbp)          # imm = 0x10C
	jmp	.LBB0_81
.LBB0_46:                               # %sw.bb.86
	movl	$269, -4(%rbp)          # imm = 0x10D
	jmp	.LBB0_81
.LBB0_47:                               # %sw.bb.87
	movl	$273, -4(%rbp)          # imm = 0x111
	jmp	.LBB0_81
.LBB0_48:                               # %sw.bb.88
	movl	$274, -4(%rbp)          # imm = 0x112
	jmp	.LBB0_81
.LBB0_49:                               # %sw.bb.89
	movl	$275, -4(%rbp)          # imm = 0x113
	jmp	.LBB0_81
.LBB0_50:                               # %sw.bb.90
	movl	$276, -4(%rbp)          # imm = 0x114
	jmp	.LBB0_81
.LBB0_51:                               # %sw.bb.91
	movl	$277, -4(%rbp)          # imm = 0x115
	jmp	.LBB0_81
.LBB0_52:                               # %sw.bb.92
	movl	$270, -4(%rbp)          # imm = 0x10E
	jmp	.LBB0_81
.LBB0_53:                               # %sw.bb.93
	movl	$271, -4(%rbp)          # imm = 0x10F
	jmp	.LBB0_81
.LBB0_54:                               # %sw.bb.94
	movl	$272, -4(%rbp)          # imm = 0x110
	jmp	.LBB0_81
.LBB0_55:                               # %sw.bb.95
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$3, yy_start
	jmp	.LBB0_80
.LBB0_56:                               # %sw.bb.96
	movl	$1, yy_start
	movl	$283, -4(%rbp)          # imm = 0x11B
	jmp	.LBB0_81
.LBB0_57:                               # %sw.bb.97
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	csim_text, %rdi
	movq	csim_leng, %rsi
	callq	g_strndup
	movq	%rax, csim_lval
	jmp	.LBB0_80
.LBB0_58:                               # %sw.bb.99
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	csim_text, %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, csim_lval
	movl	$282, -4(%rbp)          # imm = 0x11A
	jmp	.LBB0_81
.LBB0_59:                               # %sw.bb.101
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_80
.LBB0_60:                               # %sw.bb.102
	movq	csim_text, %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_81
.LBB0_61:                               # %sw.bb.104
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_62
.LBB0_62:                               # %do.body.105
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	csim_text, %rdi
	movq	csim_leng, %rsi
	movq	csim_out, %rcx
	callq	fwrite
	cmpq	$0, %rax
	je	.LBB0_64
# BB#63:                                # %if.then.108
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               # %if.end.109
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_65
.LBB0_65:                               # %do.end.111
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_80
.LBB0_66:                               # %sw.bb.112
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_67:                               # %sw.bb.113
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	-16(%rbp), %rax
	movq	csim_text, %rcx
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
	cmpl	$0, 64(%rax)
	jne	.LBB0_69
# BB#68:                                # %if.then.121
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	32(%rax), %rax
	movq	%rax, yy_n_chars
	movq	csim_in, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 64(%rax)
.LBB0_69:                               # %if.end.126
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	yy_c_buf_p, %rax
	movq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_73
# BB#70:                                # %if.then.131
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	csim_text, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	yy_try_NUL_trans
	movl	%eax, -40(%rbp)
	movq	csim_text, %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_72
# BB#71:                                # %if.then.137
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	yy_c_buf_p, %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB0_14
.LBB0_72:                               # %if.else
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_25
.LBB0_73:                               # %if.else.139
                                        #   in Loop: Header=BB0_28 Depth=4
	callq	yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB0_75
	jmp	.LBB0_83
.LBB0_83:                               # %if.else.139
                                        #   in Loop: Header=BB0_28 Depth=4
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB0_74
	jmp	.LBB0_84
.LBB0_84:                               # %if.else.139
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB0_76
	jmp	.LBB0_77
.LBB0_74:                               # %sw.bb.141
                                        #   in Loop: Header=BB0_28 Depth=4
	movl	$2, %eax
	movl	$0, yy_did_buffer_switch_on_eof
	movq	csim_text, %rcx
	movq	%rcx, yy_c_buf_p
	movl	yy_start, %edx
	subl	$1, %edx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-72(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	$33, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_28
.LBB0_75:                               # %sw.bb.146
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	csim_text, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	csim_text, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_14
.LBB0_76:                               # %sw.bb.151
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_n_chars, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	addq	8(%rcx), %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	csim_text, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_25
.LBB0_77:                               # %sw.epilog
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_78
.LBB0_78:                               # %if.end.157
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_80
.LBB0_79:                               # %sw.default
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str, %rdi
	callq	yy_fatal_error
.LBB0_80:                               # %sw.epilog.158
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_13
.LBB0_81:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	csim_lex, .Lfunc_end0-csim_lex
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_29
	.quad	.LBB0_30
	.quad	.LBB0_31
	.quad	.LBB0_32
	.quad	.LBB0_33
	.quad	.LBB0_34
	.quad	.LBB0_35
	.quad	.LBB0_36
	.quad	.LBB0_37
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
	.quad	.LBB0_52
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_56
	.quad	.LBB0_57
	.quad	.LBB0_58
	.quad	.LBB0_59
	.quad	.LBB0_60
	.quad	.LBB0_61
	.quad	.LBB0_67
	.quad	.LBB0_66
	.quad	.LBB0_66
	.quad	.LBB0_66

	.text
	.align	16, 0x90
	.type	csim_ensure_buffer_stack,@function
csim_ensure_buffer_stack:               # @csim_ensure_buffer_stack
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
	jne	.LBB1_4
# BB#1:                                 # %if.then
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	csim_alloc
	movq	%rax, yy_buffer_stack
	cmpq	$0, yy_buffer_stack
	jne	.LBB1_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.9, %rdi
	callq	yy_fatal_error
.LBB1_3:                                # %if.end
	xorl	%esi, %esi
	movq	yy_buffer_stack, %rax
	movq	-8(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movq	-8(%rbp), %rax
	movq	%rax, yy_buffer_stack_max
	movq	$0, yy_buffer_stack_top
	jmp	.LBB1_8
.LBB1_4:                                # %if.end.4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack_max, %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB1_8
# BB#5:                                 # %if.then.5
	movl	$8, -12(%rbp)
	movq	yy_buffer_stack_max, %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	yy_buffer_stack, %rax
	movq	-8(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	csim_realloc
	movq	%rax, yy_buffer_stack
	cmpq	$0, yy_buffer_stack
	jne	.LBB1_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.9, %rdi
	callq	yy_fatal_error
.LBB1_7:                                # %if.end.10
	xorl	%esi, %esi
	movq	yy_buffer_stack, %rax
	movq	yy_buffer_stack_max, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movq	-8(%rbp), %rax
	movq	%rax, yy_buffer_stack_max
.LBB1_8:                                # %if.end.13
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	csim_ensure_buffer_stack, .Lfunc_end1-csim_ensure_buffer_stack
	.cfi_endproc

	.globl	csim__create_buffer
	.align	16, 0x90
	.type	csim__create_buffer,@function
csim__create_buffer:                    # @csim__create_buffer
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
	movl	$72, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rcx, %rdi
	callq	csim_alloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	yy_fatal_error
.LBB2_2:                                # %if.end
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	csim_alloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.1, %rdi
	callq	yy_fatal_error
.LBB2_4:                                # %if.end.6
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	csim__init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	csim__create_buffer, .Lfunc_end2-csim__create_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	csim__load_buffer_state,@function
csim__load_buffer_state:                # @csim__load_buffer_state
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
	movq	32(%rax), %rax
	movq	%rax, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	16(%rax), %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, csim_text
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, csim_in
	movq	yy_c_buf_p, %rax
	movb	(%rax), %dl
	movb	%dl, yy_hold_char
	popq	%rbp
	retq
.Lfunc_end3:
	.size	csim__load_buffer_state, .Lfunc_end3-csim__load_buffer_state
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
	movq	csim_text, %rcx
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
	cmpl	$154, -4(%rbp)
	jl	.LBB4_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB4_11:                               # %if.end.25
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
	cmpl	$154, -4(%rbp)
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
	cmpl	$153, -4(%rbp)
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
	subq	$128, %rsp
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	csim_text, %rax
	movq	%rax, -24(%rbp)
	movq	yy_c_buf_p, %rax
	movq	yy_n_chars, %rcx
	addq	$1, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	callq	yy_fatal_error
.LBB6_2:                                # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB6_6
# BB#3:                                 # %if.then.6
	movq	yy_c_buf_p, %rax
	movq	csim_text, %rcx
	subq	%rcx, %rax
	subq	$0, %rax
	cmpq	$1, %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB6_59
.LBB6_5:                                # %if.else
	movl	$2, -4(%rbp)
	jmp	.LBB6_59
.LBB6_6:                                # %if.end.9
	movq	yy_c_buf_p, %rax
	movq	csim_text, %rcx
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
	cmpl	$2, 64(%rax)
	jne	.LBB6_12
# BB#11:                                # %if.then.20
	movq	$0, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	$0, 32(%rax)
	jmp	.LBB6_48
.LBB6_12:                               # %if.else.22
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	24(%rax), %rax
	movslq	-28(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB6_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	ja	.LBB6_23
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	yy_c_buf_p, %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -60(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB6_19
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	shlq	$1, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	ja	.LBB6_17
# BB#16:                                # %if.then.39
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	shrq	$3, %rax
	movq	-56(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	jmp	.LBB6_18
.LBB6_17:                               # %if.else.43
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, 24(%rax)
.LBB6_18:                               # %if.end.46
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	csim_realloc
	movq	-56(%rbp), %rsi
	movq	%rax, 8(%rsi)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.51
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_20:                               # %if.end.53
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_22
# BB#21:                                # %if.then.56
                                        #   in Loop: Header=BB6_13 Depth=1
	movabsq	$.L.str.6, %rdi
	callq	yy_fatal_error
.LBB6_22:                               # %if.end.57
                                        #   in Loop: Header=BB6_13 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, yy_c_buf_p
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	24(%rax), %rax
	movslq	-28(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB6_13
.LBB6_23:                               # %while.end
	cmpq	$8192, -48(%rbp)        # imm = 0x2000
	jbe	.LBB6_25
# BB#24:                                # %if.then.67
	movq	$8192, -48(%rbp)        # imm = 0x2000
.LBB6_25:                               # %if.end.68
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 44(%rax)
	je	.LBB6_39
# BB#26:                                # %if.then.71
	movl	$42, -76(%rbp)
	movq	$0, -88(%rbp)
.LBB6_27:                               # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jae	.LBB6_30
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	csim_in, %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -76(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -97(%rbp)          # 1-byte Spill
	je	.LBB6_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB6_27 Depth=1
	cmpl	$10, -76(%rbp)
	setne	%al
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB6_30:                               # %land.end
                                        #   in Loop: Header=BB6_27 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_31
	jmp	.LBB6_33
.LBB6_31:                               # %for.body.80
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %r8
	movq	(%r8,%rdi,8), %rdi
	addq	8(%rdi), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#32:                                # %for.inc.87
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB6_27
.LBB6_33:                               # %for.end.89
	cmpl	$10, -76(%rbp)
	jne	.LBB6_35
# BB#34:                                # %if.then.92
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)
	movslq	-28(%rbp), %rsi
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %r8
	movq	(%r8,%rdi,8), %rdi
	addq	8(%rdi), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB6_35:                               # %if.end.100
	cmpl	$-1, -76(%rbp)
	jne	.LBB6_38
# BB#36:                                # %land.lhs.true.103
	movq	csim_in, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB6_38
# BB#37:                                # %if.then.106
	movabsq	$.L.str.7, %rdi
	callq	yy_fatal_error
.LBB6_38:                               # %if.end.107
	movq	-88(%rbp), %rax
	movq	%rax, yy_n_chars
	jmp	.LBB6_47
.LBB6_39:                               # %if.else.108
	callq	__errno_location
	movl	$0, (%rax)
.LBB6_40:                               # %while.cond.110
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rdi
	movq	(%rdi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movq	csim_in, %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	fread
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	movq	%rax, yy_n_chars
	cmpq	$0, %rax
	movb	%r9b, -113(%rbp)        # 1-byte Spill
	jne	.LBB6_42
# BB#41:                                # %land.rhs.118
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	csim_in, %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -113(%rbp)         # 1-byte Spill
.LBB6_42:                               # %land.end.121
                                        #   in Loop: Header=BB6_40 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_43
	jmp	.LBB6_46
.LBB6_43:                               # %while.body.122
                                        #   in Loop: Header=BB6_40 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB6_45
# BB#44:                                # %if.then.126
	movabsq	$.L.str.7, %rdi
	callq	yy_fatal_error
	jmp	.LBB6_46
.LBB6_45:                               # %if.end.127
                                        #   in Loop: Header=BB6_40 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	csim_in, %rdi
	callq	clearerr
	jmp	.LBB6_40
.LBB6_46:                               # %while.end.129
	jmp	.LBB6_47
.LBB6_47:                               # %if.end.130
	movq	yy_n_chars, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, 32(%rcx)
.LBB6_48:                               # %if.end.133
	cmpq	$0, yy_n_chars
	jne	.LBB6_53
# BB#49:                                # %if.then.136
	cmpl	$0, -28(%rbp)
	jne	.LBB6_51
# BB#50:                                # %if.then.139
	movl	$1, -36(%rbp)
	movq	csim_in, %rdi
	callq	csim_restart
	jmp	.LBB6_52
.LBB6_51:                               # %if.else.140
	movl	$2, -36(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$2, 64(%rax)
.LBB6_52:                               # %if.end.143
	jmp	.LBB6_54
.LBB6_53:                               # %if.else.144
	movl	$0, -36(%rbp)
.LBB6_54:                               # %if.end.145
	movq	yy_n_chars, %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	24(%rcx), %rax
	jbe	.LBB6_58
# BB#55:                                # %if.then.152
	movq	yy_n_chars, %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	yy_n_chars, %rcx
	shrq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	csim_realloc
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_57
# BB#56:                                # %if.then.165
	movabsq	$.L.str.8, %rdi
	callq	yy_fatal_error
.LBB6_57:                               # %if.end.166
	jmp	.LBB6_58
.LBB6_58:                               # %if.end.167
	movslq	-28(%rbp), %rax
	addq	yy_n_chars, %rax
	movq	%rax, yy_n_chars
	movq	yy_n_chars, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movq	yy_n_chars, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	8(%rcx), %rcx
	movb	$0, 1(%rcx,%rax)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, csim_text
	movl	-36(%rbp), %esi
	movl	%esi, -4(%rbp)
.LBB6_59:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	yy_get_next_buffer, .Lfunc_end6-yy_get_next_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	yy_fatal_error,@function
yy_fatal_error:                         # @yy_fatal_error
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
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end7:
	.size	yy_fatal_error, .Lfunc_end7-yy_fatal_error
	.cfi_endproc

	.globl	csim_restart
	.align	16, 0x90
	.type	csim_restart,@function
csim_restart:                           # @csim_restart
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
	callq	csim_ensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	csim_in, %rdi
	callq	csim__create_buffer
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
	callq	csim__init_buffer
	callq	csim__load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	csim_restart, .Lfunc_end8-csim_restart
	.cfi_endproc

	.align	16, 0x90
	.type	csim__init_buffer,@function
csim__init_buffer:                      # @csim__init_buffer
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	csim__flush_buffer
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 60(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
.LBB9_5:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB9_7
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
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # %cond.end.7
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%edx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	csim__init_buffer, .Lfunc_end9-csim__init_buffer
	.cfi_endproc

	.globl	csim__switch_to_buffer
	.align	16, 0x90
	.type	csim__switch_to_buffer,@function
csim__switch_to_buffer:                 # @csim__switch_to_buffer
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
	callq	csim_ensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB10_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then
	jmp	.LBB10_10
.LBB10_5:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB10_7
# BB#6:                                 # %cond.true.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB10_8
	jmp	.LBB10_9
.LBB10_7:                               # %cond.false.5
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_8
	jmp	.LBB10_9
.LBB10_8:                               # %if.then.6
	movb	yy_hold_char, %al
	movq	yy_c_buf_p, %rcx
	movb	%al, (%rcx)
	movq	yy_c_buf_p, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 16(%rdx)
	movq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 32(%rdx)
.LBB10_9:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	csim__load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB10_10:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	csim__switch_to_buffer, .Lfunc_end10-csim__switch_to_buffer
	.cfi_endproc

	.globl	csim_alloc
	.align	16, 0x90
	.type	csim_alloc,@function
csim_alloc:                             # @csim_alloc
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
	movq	-8(%rbp), %rdi
	callq	malloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	csim_alloc, .Lfunc_end11-csim_alloc
	.cfi_endproc

	.globl	csim__delete_buffer
	.align	16, 0x90
	.type	csim__delete_buffer,@function
csim__delete_buffer:                    # @csim__delete_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_10
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB12_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_7
# BB#6:                                 # %if.then.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	$0, (%rcx,%rax,8)
.LBB12_7:                               # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB12_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	csim_free
.LBB12_9:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	csim_free
.LBB12_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	csim__delete_buffer, .Lfunc_end12-csim__delete_buffer
	.cfi_endproc

	.globl	csim_free
	.align	16, 0x90
	.type	csim_free,@function
csim_free:                              # @csim_free
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	csim_free, .Lfunc_end13-csim_free
	.cfi_endproc

	.globl	csim__flush_buffer
	.align	16, 0x90
	.type	csim__flush_buffer,@function
csim__flush_buffer:                     # @csim__flush_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_7
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
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
	movl	$1, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB14_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_7
# BB#6:                                 # %if.then.7
	callq	csim__load_buffer_state
.LBB14_7:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	csim__flush_buffer, .Lfunc_end14-csim__flush_buffer
	.cfi_endproc

	.globl	csim_push_buffer_state
	.align	16, 0x90
	.type	csim_push_buffer_state,@function
csim_push_buffer_state:                 # @csim_push_buffer_state
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
	cmpq	$0, -8(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_11
.LBB15_2:                               # %if.end
	callq	csim_ensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB15_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB15_5
	jmp	.LBB15_6
.LBB15_4:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_5
	jmp	.LBB15_6
.LBB15_5:                               # %if.then.2
	movb	yy_hold_char, %al
	movq	yy_c_buf_p, %rcx
	movb	%al, (%rcx)
	movq	yy_c_buf_p, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 16(%rdx)
	movq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	%rcx, 32(%rdx)
.LBB15_6:                               # %if.end.5
	cmpq	$0, yy_buffer_stack
	je	.LBB15_8
# BB#7:                                 # %cond.true.7
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB15_9
	jmp	.LBB15_10
.LBB15_8:                               # %cond.false.10
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_9
	jmp	.LBB15_10
.LBB15_9:                               # %if.then.11
	movq	yy_buffer_stack_top, %rax
	addq	$1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB15_10:                              # %if.end.12
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	csim__load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB15_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	csim_push_buffer_state, .Lfunc_end15-csim_push_buffer_state
	.cfi_endproc

	.globl	csim_pop_buffer_state
	.align	16, 0x90
	.type	csim_pop_buffer_state,@function
csim_pop_buffer_state:                  # @csim_pop_buffer_state
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
	cmpq	$0, yy_buffer_stack
	je	.LBB16_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB16_4
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB16_4
	jmp	.LBB16_3
.LBB16_3:                               # %if.then
	jmp	.LBB16_13
.LBB16_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB16_6
# BB#5:                                 # %cond.true.3
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB16_7
.LBB16_6:                               # %cond.false.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB16_7
.LBB16_7:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	callq	csim__delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	cmpq	$0, yy_buffer_stack_top
	jbe	.LBB16_9
# BB#8:                                 # %if.then.7
	movq	yy_buffer_stack_top, %rax
	addq	$-1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB16_9:                               # %if.end.8
	cmpq	$0, yy_buffer_stack
	je	.LBB16_11
# BB#10:                                # %cond.true.10
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB16_12
	jmp	.LBB16_13
.LBB16_11:                              # %cond.false.13
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB16_12
	jmp	.LBB16_13
.LBB16_12:                              # %if.then.14
	callq	csim__load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB16_13:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	csim_pop_buffer_state, .Lfunc_end16-csim_pop_buffer_state
	.cfi_endproc

	.globl	csim__scan_buffer
	.align	16, 0x90
	.type	csim__scan_buffer,@function
csim__scan_buffer:                      # @csim__scan_buffer
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$2, -24(%rbp)
	jb	.LBB17_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	subq	$2, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB17_3
# BB#2:                                 # %lor.lhs.false.3
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB17_4
.LBB17_3:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB17_7
.LBB17_4:                               # %if.end
	movl	$72, %eax
	movl	%eax, %edi
	callq	csim_alloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.2, %rdi
	callq	yy_fatal_error
.LBB17_6:                               # %if.end.10
	movq	-24(%rbp), %rax
	subq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-32(%rbp), %rdi
	callq	csim__switch_to_buffer
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	csim__scan_buffer, .Lfunc_end17-csim__scan_buffer
	.cfi_endproc

	.globl	csim__scan_string
	.align	16, 0x90
	.type	csim__scan_string,@function
csim__scan_string:                      # @csim__scan_string
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
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	csim__scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	csim__scan_string, .Lfunc_end18-csim__scan_string
	.cfi_endproc

	.globl	csim__scan_bytes
	.align	16, 0x90
	.type	csim__scan_bytes,@function
csim__scan_bytes:                       # @csim__scan_bytes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$2, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	csim_alloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	callq	yy_fatal_error
.LBB19_2:                               # %if.end
	movl	$0, -44(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB19_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB19_3
.LBB19_6:                               # %for.end
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, 1(%rcx,%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	csim__scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str.4, %rdi
	callq	yy_fatal_error
.LBB19_8:                               # %if.end.10
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	csim__scan_bytes, .Lfunc_end19-csim__scan_bytes
	.cfi_endproc

	.globl	csim_get_lineno
	.align	16, 0x90
	.type	csim_get_lineno,@function
csim_get_lineno:                        # @csim_get_lineno
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
	movl	csim_lineno, %eax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	csim_get_lineno, .Lfunc_end20-csim_get_lineno
	.cfi_endproc

	.globl	csim_get_in
	.align	16, 0x90
	.type	csim_get_in,@function
csim_get_in:                            # @csim_get_in
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
	movq	csim_in, %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	csim_get_in, .Lfunc_end21-csim_get_in
	.cfi_endproc

	.globl	csim_get_out
	.align	16, 0x90
	.type	csim_get_out,@function
csim_get_out:                           # @csim_get_out
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
	movq	csim_out, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	csim_get_out, .Lfunc_end22-csim_get_out
	.cfi_endproc

	.globl	csim_get_leng
	.align	16, 0x90
	.type	csim_get_leng,@function
csim_get_leng:                          # @csim_get_leng
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
	movq	csim_leng, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	csim_get_leng, .Lfunc_end23-csim_get_leng
	.cfi_endproc

	.globl	csim_get_text
	.align	16, 0x90
	.type	csim_get_text,@function
csim_get_text:                          # @csim_get_text
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
	movq	csim_text, %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	csim_get_text, .Lfunc_end24-csim_get_text
	.cfi_endproc

	.globl	csim_set_lineno
	.align	16, 0x90
	.type	csim_set_lineno,@function
csim_set_lineno:                        # @csim_set_lineno
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, csim_lineno
	popq	%rbp
	retq
.Lfunc_end25:
	.size	csim_set_lineno, .Lfunc_end25-csim_set_lineno
	.cfi_endproc

	.globl	csim_set_in
	.align	16, 0x90
	.type	csim_set_in,@function
csim_set_in:                            # @csim_set_in
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, csim_in
	popq	%rbp
	retq
.Lfunc_end26:
	.size	csim_set_in, .Lfunc_end26-csim_set_in
	.cfi_endproc

	.globl	csim_set_out
	.align	16, 0x90
	.type	csim_set_out,@function
csim_set_out:                           # @csim_set_out
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
	movq	%rdi, csim_out
	popq	%rbp
	retq
.Lfunc_end27:
	.size	csim_set_out, .Lfunc_end27-csim_set_out
	.cfi_endproc

	.globl	csim_get_debug
	.align	16, 0x90
	.type	csim_get_debug,@function
csim_get_debug:                         # @csim_get_debug
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
	movl	csim__flex_debug, %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	csim_get_debug, .Lfunc_end28-csim_get_debug
	.cfi_endproc

	.globl	csim_set_debug
	.align	16, 0x90
	.type	csim_set_debug,@function
csim_set_debug:                         # @csim_set_debug
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, csim__flex_debug
	popq	%rbp
	retq
.Lfunc_end29:
	.size	csim_set_debug, .Lfunc_end29-csim_set_debug
	.cfi_endproc

	.globl	csim_lex_destroy
	.align	16, 0x90
	.type	csim_lex_destroy,@function
csim_lex_destroy:                       # @csim_lex_destroy
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
	subq	$32, %rsp
	jmp	.LBB30_1
.LBB30_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB30_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB30_4
.LBB30_3:                               # %cond.false
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB30_4
.LBB30_4:                               # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB30_9
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB30_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB30_8
.LBB30_7:                               # %cond.false.5
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB30_8
.LBB30_8:                               # %cond.end.6
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	csim__delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	callq	csim_pop_buffer_state
	jmp	.LBB30_1
.LBB30_9:                               # %while.end
	movq	yy_buffer_stack, %rax
	movq	%rax, %rdi
	callq	csim_free
	movq	$0, yy_buffer_stack
	callq	yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	csim_lex_destroy, .Lfunc_end30-csim_lex_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	yy_init_globals,@function
yy_init_globals:                        # @yy_init_globals
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
	xorl	%eax, %eax
	movq	$0, yy_buffer_stack
	movq	$0, yy_buffer_stack_top
	movq	$0, yy_buffer_stack_max
	movq	$0, yy_c_buf_p
	movl	$0, yy_init
	movl	$0, yy_start
	movq	$0, csim_in
	movq	$0, csim_out
	popq	%rbp
	retq
.Lfunc_end31:
	.size	yy_init_globals, .Lfunc_end31-yy_init_globals
	.cfi_endproc

	.globl	csim_realloc
	.align	16, 0x90
	.type	csim_realloc,@function
csim_realloc:                           # @csim_realloc
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	csim_realloc, .Lfunc_end32-csim_realloc
	.cfi_endproc

	.type	csim_in,@object         # @csim_in
	.bss
	.globl	csim_in
	.align	8
csim_in:
	.quad	0
	.size	csim_in, 8

	.type	csim_out,@object        # @csim_out
	.globl	csim_out
	.align	8
csim_out:
	.quad	0
	.size	csim_out, 8

	.type	csim_lineno,@object     # @csim_lineno
	.data
	.globl	csim_lineno
	.align	4
csim_lineno:
	.long	1                       # 0x1
	.size	csim_lineno, 4

	.type	csim__flex_debug,@object # @csim__flex_debug
	.bss
	.globl	csim__flex_debug
	.align	4
csim__flex_debug:
	.long	0                       # 0x0
	.size	csim__flex_debug, 4

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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	15                      # 0xf
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	28                      # 0x1c
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.long	31                      # 0x1f
	.long	32                      # 0x20
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
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
	.long	37                      # 0x25
	.long	38                      # 0x26
	.long	39                      # 0x27
	.long	40                      # 0x28
	.long	41                      # 0x29
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	44                      # 0x2c
	.long	45                      # 0x2d
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	46                      # 0x2e
	.long	47                      # 0x2f
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	1                       # 0x1
	.long	51                      # 0x33
	.long	52                      # 0x34
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
	.long	56                      # 0x38
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
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
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	33                      # 0x21
	.short	31                      # 0x1f
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	26                      # 0x1a
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	31                      # 0x1f
	.short	29                      # 0x1d
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	29                      # 0x1d
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	28                      # 0x1c
	.short	27                      # 0x1b
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	30                      # 0x1e
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	29                      # 0x1d
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	29                      # 0x1d
	.short	29                      # 0x1d
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
	.short	28                      # 0x1c
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
	.short	6                       # 0x6
	.short	12                      # 0xc
	.short	0                       # 0x0
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
	.short	4                       # 0x4
	.short	13                      # 0xd
	.short	3                       # 0x3
	.short	15                      # 0xf
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	14                      # 0xe
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
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	10                      # 0xa
	.short	17                      # 0x11
	.short	9                       # 0x9
	.short	25                      # 0x19
	.short	22                      # 0x16
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	18                      # 0x12
	.short	11                      # 0xb
	.short	0                       # 0x0
	.short	21                      # 0x15
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
	.short	19                      # 0x13
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	0                       # 0x0
	.size	yy_accept, 308

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
	.short	315                     # 0x13b
	.short	314                     # 0x13a
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	318                     # 0x13e
	.short	322                     # 0x142
	.short	57                      # 0x39
	.short	64                      # 0x40
	.short	322                     # 0x142
	.short	58                      # 0x3a
	.short	49                      # 0x31
	.short	36                      # 0x24
	.short	61                      # 0x3d
	.short	301                     # 0x12d
	.short	47                      # 0x2f
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	71                      # 0x47
	.short	56                      # 0x38
	.short	58                      # 0x3a
	.short	69                      # 0x45
	.short	71                      # 0x47
	.short	61                      # 0x3d
	.short	70                      # 0x46
	.short	74                      # 0x4a
	.short	60                      # 0x3c
	.short	78                      # 0x4e
	.short	0                       # 0x0
	.short	322                     # 0x142
	.short	295                     # 0x127
	.short	322                     # 0x142
	.short	294                     # 0x126
	.short	113                     # 0x71
	.short	97                      # 0x61
	.short	111                     # 0x6f
	.short	116                     # 0x74
	.short	106                     # 0x6a
	.short	96                      # 0x60
	.short	293                     # 0x125
	.short	95                      # 0x5f
	.short	109                     # 0x6d
	.short	100                     # 0x64
	.short	105                     # 0x69
	.short	289                     # 0x121
	.short	288                     # 0x120
	.short	110                     # 0x6e
	.short	115                     # 0x73
	.short	114                     # 0x72
	.short	109                     # 0x6d
	.short	113                     # 0x71
	.short	117                     # 0x75
	.short	131                     # 0x83
	.short	125                     # 0x7d
	.short	124                     # 0x7c
	.short	113                     # 0x71
	.short	124                     # 0x7c
	.short	126                     # 0x7e
	.short	0                       # 0x0
	.short	290                     # 0x122
	.short	289                     # 0x121
	.short	158                     # 0x9e
	.short	137                     # 0x89
	.short	287                     # 0x11f
	.short	322                     # 0x142
	.short	153                     # 0x99
	.short	151                     # 0x97
	.short	141                     # 0x8d
	.short	152                     # 0x98
	.short	154                     # 0x9a
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	156                     # 0x9c
	.short	148                     # 0x94
	.short	154                     # 0x9a
	.short	152                     # 0x98
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	322                     # 0x142
	.short	161                     # 0xa1
	.short	158                     # 0x9e
	.short	153                     # 0x99
	.short	178                     # 0xb2
	.short	286                     # 0x11e
	.short	322                     # 0x142
	.short	291                     # 0x123
	.short	322                     # 0x142
	.short	168                     # 0xa8
	.short	173                     # 0xad
	.short	174                     # 0xae
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	186                     # 0xba
	.short	174                     # 0xae
	.short	191                     # 0xbf
	.short	177                     # 0xb1
	.short	191                     # 0xbf
	.short	193                     # 0xc1
	.short	198                     # 0xc6
	.short	192                     # 0xc0
	.short	284                     # 0x11c
	.short	285                     # 0x11d
	.short	186                     # 0xba
	.short	187                     # 0xbb
	.short	187                     # 0xbb
	.short	199                     # 0xc7
	.short	191                     # 0xbf
	.short	189                     # 0xbd
	.short	192                     # 0xc0
	.short	322                     # 0x142
	.short	192                     # 0xc0
	.short	196                     # 0xc4
	.short	322                     # 0x142
	.short	283                     # 0x11b
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	197                     # 0xc5
	.short	212                     # 0xd4
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	230                     # 0xe6
	.short	322                     # 0x142
	.short	209                     # 0xd1
	.short	214                     # 0xd6
	.short	230                     # 0xe6
	.short	220                     # 0xdc
	.short	219                     # 0xdb
	.short	224                     # 0xe0
	.short	224                     # 0xe0
	.short	238                     # 0xee
	.short	236                     # 0xec
	.short	242                     # 0xf2
	.short	322                     # 0x142
	.short	231                     # 0xe7
	.short	234                     # 0xea
	.short	233                     # 0xe9
	.short	322                     # 0x142
	.short	234                     # 0xea
	.short	241                     # 0xf1
	.short	276                     # 0x114
	.short	239                     # 0xef
	.short	322                     # 0x142
	.short	240                     # 0xf0
	.short	253                     # 0xfd
	.short	258                     # 0x102
	.short	260                     # 0x104
	.short	90                      # 0x5a
	.short	322                     # 0x142
	.short	322                     # 0x142
	.short	308                     # 0x134
	.short	311                     # 0x137
	.short	314                     # 0x13a
	.short	316                     # 0x13c
	.size	yy_base, 316

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
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	12                      # 0xc
	.short	15                      # 0xf
	.short	17                      # 0x11
	.short	15                      # 0xf
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	21                      # 0x15
	.short	17                      # 0x11
	.short	12                      # 0xc
	.short	20                      # 0x14
	.short	20                      # 0x14
	.short	15                      # 0xf
	.short	14                      # 0xe
	.short	20                      # 0x14
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	21                      # 0x15
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	13                      # 0xd
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	17                      # 0x11
	.short	26                      # 0x1a
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	21                      # 0x15
	.short	17                      # 0x11
	.short	12                      # 0xc
	.short	24                      # 0x18
	.short	26                      # 0x1a
	.short	15                      # 0xf
	.short	29                      # 0x1d
	.short	151                     # 0x97
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	21                      # 0x15
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	36                      # 0x24
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	40                      # 0x28
	.short	26                      # 0x1a
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	39                      # 0x27
	.short	24                      # 0x18
	.short	26                      # 0x1a
	.short	37                      # 0x25
	.short	29                      # 0x1d
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	42                      # 0x2a
	.short	38                      # 0x26
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	37                      # 0x25
	.short	40                      # 0x28
	.short	45                      # 0x2d
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	36                      # 0x24
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	39                      # 0x27
	.short	42                      # 0x2a
	.short	54                      # 0x36
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	37                      # 0x25
	.short	54                      # 0x36
	.short	45                      # 0x2d
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	54                      # 0x36
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	64                      # 0x40
	.short	63                      # 0x3f
	.short	54                      # 0x36
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	54                      # 0x36
	.short	63                      # 0x3f
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	74                      # 0x4a
	.short	54                      # 0x36
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	64                      # 0x40
	.short	84                      # 0x54
	.short	89                      # 0x59
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	90                      # 0x5a
	.short	84                      # 0x54
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	74                      # 0x4a
	.short	91                      # 0x5b
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	89                      # 0x59
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	90                      # 0x5a
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	104                     # 0x68
	.short	91                      # 0x5b
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	121                     # 0x79
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	122                     # 0x7a
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	104                     # 0x68
	.short	127                     # 0x7f
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	125                     # 0x7d
	.short	128                     # 0x80
	.short	121                     # 0x79
	.short	125                     # 0x7d
	.short	129                     # 0x81
	.short	131                     # 0x83
	.short	122                     # 0x7a
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	132                     # 0x84
	.short	133                     # 0x85
	.short	127                     # 0x7f
	.short	134                     # 0x86
	.short	135                     # 0x87
	.short	136                     # 0x88
	.short	138                     # 0x8a
	.short	139                     # 0x8b
	.short	140                     # 0x8c
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	125                     # 0x7d
	.short	128                     # 0x80
	.short	145                     # 0x91
	.short	125                     # 0x7d
	.short	129                     # 0x81
	.short	131                     # 0x83
	.short	147                     # 0x93
	.short	130                     # 0x82
	.short	130                     # 0x82
	.short	132                     # 0x84
	.short	133                     # 0x85
	.short	148                     # 0x94
	.short	134                     # 0x86
	.short	135                     # 0x87
	.short	136                     # 0x88
	.short	138                     # 0x8a
	.short	139                     # 0x8b
	.short	140                     # 0x8c
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	149                     # 0x95
	.short	150                     # 0x96
	.short	145                     # 0x91
	.short	144                     # 0x90
	.short	115                     # 0x73
	.short	103                     # 0x67
	.short	147                     # 0x93
	.short	102                     # 0x66
	.short	87                      # 0x57
	.short	85                      # 0x55
	.short	65                      # 0x41
	.short	148                     # 0x94
	.short	62                      # 0x3e
	.short	61                      # 0x3d
	.short	47                      # 0x2f
	.short	46                      # 0x2e
	.short	41                      # 0x29
	.short	34                      # 0x22
	.short	32                      # 0x20
	.short	16                      # 0x10
	.short	149                     # 0x95
	.short	150                     # 0x96
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	156                     # 0x9c
	.short	156                     # 0x9c
	.short	157                     # 0x9d
	.short	7                       # 0x7
	.short	157                     # 0x9d
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.size	yy_chk, 758

	.type	yy_def,@object          # @yy_def
	.align	16
yy_def:
	.short	0                       # 0x0
	.short	153                     # 0x99
	.short	1                       # 0x1
	.short	154                     # 0x9a
	.short	154                     # 0x9a
	.short	155                     # 0x9b
	.short	155                     # 0x9b
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	156                     # 0x9c
	.short	153                     # 0x99
	.short	157                     # 0x9d
	.short	153                     # 0x99
	.short	157                     # 0x9d
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	156                     # 0x9c
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	157                     # 0x9d
	.short	157                     # 0x9d
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	157                     # 0x9d
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	0                       # 0x0
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.size	yy_def, 316

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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	yy_meta, 228

	.type	yy_nxt,@object          # @yy_nxt
	.align	16
yy_nxt:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	9                       # 0x9
	.short	8                       # 0x8
	.short	11                      # 0xb
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	8                       # 0x8
	.short	16                      # 0x10
	.short	8                       # 0x8
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	8                       # 0x8
	.short	20                      # 0x14
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	8                       # 0x8
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	8                       # 0x8
	.short	29                      # 0x1d
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	8                       # 0x8
	.short	20                      # 0x14
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	8                       # 0x8
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	8                       # 0x8
	.short	29                      # 0x1d
	.short	33                      # 0x21
	.short	33                      # 0x21
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	34                      # 0x22
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	38                      # 0x26
	.short	37                      # 0x25
	.short	36                      # 0x24
	.short	42                      # 0x2a
	.short	37                      # 0x25
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	48                      # 0x30
	.short	43                      # 0x2b
	.short	38                      # 0x26
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	38                      # 0x26
	.short	40                      # 0x28
	.short	47                      # 0x2f
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	49                      # 0x31
	.short	52                      # 0x34
	.short	54                      # 0x36
	.short	38                      # 0x26
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	42                      # 0x2a
	.short	55                      # 0x37
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	48                      # 0x30
	.short	43                      # 0x2b
	.short	38                      # 0x26
	.short	53                      # 0x35
	.short	56                      # 0x38
	.short	38                      # 0x26
	.short	59                      # 0x3b
	.short	152                     # 0x98
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	49                      # 0x31
	.short	52                      # 0x34
	.short	54                      # 0x36
	.short	39                      # 0x27
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	64                      # 0x40
	.short	55                      # 0x37
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	35                      # 0x23
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	53                      # 0x35
	.short	56                      # 0x38
	.short	36                      # 0x24
	.short	59                      # 0x3b
	.short	37                      # 0x25
	.short	46                      # 0x2e
	.short	46                      # 0x2e
	.short	38                      # 0x26
	.short	66                      # 0x42
	.short	47                      # 0x2f
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	38                      # 0x26
	.short	64                      # 0x40
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	38                      # 0x26
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	38                      # 0x26
	.short	66                      # 0x42
	.short	76                      # 0x4c
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	38                      # 0x26
	.short	77                      # 0x4d
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	78                      # 0x4e
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	86                      # 0x56
	.short	84                      # 0x54
	.short	76                      # 0x4c
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	90                      # 0x5a
	.short	77                      # 0x4d
	.short	85                      # 0x55
	.short	91                      # 0x5b
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	78                      # 0x4e
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	86                      # 0x56
	.short	84                      # 0x54
	.short	104                     # 0x68
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	90                      # 0x5a
	.short	105                     # 0x69
	.short	102                     # 0x66
	.short	91                      # 0x5b
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	106                     # 0x6a
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	104                     # 0x68
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	111                     # 0x6f
	.short	105                     # 0x69
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	114                     # 0x72
	.short	116                     # 0x74
	.short	106                     # 0x6a
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	123                     # 0x7b
	.short	124                     # 0x7c
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	126                     # 0x7e
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	111                     # 0x6f
	.short	127                     # 0x7f
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	114                     # 0x72
	.short	116                     # 0x74
	.short	130                     # 0x82
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	123                     # 0x7b
	.short	124                     # 0x7c
	.short	128                     # 0x80
	.short	131                     # 0x83
	.short	126                     # 0x7e
	.short	129                     # 0x81
	.short	132                     # 0x84
	.short	135                     # 0x87
	.short	127                     # 0x7f
	.short	133                     # 0x85
	.short	134                     # 0x86
	.short	136                     # 0x88
	.short	137                     # 0x89
	.short	130                     # 0x82
	.short	138                     # 0x8a
	.short	139                     # 0x8b
	.short	140                     # 0x8c
	.short	141                     # 0x8d
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	144                     # 0x90
	.short	145                     # 0x91
	.short	128                     # 0x80
	.short	131                     # 0x83
	.short	147                     # 0x93
	.short	129                     # 0x81
	.short	132                     # 0x84
	.short	135                     # 0x87
	.short	148                     # 0x94
	.short	133                     # 0x85
	.short	134                     # 0x86
	.short	136                     # 0x88
	.short	137                     # 0x89
	.short	149                     # 0x95
	.short	138                     # 0x8a
	.short	139                     # 0x8b
	.short	140                     # 0x8c
	.short	141                     # 0x8d
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	144                     # 0x90
	.short	145                     # 0x91
	.short	150                     # 0x96
	.short	151                     # 0x97
	.short	147                     # 0x93
	.short	146                     # 0x92
	.short	125                     # 0x7d
	.short	115                     # 0x73
	.short	148                     # 0x94
	.short	62                      # 0x3e
	.short	103                     # 0x67
	.short	62                      # 0x3e
	.short	87                      # 0x57
	.short	149                     # 0x95
	.short	84                      # 0x54
	.short	62                      # 0x3e
	.short	47                      # 0x2f
	.short	47                      # 0x2f
	.short	65                      # 0x41
	.short	63                      # 0x3f
	.short	62                      # 0x3e
	.short	41                      # 0x29
	.short	150                     # 0x96
	.short	151                     # 0x97
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	32                      # 0x20
	.short	60                      # 0x3c
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	153                     # 0x99
	.short	61                      # 0x3d
	.short	31                      # 0x1f
	.short	31                      # 0x1f
	.short	7                       # 0x7
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.short	153                     # 0x99
	.size	yy_nxt, 758

	.type	csim_text,@object       # @csim_text
	.bss
	.globl	csim_text
	.align	8
csim_text:
	.quad	0
	.size	csim_text, 8

	.type	csim_leng,@object       # @csim_leng
	.globl	csim_leng
	.align	8
csim_leng:
	.quad	0                       # 0x0
	.size	csim_leng, 8

	.type	yy_n_chars,@object      # @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,8,8
	.type	yy_did_buffer_switch_on_eof,@object # @yy_did_buffer_switch_on_eof
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str, 51

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"out of dynamic memory in csim__create_buffer()"
	.size	.L.str.1, 47

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"out of dynamic memory in csim__scan_buffer()"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"out of dynamic memory in csim__scan_bytes()"
	.size	.L.str.3, 44

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bad buffer in csim__scan_bytes()"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.5, 56

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.6, 44

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"input in flex scanner failed"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"out of dynamic memory in yy_get_next_buffer()"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"out of dynamic memory in csim_ensure_buffer_stack()"
	.size	.L.str.9, 52

	.type	yy_buffer_stack_max,@object # @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s\n"
	.size	.L.str.10, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
