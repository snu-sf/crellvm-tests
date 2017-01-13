	.text
	.file	"fonts.bc"
	.globl	fonts_map_new
	.align	16, 0x90
	.type	fonts_map_new,@function
fonts_map_new:                          # @fonts_map_new
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
	callq	pair_table_new
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fonts_map_new, .Lfunc_end0-fonts_map_new
	.cfi_endproc

	.globl	fonts_map_free
	.align	16, 0x90
	.type	fonts_map_free,@function
fonts_map_free:                         # @fonts_map_free
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
	movq	-8(%rbp), %rdi
	callq	pair_table_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fonts_map_free, .Lfunc_end1-fonts_map_free
	.cfi_endproc

	.globl	load_main_fonts_map
	.align	16, 0x90
	.type	load_main_fonts_map,@function
load_main_fonts_map:                    # @load_main_fonts_map
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
	movabsq	$.L.str, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xpw_find_file
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	load_fonts_map
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	free
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	load_main_fonts_map, .Lfunc_end2-load_main_fonts_map
	.cfi_endproc

	.align	16, 0x90
	.type	load_fonts_map,@function
load_fonts_map:                         # @load_fonts_map
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	408(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	pair_table_load
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_fonts_map, .Lfunc_end3-load_fonts_map
	.cfi_endproc

	.globl	afmlex
	.align	16, 0x90
	.type	afmlex,@function
afmlex:                                 # @afmlex
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
	subq	$128, %rsp
	cmpl	$0, yy_init
	jne	.LBB4_12
# BB#1:                                 # %if.then
	movl	$1, yy_init
	cmpl	$0, yy_start
	jne	.LBB4_3
# BB#2:                                 # %if.then.2
	movl	$1, yy_start
.LBB4_3:                                # %if.end
	cmpq	$0, afmin
	jne	.LBB4_5
# BB#4:                                 # %if.then.4
	movq	stdin, %rax
	movq	%rax, afmin
.LBB4_5:                                # %if.end.5
	cmpq	$0, afmout
	jne	.LBB4_7
# BB#6:                                 # %if.then.7
	movq	stdout, %rax
	movq	%rax, afmout
.LBB4_7:                                # %if.end.8
	cmpq	$0, yy_buffer_stack
	je	.LBB4_9
# BB#8:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB4_11
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB4_11
	jmp	.LBB4_10
.LBB4_10:                               # %if.then.11
	callq	afmensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	afmin, %rdi
	callq	afm_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB4_11:                               # %if.end.13
	callq	afm_load_buffer_state
.LBB4_12:                               # %if.end.14
	jmp	.LBB4_13
.LBB4_13:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #       Child Loop BB4_15 Depth 3
                                        #         Child Loop BB4_18 Depth 4
                                        #       Child Loop BB4_25 Depth 3
                                        #         Child Loop BB4_30 Depth 4
                                        #         Child Loop BB4_37 Depth 4
                                        #     Child Loop BB4_51 Depth 2
                                        #     Child Loop BB4_47 Depth 2
                                        #     Child Loop BB4_43 Depth 2
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	yy_hold_char, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	yy_start, %edx
	movl	%edx, -8(%rbp)
.LBB4_14:                               # %yy_match
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_15 Depth 3
                                        #         Child Loop BB4_18 Depth 4
                                        #       Child Loop BB4_25 Depth 3
                                        #         Child Loop BB4_30 Depth 4
                                        #         Child Loop BB4_37 Depth 4
	jmp	.LBB4_15
.LBB4_15:                               # %do.body
                                        #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_18 Depth 4
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movb	%cl, %dl
	movb	%dl, -29(%rbp)
	movslq	-8(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB4_17
# BB#16:                                # %if.then.20
                                        #   in Loop: Header=BB4_15 Depth=3
	movl	-8(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB4_17:                               # %if.end.21
                                        #   in Loop: Header=BB4_15 Depth=3
	jmp	.LBB4_18
.LBB4_18:                               # %while.cond.22
                                        #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        #       Parent Loop BB4_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-29(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB4_22
# BB#19:                                # %while.body.31
                                        #   in Loop: Header=BB4_18 Depth=4
	movslq	-8(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$57, -8(%rbp)
	jl	.LBB4_21
# BB#20:                                # %if.then.37
                                        #   in Loop: Header=BB4_18 Depth=4
	movzbl	-29(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -29(%rbp)
.LBB4_21:                               # %if.end.42
                                        #   in Loop: Header=BB4_18 Depth=4
	jmp	.LBB4_18
.LBB4_22:                               # %while.end
                                        #   in Loop: Header=BB4_15 Depth=3
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
                                        #   in Loop: Header=BB4_15 Depth=3
	movslq	-8(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	cmpl	$84, %ecx
	jne	.LBB4_15
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB4_14 Depth=2
	jmp	.LBB4_25
.LBB4_25:                               # %yy_find_action
                                        #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_30 Depth 4
                                        #         Child Loop BB4_37 Depth 4
	movslq	-8(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB4_27
# BB#26:                                # %if.then.61
                                        #   in Loop: Header=BB4_25 Depth=3
	movq	yy_last_accepting_cpos, %rax
	movq	%rax, -16(%rbp)
	movl	yy_last_accepting_state, %ecx
	movl	%ecx, -8(%rbp)
	movslq	-8(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
.LBB4_27:                               # %if.end.65
                                        #   in Loop: Header=BB4_25 Depth=3
	movq	-24(%rbp), %rax
	movq	%rax, afmtext
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, afmleng
	movq	-16(%rbp), %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, yy_c_buf_p
	cmpl	$11, -28(%rbp)
	je	.LBB4_36
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_25 Depth=3
	movslq	-28(%rbp), %rax
	cmpl	$0, yy_rule_can_match_eol(,%rax,4)
	je	.LBB4_36
# BB#29:                                # %if.then.72
                                        #   in Loop: Header=BB4_25 Depth=3
	movl	$0, -36(%rbp)
.LBB4_30:                               # %for.cond
                                        #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        #       Parent Loop BB4_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-36(%rbp), %eax
	cmpl	afmleng, %eax
	jge	.LBB4_35
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB4_30 Depth=4
	movslq	-36(%rbp), %rax
	movq	afmtext, %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB4_33
# BB#32:                                # %if.then.80
                                        #   in Loop: Header=BB4_30 Depth=4
	movl	afmlineno, %eax
	addl	$1, %eax
	movl	%eax, afmlineno
.LBB4_33:                               # %if.end.81
                                        #   in Loop: Header=BB4_30 Depth=4
	jmp	.LBB4_34
.LBB4_34:                               # %for.inc
                                        #   in Loop: Header=BB4_30 Depth=4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_30
.LBB4_35:                               # %for.end
                                        #   in Loop: Header=BB4_25 Depth=3
	jmp	.LBB4_36
.LBB4_36:                               # %if.end.83
                                        #   in Loop: Header=BB4_25 Depth=3
	jmp	.LBB4_37
.LBB4_37:                               # %do_action
                                        #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        #       Parent Loop BB4_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$13, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB4_76
# BB#79:                                # %do_action
                                        #   in Loop: Header=BB4_37 Depth=4
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_38:                               # %sw.bb
                                        #   in Loop: Header=BB4_25 Depth=3
	movb	yy_hold_char, %al
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	movq	yy_last_accepting_cpos, %rcx
	movq	%rcx, -16(%rbp)
	movl	yy_last_accepting_state, %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB4_25
.LBB4_39:                               # %sw.bb.84
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$3, yy_start
	jmp	.LBB4_77
.LBB4_40:                               # %sw.bb.85
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_77
.LBB4_41:                               # %sw.bb.86
	movl	$1, yy_start
	movl	$0, -4(%rbp)
	jmp	.LBB4_78
.LBB4_42:                               # %sw.bb.87
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	afmtext, %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	afmtext, %rax
	movsbl	2(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, last_index_read
.LBB4_43:                               # %while.cond.90
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_45
# BB#44:                                # %while.body.92
                                        #   in Loop: Header=BB4_43 Depth=2
	imull	$10, last_index_read, %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, last_index_read
	jmp	.LBB4_43
.LBB4_45:                               # %while.end.97
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_77
.LBB4_46:                               # %sw.bb.98
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	afmtext, %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	afmtext, %rax
	movsbl	3(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, last_index_read
.LBB4_47:                               # %while.cond.104
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_49
# BB#48:                                # %while.body.106
                                        #   in Loop: Header=BB4_47 Depth=2
	imull	$10, last_index_read, %eax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, last_index_read
	jmp	.LBB4_47
.LBB4_49:                               # %while.end.112
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%eax, %eax
	subl	last_index_read, %eax
	movl	%eax, last_index_read
	jmp	.LBB4_77
.LBB4_50:                               # %sw.bb.114
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	afmtext, %rax
	addq	$4, %rax
	movq	%rax, -64(%rbp)
	movq	afmtext, %rax
	movsbl	3(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, last_wx_read
.LBB4_51:                               # %while.cond.120
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_53
# BB#52:                                # %while.body.122
                                        #   in Loop: Header=BB4_51 Depth=2
	imull	$10, last_wx_read, %eax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movsbl	(%rcx), %esi
	addl	%esi, %eax
	subl	$48, %eax
	movl	%eax, last_wx_read
	jmp	.LBB4_51
.LBB4_53:                               # %while.end.128
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_77
.LBB4_54:                               # %sw.bb.129
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	afmtext, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	font_info_being_parsed, %rax
	movq	8(%rax), %rdi
	movq	-72(%rbp), %rsi
	movl	last_index_read, %edx
	movl	last_wx_read, %ecx
	callq	wx_entry_add
	jmp	.LBB4_77
.LBB4_55:                               # %sw.bb.132
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_77
.LBB4_56:                               # %sw.bb.133
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_77
.LBB4_57:                               # %sw.bb.134
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	afmtext, %rdi
	movslq	afmleng, %rsi
	movq	afmout, %rcx
	callq	fwrite
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_77
.LBB4_58:                               # %sw.bb.137
	movl	$0, -4(%rbp)
	jmp	.LBB4_78
.LBB4_59:                               # %sw.bb.138
                                        #   in Loop: Header=BB4_37 Depth=4
	movq	-16(%rbp), %rax
	movq	afmtext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -76(%rbp)
	movb	yy_hold_char, %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB4_61
# BB#60:                                # %if.then.147
                                        #   in Loop: Header=BB4_37 Depth=4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	28(%rax), %edx
	movl	%edx, yy_n_chars
	movq	afmin, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 56(%rax)
.LBB4_61:                               # %if.end.152
                                        #   in Loop: Header=BB4_37 Depth=4
	movq	yy_c_buf_p, %rax
	movslq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB4_65
# BB#62:                                # %if.then.158
                                        #   in Loop: Header=BB4_25 Depth=3
	movq	afmtext, %rax
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	yy_try_NUL_trans
	movl	%eax, -80(%rbp)
	movq	afmtext, %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_64
# BB#63:                                # %if.then.164
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	yy_c_buf_p, %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, -16(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB4_14
.LBB4_64:                               # %if.else
                                        #   in Loop: Header=BB4_25 Depth=3
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_25
.LBB4_65:                               # %if.else.166
                                        #   in Loop: Header=BB4_37 Depth=4
	callq	yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB4_72
	jmp	.LBB4_80
.LBB4_80:                               # %if.else.166
                                        #   in Loop: Header=BB4_37 Depth=4
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB4_66
	jmp	.LBB4_81
.LBB4_81:                               # %if.else.166
                                        #   in Loop: Header=BB4_25 Depth=3
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB4_73
	jmp	.LBB4_74
.LBB4_66:                               # %sw.bb.168
                                        #   in Loop: Header=BB4_37 Depth=4
	movl	$0, yy_did_buffer_switch_on_eof
	callq	afmwrap
	cmpl	$0, %eax
	je	.LBB4_68
# BB#67:                                # %if.then.171
                                        #   in Loop: Header=BB4_37 Depth=4
	movl	$2, %eax
	movq	afmtext, %rcx
	movq	%rcx, yy_c_buf_p
	movl	yy_start, %edx
	subl	$1, %edx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-120(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$11, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_37
.LBB4_68:                               # %if.else.176
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpl	$0, yy_did_buffer_switch_on_eof
	jne	.LBB4_70
# BB#69:                                # %if.then.178
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	afmin, %rdi
	callq	afmrestart
.LBB4_70:                               # %if.end.179
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_71
.LBB4_71:                               # %if.end.180
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_74
.LBB4_72:                               # %sw.bb.181
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	afmtext, %rax
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -8(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	afmtext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB4_14
.LBB4_73:                               # %sw.bb.186
                                        #   in Loop: Header=BB4_25 Depth=3
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
	movq	afmtext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB4_25
.LBB4_74:                               # %sw.epilog
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_75
.LBB4_75:                               # %if.end.193
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_77
.LBB4_76:                               # %sw.default
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.1, %rdi
	callq	yy_fatal_error
.LBB4_77:                               # %sw.epilog.194
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_13
.LBB4_78:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	afmlex, .Lfunc_end4-afmlex
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_38
	.quad	.LBB4_39
	.quad	.LBB4_40
	.quad	.LBB4_41
	.quad	.LBB4_42
	.quad	.LBB4_46
	.quad	.LBB4_50
	.quad	.LBB4_54
	.quad	.LBB4_55
	.quad	.LBB4_56
	.quad	.LBB4_57
	.quad	.LBB4_59
	.quad	.LBB4_58
	.quad	.LBB4_58

	.text
	.align	16, 0x90
	.type	afmensure_buffer_stack,@function
afmensure_buffer_stack:                 # @afmensure_buffer_stack
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
	cmpq	$0, yy_buffer_stack
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	afmalloc
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
	jmp	.LBB5_4
.LBB5_2:                                # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack_max, %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jb	.LBB5_4
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
	callq	afmrealloc
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
.LBB5_4:                                # %if.end.16
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	afmensure_buffer_stack, .Lfunc_end5-afmensure_buffer_stack
	.cfi_endproc

	.globl	afm_create_buffer
	.align	16, 0x90
	.type	afm_create_buffer,@function
afm_create_buffer:                      # @afm_create_buffer
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
	movl	$64, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%eax, %edi
	callq	afmalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	callq	yy_fatal_error
.LBB6_2:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	addl	$2, %eax
	movl	%eax, %edi
	callq	afmalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.2, %rdi
	callq	yy_fatal_error
.LBB6_4:                                # %if.end.6
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	afm_init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	afm_create_buffer, .Lfunc_end6-afm_create_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	afm_load_buffer_state,@function
afm_load_buffer_state:                  # @afm_load_buffer_state
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
	movq	%rax, afmtext
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, afmin
	movq	yy_c_buf_p, %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	popq	%rbp
	retq
.Lfunc_end7:
	.size	afm_load_buffer_state, .Lfunc_end7-afm_load_buffer_state
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_add,@function
wx_entry_add:                           # @wx_entry_add
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
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB8_3:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	wx_entry_add, .Lfunc_end8-wx_entry_add
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_previous_state,@function
yy_get_previous_state:                  # @yy_get_previous_state
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
	movl	yy_start, %eax
	movl	%eax, -4(%rbp)
	movq	afmtext, %rcx
	movq	%rcx, -16(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
	movq	-16(%rbp), %rax
	cmpq	yy_c_buf_p, %rax
	jae	.LBB9_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB9_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movl	yy_ec(,%rax,4), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB9_5
.LBB9_5:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movslq	-4(%rbp), %rdx
	cmpw	$0, yy_accept(,%rdx,2)
	je	.LBB9_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB9_7:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %while.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB9_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB9_8 Depth=2
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$57, -4(%rbp)
	jl	.LBB9_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB9_8 Depth=2
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB9_11:                               # %if.end.25
                                        #   in Loop: Header=BB9_8 Depth=2
	jmp	.LBB9_8
.LBB9_12:                               # %while.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_1
.LBB9_14:                               # %for.end
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	yy_get_previous_state, .Lfunc_end9-yy_get_previous_state
	.cfi_endproc

	.align	16, 0x90
	.type	yy_try_NUL_trans,@function
yy_try_NUL_trans:                       # @yy_try_NUL_trans
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
	movl	%edi, -4(%rbp)
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	movb	$1, -17(%rbp)
	movslq	-4(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB10_2:                               # %if.end
	jmp	.LBB10_3
.LBB10_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB10_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$57, -4(%rbp)
	jl	.LBB10_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB10_3 Depth=1
	movzbl	-17(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -17(%rbp)
.LBB10_6:                               # %if.end.18
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_3
.LBB10_7:                               # %while.end
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-17(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$56, -4(%rbp)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB10_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB10_10:                              # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end10:
	.size	yy_try_NUL_trans, .Lfunc_end10-yy_try_NUL_trans
	.cfi_endproc

	.align	16, 0x90
	.type	yy_get_next_buffer,@function
yy_get_next_buffer:                     # @yy_get_next_buffer
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
	subq	$112, %rsp
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	afmtext, %rax
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
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rdi
	callq	yy_fatal_error
.LBB11_2:                               # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB11_6
# BB#3:                                 # %if.then.6
	movq	yy_c_buf_p, %rax
	movq	afmtext, %rcx
	subq	%rcx, %rax
	subq	$0, %rax
	cmpq	$1, %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB11_58
.LBB11_5:                               # %if.else
	movl	$2, -4(%rbp)
	jmp	.LBB11_58
.LBB11_6:                               # %if.end.9
	movq	yy_c_buf_p, %rax
	movq	afmtext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB11_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB11_7 Depth=1
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
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB11_7
.LBB11_10:                              # %for.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB11_12
# BB#11:                                # %if.then.20
	movl	$0, yy_n_chars
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$0, 28(%rax)
	jmp	.LBB11_51
.LBB11_12:                              # %if.else.22
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %edx
	subl	-28(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -40(%rbp)
.LBB11_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jg	.LBB11_26
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB11_13 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB11_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false
                                        #   in Loop: Header=BB11_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB11_17
.LBB11_17:                              # %cond.end
                                        #   in Loop: Header=BB11_13 Depth=1
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
	je	.LBB11_22
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jg	.LBB11_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shrl	$3, %ecx
	movq	-48(%rbp), %rax
	addl	24(%rax), %ecx
	movl	%ecx, 24(%rax)
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.43
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 24(%rax)
.LBB11_21:                              # %if.end.46
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, %esi
	callq	afmrealloc
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.51
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.LBB11_23:                              # %if.end.53
                                        #   in Loop: Header=BB11_13 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_25
# BB#24:                                # %if.then.56
                                        #   in Loop: Header=BB11_13 Depth=1
	movabsq	$.L.str.18, %rdi
	callq	yy_fatal_error
.LBB11_25:                              # %if.end.57
                                        #   in Loop: Header=BB11_13 Depth=1
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
	jmp	.LBB11_13
.LBB11_26:                              # %while.end
	cmpl	$8192, -40(%rbp)        # imm = 0x2000
	jle	.LBB11_28
# BB#27:                                # %if.then.67
	movl	$8192, -40(%rbp)        # imm = 0x2000
.LBB11_28:                              # %if.end.68
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 36(%rax)
	je	.LBB11_42
# BB#29:                                # %if.then.71
	movl	$42, -60(%rbp)
	movq	$0, -72(%rbp)
.LBB11_30:                              # %for.cond.72
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jae	.LBB11_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_30 Depth=1
	movq	afmin, %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -60(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -81(%rbp)          # 1-byte Spill
	je	.LBB11_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB11_30 Depth=1
	cmpl	$10, -60(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB11_33:                              # %land.end
                                        #   in Loop: Header=BB11_30 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_34
	jmp	.LBB11_36
.LBB11_34:                              # %for.body.81
                                        #   in Loop: Header=BB11_30 Depth=1
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
                                        #   in Loop: Header=BB11_30 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB11_30
.LBB11_36:                              # %for.end.90
	cmpl	$10, -60(%rbp)
	jne	.LBB11_38
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
.LBB11_38:                              # %if.end.101
	cmpl	$-1, -60(%rbp)
	jne	.LBB11_41
# BB#39:                                # %land.lhs.true.104
	movq	afmin, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB11_41
# BB#40:                                # %if.then.107
	movabsq	$.L.str.19, %rdi
	callq	yy_fatal_error
.LBB11_41:                              # %if.end.108
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, yy_n_chars
	jmp	.LBB11_50
.LBB11_42:                              # %if.else.110
	callq	__errno_location
	movl	$0, (%rax)
.LBB11_43:                              # %while.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rdi
	movq	(%rdi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	movslq	-40(%rbp), %rdx
	movq	afmin, %rdi
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
	jne	.LBB11_45
# BB#44:                                # %land.rhs.122
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	afmin, %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB11_45:                              # %land.end.125
                                        #   in Loop: Header=BB11_43 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_46
	jmp	.LBB11_49
.LBB11_46:                              # %while.body.126
                                        #   in Loop: Header=BB11_43 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB11_48
# BB#47:                                # %if.then.130
	movabsq	$.L.str.19, %rdi
	callq	yy_fatal_error
	jmp	.LBB11_49
.LBB11_48:                              # %if.end.131
                                        #   in Loop: Header=BB11_43 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	afmin, %rdi
	callq	clearerr
	jmp	.LBB11_43
.LBB11_49:                              # %while.end.133
	jmp	.LBB11_50
.LBB11_50:                              # %if.end.134
	movl	yy_n_chars, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 28(%rcx)
.LBB11_51:                              # %if.end.137
	cmpl	$0, yy_n_chars
	jne	.LBB11_56
# BB#52:                                # %if.then.140
	cmpl	$0, -28(%rbp)
	jne	.LBB11_54
# BB#53:                                # %if.then.143
	movl	$1, -36(%rbp)
	movq	afmin, %rdi
	callq	afmrestart
	jmp	.LBB11_55
.LBB11_54:                              # %if.else.144
	movl	$2, -36(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$2, 56(%rax)
.LBB11_55:                              # %if.end.147
	jmp	.LBB11_57
.LBB11_56:                              # %if.else.148
	movl	$0, -36(%rbp)
.LBB11_57:                              # %if.end.149
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
	movq	%rcx, afmtext
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB11_58:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	yy_get_next_buffer, .Lfunc_end11-yy_get_next_buffer
	.cfi_endproc

	.globl	afmwrap
	.align	16, 0x90
	.type	afmwrap,@function
afmwrap:                                # @afmwrap
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
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	afmwrap, .Lfunc_end12-afmwrap
	.cfi_endproc

	.globl	afmrestart
	.align	16, 0x90
	.type	afmrestart,@function
afmrestart:                             # @afmrestart
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
	cmpq	$0, yy_buffer_stack
	je	.LBB13_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB13_4
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB13_4
	jmp	.LBB13_3
.LBB13_3:                               # %if.then
	callq	afmensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	afmin, %rdi
	callq	afm_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB13_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB13_6
# BB#5:                                 # %cond.true.4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB13_7
.LBB13_6:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB13_7
.LBB13_7:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	afm_init_buffer
	callq	afm_load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	afmrestart, .Lfunc_end13-afmrestart
	.cfi_endproc

	.align	16, 0x90
	.type	yy_fatal_error,@function
yy_fatal_error:                         # @yy_fatal_error
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
	movabsq	$.L.str.20, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$2, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end14:
	.size	yy_fatal_error, .Lfunc_end14-yy_fatal_error
	.cfi_endproc

	.align	16, 0x90
	.type	afm_init_buffer,@function
afm_init_buffer:                        # @afm_init_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	afm_flush_buffer
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB15_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.LBB15_5:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB15_7
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
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB15_8
.LBB15_8:                               # %cond.end.7
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
.Lfunc_end15:
	.size	afm_init_buffer, .Lfunc_end15-afm_init_buffer
	.cfi_endproc

	.globl	afm_switch_to_buffer
	.align	16, 0x90
	.type	afm_switch_to_buffer,@function
afm_switch_to_buffer:                   # @afm_switch_to_buffer
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
	callq	afmensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB16_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB16_3
.LBB16_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB16_5
# BB#4:                                 # %if.then
	jmp	.LBB16_10
.LBB16_5:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB16_7
# BB#6:                                 # %cond.true.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB16_8
	jmp	.LBB16_9
.LBB16_7:                               # %cond.false.5
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB16_8
	jmp	.LBB16_9
.LBB16_8:                               # %if.then.6
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
.LBB16_9:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	afm_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB16_10:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	afm_switch_to_buffer, .Lfunc_end16-afm_switch_to_buffer
	.cfi_endproc

	.globl	afmalloc
	.align	16, 0x90
	.type	afmalloc,@function
afmalloc:                               # @afmalloc
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
                                        # kill: RDI<def> EDI<kill>
	callq	malloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	afmalloc, .Lfunc_end17-afmalloc
	.cfi_endproc

	.globl	afm_delete_buffer
	.align	16, 0x90
	.type	afm_delete_buffer,@function
afm_delete_buffer:                      # @afm_delete_buffer
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_10
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, yy_buffer_stack
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB18_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_5
.LBB18_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_7
# BB#6:                                 # %if.then.2
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	$0, (%rcx,%rax,8)
.LBB18_7:                               # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB18_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	afmfree
.LBB18_9:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	afmfree
.LBB18_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	afm_delete_buffer, .Lfunc_end18-afm_delete_buffer
	.cfi_endproc

	.globl	afmfree
	.align	16, 0x90
	.type	afmfree,@function
afmfree:                                # @afmfree
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
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	afmfree, .Lfunc_end19-afmfree
	.cfi_endproc

	.globl	afm_flush_buffer
	.align	16, 0x90
	.type	afm_flush_buffer,@function
afm_flush_buffer:                       # @afm_flush_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_7
.LBB20_2:                               # %if.end
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
	je	.LBB20_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB20_5
.LBB20_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_7
# BB#6:                                 # %if.then.7
	callq	afm_load_buffer_state
.LBB20_7:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	afm_flush_buffer, .Lfunc_end20-afm_flush_buffer
	.cfi_endproc

	.globl	afmpush_buffer_state
	.align	16, 0x90
	.type	afmpush_buffer_state,@function
afmpush_buffer_state:                   # @afmpush_buffer_state
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_11
.LBB21_2:                               # %if.end
	callq	afmensure_buffer_stack
	cmpq	$0, yy_buffer_stack
	je	.LBB21_4
# BB#3:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB21_5
	jmp	.LBB21_6
.LBB21_4:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB21_5
	jmp	.LBB21_6
.LBB21_5:                               # %if.then.2
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
.LBB21_6:                               # %if.end.5
	cmpq	$0, yy_buffer_stack
	je	.LBB21_8
# BB#7:                                 # %cond.true.7
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB21_9
	jmp	.LBB21_10
.LBB21_8:                               # %cond.false.10
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB21_9
	jmp	.LBB21_10
.LBB21_9:                               # %if.then.11
	movq	yy_buffer_stack_top, %rax
	addq	$1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB21_10:                              # %if.end.12
	movq	-8(%rbp), %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	callq	afm_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB21_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	afmpush_buffer_state, .Lfunc_end21-afmpush_buffer_state
	.cfi_endproc

	.globl	afmpop_buffer_state
	.align	16, 0x90
	.type	afmpop_buffer_state,@function
afmpop_buffer_state:                    # @afmpop_buffer_state
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
	subq	$16, %rsp
	cmpq	$0, yy_buffer_stack
	je	.LBB22_2
# BB#1:                                 # %cond.true
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB22_4
	jmp	.LBB22_3
.LBB22_2:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_4
	jmp	.LBB22_3
.LBB22_3:                               # %if.then
	jmp	.LBB22_13
.LBB22_4:                               # %if.end
	cmpq	$0, yy_buffer_stack
	je	.LBB22_6
# BB#5:                                 # %cond.true.3
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB22_7
.LBB22_6:                               # %cond.false.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB22_7
.LBB22_7:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	callq	afm_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	cmpq	$0, yy_buffer_stack_top
	jbe	.LBB22_9
# BB#8:                                 # %if.then.7
	movq	yy_buffer_stack_top, %rax
	addq	$-1, %rax
	movq	%rax, yy_buffer_stack_top
.LBB22_9:                               # %if.end.8
	cmpq	$0, yy_buffer_stack
	je	.LBB22_11
# BB#10:                                # %cond.true.10
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB22_12
	jmp	.LBB22_13
.LBB22_11:                              # %cond.false.13
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB22_12
	jmp	.LBB22_13
.LBB22_12:                              # %if.then.14
	callq	afm_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB22_13:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	afmpop_buffer_state, .Lfunc_end22-afmpop_buffer_state
	.cfi_endproc

	.globl	afm_scan_buffer
	.align	16, 0x90
	.type	afm_scan_buffer,@function
afm_scan_buffer:                        # @afm_scan_buffer
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jb	.LBB23_3
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB23_3
# BB#2:                                 # %lor.lhs.false.3
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB23_4
.LBB23_3:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB23_7
.LBB23_4:                               # %if.end
	movl	$64, %edi
	callq	afmalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.3, %rdi
	callq	yy_fatal_error
.LBB23_6:                               # %if.end.11
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
	callq	afm_switch_to_buffer
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB23_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	afm_scan_buffer, .Lfunc_end23-afm_scan_buffer
	.cfi_endproc

	.globl	afm_scan_string
	.align	16, 0x90
	.type	afm_scan_string,@function
afm_scan_string:                        # @afm_scan_string
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
	callq	afm_scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	afm_scan_string, .Lfunc_end24-afm_scan_string
	.cfi_endproc

	.globl	afm_scan_bytes
	.align	16, 0x90
	.type	afm_scan_bytes,@function
afm_scan_bytes:                         # @afm_scan_bytes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	$2, %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	afmalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	callq	yy_fatal_error
.LBB25_2:                               # %if.end
	movl	$0, -40(%rbp)
.LBB25_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB25_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB25_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB25_3
.LBB25_6:                               # %for.end
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
	callq	afm_scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.5, %rdi
	callq	yy_fatal_error
.LBB25_8:                               # %if.end.11
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	afm_scan_bytes, .Lfunc_end25-afm_scan_bytes
	.cfi_endproc

	.globl	afmget_lineno
	.align	16, 0x90
	.type	afmget_lineno,@function
afmget_lineno:                          # @afmget_lineno
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
	movl	afmlineno, %eax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	afmget_lineno, .Lfunc_end26-afmget_lineno
	.cfi_endproc

	.globl	afmget_in
	.align	16, 0x90
	.type	afmget_in,@function
afmget_in:                              # @afmget_in
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
	movq	afmin, %rax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	afmget_in, .Lfunc_end27-afmget_in
	.cfi_endproc

	.globl	afmget_out
	.align	16, 0x90
	.type	afmget_out,@function
afmget_out:                             # @afmget_out
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
	movq	afmout, %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	afmget_out, .Lfunc_end28-afmget_out
	.cfi_endproc

	.globl	afmget_leng
	.align	16, 0x90
	.type	afmget_leng,@function
afmget_leng:                            # @afmget_leng
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
	movl	afmleng, %eax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	afmget_leng, .Lfunc_end29-afmget_leng
	.cfi_endproc

	.globl	afmget_text
	.align	16, 0x90
	.type	afmget_text,@function
afmget_text:                            # @afmget_text
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
	movq	afmtext, %rax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	afmget_text, .Lfunc_end30-afmget_text
	.cfi_endproc

	.globl	afmset_lineno
	.align	16, 0x90
	.type	afmset_lineno,@function
afmset_lineno:                          # @afmset_lineno
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, afmlineno
	popq	%rbp
	retq
.Lfunc_end31:
	.size	afmset_lineno, .Lfunc_end31-afmset_lineno
	.cfi_endproc

	.globl	afmset_in
	.align	16, 0x90
	.type	afmset_in,@function
afmset_in:                              # @afmset_in
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
	movq	%rdi, afmin
	popq	%rbp
	retq
.Lfunc_end32:
	.size	afmset_in, .Lfunc_end32-afmset_in
	.cfi_endproc

	.globl	afmset_out
	.align	16, 0x90
	.type	afmset_out,@function
afmset_out:                             # @afmset_out
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, afmout
	popq	%rbp
	retq
.Lfunc_end33:
	.size	afmset_out, .Lfunc_end33-afmset_out
	.cfi_endproc

	.globl	afmget_debug
	.align	16, 0x90
	.type	afmget_debug,@function
afmget_debug:                           # @afmget_debug
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
	movl	afm_flex_debug, %eax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	afmget_debug, .Lfunc_end34-afmget_debug
	.cfi_endproc

	.globl	afmset_debug
	.align	16, 0x90
	.type	afmset_debug,@function
afmset_debug:                           # @afmset_debug
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, afm_flex_debug
	popq	%rbp
	retq
.Lfunc_end35:
	.size	afmset_debug, .Lfunc_end35-afmset_debug
	.cfi_endproc

	.globl	afmlex_destroy
	.align	16, 0x90
	.type	afmlex_destroy,@function
afmlex_destroy:                         # @afmlex_destroy
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
	subq	$32, %rsp
	jmp	.LBB36_1
.LBB36_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB36_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB36_4
.LBB36_3:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB36_4
.LBB36_4:                               # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB36_9
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpq	$0, yy_buffer_stack
	je	.LBB36_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_7:                               # %cond.false.5
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_8:                               # %cond.end.6
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	afm_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	callq	afmpop_buffer_state
	jmp	.LBB36_1
.LBB36_9:                               # %while.end
	movq	yy_buffer_stack, %rax
	movq	%rax, %rdi
	callq	afmfree
	movq	$0, yy_buffer_stack
	callq	yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	afmlex_destroy, .Lfunc_end36-afmlex_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	yy_init_globals,@function
yy_init_globals:                        # @yy_init_globals
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
	xorl	%eax, %eax
	movl	$1, afmlineno
	movq	$0, yy_buffer_stack
	movq	$0, yy_buffer_stack_top
	movq	$0, yy_buffer_stack_max
	movq	$0, yy_c_buf_p
	movl	$0, yy_init
	movl	$0, yy_start
	movq	$0, afmin
	movq	$0, afmout
	popq	%rbp
	retq
.Lfunc_end37:
	.size	yy_init_globals, .Lfunc_end37-yy_init_globals
	.cfi_endproc

	.globl	afmrealloc
	.align	16, 0x90
	.type	afmrealloc,@function
afmrealloc:                             # @afmrealloc
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
.Lfunc_end38:
	.size	afmrealloc, .Lfunc_end38-afmrealloc
	.cfi_endproc

	.globl	font_info_table_new
	.align	16, 0x90
	.type	font_info_table_new,@function
font_info_table_new:                    # @font_info_table_new
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$font_info_hash_1, %rdi
	movabsq	$font_info_hash_2, %rdx
	movabsq	$font_info_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	font_info_table_new, .Lfunc_end39-font_info_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	font_info_hash_1,@function
font_info_hash_1:                       # @font_info_hash_1
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB40_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB40_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB40_3
.LBB40_5:                               # %while.end
	jmp	.LBB40_6
.LBB40_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end40:
	.size	font_info_hash_1, .Lfunc_end40-font_info_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	font_info_hash_2,@function
font_info_hash_2:                       # @font_info_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB41_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB41_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB41_3
.LBB41_5:                               # %while.end
	jmp	.LBB41_6
.LBB41_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end41:
	.size	font_info_hash_2, .Lfunc_end41-font_info_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	font_info_hash_cmp,@function
font_info_hash_cmp:                     # @font_info_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB42_2
.LBB42_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB42_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB42_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB42_7
.LBB42_5:                               # %if.end
                                        #   in Loop: Header=BB42_3 Depth=1
	jmp	.LBB42_6
.LBB42_6:                               # %do.cond
                                        #   in Loop: Header=BB42_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB42_3
.LBB42_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end42:
	.size	font_info_hash_cmp, .Lfunc_end42-font_info_hash_cmp
	.cfi_endproc

	.globl	font_info_table_free
	.align	16, 0x90
	.type	font_info_table_free,@function
font_info_table_free:                   # @font_info_table_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$hash_free_font_info, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	font_info_table_free, .Lfunc_end43-font_info_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	hash_free_font_info,@function
hash_free_font_info:                    # @hash_free_font_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	wx_entry_table_free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	hash_free_font_info, .Lfunc_end44-hash_free_font_info
	.cfi_endproc

	.globl	font_info_add
	.align	16, 0x90
	.type	font_info_add,@function
font_info_add:                          # @font_info_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	font_info_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	font_info_finalize
	movq	-8(%rbp), %rax
	movq	416(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	add_required_font
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	font_info_add, .Lfunc_end45-font_info_add
	.cfi_endproc

	.align	16, 0x90
	.type	font_info_new,@function
font_info_new:                          # @font_info_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	xstrdup
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	wx_entry_table_new
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	font_info_new, .Lfunc_end46-font_info_new
	.cfi_endproc

	.align	16, 0x90
	.type	font_info_finalize,@function
font_info_finalize:                     # @font_info_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, afmlineno
	movq	-8(%rbp), %rsi
	movq	408(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	fonts_map_resolve_alias
	movabsq	$.L.str.7, %rdx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	xpw_find_file
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$2368, %eax             # imm = 0x940
	cmpl	$0, %eax
	je	.LBB47_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.21, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB47_3:                               # %if.end
	jmp	.LBB47_4
.LBB47_4:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, font_info_being_parsed
	movq	-40(%rbp), %rdi
	callq	afmrestart
	callq	afmlex
	movq	-40(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fclose
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	font_info_finalize, .Lfunc_end47-font_info_finalize
	.cfi_endproc

	.globl	font_is_to_reencode
	.align	16, 0x90
	.type	font_is_to_reencode,@function
font_is_to_reencode:                    # @font_is_to_reencode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	font_is_to_reencode, .Lfunc_end48-font_is_to_reencode
	.cfi_endproc

	.globl	font_info_get_wx_for_vector
	.align	16, 0x90
	.type	font_info_get_wx_for_vector,@function
font_info_get_wx_for_vector:            # @font_info_get_wx_for_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_info_get
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_is_to_reencode
	cmpl	$0, %eax
	je	.LBB49_6
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
.LBB49_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -52(%rbp)         # imm = 0x100
	jge	.LBB49_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB49_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	wx_entry_get_wx
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB49_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB49_2
.LBB49_5:                               # %for.end
	jmp	.LBB49_18
.LBB49_6:                               # %if.else
	movl	$0, -52(%rbp)
.LBB49_7:                               # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -52(%rbp)         # imm = 0x100
	jge	.LBB49_10
# BB#8:                                 # %for.body.8
                                        #   in Loop: Header=BB49_7 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
# BB#9:                                 # %for.inc.11
                                        #   in Loop: Header=BB49_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB49_7
.LBB49_10:                              # %for.end.13
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	wx_entry_get_in_index_order
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB49_11:                              # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB49_17
# BB#12:                                # %for.body.20
                                        #   in Loop: Header=BB49_11 Depth=1
	xorl	%eax, %eax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
	cmpl	-56(%rbp), %eax
	jg	.LBB49_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB49_11 Depth=1
	cmpl	$256, -56(%rbp)         # imm = 0x100
	jge	.LBB49_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB49_11 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %edx
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
.LBB49_15:                              # %if.end
                                        #   in Loop: Header=BB49_11 Depth=1
	jmp	.LBB49_16
.LBB49_16:                              # %for.inc.31
                                        #   in Loop: Header=BB49_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB49_11
.LBB49_17:                              # %for.end.33
	jmp	.LBB49_18
.LBB49_18:                              # %if.end.34
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	font_info_get_wx_for_vector, .Lfunc_end49-font_info_get_wx_for_vector
	.cfi_endproc

	.align	16, 0x90
	.type	font_info_get,@function
font_info_get:                          # @font_info_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	416(%rsi), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_info_add
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	416(%rdi), %rdi
	callq	hash_find_item
	movq	%rax, -40(%rbp)
.LBB50_2:                               # %if.end
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	font_info_get, .Lfunc_end50-font_info_get
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_get_wx,@function
wx_entry_get_wx:                        # @wx_entry_get_wx
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB51_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB51_3
.LBB51_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB51_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	wx_entry_get_wx, .Lfunc_end51-wx_entry_get_wx
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_get_in_index_order,@function
wx_entry_get_in_index_order:            # @wx_entry_get_in_index_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$wx_entry_hash_index_qcmp, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rdx
	callq	hash_dump
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	wx_entry_get_in_index_order, .Lfunc_end52-wx_entry_get_in_index_order
	.cfi_endproc

	.globl	font_exists
	.align	16, 0x90
	.type	font_exists,@function
font_exists:                            # @font_exists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	408(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	fonts_map_resolve_alias
	movabsq	$.L.str.7, %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	pw_file_exists_p
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	font_exists, .Lfunc_end53-font_exists
	.cfi_endproc

	.align	16, 0x90
	.type	fonts_map_resolve_alias,@function
fonts_map_resolve_alias:                # @fonts_map_resolve_alias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pair_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB54_3
.LBB54_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB54_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	fonts_map_resolve_alias, .Lfunc_end54-fonts_map_resolve_alias
	.cfi_endproc

	.globl	font_info_table_dump_special_font_setup
	.align	16, 0x90
	.type	font_info_table_dump_special_font_setup,@function
font_info_table_dump_special_font_setup: # @font_info_table_dump_special_font_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	416(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	hash_dump
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB55_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB55_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rsi
	callq	font_is_to_reencode
	cmpl	$0, %eax
	jne	.LBB55_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB55_1 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB55_4:                               # %if.end
                                        #   in Loop: Header=BB55_1 Depth=1
	jmp	.LBB55_5
.LBB55_5:                               # %for.inc
                                        #   in Loop: Header=BB55_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB55_1
.LBB55_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	font_info_table_dump_special_font_setup, .Lfunc_end55-font_info_table_dump_special_font_setup
	.cfi_endproc

	.globl	dump_fonts
	.align	16, 0x90
	.type	dump_fonts,@function
dump_fonts:                             # @dump_fonts
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	required_fonts_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB56_2
# BB#1:                                 # %if.then
	jmp	.LBB56_27
.LBB56_2:                               # %if.end
	movl	$0, -52(%rbp)
.LBB56_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB56_26
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-16(%rbp), %rax
	movq	408(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	fonts_map_resolve_alias
	movabsq	$.L.str.9, %rdx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	pw_find_file
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB56_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.10, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	pw_find_file
	movq	%rax, -32(%rbp)
.LBB56_6:                               # %if.end.11
                                        #   in Loop: Header=BB56_3 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB56_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.11, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	pw_find_file
	movq	%rax, -32(%rbp)
.LBB56_8:                               # %if.end.17
                                        #   in Loop: Header=BB56_3 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB56_18
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB56_3 Depth=1
	jmp	.LBB56_10
.LBB56_10:                              # %do.body
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$.L.str.9, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	strlen
	movq	-80(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-88(%rbp), %rdi         # 8-byte Reload
	leaq	16(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
# BB#11:                                # %do.body.23
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	stpcpy
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	stpcpy
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB56_3 Depth=1
	jmp	.LBB56_13
.LBB56_13:                              # %do.end.26
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	-64(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
# BB#14:                                # %do.body.29
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	stpcpy
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	stpcpy
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#15:                                # %do.end.32
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	-64(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
# BB#16:                                # %do.body.35
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	stpcpy
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	stpcpy
	movq	%rax, -128(%rbp)        # 8-byte Spill
# BB#17:                                # %do.end.38
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	-64(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB56_18:                              # %if.end.41
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -24(%rbp)
# BB#19:                                # %do.body.43
                                        #   in Loop: Header=BB56_3 Depth=1
	movl	msg_verbosity, %eax
	andl	$320, %eax              # imm = 0x140
	cmpl	$0, %eax
	je	.LBB56_21
# BB#20:                                # %if.then.45
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.13, %rsi
	movq	stderr, %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB56_21:                              # %if.end.47
                                        #   in Loop: Header=BB56_3 Depth=1
	jmp	.LBB56_22
.LBB56_22:                              # %do.end.48
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	internal_font_file_dump
	cmpl	$0, %eax
	jne	.LBB56_24
# BB#23:                                # %if.then.54
                                        #   in Loop: Header=BB56_3 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.15, %rdx
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	error
.LBB56_24:                              # %if.end.55
                                        #   in Loop: Header=BB56_3 Depth=1
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	free
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB56_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB56_3
.LBB56_26:                              # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB56_27:                              # %return
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	dump_fonts, .Lfunc_end56-dump_fonts
	.cfi_endproc

	.align	16, 0x90
	.type	internal_font_file_dump,@function
internal_font_file_dump:                # @internal_font_file_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	cmpl	$128, -28(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	binary_font_dump
	movl	%eax, -4(%rbp)
	jmp	.LBB57_3
.LBB57_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	streams_copy
	movl	$1, -4(%rbp)
.LBB57_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	internal_font_file_dump, .Lfunc_end57-internal_font_file_dump
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_table_free,@function
wx_entry_table_free:                    # @wx_entry_table_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$hash_free_wx_entry, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	hash_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	wx_entry_table_free, .Lfunc_end58-wx_entry_table_free
	.cfi_endproc

	.align	16, 0x90
	.type	hash_free_wx_entry,@function
hash_free_wx_entry:                     # @hash_free_wx_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	hash_free_wx_entry, .Lfunc_end59-hash_free_wx_entry
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_table_new,@function
wx_entry_table_new:                     # @wx_entry_table_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$wx_entry_hash_1, %rdi
	movabsq	$wx_entry_hash_2, %rdx
	movabsq	$wx_entry_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	wx_entry_table_new, .Lfunc_end60-wx_entry_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_hash_1,@function
wx_entry_hash_1:                        # @wx_entry_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB61_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB61_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB61_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB61_3
.LBB61_5:                               # %while.end
	jmp	.LBB61_6
.LBB61_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end61:
	.size	wx_entry_hash_1, .Lfunc_end61-wx_entry_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_hash_2,@function
wx_entry_hash_2:                        # @wx_entry_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB62_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB62_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB62_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB62_3
.LBB62_5:                               # %while.end
	jmp	.LBB62_6
.LBB62_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.4
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end62:
	.size	wx_entry_hash_2, .Lfunc_end62-wx_entry_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_hash_cmp,@function
wx_entry_hash_cmp:                      # @wx_entry_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB63_2
.LBB63_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB63_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB63_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB63_7
.LBB63_5:                               # %if.end
                                        #   in Loop: Header=BB63_3 Depth=1
	jmp	.LBB63_6
.LBB63_6:                               # %do.cond
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB63_3
.LBB63_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end63:
	.size	wx_entry_hash_cmp, .Lfunc_end63-wx_entry_hash_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	wx_entry_hash_index_qcmp,@function
wx_entry_hash_index_qcmp:               # @wx_entry_hash_index_qcmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	8(%rsi), %eax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	subl	8(%rsi), %eax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	wx_entry_hash_index_qcmp, .Lfunc_end64-wx_entry_hash_index_qcmp
	.cfi_endproc

	.align	16, 0x90
	.type	binary_font_dump,@function
binary_font_dump:                       # @binary_font_dump
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB65_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	binary_font_dump_segment
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB65_2
	jmp	.LBB65_3
.LBB65_2:                               # %while.body
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_1
.LBB65_3:                               # %while.end
	cmpl	$2, -28(%rbp)
	jne	.LBB65_5
# BB#4:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB65_6
.LBB65_5:                               # %if.else
	movl	$1, -4(%rbp)
.LBB65_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	binary_font_dump, .Lfunc_end65-binary_font_dump
	.cfi_endproc

	.align	16, 0x90
	.type	binary_font_dump_segment,@function
binary_font_dump_segment:               # @binary_font_dump_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$8336, %rsp             # imm = 0x2090
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -32(%rbp)
	cmpl	$128, -32(%rbp)
	je	.LBB66_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB66_37
.LBB66_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	shll	$8, %eax
	movslq	%eax, %rdi
	movq	-40(%rbp), %rcx
	addq	%rdi, %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	shll	$16, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	%rcx, %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	shll	$24, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	%rcx, %rdi
	movq	%rdi, -40(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%eax, -8276(%rbp)       # 4-byte Spill
	movl	%edx, -8280(%rbp)       # 4-byte Spill
	je	.LBB66_3
	jmp	.LBB66_38
.LBB66_38:                              # %if.end
	movl	-8276(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -8284(%rbp)       # 4-byte Spill
	je	.LBB66_19
	jmp	.LBB66_39
.LBB66_39:                              # %if.end
	movl	-8276(%rbp), %eax       # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -8288(%rbp)       # 4-byte Spill
	je	.LBB66_34
	jmp	.LBB66_35
.LBB66_3:                               # %sw.bb
	jmp	.LBB66_4
.LBB66_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_11 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB66_18
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB66_4 Depth=1
	cmpq	$8192, -40(%rbp)        # imm = 0x2000
	jae	.LBB66_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB66_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -8296(%rbp)       # 8-byte Spill
	jmp	.LBB66_8
.LBB66_7:                               # %cond.false
                                        #   in Loop: Header=BB66_4 Depth=1
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	movq	%rcx, -8296(%rbp)       # 8-byte Spill
	jmp	.LBB66_8
.LBB66_8:                               # %cond.end
                                        #   in Loop: Header=BB66_4 Depth=1
	movq	-8296(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	leaq	-8256(%rbp), %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB66_10
# BB#9:                                 # %if.then.20
	movl	$2, -4(%rbp)
	jmp	.LBB66_37
.LBB66_10:                              # %if.end.21
                                        #   in Loop: Header=BB66_4 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	$0, -8264(%rbp)
.LBB66_11:                              # %for.cond
                                        #   Parent Loop BB66_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8264(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB66_17
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB66_11 Depth=2
	movq	-8264(%rbp), %rax
	movzbl	-8256(%rbp,%rax), %ecx
	subl	$13, %ecx
	movl	%ecx, -8300(%rbp)       # 4-byte Spill
	jne	.LBB66_14
	jmp	.LBB66_13
.LBB66_13:                              # %sw.bb.25
                                        #   in Loop: Header=BB66_11 Depth=2
	movl	$10, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -8304(%rbp)       # 4-byte Spill
	jmp	.LBB66_15
.LBB66_14:                              # %sw.default
                                        #   in Loop: Header=BB66_11 Depth=2
	movq	-8264(%rbp), %rax
	movzbl	-8256(%rbp,%rax), %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -8308(%rbp)       # 4-byte Spill
.LBB66_15:                              # %sw.epilog
                                        #   in Loop: Header=BB66_11 Depth=2
	jmp	.LBB66_16
.LBB66_16:                              # %for.inc
                                        #   in Loop: Header=BB66_11 Depth=2
	movq	-8264(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8264(%rbp)
	jmp	.LBB66_11
.LBB66_17:                              # %for.end
                                        #   in Loop: Header=BB66_4 Depth=1
	jmp	.LBB66_4
.LBB66_18:                              # %while.end
	jmp	.LBB66_36
.LBB66_19:                              # %sw.bb.30
	jmp	.LBB66_20
.LBB66_20:                              # %while.cond.31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_27 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB66_33
# BB#21:                                # %while.body.33
                                        #   in Loop: Header=BB66_20 Depth=1
	cmpq	$8192, -40(%rbp)        # imm = 0x2000
	jae	.LBB66_23
# BB#22:                                # %cond.true.37
                                        #   in Loop: Header=BB66_20 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -8320(%rbp)       # 8-byte Spill
	jmp	.LBB66_24
.LBB66_23:                              # %cond.false.38
                                        #   in Loop: Header=BB66_20 Depth=1
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	movq	%rcx, -8320(%rbp)       # 8-byte Spill
	jmp	.LBB66_24
.LBB66_24:                              # %cond.end.39
                                        #   in Loop: Header=BB66_20 Depth=1
	movq	-8320(%rbp), %rax       # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	leaq	-8256(%rbp), %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB66_26
# BB#25:                                # %if.then.44
	movl	$2, -4(%rbp)
	jmp	.LBB66_37
.LBB66_26:                              # %if.end.45
                                        #   in Loop: Header=BB66_20 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	$0, -8272(%rbp)
.LBB66_27:                              # %for.cond.47
                                        #   Parent Loop BB66_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8272(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB66_32
# BB#28:                                # %for.body.50
                                        #   in Loop: Header=BB66_27 Depth=2
	movabsq	$.L.str.22, %rsi
	movq	-24(%rbp), %rdi
	movq	-8272(%rbp), %rax
	movzbl	-8256(%rbp,%rax), %edx
	movb	$0, %al
	callq	fprintf
	movq	-8272(%rbp), %rsi
	addq	$1, %rsi
	andq	$31, %rsi
	cmpq	$0, %rsi
	movl	%eax, -8324(%rbp)       # 4-byte Spill
	jne	.LBB66_30
# BB#29:                                # %if.then.56
                                        #   in Loop: Header=BB66_27 Depth=2
	movl	$10, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -8328(%rbp)       # 4-byte Spill
.LBB66_30:                              # %if.end.58
                                        #   in Loop: Header=BB66_27 Depth=2
	jmp	.LBB66_31
.LBB66_31:                              # %for.inc.59
                                        #   in Loop: Header=BB66_27 Depth=2
	movq	-8272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8272(%rbp)
	jmp	.LBB66_27
.LBB66_32:                              # %for.end.61
                                        #   in Loop: Header=BB66_20 Depth=1
	jmp	.LBB66_20
.LBB66_33:                              # %while.end.62
	jmp	.LBB66_36
.LBB66_34:                              # %sw.bb.63
	movl	$1, -4(%rbp)
	jmp	.LBB66_37
.LBB66_35:                              # %sw.default.64
	callq	abort
.LBB66_36:                              # %sw.epilog.65
	movl	$10, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movl	$0, -4(%rbp)
	movl	%eax, -8332(%rbp)       # 4-byte Spill
.LBB66_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$8336, %rsp             # imm = 0x2090
	popq	%rbp
	retq
.Lfunc_end66:
	.size	binary_font_dump_segment, .Lfunc_end66-binary_font_dump_segment
	.cfi_endproc

	.type	afmin,@object           # @afmin
	.bss
	.globl	afmin
	.align	8
afmin:
	.quad	0
	.size	afmin, 8

	.type	afmout,@object          # @afmout
	.globl	afmout
	.align	8
afmout:
	.quad	0
	.size	afmout, 8

	.type	afmlineno,@object       # @afmlineno
	.data
	.globl	afmlineno
	.align	4
afmlineno:
	.long	1                       # 0x1
	.size	afmlineno, 4

	.type	afm_flex_debug,@object  # @afm_flex_debug
	.bss
	.globl	afm_flex_debug
	.align	4
afm_flex_debug:
	.long	0                       # 0x0
	.size	afm_flex_debug, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fonts.map"
	.size	.L.str, 10

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
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	11                      # 0xb
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	14                      # 0xe
	.long	1                       # 0x1
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	20                      # 0x14
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
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
	.short	11                      # 0xb
	.short	10                      # 0xa
	.short	2                       # 0x2
	.short	10                      # 0xa
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	7                       # 0x7
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	4                       # 0x4
	.short	0                       # 0x0
	.short	7                       # 0x7
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	5                       # 0x5
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
	.short	3                       # 0x3
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	0                       # 0x0
	.size	yy_accept, 114

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
	.short	1                       # 0x1
	.short	10                      # 0xa
	.short	20                      # 0x14
	.short	83                      # 0x53
	.short	79                      # 0x4f
	.short	84                      # 0x54
	.short	2                       # 0x2
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	77                      # 0x4d
	.short	60                      # 0x3c
	.short	75                      # 0x4b
	.short	65                      # 0x41
	.short	74                      # 0x4a
	.short	84                      # 0x54
	.short	5                       # 0x5
	.short	1                       # 0x1
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	71                      # 0x47
	.short	12                      # 0xc
	.short	68                      # 0x44
	.short	67                      # 0x43
	.short	65                      # 0x41
	.short	0                       # 0x0
	.short	65                      # 0x41
	.short	6                       # 0x6
	.short	64                      # 0x40
	.short	42                      # 0x2a
	.short	53                      # 0x35
	.short	7                       # 0x7
	.short	44                      # 0x2c
	.short	13                      # 0xd
	.short	36                      # 0x24
	.short	21                      # 0x15
	.short	47                      # 0x2f
	.short	18                      # 0x12
	.short	35                      # 0x23
	.short	31                      # 0x1f
	.short	28                      # 0x1c
	.short	33                      # 0x21
	.short	28                      # 0x1c
	.short	23                      # 0x17
	.short	29                      # 0x1d
	.short	34                      # 0x22
	.short	32                      # 0x20
	.short	35                      # 0x23
	.short	23                      # 0x17
	.short	38                      # 0x26
	.short	84                      # 0x54
	.short	39                      # 0x27
	.short	41                      # 0x29
	.short	40                      # 0x28
	.short	84                      # 0x54
	.short	84                      # 0x54
	.short	61                      # 0x3d
	.short	63                      # 0x3f
	.short	65                      # 0x41
	.short	0                       # 0x0
	.short	67                      # 0x43
	.size	yy_base, 124

	.type	yy_chk,@object          # @yy_chk
	.align	16
yy_chk:
	.short	0                       # 0x0
	.short	60                      # 0x3c
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	8                       # 0x8
	.short	18                      # 0x12
	.short	18                      # 0x12
	.short	17                      # 0x11
	.short	28                      # 0x1c
	.short	32                      # 0x20
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	32                      # 0x20
	.short	22                      # 0x16
	.short	34                      # 0x22
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	17                      # 0x11
	.short	3                       # 0x3
	.short	38                      # 0x26
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	36                      # 0x24
	.short	8                       # 0x8
	.short	44                      # 0x2c
	.short	4                       # 0x4
	.short	4                       # 0x4
	.short	28                      # 0x1c
	.short	4                       # 0x4
	.short	34                      # 0x22
	.short	4                       # 0x4
	.short	22                      # 0x16
	.short	40                      # 0x28
	.short	36                      # 0x24
	.short	42                      # 0x2a
	.short	46                      # 0x2e
	.short	48                      # 0x30
	.short	38                      # 0x26
	.short	40                      # 0x28
	.short	50                      # 0x32
	.short	52                      # 0x34
	.short	54                      # 0x36
	.short	53                      # 0x35
	.short	49                      # 0x31
	.short	44                      # 0x2c
	.short	47                      # 0x2f
	.short	45                      # 0x2d
	.short	43                      # 0x2b
	.short	42                      # 0x2a
	.short	41                      # 0x29
	.short	39                      # 0x27
	.short	50                      # 0x32
	.short	48                      # 0x30
	.short	46                      # 0x2e
	.short	37                      # 0x25
	.short	35                      # 0x23
	.short	33                      # 0x21
	.short	31                      # 0x1f
	.short	30                      # 0x1e
	.short	52                      # 0x34
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	59                      # 0x3b
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	29                      # 0x1d
	.short	27                      # 0x1b
	.short	25                      # 0x19
	.short	24                      # 0x18
	.short	23                      # 0x17
	.short	21                      # 0x15
	.short	19                      # 0x13
	.short	15                      # 0xf
	.short	14                      # 0xe
	.short	13                      # 0xd
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	6                       # 0x6
	.short	5                       # 0x5
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.size	yy_chk, 216

	.type	yy_def,@object          # @yy_def
	.align	16
yy_def:
	.short	0                       # 0x0
	.short	57                      # 0x39
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	58                      # 0x3a
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	60                      # 0x3c
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	60                      # 0x3c
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	56                      # 0x38
	.short	59                      # 0x3b
	.short	61                      # 0x3d
	.short	61                      # 0x3d
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.size	yy_def, 124

	.type	yy_meta,@object         # @yy_meta
	.align	16
yy_meta:
	.long	0                       # 0x0
	.long	1                       # 0x1
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
	.long	1                       # 0x1
	.size	yy_meta, 96

	.type	yy_nxt,@object          # @yy_nxt
	.align	16
yy_nxt:
	.short	0                       # 0x0
	.short	26                      # 0x1a
	.short	56                      # 0x38
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	16                      # 0x10
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	34                      # 0x22
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	22                      # 0x16
	.short	13                      # 0xd
	.short	16                      # 0x10
	.short	14                      # 0xe
	.short	10                      # 0xa
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	16                      # 0x10
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	32                      # 0x20
	.short	13                      # 0xd
	.short	36                      # 0x24
	.short	14                      # 0xe
	.short	28                      # 0x1c
	.short	16                      # 0x10
	.short	38                      # 0x26
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	40                      # 0x28
	.short	42                      # 0x2a
	.short	16                      # 0x10
	.short	16                      # 0x10
	.short	55                      # 0x37
	.short	55                      # 0x37
	.short	51                      # 0x33
	.short	46                      # 0x2e
	.short	49                      # 0x31
	.short	47                      # 0x2f
	.short	45                      # 0x2d
	.short	44                      # 0x2c
	.short	43                      # 0x2b
	.short	41                      # 0x29
	.short	52                      # 0x34
	.short	50                      # 0x32
	.short	48                      # 0x30
	.short	39                      # 0x27
	.short	37                      # 0x25
	.short	35                      # 0x23
	.short	31                      # 0x1f
	.short	33                      # 0x21
	.short	53                      # 0x35
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	15                      # 0xf
	.short	15                      # 0xf
	.short	54                      # 0x36
	.short	54                      # 0x36
	.short	29                      # 0x1d
	.short	31                      # 0x1f
	.short	30                      # 0x1e
	.short	24                      # 0x18
	.short	29                      # 0x1d
	.short	27                      # 0x1b
	.short	25                      # 0x19
	.short	16                      # 0x10
	.short	21                      # 0x15
	.short	20                      # 0x14
	.short	19                      # 0x13
	.short	18                      # 0x12
	.short	16                      # 0x10
	.short	56                      # 0x38
	.short	5                       # 0x5
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.short	56                      # 0x38
	.size	yy_nxt, 216

	.type	afmtext,@object         # @afmtext
	.comm	afmtext,8,8
	.type	afmleng,@object         # @afmleng
	.comm	afmleng,4,4
	.type	yy_rule_can_match_eol,@object # @yy_rule_can_match_eol
	.align	16
yy_rule_can_match_eol:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	yy_rule_can_match_eol, 44

	.type	last_index_read,@object # @last_index_read
	.local	last_index_read
	.comm	last_index_read,4,4
	.type	last_wx_read,@object    # @last_wx_read
	.local	last_wx_read
	.comm	last_wx_read,4,4
	.type	font_info_being_parsed,@object # @font_info_being_parsed
	.local	font_info_being_parsed
	.comm	font_info_being_parsed,8,8
	.type	yy_n_chars,@object      # @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
	.type	yy_did_buffer_switch_on_eof,@object # @yy_did_buffer_switch_on_eof
	.local	yy_did_buffer_switch_on_eof
	.comm	yy_did_buffer_switch_on_eof,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"fatal flex scanner internal error--no action found"
	.size	.L.str.1, 51

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"out of dynamic memory in afm_create_buffer()"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"out of dynamic memory in afm_scan_buffer()"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"out of dynamic memory in afm_scan_bytes()"
	.size	.L.str.4, 42

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"bad buffer in afm_scan_bytes()"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Symbol"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".afm"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/f%s /%s findfont def\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".pfb"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".pfa"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".gsf"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cannot find file `%s'"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Dumping file `%s'\n"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%%%%BeginResource: font %s\n"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Bad PostScript font file `%s'\n"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%%%%EndResource\n"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"fatal flex scanner internal error--end of buffer missed"
	.size	.L.str.17, 56

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"fatal error - scanner input buffer overflow"
	.size	.L.str.18, 44

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"input in flex scanner failed"
	.size	.L.str.19, 29

	.type	yy_buffer_stack_max,@object # @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s\n"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Parsing file `%s'\n"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%02X"
	.size	.L.str.22, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
