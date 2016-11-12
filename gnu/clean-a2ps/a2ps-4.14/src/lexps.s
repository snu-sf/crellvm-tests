	.text
	.file	"lexps.bc"
	.globl	pslex
	.align	16, 0x90
	.type	pslex,@function
pslex:                                  # @pslex
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
	subq	$112, %rsp
	cmpl	$0, yy_init
	jne	.LBB0_12
# BB#1:                                 # %if.then
	movl	$1, yy_init
	cmpl	$0, yy_start
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	$1, yy_start
.LBB0_3:                                # %if.end
	cmpq	$0, psin
	jne	.LBB0_5
# BB#4:                                 # %if.then.4
	movq	stdin, %rax
	movq	%rax, psin
.LBB0_5:                                # %if.end.5
	cmpq	$0, psout
	jne	.LBB0_7
# BB#6:                                 # %if.then.7
	movq	stdout, %rax
	movq	%rax, psout
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
	callq	psensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	psin, %rdi
	callq	ps_create_buffer
	movq	yy_buffer_stack_top, %rdi
	movq	yy_buffer_stack, %rcx
	movq	%rax, (%rcx,%rdi,8)
.LBB0_11:                               # %if.end.13
	callq	ps_load_buffer_state
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
	movl	%edx, -4(%rbp)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rax,8), %rax
	movl	40(%rax), %edx
	addl	-4(%rbp), %edx
	movl	%edx, -4(%rbp)
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
	movslq	-4(%rbp), %rax
	cmpw	$0, yy_accept(,%rax,2)
	je	.LBB0_17
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB0_15 Depth=3
	movl	-4(%rbp), %eax
	movl	%eax, yy_last_accepting_state
	movq	-16(%rbp), %rcx
	movq	%rcx, yy_last_accepting_cpos
.LBB0_17:                               # %if.end.22
                                        #   in Loop: Header=BB0_15 Depth=3
	jmp	.LBB0_18
.LBB0_18:                               # %while.cond.23
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-29(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movswl	yy_chk(,%rax,2), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB0_22
# BB#19:                                # %while.body.33
                                        #   in Loop: Header=BB0_18 Depth=4
	movslq	-4(%rbp), %rax
	movswl	yy_def(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$26, -4(%rbp)
	jl	.LBB0_21
# BB#20:                                # %if.then.39
                                        #   in Loop: Header=BB0_18 Depth=4
	movzbl	-29(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	yy_meta(,%rcx,4), %eax
	movb	%al, %dl
	movb	%dl, -29(%rbp)
.LBB0_21:                               # %if.end.44
                                        #   in Loop: Header=BB0_18 Depth=4
	jmp	.LBB0_18
.LBB0_22:                               # %while.end
                                        #   in Loop: Header=BB0_15 Depth=3
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	movzbl	-29(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movswl	yy_nxt(,%rax,2), %ecx
	movl	%ecx, -4(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
# BB#23:                                # %do.cond
                                        #   in Loop: Header=BB0_15 Depth=3
	movslq	-4(%rbp), %rax
	movswl	yy_base(,%rax,2), %ecx
	cmpl	$28, %ecx
	jne	.LBB0_15
# BB#24:                                # %do.end
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               # %yy_find_action
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_28 Depth 4
	movslq	-4(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.63
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_last_accepting_cpos, %rax
	movq	%rax, -16(%rbp)
	movl	yy_last_accepting_state, %ecx
	movl	%ecx, -4(%rbp)
	movslq	-4(%rbp), %rax
	movswl	yy_accept(,%rax,2), %ecx
	movl	%ecx, -28(%rbp)
.LBB0_27:                               # %if.end.67
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	-24(%rbp), %rax
	movq	%rax, pstext
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, psleng
	movq	-16(%rbp), %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
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
	subq	$7, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB0_60
# BB#62:                                # %do_action
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
	movl	%edx, -4(%rbp)
	jmp	.LBB0_25
.LBB0_30:                               # %sw.bb.69
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, psleng
	jle	.LBB0_32
# BB#31:                                # %if.then.72
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	psleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	pstext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_32:                               # %if.end.80
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	pstext, %rdi
	movslq	psleng, %rsi
	movq	psout, %rcx
	callq	fwrite
	movq	psout, %rdi
	movq	job, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	pagedevice_dump
	movl	$3, yy_start
	jmp	.LBB0_61
.LBB0_33:                               # %sw.bb.83
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, psleng
	jle	.LBB0_35
# BB#34:                                # %if.then.86
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	psleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	pstext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_35:                               # %if.end.95
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	pstext, %rdi
	movslq	psleng, %rsi
	movq	psout, %rcx
	callq	fwrite
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_61
.LBB0_36:                               # %sw.bb.98
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, psleng
	jle	.LBB0_38
# BB#37:                                # %if.then.101
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	psleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	pstext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_38:                               # %if.end.110
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	pstext, %rdi
	movslq	psleng, %rsi
	movq	psout, %rcx
	callq	fwrite
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_61
.LBB0_39:                               # %sw.bb.113
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, psleng
	jle	.LBB0_41
# BB#40:                                # %if.then.116
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	psleng, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	pstext, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$10, %eax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%eax, 40(%rcx)
.LBB0_41:                               # %if.end.125
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	pstext, %rdi
	movslq	psleng, %rsi
	movq	psout, %rcx
	callq	fwrite
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_61
.LBB0_42:                               # %sw.bb.128
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.LBB0_43:                               # %sw.bb.129
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	-16(%rbp), %rax
	movq	pstext, %rcx
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
	jne	.LBB0_45
# BB#44:                                # %if.then.138
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	28(%rax), %edx
	movl	%edx, yy_n_chars
	movq	psin, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$1, 56(%rax)
.LBB0_45:                               # %if.end.143
                                        #   in Loop: Header=BB0_28 Depth=4
	movq	yy_c_buf_p, %rax
	movslq	yy_n_chars, %rcx
	movq	yy_buffer_stack_top, %rdx
	movq	yy_buffer_stack, %rsi
	movq	(%rsi,%rdx,8), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_49
# BB#46:                                # %if.then.149
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	pstext, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	yy_try_NUL_trans
	movl	%eax, -40(%rbp)
	movq	pstext, %rcx
	movq	%rcx, -24(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_48
# BB#47:                                # %if.then.154
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	yy_c_buf_p, %rax
	addq	$1, %rax
	movq	%rax, yy_c_buf_p
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB0_14
.LBB0_48:                               # %if.else
                                        #   in Loop: Header=BB0_25 Depth=3
	movq	yy_c_buf_p, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_25
.LBB0_49:                               # %if.else.156
                                        #   in Loop: Header=BB0_28 Depth=4
	callq	yy_get_next_buffer
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB0_56
	jmp	.LBB0_63
.LBB0_63:                               # %if.else.156
                                        #   in Loop: Header=BB0_28 Depth=4
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB0_50
	jmp	.LBB0_64
.LBB0_64:                               # %if.else.156
                                        #   in Loop: Header=BB0_25 Depth=3
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB0_57
	jmp	.LBB0_58
.LBB0_50:                               # %sw.bb.158
                                        #   in Loop: Header=BB0_28 Depth=4
	movl	$0, yy_did_buffer_switch_on_eof
	callq	pswrap
	cmpl	$0, %eax
	je	.LBB0_52
# BB#51:                                # %if.then.161
                                        #   in Loop: Header=BB0_28 Depth=4
	movl	$2, %eax
	movq	pstext, %rcx
	movq	%rcx, yy_c_buf_p
	movl	yy_start, %edx
	subl	$1, %edx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-104(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$5, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_28
.LBB0_52:                               # %if.else.166
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpl	$0, yy_did_buffer_switch_on_eof
	jne	.LBB0_54
# BB#53:                                # %if.then.168
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	psin, %rdi
	callq	psrestart
.LBB0_54:                               # %if.end.169
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %if.end.170
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_58
.LBB0_56:                               # %sw.bb.171
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	pstext, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -4(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	pstext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_14
.LBB0_57:                               # %sw.bb.176
                                        #   in Loop: Header=BB0_25 Depth=3
	movslq	yy_n_chars, %rax
	movq	yy_buffer_stack_top, %rcx
	movq	yy_buffer_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	addq	8(%rcx), %rax
	movq	%rax, yy_c_buf_p
	callq	yy_get_previous_state
	movl	%eax, -4(%rbp)
	movq	yy_c_buf_p, %rcx
	movq	%rcx, -16(%rbp)
	movq	pstext, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_25
.LBB0_58:                               # %sw.epilog
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.183
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_61
.LBB0_60:                               # %sw.default
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str, %rdi
	callq	yy_fatal_error
.LBB0_61:                               # %sw.epilog.184
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_13
.Lfunc_end0:
	.size	pslex, .Lfunc_end0-pslex
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_29
	.quad	.LBB0_30
	.quad	.LBB0_33
	.quad	.LBB0_36
	.quad	.LBB0_39
	.quad	.LBB0_43
	.quad	.LBB0_42
	.quad	.LBB0_42

	.text
	.align	16, 0x90
	.type	psensure_buffer_stack,@function
psensure_buffer_stack:                  # @psensure_buffer_stack
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
	callq	psalloc
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
	callq	psrealloc
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
	.size	psensure_buffer_stack, .Lfunc_end1-psensure_buffer_stack
	.cfi_endproc

	.globl	ps_create_buffer
	.align	16, 0x90
	.type	ps_create_buffer,@function
ps_create_buffer:                       # @ps_create_buffer
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
	callq	psalloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	yy_fatal_error
.LBB2_2:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %eax
	addl	$2, %eax
	movl	%eax, %edi
	callq	psalloc
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
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	ps_init_buffer
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ps_create_buffer, .Lfunc_end2-ps_create_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	ps_load_buffer_state,@function
ps_load_buffer_state:                   # @ps_load_buffer_state
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
	movq	%rax, pstext
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, psin
	movq	yy_c_buf_p, %rax
	movb	(%rax), %sil
	movb	%sil, yy_hold_char
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ps_load_buffer_state, .Lfunc_end3-ps_load_buffer_state
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
	movq	pstext, %rcx
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
	cmpl	$26, -4(%rbp)
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
	cmpl	$26, -4(%rbp)
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
	cmpl	$25, -4(%rbp)
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
	movq	pstext, %rax
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
	movabsq	$.L.str.5, %rdi
	callq	yy_fatal_error
.LBB6_2:                                # %if.end
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB6_6
# BB#3:                                 # %if.then.6
	movq	yy_c_buf_p, %rax
	movq	pstext, %rcx
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
	movq	pstext, %rcx
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
	callq	psrealloc
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
	movabsq	$.L.str.6, %rdi
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
	movq	psin, %rdi
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
	movq	psin, %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB6_41
# BB#40:                                # %if.then.107
	movabsq	$.L.str.7, %rdi
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
	movq	psin, %rdi
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
	movq	psin, %rdi
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
	movabsq	$.L.str.7, %rdi
	callq	yy_fatal_error
	jmp	.LBB6_49
.LBB6_48:                               # %if.end.131
                                        #   in Loop: Header=BB6_43 Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	psin, %rdi
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
	movq	psin, %rdi
	callq	psrestart
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
	movq	%rcx, pstext
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

	.globl	pswrap
	.align	16, 0x90
	.type	pswrap,@function
pswrap:                                 # @pswrap
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
	.size	pswrap, .Lfunc_end7-pswrap
	.cfi_endproc

	.globl	psrestart
	.align	16, 0x90
	.type	psrestart,@function
psrestart:                              # @psrestart
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
	callq	psensure_buffer_stack
	movl	$16384, %esi            # imm = 0x4000
	movq	psin, %rdi
	callq	ps_create_buffer
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
	callq	ps_init_buffer
	callq	ps_load_buffer_state
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	psrestart, .Lfunc_end8-psrestart
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
	movabsq	$.L.str.8, %rsi
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
	.type	ps_init_buffer,@function
ps_init_buffer:                         # @ps_init_buffer
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
	callq	ps_flush_buffer
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
	.size	ps_init_buffer, .Lfunc_end10-ps_init_buffer
	.cfi_endproc

	.globl	ps_switch_to_buffer
	.align	16, 0x90
	.type	ps_switch_to_buffer,@function
ps_switch_to_buffer:                    # @ps_switch_to_buffer
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
	callq	psensure_buffer_stack
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
	callq	ps_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB11_10:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ps_switch_to_buffer, .Lfunc_end11-ps_switch_to_buffer
	.cfi_endproc

	.globl	psalloc
	.align	16, 0x90
	.type	psalloc,@function
psalloc:                                # @psalloc
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
	.size	psalloc, .Lfunc_end12-psalloc
	.cfi_endproc

	.globl	ps_delete_buffer
	.align	16, 0x90
	.type	ps_delete_buffer,@function
ps_delete_buffer:                       # @ps_delete_buffer
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
	callq	psfree
.LBB13_9:                               # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	psfree
.LBB13_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ps_delete_buffer, .Lfunc_end13-ps_delete_buffer
	.cfi_endproc

	.globl	psfree
	.align	16, 0x90
	.type	psfree,@function
psfree:                                 # @psfree
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
	.size	psfree, .Lfunc_end14-psfree
	.cfi_endproc

	.globl	ps_flush_buffer
	.align	16, 0x90
	.type	ps_flush_buffer,@function
ps_flush_buffer:                        # @ps_flush_buffer
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
	callq	ps_load_buffer_state
.LBB15_7:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ps_flush_buffer, .Lfunc_end15-ps_flush_buffer
	.cfi_endproc

	.globl	pspush_buffer_state
	.align	16, 0x90
	.type	pspush_buffer_state,@function
pspush_buffer_state:                    # @pspush_buffer_state
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
	callq	psensure_buffer_stack
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
	callq	ps_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB16_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pspush_buffer_state, .Lfunc_end16-pspush_buffer_state
	.cfi_endproc

	.globl	pspop_buffer_state
	.align	16, 0x90
	.type	pspop_buffer_state,@function
pspop_buffer_state:                     # @pspop_buffer_state
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
	callq	ps_delete_buffer
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
	callq	ps_load_buffer_state
	movl	$1, yy_did_buffer_switch_on_eof
.LBB17_13:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pspop_buffer_state, .Lfunc_end17-pspop_buffer_state
	.cfi_endproc

	.globl	ps_scan_buffer
	.align	16, 0x90
	.type	ps_scan_buffer,@function
ps_scan_buffer:                         # @ps_scan_buffer
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
	callq	psalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.2, %rdi
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
	callq	ps_switch_to_buffer
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB18_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ps_scan_buffer, .Lfunc_end18-ps_scan_buffer
	.cfi_endproc

	.globl	ps_scan_string
	.align	16, 0x90
	.type	ps_scan_string,@function
ps_scan_string:                         # @ps_scan_string
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
	callq	ps_scan_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ps_scan_string, .Lfunc_end19-ps_scan_string
	.cfi_endproc

	.globl	ps_scan_bytes
	.align	16, 0x90
	.type	ps_scan_bytes,@function
ps_scan_bytes:                          # @ps_scan_bytes
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
	callq	psalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
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
	callq	ps_scan_buffer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_8
# BB#7:                                 # %if.then.10
	movabsq	$.L.str.4, %rdi
	callq	yy_fatal_error
.LBB20_8:                               # %if.end.11
	movq	-24(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ps_scan_bytes, .Lfunc_end20-ps_scan_bytes
	.cfi_endproc

	.globl	psget_lineno
	.align	16, 0x90
	.type	psget_lineno,@function
psget_lineno:                           # @psget_lineno
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
	movl	pslineno, %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	psget_lineno, .Lfunc_end21-psget_lineno
	.cfi_endproc

	.globl	psget_in
	.align	16, 0x90
	.type	psget_in,@function
psget_in:                               # @psget_in
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
	movq	psin, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	psget_in, .Lfunc_end22-psget_in
	.cfi_endproc

	.globl	psget_out
	.align	16, 0x90
	.type	psget_out,@function
psget_out:                              # @psget_out
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
	movq	psout, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	psget_out, .Lfunc_end23-psget_out
	.cfi_endproc

	.globl	psget_leng
	.align	16, 0x90
	.type	psget_leng,@function
psget_leng:                             # @psget_leng
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
	movl	psleng, %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	psget_leng, .Lfunc_end24-psget_leng
	.cfi_endproc

	.globl	psget_text
	.align	16, 0x90
	.type	psget_text,@function
psget_text:                             # @psget_text
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
	movq	pstext, %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	psget_text, .Lfunc_end25-psget_text
	.cfi_endproc

	.globl	psset_lineno
	.align	16, 0x90
	.type	psset_lineno,@function
psset_lineno:                           # @psset_lineno
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
	movl	%edi, pslineno
	popq	%rbp
	retq
.Lfunc_end26:
	.size	psset_lineno, .Lfunc_end26-psset_lineno
	.cfi_endproc

	.globl	psset_in
	.align	16, 0x90
	.type	psset_in,@function
psset_in:                               # @psset_in
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
	movq	%rdi, psin
	popq	%rbp
	retq
.Lfunc_end27:
	.size	psset_in, .Lfunc_end27-psset_in
	.cfi_endproc

	.globl	psset_out
	.align	16, 0x90
	.type	psset_out,@function
psset_out:                              # @psset_out
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
	movq	%rdi, psout
	popq	%rbp
	retq
.Lfunc_end28:
	.size	psset_out, .Lfunc_end28-psset_out
	.cfi_endproc

	.globl	psget_debug
	.align	16, 0x90
	.type	psget_debug,@function
psget_debug:                            # @psget_debug
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
	movl	ps_flex_debug, %eax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	psget_debug, .Lfunc_end29-psget_debug
	.cfi_endproc

	.globl	psset_debug
	.align	16, 0x90
	.type	psset_debug,@function
psset_debug:                            # @psset_debug
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
	movl	%edi, ps_flex_debug
	popq	%rbp
	retq
.Lfunc_end30:
	.size	psset_debug, .Lfunc_end30-psset_debug
	.cfi_endproc

	.globl	pslex_destroy
	.align	16, 0x90
	.type	pslex_destroy,@function
pslex_destroy:                          # @pslex_destroy
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
	callq	ps_delete_buffer
	movq	yy_buffer_stack_top, %rax
	movq	yy_buffer_stack, %rdi
	movq	$0, (%rdi,%rax,8)
	callq	pspop_buffer_state
	jmp	.LBB31_1
.LBB31_9:                               # %while.end
	movq	yy_buffer_stack, %rax
	movq	%rax, %rdi
	callq	psfree
	movq	$0, yy_buffer_stack
	callq	yy_init_globals
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pslex_destroy, .Lfunc_end31-pslex_destroy
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
	movq	$0, psin
	movq	$0, psout
	popq	%rbp
	retq
.Lfunc_end32:
	.size	yy_init_globals, .Lfunc_end32-yy_init_globals
	.cfi_endproc

	.globl	psrealloc
	.align	16, 0x90
	.type	psrealloc,@function
psrealloc:                              # @psrealloc
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
	.size	psrealloc, .Lfunc_end33-psrealloc
	.cfi_endproc

	.globl	pslex_dump
	.align	16, 0x90
	.type	pslex_dump,@function
pslex_dump:                             # @pslex_dump
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	xrfopen
	movq	%rax, psin
	movq	-8(%rbp), %rax
	movq	%rax, psout
	callq	pslex
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	pslex_dump, .Lfunc_end34-pslex_dump
	.cfi_endproc

	.type	psin,@object            # @psin
	.bss
	.globl	psin
	.align	8
psin:
	.quad	0
	.size	psin, 8

	.type	psout,@object           # @psout
	.globl	psout
	.align	8
psout:
	.quad	0
	.size	psout, 8

	.type	pslineno,@object        # @pslineno
	.data
	.globl	pslineno
	.align	4
pslineno:
	.long	1                       # 0x1
	.size	pslineno, 4

	.type	ps_flex_debug,@object   # @ps_flex_debug
	.bss
	.globl	ps_flex_debug
	.align	4
ps_flex_debug:
	.long	0                       # 0x0
	.size	ps_flex_debug, 4

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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
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
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
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
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
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
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	5                       # 0x5
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	0                       # 0x0
	.size	yy_accept, 52

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
	.short	25                      # 0x19
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	28                      # 0x1c
	.short	20                      # 0x14
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	18                      # 0x12
	.short	0                       # 0x0
	.short	15                      # 0xf
	.short	13                      # 0xd
	.short	11                      # 0xb
	.short	9                       # 0x9
	.short	12                      # 0xc
	.short	10                      # 0xa
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	10                      # 0xa
	.short	9                       # 0x9
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	3                       # 0x3
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	0                       # 0x0
	.short	7                       # 0x7
	.size	yy_base, 62

	.type	yy_chk,@object          # @yy_chk
	.align	16
yy_chk:
	.short	0                       # 0x0
	.short	29                      # 0x1d
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	28                      # 0x1c
	.short	23                      # 0x17
	.short	22                      # 0x16
	.short	21                      # 0x15
	.short	20                      # 0x14
	.short	19                      # 0x13
	.short	18                      # 0x12
	.short	17                      # 0x11
	.short	16                      # 0x10
	.short	15                      # 0xf
	.short	14                      # 0xe
	.short	13                      # 0xd
	.short	11                      # 0xb
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.size	yy_chk, 82

	.type	yy_def,@object          # @yy_def
	.align	16
yy_def:
	.short	0                       # 0x0
	.short	26                      # 0x1a
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	27                      # 0x1b
	.short	25                      # 0x19
	.short	28                      # 0x1c
	.short	25                      # 0x19
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	28                      # 0x1c
	.short	30                      # 0x1e
	.short	30                      # 0x1e
	.short	25                      # 0x19
	.short	0                       # 0x0
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.size	yy_def, 62

	.type	yy_meta,@object         # @yy_meta
	.align	16
yy_meta:
	.long	0                       # 0x0
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
	.size	yy_meta, 52

	.type	yy_nxt,@object          # @yy_nxt
	.align	16
yy_nxt:
	.short	0                       # 0x0
	.short	12                      # 0xc
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	6                       # 0x6
	.short	6                       # 0x6
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	23                      # 0x17
	.short	23                      # 0x17
	.short	10                      # 0xa
	.short	24                      # 0x18
	.short	24                      # 0x18
	.short	22                      # 0x16
	.short	21                      # 0x15
	.short	20                      # 0x14
	.short	19                      # 0x13
	.short	18                      # 0x12
	.short	17                      # 0x11
	.short	16                      # 0x10
	.short	15                      # 0xf
	.short	14                      # 0xe
	.short	13                      # 0xd
	.short	11                      # 0xb
	.short	25                      # 0x19
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.short	25                      # 0x19
	.size	yy_nxt, 82

	.type	pstext,@object          # @pstext
	.comm	pstext,8,8
	.type	psleng,@object          # @psleng
	.comm	psleng,4,4
	.type	yy_n_chars,@object      # @yy_n_chars
	.local	yy_n_chars
	.comm	yy_n_chars,4,4
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
	.asciz	"out of dynamic memory in ps_create_buffer()"
	.size	.L.str.1, 44

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"out of dynamic memory in ps_scan_buffer()"
	.size	.L.str.2, 42

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"out of dynamic memory in ps_scan_bytes()"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bad buffer in ps_scan_bytes()"
	.size	.L.str.4, 30

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

	.type	yy_buffer_stack_max,@object # @yy_buffer_stack_max
	.local	yy_buffer_stack_max
	.comm	yy_buffer_stack_max,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s\n"
	.size	.L.str.8, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
