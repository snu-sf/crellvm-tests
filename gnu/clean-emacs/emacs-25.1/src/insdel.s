	.text
	.file	"insdel.bc"
	.globl	move_gap_both
	.align	16, 0x90
	.type	move_gap_both,@function
move_gap_both:                          # @move_gap_both
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	cmpq	24(%rdi), %rsi
	jge	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gap_left
	jmp	.LBB0_5
.LBB0_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jle	.LBB0_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gap_right
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	move_gap_both, .Lfunc_end0-move_gap_both
	.cfi_endproc

	.align	16, 0x90
	.type	gap_left,@function
gap_left:                               # @gap_left
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
	subq	$96, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	testb	$1, -17(%rbp)
	jne	.LBB1_12
# BB#1:                                 # %if.then
	jmp	.LBB1_2
.LBB1_2:                                # %do.body
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	104(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	112(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB1_10
.LBB1_5:                                # %if.else
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB1_7
# BB#6:                                 # %if.then.19
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB1_7:                                # %if.end
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB1_9
# BB#8:                                 # %if.then.31
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB1_9:                                # %if.end.35
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.36
	jmp	.LBB1_11
.LBB1_11:                               # %do.end
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.37
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB1_13:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.55
	jmp	.LBB1_21
.LBB1_15:                               # %if.end.56
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_18
# BB#17:                                # %if.then.61
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -8(%rbp)
	jmp	.LBB1_21
.LBB1_18:                               # %if.end.63
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpq	$32000, -48(%rbp)       # imm = 0x7D00
	jle	.LBB1_20
# BB#19:                                # %if.then.65
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	$32000, -48(%rbp)       # imm = 0x7D00
.LBB1_20:                               # %if.end.66
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	subq	%rdx, %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	subq	%rdx, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	memmove
	jmp	.LBB1_13
.LBB1_21:                               # %while.end
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB1_23
# BB#22:                                # %if.then.78
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB1_23:                               # %if.end.85
	jmp	.LBB1_24
.LBB1_24:                               # %do.body.86
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_27
# BB#25:                                # %land.lhs.true.89
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_27
# BB#26:                                # %if.then.92
	callq	process_quit_flag
	jmp	.LBB1_30
.LBB1_27:                               # %if.else.93
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB1_29
# BB#28:                                # %if.then.95
	callq	process_pending_signals
.LBB1_29:                               # %if.end.96
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.97
	jmp	.LBB1_31
.LBB1_31:                               # %do.end.98
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gap_left, .Lfunc_end1-gap_left
	.cfi_endproc

	.align	16, 0x90
	.type	gap_right,@function
gap_right:                              # @gap_right
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	104(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB2_4
# BB#2:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	112(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB2_9
.LBB2_4:                                # %if.else
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB2_6
# BB#5:                                 # %if.then.18
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB2_6:                                # %if.end
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB2_8
# BB#7:                                 # %if.then.30
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB2_8:                                # %if.end.34
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.35
	jmp	.LBB2_10
.LBB2_10:                               # %do.end
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB2_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_13
# BB#12:                                # %if.then.53
	jmp	.LBB2_19
.LBB2_13:                               # %if.end.54
                                        #   in Loop: Header=BB2_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_16
# BB#14:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB2_11 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_16
# BB#15:                                # %if.then.59
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_16:                               # %if.end.61
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpq	$32000, -40(%rbp)       # imm = 0x7D00
	jle	.LBB2_18
# BB#17:                                # %if.then.63
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	$32000, -40(%rbp)       # imm = 0x7D00
.LBB2_18:                               # %if.end.64
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	memmove
	movq	-40(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_11
.LBB2_19:                               # %while.end
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB2_21
# BB#20:                                # %if.then.74
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB2_21:                               # %if.end.81
	jmp	.LBB2_22
.LBB2_22:                               # %do.body.82
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_25
# BB#23:                                # %land.lhs.true.85
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_25
# BB#24:                                # %if.then.88
	callq	process_quit_flag
	jmp	.LBB2_28
.LBB2_25:                               # %if.else.89
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_27
# BB#26:                                # %if.then.90
	callq	process_pending_signals
.LBB2_27:                               # %if.end.91
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.92
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.93
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gap_right, .Lfunc_end2-gap_right
	.cfi_endproc

	.globl	adjust_markers_for_delete
	.align	16, 0x90
	.type	adjust_markers_for_delete,@function
adjust_markers_for_delete:              # @adjust_markers_for_delete
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	adjust_suspend_auto_hscroll
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -40(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 24(%rcx)
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 32(%rcx)
	jmp	.LBB3_7
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jle	.LBB3_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.10
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_9:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	adjust_markers_for_delete, .Lfunc_end3-adjust_markers_for_delete
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_suspend_auto_hscroll,@function
adjust_suspend_auto_hscroll:            # @adjust_suspend_auto_hscroll
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
	movq	%rsi, -16(%rbp)
	movq	selected_window, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_7
.LBB4_1:                                # %if.then
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB4_2
	jmp	.LBB4_6
.LBB4_2:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB4_6
# BB#3:                                 # %land.lhs.true.5
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	XMARKER
	movq	24(%rax), %rax
	cmpq	-8(%rbp), %rax
	jl	.LBB4_6
# BB#4:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	XMARKER
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB4_6
# BB#5:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	andw	$32767, %cx             # imm = 0x7FFF
	movw	%cx, 468(%rax)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	adjust_suspend_auto_hscroll, .Lfunc_end4-adjust_suspend_auto_hscroll
	.cfi_endproc

	.globl	buffer_overflow
	.align	16, 0x90
	.type	buffer_overflow,@function
buffer_overflow:                        # @buffer_overflow
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
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.Lfunc_end5:
	.size	buffer_overflow, .Lfunc_end5-buffer_overflow
	.cfi_endproc

	.globl	make_gap
	.align	16, 0x90
	.type	make_gap,@function
make_gap:                               # @make_gap
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jl	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	make_gap_larger
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_gap_smaller
.LBB6_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	make_gap, .Lfunc_end6-make_gap
	.cfi_endproc

	.align	16, 0x90
	.type	make_gap_larger,@function
make_gap_larger:                        # @make_gap_larger
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
	subq	$64, %rsp
	movabsq	$2305843009213693950, %rax # imm = 0x1FFFFFFFFFFFFFFE
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	32(%rdi), %rdi
	subq	$1, %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rdi
	movq	%rdi, -48(%rbp)
	subq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB7_2
# BB#1:                                 # %if.then
	callq	buffer_overflow
.LBB7_2:                                # %if.end
	movabsq	$2305843009213693950, %rax # imm = 0x1FFFFFFFFFFFFFFE
	movq	-8(%rbp), %rcx
	addq	$2000, %rcx             # imm = 0x7D0
	subq	-48(%rbp), %rax
	cmpq	%rax, %rcx
	jge	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$2000, %rax             # imm = 0x7D0
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movabsq	$2305843009213693950, %rax # imm = 0x1FFFFFFFFFFFFFFE
	subq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	enlarge_buffer_text
	movl	$901, %edi              # imm = 0x385
	movq	globals+1104, %rax
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	%rax, globals+1104
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-32(%rbp), %rsi
	addq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gap_left
	movq	-40(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rax
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	40(%rsi), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	movb	$0, -1(%rax,%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, globals+1104
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	make_gap_larger, .Lfunc_end7-make_gap_larger
	.cfi_endproc

	.align	16, 0x90
	.type	make_gap_smaller,@function
make_gap_smaller:                       # @make_gap_smaller
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
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	-8(%rbp), %rdi
	cmpq	$20, %rdi
	jge	.LBB8_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	subq	$20, %rax
	movq	%rax, -8(%rbp)
.LBB8_2:                                # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	globals+1104, %rax
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	%rax, globals+1104
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rdi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rsi
	callq	gap_right
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	current_buffer, %rdi
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	enlarge_buffer_text
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	32(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, globals+1104
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	make_gap_smaller, .Lfunc_end8-make_gap_smaller
	.cfi_endproc

	.globl	make_gap_1
	.align	16, 0x90
	.type	make_gap_1,@function
make_gap_1:                             # @make_gap_1
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, current_buffer
	movq	-16(%rbp), %rdi
	callq	make_gap
	movq	-24(%rbp), %rsi
	movq	%rsi, current_buffer
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	make_gap_1, .Lfunc_end9-make_gap_1
	.cfi_endproc

	.globl	copy_text
	.align	16, 0x90
	.type	copy_text,@function
copy_text:                              # @copy_text
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
	movb	%r8b, %al
	movb	%cl, %r9b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %r9b
	movb	%r9b, -33(%rbp)
	andb	$1, %al
	movb	%al, -34(%rbp)
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-34(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	cmpl	%r8d, %ecx
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB10_44
.LBB10_2:                               # %if.else
	testb	$1, -33(%rbp)
	je	.LBB10_20
# BB#3:                                 # %if.then.6
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB10_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	jle	.LBB10_19
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	$1, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB10_14
.LBB10_7:                               # %cond.false
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_9
# BB#8:                                 # %cond.true.17
                                        #   in Loop: Header=BB10_4 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -60(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	jmp	.LBB10_13
.LBB10_9:                               # %cond.false.28
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_11
# BB#10:                                # %cond.true.33
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	$3, -60(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false.47
                                        #   in Loop: Header=BB10_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-60(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	string_char
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB10_12:                              # %cond.end
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB10_13:                              # %cond.end.49
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB10_14:                              # %cond.end.51
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB10_15
	jmp	.LBB10_16
.LBB10_15:                              # %cond.true.53
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-64(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB10_18
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.57
                                        #   in Loop: Header=BB10_4 Depth=1
	movslq	-64(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB10_18
.LBB10_17:                              # %if.then.62
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-64(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -64(%rbp)
.LBB10_18:                              # %if.end
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-64(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movslq	-60(%rbp), %rdx
	movq	-56(%rbp), %rsi
	subq	%rdx, %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB10_4
.LBB10_19:                              # %while.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_44
.LBB10_20:                              # %if.else.66
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB10_21:                              # %while.cond.67
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jle	.LBB10_43
# BB#22:                                # %while.body.70
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rcx), %esi
	movl	%esi, -76(%rbp)
	testb	$1, %al
	jne	.LBB10_23
	jmp	.LBB10_24
.LBB10_23:                              # %cond.true.74
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-76(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB10_41
	jmp	.LBB10_25
.LBB10_24:                              # %cond.false.78
                                        #   in Loop: Header=BB10_21 Depth=1
	movslq	-76(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB10_41
.LBB10_25:                              # %if.then.83
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %al
	movl	-76(%rbp), %ecx
	addl	$4194048, %ecx          # imm = 0x3FFF00
	movl	%ecx, -76(%rbp)
	testb	$1, %al
	jne	.LBB10_26
	jmp	.LBB10_27
.LBB10_26:                              # %cond.true.85
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-76(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB10_28
	jmp	.LBB10_29
.LBB10_27:                              # %cond.false.89
                                        #   in Loop: Header=BB10_21 Depth=1
	movslq	-76(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB10_29
.LBB10_28:                              # %cond.true.94
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	$1, %eax
	movl	-76(%rbp), %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB10_40
.LBB10_29:                              # %cond.false.97
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_30
	jmp	.LBB10_31
.LBB10_30:                              # %cond.true.98
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-76(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB10_32
	jmp	.LBB10_33
.LBB10_31:                              # %cond.false.102
                                        #   in Loop: Header=BB10_21 Depth=1
	movslq	-76(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB10_33
.LBB10_32:                              # %cond.true.107
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	$2, %eax
	movl	-76(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-76(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_39
.LBB10_33:                              # %cond.false.115
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_34
	jmp	.LBB10_35
.LBB10_34:                              # %cond.true.116
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-76(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB10_36
	jmp	.LBB10_37
.LBB10_35:                              # %cond.false.120
                                        #   in Loop: Header=BB10_21 Depth=1
	movslq	-76(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB10_37
.LBB10_36:                              # %cond.true.125
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	$3, %eax
	movl	-76(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-76(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-76(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB10_38
.LBB10_37:                              # %cond.false.139
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-76(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	char_string
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB10_38:                              # %cond.end.141
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB10_39:                              # %cond.end.143
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB10_40:                              # %cond.end.145
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	-32(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB10_42
.LBB10_41:                              # %if.else.149
                                        #   in Loop: Header=BB10_21 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	-32(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -32(%rbp)
.LBB10_42:                              # %if.end.153
                                        #   in Loop: Header=BB10_21 Depth=1
	jmp	.LBB10_21
.LBB10_43:                              # %while.end.154
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB10_44:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	copy_text, .Lfunc_end10-copy_text
	.cfi_endproc

	.globl	insert
	.align	16, 0x90
	.type	insert,@function
insert:                                 # @insert
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	chars_in_text
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r9d         # 4-byte Reload
	callq	insert_1_both
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-32(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	update_compositions
.LBB11_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	insert, .Lfunc_end11-insert
	.cfi_endproc

	.globl	insert_1_both
	.align	16, 0x90
	.type	insert_1_both,@function
insert_1_both:                          # @insert_1_both
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
	subq	$96, %rsp
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %r11b
	movb	%r11b, -25(%rbp)
	andb	$1, %r10b
	movb	%r10b, -26(%rbp)
	andb	$1, %al
	movb	%al, -27(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_19
.LBB12_2:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB12_4:                               # %if.end.5
	testb	$1, -26(%rbp)
	je	.LBB12_6
# BB#5:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rcx, %rdi
	callq	prepare_to_modify_buffer
.LBB12_6:                               # %if.end.9
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB12_8
# BB#7:                                 # %if.then.13
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	move_gap_both
.LBB12_8:                               # %if.end.17
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB12_10
# BB#9:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB12_10:                              # %if.end.23
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	record_insert
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	24(%rsi), %rax
	addq	$-1, %rax
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-24(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	40(%rdx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 40(%rdx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	8(%rdx), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rdx
	addq	768(%rdx), %rax
	movq	%rax, 768(%rdx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	16(%rdx), %rax
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	24(%rdx), %rax
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rdx
	addq	776(%rdx), %rax
	movq	%rax, 776(%rdx)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	32(%rdx), %rax
	movq	%rax, 32(%rdx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB12_12
# BB#11:                                # %if.then.51
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB12_12:                              # %if.end.58
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB12_14
# BB#13:                                # %if.then.66
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB12_14:                              # %if.end.74
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	adjust_overlays_for_insert
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	addq	-16(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	-24(%rbp), %rcx
	movb	-27(%rbp), %dl
	andb	$1, %dl
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movb	%dl, -49(%rbp)          # 1-byte Spill
	movq	%rax, %rdx
	movb	-49(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %r8d
	callq	adjust_markers_for_insert
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	offset_intervals
	testb	$1, -25(%rbp)
	jne	.LBB12_17
# BB#15:                                # %land.lhs.true
	movq	current_buffer, %rdi
	callq	buffer_intervals
	cmpq	$0, %rax
	je	.LBB12_17
# BB#16:                                # %if.then.93
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	addq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	set_text_properties
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB12_17:                              # %if.end.106
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	adjust_point
# BB#18:                                # %do.body
	jmp	.LBB12_19
.LBB12_19:                              # %do.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	insert_1_both, .Lfunc_end12-insert_1_both
	.cfi_endproc

	.globl	signal_after_change
	.align	16, 0x90
	.type	signal_after_change,@function
signal_after_change:                    # @signal_after_change
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -32(%rbp)
	testb	$1, globals+3396
	je	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_18
.LBB13_2:                               # %if.end
	xorl	%edi, %edi
	movq	globals+304, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_9
# BB#3:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+104, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_9
# BB#4:                                 # %land.lhs.true.4
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB13_9
# BB#5:                                 # %if.then.6
	xorl	%edi, %edi
	movq	combine_after_change_list, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_8
# BB#6:                                 # %land.lhs.true.9
	movq	current_buffer, %rax
	movq	combine_after_change_buffer, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	XBUFFER
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB13_8
# BB#7:                                 # %if.then.12
	callq	Fcombine_after_change_execute
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB13_8:                               # %if.end.14
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	subq	-16(%rbp), %rdx
	addq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	subq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list3i
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	combine_after_change_list, %rsi
	callq	Fcons
	movq	%rax, combine_after_change_list
	callq	Fcurrent_buffer
	movq	%rax, combine_after_change_buffer
	jmp	.LBB13_18
.LBB13_9:                               # %if.end.21
	xorl	%edi, %edi
	movq	combine_after_change_list, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_11
# BB#10:                                # %if.then.24
	callq	Fcombine_after_change_execute
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB13_11:                              # %if.end.26
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	globals, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_13
# BB#12:                                # %if.then.31
	movabsq	$reset_var_on_error, %rdi
	leaq	-48(%rbp), %rax
	movabsq	$globals, %rcx
	movq	%rcx, -48(%rbp)
	movb	$1, -40(%rbp)
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movl	$165, %edi
	callq	builtin_lisp_symbol
	movl	$4, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-88(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	addq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	callq	Frun_hook_with_args
	movb	$0, -40(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB13_13:                              # %if.end.43
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB13_14
	jmp	.LBB13_15
.LBB13_14:                              # %if.then.45
	movl	$1, %edx
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	addq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-8(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-8(%rbp), %rdi
	addq	-24(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	-16(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-192(%rbp), %r9         # 8-byte Reload
	callq	report_overlay_modification
.LBB13_15:                              # %if.end.58
	cmpq	$0, -16(%rbp)
	jne	.LBB13_17
# BB#16:                                # %if.then.60
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rcx
	addq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	report_interval_modification
.LBB13_17:                              # %if.end.66
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB13_18:                              # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	signal_after_change, .Lfunc_end13-signal_after_change
	.cfi_endproc

	.globl	insert_and_inherit
	.align	16, 0x90
	.type	insert_and_inherit,@function
insert_and_inherit:                     # @insert_and_inherit
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
	cmpq	$0, -16(%rbp)
	jle	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	chars_in_text
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	callq	insert_1_both
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-32(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	update_compositions
.LBB14_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	insert_and_inherit, .Lfunc_end14-insert_and_inherit
	.cfi_endproc

	.globl	insert_char
	.align	16, 0x90
	.type	insert_char,@function
insert_char:                            # @insert_char
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
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movl	%eax, %edi
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_17
# BB#1:                                 # %if.then
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_2
	jmp	.LBB15_3
.LBB15_2:                               # %cond.true
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB15_4
	jmp	.LBB15_5
.LBB15_3:                               # %cond.false
	movslq	-4(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB15_5
.LBB15_4:                               # %cond.true.5
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -9(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB15_16
.LBB15_5:                               # %cond.false.7
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_6
	jmp	.LBB15_7
.LBB15_6:                               # %cond.true.8
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB15_8
	jmp	.LBB15_9
.LBB15_7:                               # %cond.false.12
	movslq	-4(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB15_9
.LBB15_8:                               # %cond.true.17
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -9(%rbp)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -8(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB15_15
.LBB15_9:                               # %cond.false.23
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_10
	jmp	.LBB15_11
.LBB15_10:                              # %cond.true.24
	movl	-4(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB15_12
	jmp	.LBB15_13
.LBB15_11:                              # %cond.false.28
	movslq	-4(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB15_13
.LBB15_12:                              # %cond.true.33
	movl	$3, %eax
	movl	-4(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -9(%rbp)
	movl	-4(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -8(%rbp)
	movl	-4(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -7(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB15_14
.LBB15_13:                              # %cond.false.47
	leaq	-9(%rbp), %rsi
	movl	-4(%rbp), %edi
	callq	char_string
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB15_14:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB15_15:                              # %cond.end.49
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB15_16:                              # %cond.end.51
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	jmp	.LBB15_18
.LBB15_17:                              # %if.else
	movl	$1, -16(%rbp)
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -9(%rbp)
.LBB15_18:                              # %if.end
	leaq	-9(%rbp), %rdi
	movslq	-16(%rbp), %rsi
	callq	insert
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	insert_char, .Lfunc_end15-insert_char
	.cfi_endproc

	.globl	insert_string
	.align	16, 0x90
	.type	insert_string,@function
insert_string:                          # @insert_string
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
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	insert
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	insert_string, .Lfunc_end16-insert_string
	.cfi_endproc

	.globl	insert_before_markers
	.align	16, 0x90
	.type	insert_before_markers,@function
insert_before_markers:                  # @insert_before_markers
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	chars_in_text
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	-36(%rbp), %r8d         # 4-byte Reload
	movl	-36(%rbp), %r9d         # 4-byte Reload
	callq	insert_1_both
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-32(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	update_compositions
.LBB17_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	insert_before_markers, .Lfunc_end17-insert_before_markers
	.cfi_endproc

	.globl	insert_before_markers_and_inherit
	.align	16, 0x90
	.type	insert_before_markers_and_inherit,@function
insert_before_markers_and_inherit:      # @insert_before_markers_and_inherit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	chars_in_text
	movl	$1, %ecx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	movl	-36(%rbp), %r9d         # 4-byte Reload
	callq	insert_1_both
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-32(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	update_compositions
.LBB18_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	insert_before_markers_and_inherit, .Lfunc_end18-insert_before_markers_and_inherit
	.cfi_endproc

	.globl	prepare_to_modify_buffer
	.align	16, 0x90
	.type	prepare_to_modify_buffer,@function
prepare_to_modify_buffer:               # @prepare_to_modify_buffer
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	prepare_to_modify_buffer_1
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	invalidate_buffer_caches
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	prepare_to_modify_buffer, .Lfunc_end19-prepare_to_modify_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_markers_for_insert,@function
adjust_markers_for_insert:              # @adjust_markers_for_insert
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
	subq	$80, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movb	$0, -49(%rbp)
	movq	-24(%rbp), %rcx
	subq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	adjust_suspend_auto_hscroll
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -48(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB20_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB20_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$31, %ecx
	testl	$1, %ecx
	jne	.LBB20_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB20_1 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB20_8
.LBB20_5:                               # %if.then.3
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	shrl	$31, %edx
	testl	$1, %edx
	je	.LBB20_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB20_1 Depth=1
	movb	$1, -49(%rbp)
.LBB20_7:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.9
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_12
.LBB20_9:                               # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB20_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
.LBB20_11:                              # %if.end.16
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_12
.LBB20_12:                              # %if.end.17
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_13
.LBB20_13:                              # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB20_1
.LBB20_14:                              # %for.end
	testb	$1, -49(%rbp)
	je	.LBB20_16
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fix_start_end_in_overlays
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	fix_overlays_before
.LBB20_16:                              # %if.end.20
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	adjust_markers_for_insert, .Lfunc_end20-adjust_markers_for_insert
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_point,@function
adjust_point:                           # @adjust_point
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	addq	-8(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	%rsi, 736(%rdi)
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	addq	-16(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	%rsi, 744(%rdi)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	adjust_point, .Lfunc_end21-adjust_point
	.cfi_endproc

	.globl	insert_from_string
	.align	16, 0x90
	.type	insert_from_string,@function
insert_from_string:                     # @insert_from_string
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
	subq	$80, %rsp
	movb	%r9b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movl	$0, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	insert_from_string_1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-56(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, %rsi
	callq	update_compositions
.LBB22_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	insert_from_string, .Lfunc_end22-insert_from_string
	.cfi_endproc

	.align	16, 0x90
	.type	insert_from_string_1,@function
insert_from_string_1:                   # @insert_from_string_1
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
	subq	$160, %rsp
	movb	%r9b, %al
	movb	16(%rbp), %r10b
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	andb	$1, %r10b
	movb	%r10b, -42(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movl	%r9d, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB23_5
.LBB23_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB23_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	SDATA
	addq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	count_size_as_multibyte
	movq	%rax, -56(%rbp)
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %if.end.6
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rcx, %rdi
	callq	prepare_to_modify_buffer
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	8(%rdx), %rcx
	je	.LBB23_7
# BB#6:                                 # %if.then.12
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	move_gap_both
.LBB23_7:                               # %if.end.16
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB23_9
# BB#8:                                 # %if.then.19
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB23_9:                               # %if.end.22
	movq	-8(%rbp), %rdi
	callq	SDATA
	addq	-24(%rbp), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rdi
	addq	$-1, %rdi
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	STRING_MULTIBYTE
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movb	%al, -97(%rbp)          # 1-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movb	-97(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %edi
	andl	$1, %edi
	movzbl	%sil, %r9d
	andl	$1, %r9d
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	callq	copy_text
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	record_insert
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	%rax, 56(%rdx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	40(%rdx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 40(%rdx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	8(%rdx), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rdx
	addq	768(%rdx), %rax
	movq	%rax, 768(%rdx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	16(%rdx), %rax
	movq	%rax, 16(%rdx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	24(%rdx), %rax
	movq	%rax, 24(%rdx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rdx
	addq	776(%rdx), %rax
	movq	%rax, 776(%rdx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	32(%rdx), %rax
	movq	%rax, 32(%rdx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB23_11
# BB#10:                                # %if.then.58
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB23_11:                              # %if.end.65
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB23_13
# BB#12:                                # %if.then.73
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB23_13:                              # %if.end.81
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	adjust_overlays_for_insert
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	addq	-32(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	-56(%rbp), %rcx
	movb	-42(%rbp), %dl
	andb	$1, %dl
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movb	%dl, -137(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-137(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %r8d
	callq	adjust_markers_for_insert
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	offset_intervals
	movq	-8(%rbp), %rdi
	callq	string_intervals
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB23_15
# BB#14:                                # %if.then.99
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -64(%rbp)
.LBB23_15:                              # %if.end.101
	movq	-64(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rdx
	movq	current_buffer, %rcx
	movb	-41(%rbp), %sil
	andb	$1, %sil
	movb	%sil, -153(%rbp)        # 1-byte Spill
	movq	%rax, %rsi
	movb	-153(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %r8d
	callq	graft_intervals_into_buffer
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	adjust_point
# BB#16:                                # %do.body
	jmp	.LBB23_17
.LBB23_17:                              # %do.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	insert_from_string_1, .Lfunc_end23-insert_from_string_1
	.cfi_endproc

	.globl	insert_from_string_before_markers
	.align	16, 0x90
	.type	insert_from_string_before_markers,@function
insert_from_string_before_markers:      # @insert_from_string_before_markers
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
	subq	$80, %rsp
	movb	%r9b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	-41(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movl	$1, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	insert_from_string_1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-56(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, %rsi
	callq	update_compositions
.LBB24_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	insert_from_string_before_markers, .Lfunc_end24-insert_from_string_before_markers
	.cfi_endproc

	.globl	insert_from_gap
	.align	16, 0x90
	.type	insert_from_gap,@function
insert_from_gap:                        # @insert_from_gap
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
	movb	%dl, %al
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	current_buffer, %rsi
	movq	312(%rsi), %rsi
	movl	%edx, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_2:                               # %if.end
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rsi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rdx
	callq	invalidate_buffer_caches
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	record_insert
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	40(%rdx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 40(%rdx)
	testb	$1, -17(%rbp)
	jne	.LBB25_4
# BB#3:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
.LBB25_4:                               # %if.end.16
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	addq	768(%rcx), %rax
	movq	%rax, 768(%rcx)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	addq	776(%rcx), %rax
	movq	%rax, 776(%rcx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB25_6
# BB#5:                                 # %if.then.26
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB25_6:                               # %if.end.31
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	adjust_overlays_for_insert
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rax, %rdx
	callq	adjust_markers_for_insert
	movq	current_buffer, %rdi
	callq	buffer_intervals
	cmpq	$0, %rax
	je	.LBB25_8
# BB#7:                                 # %if.then.36
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	offset_intervals
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	current_buffer, %rcx
	callq	graft_intervals_into_buffer
.LBB25_8:                               # %if.end.37
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jge	.LBB25_10
# BB#9:                                 # %if.then.40
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	adjust_point
.LBB25_10:                              # %if.end.41
	jmp	.LBB25_11
.LBB25_11:                              # %do.body
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	insert_from_gap, .Lfunc_end25-insert_from_gap
	.cfi_endproc

	.globl	invalidate_buffer_caches
	.align	16, 0x90
	.type	invalidate_buffer_caches,@function
invalidate_buffer_caches:               # @invalidate_buffer_caches
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, 784(%rdx)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 928(%rax)
	je	.LBB26_12
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB26_11
# BB#4:                                 # %land.lhs.true
	cmpq	$1, -16(%rbp)
	jle	.LBB26_11
# BB#5:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	subq	$1, %rsi
	addq	%rsi, %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	cmpq	24(%rdi), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jl	.LBB26_7
# BB#6:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB26_8
.LBB26_8:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	je	.LBB26_10
# BB#9:                                 # %if.then.14
	movq	current_buffer, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	set_buffer_internal
	movq	$-1, %rdx
	leaq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	find_newline_no_quit
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	set_buffer_internal
.LBB26_10:                              # %if.end.16
	movq	-32(%rbp), %rax
	cmpq	$1, -32(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	%rax, -16(%rbp)
.LBB26_11:                              # %if.end.21
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	928(%rax), %rsi
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	invalidate_region_cache
.LBB26_12:                              # %if.end.26
	movq	-8(%rbp), %rax
	cmpq	$0, 912(%rax)
	je	.LBB26_14
# BB#13:                                # %if.then.28
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	912(%rax), %rsi
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	invalidate_region_cache
.LBB26_14:                              # %if.end.34
	movq	-8(%rbp), %rax
	cmpq	$0, 920(%rax)
	je	.LBB26_16
# BB#15:                                # %if.then.36
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	920(%rax), %rsi
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	invalidate_region_cache
.LBB26_16:                              # %if.end.42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	invalidate_buffer_caches, .Lfunc_end26-invalidate_buffer_caches
	.cfi_endproc

	.globl	insert_from_buffer
	.align	16, 0x90
	.type	insert_from_buffer,@function
insert_from_buffer:                     # @insert_from_buffer
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
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	insert_from_buffer_1
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	-40(%rbp), %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-40(%rbp), %rdi
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	callq	update_compositions
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	insert_from_buffer, .Lfunc_end27-insert_from_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	insert_from_buffer_1,@function
insert_from_buffer_1:                   # @insert_from_buffer_1
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
	subq	$304, %rsp              # imm = 0x130
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_47
.LBB28_2:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB28_20
.LBB28_4:                               # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_19
# BB#5:                                 # %if.then.8
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB28_12
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB28_8
# BB#7:                                 # %if.then.14
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB28_8:                               # %if.end.15
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jl	.LBB28_10
# BB#9:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB28_11
.LBB28_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB28_11
.LBB28_11:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdi
	callq	count_size_as_multibyte
	movq	%rax, -96(%rbp)
	jmp	.LBB28_13
.LBB28_12:                              # %if.else.24
	movq	$0, -40(%rbp)
.LBB28_13:                              # %if.end.25
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB28_18
# BB#14:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	addq	-40(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	-56(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jl	.LBB28_16
# BB#15:                                # %cond.true.37
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB28_17
.LBB28_16:                              # %cond.false.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB28_17
.LBB28_17:                              # %cond.end.41
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	%rax, -104(%rbp)
.LBB28_18:                              # %if.end.46
	movq	-96(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB28_19:                              # %if.end.48
	jmp	.LBB28_20
.LBB28_20:                              # %if.end.49
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rcx, %rdi
	callq	prepare_to_modify_buffer
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	8(%rdx), %rcx
	je	.LBB28_22
# BB#21:                                # %if.then.58
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	move_gap_both
.LBB28_22:                              # %if.end.62
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB28_24
# BB#23:                                # %if.then.66
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB28_24:                              # %if.end.70
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB28_31
# BB#25:                                # %if.then.74
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB28_27
# BB#26:                                # %if.then.79
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB28_27:                              # %if.end.80
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jl	.LBB28_29
# BB#28:                                # %cond.true.88
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB28_30
.LBB28_29:                              # %cond.false.91
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB28_30
.LBB28_30:                              # %cond.end.92
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	24(%rdx), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movb	%r8b, -209(%rbp)        # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movb	-209(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %edi
	andl	$1, %edi
	movzbl	%r8b, %r10d
	andl	$1, %r10d
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	%edi, -216(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movl	-216(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, %r8d
	callq	copy_text
	movq	%rax, -48(%rbp)
	jmp	.LBB28_32
.LBB28_31:                              # %if.else.109
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB28_32:                              # %if.end.110
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB28_37
# BB#33:                                # %if.then.112
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	addq	-40(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	-56(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jl	.LBB28_35
# BB#34:                                # %cond.true.122
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB28_36
.LBB28_35:                              # %cond.false.125
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB28_36
.LBB28_36:                              # %cond.end.126
	movq	-232(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	24(%rdx), %rax
	addq	$-1, %rax
	addq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	subq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movb	%r8b, -273(%rbp)        # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movb	-273(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %edi
	andl	$1, %edi
	movzbl	%r8b, %r10d
	andl	$1, %r10d
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	%edi, -280(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movl	-280(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, %r8d
	callq	copy_text
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB28_37:                              # %if.end.146
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	record_insert
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	40(%rsi), %rdi
	subq	%rax, %rdi
	movq	%rdi, 40(%rsi)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	8(%rsi), %rax
	movq	%rax, 8(%rsi)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rsi
	addq	768(%rsi), %rax
	movq	%rax, 768(%rsi)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	16(%rsi), %rax
	movq	%rax, 16(%rsi)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	24(%rsi), %rax
	movq	%rax, 24(%rsi)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rsi
	addq	776(%rsi), %rax
	movq	%rax, 776(%rsi)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	addq	32(%rsi), %rax
	movq	%rax, 32(%rsi)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB28_39
# BB#38:                                # %if.then.171
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB28_39:                              # %if.end.178
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB28_41
# BB#40:                                # %if.then.186
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB28_41:                              # %if.end.194
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	adjust_overlays_for_insert
	xorl	%r8d, %r8d
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	addq	-24(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	-80(%rbp), %rcx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	adjust_markers_for_insert
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	offset_intervals
	movq	-8(%rbp), %rdi
	callq	buffer_intervals
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB28_46
# BB#42:                                # %if.then.214
	movq	-8(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB28_45
# BB#43:                                # %land.lhs.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB28_45
# BB#44:                                # %if.then.219
	movq	-24(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB28_45:                              # %if.end.221
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -88(%rbp)
.LBB28_46:                              # %if.end.223
	movq	-88(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-24(%rbp), %rdx
	movq	current_buffer, %rcx
	movb	-25(%rbp), %sil
	andb	$1, %sil
	movb	%sil, -297(%rbp)        # 1-byte Spill
	movq	%rax, %rsi
	movb	-297(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %r8d
	callq	graft_intervals_into_buffer
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	adjust_point
.LBB28_47:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end28:
	.size	insert_from_buffer_1, .Lfunc_end28-insert_from_buffer_1
	.cfi_endproc

	.globl	adjust_after_insert
	.align	16, 0x90
	.type	adjust_after_insert,@function
adjust_after_insert:                    # @adjust_after_insert
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	subq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	8(%rcx), %rcx
	cmpq	-24(%rbp), %rcx
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	move_gap_both
.LBB29_2:                               # %if.end
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	8(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 24(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 768(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	776(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 776(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	32(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	adjust_after_replace
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	adjust_after_insert, .Lfunc_end29-adjust_after_insert
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_after_replace,@function
adjust_after_replace:                   # @adjust_after_replace
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB30_1
	jmp	.LBB30_2
.LBB30_1:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -56(%rbp)
.LBB30_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	40(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	addq	768(%rcx), %rax
	movq	%rax, 768(%rcx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	addq	776(%rcx), %rax
	movq	%rax, 776(%rcx)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB30_4
# BB#3:                                 # %if.then.14
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB30_4:                               # %if.end.19
	cmpq	$0, -48(%rbp)
	jle	.LBB30_6
# BB#5:                                 # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	adjust_markers_for_replace
	jmp	.LBB30_7
.LBB30_6:                               # %if.else
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	-40(%rbp), %rcx
	movq	%rax, %rdx
	callq	adjust_markers_for_insert
.LBB30_7:                               # %if.end.24
	cmpq	$0, -48(%rbp)
	jle	.LBB30_9
# BB#8:                                 # %if.then.26
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	record_delete
.LBB30_9:                               # %if.end.27
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	record_insert
	movq	-32(%rbp), %rsi
	cmpq	-48(%rbp), %rsi
	jle	.LBB30_11
# BB#10:                                # %if.then.29
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	adjust_overlays_for_insert
	jmp	.LBB30_14
.LBB30_11:                              # %if.else.31
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB30_13
# BB#12:                                # %if.then.33
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	adjust_overlays_for_delete
.LBB30_13:                              # %if.end.35
	jmp	.LBB30_14
.LBB30_14:                              # %if.end.36
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	offset_intervals
	movq	-8(%rbp), %rax
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rax
	jge	.LBB30_16
# BB#15:                                # %if.then.40
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	adjust_point
.LBB30_16:                              # %if.end.43
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB30_18
# BB#17:                                # %if.then.51
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB30_18:                              # %if.end.59
	jmp	.LBB30_19
.LBB30_19:                              # %do.body
	jmp	.LBB30_20
.LBB30_20:                              # %do.end
	cmpq	$0, -32(%rbp)
	jne	.LBB30_22
# BB#21:                                # %if.then.61
	movq	-8(%rbp), %rdi
	callq	evaporate_overlays
.LBB30_22:                              # %if.end.62
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 56(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	adjust_after_replace, .Lfunc_end30-adjust_after_replace
	.cfi_endproc

	.globl	replace_range
	.align	16, 0x90
	.type	replace_range,@function
replace_range:                          # @replace_range
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp96:
	.cfi_offset %rbx, -24
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movb	16(%rbp), %bl
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %r11b
	movb	%r11b, -33(%rbp)
	andb	$1, %r10b
	movb	%r10b, -34(%rbp)
	andb	$1, %al
	movb	%al, -35(%rbp)
	andb	$1, %bl
	movb	%bl, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB31_2
.LBB31_2:                               # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB31_4
# BB#3:                                 # %if.then
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	prepare_to_modify_buffer
	movq	-16(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB31_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB31_6
# BB#5:                                 # %if.then.6
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB31_6:                               # %if.end.8
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB31_8
# BB#7:                                 # %if.then.10
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB31_8:                               # %if.end.12
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jg	.LBB31_11
# BB#9:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	jne	.LBB31_11
# BB#10:                                # %if.then.19
	jmp	.LBB31_51
.LBB31_11:                              # %if.end.20
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_13
# BB#12:                                # %if.then.23
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB31_16
.LBB31_13:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB31_15
# BB#14:                                # %if.then.25
	movq	-32(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	count_size_as_multibyte
	movq	%rax, -104(%rbp)
.LBB31_15:                              # %if.end.28
	jmp	.LBB31_16
.LBB31_16:                              # %if.end.29
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB31_18
# BB#17:                                # %if.then.31
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gap_right
.LBB31_18:                              # %if.end.32
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB31_20
# BB#19:                                # %if.then.36
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gap_left
.LBB31_20:                              # %if.end.37
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_22
# BB#21:                                # %if.then.40
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	make_buffer_string_both
	movq	%rax, -112(%rbp)
.LBB31_22:                              # %if.end.42
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 768(%rcx)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 16(%rcx)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	776(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 776(%rcx)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	32(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB31_24
# BB#23:                                # %if.then.58
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB31_24:                              # %if.end.63
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB31_26
# BB#25:                                # %if.then.69
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB31_26:                              # %if.end.75
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB31_28
# BB#27:                                # %if.then.83
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB31_28:                              # %if.end.91
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-104(%rbp), %rax
	jge	.LBB31_30
# BB#29:                                # %if.then.95
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB31_30:                              # %if.end.99
	movq	-32(%rbp), %rdi
	callq	SDATA
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rdi
	addq	$-1, %rdi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movb	%al, -161(%rbp)         # 1-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movb	-161(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %edi
	andl	$1, %edi
	movzbl	%sil, %r9d
	andl	$1, %r9d
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	%edi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	callq	copy_text
	xorl	%edi, %edi
	movq	-112(%rbp), %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB31_32
# BB#31:                                # %if.then.114
	movq	-16(%rbp), %rax
	movq	-112(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-208(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-48(%rbp), %rsi
	callq	record_insert
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	record_delete
.LBB31_32:                              # %if.end.117
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	40(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 40(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	addq	768(%rcx), %rax
	movq	%rax, 768(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	addq	776(%rcx), %rax
	movq	%rax, 776(%rcx)
	movq	-104(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB31_34
# BB#33:                                # %if.then.140
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB31_34:                              # %if.end.147
	testb	$1, -35(%rbp)
	je	.LBB31_36
# BB#35:                                # %if.then.149
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-104(%rbp), %r9
	callq	adjust_markers_for_replace
.LBB31_36:                              # %if.end.150
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	adjust_overlays_for_delete
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	adjust_overlays_for_insert
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	callq	offset_intervals
	movq	-32(%rbp), %rdi
	callq	string_intervals
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	current_buffer, %rcx
	movb	-34(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	graft_intervals_into_buffer
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jge	.LBB31_44
# BB#37:                                # %if.then.156
	movq	-16(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	-24(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jge	.LBB31_39
# BB#38:                                # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB31_40
.LBB31_39:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB31_40:                              # %cond.end
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	cmpq	-72(%rbp), %rdx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jge	.LBB31_42
# BB#41:                                # %cond.true.167
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB31_43
.LBB31_42:                              # %cond.false.170
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB31_43:                              # %cond.end.171
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	adjust_point
.LBB31_44:                              # %if.end.174
	cmpq	$0, -104(%rbp)
	jne	.LBB31_46
# BB#45:                                # %if.then.176
	movq	-16(%rbp), %rdi
	callq	evaporate_overlays
.LBB31_46:                              # %if.end.177
	jmp	.LBB31_47
.LBB31_47:                              # %do.body.178
	jmp	.LBB31_48
.LBB31_48:                              # %do.end.179
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 56(%rcx)
	testb	$1, -36(%rbp)
	je	.LBB31_50
# BB#49:                                # %if.then.185
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-264(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	update_search_regs
.LBB31_50:                              # %if.end.188
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rsi
	callq	update_compositions
.LBB31_51:                              # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	replace_range, .Lfunc_end31-replace_range
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_markers_for_replace,@function
adjust_markers_for_replace:             # @adjust_markers_for_replace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	subq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rcx
	subq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	adjust_suspend_auto_hscroll
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -56(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB32_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB32_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	jmp	.LBB32_7
.LBB32_4:                               # %if.else
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB32_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB32_6:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_7
.LBB32_7:                               # %if.end.11
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_8
.LBB32_8:                               # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB32_1
.LBB32_9:                               # %for.end
	jmp	.LBB32_10
.LBB32_10:                              # %do.body
	jmp	.LBB32_11
.LBB32_11:                              # %do.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	adjust_markers_for_replace, .Lfunc_end32-adjust_markers_for_replace
	.cfi_endproc

	.globl	replace_range_2
	.align	16, 0x90
	.type	replace_range_2,@function
replace_range_2:                        # @replace_range_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	24(%rbp), %al
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	andb	$1, %al
	movb	%al, -57(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB33_2
.LBB33_2:                               # %do.end
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jg	.LBB33_5
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	jne	.LBB33_5
# BB#4:                                 # %if.then
	jmp	.LBB33_38
.LBB33_5:                               # %if.end
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB33_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gap_right
.LBB33_7:                               # %if.end.5
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB33_9
# BB#8:                                 # %if.then.9
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gap_left
.LBB33_9:                               # %if.end.10
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 768(%rcx)
	movq	-80(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	776(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 776(%rcx)
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	32(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB33_11
# BB#10:                                # %if.then.24
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB33_11:                              # %if.end.29
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB33_13
# BB#12:                                # %if.then.35
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB33_13:                              # %if.end.41
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB33_15
# BB#14:                                # %if.then.49
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB33_15:                              # %if.end.57
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB33_17
# BB#16:                                # %if.then.61
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB33_17:                              # %if.end.65
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	addq	$-1, %rax
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	40(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 40(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	addq	768(%rcx), %rax
	movq	%rax, 768(%rcx)
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	addq	776(%rcx), %rax
	movq	%rax, 776(%rcx)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB33_19
# BB#18:                                # %if.then.94
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB33_19:                              # %if.end.101
	testb	$1, -57(%rbp)
	je	.LBB33_24
# BB#20:                                # %land.lhs.true.102
	cmpq	$1, -80(%rbp)
	jne	.LBB33_23
# BB#21:                                # %land.lhs.true.104
	cmpq	$1, -48(%rbp)
	jne	.LBB33_23
# BB#22:                                # %land.lhs.true.106
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB33_24
.LBB33_23:                              # %if.then.108
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	adjust_markers_for_replace
.LBB33_24:                              # %if.end.109
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB33_26
# BB#25:                                # %if.then.111
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	adjust_overlays_for_insert
	movq	-8(%rbp), %rsi
	addq	-48(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	adjust_overlays_for_delete
.LBB33_26:                              # %if.end.113
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	offset_intervals
	movq	-8(%rbp), %rax
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rax
	jge	.LBB33_33
# BB#27:                                # %land.lhs.true.117
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB33_29
# BB#28:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB33_33
.LBB33_29:                              # %if.then.120
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB33_31
# BB#30:                                # %if.then.124
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	adjust_point
	jmp	.LBB33_32
.LBB33_31:                              # %if.else
	movq	-48(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	adjust_point
.LBB33_32:                              # %if.end.132
	jmp	.LBB33_33
.LBB33_33:                              # %if.end.133
	cmpq	$0, -56(%rbp)
	jne	.LBB33_35
# BB#34:                                # %if.then.135
	movq	-8(%rbp), %rdi
	callq	evaporate_overlays
.LBB33_35:                              # %if.end.136
	jmp	.LBB33_36
.LBB33_36:                              # %do.body.137
	jmp	.LBB33_37
.LBB33_37:                              # %do.end.138
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 56(%rcx)
.LBB33_38:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	replace_range_2, .Lfunc_end33-replace_range_2
	.cfi_endproc

	.globl	del_range
	.align	16, 0x90
	.type	del_range,@function
del_range:                              # @del_range
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	del_range_1
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	del_range, .Lfunc_end34-del_range
	.cfi_endproc

	.globl	del_range_1
	.align	16, 0x90
	.type	del_range_1,@function
del_range_1:                            # @del_range_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%cl, %al
	movb	%dl, %r8b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %r8b
	movb	%r8b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	-16(%rbp), %rsi
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rsi
	jge	.LBB35_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB35_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB35_4
# BB#3:                                 # %if.then.4
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB35_4:                               # %if.end.6
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB35_6
# BB#5:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB35_12
.LBB35_6:                               # %if.end.9
	testb	$1, -25(%rbp)
	je	.LBB35_11
# BB#7:                                 # %if.then.10
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	prepare_to_modify_buffer
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	-64(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB35_9
# BB#8:                                 # %cond.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB35_10
.LBB35_9:                               # %cond.false
	movq	-16(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB35_10:                              # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
.LBB35_11:                              # %if.end.15
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movb	-26(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	del_range_2
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	signal_after_change
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	update_compositions
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB35_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	del_range_1, .Lfunc_end35-del_range_1
	.cfi_endproc

	.globl	del_range_2
	.align	16, 0x90
	.type	del_range_2,@function
del_range_2:                            # @del_range_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB36_2
.LBB36_2:                               # %do.end
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB36_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gap_right
.LBB36_4:                               # %if.end
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB36_6
# BB#5:                                 # %if.then.5
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gap_left
.LBB36_6:                               # %if.end.6
	testb	$1, -33(%rbp)
	jne	.LBB36_8
# BB#7:                                 # %lor.lhs.false
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_9
.LBB36_8:                               # %if.then.8
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	make_buffer_string_both
	movq	%rax, -64(%rbp)
	jmp	.LBB36_10
.LBB36_9:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB36_10:                              # %if.end.11
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	record_delete
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	adjust_markers_for_delete
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	48(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 48(%rcx)
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB36_18
# BB#11:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	-24(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jge	.LBB36_13
# BB#12:                                # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB36_14
.LBB36_13:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB36_14:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	cmpq	-32(%rbp), %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jge	.LBB36_16
# BB#15:                                # %cond.true.26
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB36_17
.LBB36_16:                              # %cond.false.29
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB36_17:                              # %cond.end.30
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	callq	adjust_point
.LBB36_18:                              # %if.end.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	subq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	callq	offset_intervals
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	adjust_overlays_for_delete
	movq	-48(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	addq	40(%rdx), %rcx
	movq	%rcx, 40(%rdx)
	movq	-48(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	776(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 776(%rdx)
	movq	-48(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	32(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 32(%rdx)
	movq	-56(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	768(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 768(%rdx)
	movq	-56(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	16(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 16(%rdx)
	movq	-8(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	%rcx, 8(%rdx)
	movq	-16(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	%rcx, 24(%rdx)
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	$0, 40(%rcx)
	jle	.LBB36_21
# BB#19:                                # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movb	136(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB36_21
# BB#20:                                # %if.then.50
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB36_21:                              # %if.end.55
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB36_23
# BB#22:                                # %if.then.61
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB36_23:                              # %if.end.67
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB36_25
# BB#24:                                # %if.then.75
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	8(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB36_25:                              # %if.end.83
	jmp	.LBB36_26
.LBB36_26:                              # %do.body.84
	jmp	.LBB36_27
.LBB36_27:                              # %do.end.85
	movq	-8(%rbp), %rdi
	callq	evaporate_overlays
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	del_range_2, .Lfunc_end36-del_range_2
	.cfi_endproc

	.globl	del_range_byte
	.align	16, 0x90
	.type	del_range_byte,@function
del_range_byte:                         # @del_range_byte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rsi
	movq	current_buffer, %rdi
	cmpq	760(%rdi), %rsi
	jge	.LBB37_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB37_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	776(%rcx), %rax
	jle	.LBB37_4
# BB#3:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB37_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jg	.LBB37_6
# BB#5:                                 # %if.then.7
	jmp	.LBB37_16
.LBB37_6:                               # %if.end.8
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -40(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB37_15
# BB#7:                                 # %if.then.10
	leaq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	prepare_to_modify_buffer
	movq	-32(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB37_9
# BB#8:                                 # %if.then.13
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -8(%rbp)
.LBB37_9:                               # %if.end.15
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB37_11
# BB#10:                                # %if.then.17
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB37_14
.LBB37_11:                              # %if.else
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB37_13
# BB#12:                                # %if.then.24
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -16(%rbp)
.LBB37_13:                              # %if.end.26
	jmp	.LBB37_14
.LBB37_14:                              # %if.end.27
	jmp	.LBB37_15
.LBB37_15:                              # %if.end.28
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	del_range_2
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	subq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	signal_after_change
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	update_compositions
.LBB37_16:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	del_range_byte, .Lfunc_end37-del_range_byte
	.cfi_endproc

	.globl	del_range_both
	.align	16, 0x90
	.type	del_range_both,@function
del_range_both:                         # @del_range_both
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rcx
	movq	current_buffer, %rdx
	cmpq	760(%rdx), %rcx
	jge	.LBB38_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB38_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	776(%rcx), %rax
	jle	.LBB38_4
# BB#3:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB38_4:                               # %if.end.5
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB38_6
# BB#5:                                 # %if.then.7
	jmp	.LBB38_20
.LBB38_6:                               # %if.end.8
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jge	.LBB38_8
# BB#7:                                 # %if.then.10
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB38_8:                               # %if.end.12
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB38_10
# BB#9:                                 # %if.then.14
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB38_10:                              # %if.end.16
	testb	$1, -33(%rbp)
	je	.LBB38_19
# BB#11:                                # %if.then.17
	leaq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	prepare_to_modify_buffer
	movq	-8(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB38_13
# BB#12:                                # %if.then.20
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -16(%rbp)
.LBB38_13:                              # %if.end.21
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB38_15
# BB#14:                                # %if.then.24
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB38_18
.LBB38_15:                              # %if.else
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB38_17
# BB#16:                                # %if.then.31
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -32(%rbp)
.LBB38_17:                              # %if.end.33
	jmp	.LBB38_18
.LBB38_18:                              # %if.end.34
	jmp	.LBB38_19
.LBB38_19:                              # %if.end.35
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	del_range_2
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	subq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	signal_after_change
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	update_compositions
.LBB38_20:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	del_range_both, .Lfunc_end38-del_range_both
	.cfi_endproc

	.globl	modify_text
	.align	16, 0x90
	.type	modify_text,@function
modify_text:                            # @modify_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	prepare_to_modify_buffer
# BB#1:                                 # %do.body
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	104(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB39_4
# BB#2:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	112(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB39_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	subq	$1, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB39_9
.LBB39_4:                               # %if.else
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	96(%rcx), %rax
	jge	.LBB39_6
# BB#5:                                 # %if.then.16
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 96(%rcx)
.LBB39_6:                               # %if.end
	movq	-8(%rbp), %rax
	subq	$1, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB39_8
# BB#7:                                 # %if.then.27
	movq	-8(%rbp), %rax
	subq	$1, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB39_8:                               # %if.end.32
	jmp	.LBB39_9
.LBB39_9:                               # %if.end.33
	jmp	.LBB39_10
.LBB39_10:                              # %do.end
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jg	.LBB39_12
# BB#11:                                # %if.then.38
	callq	record_first_change
.LBB39_12:                              # %if.end.39
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_point_before_scroll
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	modify_text, .Lfunc_end39-modify_text
	.cfi_endproc

	.globl	prepare_to_modify_buffer_1
	.align	16, 0x90
	.type	prepare_to_modify_buffer_1,@function
prepare_to_modify_buffer_1:             # @prepare_to_modify_buffer_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	Fbarf_if_buffer_read_only
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB40_2:                               # %if.end
	callq	run_undoable_change
	movq	current_buffer, %rdi
	callq	bset_redisplay
	movq	current_buffer, %rdi
	callq	buffer_intervals
	cmpq	$0, %rax
	je	.LBB40_7
# BB#3:                                 # %if.then.4
	cmpq	$0, -24(%rbp)
	je	.LBB40_5
# BB#4:                                 # %if.then.6
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	verify_interval_modification
	movq	-48(%rbp), %rdi
	callq	marker_position
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	jmp	.LBB40_6
.LBB40_5:                               # %if.else
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	verify_interval_modification
.LBB40_6:                               # %if.end.11
	jmp	.LBB40_7
.LBB40_7:                               # %if.end.12
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB40_9
# BB#8:                                 # %if.then.15
	movq	current_buffer, %rax
	movq	784(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB40_10
.LBB40_9:                               # %if.else.17
	movq	current_buffer, %rax
	movq	%rax, -32(%rbp)
.LBB40_10:                              # %if.end.18
	testb	$1, globals+3396
	je	.LBB40_12
# BB#11:                                # %if.then.20
	jmp	.LBB40_25
.LBB40_12:                              # %if.end.21
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_16
# BB#13:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_16
# BB#14:                                # %land.lhs.true.26
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jl	.LBB40_16
# BB#15:                                # %if.then.29
	movq	-32(%rbp), %rax
	movq	392(%rax), %rdi
	callq	lock_file
.LBB40_16:                              # %if.end.31
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	304(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_24
# BB#17:                                # %land.lhs.true.34
	movq	current_buffer, %rax
	movq	64(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB40_24
# BB#18:                                # %land.lhs.true.37
	xorl	%edi, %edi
	movq	globals+2064, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_24
# BB#19:                                # %land.lhs.true.40
	movl	$717, %edi              # imm = 0x2CD
	movq	globals+2104, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_21
# BB#20:                                # %cond.true
	movq	globals+2440, %rdi
	callq	CAR_SAFE
	movl	$717, %edi              # imm = 0x2CD
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_23
	jmp	.LBB40_24
.LBB40_21:                              # %cond.false
	xorl	%edi, %edi
	movq	globals+2104, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_24
# BB#22:                                # %land.lhs.true.48
	xorl	%edi, %edi
	movq	globals+2440, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_24
.LBB40_23:                              # %if.then.51
	movl	$801, %edi              # imm = 0x321
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fsymbol_value
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, globals+2064
.LBB40_24:                              # %if.end.56
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	signal_before_change
	movl	$319, %edi              # imm = 0x13F
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB40_25:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	prepare_to_modify_buffer_1, .Lfunc_end40-prepare_to_modify_buffer_1
	.cfi_endproc

	.align	16, 0x90
	.type	run_undoable_change,@function
run_undoable_change:                    # @run_undoable_change
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_2
# BB#1:                                 # %if.then
	jmp	.LBB41_3
.LBB41_2:                               # %if.end
	movl	$965, %edi              # imm = 0x3C5
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB41_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	run_undoable_change, .Lfunc_end41-run_undoable_change
	.cfi_endproc

	.align	16, 0x90
	.type	signal_before_change,@function
signal_before_change:                   # @signal_before_change
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movl	$544, %edi              # imm = 0x220
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	48(%rdx), %rax
	jl	.LBB42_10
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+776, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_10
# BB#2:                                 # %if.then
	cmpq	$0, -24(%rbp)
	je	.LBB42_5
# BB#3:                                 # %land.lhs.true.11
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_5
# BB#4:                                 # %if.then.14
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -64(%rbp)
.LBB42_5:                               # %if.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_7
# BB#6:                                 # %if.then.21
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -48(%rbp)
.LBB42_7:                               # %if.end.24
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_9
# BB#8:                                 # %if.then.27
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -56(%rbp)
.LBB42_9:                               # %if.end.30
	movl	$432, %edi              # imm = 0x1B0
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
.LBB42_10:                              # %if.end.32
	xorl	%edi, %edi
	movq	globals+104, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_25
# BB#11:                                # %if.then.35
	movabsq	$globals, %rax
	addq	$104, %rax
	movq	%rax, -88(%rbp)
	movb	$1, -80(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB42_14
# BB#12:                                # %land.lhs.true.37
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_14
# BB#13:                                # %if.then.40
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -64(%rbp)
.LBB42_14:                              # %if.end.45
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_16
# BB#15:                                # %if.then.48
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -48(%rbp)
.LBB42_16:                              # %if.end.51
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_18
# BB#17:                                # %if.then.54
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -56(%rbp)
.LBB42_18:                              # %if.end.57
	movabsq	$reset_var_on_error, %rdi
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movl	$197, %edi
	leaq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB42_20
# BB#19:                                # %cond.true
	movq	-48(%rbp), %rdi
	callq	Fmarker_position
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB42_21
.LBB42_20:                              # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB42_21:                              # %cond.end
	movq	-264(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$8, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_23
# BB#22:                                # %cond.true.65
	movq	-56(%rbp), %rdi
	callq	Fmarker_position
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB42_24
.LBB42_23:                              # %cond.false.67
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB42_24:                              # %cond.end.68
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edi
	leaq	-112(%rbp), %rsi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	callq	Frun_hook_with_args
	movb	$0, -80(%rbp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB42_25:                              # %if.end.72
	callq	buffer_has_overlays
	testb	$1, %al
	jne	.LBB42_26
	jmp	.LBB42_42
.LBB42_26:                              # %if.then.74
	cmpq	$0, -24(%rbp)
	je	.LBB42_29
# BB#27:                                # %land.lhs.true.76
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#28:                                # %if.then.79
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	%rax, -64(%rbp)
.LBB42_29:                              # %if.end.84
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_31
# BB#30:                                # %cond.true.87
	movq	-48(%rbp), %rdi
	callq	Fmarker_position
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB42_32
.LBB42_31:                              # %cond.false.89
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB42_32:                              # %cond.end.90
	movq	-328(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_34
# BB#33:                                # %cond.true.94
	movq	-56(%rbp), %rdi
	callq	Fmarker_position
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB42_35
.LBB42_34:                              # %cond.false.96
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB42_35:                              # %cond.end.97
	movq	-352(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-48(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_37
# BB#36:                                # %cond.true.101
	movq	-48(%rbp), %rdi
	callq	Fmarker_position
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB42_38
.LBB42_37:                              # %cond.false.103
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB42_38:                              # %cond.end.104
	movq	-376(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_40
# BB#39:                                # %cond.true.108
	movq	-56(%rbp), %rdi
	callq	Fmarker_position
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB42_41
.LBB42_40:                              # %cond.false.110
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB42_41:                              # %cond.end.111
	movq	-400(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	report_overlay_modification
.LBB42_42:                              # %if.end.114
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_44
# BB#43:                                # %if.then.117
	movq	-48(%rbp), %rdi
	callq	free_marker
.LBB42_44:                              # %if.end.118
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_46
# BB#45:                                # %if.then.121
	movq	-56(%rbp), %rdi
	callq	free_marker
.LBB42_46:                              # %if.end.122
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_48
# BB#47:                                # %if.then.125
	movq	-64(%rbp), %rdi
	callq	marker_position
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-64(%rbp), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
.LBB42_48:                              # %if.end.128
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -448(%rbp)        # 8-byte Spill
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end42:
	.size	signal_before_change, .Lfunc_end42-signal_before_change
	.cfi_endproc

	.globl	Fcombine_after_change_execute
	.align	16, 0x90
	.type	Fcombine_after_change_execute,@function
Fcombine_after_change_execute:          # @Fcombine_after_change_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	combine_after_change_list, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_20
.LBB43_2:                               # %if.end
	movq	combine_after_change_buffer, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB43_3
	jmp	.LBB43_4
.LBB43_3:                               # %lor.lhs.false
	movq	combine_after_change_buffer, %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_5
.LBB43_4:                               # %if.then.7
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, combine_after_change_list
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_20
.LBB43_5:                               # %if.end.10
	callq	record_unwind_current_buffer
	movq	combine_after_change_buffer, %rdi
	callq	Fset_buffer
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	16(%rdi), %rdi
	subq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	combine_after_change_list, %rdi
	movq	%rdi, -64(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB43_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_19
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB43_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_18
.LBB43_9:                               # %if.end.20
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB43_11
# BB#10:                                # %if.then.28
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_18
.LBB43_11:                              # %if.end.29
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB43_13
# BB#12:                                # %if.then.40
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_18
.LBB43_13:                              # %if.end.41
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB43_15
# BB#14:                                # %if.then.47
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB43_15:                              # %if.end.48
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB43_17
# BB#16:                                # %if.then.51
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB43_17:                              # %if.end.52
                                        #   in Loop: Header=BB43_6 Depth=1
	jmp	.LBB43_18
.LBB43_18:                              # %for.inc
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB43_6
.LBB43_19:                              # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$Fcombine_after_change_execute_1, %rdi
	movq	%rax, combine_after_change_list
	movq	globals+304, %rsi
	callq	record_unwind_protect
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-56(%rbp), %rsi
	subq	-48(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	signal_after_change
	movl	$7, %edx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	update_compositions
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB43_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fcombine_after_change_execute, .Lfunc_end43-Fcombine_after_change_execute
	.cfi_endproc

	.align	16, 0x90
	.type	reset_var_on_error,@function
reset_var_on_error:                     # @reset_var_on_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	testb	$1, 8(%rdi)
	je	.LBB44_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB44_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	reset_var_on_error, .Lfunc_end44-reset_var_on_error
	.cfi_endproc

	.align	16, 0x90
	.type	Fcombine_after_change_execute_1,@function
Fcombine_after_change_execute_1:        # @Fcombine_after_change_execute_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, globals+304
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fcombine_after_change_execute_1, .Lfunc_end45-Fcombine_after_change_execute_1
	.cfi_endproc

	.globl	syms_of_insdel
	.align	16, 0x90
	.type	syms_of_insdel,@function
syms_of_insdel:                         # @syms_of_insdel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	movabsq	$combine_after_change_list, %rdi
	callq	staticpro
	movabsq	$combine_after_change_buffer, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, combine_after_change_list
	callq	builtin_lisp_symbol
	movq	%rax, combine_after_change_buffer
# BB#1:                                 # %do.body
	movabsq	$syms_of_insdel.o_fwd, %rdi
	movabsq	$.L.str.1, %rsi
	movabsq	$globals, %rax
	addq	$304, %rax              # imm = 0x130
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+304
# BB#3:                                 # %do.body.3
	movabsq	$syms_of_insdel.b_fwd, %rdi
	movabsq	$.L.str.2, %rsi
	movabsq	$globals, %rax
	addq	$3396, %rax             # imm = 0xD44
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.4
	movabsq	$Scombine_after_change_execute, %rdi
	movb	$0, globals+3396
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end46:
	.size	syms_of_insdel, .Lfunc_end46-syms_of_insdel
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Maximum buffer size exceeded"
	.size	.L.str, 29

	.type	combine_after_change_list,@object # @combine_after_change_list
	.local	combine_after_change_list
	.comm	combine_after_change_list,8,8
	.type	combine_after_change_buffer,@object # @combine_after_change_buffer
	.local	combine_after_change_buffer
	.comm	combine_after_change_buffer,8,8
	.type	syms_of_insdel.o_fwd,@object # @syms_of_insdel.o_fwd
	.local	syms_of_insdel.o_fwd
	.comm	syms_of_insdel.o_fwd,16,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"combine-after-change-calls"
	.size	.L.str.1, 27

	.type	syms_of_insdel.b_fwd,@object # @syms_of_insdel.b_fwd
	.local	syms_of_insdel.b_fwd
	.comm	syms_of_insdel.b_fwd,16,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"inhibit-modification-hooks"
	.size	.L.str.2, 27

	.type	Scombine_after_change_execute,@object # @Scombine_after_change_execute
	.data
	.align	8
Scombine_after_change_execute:
	.quad	167772160               # 0xa000000
	.quad	Fcombine_after_change_execute
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.size	Scombine_after_change_execute, 48

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"combine-after-change-execute"
	.size	.L.str.3, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
