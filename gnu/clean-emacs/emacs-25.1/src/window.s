	.text
	.file	"window.bc"
	.globl	window_outdated
	.align	16, 0x90
	.type	window_outdated,@function
window_outdated:                        # @window_outdated
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	XBUFFER
	movb	$1, %cl
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	720(%rdi), %rdi
	cmpq	48(%rdi), %rax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jl	.LBB0_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	72(%rcx), %rax
	setl	%dl
	movb	%dl, -17(%rbp)          # 1-byte Spill
.LBB0_2:                                # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	window_outdated, .Lfunc_end0-window_outdated
	.cfi_endproc

	.globl	decode_live_window
	.align	16, 0x90
	.type	decode_live_window,@function
decode_live_window:                     # @decode_live_window
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_5
.LBB1_3:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %cond.true
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB1_6:                                # %cond.end
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -8(%rbp)
.LBB1_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	decode_live_window, .Lfunc_end1-decode_live_window
	.cfi_endproc

	.globl	decode_any_window
	.align	16, 0x90
	.type	decode_any_window,@function
decode_any_window:                      # @decode_any_window
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_WINDOW
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	decode_any_window, .Lfunc_end2-decode_any_window
	.cfi_endproc

	.globl	wset_buffer
	.align	16, 0x90
	.type	wset_buffer,@function
wset_buffer:                            # @wset_buffer
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
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	adjust_window_count
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_2
.LBB3_1:                                # %if.then
	jmp	.LBB3_2
.LBB3_2:                                # %if.end
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-8(%rbp), %rdi
	callq	adjust_window_count
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wset_buffer, .Lfunc_end3-wset_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_window_count,@function
adjust_window_count:                    # @adjust_window_count
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_4
.LBB4_1:                                # %if.then
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_3:                                # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	796(%rcx), %eax
	movl	%eax, 796(%rcx)
	movq	-8(%rbp), %rcx
	movw	468(%rcx), %dx
	andw	$-8193, %dx             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%dx, 468(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 328(%rcx)
.LBB4_4:                                # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	adjust_window_count, .Lfunc_end4-adjust_window_count
	.cfi_endproc

	.globl	Fwindowp
	.align	16, 0x90
	.type	Fwindowp,@function
Fwindowp:                               # @Fwindowp
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB5_1
	jmp	.LBB5_2
.LBB5_1:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB5_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fwindowp, .Lfunc_end5-Fwindowp
	.cfi_endproc

	.globl	Fwindow_valid_p
	.align	16, 0x90
	.type	Fwindow_valid_p,@function
Fwindow_valid_p:                        # @Fwindow_valid_p
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
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_3
.LBB6_1:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_3
# BB#2:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB6_4
.LBB6_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_4:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fwindow_valid_p, .Lfunc_end6-Fwindow_valid_p
	.cfi_endproc

	.globl	Fwindow_live_p
	.align	16, 0x90
	.type	Fwindow_live_p,@function
Fwindow_live_p:                         # @Fwindow_live_p
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB7_1
	jmp	.LBB7_3
.LBB7_1:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB7_2
	jmp	.LBB7_3
.LBB7_2:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB7_4
.LBB7_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB7_4:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fwindow_live_p, .Lfunc_end7-Fwindow_live_p
	.cfi_endproc

	.globl	Fwindow_frame
	.align	16, 0x90
	.type	Fwindow_frame,@function
Fwindow_frame:                          # @Fwindow_frame
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
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	8(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fwindow_frame, .Lfunc_end8-Fwindow_frame
	.cfi_endproc

	.align	16, 0x90
	.type	decode_valid_window,@function
decode_valid_window:                    # @decode_valid_window
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -8(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB9_3
	jmp	.LBB9_5
.LBB9_3:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_5
# BB#4:                                 # %cond.true
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false
	movl	$1036, %edi             # imm = 0x40C
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB9_6:                                # %cond.end
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	decode_valid_window, .Lfunc_end9-decode_valid_window
	.cfi_endproc

	.globl	Fframe_root_window
	.align	16, 0x90
	.type	Fframe_root_window,@function
Fframe_root_window:                     # @Fframe_root_window
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_6
# BB#1:                                 # %if.then
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB10_2
	jmp	.LBB10_4
.LBB10_2:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_4
# BB#3:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	callq	emacs_abort
.LBB10_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB10_15
.LBB10_6:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB10_7
	jmp	.LBB10_9
.LBB10_7:                               # %land.lhs.true.5
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_9
# BB#8:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB10_14
.LBB10_9:                               # %if.else.13
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB10_10
	jmp	.LBB10_12
.LBB10_10:                              # %land.lhs.true.15
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_12
# BB#11:                                # %cond.true.19
	jmp	.LBB10_13
.LBB10_12:                              # %cond.false.20
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB10_13:                              # %cond.end.22
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB10_14:                              # %if.end
	jmp	.LBB10_15
.LBB10_15:                              # %if.end.25
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fframe_root_window, .Lfunc_end10-Fframe_root_window
	.cfi_endproc

	.globl	Fminibuffer_window
	.align	16, 0x90
	.type	Fminibuffer_window,@function
Fminibuffer_window:                     # @Fminibuffer_window
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
	callq	decode_live_frame
	movq	56(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fminibuffer_window, .Lfunc_end11-Fminibuffer_window
	.cfi_endproc

	.globl	Fwindow_minibuffer_p
	.align	16, 0x90
	.type	Fwindow_minibuffer_p,@function
Fwindow_minibuffer_p:                   # @Fwindow_minibuffer_p
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
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB12_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB12_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fwindow_minibuffer_p, .Lfunc_end12-Fwindow_minibuffer_p
	.cfi_endproc

	.globl	Fframe_first_window
	.align	16, 0x90
	.type	Fframe_first_window,@function
Fframe_first_window:                    # @Fframe_first_window
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_6
# BB#1:                                 # %if.then
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB13_2
	jmp	.LBB13_4
.LBB13_2:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB13_4
# BB#3:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
	callq	emacs_abort
.LBB13_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB13_15
.LBB13_6:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB13_7
	jmp	.LBB13_9
.LBB13_7:                               # %land.lhs.true.5
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_9
# BB#8:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_14
.LBB13_9:                               # %if.else.13
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB13_10
	jmp	.LBB13_12
.LBB13_10:                              # %land.lhs.true.15
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB13_12
# BB#11:                                # %cond.true.19
	jmp	.LBB13_13
.LBB13_12:                              # %cond.false.20
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB13_13:                              # %cond.end.22
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB13_14:                              # %if.end
	jmp	.LBB13_15
.LBB13_15:                              # %if.end.25
	jmp	.LBB13_16
.LBB13_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB13_17
	jmp	.LBB13_18
.LBB13_17:                              # %while.body
                                        #   in Loop: Header=BB13_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_16
.LBB13_18:                              # %while.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fframe_first_window, .Lfunc_end13-Fframe_first_window
	.cfi_endproc

	.globl	Fframe_selected_window
	.align	16, 0x90
	.type	Fframe_selected_window,@function
Fframe_selected_window:                 # @Fframe_selected_window
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_6
# BB#1:                                 # %if.then
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB14_2
	jmp	.LBB14_4
.LBB14_2:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB14_4
# BB#3:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	callq	emacs_abort
.LBB14_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	48(%rax), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB14_15
.LBB14_6:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB14_7
	jmp	.LBB14_9
.LBB14_7:                               # %land.lhs.true.5
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_9
# BB#8:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB14_14
.LBB14_9:                               # %if.else.13
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB14_10
	jmp	.LBB14_12
.LBB14_10:                              # %land.lhs.true.15
	movq	-8(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB14_12
# BB#11:                                # %cond.true.19
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.20
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB14_13:                              # %cond.end.22
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB14_14:                              # %if.end
	jmp	.LBB14_15
.LBB14_15:                              # %if.end.25
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fframe_selected_window, .Lfunc_end14-Fframe_selected_window
	.cfi_endproc

	.globl	Fset_frame_selected_window
	.align	16, 0x90
	.type	Fset_frame_selected_window,@function
Fset_frame_selected_window:             # @Fset_frame_selected_window
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -16(%rbp)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB15_3
	jmp	.LBB15_5
.LBB15_3:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB15_5
# BB#4:                                 # %cond.true
	jmp	.LBB15_6
.LBB15_5:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB15_6:                               # %cond.end
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB15_7
	jmp	.LBB15_9
.LBB15_7:                               # %land.lhs.true.5
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB15_8
	jmp	.LBB15_9
.LBB15_8:                               # %cond.true.8
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false.9
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB15_10:                              # %cond.end.11
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	8(%rax), %rdi
	je	.LBB15_12
# BB#11:                                # %if.then.15
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB15_12:                              # %if.end.16
	movq	-16(%rbp), %rax
	cmpq	selected_frame, %rax
	jne	.LBB15_14
# BB#13:                                # %if.then.18
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fselect_window
	movq	%rax, -8(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %if.else
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	fset_selected_window
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fset_frame_selected_window, .Lfunc_end15-Fset_frame_selected_window
	.cfi_endproc

	.globl	Fselect_window
	.align	16, 0x90
	.type	Fselect_window,@function
Fselect_window:                         # @Fselect_window
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
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	select_window
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fselect_window, .Lfunc_end16-Fselect_window
	.cfi_endproc

	.globl	Fselected_window
	.align	16, 0x90
	.type	Fselected_window,@function
Fselected_window:                       # @Fselected_window
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
	movq	selected_window, %rax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fselected_window, .Lfunc_end17-Fselected_window
	.cfi_endproc

	.align	16, 0x90
	.type	select_window,@function
select_window:                          # @select_window
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
	subq	$96, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB18_1
	jmp	.LBB18_3
.LBB18_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB18_2
	jmp	.LBB18_3
.LBB18_2:                               # %cond.true
	jmp	.LBB18_4
.LBB18_3:                               # %cond.false
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB18_4:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	-16(%rbp), %rdi
	cmpq	selected_window, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB18_7
# BB#5:                                 # %land.lhs.true.7
	testb	$1, -25(%rbp)
	jne	.LBB18_7
# BB#6:                                 # %if.then
	jmp	.LBB18_18
.LBB18_7:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_9
# BB#8:                                 # %if.then.10
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	wset_redisplay
	movq	-40(%rbp), %rdi
	callq	wset_redisplay
	jmp	.LBB18_10
.LBB18_9:                               # %if.else
	callq	redisplay_other_windows
.LBB18_10:                              # %if.end.12
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB18_11
	jmp	.LBB18_13
.LBB18_11:                              # %land.lhs.true.14
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB18_13
# BB#12:                                # %cond.true.16
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB18_14
.LBB18_13:                              # %cond.false.18
	callq	emacs_abort
.LBB18_14:                              # %cond.end.19
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	-48(%rbp), %rcx
	je	.LBB18_16
# BB#15:                                # %if.then.22
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fset_selected_window
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fselect_frame
	movq	-16(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_21
.LBB18_16:                              # %if.else.27
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_selected_window
# BB#17:                                # %if.end.28
	movq	-16(%rbp), %rdi
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	select_window_1
	movq	-40(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	XBUFFER
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	bset_last_selected_window
.LBB18_18:                              # %record_and_return
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_20
# BB#19:                                # %if.then.34
	movq	window_select_count, %rax
	addq	$1, %rax
	movq	%rax, window_select_count
	movq	-40(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	record_buffer
.LBB18_20:                              # %if.end.36
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	select_window, .Lfunc_end18-select_window
	.cfi_endproc

	.globl	Fwindow_buffer
	.align	16, 0x90
	.type	Fwindow_buffer,@function
Fwindow_buffer:                         # @Fwindow_buffer
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
	movq	-8(%rbp), %rdi
	callq	decode_any_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB19_1
	jmp	.LBB19_2
.LBB19_1:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB19_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fwindow_buffer, .Lfunc_end19-Fwindow_buffer
	.cfi_endproc

	.globl	Fwindow_parent
	.align	16, 0x90
	.type	Fwindow_parent,@function
Fwindow_parent:                         # @Fwindow_parent
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
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	32(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fwindow_parent, .Lfunc_end20-Fwindow_parent
	.cfi_endproc

	.globl	Fwindow_top_child
	.align	16, 0x90
	.type	Fwindow_top_child,@function
Fwindow_top_child:                      # @Fwindow_top_child
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB21_1
	jmp	.LBB21_3
.LBB21_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB21_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB21_4
.LBB21_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB21_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fwindow_top_child, .Lfunc_end21-Fwindow_top_child
	.cfi_endproc

	.globl	Fwindow_left_child
	.align	16, 0x90
	.type	Fwindow_left_child,@function
Fwindow_left_child:                     # @Fwindow_left_child
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB22_1
	jmp	.LBB22_3
.LBB22_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB22_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB22_4
.LBB22_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB22_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fwindow_left_child, .Lfunc_end22-Fwindow_left_child
	.cfi_endproc

	.globl	Fwindow_next_sibling
	.align	16, 0x90
	.type	Fwindow_next_sibling,@function
Fwindow_next_sibling:                   # @Fwindow_next_sibling
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
	callq	decode_valid_window
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fwindow_next_sibling, .Lfunc_end23-Fwindow_next_sibling
	.cfi_endproc

	.globl	Fwindow_prev_sibling
	.align	16, 0x90
	.type	Fwindow_prev_sibling,@function
Fwindow_prev_sibling:                   # @Fwindow_prev_sibling
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
	callq	decode_valid_window
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fwindow_prev_sibling, .Lfunc_end24-Fwindow_prev_sibling
	.cfi_endproc

	.globl	Fwindow_combination_limit
	.align	16, 0x90
	.type	Fwindow_combination_limit,@function
Fwindow_combination_limit:              # @Fwindow_combination_limit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_3
.LBB25_1:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_3
# BB#2:                                 # %cond.true
	jmp	.LBB25_4
.LBB25_3:                               # %cond.false
	movl	$1036, %edi             # imm = 0x40C
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB25_4:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB25_5
	jmp	.LBB25_6
.LBB25_5:                               # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB25_6:                               # %if.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fwindow_combination_limit, .Lfunc_end25-Fwindow_combination_limit
	.cfi_endproc

	.globl	Fset_window_combination_limit
	.align	16, 0x90
	.type	Fset_window_combination_limit,@function
Fset_window_combination_limit:          # @Fset_window_combination_limit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB26_1
	jmp	.LBB26_3
.LBB26_1:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_3
# BB#2:                                 # %cond.true
	jmp	.LBB26_4
.LBB26_3:                               # %cond.false
	movl	$1036, %edi             # imm = 0x40C
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB26_4:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB26_5
	jmp	.LBB26_6
.LBB26_5:                               # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB26_6:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_combination_limit
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fset_window_combination_limit, .Lfunc_end26-Fset_window_combination_limit
	.cfi_endproc

	.align	16, 0x90
	.type	wset_combination_limit,@function
wset_combination_limit:                 # @wset_combination_limit
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	wset_combination_limit, .Lfunc_end27-wset_combination_limit
	.cfi_endproc

	.globl	Fwindow_use_time
	.align	16, 0x90
	.type	Fwindow_use_time,@function
Fwindow_use_time:                       # @Fwindow_use_time
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	224(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fwindow_use_time, .Lfunc_end28-Fwindow_use_time
	.cfi_endproc

	.globl	Fwindow_pixel_width
	.align	16, 0x90
	.type	Fwindow_pixel_width,@function
Fwindow_pixel_width:                    # @Fwindow_pixel_width
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movslq	256(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fwindow_pixel_width, .Lfunc_end29-Fwindow_pixel_width
	.cfi_endproc

	.globl	Fwindow_pixel_height
	.align	16, 0x90
	.type	Fwindow_pixel_height,@function
Fwindow_pixel_height:                   # @Fwindow_pixel_height
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movslq	260(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fwindow_pixel_height, .Lfunc_end30-Fwindow_pixel_height
	.cfi_endproc

	.globl	Fwindow_total_height
	.align	16, 0x90
	.type	Fwindow_total_height,@function
Fwindow_total_height:                   # @Fwindow_total_height
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_valid_window
	movl	$436, %edi              # imm = 0x1B4
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB31_3
# BB#1:                                 # %land.lhs.true
	movl	$250, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movslq	268(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_7
.LBB31_3:                               # %if.else
	movl	$250, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB31_5
# BB#4:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB31_6
.LBB31_5:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	260(%rax), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB31_6:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB31_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fwindow_total_height, .Lfunc_end31-Fwindow_total_height
	.cfi_endproc

	.globl	Fwindow_total_width
	.align	16, 0x90
	.type	Fwindow_total_width,@function
Fwindow_total_width:                    # @Fwindow_total_width
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_valid_window
	movl	$436, %edi              # imm = 0x1B4
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB32_3
# BB#1:                                 # %land.lhs.true
	movl	$250, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movslq	264(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB32_7
.LBB32_3:                               # %if.else
	movl	$250, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	364(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB32_5
# BB#4:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	256(%rax), %ecx
	addl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB32_6
.LBB32_5:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	256(%rax), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB32_6:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB32_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fwindow_total_width, .Lfunc_end32-Fwindow_total_width
	.cfi_endproc

	.globl	Fwindow_new_total
	.align	16, 0x90
	.type	Fwindow_new_total,@function
Fwindow_new_total:                      # @Fwindow_new_total
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
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	56(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fwindow_new_total, .Lfunc_end33-Fwindow_new_total
	.cfi_endproc

	.globl	Fwindow_normal_size
	.align	16, 0x90
	.type	Fwindow_normal_size,@function
Fwindow_normal_size:                    # @Fwindow_normal_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB34_3
.LBB34_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB34_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fwindow_normal_size, .Lfunc_end34-Fwindow_normal_size
	.cfi_endproc

	.globl	Fwindow_new_normal
	.align	16, 0x90
	.type	Fwindow_new_normal,@function
Fwindow_new_normal:                     # @Fwindow_new_normal
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	64(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fwindow_new_normal, .Lfunc_end35-Fwindow_new_normal
	.cfi_endproc

	.globl	Fwindow_new_pixel
	.align	16, 0x90
	.type	Fwindow_new_pixel,@function
Fwindow_new_pixel:                      # @Fwindow_new_pixel
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	72(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fwindow_new_pixel, .Lfunc_end36-Fwindow_new_pixel
	.cfi_endproc

	.globl	Fwindow_pixel_left
	.align	16, 0x90
	.type	Fwindow_pixel_left,@function
Fwindow_pixel_left:                     # @Fwindow_pixel_left
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
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movslq	240(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fwindow_pixel_left, .Lfunc_end37-Fwindow_pixel_left
	.cfi_endproc

	.globl	Fwindow_pixel_top
	.align	16, 0x90
	.type	Fwindow_pixel_top,@function
Fwindow_pixel_top:                      # @Fwindow_pixel_top
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
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movslq	244(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fwindow_pixel_top, .Lfunc_end38-Fwindow_pixel_top
	.cfi_endproc

	.globl	Fwindow_left_column
	.align	16, 0x90
	.type	Fwindow_left_column,@function
Fwindow_left_column:                    # @Fwindow_left_column
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
	callq	decode_valid_window
	movslq	248(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fwindow_left_column, .Lfunc_end39-Fwindow_left_column
	.cfi_endproc

	.globl	Fwindow_top_line
	.align	16, 0x90
	.type	Fwindow_top_line,@function
Fwindow_top_line:                       # @Fwindow_top_line
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movslq	252(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fwindow_top_line, .Lfunc_end40-Fwindow_top_line
	.cfi_endproc

	.globl	window_body_width
	.align	16, 0x90
	.type	window_body_width,@function
window_body_width:                      # @window_body_width
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
	subq	$320, %rsp              # imm = 0x140
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	256(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	240(%rdi), %ecx
	movq	-8(%rbp), %rdi
	addl	256(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	40(%rdi), %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	-40(%rbp), %ecx         # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-36(%rbp), %esi         # 4-byte Reload
	cmpl	%ecx, %esi
	je	.LBB41_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB41_3
.LBB41_2:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB41_4
.LBB41_3:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB41_4:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	-32(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB41_6
# BB#5:                                 # %cond.true.17
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB41_13
.LBB41_6:                               # %cond.false.18
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_8
# BB#7:                                 # %cond.true.21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB41_12
.LBB41_8:                               # %cond.false.29
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_10
# BB#9:                                 # %cond.true.33
	movl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB41_11
.LBB41_10:                              # %cond.false.34
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
.LBB41_11:                              # %cond.end.39
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB41_12:                              # %cond.end.41
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB41_13:                              # %cond.end.43
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB41_24
# BB#14:                                # %lor.lhs.false.46
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB41_16
# BB#15:                                # %cond.true.52
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB41_23
.LBB41_16:                              # %cond.false.53
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_18
# BB#17:                                # %cond.true.57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB41_22
.LBB41_18:                              # %cond.false.65
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_20
# BB#19:                                # %cond.true.69
	movl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB41_21
.LBB41_20:                              # %cond.false.70
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-144(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -132(%rbp)        # 4-byte Spill
.LBB41_21:                              # %cond.end.75
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB41_22:                              # %cond.end.77
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB41_23:                              # %cond.end.79
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB41_50
.LBB41_24:                              # %cond.true.82
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB41_26
# BB#25:                                # %cond.true.88
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB41_33
.LBB41_26:                              # %cond.false.89
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_28
# BB#27:                                # %cond.true.93
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB41_32
.LBB41_28:                              # %cond.false.101
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_30
# BB#29:                                # %cond.true.105
	movl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB41_31
.LBB41_30:                              # %cond.false.106
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -180(%rbp)        # 4-byte Spill
.LBB41_31:                              # %cond.end.111
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB41_32:                              # %cond.end.113
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB41_33:                              # %cond.end.115
	movl	-148(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB41_44
# BB#34:                                # %lor.lhs.false.118
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB41_36
# BB#35:                                # %cond.true.124
	xorl	%eax, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB41_43
.LBB41_36:                              # %cond.false.125
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_38
# BB#37:                                # %cond.true.129
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB41_42
.LBB41_38:                              # %cond.false.137
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_40
# BB#39:                                # %cond.true.141
	movl	$1, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB41_41
.LBB41_40:                              # %cond.false.142
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -228(%rbp)        # 4-byte Spill
.LBB41_41:                              # %cond.end.147
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB41_42:                              # %cond.end.149
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB41_43:                              # %cond.end.151
	movl	-196(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB41_48
.LBB41_44:                              # %cond.true.154
	movq	-8(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB41_46
# BB#45:                                # %cond.true.156
	movq	-8(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB41_47
.LBB41_46:                              # %cond.false.158
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB41_47:                              # %cond.end.161
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB41_49
.LBB41_48:                              # %cond.false.163
	xorl	%eax, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB41_49
.LBB41_49:                              # %cond.end.164
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB41_58
.LBB41_50:                              # %cond.false.166
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$23, %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$2, %eax
	movb	%cl, -253(%rbp)         # 1-byte Spill
	je	.LBB41_57
# BB#51:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	-264(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-260(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	movb	%dl, -253(%rbp)         # 1-byte Spill
	je	.LBB41_57
# BB#52:                                # %land.rhs
	movq	-8(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-272(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-268(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB41_54
# BB#53:                                # %lor.lhs.false.202
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB41_55
.LBB41_54:                              # %cond.true.207
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB41_56
.LBB41_55:                              # %cond.false.208
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB41_56:                              # %cond.end.212
	movl	-276(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -253(%rbp)         # 1-byte Spill
.LBB41_57:                              # %land.end
	movb	-253(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB41_58:                              # %cond.end.214
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	428(%rdx), %eax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	imull	364(%rdx), %eax
	movq	-8(%rbp), %rdx
	movl	432(%rdx), %esi
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	imull	364(%rdx), %esi
	addl	%esi, %eax
	subl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$23, %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$2, %eax
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jne	.LBB41_66
# BB#59:                                # %cond.true.231
	movq	-8(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB41_61
# BB#60:                                # %cond.true.233
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB41_62
.LBB41_61:                              # %cond.false.235
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
.LBB41_62:                              # %cond.end.239
	movl	-284(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	cmpl	$0, 424(%rcx)
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jl	.LBB41_64
# BB#63:                                # %cond.true.242
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB41_65
.LBB41_64:                              # %cond.false.244
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
.LBB41_65:                              # %cond.end.248
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	-288(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	jmp	.LBB41_67
.LBB41_66:                              # %cond.false.251
	xorl	%eax, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB41_67
.LBB41_67:                              # %cond.end.252
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	-280(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB41_69
# BB#68:                                # %cond.true.256
	movl	-28(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB41_70
.LBB41_69:                              # %cond.false.257
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	364(%rcx)
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB41_70:                              # %cond.end.261
	movl	-300(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB41_75
# BB#71:                                # %cond.true.264
	testb	$1, -9(%rbp)
	je	.LBB41_73
# BB#72:                                # %cond.true.266
	movl	-28(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB41_74
.LBB41_73:                              # %cond.false.267
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	364(%rcx)
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB41_74:                              # %cond.end.272
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB41_76
.LBB41_75:                              # %cond.false.274
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB41_76
.LBB41_76:                              # %cond.end.275
	movl	-308(%rbp), %eax        # 4-byte Reload
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end41:
	.size	window_body_width, .Lfunc_end41-window_body_width
	.cfi_endproc

	.globl	Fwindow_body_height
	.align	16, 0x90
	.type	Fwindow_body_height,@function
Fwindow_body_height:                    # @Fwindow_body_height
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movzbl	%cl, %edi
	andl	$1, %edi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-36(%rbp), %esi         # 4-byte Reload
	callq	window_body_height
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Fwindow_body_height, .Lfunc_end42-Fwindow_body_height
	.cfi_endproc

	.align	16, 0x90
	.type	window_body_height,@function
window_body_height:                     # @window_body_height
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
	subq	$240, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movl	260(%rdi), %esi
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB43_1
	jmp	.LBB43_15
.LBB43_1:                               # %cond.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_30
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_30
# BB#3:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB43_30
# BB#4:                                 # %land.lhs.true.9
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_30
# BB#5:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB43_6
	jmp	.LBB43_11
.LBB43_6:                               # %cond.true.17
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_13
# BB#7:                                 # %land.lhs.true.22
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_13
# BB#8:                                 # %land.lhs.true.28
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB43_13
# BB#9:                                 # %land.lhs.true.36
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_13
# BB#10:                                # %land.lhs.true.41
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB43_12
	jmp	.LBB43_13
.LBB43_11:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_12
	jmp	.LBB43_13
.LBB43_12:                              # %cond.true.46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB43_14
.LBB43_13:                              # %cond.false.50
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB43_14:                              # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB43_16
	jmp	.LBB43_30
.LBB43_15:                              # %cond.false.55
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_16
	jmp	.LBB43_30
.LBB43_16:                              # %cond.true.56
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB43_18
# BB#17:                                # %cond.true.58
	movq	-8(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB43_29
.LBB43_18:                              # %cond.false.60
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB43_21
# BB#19:                                # %land.lhs.true.61
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_21
# BB#20:                                # %cond.true.64
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB43_22
	jmp	.LBB43_27
.LBB43_21:                              # %cond.false.69
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_22
	jmp	.LBB43_27
.LBB43_22:                              # %cond.true.70
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB43_25
# BB#23:                                # %land.lhs.true.73
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_25
# BB#24:                                # %cond.true.77
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB43_26
.LBB43_25:                              # %cond.false.81
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB43_26
.LBB43_26:                              # %cond.end.82
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB43_28
.LBB43_27:                              # %cond.false.84
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB43_28:                              # %cond.end.88
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB43_29:                              # %cond.end.91
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB43_31
.LBB43_30:                              # %cond.false.93
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB43_31
.LBB43_31:                              # %cond.end.94
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jne	.LBB43_34
# BB#32:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB43_35
# BB#33:                                # %land.lhs.true.106
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB43_35
.LBB43_34:                              # %cond.true.110
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_40
	jmp	.LBB43_55
.LBB43_35:                              # %cond.false.111
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_37
# BB#36:                                # %cond.true.114
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB43_40
	jmp	.LBB43_55
.LBB43_37:                              # %cond.false.121
	movl	$213, %edi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_39
# BB#38:                                # %cond.true.125
	movb	$1, %al
	testb	$1, %al
	jne	.LBB43_40
	jmp	.LBB43_55
.LBB43_39:                              # %cond.false.126
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_40
	jmp	.LBB43_55
.LBB43_40:                              # %cond.true.127
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_43
# BB#41:                                # %lor.lhs.false.133
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB43_44
# BB#42:                                # %land.lhs.true.138
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB43_44
.LBB43_43:                              # %cond.true.144
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_49
	jmp	.LBB43_53
.LBB43_44:                              # %cond.false.145
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_46
# BB#45:                                # %cond.true.149
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB43_49
	jmp	.LBB43_53
.LBB43_46:                              # %cond.false.157
	movl	$213, %edi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_48
# BB#47:                                # %cond.true.161
	movb	$1, %al
	testb	$1, %al
	jne	.LBB43_49
	jmp	.LBB43_53
.LBB43_48:                              # %cond.false.162
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_49
	jmp	.LBB43_53
.LBB43_49:                              # %cond.true.163
	movq	-8(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB43_51
# BB#50:                                # %cond.true.165
	movq	-8(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB43_52
.LBB43_51:                              # %cond.false.167
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB43_52:                              # %cond.end.170
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB43_54
.LBB43_53:                              # %cond.false.172
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB43_54
.LBB43_54:                              # %cond.end.173
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB43_56
.LBB43_55:                              # %cond.false.175
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB43_56
.LBB43_56:                              # %cond.end.176
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB43_57
	jmp	.LBB43_62
.LBB43_57:                              # %cond.true.181
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_84
# BB#58:                                # %land.lhs.true.186
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB43_84
# BB#59:                                # %land.lhs.true.192
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB43_84
# BB#60:                                # %land.lhs.true.200
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_84
# BB#61:                                # %land.lhs.true.206
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB43_63
	jmp	.LBB43_84
.LBB43_62:                              # %cond.false.212
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_63
	jmp	.LBB43_84
.LBB43_63:                              # %cond.true.213
	movq	-8(%rbp), %rax
	cmpl	$0, 444(%rax)
	jl	.LBB43_65
# BB#64:                                # %cond.true.215
	movq	-8(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB43_83
.LBB43_65:                              # %cond.false.217
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB43_68
# BB#66:                                # %land.lhs.true.220
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_68
# BB#67:                                # %cond.true.224
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB43_69
	jmp	.LBB43_74
.LBB43_68:                              # %cond.false.231
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB43_69
	jmp	.LBB43_74
.LBB43_69:                              # %cond.true.232
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB43_72
# BB#70:                                # %land.lhs.true.235
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_72
# BB#71:                                # %cond.true.239
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB43_73
.LBB43_72:                              # %cond.false.248
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB43_73
.LBB43_73:                              # %cond.end.249
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB43_82
.LBB43_74:                              # %cond.false.251
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movb	%al, -153(%rbp)         # 1-byte Spill
	je	.LBB43_81
# BB#75:                                # %lor.lhs.false.255
	movq	-8(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB43_81
# BB#76:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jle	.LBB43_80
# BB#77:                                # %land.lhs.true.259
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-184(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -169(%rbp)         # 1-byte Spill
	je	.LBB43_80
# BB#78:                                # %land.lhs.true.262
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-192(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -169(%rbp)         # 1-byte Spill
	jne	.LBB43_80
# BB#79:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -169(%rbp)         # 1-byte Spill
.LBB43_80:                              # %land.end
	movb	-169(%rbp), %al         # 1-byte Reload
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB43_81:                              # %lor.end
	movb	-153(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB43_82:                              # %cond.end.270
	movl	-140(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB43_83:                              # %cond.end.273
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB43_85
.LBB43_84:                              # %cond.false.275
	xorl	%eax, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB43_85
.LBB43_85:                              # %cond.end.276
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	-120(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	244(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	260(%rdx), %eax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-216(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-212(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB43_87
# BB#86:                                # %land.lhs.true.292
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_89
.LBB43_87:                              # %lor.lhs.false.299
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB43_89
# BB#88:                                # %lor.lhs.false.305
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB43_90
.LBB43_89:                              # %cond.true.311
	xorl	%eax, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB43_91
.LBB43_90:                              # %cond.false.312
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB43_91:                              # %cond.end.315
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB43_93
# BB#92:                                # %cond.true.319
	movl	-16(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB43_94
.LBB43_93:                              # %cond.false.320
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	368(%rcx)
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB43_94:                              # %cond.end.324
	movl	-232(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB43_99
# BB#95:                                # %cond.true.327
	testb	$1, -9(%rbp)
	je	.LBB43_97
# BB#96:                                # %cond.true.329
	movl	-16(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB43_98
.LBB43_97:                              # %cond.false.330
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cltd
	idivl	368(%rcx)
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB43_98:                              # %cond.end.335
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB43_100
.LBB43_99:                              # %cond.false.337
	xorl	%eax, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB43_100
.LBB43_100:                             # %cond.end.338
	movl	-240(%rbp), %eax        # 4-byte Reload
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	window_body_height, .Lfunc_end43-window_body_height
	.cfi_endproc

	.globl	Fwindow_body_width
	.align	16, 0x90
	.type	Fwindow_body_width,@function
Fwindow_body_width:                     # @Fwindow_body_width
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movzbl	%cl, %edi
	andl	$1, %edi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-36(%rbp), %esi         # 4-byte Reload
	callq	window_body_width
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fwindow_body_width, .Lfunc_end44-Fwindow_body_width
	.cfi_endproc

	.globl	Fwindow_mode_line_height
	.align	16, 0x90
	.type	Fwindow_mode_line_height,@function
Fwindow_mode_line_height:               # @Fwindow_mode_line_height
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB45_1
	jmp	.LBB45_6
.LBB45_1:                               # %cond.true
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB45_28
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB45_28
# BB#3:                                 # %land.lhs.true.7
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB45_28
# BB#4:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_28
# BB#5:                                 # %land.lhs.true.18
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	-20(%rbp), %ecx         # 4-byte Reload
	cmpl	368(%rax), %ecx
	jg	.LBB45_7
	jmp	.LBB45_28
.LBB45_6:                               # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_7
	jmp	.LBB45_28
.LBB45_7:                               # %cond.true.24
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpl	$0, 444(%rax)
	jl	.LBB45_9
# BB#8:                                 # %cond.true.27
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	444(%rax), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB45_27
.LBB45_9:                               # %cond.false.30
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpq	$0, 192(%rax)
	je	.LBB45_12
# BB#10:                                # %land.lhs.true.32
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB45_12
# BB#11:                                # %cond.true.36
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	decode_live_window
	movq	192(%rax), %rax
	movslq	24(%rax), %rax
	shlq	$8, %rax
	movq	-32(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	cmpl	$0, -196(%rdi)
	jne	.LBB45_13
	jmp	.LBB45_18
.LBB45_12:                              # %cond.false.44
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_13
	jmp	.LBB45_18
.LBB45_13:                              # %cond.true.45
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpq	$0, 192(%rax)
	je	.LBB45_16
# BB#14:                                # %land.lhs.true.49
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB45_16
# BB#15:                                # %cond.true.54
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	decode_live_window
	movq	192(%rax), %rax
	movslq	24(%rax), %rax
	shlq	$8, %rax
	movq	-40(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movl	-196(%rdi), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB45_17
.LBB45_16:                              # %cond.false.65
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB45_17
.LBB45_17:                              # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB45_26
.LBB45_18:                              # %cond.false.66
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movb	$1, %cl
	movq	8(%rax), %rax
	subq	$5, %rax
	testb	$1, globals+3413
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB45_25
# BB#19:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	selected_window, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB45_25
# BB#20:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jle	.LBB45_24
# BB#21:                                # %land.lhs.true.75
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB45_24
# BB#22:                                # %land.lhs.true.78
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -73(%rbp)          # 1-byte Spill
	jne	.LBB45_24
# BB#23:                                # %land.rhs
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	minibuf_selected_window, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB45_24:                              # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB45_25:                              # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB45_26:                              # %cond.end.87
	movl	-48(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	decode_live_window
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 444(%rax)
	movl	%ecx, -24(%rbp)         # 4-byte Spill
.LBB45_27:                              # %cond.end.91
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB45_29
.LBB45_28:                              # %cond.false.93
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB45_29
.LBB45_29:                              # %cond.end.94
	movl	-112(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fwindow_mode_line_height, .Lfunc_end45-Fwindow_mode_line_height
	.cfi_endproc

	.globl	Fwindow_header_line_height
	.align	16, 0x90
	.type	Fwindow_header_line_height,@function
Fwindow_header_line_height:             # @Fwindow_header_line_height
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB46_1
	jmp	.LBB46_15
.LBB46_1:                               # %cond.true
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB46_30
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB46_30
# BB#3:                                 # %land.lhs.true.7
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB46_30
# BB#4:                                 # %land.lhs.true.13
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_30
# BB#5:                                 # %land.lhs.true.18
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB46_6
	jmp	.LBB46_11
.LBB46_6:                               # %cond.true.23
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB46_13
# BB#7:                                 # %land.lhs.true.29
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB46_13
# BB#8:                                 # %land.lhs.true.36
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB46_13
# BB#9:                                 # %land.lhs.true.45
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_13
# BB#10:                                # %land.lhs.true.51
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	-36(%rbp), %ecx         # 4-byte Reload
	cmpl	368(%rax), %ecx
	jg	.LBB46_12
	jmp	.LBB46_13
.LBB46_11:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB46_12
	jmp	.LBB46_13
.LBB46_12:                              # %cond.true.58
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB46_14
.LBB46_13:                              # %cond.false.63
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB46_14:                              # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB46_16
	jmp	.LBB46_30
.LBB46_15:                              # %cond.false.69
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB46_16
	jmp	.LBB46_30
.LBB46_16:                              # %cond.true.70
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpl	$0, 448(%rax)
	jl	.LBB46_18
# BB#17:                                # %cond.true.73
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	448(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB46_29
.LBB46_18:                              # %cond.false.76
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpq	$0, 192(%rax)
	je	.LBB46_21
# BB#19:                                # %land.lhs.true.78
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB46_21
# BB#20:                                # %cond.true.82
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB46_22
	jmp	.LBB46_27
.LBB46_21:                              # %cond.false.87
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB46_22
	jmp	.LBB46_27
.LBB46_22:                              # %cond.true.88
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpq	$0, 192(%rax)
	je	.LBB46_25
# BB#23:                                # %land.lhs.true.92
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB46_25
# BB#24:                                # %cond.true.97
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB46_26
.LBB46_25:                              # %cond.false.102
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB46_26
.LBB46_26:                              # %cond.end.103
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB46_28
.LBB46_27:                              # %cond.false.105
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$5, %esi
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB46_28:                              # %cond.end.110
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 448(%rax)
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB46_29:                              # %cond.end.114
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB46_31
.LBB46_30:                              # %cond.false.116
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB46_31
.LBB46_31:                              # %cond.end.117
	movl	-60(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fwindow_header_line_height, .Lfunc_end46-Fwindow_header_line_height
	.cfi_endproc

	.globl	Fwindow_right_divider_width
	.align	16, 0x90
	.type	Fwindow_right_divider_width,@function
Fwindow_right_divider_width:            # @Fwindow_right_divider_width
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movl	-12(%rbp), %ecx         # 4-byte Reload
	addl	256(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	-20(%rbp), %ecx         # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-16(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB47_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB47_3
.LBB47_2:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB47_4
.LBB47_3:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
.LBB47_4:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fwindow_right_divider_width, .Lfunc_end47-Fwindow_right_divider_width
	.cfi_endproc

	.globl	Fwindow_bottom_divider_width
	.align	16, 0x90
	.type	Fwindow_bottom_divider_width,@function
Fwindow_bottom_divider_width:           # @Fwindow_bottom_divider_width
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	244(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movl	-12(%rbp), %ecx         # 4-byte Reload
	addl	260(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movl	-20(%rbp), %ecx         # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-16(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB48_2
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_4
.LBB48_2:                               # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	40(%rax), %rdi
	je	.LBB48_4
# BB#3:                                 # %lor.lhs.false.25
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB48_5
.LBB48_4:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB48_6
.LBB48_5:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB48_6:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fwindow_bottom_divider_width, .Lfunc_end48-Fwindow_bottom_divider_width
	.cfi_endproc

	.globl	Fwindow_scroll_bar_width
	.align	16, 0x90
	.type	Fwindow_scroll_bar_width,@function
Fwindow_scroll_bar_width:               # @Fwindow_scroll_bar_width
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB49_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB49_9
.LBB49_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$901, %edi              # imm = 0x385
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_4
# BB#3:                                 # %cond.true.3
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB49_8
.LBB49_4:                               # %cond.false.10
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$607, %edi              # imm = 0x25F
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_6
# BB#5:                                 # %cond.true.15
	movl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB49_7
.LBB49_6:                               # %cond.false.16
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$811, %edi              # imm = 0x32B
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
.LBB49_7:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB49_8:                               # %cond.end.22
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB49_9:                               # %cond.end.24
	movl	-12(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB49_20
# BB#10:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB49_12
# BB#11:                                # %cond.true.33
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB49_19
.LBB49_12:                              # %cond.false.34
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$901, %edi              # imm = 0x385
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_14
# BB#13:                                # %cond.true.39
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB49_18
.LBB49_14:                              # %cond.false.48
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$607, %edi              # imm = 0x25F
	movq	128(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_16
# BB#15:                                # %cond.true.53
	movl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB49_17
.LBB49_16:                              # %cond.false.54
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$811, %edi              # imm = 0x32B
	movq	128(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
.LBB49_17:                              # %cond.end.60
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB49_18:                              # %cond.end.62
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB49_19:                              # %cond.end.64
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB49_24
.LBB49_20:                              # %cond.true.67
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpl	$0, 436(%rax)
	jl	.LBB49_22
# BB#21:                                # %cond.true.70
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	436(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB49_23
.LBB49_22:                              # %cond.false.73
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB49_23:                              # %cond.end.77
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB49_25
.LBB49_24:                              # %cond.false.79
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB49_25
.LBB49_25:                              # %cond.end.80
	movl	-112(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fwindow_scroll_bar_width, .Lfunc_end49-Fwindow_scroll_bar_width
	.cfi_endproc

	.globl	Fwindow_scroll_bar_height
	.align	16, 0x90
	.type	Fwindow_scroll_bar_height,@function
Fwindow_scroll_bar_height:              # @Fwindow_scroll_bar_height
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB50_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB50_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	-16(%rbp), %rdi         # 8-byte Reload
	cmpq	40(%rax), %rdi
	jne	.LBB50_4
.LBB50_3:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB50_9
	jmp	.LBB50_13
.LBB50_4:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$901, %edi              # imm = 0x385
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_6
# BB#5:                                 # %cond.true.10
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB50_9
	jmp	.LBB50_13
.LBB50_6:                               # %cond.false.18
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$213, %edi
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_8
# BB#7:                                 # %cond.true.23
	movb	$1, %al
	testb	$1, %al
	jne	.LBB50_9
	jmp	.LBB50_13
.LBB50_8:                               # %cond.false.24
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB50_9
	jmp	.LBB50_13
.LBB50_9:                               # %cond.true.25
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	cmpl	$0, 440(%rax)
	jl	.LBB50_11
# BB#10:                                # %cond.true.28
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	440(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB50_12
.LBB50_11:                              # %cond.false.31
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB50_12:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB50_14
.LBB50_13:                              # %cond.false.35
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB50_14
.LBB50_14:                              # %cond.end.36
	movl	-40(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fwindow_scroll_bar_height, .Lfunc_end50-Fwindow_scroll_bar_height
	.cfi_endproc

	.globl	Fwindow_hscroll
	.align	16, 0x90
	.type	Fwindow_hscroll,@function
Fwindow_hscroll:                        # @Fwindow_hscroll
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	272(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fwindow_hscroll, .Lfunc_end51-Fwindow_hscroll
	.cfi_endproc

	.globl	Fset_window_hscroll
	.align	16, 0x90
	.type	Fset_window_hscroll,@function
Fset_window_hscroll:                    # @Fset_window_hscroll
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB52_2
# BB#1:                                 # %cond.true
	jmp	.LBB52_3
.LBB52_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB52_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	set_window_hscroll
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fset_window_hscroll, .Lfunc_end52-Fset_window_hscroll
	.cfi_endproc

	.align	16, 0x90
	.type	set_window_hscroll,@function
set_window_hscroll:                     # @set_window_hscroll
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$2305843009213693951, %rdx # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	callq	clip_to_bounds
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB53_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
.LBB53_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 272(%rcx)
	movq	-8(%rbp), %rax
	movw	468(%rax), %dx
	andw	$32767, %dx             # imm = 0x7FFF
	orw	$-32768, %dx            # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, 468(%rax)
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	set_window_hscroll, .Lfunc_end53-set_window_hscroll
	.cfi_endproc

	.globl	Fwindow_redisplay_end_trigger
	.align	16, 0x90
	.type	Fwindow_redisplay_end_trigger,@function
Fwindow_redisplay_end_trigger:          # @Fwindow_redisplay_end_trigger
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	168(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	Fwindow_redisplay_end_trigger, .Lfunc_end54-Fwindow_redisplay_end_trigger
	.cfi_endproc

	.globl	Fset_window_redisplay_end_trigger
	.align	16, 0x90
	.type	Fset_window_redisplay_end_trigger,@function
Fset_window_redisplay_end_trigger:      # @Fset_window_redisplay_end_trigger
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_redisplay_end_trigger
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Fset_window_redisplay_end_trigger, .Lfunc_end55-Fset_window_redisplay_end_trigger
	.cfi_endproc

	.globl	window_relative_x_coord
	.align	16, 0x90
	.type	window_relative_x_coord,@function
window_relative_x_coord:                # @window_relative_x_coord
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movw	468(%rdi), %ax
	shrw	$11, %ax
	andw	$1, %ax
	testw	$1, %ax
	je	.LBB56_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB56_18
.LBB56_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	240(%rax), %edx
	movq	-16(%rbp), %rax
	movw	468(%rax), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%edx, -40(%rbp)         # 4-byte Spill
	je	.LBB56_4
# BB#3:                                 # %cond.true.6
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB56_11
.LBB56_4:                               # %cond.false.7
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_6
# BB#5:                                 # %cond.true.8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB56_10
.LBB56_6:                               # %cond.false.16
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_8
# BB#7:                                 # %cond.true.20
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB56_9
.LBB56_8:                               # %cond.false.21
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
.LBB56_9:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB56_10:                              # %cond.end.26
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB56_11:                              # %cond.end.28
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB56_16
# BB#12:                                # %cond.true.31
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB56_14
# BB#13:                                # %cond.true.33
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB56_15
.LBB56_14:                              # %cond.false.35
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB56_15:                              # %cond.end.38
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB56_17
.LBB56_16:                              # %cond.false.40
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB56_17
.LBB56_17:                              # %cond.end.41
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-40(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB56_18:                              # %cond.end.44
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$12, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB56_62
# BB#64:                                # %cond.end.44
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI56_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB56_19:                              # %sw.bb
	movl	$1, %esi
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	window_box_left
	movl	-116(%rbp), %esi        # 4-byte Reload
	subl	%eax, %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB56_63
.LBB56_20:                              # %sw.bb.48
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB56_63
.LBB56_21:                              # %sw.bb.50
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	$0, 420(%rcx)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jl	.LBB56_23
# BB#22:                                # %cond.true.53
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB56_24
.LBB56_23:                              # %cond.false.55
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB56_24:                              # %cond.end.59
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	-120(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB56_63
.LBB56_25:                              # %sw.bb.62
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %dx
	shrw	$12, %dx
	andw	$1, %dx
	testw	$1, %dx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB56_30
# BB#26:                                # %cond.true.68
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB56_28
# BB#27:                                # %cond.true.71
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB56_29
.LBB56_28:                              # %cond.false.73
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
.LBB56_29:                              # %cond.end.77
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB56_31
.LBB56_30:                              # %cond.false.79
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB56_31
.LBB56_31:                              # %cond.end.80
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	-128(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB56_63
.LBB56_32:                              # %sw.bb.83
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %dx
	shrw	$11, %dx
	andw	$1, %dx
	testw	$1, %dx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB56_34
# BB#33:                                # %cond.true.90
	movq	-16(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB56_54
.LBB56_34:                              # %cond.false.91
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	240(%rax), %edx
	movq	-16(%rbp), %rax
	addl	256(%rax), %edx
	movq	-16(%rbp), %rax
	movl	240(%rax), %esi
	movq	-16(%rbp), %rax
	addl	256(%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-160(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-156(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB56_36
# BB#35:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB56_37
.LBB56_36:                              # %cond.true.115
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB56_38
.LBB56_37:                              # %cond.false.116
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB56_38:                              # %cond.end.119
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	-152(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	je	.LBB56_40
# BB#39:                                # %cond.true.127
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB56_47
.LBB56_40:                              # %cond.false.128
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_42
# BB#41:                                # %cond.true.132
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB56_46
.LBB56_42:                              # %cond.false.140
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_44
# BB#43:                                # %cond.true.144
	movl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB56_45
.LBB56_44:                              # %cond.false.145
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -204(%rbp)        # 4-byte Spill
.LBB56_45:                              # %cond.end.150
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB56_46:                              # %cond.end.152
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB56_47:                              # %cond.end.154
	movl	-172(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB56_52
# BB#48:                                # %cond.true.157
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB56_50
# BB#49:                                # %cond.true.160
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB56_51
.LBB56_50:                              # %cond.false.162
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB56_51:                              # %cond.end.166
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB56_53
.LBB56_52:                              # %cond.false.168
	xorl	%eax, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB56_53
.LBB56_53:                              # %cond.end.169
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	-168(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-148(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB56_54:                              # %cond.end.173
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	$2, %esi
	movl	-140(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	callq	window_box_width
	movl	-228(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movw	468(%rdi), %dx
	shrw	$12, %dx
	andw	$1, %dx
	testw	$1, %dx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	je	.LBB56_59
# BB#55:                                # %cond.true.183
	movq	-16(%rbp), %rax
	cmpl	$0, 424(%rax)
	jl	.LBB56_57
# BB#56:                                # %cond.true.185
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB56_58
.LBB56_57:                              # %cond.false.187
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
.LBB56_58:                              # %cond.end.191
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB56_60
.LBB56_59:                              # %cond.false.193
	xorl	%eax, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB56_60
.LBB56_60:                              # %cond.end.194
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	-232(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB56_63
.LBB56_61:                              # %sw.bb.197
	movl	$0, -4(%rbp)
	jmp	.LBB56_63
.LBB56_62:                              # %sw.default
	callq	emacs_abort
.LBB56_63:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	window_relative_x_coord, .Lfunc_end56-window_relative_x_coord
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI56_0:
	.quad	.LBB56_61
	.quad	.LBB56_19
	.quad	.LBB56_20
	.quad	.LBB56_61
	.quad	.LBB56_20
	.quad	.LBB56_20
	.quad	.LBB56_21
	.quad	.LBB56_25
	.quad	.LBB56_32
	.quad	.LBB56_61
	.quad	.LBB56_61
	.quad	.LBB56_61
	.quad	.LBB56_61

	.text
	.globl	Fcoordinates_in_window_p
	.align	16, 0x90
	.type	Fcoordinates_in_window_p,@function
Fcoordinates_in_window_p:               # @Fcoordinates_in_window_p
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_CONS
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-64(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB57_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB57_3
.LBB57_2:                               # %cond.false
	movq	-56(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-40(%rbp), %rdi
	cvtsi2sdl	364(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
.LBB57_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movslq	332(%rcx), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB57_5
# BB#4:                                 # %cond.true.19
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB57_6
.LBB57_5:                               # %cond.false.23
	movq	-64(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-40(%rbp), %rdi
	cvtsi2sdl	368(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
.LBB57_6:                               # %cond.end.30
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movl	332(%rcx), %edx
	movl	%eax, %esi
	addl	%edx, %esi
	movl	%esi, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %edx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	coordinates_in_window
	movl	%eax, %edx
	movl	%edx, %ecx
	subl	$12, %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB57_26
# BB#28:                                # %cond.end.30
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI57_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB57_7:                               # %sw.bb
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_8:                               # %sw.bb.38
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	window_box_left
	movl	-44(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	332(%rdi), %eax
	movq	-32(%rbp), %rdi
	addl	244(%rdi), %eax
	movl	-48(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -48(%rbp)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rdi
	cltd
	idivl	364(%rdi)
	cmpl	$0, %edx
	je	.LBB57_10
# BB#9:                                 # %cond.true.49
	cvtsi2sdl	-44(%rbp), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	364(%rax), %xmm1
	divsd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB57_11
.LBB57_10:                              # %cond.false.54
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cltd
	idivl	364(%rcx)
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB57_11:                              # %cond.end.59
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	cltd
	movq	-128(%rbp), %rsi        # 8-byte Reload
	idivl	368(%rsi)
	cmpl	$0, %edx
	je	.LBB57_13
# BB#12:                                # %cond.true.63
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	368(%rax), %xmm1
	divsd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB57_14
.LBB57_13:                              # %cond.false.69
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cltd
	idivl	368(%rcx)
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB57_14:                              # %cond.end.75
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_15:                              # %sw.bb.78
	movl	$672, %edi              # imm = 0x2A0
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_16:                              # %sw.bb.80
	movl	$1001, %edi             # imm = 0x3E9
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_17:                              # %sw.bb.82
	movl	$513, %edi              # imm = 0x201
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_18:                              # %sw.bb.84
	movl	$608, %edi              # imm = 0x260
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_19:                              # %sw.bb.86
	movl	$814, %edi              # imm = 0x32E
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_20:                              # %sw.bb.88
	movl	$609, %edi              # imm = 0x261
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_21:                              # %sw.bb.90
	movl	$815, %edi              # imm = 0x32F
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_22:                              # %sw.bb.92
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_23:                              # %sw.bb.94
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_24:                              # %sw.bb.96
	movl	$812, %edi              # imm = 0x32C
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_25:                              # %sw.bb.98
	movl	$214, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_27
.LBB57_26:                              # %sw.default
	callq	emacs_abort
.LBB57_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Fcoordinates_in_window_p, .Lfunc_end57-Fcoordinates_in_window_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI57_0:
	.quad	.LBB57_7
	.quad	.LBB57_8
	.quad	.LBB57_15
	.quad	.LBB57_16
	.quad	.LBB57_17
	.quad	.LBB57_18
	.quad	.LBB57_19
	.quad	.LBB57_20
	.quad	.LBB57_21
	.quad	.LBB57_22
	.quad	.LBB57_23
	.quad	.LBB57_24
	.quad	.LBB57_25

	.text
	.align	16, 0x90
	.type	coordinates_in_window,@function
coordinates_in_window:                  # @coordinates_in_window
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
	subq	$1056, %rsp             # imm = 0x420
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	364(%rdi), %edx
	movl	%edx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	332(%rdi), %edx
	movq	-16(%rbp), %rdi
	addl	240(%rdi), %edx
	movl	%edx, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	332(%rdi), %edx
	movq	-16(%rbp), %rdi
	movl	240(%rdi), %esi
	movq	-16(%rbp), %rdi
	addl	256(%rdi), %esi
	addl	%esi, %edx
	movl	%edx, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	332(%rdi), %edx
	movq	-16(%rbp), %rdi
	addl	244(%rdi), %edx
	movl	%edx, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	332(%rdi), %edx
	movq	-16(%rbp), %rdi
	movl	244(%rdi), %esi
	movq	-16(%rbp), %rdi
	addl	260(%rdi), %esi
	addl	%esi, %edx
	movl	%edx, -56(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-24(%rbp), %edx
	cmpl	-52(%rbp), %edx
	jl	.LBB58_4
# BB#1:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB58_4
# BB#2:                                 # %lor.lhs.false.20
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB58_4
# BB#3:                                 # %lor.lhs.false.22
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.LBB58_5
.LBB58_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB58_330
.LBB58_5:                               # %if.end
	movq	-16(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	XWINDOW
	movl	-84(%rbp), %ecx         # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-80(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB58_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_9
.LBB58_7:                               # %lor.lhs.false.43
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB58_9
# BB#8:                                 # %lor.lhs.false.48
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_10
.LBB58_9:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB58_11
.LBB58_10:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB58_11:                              # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB58_21
# BB#12:                                # %land.lhs.true.52
	movl	-24(%rbp), %eax
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	244(%rdx), %esi
	movq	-16(%rbp), %rdx
	addl	260(%rdx), %esi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%esi, -112(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-116(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-112(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB58_14
# BB#13:                                # %land.lhs.true.68
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_16
.LBB58_14:                              # %lor.lhs.false.76
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB58_16
# BB#15:                                # %lor.lhs.false.82
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_17
.LBB58_16:                              # %cond.true.88
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB58_18
.LBB58_17:                              # %cond.false.89
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
.LBB58_18:                              # %cond.end.93
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-104(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB58_21
# BB#19:                                # %land.lhs.true.97
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB58_21
# BB#20:                                # %if.then.99
	movl	$12, -4(%rbp)
	jmp	.LBB58_330
.LBB58_21:                              # %if.else
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-140(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-136(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_34
# BB#22:                                # %land.lhs.true.115
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-148(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-144(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_24
# BB#23:                                # %lor.lhs.false.131
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_25
.LBB58_24:                              # %cond.true.135
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB58_26
.LBB58_25:                              # %cond.false.136
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB58_26:                              # %cond.end.139
	movl	-152(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB58_34
# BB#27:                                # %land.lhs.true.142
	movl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	240(%rdx), %esi
	movq	-16(%rbp), %rdx
	addl	256(%rdx), %esi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-168(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-164(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	je	.LBB58_29
# BB#28:                                # %lor.lhs.false.158
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_30
.LBB58_29:                              # %cond.true.163
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB58_31
.LBB58_30:                              # %cond.false.164
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB58_31:                              # %cond.end.168
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	-160(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-156(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB58_34
# BB#32:                                # %land.lhs.true.172
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB58_34
# BB#33:                                # %if.then.174
	movl	$11, -4(%rbp)
	jmp	.LBB58_330
.LBB58_34:                              # %if.else.175
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_37
# BB#35:                                # %lor.lhs.false.181
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_38
# BB#36:                                # %land.lhs.true.186
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB58_38
.LBB58_37:                              # %cond.true.192
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_43
	jmp	.LBB58_112
.LBB58_38:                              # %cond.false.193
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_40
# BB#39:                                # %cond.true.196
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB58_43
	jmp	.LBB58_112
.LBB58_40:                              # %cond.false.203
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_42
# BB#41:                                # %cond.true.207
	movb	$1, %al
	testb	$1, %al
	jne	.LBB58_43
	jmp	.LBB58_112
.LBB58_42:                              # %cond.false.208
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_43
	jmp	.LBB58_112
.LBB58_43:                              # %land.lhs.true.209
	movl	-24(%rbp), %eax
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jne	.LBB58_46
# BB#44:                                # %lor.lhs.false.215
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_47
# BB#45:                                # %land.lhs.true.220
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB58_47
.LBB58_46:                              # %cond.true.226
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_52
	jmp	.LBB58_56
.LBB58_47:                              # %cond.false.227
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_49
# BB#48:                                # %cond.true.231
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB58_52
	jmp	.LBB58_56
.LBB58_49:                              # %cond.false.239
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_51
# BB#50:                                # %cond.true.243
	movb	$1, %al
	testb	$1, %al
	jne	.LBB58_52
	jmp	.LBB58_56
.LBB58_51:                              # %cond.false.244
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_52
	jmp	.LBB58_56
.LBB58_52:                              # %cond.true.245
	movq	-16(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB58_54
# BB#53:                                # %cond.true.247
	movq	-16(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB58_55
.LBB58_54:                              # %cond.false.249
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB58_55:                              # %cond.end.252
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB58_57
.LBB58_56:                              # %cond.false.254
	xorl	%eax, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB58_57
.LBB58_57:                              # %cond.end.255
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	-200(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 444(%rdx)
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	jl	.LBB58_59
# BB#58:                                # %cond.true.259
	movq	-16(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB58_77
.LBB58_59:                              # %cond.false.261
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_62
# BB#60:                                # %land.lhs.true.262
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_62
# BB#61:                                # %cond.true.265
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB58_63
	jmp	.LBB58_68
.LBB58_62:                              # %cond.false.271
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_63
	jmp	.LBB58_68
.LBB58_63:                              # %cond.true.272
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_66
# BB#64:                                # %land.lhs.true.275
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_66
# BB#65:                                # %cond.true.279
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB58_67
.LBB58_66:                              # %cond.false.288
	xorl	%eax, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB58_67
.LBB58_67:                              # %cond.end.289
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB58_76
.LBB58_68:                              # %cond.false.291
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB58_75
# BB#69:                                # %lor.lhs.false.295
	movq	-16(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-264(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -249(%rbp)         # 1-byte Spill
	je	.LBB58_75
# BB#70:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jle	.LBB58_74
# BB#71:                                # %land.lhs.true.299
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-280(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -265(%rbp)         # 1-byte Spill
	je	.LBB58_74
# BB#72:                                # %land.lhs.true.302
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-288(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -265(%rbp)         # 1-byte Spill
	jne	.LBB58_74
# BB#73:                                # %land.rhs
	movq	-16(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-296(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -265(%rbp)         # 1-byte Spill
.LBB58_74:                              # %land.end
	movb	-265(%rbp), %al         # 1-byte Reload
	movb	%al, -249(%rbp)         # 1-byte Spill
.LBB58_75:                              # %lor.end
	movb	-249(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB58_76:                              # %cond.end.310
	movl	-240(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB58_77:                              # %cond.end.313
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	-228(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	244(%rdx), %eax
	movq	-16(%rbp), %rdx
	addl	260(%rdx), %eax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-308(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-304(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB58_79
# BB#78:                                # %land.lhs.true.331
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_81
.LBB58_79:                              # %lor.lhs.false.339
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB58_81
# BB#80:                                # %lor.lhs.false.345
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_82
.LBB58_81:                              # %cond.true.351
	xorl	%eax, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB58_83
.LBB58_82:                              # %cond.false.352
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB58_83:                              # %cond.end.356
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	-300(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-196(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB58_112
# BB#84:                                # %land.lhs.true.360
	movl	-24(%rbp), %eax
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 444(%rdx)
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jl	.LBB58_86
# BB#85:                                # %cond.true.363
	movq	-16(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	jmp	.LBB58_104
.LBB58_86:                              # %cond.false.365
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_89
# BB#87:                                # %land.lhs.true.368
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_89
# BB#88:                                # %cond.true.372
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB58_90
	jmp	.LBB58_95
.LBB58_89:                              # %cond.false.382
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_90
	jmp	.LBB58_95
.LBB58_90:                              # %cond.true.383
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_93
# BB#91:                                # %land.lhs.true.386
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_93
# BB#92:                                # %cond.true.390
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB58_94
.LBB58_93:                              # %cond.false.399
	xorl	%eax, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB58_94
.LBB58_94:                              # %cond.end.400
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB58_103
.LBB58_95:                              # %cond.false.402
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movb	%al, -353(%rbp)         # 1-byte Spill
	je	.LBB58_102
# BB#96:                                # %lor.lhs.false.406
	movq	-16(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-368(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -353(%rbp)         # 1-byte Spill
	je	.LBB58_102
# BB#97:                                # %lor.rhs.409
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -369(%rbp)         # 1-byte Spill
	jle	.LBB58_101
# BB#98:                                # %land.lhs.true.411
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-384(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -369(%rbp)         # 1-byte Spill
	je	.LBB58_101
# BB#99:                                # %land.lhs.true.414
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-392(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -369(%rbp)         # 1-byte Spill
	jne	.LBB58_101
# BB#100:                               # %land.rhs.418
	movq	-16(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-400(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -369(%rbp)         # 1-byte Spill
.LBB58_101:                             # %land.end.421
	movb	-369(%rbp), %al         # 1-byte Reload
	movb	%al, -353(%rbp)         # 1-byte Spill
.LBB58_102:                             # %lor.end.422
	movb	-353(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB58_103:                             # %cond.end.425
	movl	-344(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB58_104:                             # %cond.end.428
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	-332(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	244(%rdx), %eax
	movq	-16(%rbp), %rdx
	addl	260(%rdx), %eax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	%eax, -408(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-412(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-408(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB58_106
# BB#105:                               # %land.lhs.true.446
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_108
.LBB58_106:                             # %lor.lhs.false.454
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB58_108
# BB#107:                               # %lor.lhs.false.460
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_109
.LBB58_108:                             # %cond.true.466
	xorl	%eax, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB58_110
.LBB58_109:                             # %cond.false.467
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
.LBB58_110:                             # %cond.end.471
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	-404(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-328(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB58_112
# BB#111:                               # %if.then.475
	movl	$10, -4(%rbp)
	jmp	.LBB58_330
.LBB58_112:                             # %if.else.476
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB58_113
	jmp	.LBB58_118
.LBB58_113:                             # %cond.true.478
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_154
# BB#114:                               # %land.lhs.true.483
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_154
# BB#115:                               # %land.lhs.true.489
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB58_154
# BB#116:                               # %land.lhs.true.496
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_154
# BB#117:                               # %land.lhs.true.501
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB58_119
	jmp	.LBB58_154
.LBB58_118:                             # %cond.false.506
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_119
	jmp	.LBB58_154
.LBB58_119:                             # %land.lhs.true.507
	movl	-24(%rbp), %eax
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 444(%rdx)
	movl	%eax, -444(%rbp)        # 4-byte Spill
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	jl	.LBB58_121
# BB#120:                               # %cond.true.510
	movq	-16(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	jmp	.LBB58_139
.LBB58_121:                             # %cond.false.512
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_124
# BB#122:                               # %land.lhs.true.515
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_124
# BB#123:                               # %cond.true.519
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB58_125
	jmp	.LBB58_130
.LBB58_124:                             # %cond.false.529
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_125
	jmp	.LBB58_130
.LBB58_125:                             # %cond.true.530
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_128
# BB#126:                               # %land.lhs.true.533
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_128
# BB#127:                               # %cond.true.537
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -456(%rbp)        # 4-byte Spill
	jmp	.LBB58_129
.LBB58_128:                             # %cond.false.546
	xorl	%eax, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB58_129
.LBB58_129:                             # %cond.end.547
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB58_138
.LBB58_130:                             # %cond.false.549
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movb	%al, -473(%rbp)         # 1-byte Spill
	je	.LBB58_137
# BB#131:                               # %lor.lhs.false.553
	movq	-16(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-488(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -473(%rbp)         # 1-byte Spill
	je	.LBB58_137
# BB#132:                               # %lor.rhs.556
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -489(%rbp)         # 1-byte Spill
	jle	.LBB58_136
# BB#133:                               # %land.lhs.true.558
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-504(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -489(%rbp)         # 1-byte Spill
	je	.LBB58_136
# BB#134:                               # %land.lhs.true.561
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-512(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -489(%rbp)         # 1-byte Spill
	jne	.LBB58_136
# BB#135:                               # %land.rhs.565
	movq	-16(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -489(%rbp)         # 1-byte Spill
.LBB58_136:                             # %land.end.568
	movb	-489(%rbp), %al         # 1-byte Reload
	movb	%al, -473(%rbp)         # 1-byte Spill
.LBB58_137:                             # %lor.end.569
	movb	-473(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB58_138:                             # %cond.end.572
	movl	-460(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB58_139:                             # %cond.end.575
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	-448(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	244(%rdx), %eax
	movq	-16(%rbp), %rdx
	addl	260(%rdx), %eax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	%eax, -528(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-532(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-528(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB58_141
# BB#140:                               # %land.lhs.true.593
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_143
.LBB58_141:                             # %lor.lhs.false.601
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB58_143
# BB#142:                               # %lor.lhs.false.607
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_144
.LBB58_143:                             # %cond.true.613
	xorl	%eax, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB58_145
.LBB58_144:                             # %cond.false.614
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
.LBB58_145:                             # %cond.end.618
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	-524(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-444(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB58_154
# BB#146:                               # %land.lhs.true.622
	movl	-24(%rbp), %eax
	movl	-56(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	244(%rdx), %esi
	movq	-16(%rbp), %rdx
	addl	260(%rdx), %esi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%eax, -552(%rbp)        # 4-byte Spill
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	%esi, -560(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-564(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-560(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB58_148
# BB#147:                               # %land.lhs.true.638
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_150
.LBB58_148:                             # %lor.lhs.false.646
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB58_150
# BB#149:                               # %lor.lhs.false.652
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_151
.LBB58_150:                             # %cond.true.658
	xorl	%eax, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jmp	.LBB58_152
.LBB58_151:                             # %cond.false.659
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
.LBB58_152:                             # %cond.end.663
	movl	-580(%rbp), %eax        # 4-byte Reload
	movl	-556(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-552(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB58_154
# BB#153:                               # %land.lhs.true.667
	movb	$1, %al
	movl	$2, -36(%rbp)
	testb	$1, %al
	jne	.LBB58_185
.LBB58_154:                             # %lor.lhs.false.668
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB58_155
	jmp	.LBB58_169
.LBB58_155:                             # %cond.true.671
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_222
# BB#156:                               # %land.lhs.true.676
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_222
# BB#157:                               # %land.lhs.true.682
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB58_222
# BB#158:                               # %land.lhs.true.690
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_222
# BB#159:                               # %land.lhs.true.695
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB58_160
	jmp	.LBB58_165
.LBB58_160:                             # %cond.true.699
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_167
# BB#161:                               # %land.lhs.true.704
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_167
# BB#162:                               # %land.lhs.true.710
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB58_167
# BB#163:                               # %land.lhs.true.718
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_167
# BB#164:                               # %land.lhs.true.724
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB58_166
	jmp	.LBB58_167
.LBB58_165:                             # %cond.false.730
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_166
	jmp	.LBB58_167
.LBB58_166:                             # %cond.true.731
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB58_168
.LBB58_167:                             # %cond.false.735
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
.LBB58_168:                             # %cond.end.739
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	-596(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB58_170
	jmp	.LBB58_222
.LBB58_169:                             # %cond.false.742
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_170
	jmp	.LBB58_222
.LBB58_170:                             # %land.lhs.true.743
	movl	-24(%rbp), %eax
	movl	-52(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 448(%rdx)
	movl	%eax, -616(%rbp)        # 4-byte Spill
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	jl	.LBB58_172
# BB#171:                               # %cond.true.745
	movq	-16(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -624(%rbp)        # 4-byte Spill
	jmp	.LBB58_183
.LBB58_172:                             # %cond.false.747
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_175
# BB#173:                               # %land.lhs.true.750
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_175
# BB#174:                               # %cond.true.754
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB58_176
	jmp	.LBB58_181
.LBB58_175:                             # %cond.false.759
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB58_176
	jmp	.LBB58_181
.LBB58_176:                             # %cond.true.760
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB58_179
# BB#177:                               # %land.lhs.true.763
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB58_179
# BB#178:                               # %cond.true.767
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	jmp	.LBB58_180
.LBB58_179:                             # %cond.false.771
	xorl	%eax, %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB58_180
.LBB58_180:                             # %cond.end.772
	movl	-628(%rbp), %eax        # 4-byte Reload
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jmp	.LBB58_182
.LBB58_181:                             # %cond.false.774
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -632(%rbp)        # 4-byte Spill
.LBB58_182:                             # %cond.end.778
	movl	-632(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB58_183:                             # %cond.end.781
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	-620(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-616(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB58_222
# BB#184:                               # %land.lhs.true.785
	movb	$1, %al
	movl	$4, -36(%rbp)
	testb	$1, %al
	jne	.LBB58_185
	jmp	.LBB58_222
.LBB58_185:                             # %if.then.786
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -640(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-640(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-636(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_187
# BB#186:                               # %lor.lhs.false.802
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_188
.LBB58_187:                             # %cond.true.807
	xorl	%eax, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB58_189
.LBB58_188:                             # %cond.false.808
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
.LBB58_189:                             # %cond.end.812
	movl	-644(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB58_221
# BB#190:                               # %land.lhs.true.815
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_192
# BB#191:                               # %cond.true.821
	xorl	%eax, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB58_199
.LBB58_192:                             # %cond.false.822
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_194
# BB#193:                               # %cond.true.825
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	jmp	.LBB58_198
.LBB58_194:                             # %cond.false.833
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-672(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_196
# BB#195:                               # %cond.true.837
	movl	$1, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB58_197
.LBB58_196:                             # %cond.false.838
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-688(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -676(%rbp)        # 4-byte Spill
.LBB58_197:                             # %cond.end.843
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB58_198:                             # %cond.end.845
	movl	-660(%rbp), %eax        # 4-byte Reload
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB58_199:                             # %cond.end.847
	movl	-648(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB58_205
# BB#200:                               # %land.lhs.true.850
	movq	-16(%rbp), %rax
	cmpl	$0, 240(%rax)
	je	.LBB58_205
# BB#201:                               # %land.lhs.true.853
	movl	-20(%rbp), %eax
	subl	-44(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB58_203
# BB#202:                               # %cond.true.856
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	subl	-44(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB58_204
.LBB58_203:                             # %cond.false.859
	movl	-20(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
.LBB58_204:                             # %cond.end.861
	movl	-692(%rbp), %eax        # 4-byte Reload
	cmpl	-60(%rbp), %eax
	jl	.LBB58_220
.LBB58_205:                             # %lor.lhs.false.864
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_207
# BB#206:                               # %cond.true.870
	xorl	%eax, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB58_214
.LBB58_207:                             # %cond.false.871
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_209
# BB#208:                               # %cond.true.875
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	jmp	.LBB58_213
.LBB58_209:                             # %cond.false.883
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_211
# BB#210:                               # %cond.true.887
	movl	$1, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB58_212
.LBB58_211:                             # %cond.false.888
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-736(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -724(%rbp)        # 4-byte Spill
.LBB58_212:                             # %cond.end.893
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB58_213:                             # %cond.end.895
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -696(%rbp)        # 4-byte Spill
.LBB58_214:                             # %cond.end.897
	movl	-696(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB58_221
# BB#215:                               # %land.lhs.true.900
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -744(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-744(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-740(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_221
# BB#216:                               # %land.lhs.true.916
	movl	-20(%rbp), %eax
	subl	-48(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB58_218
# BB#217:                               # %cond.true.919
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	subl	-48(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB58_219
.LBB58_218:                             # %cond.false.922
	movl	-20(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB58_219:                             # %cond.end.924
	movl	-748(%rbp), %eax        # 4-byte Reload
	cmpl	-60(%rbp), %eax
	jge	.LBB58_221
.LBB58_220:                             # %if.then.927
	movl	$3, -4(%rbp)
	jmp	.LBB58_330
.LBB58_221:                             # %if.else.928
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB58_330
.LBB58_222:                             # %if.end.929
	jmp	.LBB58_223
.LBB58_223:                             # %if.end.930
	jmp	.LBB58_224
.LBB58_224:                             # %if.end.931
	jmp	.LBB58_225
.LBB58_225:                             # %if.end.932
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_227
# BB#226:                               # %if.then.938
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	256(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB58_262
.LBB58_227:                             # %if.else.941
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	240(%rax), %edx
	movq	-16(%rbp), %rax
	movw	468(%rax), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -752(%rbp)        # 4-byte Spill
	movl	%edx, -756(%rbp)        # 4-byte Spill
	je	.LBB58_229
# BB#228:                               # %cond.true.951
	xorl	%eax, %eax
	movl	%eax, -760(%rbp)        # 4-byte Spill
	jmp	.LBB58_236
.LBB58_229:                             # %cond.false.952
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_231
# BB#230:                               # %cond.true.956
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	jmp	.LBB58_235
.LBB58_231:                             # %cond.false.964
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_233
# BB#232:                               # %cond.true.968
	movl	$1, %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jmp	.LBB58_234
.LBB58_233:                             # %cond.false.969
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-800(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -788(%rbp)        # 4-byte Spill
.LBB58_234:                             # %cond.end.974
	movl	-788(%rbp), %eax        # 4-byte Reload
	movl	%eax, -772(%rbp)        # 4-byte Spill
.LBB58_235:                             # %cond.end.976
	movl	-772(%rbp), %eax        # 4-byte Reload
	movl	%eax, -760(%rbp)        # 4-byte Spill
.LBB58_236:                             # %cond.end.978
	movl	-760(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB58_241
# BB#237:                               # %cond.true.981
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB58_239
# BB#238:                               # %cond.true.983
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	jmp	.LBB58_240
.LBB58_239:                             # %cond.false.985
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -804(%rbp)        # 4-byte Spill
.LBB58_240:                             # %cond.end.988
	movl	-804(%rbp), %eax        # 4-byte Reload
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB58_242
.LBB58_241:                             # %cond.false.990
	xorl	%eax, %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB58_242
.LBB58_242:                             # %cond.end.991
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	-756(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-752(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movl	332(%rdx), %eax
	movq	-16(%rbp), %rdx
	movl	240(%rdx), %ecx
	movq	-16(%rbp), %rdx
	addl	256(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	240(%rdx), %esi
	movq	-16(%rbp), %rdx
	addl	256(%rdx), %esi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	40(%rdx), %rdi
	movl	%eax, -812(%rbp)        # 4-byte Spill
	movl	%ecx, -816(%rbp)        # 4-byte Spill
	movl	%esi, -820(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -824(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-824(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-820(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	je	.LBB58_244
# BB#243:                               # %lor.lhs.false.1016
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_245
.LBB58_244:                             # %cond.true.1021
	xorl	%eax, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB58_246
.LBB58_245:                             # %cond.false.1022
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -828(%rbp)        # 4-byte Spill
.LBB58_246:                             # %cond.end.1026
	movl	-828(%rbp), %eax        # 4-byte Reload
	movl	-816(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%ecx, -832(%rbp)        # 4-byte Spill
	je	.LBB58_248
# BB#247:                               # %cond.true.1034
	xorl	%eax, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	jmp	.LBB58_255
.LBB58_248:                             # %cond.false.1035
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-848(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_250
# BB#249:                               # %cond.true.1039
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -852(%rbp)        # 4-byte Spill
	jmp	.LBB58_254
.LBB58_250:                             # %cond.false.1047
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_252
# BB#251:                               # %cond.true.1051
	movl	$1, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jmp	.LBB58_253
.LBB58_252:                             # %cond.false.1052
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-880(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -868(%rbp)        # 4-byte Spill
.LBB58_253:                             # %cond.end.1057
	movl	-868(%rbp), %eax        # 4-byte Reload
	movl	%eax, -852(%rbp)        # 4-byte Spill
.LBB58_254:                             # %cond.end.1059
	movl	-852(%rbp), %eax        # 4-byte Reload
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB58_255:                             # %cond.end.1061
	movl	-836(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB58_260
# BB#256:                               # %cond.true.1064
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB58_258
# BB#257:                               # %cond.true.1067
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -884(%rbp)        # 4-byte Spill
	jmp	.LBB58_259
.LBB58_258:                             # %cond.false.1069
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -884(%rbp)        # 4-byte Spill
.LBB58_259:                             # %cond.end.1073
	movl	-884(%rbp), %eax        # 4-byte Reload
	movl	%eax, -888(%rbp)        # 4-byte Spill
	jmp	.LBB58_261
.LBB58_260:                             # %cond.false.1075
	xorl	%eax, %eax
	movl	%eax, -888(%rbp)        # 4-byte Spill
	jmp	.LBB58_261
.LBB58_261:                             # %cond.end.1076
	movl	-888(%rbp), %eax        # 4-byte Reload
	movl	-832(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-812(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB58_262:                             # %if.end.1081
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB58_264
# BB#263:                               # %lor.lhs.false.1083
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB58_265
.LBB58_264:                             # %if.then.1085
	movl	$9, -4(%rbp)
	jmp	.LBB58_330
.LBB58_265:                             # %if.end.1086
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	window_box_width
	movl	$2, %esi
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_box_width
	movl	$1, %esi
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	callq	window_box_left
	movl	$1, %esi
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	window_box_width
	movl	-892(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -76(%rbp)
	movq	-32(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	jne	.LBB58_299
# BB#266:                               # %if.then.1097
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_298
# BB#267:                               # %land.lhs.true.1103
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -896(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-900(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-896(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_269
# BB#268:                               # %lor.lhs.false.1119
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_270
.LBB58_269:                             # %cond.true.1124
	xorl	%eax, %eax
	movl	%eax, -904(%rbp)        # 4-byte Spill
	jmp	.LBB58_271
.LBB58_270:                             # %cond.false.1125
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -904(%rbp)        # 4-byte Spill
.LBB58_271:                             # %cond.end.1129
	movl	-904(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB58_298
# BB#272:                               # %land.lhs.true.1132
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_274
# BB#273:                               # %cond.true.1138
	xorl	%eax, %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
	jmp	.LBB58_281
.LBB58_274:                             # %cond.false.1139
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-920(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_276
# BB#275:                               # %cond.true.1143
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -924(%rbp)        # 4-byte Spill
	jmp	.LBB58_280
.LBB58_276:                             # %cond.false.1151
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_278
# BB#277:                               # %cond.true.1155
	movl	$1, %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
	jmp	.LBB58_279
.LBB58_278:                             # %cond.false.1156
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-952(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -940(%rbp)        # 4-byte Spill
.LBB58_279:                             # %cond.end.1161
	movl	-940(%rbp), %eax        # 4-byte Reload
	movl	%eax, -924(%rbp)        # 4-byte Spill
.LBB58_280:                             # %cond.end.1163
	movl	-924(%rbp), %eax        # 4-byte Reload
	movl	%eax, -908(%rbp)        # 4-byte Spill
.LBB58_281:                             # %cond.end.1165
	movl	-908(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB58_298
# BB#282:                               # %lor.lhs.false.1168
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_284
# BB#283:                               # %cond.true.1174
	xorl	%eax, %eax
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB58_291
.LBB58_284:                             # %cond.false.1175
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_286
# BB#285:                               # %cond.true.1179
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -972(%rbp)        # 4-byte Spill
	jmp	.LBB58_290
.LBB58_286:                             # %cond.false.1187
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_288
# BB#287:                               # %cond.true.1191
	movl	$1, %eax
	movl	%eax, -988(%rbp)        # 4-byte Spill
	jmp	.LBB58_289
.LBB58_288:                             # %cond.false.1192
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -988(%rbp)        # 4-byte Spill
.LBB58_289:                             # %cond.end.1197
	movl	-988(%rbp), %eax        # 4-byte Reload
	movl	%eax, -972(%rbp)        # 4-byte Spill
.LBB58_290:                             # %cond.end.1199
	movl	-972(%rbp), %eax        # 4-byte Reload
	movl	%eax, -956(%rbp)        # 4-byte Spill
.LBB58_291:                             # %cond.end.1201
	movl	-956(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	je	.LBB58_298
# BB#292:                               # %land.lhs.true.1204
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -1008(%rbp)       # 4-byte Spill
	callq	XWINDOW
	movl	-1008(%rbp), %ecx       # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-1004(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_298
# BB#293:                               # %land.lhs.true.1220
	movl	-20(%rbp), %eax
	subl	-48(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB58_295
# BB#294:                               # %cond.true.1223
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	subl	-48(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB58_296
.LBB58_295:                             # %cond.false.1226
	movl	-20(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -1012(%rbp)       # 4-byte Spill
.LBB58_296:                             # %cond.end.1228
	movl	-1012(%rbp), %eax       # 4-byte Reload
	cmpl	-60(%rbp), %eax
	jge	.LBB58_298
# BB#297:                               # %if.then.1231
	movl	$3, -4(%rbp)
	jmp	.LBB58_330
.LBB58_298:                             # %if.end.1232
	jmp	.LBB58_309
.LBB58_299:                             # %if.else.1233
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB58_308
# BB#300:                               # %land.lhs.true.1239
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -1016(%rbp)       # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	callq	XWINDOW
	movl	-1020(%rbp), %ecx       # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-1016(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_302
# BB#301:                               # %lor.lhs.false.1255
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_303
.LBB58_302:                             # %cond.true.1260
	xorl	%eax, %eax
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	jmp	.LBB58_304
.LBB58_303:                             # %cond.false.1261
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -1024(%rbp)       # 4-byte Spill
.LBB58_304:                             # %cond.end.1265
	movl	-1024(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB58_308
# BB#305:                               # %land.lhs.true.1268
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -1032(%rbp)       # 4-byte Spill
	callq	XWINDOW
	movl	-1032(%rbp), %ecx       # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-1028(%rbp), %edx       # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB58_308
# BB#306:                               # %land.lhs.true.1284
	movl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB58_308
# BB#307:                               # %if.then.1287
	movl	$3, -4(%rbp)
	jmp	.LBB58_330
.LBB58_308:                             # %if.end.1288
	jmp	.LBB58_309
.LBB58_309:                             # %if.end.1289
	movl	-20(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB58_319
# BB#310:                               # %if.then.1291
	cmpl	$0, -64(%rbp)
	jle	.LBB58_318
# BB#311:                               # %land.lhs.true.1293
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$12, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_316
# BB#312:                               # %cond.true.1298
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 420(%rdx)
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	movl	%ecx, -1040(%rbp)       # 4-byte Spill
	jl	.LBB58_314
# BB#313:                               # %cond.true.1300
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	jmp	.LBB58_315
.LBB58_314:                             # %cond.false.1302
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
.LBB58_315:                             # %cond.end.1306
	movl	-1044(%rbp), %eax       # 4-byte Reload
	movl	-1040(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movl	-1036(%rbp), %eax       # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB58_317
	jmp	.LBB58_318
.LBB58_316:                             # %cond.false.1310
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB58_318
.LBB58_317:                             # %if.then.1313
	movl	$7, -4(%rbp)
	jmp	.LBB58_330
.LBB58_318:                             # %if.else.1314
	movl	$5, -4(%rbp)
	jmp	.LBB58_330
.LBB58_319:                             # %if.end.1315
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB58_329
# BB#320:                               # %if.then.1317
	cmpl	$0, -68(%rbp)
	jle	.LBB58_328
# BB#321:                               # %land.lhs.true.1319
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$12, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB58_326
# BB#322:                               # %cond.true.1325
	movl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 424(%rdx)
	movl	%eax, -1048(%rbp)       # 4-byte Spill
	movl	%ecx, -1052(%rbp)       # 4-byte Spill
	jl	.LBB58_324
# BB#323:                               # %cond.true.1327
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -1056(%rbp)       # 4-byte Spill
	jmp	.LBB58_325
.LBB58_324:                             # %cond.false.1329
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -1056(%rbp)       # 4-byte Spill
.LBB58_325:                             # %cond.end.1333
	movl	-1056(%rbp), %eax       # 4-byte Reload
	movl	-1052(%rbp), %ecx       # 4-byte Reload
	subl	%eax, %ecx
	movl	-1048(%rbp), %eax       # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB58_327
	jmp	.LBB58_328
.LBB58_326:                             # %cond.false.1337
	movl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB58_328
.LBB58_327:                             # %if.then.1340
	movl	$8, -4(%rbp)
	jmp	.LBB58_330
.LBB58_328:                             # %if.else.1341
	movl	$6, -4(%rbp)
	jmp	.LBB58_330
.LBB58_329:                             # %if.end.1342
	movl	$1, -4(%rbp)
.LBB58_330:                             # %return
	movl	-4(%rbp), %eax
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end58:
	.size	coordinates_in_window, .Lfunc_end58-coordinates_in_window
	.cfi_endproc

	.globl	window_from_coordinates
	.align	16, 0x90
	.type	window_from_coordinates,@function
window_from_coordinates:                # @window_from_coordinates
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
	subq	$80, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB59_2
# BB#1:                                 # %if.then
	leaq	-68(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB59_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$check_window_containing, %rsi
	leaq	-64(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -64(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, -56(%rbp)
	movl	-16(%rbp), %edi
	movl	%edi, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rdx
	callq	foreach_window
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	window_from_coordinates, .Lfunc_end59-window_from_coordinates
	.cfi_endproc

	.align	16, 0x90
	.type	foreach_window,@function
foreach_window:                         # @foreach_window
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB60_1
	jmp	.LBB60_2
.LBB60_1:                               # %if.then
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	foreach_window_1
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB60_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	foreach_window, .Lfunc_end60-foreach_window
	.cfi_endproc

	.align	16, 0x90
	.type	check_window_containing,@function
check_window_containing:                # @check_window_containing
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	callq	coordinates_in_window
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB61_3
.LBB61_2:                               # %if.else
	movl	$5, %esi
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movb	$0, -1(%rbp)
.LBB61_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	check_window_containing, .Lfunc_end61-check_window_containing
	.cfi_endproc

	.globl	Fwindow_at
	.align	16, 0x90
	.type	Fwindow_at,@function
Fwindow_at:                             # @Fwindow_at
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-16(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jne	.LBB62_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movslq	364(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB62_3
.LBB62_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-32(%rbp), %rdi
	cvtsi2sdl	364(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB62_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	movslq	332(%rcx), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	jne	.LBB62_5
# BB#4:                                 # %cond.true.17
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movslq	368(%rcx), %rcx
	imulq	%rcx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB62_6
.LBB62_5:                               # %cond.false.21
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-32(%rbp), %rdi
	cvtsi2sdl	368(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
.LBB62_6:                               # %cond.end.28
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movslq	332(%rdx), %rdx
	addq	%rdx, %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %esi
	movl	-68(%rbp), %edx         # 4-byte Reload
	callq	window_from_coordinates
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Fwindow_at, .Lfunc_end62-Fwindow_at
	.cfi_endproc

	.globl	Fwindow_point
	.align	16, 0x90
	.type	Fwindow_point,@function
Fwindow_point:                          # @Fwindow_point
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB63_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB63_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB63_7
.LBB63_3:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_5
# BB#4:                                 # %cond.true.8
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB63_6
.LBB63_5:                               # %cond.false.12
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB63_6:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB63_7:                               # %cond.end.17
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB63_9
.LBB63_8:                               # %if.else
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	Fmarker_position
	movq	%rax, -8(%rbp)
.LBB63_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	Fwindow_point, .Lfunc_end63-Fwindow_point
	.cfi_endproc

	.globl	Fwindow_old_point
	.align	16, 0x90
	.type	Fwindow_old_point,@function
Fwindow_old_point:                      # @Fwindow_old_point
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	104(%rax), %rdi
	callq	Fmarker_position
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Fwindow_old_point, .Lfunc_end64-Fwindow_old_point
	.cfi_endproc

	.globl	Fwindow_start
	.align	16, 0x90
	.type	Fwindow_start,@function
Fwindow_start:                          # @Fwindow_start
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	88(%rax), %rdi
	callq	Fmarker_position
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	Fwindow_start, .Lfunc_end65-Fwindow_start
	.cfi_endproc

	.globl	Fwindow_end
	.align	16, 0x90
	.type	Fwindow_end,@function
Fwindow_end:                            # @Fwindow_end
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
	subq	$4912, %rsp             # imm = 0x1330
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-40(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -4888(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4888(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB66_15
# BB#1:                                 # %land.lhs.true
	cmpl	$0, windows_or_buffers_changed
	jne	.LBB66_6
# BB#2:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$13, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB66_6
# BB#3:                                 # %lor.lhs.false.3
	movq	-48(%rbp), %rax
	movb	936(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB66_6
# BB#4:                                 # %lor.lhs.false.8
	movq	-48(%rbp), %rax
	movb	936(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB66_6
# BB#5:                                 # %lor.lhs.false.12
	movq	-32(%rbp), %rdi
	callq	window_outdated
	testb	$1, %al
	jne	.LBB66_6
	jmp	.LBB66_15
.LBB66_6:                               # %land.lhs.true.14
	testb	$1, noninteractive
	jne	.LBB66_15
# BB#7:                                 # %lor.lhs.false.16
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB66_15
# BB#8:                                 # %if.then
	movq	$0, -4872(%rbp)
	movq	$0, -4880(%rbp)
	movq	-48(%rbp), %rax
	cmpq	current_buffer, %rax
	je	.LBB66_10
# BB#9:                                 # %if.then.23
	movq	current_buffer, %rax
	movq	%rax, -4872(%rbp)
	movq	-48(%rbp), %rdi
	callq	set_buffer_internal
.LBB66_10:                              # %if.end
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -4896(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_position
	movq	current_buffer, %rdi
	movq	768(%rdi), %rdx
	movq	-4896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -4904(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	current_buffer, %rdx
	movq	776(%rdx), %rdx
	movq	-4904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -56(%rbp)
	callq	bidi_shelve_cache
	leaq	-4864(%rbp), %rdi
	movq	%rax, -4880(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	start_display
	movq	-32(%rbp), %rdi
	callq	window_box_height
	leaq	-4864(%rbp), %rdi
	movl	%eax, %esi
	callq	move_it_vertically
	movl	-2432(%rbp), %eax
	cmpl	-2540(%rbp), %eax
	jge	.LBB66_12
# BB#11:                                # %if.then.32
	leaq	-4864(%rbp), %rdi
	callq	move_it_past_eol
.LBB66_12:                              # %if.end.33
	xorl	%esi, %esi
	movq	-4552(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-4880(%rbp), %rdi
	callq	bidi_unshelve_cache
	cmpq	$0, -4872(%rbp)
	je	.LBB66_14
# BB#13:                                # %if.then.36
	movq	-4872(%rbp), %rdi
	callq	set_buffer_internal
.LBB66_14:                              # %if.end.37
	jmp	.LBB66_16
.LBB66_15:                              # %if.else
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	456(%rcx), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
.LBB66_16:                              # %if.end.41
	movq	-24(%rbp), %rax
	addq	$4912, %rsp             # imm = 0x1330
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fwindow_end, .Lfunc_end66-Fwindow_end
	.cfi_endproc

	.globl	Fset_window_point
	.align	16, 0x90
	.type	Fset_window_point,@function
Fset_window_point:                      # @Fset_window_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_14
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB67_3
# BB#2:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	Fgoto_char
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB67_13
.LBB67_3:                               # %if.else
	movq	current_buffer, %rax
	movq	%rax, -32(%rbp)
# BB#4:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB67_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB67_7
# BB#6:                                 # %if.then.11
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB67_11
.LBB67_7:                               # %if.else.14
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB67_9
# BB#8:                                 # %cond.true
	jmp	.LBB67_10
.LBB67_9:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB67_10:                              # %cond.end
	jmp	.LBB67_11
.LBB67_11:                              # %if.end
	jmp	.LBB67_12
.LBB67_12:                              # %do.end
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	movq	-16(%rbp), %rdi
	callq	Fgoto_char
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	set_buffer_internal
.LBB67_13:                              # %if.end.24
	jmp	.LBB67_15
.LBB67_14:                              # %if.else.25
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	callq	set_marker_restricted
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	wset_redisplay
.LBB67_15:                              # %if.end.28
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Fset_window_point, .Lfunc_end67-Fset_window_point
	.cfi_endproc

	.globl	Fset_window_start
	.align	16, 0x90
	.type	Fset_window_start,@function
Fset_window_start:                      # @Fset_window_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	callq	set_marker_restricted
	xorl	%edi, %edi
	movq	-32(%rbp), %rdx
	movw	468(%rdx), %cx
	andw	$-17, %cx
	movw	%cx, 468(%rdx)
	movq	-24(%rbp), %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB68_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-33, %cx
	orw	$32, %cx
	movw	%cx, 468(%rax)
.LBB68_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	wset_update_mode_line
	movq	-32(%rbp), %rdi
	movw	468(%rdi), %ax
	andw	$-8193, %ax             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%ax, 468(%rdi)
	movq	-32(%rbp), %rdi
	callq	wset_redisplay
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fset_window_start, .Lfunc_end68-Fset_window_start
	.cfi_endproc

	.align	16, 0x90
	.type	wset_update_mode_line,@function
wset_update_mode_line:                  # @wset_update_mode_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB69_1
	jmp	.LBB69_3
.LBB69_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	cmpq	-8(%rbp), %rax
	jne	.LBB69_3
# BB#2:                                 # %if.then
	movl	$42, update_mode_lines
	jmp	.LBB69_4
.LBB69_3:                               # %if.else
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-5, %cx
	orw	$4, %cx
	movw	%cx, 468(%rax)
.LBB69_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	wset_update_mode_line, .Lfunc_end69-wset_update_mode_line
	.cfi_endproc

	.globl	Fpos_visible_in_window_p
	.align	16, 0x90
	.type	Fpos_visible_in_window_p,@function
Fpos_visible_in_window_p:               # @Fpos_visible_in_window_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movb	$1, -89(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_position
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_byte_position
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB70_2
# BB#1:                                 # %if.then
	movq	$-1, -40(%rbp)
	jmp	.LBB70_18
.LBB70_2:                               # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_13
# BB#3:                                 # %if.then.9
	jmp	.LBB70_4
.LBB70_4:                               # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB70_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB70_7
# BB#6:                                 # %if.then.15
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB70_11
.LBB70_7:                               # %if.else.18
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_9
# BB#8:                                 # %cond.true
	jmp	.LBB70_10
.LBB70_9:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB70_10:                              # %cond.end
	jmp	.LBB70_11
.LBB70_11:                              # %if.end
	jmp	.LBB70_12
.LBB70_12:                              # %do.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB70_17
.LBB70_13:                              # %if.else.25
	movq	-32(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB70_15
# BB#14:                                # %if.then.29
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB70_16
.LBB70_15:                              # %if.else.30
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	callq	marker_position
	movq	%rax, -40(%rbp)
.LBB70_16:                              # %if.end.32
	jmp	.LBB70_17
.LBB70_17:                              # %if.end.33
	jmp	.LBB70_18
.LBB70_18:                              # %if.end.34
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_27
# BB#19:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB70_48
# BB#20:                                # %land.lhs.true.41
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB70_22
# BB#21:                                # %cond.true.44
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB70_26
.LBB70_22:                              # %cond.false.45
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_24
# BB#23:                                # %cond.true.49
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB70_25
.LBB70_24:                              # %cond.false.51
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB70_25:                              # %cond.end.54
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB70_26:                              # %cond.end.55
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB70_48
.LBB70_27:                              # %land.lhs.true.59
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB70_29
# BB#28:                                # %cond.true.63
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB70_33
.LBB70_29:                              # %cond.false.64
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_31
# BB#30:                                # %cond.true.68
	movq	-48(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB70_32
.LBB70_31:                              # %cond.false.70
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB70_32:                              # %cond.end.73
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB70_33:                              # %cond.end.75
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB70_48
# BB#34:                                # %land.lhs.true.79
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB70_36
# BB#35:                                # %cond.true.83
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB70_40
.LBB70_36:                              # %cond.false.85
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_38
# BB#37:                                # %cond.true.90
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB70_39
.LBB70_38:                              # %cond.false.92
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB70_39:                              # %cond.end.95
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB70_40:                              # %cond.end.97
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB70_48
# BB#41:                                # %land.lhs.true.101
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-76(%rbp), %r8
	leaq	-80(%rbp), %r9
	leaq	-84(%rbp), %rax
	leaq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r10
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rax, (%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	pos_visible_p
	testb	$1, %al
	jne	.LBB70_42
	jmp	.LBB70_48
.LBB70_42:                              # %if.then.104
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -76(%rbp)
	movb	%cl, -257(%rbp)         # 1-byte Spill
	jne	.LBB70_44
# BB#43:                                # %land.rhs
	cmpl	$0, -80(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB70_44:                              # %land.end
	movb	-257(%rbp), %al         # 1-byte Reload
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -89(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_46
# BB#45:                                # %lor.lhs.false.109
	testb	$1, -89(%rbp)
	je	.LBB70_47
.LBB70_46:                              # %if.then.112
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
.LBB70_47:                              # %if.end.114
	jmp	.LBB70_48
.LBB70_48:                              # %if.end.115
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_53
# BB#49:                                # %land.lhs.true.119
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_53
# BB#50:                                # %if.then.123
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	testb	$1, -89(%rbp)
	jne	.LBB70_52
# BB#51:                                # %if.then.126
	movslq	-76(%rbp), %rdi
	movslq	-80(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movslq	-88(%rbp), %rcx
	callq	list4i
	movq	%rax, -112(%rbp)
.LBB70_52:                              # %if.end.132
	movslq	-96(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-100(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-112(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB70_53:                              # %if.end.140
	movq	-72(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end70:
	.size	Fpos_visible_in_window_p, .Lfunc_end70-Fpos_visible_in_window_p
	.cfi_endproc

	.globl	Fwindow_line_height
	.align	16, 0x90
	.type	Fwindow_line_height,@function
Fwindow_line_height:                    # @Fwindow_line_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	testb	$1, noninteractive
	jne	.LBB71_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB71_3
.LBB71_2:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_3:                               # %if.end
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	CHECK_BUFFER
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$13, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB71_8
# BB#4:                                 # %lor.lhs.false.8
	cmpl	$0, windows_or_buffers_changed
	jne	.LBB71_8
# BB#5:                                 # %lor.lhs.false.10
	movq	-40(%rbp), %rax
	movb	936(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB71_8
# BB#6:                                 # %lor.lhs.false.15
	movq	-40(%rbp), %rax
	movb	936(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB71_8
# BB#7:                                 # %lor.lhs.false.19
	movq	-32(%rbp), %rdi
	callq	window_outdated
	testb	$1, %al
	jne	.LBB71_8
	jmp	.LBB71_9
.LBB71_8:                               # %if.then.21
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_9:                               # %if.end.23
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_15
# BB#10:                                # %if.then.25
	movq	-32(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jl	.LBB71_13
# BB#11:                                # %lor.lhs.false.27
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	192(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB71_13
# BB#12:                                # %lor.lhs.false.29
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movslq	-68(%rbp), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	movb	%al, %dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB71_13
	jmp	.LBB71_14
.LBB71_13:                              # %if.then.35
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_14:                              # %if.end.37
	movq	-32(%rbp), %rdi
	callq	window_text_bottom_y
	movl	%eax, -60(%rbp)
	jmp	.LBB71_103
.LBB71_15:                              # %if.end.39
	movl	$513, %edi              # imm = 0x201
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_37
# BB#16:                                # %if.then.42
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB71_17
	jmp	.LBB71_31
.LBB71_17:                              # %cond.true
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_32
# BB#18:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_32
# BB#19:                                # %land.lhs.true.53
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_32
# BB#20:                                # %land.lhs.true.58
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB71_32
# BB#21:                                # %land.lhs.true.63
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB71_22
	jmp	.LBB71_27
.LBB71_22:                              # %cond.true.66
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_29
# BB#23:                                # %land.lhs.true.71
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_29
# BB#24:                                # %land.lhs.true.77
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_29
# BB#25:                                # %land.lhs.true.85
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB71_29
# BB#26:                                # %land.lhs.true.90
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB71_28
	jmp	.LBB71_29
.LBB71_27:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB71_28
	jmp	.LBB71_29
.LBB71_28:                              # %cond.true.95
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB71_30
.LBB71_29:                              # %cond.false.99
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB71_30:                              # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB71_33
	jmp	.LBB71_32
.LBB71_31:                              # %cond.false.104
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB71_33
	jmp	.LBB71_32
.LBB71_32:                              # %if.then.105
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_33:                              # %if.end.107
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_35
# BB#34:                                # %cond.true.115
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movslq	60(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	list4i
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB71_36
.LBB71_35:                              # %cond.false.117
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB71_36:                              # %cond.end.119
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_37:                              # %if.end.121
	movl	$672, %edi              # imm = 0x2A0
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_73
# BB#38:                                # %if.then.125
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	addq	$-256, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_71
# BB#39:                                # %cond.true.139
	movq	-48(%rbp), %rax
	movslq	60(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB71_40
	jmp	.LBB71_54
.LBB71_40:                              # %cond.true.145
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_69
# BB#41:                                # %land.lhs.true.150
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_69
# BB#42:                                # %land.lhs.true.156
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_69
# BB#43:                                # %land.lhs.true.165
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB71_69
# BB#44:                                # %land.lhs.true.172
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB71_45
	jmp	.LBB71_50
.LBB71_45:                              # %cond.true.177
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_52
# BB#46:                                # %land.lhs.true.182
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB71_52
# BB#47:                                # %land.lhs.true.188
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_52
# BB#48:                                # %land.lhs.true.197
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB71_52
# BB#49:                                # %land.lhs.true.204
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB71_51
	jmp	.LBB71_52
.LBB71_50:                              # %cond.false.211
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB71_51
	jmp	.LBB71_52
.LBB71_51:                              # %cond.true.212
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB71_53
.LBB71_52:                              # %cond.false.217
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB71_53:                              # %cond.end.221
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB71_55
	jmp	.LBB71_69
.LBB71_54:                              # %cond.false.225
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB71_55
	jmp	.LBB71_69
.LBB71_55:                              # %cond.true.226
	movq	-32(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB71_57
# BB#56:                                # %cond.true.229
	movq	-32(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB71_68
.LBB71_57:                              # %cond.false.231
	movq	-32(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB71_60
# BB#58:                                # %land.lhs.true.234
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB71_60
# BB#59:                                # %cond.true.238
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB71_61
	jmp	.LBB71_66
.LBB71_60:                              # %cond.false.243
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB71_61
	jmp	.LBB71_66
.LBB71_61:                              # %cond.true.244
	movq	-32(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB71_64
# BB#62:                                # %land.lhs.true.247
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB71_64
# BB#63:                                # %cond.true.251
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB71_65
.LBB71_64:                              # %cond.false.255
	xorl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB71_65
.LBB71_65:                              # %cond.end.256
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB71_67
.LBB71_66:                              # %cond.false.258
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB71_67:                              # %cond.end.262
	movl	-192(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB71_68:                              # %cond.end.265
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB71_70
.LBB71_69:                              # %cond.false.267
	xorl	%eax, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB71_70
.LBB71_70:                              # %cond.end.268
	movl	-196(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	window_text_bottom_y
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-200(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	list4i
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB71_72
.LBB71_71:                              # %cond.false.273
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB71_72:                              # %cond.end.275
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_73:                              # %if.end.277
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB71_75
# BB#74:                                # %cond.true.282
	jmp	.LBB71_76
.LBB71_75:                              # %cond.false.283
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB71_76:                              # %cond.end.285
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	236(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB71_78
# BB#77:                                # %cond.true.293
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB71_79
.LBB71_78:                              # %cond.false.297
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB71_79:                              # %cond.end.300
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB71_80
	jmp	.LBB71_86
.LBB71_80:                              # %cond.true.311
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movw	468(%rdx), %si
	andw	$1, %si
	testw	$1, %si
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jne	.LBB71_85
# BB#81:                                # %land.lhs.true.316
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jne	.LBB71_85
# BB#82:                                # %land.lhs.true.322
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movq	208(%rdx), %rdx
	shrq	$14, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -241(%rbp)         # 1-byte Spill
	je	.LBB71_85
# BB#83:                                # %land.lhs.true.331
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-256(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -241(%rbp)         # 1-byte Spill
	je	.LBB71_85
# BB#84:                                # %land.rhs
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	setg	%dl
	movb	%dl, -241(%rbp)         # 1-byte Spill
.LBB71_85:                              # %land.end
	movb	-241(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB71_87
.LBB71_86:                              # %cond.false.344
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB71_87
.LBB71_87:                              # %cond.end.345
	movl	-260(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$1, %esi
	cmpl	$0, %eax
	cmovnel	%esi, %ecx
	movslq	%ecx, %rdi
	subq	%rdi, %rdx
	shlq	$8, %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	addq	%rdx, %rdi
	movq	%rdi, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	window_text_bottom_y
	movl	%eax, -60(%rbp)
	movl	$0, -68(%rbp)
.LBB71_88:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	jl	.LBB71_90
# BB#89:                                # %lor.lhs.false.354
                                        #   in Loop: Header=BB71_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	cmpq	-80(%rbp), %rdx
	movb	%cl, -261(%rbp)         # 1-byte Spill
	jge	.LBB71_93
.LBB71_90:                              # %land.lhs.true.358
                                        #   in Loop: Header=BB71_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-56(%rbp), %rdx
	movb	%cl, -261(%rbp)         # 1-byte Spill
	ja	.LBB71_93
# BB#91:                                # %land.lhs.true.361
                                        #   in Loop: Header=BB71_88 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	236(%rdx), %rdx
	shrq	$10, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -261(%rbp)         # 1-byte Spill
	je	.LBB71_93
# BB#92:                                # %land.rhs.368
                                        #   in Loop: Header=BB71_88 Depth=1
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	60(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	setl	%dl
	movb	%dl, -261(%rbp)         # 1-byte Spill
.LBB71_93:                              # %land.end.373
                                        #   in Loop: Header=BB71_88 Depth=1
	movb	-261(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB71_94
	jmp	.LBB71_95
.LBB71_94:                              # %while.body
                                        #   in Loop: Header=BB71_88 Depth=1
	movq	-48(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB71_88
.LBB71_95:                              # %while.end
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.LBB71_97
# BB#96:                                # %lor.lhs.false.377
	movq	-48(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB71_98
.LBB71_97:                              # %if.then.383
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_98:                              # %if.end.385
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, %rax
	jge	.LBB71_102
# BB#99:                                # %if.then.389
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-80(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	cmpq	%rdx, %rcx
	jle	.LBB71_101
# BB#100:                               # %if.then.394
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_110
.LBB71_101:                             # %if.end.396
	movq	-80(%rbp), %rax
	shlq	$8, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movslq	-68(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -68(%rbp)
.LBB71_102:                             # %if.end.401
	jmp	.LBB71_103
.LBB71_103:                             # %found_row
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-48(%rbp), %rcx
	addl	60(%rcx), %edx
	subl	-60(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB71_105
# BB#104:                               # %cond.true.408
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB71_106
.LBB71_105:                             # %cond.false.409
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	60(%rax), %ecx
	subl	-60(%rbp), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB71_106:                             # %cond.end.414
	movl	-268(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdx
	movl	60(%rdx), %eax
	movq	-48(%rbp), %rdx
	cmpl	48(%rdx), %ecx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jge	.LBB71_108
# BB#107:                               # %cond.true.420
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB71_109
.LBB71_108:                             # %cond.false.421
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB71_109:                             # %cond.end.423
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	-272(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	-64(%rbp), %ecx
	movslq	%ecx, %rdi
	movslq	-68(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movslq	48(%rdx), %rdx
	movslq	-64(%rbp), %rcx
	callq	list4i
	movq	%rax, -8(%rbp)
.LBB71_110:                             # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Fwindow_line_height, .Lfunc_end71-Fwindow_line_height
	.cfi_endproc

	.globl	Fwindow_dedicated_p
	.align	16, 0x90
	.type	Fwindow_dedicated_p,@function
Fwindow_dedicated_p:                    # @Fwindow_dedicated_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	160(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	Fwindow_dedicated_p, .Lfunc_end72-Fwindow_dedicated_p
	.cfi_endproc

	.globl	Fset_window_dedicated_p
	.align	16, 0x90
	.type	Fset_window_dedicated_p,@function
Fset_window_dedicated_p:                # @Fset_window_dedicated_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_dedicated
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Fset_window_dedicated_p, .Lfunc_end73-Fset_window_dedicated_p
	.cfi_endproc

	.align	16, 0x90
	.type	wset_dedicated,@function
wset_dedicated:                         # @wset_dedicated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 160(%rdi)
	popq	%rbp
	retq
.Lfunc_end74:
	.size	wset_dedicated, .Lfunc_end74-wset_dedicated
	.cfi_endproc

	.globl	Fwindow_prev_buffers
	.align	16, 0x90
	.type	Fwindow_prev_buffers,@function
Fwindow_prev_buffers:                   # @Fwindow_prev_buffers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	208(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	Fwindow_prev_buffers, .Lfunc_end75-Fwindow_prev_buffers
	.cfi_endproc

	.globl	Fset_window_prev_buffers
	.align	16, 0x90
	.type	Fset_window_prev_buffers,@function
Fset_window_prev_buffers:               # @Fset_window_prev_buffers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev_buffers
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fset_window_prev_buffers, .Lfunc_end76-Fset_window_prev_buffers
	.cfi_endproc

	.globl	Fwindow_next_buffers
	.align	16, 0x90
	.type	Fwindow_next_buffers,@function
Fwindow_next_buffers:                   # @Fwindow_next_buffers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	216(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Fwindow_next_buffers, .Lfunc_end77-Fwindow_next_buffers
	.cfi_endproc

	.globl	Fset_window_next_buffers
	.align	16, 0x90
	.type	Fset_window_next_buffers,@function
Fset_window_next_buffers:               # @Fset_window_next_buffers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_next_buffers
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fset_window_next_buffers, .Lfunc_end78-Fset_window_next_buffers
	.cfi_endproc

	.globl	Fwindow_parameters
	.align	16, 0x90
	.type	Fwindow_parameters,@function
Fwindow_parameters:                     # @Fwindow_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	184(%rax), %rdi
	callq	Fcopy_alist
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	Fwindow_parameters, .Lfunc_end79-Fwindow_parameters
	.cfi_endproc

	.globl	Fwindow_parameter
	.align	16, 0x90
	.type	Fwindow_parameter,@function
Fwindow_parameter:                      # @Fwindow_parameter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	decode_any_window
	movq	184(%rax), %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	Fassq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	CDR_SAFE
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	Fwindow_parameter, .Lfunc_end80-Fwindow_parameter
	.cfi_endproc

	.globl	Fset_window_parameter
	.align	16, 0x90
	.type	Fset_window_parameter,@function
Fset_window_parameter:                  # @Fset_window_parameter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_any_window
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	184(%rax), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB81_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_window_parameters
	jmp	.LBB81_3
.LBB81_2:                               # %if.else
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fsetcdr
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB81_3:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	Fset_window_parameter, .Lfunc_end81-Fset_window_parameter
	.cfi_endproc

	.align	16, 0x90
	.type	wset_window_parameters,@function
wset_window_parameters:                 # @wset_window_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 184(%rdi)
	popq	%rbp
	retq
.Lfunc_end82:
	.size	wset_window_parameters, .Lfunc_end82-wset_window_parameters
	.cfi_endproc

	.globl	Fwindow_display_table
	.align	16, 0x90
	.type	Fwindow_display_table,@function
Fwindow_display_table:                  # @Fwindow_display_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	152(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fwindow_display_table, .Lfunc_end83-Fwindow_display_table
	.cfi_endproc

	.globl	window_display_table
	.align	16, 0x90
	.type	window_display_table,@function
window_display_table:                   # @window_display_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB84_1
	jmp	.LBB84_4
.LBB84_1:                               # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB84_4
# BB#2:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB84_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -16(%rbp)
	jmp	.LBB84_16
.LBB84_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB84_5
	jmp	.LBB84_15
.LBB84_5:                               # %if.then.12
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB84_6
	jmp	.LBB84_9
.LBB84_6:                               # %land.lhs.true.16
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB84_9
# BB#7:                                 # %land.lhs.true.22
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB84_9
# BB#8:                                 # %if.then.27
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -16(%rbp)
	jmp	.LBB84_14
.LBB84_9:                               # %if.else.30
	movq	globals+2200, %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB84_10
	jmp	.LBB84_13
.LBB84_10:                              # %land.lhs.true.32
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movl	$346, %edi              # imm = 0x15A
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB84_13
# BB#11:                                # %land.lhs.true.37
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, %rdi
	callq	CHAR_TABLE_EXTRA_SLOTS
	cmpl	$6, %eax
	jne	.LBB84_13
# BB#12:                                # %if.then.41
	movq	globals+2200, %rdi
	callq	XCHAR_TABLE
	movq	%rax, -16(%rbp)
.LBB84_13:                              # %if.end
	jmp	.LBB84_14
.LBB84_14:                              # %if.end.43
	jmp	.LBB84_15
.LBB84_15:                              # %if.end.44
	jmp	.LBB84_16
.LBB84_16:                              # %if.end.45
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	window_display_table, .Lfunc_end84-window_display_table
	.cfi_endproc

	.globl	Fset_window_display_table
	.align	16, 0x90
	.type	Fset_window_display_table,@function
Fset_window_display_table:              # @Fset_window_display_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_display_table
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	Fset_window_display_table, .Lfunc_end85-Fset_window_display_table
	.cfi_endproc

	.align	16, 0x90
	.type	wset_display_table,@function
wset_display_table:                     # @wset_display_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end86:
	.size	wset_display_table, .Lfunc_end86-wset_display_table
	.cfi_endproc

	.globl	window_list
	.align	16, 0x90
	.type	window_list,@function
window_list:                            # @window_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	Vwindow_list, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB87_8
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vwindow_list
	movq	Vframe_list, %rax
	movq	%rax, -8(%rbp)
.LBB87_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB87_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB87_2 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB87_4:                               # %land.end
                                        #   in Loop: Header=BB87_2 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB87_5
	jmp	.LBB87_7
.LBB87_5:                               # %for.body
                                        #   in Loop: Header=BB87_2 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$add_window_to_list, %rsi
	leaq	-24(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	foreach_window
	movq	-24(%rbp), %rdi
	callq	Fnreverse
	movl	$2, %r8d
	movl	%r8d, %edi
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	Vwindow_list, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	Fnconc
	movq	%rax, Vwindow_list
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB87_2 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB87_2
.LBB87_7:                               # %for.end
	jmp	.LBB87_8
.LBB87_8:                               # %if.end
	movq	Vwindow_list, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	window_list, .Lfunc_end87-window_list
	.cfi_endproc

	.align	16, 0x90
	.type	add_window_to_list,@function
add_window_to_list:                     # @add_window_to_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	Fcons
	movb	$1, %cl
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	add_window_to_list, .Lfunc_end88-add_window_to_list
	.cfi_endproc

	.globl	Fnext_window
	.align	16, 0x90
	.type	Fnext_window,@function
Fnext_window:                           # @Fnext_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	next_window
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	Fnext_window, .Lfunc_end89-Fnext_window
	.cfi_endproc

	.align	16, 0x90
	.type	next_window,@function
next_window:                            # @next_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	%cl, %al
	leaq	-16(%rbp), %r8
	leaq	-24(%rbp), %r9
	leaq	-32(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	callq	decode_next_window_args
	movq	-32(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB90_1
	jmp	.LBB90_3
.LBB90_1:                               # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	8(%rax), %rdi
	je	.LBB90_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	Fframe_first_window
	movq	%rax, -8(%rbp)
	jmp	.LBB90_40
.LBB90_3:                               # %if.end
	testb	$1, -33(%rbp)
	je	.LBB90_25
# BB#4:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	window_list
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmemq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_12
# BB#5:                                 # %if.then.8
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB90_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB90_6 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	candidate_window_p
	testb	$1, %al
	jne	.LBB90_8
	jmp	.LBB90_9
.LBB90_8:                               # %if.then.15
	jmp	.LBB90_11
.LBB90_9:                               # %if.end.16
                                        #   in Loop: Header=BB90_6 Depth=1
	jmp	.LBB90_10
.LBB90_10:                              # %for.inc
                                        #   in Loop: Header=BB90_6 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_6
.LBB90_11:                              # %for.end
	jmp	.LBB90_12
.LBB90_12:                              # %if.end.20
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB90_22
# BB#13:                                # %if.then.25
	movq	Vwindow_list, %rax
	movq	%rax, -48(%rbp)
.LBB90_14:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB90_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB90_14 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB90_16:                              # %land.end
                                        #   in Loop: Header=BB90_14 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_17
	jmp	.LBB90_21
.LBB90_17:                              # %for.body.35
                                        #   in Loop: Header=BB90_14 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	candidate_window_p
	testb	$1, %al
	jne	.LBB90_18
	jmp	.LBB90_19
.LBB90_18:                              # %if.then.39
	jmp	.LBB90_21
.LBB90_19:                              # %if.end.40
                                        #   in Loop: Header=BB90_14 Depth=1
	jmp	.LBB90_20
.LBB90_20:                              # %for.inc.41
                                        #   in Loop: Header=BB90_14 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_14
.LBB90_21:                              # %for.end.45
	jmp	.LBB90_22
.LBB90_22:                              # %if.end.46
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_24
# BB#23:                                # %if.then.51
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB90_24:                              # %if.end.54
	jmp	.LBB90_39
.LBB90_25:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	callq	window_list
	movq	%rax, -64(%rbp)
.LBB90_26:                              # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB90_36
# BB#27:                                # %for.body.63
                                        #   in Loop: Header=BB90_26 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB90_31
# BB#28:                                # %if.then.68
                                        #   in Loop: Header=BB90_26 Depth=1
	movq	-56(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB90_29
	jmp	.LBB90_30
.LBB90_29:                              # %if.then.70
	jmp	.LBB90_36
.LBB90_30:                              # %if.end.71
                                        #   in Loop: Header=BB90_26 Depth=1
	jmp	.LBB90_34
.LBB90_31:                              # %if.else.72
                                        #   in Loop: Header=BB90_26 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	candidate_window_p
	testb	$1, %al
	jne	.LBB90_32
	jmp	.LBB90_33
.LBB90_32:                              # %if.then.76
                                        #   in Loop: Header=BB90_26 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB90_33:                              # %if.end.79
                                        #   in Loop: Header=BB90_26 Depth=1
	jmp	.LBB90_34
.LBB90_34:                              # %if.end.80
                                        #   in Loop: Header=BB90_26 Depth=1
	jmp	.LBB90_35
.LBB90_35:                              # %for.inc.81
                                        #   in Loop: Header=BB90_26 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB90_26
.LBB90_36:                              # %for.end.85
	movq	-56(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB90_37
	jmp	.LBB90_38
.LBB90_37:                              # %if.then.87
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB90_38:                              # %if.end.88
	jmp	.LBB90_39
.LBB90_39:                              # %if.end.89
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB90_40:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	next_window, .Lfunc_end90-next_window
	.cfi_endproc

	.globl	Fprevious_window
	.align	16, 0x90
	.type	Fprevious_window,@function
Fprevious_window:                       # @Fprevious_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	next_window
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	Fprevious_window, .Lfunc_end91-Fprevious_window
	.cfi_endproc

	.globl	Fwindow_list
	.align	16, 0x90
	.type	Fwindow_list,@function
Fwindow_list:                           # @Fwindow_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB92_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB92_2
	jmp	.LBB92_3
.LBB92_2:                               # %cond.true
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB92_4
.LBB92_3:                               # %cond.false
	movq	selected_window, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB92_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
.LBB92_5:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	CHECK_WINDOW
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB92_7
# BB#6:                                 # %if.then.4
	movq	selected_frame, %rax
	movq	%rax, -8(%rbp)
.LBB92_7:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpq	8(%rax), %rdi
	je	.LBB92_9
# BB#8:                                 # %if.then.9
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB92_9:                               # %if.end.10
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	window_list_1
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	Fwindow_list, .Lfunc_end92-Fwindow_list
	.cfi_endproc

	.align	16, 0x90
	.type	window_list_1,@function
window_list_1:                          # @window_list_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	decode_next_window_args
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	callq	window_list
	movq	%rax, -32(%rbp)
.LBB93_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB93_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	candidate_window_p
	testb	$1, %al
	jne	.LBB93_3
	jmp	.LBB93_4
.LBB93_3:                               # %if.then
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB93_4:                               # %if.end
                                        #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_5
.LBB93_5:                               # %for.inc
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB93_1
.LBB93_6:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB93_13
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB93_13
# BB#8:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB93_9:                               # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB93_10
	jmp	.LBB93_12
.LBB93_10:                              # %for.body.22
                                        #   in Loop: Header=BB93_9 Depth=1
	jmp	.LBB93_11
.LBB93_11:                              # %for.inc.23
                                        #   in Loop: Header=BB93_9 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB93_9
.LBB93_12:                              # %for.end.27
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	nconc2
	movq	%rax, -40(%rbp)
.LBB93_13:                              # %if.end.30
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	window_list_1, .Lfunc_end93-window_list_1
	.cfi_endproc

	.globl	Fwindow_list_1
	.align	16, 0x90
	.type	Fwindow_list_1,@function
Fwindow_list_1:                         # @Fwindow_list_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	window_list_1
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	Fwindow_list_1, .Lfunc_end94-Fwindow_list_1
	.cfi_endproc

	.globl	check_all_windows
	.align	16, 0x90
	.type	check_all_windows,@function
check_all_windows:                      # @check_all_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %edi
	movl	$1, %edx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movq	%rax, %rcx
	callq	window_loop
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	check_all_windows, .Lfunc_end95-check_all_windows
	.cfi_endproc

	.align	16, 0x90
	.type	window_loop,@function
window_loop:                            # @window_loop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movb	%dl, %al
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%rcx, -40(%rbp)
	movb	$0, -73(%rbp)
	movq	-40(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB96_1
	jmp	.LBB96_2
.LBB96_1:                               # %if.then
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB96_10
.LBB96_2:                               # %if.else
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB96_8
# BB#3:                                 # %if.then.2
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB96_4
	jmp	.LBB96_6
.LBB96_4:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB96_6
# BB#5:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB96_7
.LBB96_6:                               # %cond.false
	callq	emacs_abort
.LBB96_7:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB96_9
.LBB96_8:                               # %if.else.7
	movq	$0, -88(%rbp)
.LBB96_9:                               # %if.end
	jmp	.LBB96_10
.LBB96_10:                              # %if.end.8
	cmpq	$0, -88(%rbp)
	je	.LBB96_12
# BB#11:                                # %if.then.9
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	jmp	.LBB96_19
.LBB96_12:                              # %if.else.11
	cmpq	$2, -40(%rbp)
	jne	.LBB96_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB96_18
.LBB96_14:                              # %if.else.14
	movl	$1005, %edi             # imm = 0x3ED
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB96_16
# BB#15:                                # %if.then.17
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB96_17
.LBB96_16:                              # %if.else.18
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
.LBB96_17:                              # %if.end.20
	jmp	.LBB96_18
.LBB96_18:                              # %if.end.21
	jmp	.LBB96_19
.LBB96_19:                              # %if.end.22
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB96_20
	jmp	.LBB96_21
.LBB96_20:                              # %if.then.24
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB96_29
.LBB96_21:                              # %if.else.25
	cmpq	$0, -88(%rbp)
	je	.LBB96_23
# BB#22:                                # %if.then.27
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB96_28
.LBB96_23:                              # %if.else.28
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB96_24
	jmp	.LBB96_26
.LBB96_24:                              # %land.lhs.true.30
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB96_26
# BB#25:                                # %cond.true.34
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB96_27
.LBB96_26:                              # %cond.false.36
	callq	emacs_abort
.LBB96_27:                              # %cond.end.37
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	48(%rax), %rcx
	movq	%rcx, -48(%rbp)
.LBB96_28:                              # %if.end.40
	jmp	.LBB96_29
.LBB96_29:                              # %if.end.41
	movq	-48(%rbp), %rdi
	testb	$1, -25(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	je	.LBB96_31
# BB#30:                                # %cond.true.43
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB96_32
.LBB96_31:                              # %cond.false.45
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB96_32:                              # %cond.end.47
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_list_1
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB96_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB96_79
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB96_38
# BB#35:                                # %lor.lhs.false
                                        #   in Loop: Header=BB96_33 Depth=1
	cmpl	$2, -12(%rbp)
	je	.LBB96_38
# BB#36:                                # %lor.lhs.false.58
                                        #   in Loop: Header=BB96_33 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB96_77
# BB#37:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB96_33 Depth=1
	cmpq	$0, minibuf_level
	jle	.LBB96_77
.LBB96_38:                              # %if.then.64
                                        #   in Loop: Header=BB96_33 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	ja	.LBB96_76
# BB#81:                                # %if.then.64
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI96_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB96_39:                              # %sw.bb
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB96_52
# BB#40:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB96_42
# BB#41:                                # %lor.lhs.false.72
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-48(%rbp), %rax
	cmpq	minibuf_window, %rax
	jne	.LBB96_52
.LBB96_42:                              # %if.then.75
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-48(%rbp), %rax
	cmpq	selected_window, %rax
	jne	.LBB96_44
# BB#43:                                # %if.then.78
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB96_80
.LBB96_44:                              # %if.else.79
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	cmpq	selected_frame, %rax
	jne	.LBB96_47
# BB#45:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB96_33 Depth=1
	testb	$1, -73(%rbp)
	jne	.LBB96_47
# BB#46:                                # %if.then.85
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$1, -73(%rbp)
	jmp	.LBB96_50
.LBB96_47:                              # %if.else.86
                                        #   in Loop: Header=BB96_33 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB96_49
# BB#48:                                # %if.then.90
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB96_49:                              # %if.end.91
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_50
.LBB96_50:                              # %if.end.92
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_51
.LBB96_51:                              # %if.end.93
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_52
.LBB96_52:                              # %if.end.94
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_76
.LBB96_53:                              # %sw.bb.95
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB96_58
# BB#54:                                # %if.then.99
                                        #   in Loop: Header=BB96_33 Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_dedicated
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	other_buffer_safely
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	set_window_buffer
	movq	-48(%rbp), %rax
	cmpq	selected_window, %rax
	jne	.LBB96_57
# BB#55:                                # %land.lhs.true.105
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB96_57
# BB#56:                                # %if.then.110
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB96_57:                              # %if.end.113
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_58
.LBB96_58:                              # %if.end.114
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_76
.LBB96_59:                              # %sw.bb.115
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB96_61
# BB#60:                                # %if.then.119
                                        #   in Loop: Header=BB96_33 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	mark_window_display_accurate
	movq	-96(%rbp), %rdi
	movw	468(%rdi), %ax
	andw	$-5, %ax
	orw	$4, %ax
	movw	%ax, 468(%rdi)
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
	movl	$27, update_mode_lines
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB96_61:                              # %if.end.126
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_76
.LBB96_62:                              # %sw.bb.127
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB96_63
	jmp	.LBB96_74
.LBB96_63:                              # %if.then.130
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB96_65
# BB#64:                                # %if.then.136
	callq	emacs_abort
.LBB96_65:                              # %if.end.137
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	88(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB96_68
# BB#66:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB96_68
# BB#67:                                # %lor.lhs.false.147
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB96_69
.LBB96_68:                              # %if.then.152
	callq	emacs_abort
.LBB96_69:                              # %if.end.153
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB96_72
# BB#70:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	96(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB96_72
# BB#71:                                # %lor.lhs.false.163
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-96(%rbp), %rax
	movq	96(%rax), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB96_73
.LBB96_72:                              # %if.then.169
	callq	emacs_abort
.LBB96_73:                              # %if.end.170
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_74
.LBB96_74:                              # %if.end.171
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_76
.LBB96_75:                              # %sw.bb.172
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_76
.LBB96_76:                              # %sw.epilog
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_77
.LBB96_77:                              # %if.end.173
                                        #   in Loop: Header=BB96_33 Depth=1
	jmp	.LBB96_78
.LBB96_78:                              # %for.inc
                                        #   in Loop: Header=BB96_33 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB96_33
.LBB96_79:                              # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB96_80:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	window_loop, .Lfunc_end96-window_loop
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI96_0:
	.quad	.LBB96_75
	.quad	.LBB96_39
	.quad	.LBB96_53
	.quad	.LBB96_59
	.quad	.LBB96_62

	.text
	.globl	Fget_buffer_window
	.align	16, 0x90
	.type	Fget_buffer_window,@function
Fget_buffer_window:                     # @Fget_buffer_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB97_2
# BB#1:                                 # %if.then
	callq	Fcurrent_buffer
	movq	%rax, -32(%rbp)
	jmp	.LBB97_3
.LBB97_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -32(%rbp)
.LBB97_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB97_4
	jmp	.LBB97_5
.LBB97_4:                               # %if.then.4
	movl	$1, %eax
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, %edi
	movl	%eax, %edx
	callq	window_loop
	movq	%rax, -8(%rbp)
	jmp	.LBB97_6
.LBB97_5:                               # %if.else.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB97_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	Fget_buffer_window, .Lfunc_end97-Fget_buffer_window
	.cfi_endproc

	.globl	Fwindow__sanitize_window_sizes
	.align	16, 0x90
	.type	Fwindow__sanitize_window_sizes,@function
Fwindow__sanitize_window_sizes:         # @Fwindow__sanitize_window_sizes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	Fwindow__sanitize_window_sizes, .Lfunc_end98-Fwindow__sanitize_window_sizes
	.cfi_endproc

	.globl	sanitize_window_sizes
	.align	16, 0x90
	.type	sanitize_window_sizes,@function
sanitize_window_sizes:                  # @sanitize_window_sizes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1032, %eax             # imm = 0x408
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	call2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	sanitize_window_sizes, .Lfunc_end99-sanitize_window_sizes
	.cfi_endproc

	.globl	Fdelete_other_windows_internal
	.align	16, 0x90
	.type	Fdelete_other_windows_internal,@function
Fdelete_other_windows_internal:         # @Fdelete_other_windows_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_valid_window
	movl	$5, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB100_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	jmp	.LBB100_11
.LBB100_2:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	decode_valid_window
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB100_3:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB100_4
	jmp	.LBB100_8
.LBB100_4:                              # %while.body
                                        #   in Loop: Header=BB100_3 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB100_6
# BB#5:                                 # %if.then.9
	jmp	.LBB100_8
.LBB100_6:                              # %if.else.10
                                        #   in Loop: Header=BB100_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	XWINDOW
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB100_3 Depth=1
	jmp	.LBB100_3
.LBB100_8:                              # %while.end
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB100_10
# BB#9:                                 # %if.then.14
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB100_10:                             # %if.end.15
	jmp	.LBB100_11
.LBB100_11:                             # %if.end.16
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB100_13
# BB#12:                                # %if.then.18
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB100_96
.LBB100_13:                             # %if.else.20
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB100_15
# BB#14:                                # %if.then.21
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB100_15:                             # %if.end.22
	jmp	.LBB100_16
.LBB100_16:                             # %if.end.23
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB100_17
	jmp	.LBB100_23
.LBB100_17:                             # %if.then.25
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	356(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	addl	216(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -108(%rbp)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdi
	cmpq	48(%rdi), %rax
	je	.LBB100_22
# BB#18:                                # %if.then.35
	movq	selected_frame, %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB100_20
# BB#19:                                # %if.then.38
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB100_21
.LBB100_20:                             # %if.else.41
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_selected_window
.LBB100_21:                             # %if.end.42
	jmp	.LBB100_22
.LBB100_22:                             # %if.end.43
	jmp	.LBB100_39
.LBB100_23:                             # %if.else.44
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB100_24:                             # %while.body.47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB100_25 Depth 2
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB100_25:                             # %while.cond.48
                                        #   Parent Loop BB100_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-224(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -225(%rbp)         # 1-byte Spill
	je	.LBB100_27
# BB#26:                                # %land.rhs
                                        #   in Loop: Header=BB100_25 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB100_27:                             # %land.end
                                        #   in Loop: Header=BB100_25 Depth=2
	movb	-225(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB100_28
	jmp	.LBB100_29
.LBB100_28:                             # %while.body.53
                                        #   in Loop: Header=BB100_25 Depth=2
	movq	-72(%rbp), %rdi
	callq	XWINDOW
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB100_25
.LBB100_29:                             # %while.end.56
                                        #   in Loop: Header=BB100_24 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB100_31
# BB#30:                                # %if.then.58
	jmp	.LBB100_33
.LBB100_31:                             # %if.else.59
                                        #   in Loop: Header=BB100_24 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fprevious_window
	movq	%rax, -80(%rbp)
# BB#32:                                # %if.end.63
                                        #   in Loop: Header=BB100_24 Depth=1
	jmp	.LBB100_24
.LBB100_33:                             # %while.end.64
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	48(%rcx), %rax
	je	.LBB100_38
# BB#34:                                # %if.then.67
	movq	selected_frame, %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB100_36
# BB#35:                                # %if.then.70
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB100_37
.LBB100_36:                             # %if.else.73
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	fset_selected_window
.LBB100_37:                             # %if.end.74
	jmp	.LBB100_38
.LBB100_38:                             # %if.end.75
	jmp	.LBB100_39
.LBB100_39:                             # %if.end.76
	callq	block_input
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB100_46
# BB#40:                                # %if.then.81
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB100_42
# BB#41:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB100_43
.LBB100_42:                             # %cond.false
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB100_43:                             # %cond.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB100_45
# BB#44:                                # %if.then.92
	movq	-120(%rbp), %rdi
	callq	reset_mouse_highlight
.LBB100_45:                             # %if.end.93
	jmp	.LBB100_46
.LBB100_46:                             # %if.end.94
	movq	-40(%rbp), %rdi
	callq	free_window_matrices
	movq	-56(%rbp), %rdi
	callq	fset_redisplay
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vwindow_list
	movq	-56(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 208(%rax)
	movb	$0, -121(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB100_64
# BB#47:                                # %if.then.100
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	260(%rax), %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-40(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	resize_root_window
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB100_48
	jmp	.LBB100_49
.LBB100_48:                             # %if.then.112
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_apply
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_pixel_to_total
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB100_53
.LBB100_49:                             # %if.else.116
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	resize_root_window
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB100_50
	jmp	.LBB100_51
.LBB100_50:                             # %if.then.122
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_apply
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_pixel_to_total
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB100_52
.LBB100_51:                             # %if.else.126
	movb	$1, -121(%rbp)
.LBB100_52:                             # %if.end.127
	jmp	.LBB100_53
.LBB100_53:                             # %if.end.128
	testb	$1, -121(%rbp)
	jne	.LBB100_61
# BB#54:                                # %if.then.129
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movl	248(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 248(%rax)
	movq	-40(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-40(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	256(%rax), %ecx
	movslq	%ecx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	resize_root_window
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB100_55
	jmp	.LBB100_56
.LBB100_55:                             # %if.then.142
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_apply
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_pixel_to_total
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB100_60
.LBB100_56:                             # %if.else.146
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	resize_root_window
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB100_57
	jmp	.LBB100_58
.LBB100_57:                             # %if.then.152
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_apply
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_pixel_to_total
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB100_59
.LBB100_58:                             # %if.else.156
	movb	$1, -121(%rbp)
.LBB100_59:                             # %if.end.157
	jmp	.LBB100_60
.LBB100_60:                             # %if.end.158
	jmp	.LBB100_61
.LBB100_61:                             # %if.end.159
	testb	$1, -121(%rbp)
	je	.LBB100_63
# BB#62:                                # %if.then.161
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
.LBB100_63:                             # %if.end.163
	jmp	.LBB100_64
.LBB100_64:                             # %if.end.164
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB100_68
# BB#65:                                # %if.then.168
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB100_67
# BB#66:                                # %if.then.175
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev
.LBB100_67:                             # %if.end.178
	jmp	.LBB100_69
.LBB100_68:                             # %if.else.179
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_prev
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movq	-64(%rbp), %rdx
	andw	$1, %cx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movzwl	%cx, %esi
	callq	wset_combination
.LBB100_69:                             # %if.end.191
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB100_70
	jmp	.LBB100_71
.LBB100_70:                             # %if.then.194
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	delete_all_child_windows
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	wset_combination
.LBB100_71:                             # %if.end.197
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	replace_window
	movq	-32(%rbp), %rsi
	movq	80(%rsi), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB100_72
	jmp	.LBB100_95
.LBB100_72:                             # %land.lhs.true
	testb	$1, -121(%rbp)
	jne	.LBB100_95
# BB#73:                                # %if.then.202
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	356(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	addl	216(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -112(%rbp)
	movl	-112(%rbp), %ecx
	cmpl	-108(%rbp), %ecx
	je	.LBB100_94
# BB#74:                                # %land.lhs.true.214
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB100_76
# BB#75:                                # %cond.true.219
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB100_80
.LBB100_76:                             # %cond.false.220
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB100_78
# BB#77:                                # %cond.true.226
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB100_79
.LBB100_78:                             # %cond.false.230
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB100_79:                             # %cond.end.235
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB100_80:                             # %cond.end.237
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB100_94
# BB#81:                                # %land.lhs.true.241
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB100_83
# BB#82:                                # %cond.true.246
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB100_87
.LBB100_83:                             # %cond.false.247
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB100_85
# BB#84:                                # %cond.true.253
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB100_86
.LBB100_85:                             # %cond.false.257
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB100_86:                             # %cond.end.262
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB100_87:                             # %cond.end.264
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB100_94
# BB#88:                                # %if.then.268
	movq	current_buffer, %rax
	movq	%rax, -184(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	Fset_buffer
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	subl	-108(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	vmotion
	movl	$48, %r8d
	movl	%r8d, %edx
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rcx
	callq	set_marker_both
	movb	$1, %r9b
	movq	-32(%rbp), %rcx
	movw	468(%rcx), %r10w
	andw	$-8193, %r10w           # imm = 0xFFFFFFFFFFFFDFFF
	movw	%r10w, 468(%rcx)
	movq	-168(%rbp), %rcx
	movq	current_buffer, %rdx
	cmpq	760(%rdx), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movb	%r9b, -617(%rbp)        # 1-byte Spill
	je	.LBB100_93
# BB#89:                                # %lor.rhs
	movq	-168(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB100_91
# BB#90:                                # %cond.true.286
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB100_92
.LBB100_91:                             # %cond.false.288
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB100_92
.LBB100_92:                             # %cond.end.289
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	sete	%sil
	movb	%sil, -617(%rbp)        # 1-byte Spill
.LBB100_93:                             # %lor.end
	movb	-617(%rbp), %al         # 1-byte Reload
	movq	-32(%rbp), %rcx
	movzbl	%al, %edx
	andl	$1, %edx
	movw	%dx, %si
	movw	468(%rcx), %di
	shlw	$4, %si
	andw	$-17, %di
	orw	%si, %di
	movw	%di, 468(%rcx)
	movq	-32(%rbp), %rcx
	movw	468(%rcx), %si
	andw	$-65, %si
	orw	$64, %si
	movw	%si, 468(%rcx)
	movq	-184(%rbp), %rdi
	callq	set_buffer_internal
.LBB100_94:                             # %if.end.306
	jmp	.LBB100_95
.LBB100_95:                             # %if.end.307
	movq	-56(%rbp), %rdi
	callq	adjust_frame_glyphs
	callq	unblock_input
	movq	-56(%rbp), %rdi
	callq	run_window_configuration_change_hook
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB100_96:                             # %return
	movq	-8(%rbp), %rax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end100:
	.size	Fdelete_other_windows_internal, .Lfunc_end100-Fdelete_other_windows_internal
	.cfi_endproc

	.align	16, 0x90
	.type	resize_root_window,@function
resize_root_window:                     # @resize_root_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1030, %eax             # imm = 0x406
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%rax, %rdi
	callq	call5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	resize_root_window, .Lfunc_end101-resize_root_window
	.cfi_endproc

	.align	16, 0x90
	.type	window_resize_check,@function
window_resize_check:                    # @window_resize_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB102_1
	jmp	.LBB102_24
.LBB102_1:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB102_24
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB102_13
# BB#3:                                 # %if.then.3
	jmp	.LBB102_4
.LBB102_4:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB102_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB102_4 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB102_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB102_4 Depth=1
	movq	-40(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB102_8
.LBB102_7:                              # %if.then.9
	movb	$0, -1(%rbp)
	jmp	.LBB102_52
.LBB102_8:                              # %if.end
                                        #   in Loop: Header=BB102_4 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB102_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB102_11
.LBB102_10:                             # %cond.false
                                        #   in Loop: Header=BB102_4 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB102_11:                             # %cond.end
                                        #   in Loop: Header=BB102_4 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB102_4
.LBB102_12:                             # %while.end
	movb	$1, -1(%rbp)
	jmp	.LBB102_52
.LBB102_13:                             # %if.else
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
.LBB102_14:                             # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB102_23
# BB#15:                                # %while.body.18
                                        #   in Loop: Header=BB102_14 Depth=1
	movq	-40(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB102_17
# BB#16:                                # %if.then.21
	movb	$0, -1(%rbp)
	jmp	.LBB102_52
.LBB102_17:                             # %if.end.22
                                        #   in Loop: Header=BB102_14 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movslq	-44(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB102_19
# BB#18:                                # %if.then.30
	movb	$0, -1(%rbp)
	jmp	.LBB102_52
.LBB102_19:                             # %if.end.31
                                        #   in Loop: Header=BB102_14 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_21
# BB#20:                                # %cond.true.36
                                        #   in Loop: Header=BB102_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB102_22
.LBB102_21:                             # %cond.false.37
                                        #   in Loop: Header=BB102_14 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB102_22:                             # %cond.end.40
                                        #   in Loop: Header=BB102_14 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB102_14
.LBB102_23:                             # %while.end.42
	cmpl	$0, -44(%rbp)
	sete	%al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB102_52
.LBB102_24:                             # %if.else.45
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB102_25
	jmp	.LBB102_48
.LBB102_25:                             # %land.lhs.true.49
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB102_48
# BB#26:                                # %if.then.56
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB102_38
# BB#27:                                # %if.then.60
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
.LBB102_28:                             # %while.cond.65
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB102_37
# BB#29:                                # %while.body.67
                                        #   in Loop: Header=BB102_28 Depth=1
	movq	-40(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB102_31
# BB#30:                                # %if.then.70
	movb	$0, -1(%rbp)
	jmp	.LBB102_52
.LBB102_31:                             # %if.end.71
                                        #   in Loop: Header=BB102_28 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movslq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jge	.LBB102_33
# BB#32:                                # %if.then.79
	movb	$0, -1(%rbp)
	jmp	.LBB102_52
.LBB102_33:                             # %if.end.80
                                        #   in Loop: Header=BB102_28 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_35
# BB#34:                                # %cond.true.85
                                        #   in Loop: Header=BB102_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB102_36
.LBB102_35:                             # %cond.false.86
                                        #   in Loop: Header=BB102_28 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB102_36:                             # %cond.end.89
                                        #   in Loop: Header=BB102_28 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB102_28
.LBB102_37:                             # %while.end.91
	cmpl	$0, -48(%rbp)
	sete	%al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB102_52
.LBB102_38:                             # %if.else.94
	jmp	.LBB102_39
.LBB102_39:                             # %while.cond.95
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB102_47
# BB#40:                                # %while.body.97
                                        #   in Loop: Header=BB102_39 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB102_42
# BB#41:                                # %lor.lhs.false.104
                                        #   in Loop: Header=BB102_39 Depth=1
	movq	-40(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB102_43
.LBB102_42:                             # %if.then.107
	movb	$0, -1(%rbp)
	jmp	.LBB102_52
.LBB102_43:                             # %if.end.108
                                        #   in Loop: Header=BB102_39 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_45
# BB#44:                                # %cond.true.113
                                        #   in Loop: Header=BB102_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB102_46
.LBB102_45:                             # %cond.false.114
                                        #   in Loop: Header=BB102_39 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB102_46:                             # %cond.end.117
                                        #   in Loop: Header=BB102_39 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB102_39
.LBB102_47:                             # %while.end.119
	movb	$1, -1(%rbp)
	jmp	.LBB102_52
.LBB102_48:                             # %if.else.120
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	testb	$1, -17(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB102_50
# BB#49:                                # %cond.true.125
	movq	-32(%rbp), %rax
	movl	364(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB102_51
.LBB102_50:                             # %cond.false.126
	movq	-32(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB102_51:                             # %cond.end.127
	movl	-124(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rcx, %rdx
	setge	%sil
	andb	$1, %sil
	movb	%sil, -1(%rbp)
.LBB102_52:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	window_resize_check, .Lfunc_end102-window_resize_check
	.cfi_endproc

	.align	16, 0x90
	.type	window_resize_apply,@function
window_resize_apply:                    # @window_resize_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB103_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	364(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB103_3
.LBB103_2:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB103_3:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB103_7
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-8(%rbp), %rax
	movl	256(%rax), %eax
	cltd
	idivl	-32(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, 264(%rsi)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB103_5
	jmp	.LBB103_6
.LBB103_5:                              # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	callq	wset_normal_cols
.LBB103_6:                              # %if.end
	movq	-8(%rbp), %rax
	movl	240(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB103_10
.LBB103_7:                              # %if.else
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-8(%rbp), %rax
	movl	260(%rax), %eax
	cltd
	idivl	-32(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, 268(%rsi)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB103_8
	jmp	.LBB103_9
.LBB103_8:                              # %if.then.14
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	callq	wset_normal_lines
.LBB103_9:                              # %if.end.16
	movq	-8(%rbp), %rax
	movl	244(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB103_10:                             # %if.end.17
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB103_11
	jmp	.LBB103_24
.LBB103_11:                             # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB103_24
# BB#12:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
.LBB103_13:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB103_23
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB103_13 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB103_16
# BB#15:                                # %if.then.25
                                        #   in Loop: Header=BB103_13 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 240(%rcx)
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 248(%rcx)
	jmp	.LBB103_17
.LBB103_16:                             # %if.else.28
                                        #   in Loop: Header=BB103_13 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 244(%rcx)
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 252(%rcx)
.LBB103_17:                             # %if.end.31
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-24(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply
	testb	$1, -9(%rbp)
	jne	.LBB103_19
# BB#18:                                # %if.then.34
                                        #   in Loop: Header=BB103_13 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	260(%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB103_19:                             # %if.end.36
                                        #   in Loop: Header=BB103_13 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB103_21
# BB#20:                                # %cond.true.39
                                        #   in Loop: Header=BB103_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB103_22
.LBB103_21:                             # %cond.false.40
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB103_22:                             # %cond.end.43
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB103_13
.LBB103_23:                             # %while.end
	jmp	.LBB103_40
.LBB103_24:                             # %if.else.45
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB103_25
	jmp	.LBB103_38
.LBB103_25:                             # %land.lhs.true.49
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB103_38
# BB#26:                                # %if.then.56
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
.LBB103_27:                             # %while.cond.59
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB103_37
# BB#28:                                # %while.body.61
                                        #   in Loop: Header=BB103_27 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB103_30
# BB#29:                                # %if.then.63
                                        #   in Loop: Header=BB103_27 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 240(%rcx)
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 248(%rcx)
	jmp	.LBB103_31
.LBB103_30:                             # %if.else.67
                                        #   in Loop: Header=BB103_27 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 244(%rcx)
	movl	-28(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 252(%rcx)
.LBB103_31:                             # %if.end.71
                                        #   in Loop: Header=BB103_27 Depth=1
	movq	-24(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply
	testb	$1, -9(%rbp)
	je	.LBB103_33
# BB#32:                                # %if.then.74
                                        #   in Loop: Header=BB103_27 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	256(%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB103_33:                             # %if.end.77
                                        #   in Loop: Header=BB103_27 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB103_35
# BB#34:                                # %cond.true.82
                                        #   in Loop: Header=BB103_27 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB103_36
.LBB103_35:                             # %cond.false.83
                                        #   in Loop: Header=BB103_27 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB103_36:                             # %cond.end.86
                                        #   in Loop: Header=BB103_27 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB103_27
.LBB103_37:                             # %while.end.88
	jmp	.LBB103_39
.LBB103_38:                             # %if.else.89
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-8193, %cx             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%cx, 468(%rax)
.LBB103_39:                             # %if.end.92
	jmp	.LBB103_40
.LBB103_40:                             # %if.end.93
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	window_resize_apply, .Lfunc_end103-window_resize_apply
	.cfi_endproc

	.align	16, 0x90
	.type	window_pixel_to_total,@function
window_pixel_to_total:                  # @window_pixel_to_total
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1028, %eax             # imm = 0x404
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	call2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	window_pixel_to_total, .Lfunc_end104-window_pixel_to_total
	.cfi_endproc

	.align	16, 0x90
	.type	wset_combination,@function
wset_combination:                       # @wset_combination
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, 80(%rdi)
	movq	-24(%rbp), %rdx
	movl	%esi, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB105_2
# BB#1:                                 # %if.then
	movzbl	-9(%rbp), %eax
	movw	%ax, %cx
	movb	%cl, %dl
	movq	-8(%rbp), %rsi
	andl	$1, %eax
	movw	%ax, %cx
	movw	468(%rsi), %di
	shlw	$1, %cx
	andw	$-3, %di
	orw	%cx, %di
	movw	%di, 468(%rsi)
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB105_2:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	wset_combination, .Lfunc_end105-wset_combination
	.cfi_endproc

	.globl	delete_all_child_windows
	.align	16, 0x90
	.type	delete_all_child_windows,@function
delete_all_child_windows:               # @delete_all_child_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB106_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	delete_all_child_windows
.LBB106_2:                              # %if.end
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB106_3
	jmp	.LBB106_4
.LBB106_3:                              # %if.then.4
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	delete_all_child_windows
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	wset_combination
	jmp	.LBB106_7
.LBB106_4:                              # %if.else
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB106_5
	jmp	.LBB106_6
.LBB106_5:                              # %if.then.9
	movq	-16(%rbp), %rdi
	callq	unshow_buffer
	movq	-16(%rbp), %rdi
	movq	96(%rdi), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rsi
	callq	wset_combination_limit
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_buffer
.LBB106_6:                              # %if.end.15
	jmp	.LBB106_7
.LBB106_7:                              # %if.end.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vwindow_list
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	delete_all_child_windows, .Lfunc_end106-delete_all_child_windows
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI107_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	replace_window,@function
replace_window:                         # @replace_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	cmpq	40(%rsi), %rax
	jne	.LBB107_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fset_root_window
.LBB107_2:                              # %if.end
	testb	$1, -17(%rbp)
	je	.LBB107_4
# BB#3:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-40(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-40(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-40(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-40(%rbp), %rax
	movl	248(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 248(%rax)
	movq	-40(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-40(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 264(%rax)
	movq	-40(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	wset_normal_cols
	movsd	.LCPI107_0, %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_normal_cols
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	wset_normal_lines
	movsd	.LCPI107_0, %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_normal_lines
	xorl	%ecx, %ecx
	movl	$16, %edx
	movl	%edx, %eax
	movq	-48(%rbp), %rsi
	movq	$0, 192(%rsi)
	movq	-48(%rbp), %rsi
	movq	$0, 200(%rsi)
	movq	-48(%rbp), %rsi
	movl	$0, 472(%rsi)
	movq	-48(%rbp), %rsi
	addq	$352, %rsi              # imm = 0x160
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	%rax, %rdx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	memset
	movq	-48(%rbp), %rax
	addq	$368, %rax              # imm = 0x170
	movq	%rax, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-48(%rbp), %rax
	movl	$0, 400(%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 404(%rax)
	movq	-48(%rbp), %rax
	movl	$-1, 408(%rax)
	movq	-48(%rbp), %rax
	movw	468(%rax), %r8w
	andw	$-1025, %r8w            # imm = 0xFFFFFFFFFFFFFBFF
	movw	%r8w, 468(%rax)
	movq	-48(%rbp), %rax
	movw	468(%rax), %r8w
	andw	$-2049, %r8w            # imm = 0xFFFFFFFFFFFFF7FF
	movw	%r8w, 468(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 464(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-48(%rbp), %rax
	movw	468(%rax), %r8w
	andw	$-8193, %r8w            # imm = 0xFFFFFFFFFFFFDFFF
	movw	%r8w, 468(%rax)
.LBB107_4:                              # %if.end.19
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB107_6
# BB#5:                                 # %if.then.22
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev
.LBB107_6:                              # %if.end.24
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	wset_prev
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB107_8
# BB#7:                                 # %if.then.27
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_next
.LBB107_8:                              # %if.end.29
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	wset_parent
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB107_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB107_11
# BB#10:                                # %if.then.34
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	-32(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movq	-16(%rbp), %rdx
	andw	$1, %cx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movzwl	%cx, %esi
	callq	wset_combination
.LBB107_11:                             # %if.end.39
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	replace_window, .Lfunc_end107-replace_window
	.cfi_endproc

	.globl	run_window_configuration_change_hook
	.align	16, 0x90
	.type	run_window_configuration_change_hook,@function
run_window_configuration_change_hook:   # @run_window_configuration_change_hook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movl	$1020, %edi             # imm = 0x3FC
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fdefault_value
	movl	$5, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	Vrun_hooks, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB108_3
# BB#2:                                 # %lor.lhs.false.5
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$35, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB108_4
.LBB108_3:                              # %if.then
	jmp	.LBB108_19
.LBB108_4:                              # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fwindow_buffer
	movq	%rax, %rdi
	callq	XBUFFER
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB108_6
# BB#5:                                 # %if.then.14
	callq	record_unwind_current_buffer
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fwindow_buffer
	movq	%rax, %rdi
	callq	Fset_buffer
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB108_6:                              # %if.end.18
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB108_7
	jmp	.LBB108_9
.LBB108_7:                              # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB108_9
# BB#8:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB108_10
.LBB108_9:                              # %cond.false
	callq	emacs_abort
.LBB108_10:                             # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpq	-8(%rbp), %rax
	je	.LBB108_12
# BB#11:                                # %if.then.23
	movabsq	$select_frame_norecord, %rdi
	movq	selected_frame, %rsi
	callq	record_unwind_protect
	movq	-24(%rbp), %rdi
	callq	select_frame_norecord
.LBB108_12:                             # %if.end.24
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fwindow_list
	movq	%rax, -40(%rbp)
.LBB108_13:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB108_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB108_13 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	Fwindow_buffer
	movl	$1020, %edi             # imm = 0x3FC
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB108_16
# BB#15:                                # %if.then.37
                                        #   in Loop: Header=BB108_13 Depth=1
	callq	SPECPDL_INDEX
	movabsq	$select_window_norecord, %rdi
	movq	%rax, -64(%rbp)
	movq	selected_window, %rsi
	callq	record_unwind_protect
	movq	-48(%rbp), %rdi
	callq	select_window_norecord
	movl	$1020, %edi             # imm = 0x3FC
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fbuffer_local_value
	movq	%rax, %rdi
	callq	run_funs
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB108_16:                             # %if.end.43
                                        #   in Loop: Header=BB108_13 Depth=1
	jmp	.LBB108_17
.LBB108_17:                             # %for.inc
                                        #   in Loop: Header=BB108_13 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB108_13
.LBB108_18:                             # %for.end
	movq	-32(%rbp), %rdi
	callq	run_funs
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB108_19:                             # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	run_window_configuration_change_hook, .Lfunc_end108-run_window_configuration_change_hook
	.cfi_endproc

	.globl	replace_buffer_in_windows
	.align	16, 0x90
	.type	replace_buffer_in_windows,@function
replace_buffer_in_windows:              # @replace_buffer_in_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$807, %eax              # imm = 0x327
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	replace_buffer_in_windows, .Lfunc_end109-replace_buffer_in_windows
	.cfi_endproc

	.globl	replace_buffer_in_windows_safely
	.align	16, 0x90
	.type	replace_buffer_in_windows_safely,@function
replace_buffer_in_windows_safely:       # @replace_buffer_in_windows_safely
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	buffer_window_count
	cmpl	$0, %eax
	je	.LBB110_8
# BB#1:                                 # %if.then
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB110_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB110_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB110_2 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB110_4:                              # %land.end
                                        #   in Loop: Header=BB110_2 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB110_5
	jmp	.LBB110_7
.LBB110_5:                              # %for.body
                                        #   in Loop: Header=BB110_2 Depth=1
	movl	$2, %edi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	window_loop
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB110_2 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB110_2
.LBB110_7:                              # %for.end
	jmp	.LBB110_8
.LBB110_8:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	replace_buffer_in_windows_safely, .Lfunc_end110-replace_buffer_in_windows_safely
	.cfi_endproc

	.align	16, 0x90
	.type	select_frame_norecord,@function
select_frame_norecord:                  # @select_frame_norecord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	cmpq	$0, 376(%rdi)
	je	.LBB111_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_frame
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB111_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	select_frame_norecord, .Lfunc_end111-select_frame_norecord
	.cfi_endproc

	.align	16, 0x90
	.type	select_window_norecord,@function
select_window_norecord:                 # @select_window_norecord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB112_1
	jmp	.LBB112_3
.LBB112_1:                              # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB112_2
	jmp	.LBB112_3
.LBB112_2:                              # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB112_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	select_window_norecord, .Lfunc_end112-select_window_norecord
	.cfi_endproc

	.align	16, 0x90
	.type	run_funs,@function
run_funs:                               # @run_funs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB113_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB113_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB113_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB113_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	call0
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB113_4:                              # %if.end
                                        #   in Loop: Header=BB113_1 Depth=1
	jmp	.LBB113_5
.LBB113_5:                              # %for.inc
                                        #   in Loop: Header=BB113_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB113_1
.LBB113_6:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	run_funs, .Lfunc_end113-run_funs
	.cfi_endproc

	.globl	Frun_window_configuration_change_hook
	.align	16, 0x90
	.type	Frun_window_configuration_change_hook,@function
Frun_window_configuration_change_hook:  # @Frun_window_configuration_change_hook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, %rdi
	callq	run_window_configuration_change_hook
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	Frun_window_configuration_change_hook, .Lfunc_end114-Frun_window_configuration_change_hook
	.cfi_endproc

	.globl	Frun_window_scroll_functions
	.align	16, 0x90
	.type	Frun_window_scroll_functions,@function
Frun_window_scroll_functions:           # @Frun_window_scroll_functions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+2656, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB115_2
# BB#1:                                 # %if.then
	movl	$1033, %edi             # imm = 0x409
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	decode_live_window
	movq	88(%rax), %rdi
	callq	Fmarker_position
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	run_hook_with_args_2
.LBB115_2:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	Frun_window_scroll_functions, .Lfunc_end115-Frun_window_scroll_functions
	.cfi_endproc

	.globl	set_window_buffer
	.align	16, 0x90
	.type	set_window_buffer,@function
set_window_buffer:                      # @set_window_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movb	%cl, %al
	movb	%dl, %r8b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %r8b
	movb	%r8b, -17(%rbp)
	andb	$1, %al
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -40(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	cmpq	80(%rsi), %rax
	sete	%r8b
	andb	$1, %r8b
	movb	%r8b, -49(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_buffer
	movq	-8(%rbp), %rax
	cmpq	selected_window, %rax
	jne	.LBB116_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	bset_last_selected_window
.LBB116_2:                              # %if.end
	movq	-40(%rbp), %rax
	movq	$0, 888(%rax)
	movq	-40(%rbp), %rax
	movq	416(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB116_4
# BB#3:                                 # %if.then.9
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	416(%rax), %rax
	sarq	$2, %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	bset_display_count
.LBB116_4:                              # %if.end.12
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	Fcurrent_time
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_display_time
	movq	-32(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 464(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 400(%rax)
	testb	$1, -18(%rbp)
	je	.LBB116_6
# BB#5:                                 # %land.lhs.true
	testb	$1, -49(%rbp)
	jne	.LBB116_31
.LBB116_6:                              # %if.then.17
	movq	-32(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-32(%rbp), %rax
	movw	468(%rax), %cx
	andw	$32767, %cx             # imm = 0x7FFF
	movw	%cx, 468(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 472(%rax)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	cmpq	current_buffer, %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	jne	.LBB116_8
# BB#7:                                 # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB116_12
.LBB116_8:                              # %cond.false
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_10
# BB#9:                                 # %cond.true.24
	movq	-40(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB116_11
.LBB116_10:                             # %cond.false.26
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB116_11:                             # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB116_12:                             # %cond.end.29
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB116_14
# BB#13:                                # %cond.true.33
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB116_18
.LBB116_14:                             # %cond.false.35
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_16
# BB#15:                                # %cond.true.40
	movq	-40(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB116_17
.LBB116_16:                             # %cond.false.42
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB116_17:                             # %cond.end.45
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB116_18:                             # %cond.end.47
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	-32(%rbp), %rcx
	movq	104(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	jne	.LBB116_20
# BB#19:                                # %cond.true.52
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB116_24
.LBB116_20:                             # %cond.false.55
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_22
# BB#21:                                # %cond.true.60
	movq	-40(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB116_23
.LBB116_22:                             # %cond.false.62
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB116_23:                             # %cond.end.65
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB116_24:                             # %cond.end.67
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB116_26
# BB#25:                                # %cond.true.71
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB116_30
.LBB116_26:                             # %cond.false.74
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_28
# BB#27:                                # %cond.true.79
	movq	-40(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB116_29
.LBB116_28:                             # %cond.false.81
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB116_29:                             # %cond.end.84
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB116_30:                             # %cond.end.86
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	904(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	set_marker_restricted
	movq	-32(%rbp), %rcx
	movw	468(%rcx), %r8w
	andw	$-17, %r8w
	movw	%r8w, 468(%rcx)
	movq	-32(%rbp), %rcx
	movw	468(%rcx), %r8w
	andw	$-33, %r8w
	movw	%r8w, 468(%rcx)
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB116_31:                             # %if.end.96
	movq	-32(%rbp), %rdi
	callq	wset_redisplay
	movq	-32(%rbp), %rdi
	callq	wset_update_mode_line
	callq	record_unwind_current_buffer
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	xorl	%edi, %edi
	movq	globals+2648, %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	movb	%dl, -249(%rbp)         # 1-byte Spill
	callq	XMARKER
	xorl	%edi, %edi
	movb	-249(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	(%rax), %r8d
	shll	$31, %esi
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	%esi, %r8d
	movl	%r8d, (%rax)
	movq	globals+2648, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	movb	%dl, -265(%rbp)         # 1-byte Spill
	callq	XMARKER
	movb	-265(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	(%rax), %r8d
	shll	$31, %esi
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	%esi, %r8d
	movl	%r8d, (%rax)
	testb	$1, -18(%rbp)
	jne	.LBB116_33
# BB#32:                                # %if.then.119
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	440(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	456(%rax), %rcx
	callq	set_window_fringes
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	464(%rcx), %rsi
	movq	-40(%rbp), %rcx
	movq	480(%rcx), %rdx
	movq	-40(%rbp), %rcx
	movq	472(%rcx), %rcx
	movq	-40(%rbp), %r8
	movq	488(%r8), %r8
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	set_window_scroll_bars
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	424(%rcx), %rsi
	movq	-40(%rbp), %rcx
	movq	432(%rcx), %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	set_window_margins
	movq	-32(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	apply_window_adjustment
.LBB116_33:                             # %if.end.123
	testb	$1, -17(%rbp)
	je	.LBB116_39
# BB#34:                                # %if.then.125
	xorl	%edi, %edi
	movq	globals+2656, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_36
# BB#35:                                # %if.then.129
	movl	$1033, %edi             # imm = 0x409
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	Fmarker_position
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	run_hook_with_args_2
.LBB116_36:                             # %if.end.133
	testb	$1, -49(%rbp)
	jne	.LBB116_38
# BB#37:                                # %if.then.135
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	run_window_configuration_change_hook
.LBB116_38:                             # %if.end.136
	jmp	.LBB116_39
.LBB116_39:                             # %if.end.137
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -336(%rbp)        # 8-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end116:
	.size	set_window_buffer, .Lfunc_end116-set_window_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	set_window_fringes,@function
set_window_fringes:                     # @set_window_fringes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movb	%r8b, -41(%rbp)
	movq	-24(%rbp), %rdi
	callq	extract_dimension
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	extract_dimension
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$2, %eax
	jne	.LBB117_41
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	jne	.LBB117_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB117_4
# BB#3:                                 # %lor.lhs.false.6
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$12, %cx
	andw	$1, %cx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movb	-41(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	cmpl	%edi, %esi
	je	.LBB117_41
.LBB117_4:                              # %if.then
	cmpl	$0, -48(%rbp)
	jg	.LBB117_6
# BB#5:                                 # %lor.lhs.false.16
	cmpl	$0, -52(%rbp)
	jle	.LBB117_40
.LBB117_6:                              # %if.then.19
	movq	-16(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	428(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	imull	364(%rax), %edx
	movq	-16(%rbp), %rax
	movl	432(%rax), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	imull	364(%rax), %esi
	addl	%esi, %edx
	subl	%edx, %ecx
	movq	-16(%rbp), %rax
	movw	468(%rax), %di
	shrw	$11, %di
	andw	$1, %di
	testw	$1, %di
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB117_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB117_15
.LBB117_8:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB117_10
# BB#9:                                 # %cond.true.35
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB117_14
.LBB117_10:                             # %cond.false.43
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB117_12
# BB#11:                                # %cond.true.48
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB117_13
.LBB117_12:                             # %cond.false.49
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -100(%rbp)        # 4-byte Spill
.LBB117_13:                             # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB117_14:                             # %cond.end.55
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB117_15:                             # %cond.end.57
	movl	-72(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB117_26
# BB#16:                                # %lor.lhs.false.61
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB117_18
# BB#17:                                # %cond.true.68
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB117_25
.LBB117_18:                             # %cond.false.69
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB117_20
# BB#19:                                # %cond.true.74
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB117_24
.LBB117_20:                             # %cond.false.82
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB117_22
# BB#21:                                # %cond.true.87
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB117_23
.LBB117_22:                             # %cond.false.88
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-160(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -148(%rbp)        # 4-byte Spill
.LBB117_23:                             # %cond.end.94
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB117_24:                             # %cond.end.96
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB117_25:                             # %cond.end.98
	movl	-116(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB117_30
.LBB117_26:                             # %cond.true.102
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB117_28
# BB#27:                                # %cond.true.105
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB117_29
.LBB117_28:                             # %cond.false.107
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB117_29:                             # %cond.end.110
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB117_31
.LBB117_30:                             # %cond.false.112
	xorl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB117_31
.LBB117_31:                             # %cond.end.113
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -48(%rbp)
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jle	.LBB117_33
# BB#32:                                # %cond.true.118
	movl	-48(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB117_34
.LBB117_33:                             # %cond.false.119
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB117_34
.LBB117_34:                             # %cond.end.120
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -52(%rbp)
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jle	.LBB117_36
# BB#35:                                # %cond.true.125
	movl	-52(%rbp), %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB117_37
.LBB117_36:                             # %cond.false.126
	xorl	%eax, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB117_37
.LBB117_37:                             # %cond.end.127
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movl	364(%rdx), %eax
	shll	$1, %eax
	cmpl	%eax, %ecx
	jge	.LBB117_39
# BB#38:                                # %if.then.136
	movq	$0, -8(%rbp)
	jmp	.LBB117_42
.LBB117_39:                             # %if.end
	jmp	.LBB117_40
.LBB117_40:                             # %if.end.137
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 420(%rcx)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 424(%rcx)
	movzbl	-41(%rbp), %eax
	movw	%ax, %dx
	movb	%dl, %sil
	movq	-16(%rbp), %rcx
	andl	$1, %eax
	movw	%ax, %dx
	movw	468(%rcx), %di
	shlw	$12, %dx
	andw	$-4097, %di             # imm = 0xFFFFFFFFFFFFEFFF
	orw	%dx, %di
	movw	%di, 468(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movb	%sil, -185(%rbp)        # 1-byte Spill
	jmp	.LBB117_42
.LBB117_41:                             # %if.else
	movq	$0, -8(%rbp)
.LBB117_42:                             # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	set_window_fringes, .Lfunc_end117-set_window_fringes
	.cfi_endproc

	.align	16, 0x90
	.type	set_window_scroll_bars,@function
set_window_scroll_bars:                 # @set_window_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	extract_dimension
	movl	%eax, -44(%rbp)
	movb	$0, -45(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB118_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB118_2:                              # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_7
# BB#3:                                 # %lor.lhs.false
	movl	$607, %edi              # imm = 0x25F
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_7
# BB#4:                                 # %lor.lhs.false.6
	movl	$811, %edi              # imm = 0x32B
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_7
# BB#5:                                 # %lor.lhs.false.9
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_7
# BB#6:                                 # %if.then.12
	movabsq	$.L.str.54, %rdi
	movb	$0, %al
	callq	error
.LBB118_7:                              # %if.end.13
	movq	-8(%rbp), %rax
	movl	436(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jne	.LBB118_9
# BB#8:                                 # %lor.lhs.false.15
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB118_21
.LBB118_9:                              # %if.then.17
	movq	-8(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	428(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	imull	364(%rax), %edx
	movq	-8(%rbp), %rax
	movl	432(%rax), %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	imull	364(%rax), %esi
	addl	%esi, %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rax
	cmpl	$0, 420(%rax)
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jl	.LBB118_11
# BB#10:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB118_12
.LBB118_11:                             # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB118_12:                             # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	cmpl	$0, 424(%rcx)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jl	.LBB118_14
# BB#13:                                # %cond.true.29
	movq	-8(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB118_15
.LBB118_14:                             # %cond.false.31
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB118_15:                             # %cond.end.35
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	%ecx, %eax
	cmpl	$0, -44(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jle	.LBB118_17
# BB#16:                                # %cond.true.40
	movl	-44(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB118_18
.LBB118_17:                             # %cond.false.41
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB118_18
.LBB118_18:                             # %cond.end.42
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movl	364(%rdx), %eax
	shll	$1, %eax
	cmpl	%eax, %ecx
	jl	.LBB118_20
# BB#19:                                # %if.then.50
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 436(%rcx)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	wset_vertical_scroll_bar_type
	movb	$1, -45(%rbp)
.LBB118_20:                             # %if.end.52
	jmp	.LBB118_21
.LBB118_21:                             # %if.end.53
	movq	-32(%rbp), %rdi
	callq	extract_dimension
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movw	468(%rdi), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_23
# BB#22:                                # %lor.lhs.false.55
	cmpl	$0, -52(%rbp)
	jne	.LBB118_24
.LBB118_23:                             # %if.then.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB118_24:                             # %if.end.59
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_28
# BB#25:                                # %lor.lhs.false.62
	movl	$213, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_28
# BB#26:                                # %lor.lhs.false.65
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_28
# BB#27:                                # %if.then.68
	movabsq	$.L.str.55, %rdi
	movb	$0, %al
	callq	error
.LBB118_28:                             # %if.end.69
	movq	-8(%rbp), %rax
	movl	440(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB118_30
# BB#29:                                # %lor.lhs.false.71
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB118_96
.LBB118_30:                             # %if.then.73
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB118_31
	jmp	.LBB118_45
.LBB118_31:                             # %cond.true.75
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_60
# BB#32:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_60
# BB#33:                                # %land.lhs.true.83
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB118_60
# BB#34:                                # %land.lhs.true.90
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_60
# BB#35:                                # %land.lhs.true.95
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB118_36
	jmp	.LBB118_41
.LBB118_36:                             # %cond.true.99
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_43
# BB#37:                                # %land.lhs.true.104
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_43
# BB#38:                                # %land.lhs.true.110
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB118_43
# BB#39:                                # %land.lhs.true.118
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_43
# BB#40:                                # %land.lhs.true.123
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB118_42
	jmp	.LBB118_43
.LBB118_41:                             # %cond.false.128
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_42
	jmp	.LBB118_43
.LBB118_42:                             # %cond.true.129
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB118_44
.LBB118_43:                             # %cond.false.134
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB118_44:                             # %cond.end.138
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	-156(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB118_46
	jmp	.LBB118_60
.LBB118_45:                             # %cond.false.141
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_46
	jmp	.LBB118_60
.LBB118_46:                             # %cond.true.142
	movq	-8(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB118_48
# BB#47:                                # %cond.true.144
	movq	-8(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB118_59
.LBB118_48:                             # %cond.false.146
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB118_51
# BB#49:                                # %land.lhs.true.147
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB118_51
# BB#50:                                # %cond.true.150
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB118_52
	jmp	.LBB118_57
.LBB118_51:                             # %cond.false.155
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_52
	jmp	.LBB118_57
.LBB118_52:                             # %cond.true.156
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB118_55
# BB#53:                                # %land.lhs.true.159
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB118_55
# BB#54:                                # %cond.true.163
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB118_56
.LBB118_55:                             # %cond.false.167
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB118_56
.LBB118_56:                             # %cond.end.168
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB118_58
.LBB118_57:                             # %cond.false.170
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB118_58:                             # %cond.end.174
	movl	-184(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB118_59:                             # %cond.end.177
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB118_61
.LBB118_60:                             # %cond.false.179
	xorl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB118_61
.LBB118_61:                             # %cond.end.180
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB118_62
	jmp	.LBB118_67
.LBB118_62:                             # %cond.true.185
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_89
# BB#63:                                # %land.lhs.true.190
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB118_89
# BB#64:                                # %land.lhs.true.196
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB118_89
# BB#65:                                # %land.lhs.true.204
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_89
# BB#66:                                # %land.lhs.true.210
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB118_68
	jmp	.LBB118_89
.LBB118_67:                             # %cond.false.216
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_68
	jmp	.LBB118_89
.LBB118_68:                             # %cond.true.217
	movq	-8(%rbp), %rax
	cmpl	$0, 444(%rax)
	jl	.LBB118_70
# BB#69:                                # %cond.true.219
	movq	-8(%rbp), %rax
	movl	444(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB118_88
.LBB118_70:                             # %cond.false.221
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB118_73
# BB#71:                                # %land.lhs.true.224
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB118_73
# BB#72:                                # %cond.true.228
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	cmpl	$0, -196(%rax)
	jne	.LBB118_74
	jmp	.LBB118_79
.LBB118_73:                             # %cond.false.235
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB118_74
	jmp	.LBB118_79
.LBB118_74:                             # %cond.true.236
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB118_77
# BB#75:                                # %land.lhs.true.239
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB118_77
# BB#76:                                # %cond.true.243
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rcx
	movslq	24(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movl	-196(%rax), %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB118_78
.LBB118_77:                             # %cond.false.252
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB118_78
.LBB118_78:                             # %cond.end.253
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB118_87
.LBB118_79:                             # %cond.false.255
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	testb	$1, globals+3413
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movb	%al, -225(%rbp)         # 1-byte Spill
	je	.LBB118_86
# BB#80:                                # %lor.lhs.false.259
	movq	-8(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movb	$1, %cl
	movq	-240(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%cl, -225(%rbp)         # 1-byte Spill
	je	.LBB118_86
# BB#81:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, minibuf_level
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jle	.LBB118_85
# BB#82:                                # %land.lhs.true.263
	xorl	%edi, %edi
	movq	minibuf_selected_window, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-256(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -241(%rbp)         # 1-byte Spill
	je	.LBB118_85
# BB#83:                                # %land.lhs.true.266
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	minibuf_window, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-264(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movb	%dl, -241(%rbp)         # 1-byte Spill
	jne	.LBB118_85
# BB#84:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	minibuf_selected_window, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-272(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	movb	%cl, -241(%rbp)         # 1-byte Spill
.LBB118_85:                             # %land.end
	movb	-241(%rbp), %al         # 1-byte Reload
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB118_86:                             # %lor.end
	movb	-225(%rbp), %al         # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	estimate_mode_line_height
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB118_87:                             # %cond.end.274
	movl	-212(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 444(%rcx)
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB118_88:                             # %cond.end.277
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB118_90
.LBB118_89:                             # %cond.false.279
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB118_90
.LBB118_90:                             # %cond.end.280
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	-192(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	cmpl	$0, -52(%rbp)
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jle	.LBB118_92
# BB#91:                                # %cond.true.284
	movl	-52(%rbp), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB118_93
.LBB118_92:                             # %cond.false.285
	xorl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB118_93
.LBB118_93:                             # %cond.end.286
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	-280(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	cmpl	368(%rdx), %ecx
	jl	.LBB118_95
# BB#94:                                # %if.then.293
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 440(%rcx)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	wset_horizontal_scroll_bar_type
	movb	$1, -45(%rbp)
.LBB118_95:                             # %if.end.295
	jmp	.LBB118_96
.LBB118_96:                             # %if.end.296
	testb	$1, -45(%rbp)
	je	.LBB118_98
# BB#97:                                # %cond.true.298
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB118_99
.LBB118_98:                             # %cond.false.299
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB118_99
.LBB118_99:                             # %cond.end.300
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end118:
	.size	set_window_scroll_bars, .Lfunc_end118-set_window_scroll_bars
	.cfi_endproc

	.align	16, 0x90
	.type	set_window_margins,@function
set_window_margins:                     # @set_window_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movl	364(%rdx), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB119_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB119_3
.LBB119_2:                              # %cond.false
	movq	-24(%rbp), %rdi
	callq	extract_dimension
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB119_3:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB119_5
# BB#4:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB119_6
.LBB119_5:                              # %cond.false.5
	movq	-32(%rbp), %rdi
	callq	extract_dimension
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB119_6:                              # %cond.end.7
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movl	428(%rcx), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB119_8
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	432(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	je	.LBB119_42
.LBB119_8:                              # %if.then
	movq	-16(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jl	.LBB119_10
# BB#9:                                 # %cond.true.12
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB119_11
.LBB119_10:                             # %cond.false.14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB119_11:                             # %cond.end.18
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	cmpl	$0, 424(%rcx)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jl	.LBB119_13
# BB#12:                                # %cond.true.21
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB119_14
.LBB119_13:                             # %cond.false.23
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB119_14:                             # %cond.end.27
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	-88(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$11, %si
	andw	$1, %si
	testw	$1, %si
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB119_16
# BB#15:                                # %cond.true.30
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB119_23
.LBB119_16:                             # %cond.false.31
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB119_18
# BB#17:                                # %cond.true.34
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB119_22
.LBB119_18:                             # %cond.false.42
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB119_20
# BB#19:                                # %cond.true.46
	movl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB119_21
.LBB119_20:                             # %cond.false.47
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-144(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -132(%rbp)        # 4-byte Spill
.LBB119_21:                             # %cond.end.52
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB119_22:                             # %cond.end.54
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB119_23:                             # %cond.end.56
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB119_34
# BB#24:                                # %lor.lhs.false.59
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB119_26
# BB#25:                                # %cond.true.65
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB119_33
.LBB119_26:                             # %cond.false.66
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB119_28
# BB#27:                                # %cond.true.70
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB119_32
.LBB119_28:                             # %cond.false.78
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB119_30
# BB#29:                                # %cond.true.82
	movl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB119_31
.LBB119_30:                             # %cond.false.83
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -180(%rbp)        # 4-byte Spill
.LBB119_31:                             # %cond.end.88
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB119_32:                             # %cond.end.90
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB119_33:                             # %cond.end.92
	movl	-148(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB119_38
.LBB119_34:                             # %cond.true.95
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB119_36
# BB#35:                                # %cond.true.97
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB119_37
.LBB119_36:                             # %cond.false.99
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB119_37:                             # %cond.end.102
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB119_39
.LBB119_38:                             # %cond.false.104
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB119_39
.LBB119_39:                             # %cond.end.105
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	imull	-36(%rbp), %eax
	subl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movl	364(%rdx), %eax
	shll	$1, %eax
	cmpl	%eax, %ecx
	jl	.LBB119_41
# BB#40:                                # %if.then.115
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 428(%rcx)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 432(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB119_43
.LBB119_41:                             # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB119_43
.LBB119_42:                             # %if.else.118
	movq	$0, -8(%rbp)
.LBB119_43:                             # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	set_window_margins, .Lfunc_end119-set_window_margins
	.cfi_endproc

	.align	16, 0x90
	.type	apply_window_adjustment,@function
apply_window_adjustment:                # @apply_window_adjustment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	callq	clear_glyph_matrix
	movq	-8(%rbp), %rdi
	movw	468(%rdi), %ax
	andw	$-8193, %ax             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%ax, 468(%rdi)
	movq	-8(%rbp), %rdi
	callq	wset_redisplay
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	callq	adjust_frame_glyphs
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	apply_window_adjustment, .Lfunc_end120-apply_window_adjustment
	.cfi_endproc

	.globl	Fset_window_buffer
	.align	16, 0x90
	.type	Fset_window_buffer,@function
Fset_window_buffer:                     # @Fset_window_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movl	$5, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-40(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB121_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB121_2:                              # %if.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB121_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB121_4:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB121_9
# BB#5:                                 # %if.then.9
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB121_7
# BB#6:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	8(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB121_7:                              # %if.else.16
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_dedicated
# BB#8:                                 # %if.end.18
	movl	$796, %edi              # imm = 0x31C
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB121_9:                              # %if.end.21
	movq	-48(%rbp), %rdi
	callq	unshow_buffer
# BB#10:                                # %if.end.22
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movzbl	%dl, %r8d
	andl	$1, %r8d
	movl	$1, %edx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, %ecx
	callq	set_window_buffer
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Fset_window_buffer, .Lfunc_end121-Fset_window_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	unshow_buffer,@function
unshow_buffer:                          # @unshow_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_position
	movq	-24(%rbp), %rdi
	movq	%rax, 904(%rdi)
	movq	-16(%rbp), %rax
	movq	selected_window, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	80(%rax), %rdi
	je	.LBB122_29
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	408(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB122_2
	jmp	.LBB122_4
.LBB122_2:                              # %land.lhs.true.5
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	408(%rcx), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB122_4
# BB#3:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	408(%rcx), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	80(%rax), %rcx
	je	.LBB122_29
.LBB122_4:                              # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB122_6
# BB#5:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB122_10
.LBB122_6:                              # %cond.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB122_8
# BB#7:                                 # %cond.true.17
	movq	-24(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB122_9
.LBB122_8:                              # %cond.false.19
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB122_9:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB122_10:                             # %cond.end.22
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	marker_position
	movq	-24(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB122_12
# BB#11:                                # %cond.true.26
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB122_16
.LBB122_12:                             # %cond.false.27
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB122_14
# BB#13:                                # %cond.true.30
	movq	-24(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB122_15
.LBB122_14:                             # %cond.false.32
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB122_15:                             # %cond.end.35
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB122_16:                             # %cond.end.37
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	-24(%rbp), %rdx
	cmpq	current_buffer, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB122_18
# BB#17:                                # %cond.true.41
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB122_22
.LBB122_18:                             # %cond.false.42
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB122_20
# BB#19:                                # %cond.true.46
	movq	-24(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB122_21
.LBB122_20:                             # %cond.false.48
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB122_21:                             # %cond.end.51
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB122_22:                             # %cond.end.53
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	marker_byte_position
	movq	-24(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB122_24
# BB#23:                                # %cond.true.58
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB122_28
.LBB122_24:                             # %cond.false.59
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB122_26
# BB#25:                                # %cond.true.63
	movq	-24(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB122_27
.LBB122_26:                             # %cond.false.65
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB122_27:                             # %cond.end.68
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB122_28:                             # %cond.end.70
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	temp_set_point_both
.LBB122_29:                             # %if.end
	movq	-24(%rbp), %rax
	movq	408(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB122_30
	jmp	.LBB122_32
.LBB122_30:                             # %land.lhs.true.75
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	408(%rcx), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB122_32
# BB#31:                                # %if.then.79
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_last_selected_window
.LBB122_32:                             # %if.end.81
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	unshow_buffer, .Lfunc_end122-unshow_buffer
	.cfi_endproc

	.globl	Fforce_window_update
	.align	16, 0x90
	.type	Fforce_window_update,@function
Fforce_window_update:                   # @Fforce_window_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB123_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movl	$29, windows_or_buffers_changed
	movl	$28, update_mode_lines
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB123_16
.LBB123_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB123_3
	jmp	.LBB123_6
.LBB123_3:                              # %if.then.3
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	mark_window_display_accurate
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-5, %cx
	orw	$4, %cx
	movw	%cx, 468(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB123_4
	jmp	.LBB123_5
.LBB123_4:                              # %if.then.6
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
.LBB123_5:                              # %if.end.12
	movl	$901, %edi              # imm = 0x385
	movl	$29, update_mode_lines
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB123_16
.LBB123_6:                              # %if.end.14
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB123_7
	jmp	.LBB123_8
.LBB123_7:                              # %if.then.16
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -16(%rbp)
.LBB123_8:                              # %if.end.18
	movq	-16(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB123_9
	jmp	.LBB123_15
.LBB123_9:                              # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB123_15
# BB#10:                                # %land.lhs.true.23
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	buffer_window_count
	cmpl	$0, %eax
	je	.LBB123_15
# BB#11:                                # %if.then.26
	movl	$1005, %edi             # imm = 0x3ED
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	window_loop
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB123_13
# BB#12:                                # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB123_14
.LBB123_13:                             # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB123_14:                             # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB123_16
.LBB123_15:                             # %if.end.33
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB123_16:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	Fforce_window_update, .Lfunc_end123-Fforce_window_update
	.cfi_endproc

	.globl	temp_output_buffer_show
	.align	16, 0x90
	.type	temp_output_buffer_show,@function
temp_output_buffer_show:                # @temp_output_buffer_show
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	current_buffer, %rdi
	movq	24(%rdi), %rsi
	movq	%rax, %rdi
	callq	bset_directory
	movq	-8(%rbp), %rdi
	callq	Fset_buffer
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	XBUFFER
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	720(%rax), %rax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 64(%rax)
	movq	current_buffer, %rax
	movq	$1, 752(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rsi
	movq	%rax, 768(%rsi)
	callq	set_point
	movq	-16(%rbp), %rdi
	callq	set_buffer_internal
	xorl	%edi, %edi
	movq	globals+2304, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB124_2
# BB#1:                                 # %if.then
	movq	globals+2304, %rdi
	movq	-8(%rbp), %rsi
	callq	call1
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB124_8
.LBB124_2:                              # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	display_buffer
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB124_3
	jmp	.LBB124_7
.LBB124_3:                              # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	display_buffer
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB124_4
	jmp	.LBB124_7
.LBB124_4:                              # %if.then.16
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	cmpq	selected_frame, %rax
	je	.LBB124_6
# BB#5:                                 # %if.then.19
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rdi
	callq	Fmake_frame_visible
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB124_6:                              # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, globals+1448
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-32(%rbp), %rax
	movw	468(%rax), %dx
	andw	$32767, %dx             # imm = 0x7FFF
	movw	%dx, 468(%rax)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_restricted_both
	movl	$1, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdx
	movq	96(%rdx), %rdi
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	set_marker_restricted_both
	movl	$1, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdx
	movq	104(%rdx), %rdi
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	set_marker_restricted_both
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	SPECPDL_INDEX
	movl	$5, %esi
	movq	%rax, -40(%rbp)
	movq	selected_window, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movabsq	$restore_buffer, %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	callq	record_unwind_protect
	movabsq	$select_window_norecord, %rdi
	movq	-48(%rbp), %rsi
	callq	record_unwind_protect
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	Fset_buffer
	movl	$905, %edi              # imm = 0x389
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB124_7:                              # %if.end.36
	jmp	.LBB124_8
.LBB124_8:                              # %if.end.37
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	temp_output_buffer_show, .Lfunc_end124-temp_output_buffer_show
	.cfi_endproc

	.align	16, 0x90
	.type	display_buffer,@function
display_buffer:                         # @display_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$345, %eax              # imm = 0x159
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	call3
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	display_buffer, .Lfunc_end125-display_buffer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI126_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	make_window
	.align	16, 0x90
	.type	make_window,@function
make_window:                            # @make_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	callq	allocate_window
	movsd	.LCPI126_0, %xmm0       # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_normal_lines
	movsd	.LCPI126_0, %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_normal_cols
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	wset_new_total
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	wset_new_normal
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	wset_new_pixel
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	Fmake_marker
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_start
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	Fmake_marker
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_pointm
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	Fmake_marker
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_old_pointm
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_vertical_scroll_bar_type
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_horizontal_scroll_bar_type
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_prev_buffers
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_next_buffers
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movl	$1, 348(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 344(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 424(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 420(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 448(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 444(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 404(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 408(%rax)
	movq	sequence_number, %rax
	addq	$1, %rax
	movq	%rax, sequence_number
	movq	-16(%rbp), %rsi
	movq	%rax, 232(%rsi)
	movq	-16(%rbp), %rax
	movl	$-1, 436(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 440(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 336(%rax)
	callq	builtin_lisp_symbol
	movl	$5, %esi
	movq	%rax, Vwindow_list
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	make_window, .Lfunc_end126-make_window
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_window,@function
allocate_window:                        # @allocate_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	movl	$60, %eax
	movl	$23, %esi
	movl	$4, %ecx
	movl	%eax, %edi
	movl	%eax, %edx
	callq	allocate_pseudovector
	popq	%rbp
	retq
.Lfunc_end127:
	.size	allocate_window, .Lfunc_end127-allocate_window
	.cfi_endproc

	.align	16, 0x90
	.type	wset_normal_lines,@function
wset_normal_lines:                      # @wset_normal_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end128:
	.size	wset_normal_lines, .Lfunc_end128-wset_normal_lines
	.cfi_endproc

	.align	16, 0x90
	.type	wset_normal_cols,@function
wset_normal_cols:                       # @wset_normal_cols
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end129:
	.size	wset_normal_cols, .Lfunc_end129-wset_normal_cols
	.cfi_endproc

	.align	16, 0x90
	.type	wset_new_total,@function
wset_new_total:                         # @wset_new_total
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end130:
	.size	wset_new_total, .Lfunc_end130-wset_new_total
	.cfi_endproc

	.align	16, 0x90
	.type	wset_new_normal,@function
wset_new_normal:                        # @wset_new_normal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end131:
	.size	wset_new_normal, .Lfunc_end131-wset_new_normal
	.cfi_endproc

	.align	16, 0x90
	.type	wset_start,@function
wset_start:                             # @wset_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 88(%rdi)
	popq	%rbp
	retq
.Lfunc_end132:
	.size	wset_start, .Lfunc_end132-wset_start
	.cfi_endproc

	.align	16, 0x90
	.type	wset_pointm,@function
wset_pointm:                            # @wset_pointm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end133:
	.size	wset_pointm, .Lfunc_end133-wset_pointm
	.cfi_endproc

	.align	16, 0x90
	.type	wset_old_pointm,@function
wset_old_pointm:                        # @wset_old_pointm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 104(%rdi)
	popq	%rbp
	retq
.Lfunc_end134:
	.size	wset_old_pointm, .Lfunc_end134-wset_old_pointm
	.cfi_endproc

	.align	16, 0x90
	.type	wset_vertical_scroll_bar_type,@function
wset_vertical_scroll_bar_type:          # @wset_vertical_scroll_bar_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 128(%rdi)
	popq	%rbp
	retq
.Lfunc_end135:
	.size	wset_vertical_scroll_bar_type, .Lfunc_end135-wset_vertical_scroll_bar_type
	.cfi_endproc

	.globl	Fset_window_new_pixel
	.align	16, 0x90
	.type	Fset_window_new_pixel,@function
Fset_window_new_pixel:                  # @Fset_window_new_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB136_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB136_3
.LBB136_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	72(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB136_3:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movq	%rax, -48(%rbp)
# BB#4:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB136_6
# BB#5:                                 # %cond.true.6
	jmp	.LBB136_7
.LBB136_6:                              # %cond.false.7
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB136_7:                              # %cond.end.9
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB136_9
# BB#8:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB136_17
.LBB136_9:                              # %if.then
	movq	-16(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jge	.LBB136_12
# BB#10:                                # %land.lhs.true.18
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	%rax, -40(%rbp)
	jge	.LBB136_12
# BB#11:                                # %cond.true.21
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB136_13
.LBB136_12:                             # %cond.false.22
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB136_13:                             # %cond.end.23
	movq	-88(%rbp), %rax         # 8-byte Reload
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	shlq	$2, %rax
	addq	$2, %rax
	cmpq	%rcx, -48(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jge	.LBB136_15
# BB#14:                                # %cond.true.28
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB136_16
.LBB136_15:                             # %cond.false.29
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB136_16
.LBB136_16:                             # %cond.end.30
	movq	-104(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	args_out_of_range_3
.LBB136_17:                             # %if.end
	jmp	.LBB136_18
.LBB136_18:                             # %do.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB136_20
# BB#19:                                # %if.then.37
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_new_pixel
	jmp	.LBB136_21
.LBB136_20:                             # %if.else
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	wset_new_pixel
.LBB136_21:                             # %if.end.44
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	Fset_window_new_pixel, .Lfunc_end136-Fset_window_new_pixel
	.cfi_endproc

	.globl	Fset_window_new_total
	.align	16, 0x90
	.type	Fset_window_new_total,@function
Fset_window_new_total:                  # @Fset_window_new_total
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB137_2
# BB#1:                                 # %cond.true
	jmp	.LBB137_3
.LBB137_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB137_3:                              # %cond.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB137_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_new_total
	jmp	.LBB137_6
.LBB137_5:                              # %if.else
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	wset_new_total
.LBB137_6:                              # %if.end
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	Fset_window_new_total, .Lfunc_end137-Fset_window_new_total
	.cfi_endproc

	.globl	Fset_window_new_normal
	.align	16, 0x90
	.type	Fset_window_new_normal,@function
Fset_window_new_normal:                 # @Fset_window_new_normal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_valid_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_new_normal
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	Fset_window_new_normal, .Lfunc_end138-Fset_window_new_normal
	.cfi_endproc

	.globl	Fwindow_resize_apply
	.align	16, 0x90
	.type	Fwindow_resize_apply,@function
Fwindow_resize_apply:                   # @Fwindow_resize_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movq	-40(%rbp), %rdi
	movb	-41(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB139_1
	jmp	.LBB139_5
.LBB139_1:                              # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	testb	$1, -41(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB139_3
# BB#2:                                 # %cond.true
	movq	-40(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB139_4
.LBB139_3:                              # %cond.false
	movq	-40(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB139_4:                              # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rcx, %rdx
	je	.LBB139_6
.LBB139_5:                              # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB139_7
.LBB139_6:                              # %if.end
	callq	block_input
	movq	-40(%rbp), %rdi
	movb	-41(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply
	movq	-32(%rbp), %rdi
	callq	fset_redisplay
	movq	-32(%rbp), %rdi
	movq	208(%rdi), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 208(%rdi)
	movq	-32(%rbp), %rdi
	callq	adjust_frame_glyphs
	callq	unblock_input
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB139_7:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	Fwindow_resize_apply, .Lfunc_end139-Fwindow_resize_apply
	.cfi_endproc

	.globl	Fwindow_resize_apply_total
	.align	16, 0x90
	.type	Fwindow_resize_apply_total,@function
Fwindow_resize_apply_total:             # @Fwindow_resize_apply_total
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
	callq	block_input
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-24(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	216(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%dl
	xorb	$-1, %dl
	movzbl	%dl, %ecx
	andl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	callq	window_resize_apply_total
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB140_1
	jmp	.LBB140_7
.LBB140_1:                              # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB140_7
# BB#2:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB140_7
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_5
# BB#4:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	268(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 268(%rax)
	jmp	.LBB140_6
.LBB140_5:                              # %if.else
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 264(%rax)
.LBB140_6:                              # %if.end
	jmp	.LBB140_7
.LBB140_7:                              # %if.end.24
	callq	unblock_input
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	Fwindow_resize_apply_total, .Lfunc_end140-Fwindow_resize_apply_total
	.cfi_endproc

	.align	16, 0x90
	.type	window_resize_apply_total,@function
window_resize_apply_total:              # @window_resize_apply_total
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB141_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 264(%rax)
	movq	-8(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB141_3
.LBB141_2:                              # %if.else
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB141_3:                              # %if.end
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB141_4
	jmp	.LBB141_17
.LBB141_4:                              # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB141_17
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
.LBB141_6:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB141_16
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB141_6 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB141_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB141_6 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 248(%rcx)
	jmp	.LBB141_10
.LBB141_9:                              # %if.else.12
                                        #   in Loop: Header=BB141_6 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 252(%rcx)
.LBB141_10:                             # %if.end.14
                                        #   in Loop: Header=BB141_6 Depth=1
	movq	-24(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply_total
	testb	$1, -9(%rbp)
	jne	.LBB141_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB141_6 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	268(%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB141_12:                             # %if.end.19
                                        #   in Loop: Header=BB141_6 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB141_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB141_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB141_15
.LBB141_14:                             # %cond.false
                                        #   in Loop: Header=BB141_6 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB141_15:                             # %cond.end
                                        #   in Loop: Header=BB141_6 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB141_6
.LBB141_16:                             # %while.end
	jmp	.LBB141_32
.LBB141_17:                             # %if.else.24
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB141_18
	jmp	.LBB141_31
.LBB141_18:                             # %land.lhs.true.28
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB141_31
# BB#19:                                # %if.then.35
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
.LBB141_20:                             # %while.cond.38
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB141_30
# BB#21:                                # %while.body.40
                                        #   in Loop: Header=BB141_20 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB141_23
# BB#22:                                # %if.then.42
                                        #   in Loop: Header=BB141_20 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 248(%rcx)
	jmp	.LBB141_24
.LBB141_23:                             # %if.else.44
                                        #   in Loop: Header=BB141_20 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 252(%rcx)
.LBB141_24:                             # %if.end.46
                                        #   in Loop: Header=BB141_20 Depth=1
	movq	-24(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply_total
	testb	$1, -9(%rbp)
	je	.LBB141_26
# BB#25:                                # %if.then.49
                                        #   in Loop: Header=BB141_20 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	264(%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB141_26:                             # %if.end.52
                                        #   in Loop: Header=BB141_20 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB141_28
# BB#27:                                # %cond.true.57
                                        #   in Loop: Header=BB141_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB141_29
.LBB141_28:                             # %cond.false.58
                                        #   in Loop: Header=BB141_20 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB141_29:                             # %cond.end.61
                                        #   in Loop: Header=BB141_20 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB141_20
.LBB141_30:                             # %while.end.63
	jmp	.LBB141_31
.LBB141_31:                             # %if.end.64
	jmp	.LBB141_32
.LBB141_32:                             # %if.end.65
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	window_resize_apply_total, .Lfunc_end141-window_resize_apply_total
	.cfi_endproc

	.globl	resize_frame_windows
	.align	16, 0x90
	.type	resize_frame_windows,@function
resize_frame_windows:                   # @resize_frame_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movb	%cl, %al
	movb	%dl, %r8b
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %r8b
	movb	%r8b, -13(%rbp)
	andb	$1, %al
	movb	%al, -14(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB142_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB142_3
.LBB142_2:                              # %cond.false
	movq	-32(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB142_3:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB142_5
# BB#4:                                 # %cond.true.3
	movq	-32(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB142_6
.LBB142_5:                              # %cond.false.4
	movq	-32(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB142_6:                              # %cond.end.5
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB142_8
# BB#7:                                 # %cond.true.8
	movq	-8(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB142_9
.LBB142_8:                              # %cond.false.9
	movq	-8(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB142_9:                              # %cond.end.10
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)
	testb	$1, -14(%rbp)
	je	.LBB142_30
# BB#10:                                # %if.then
	testb	$1, -13(%rbp)
	je	.LBB142_12
# BB#11:                                # %cond.true.14
	movl	-12(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB142_18
.LBB142_12:                             # %cond.false.15
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB142_13
	jmp	.LBB142_16
.LBB142_13:                             # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB142_16
# BB#14:                                # %land.lhs.true.20
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB142_16
# BB#15:                                # %cond.true.24
	movq	-8(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB142_17
.LBB142_16:                             # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB142_17
.LBB142_17:                             # %cond.end.27
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB142_18:                             # %cond.end.30
	movl	-96(%rbp), %eax         # 4-byte Reload
	cmpl	-68(%rbp), %eax
	jle	.LBB142_28
# BB#19:                                # %cond.true.33
	testb	$1, -13(%rbp)
	je	.LBB142_21
# BB#20:                                # %cond.true.35
	movl	-12(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB142_27
.LBB142_21:                             # %cond.false.36
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB142_22
	jmp	.LBB142_25
.LBB142_22:                             # %land.lhs.true.39
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB142_25
# BB#23:                                # %land.lhs.true.45
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB142_25
# BB#24:                                # %cond.true.49
	movq	-8(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB142_26
.LBB142_25:                             # %cond.false.51
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB142_26
.LBB142_26:                             # %cond.end.52
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-112(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB142_27:                             # %cond.end.55
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB142_29
.LBB142_28:                             # %cond.false.57
	movl	-68(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB142_29:                             # %cond.end.58
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cltd
	idivl	-68(%rbp)
	movl	%eax, -60(%rbp)
	jmp	.LBB142_42
.LBB142_30:                             # %if.else
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	testb	$1, -13(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	%cl, -125(%rbp)         # 1-byte Spill
	jne	.LBB142_34
# BB#31:                                # %land.lhs.true.61
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -125(%rbp)         # 1-byte Spill
	jne	.LBB142_32
	jmp	.LBB142_34
.LBB142_32:                             # %land.lhs.true.64
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	movb	%dl, -125(%rbp)         # 1-byte Spill
	jne	.LBB142_34
# BB#33:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -125(%rbp)         # 1-byte Spill
.LBB142_34:                             # %land.end
	movb	-125(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-124(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	cmpl	$1, %edx
	jle	.LBB142_40
# BB#35:                                # %cond.true.75
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	testb	$1, -13(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jne	.LBB142_39
# BB#36:                                # %land.lhs.true.77
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -133(%rbp)         # 1-byte Spill
	jne	.LBB142_37
	jmp	.LBB142_39
.LBB142_37:                             # %land.lhs.true.80
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	movb	%dl, -133(%rbp)         # 1-byte Spill
	jne	.LBB142_39
# BB#38:                                # %land.rhs.86
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -133(%rbp)         # 1-byte Spill
.LBB142_39:                             # %land.end.91
	movb	-133(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-132(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB142_41
.LBB142_40:                             # %cond.false.94
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB142_41
.LBB142_41:                             # %cond.end.95
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB142_42:                             # %if.end
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.LBB142_46
# BB#43:                                # %land.lhs.true.98
	testb	$1, -13(%rbp)
	jne	.LBB142_45
# BB#44:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	360(%rax), %edx
	movq	-8(%rbp), %rax
	addl	220(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB142_46
.LBB142_45:                             # %if.then.101
	jmp	.LBB142_83
.LBB142_46:                             # %if.else.102
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB142_47
	jmp	.LBB142_51
.LBB142_47:                             # %if.then.104
	testb	$1, -13(%rbp)
	je	.LBB142_49
# BB#48:                                # %if.then.106
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 264(%rcx)
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 256(%rcx)
	jmp	.LBB142_50
.LBB142_49:                             # %if.else.109
	movq	-8(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	216(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rax
	movl	360(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	220(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 244(%rax)
	movl	-60(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 268(%rax)
	movl	-64(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 260(%rax)
.LBB142_50:                             # %if.end.117
	jmp	.LBB142_82
.LBB142_51:                             # %if.else.118
	testb	$1, -13(%rbp)
	jne	.LBB142_53
# BB#52:                                # %if.then.120
	movq	-8(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	216(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rax
	movl	360(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	220(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 244(%rax)
.LBB142_53:                             # %if.end.129
	testb	$1, -14(%rbp)
	je	.LBB142_55
# BB#54:                                # %if.then.131
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB142_56
.LBB142_55:                             # %if.else.134
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -80(%rbp)
.LBB142_56:                             # %if.end.139
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi
	testb	$1, -13(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	je	.LBB142_58
# BB#57:                                # %cond.true.142
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB142_59
.LBB142_58:                             # %cond.false.144
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB142_59:                             # %cond.end.146
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, -14(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	je	.LBB142_61
# BB#60:                                # %cond.true.151
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB142_62
.LBB142_61:                             # %cond.false.153
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB142_62:                             # %cond.end.155
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	resize_root_window
	movq	-32(%rbp), %rdi
	movb	-13(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB142_63
	jmp	.LBB142_68
.LBB142_63:                             # %land.lhs.true.161
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	72(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB142_68
# BB#64:                                # %if.then.165
	movq	-32(%rbp), %rdi
	movb	-13(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	testb	$1, -13(%rbp)
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	je	.LBB142_66
# BB#65:                                # %cond.true.170
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB142_67
.LBB142_66:                             # %cond.false.172
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB142_67:                             # %cond.end.174
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_pixel_to_total
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB142_81
.LBB142_68:                             # %if.else.177
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi
	testb	$1, -13(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	je	.LBB142_70
# BB#69:                                # %cond.true.180
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB142_71
.LBB142_70:                             # %cond.false.182
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB142_71:                             # %cond.end.184
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, -14(%rbp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	je	.LBB142_73
# BB#72:                                # %cond.true.189
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB142_74
.LBB142_73:                             # %cond.false.191
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB142_74:                             # %cond.end.193
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	resize_root_window
	movq	-32(%rbp), %rdi
	movb	-13(%rbp), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB142_75
	jmp	.LBB142_80
.LBB142_75:                             # %land.lhs.true.199
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	72(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB142_80
# BB#76:                                # %if.then.205
	movq	-32(%rbp), %rdi
	movb	-13(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	testb	$1, -13(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	je	.LBB142_78
# BB#77:                                # %cond.true.210
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB142_79
.LBB142_78:                             # %cond.false.212
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB142_79:                             # %cond.end.214
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	window_pixel_to_total
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB142_80:                             # %if.end.217
	jmp	.LBB142_81
.LBB142_81:                             # %if.end.218
	jmp	.LBB142_82
.LBB142_82:                             # %if.end.219
	jmp	.LBB142_83
.LBB142_83:                             # %if.end.220
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB142_84
	jmp	.LBB142_90
.LBB142_84:                             # %land.lhs.true.224
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB142_90
# BB#85:                                # %land.lhs.true.231
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB142_90
# BB#86:                                # %if.then.236
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB142_88
# BB#87:                                # %if.then.239
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 264(%rcx)
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 256(%rcx)
	jmp	.LBB142_89
.LBB142_88:                             # %if.else.242
	movq	-48(%rbp), %rax
	movl	$1, 268(%rax)
	movq	-8(%rbp), %rax
	movl	368(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	268(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-32(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	260(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 244(%rax)
.LBB142_89:                             # %if.end.254
	jmp	.LBB142_90
.LBB142_90:                             # %if.end.255
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end142:
	.size	resize_frame_windows, .Lfunc_end142-resize_frame_windows
	.cfi_endproc

	.globl	Fsplit_window_internal
	.align	16, 0x90
	.type	Fsplit_window_internal,@function
Fsplit_window_internal:                 # @Fsplit_window_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %r8b
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r8b, -153(%rbp)        # 1-byte Spill
	je	.LBB143_3
# BB#1:                                 # %lor.lhs.false
	movl	$607, %edi              # imm = 0x25F
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB143_3
# BB#2:                                 # %lor.rhs
	movl	$811, %edi              # imm = 0x32B
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB143_3:                              # %lor.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -105(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_WINDOW
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB143_5
# BB#4:                                 # %cond.true
	jmp	.LBB143_6
.LBB143_5:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB143_6:                              # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	testb	$1, -105(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB143_8
# BB#7:                                 # %cond.true.12
	movq	-104(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB143_9
.LBB143_8:                              # %cond.false.13
	movq	-104(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB143_9:                              # %cond.end.14
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	$901, %edi              # imm = 0x385
	movslq	%eax, %rcx
	movq	-192(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	%rcx
	movq	%rax, -120(%rbp)
	movq	globals+2616, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %sil
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%sil, -209(%rbp)        # 1-byte Spill
	je	.LBB143_19
# BB#10:                                # %lor.lhs.false.19
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-224(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -209(%rbp)         # 1-byte Spill
	je	.LBB143_19
# BB#11:                                # %lor.rhs.23
	testb	$1, -105(%rbp)
	je	.LBB143_15
# BB#12:                                # %cond.true.26
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -225(%rbp)         # 1-byte Spill
	jne	.LBB143_13
	jmp	.LBB143_14
.LBB143_13:                             # %land.rhs
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	xorb	$-1, %dl
	movb	%dl, -225(%rbp)         # 1-byte Spill
.LBB143_14:                             # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB143_18
.LBB143_15:                             # %cond.false.33
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -233(%rbp)         # 1-byte Spill
	jne	.LBB143_16
	jmp	.LBB143_17
.LBB143_16:                             # %land.rhs.39
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	movb	%dl, -233(%rbp)         # 1-byte Spill
.LBB143_17:                             # %land.end.48
	movb	-233(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
.LBB143_18:                             # %cond.end.50
	movl	-232(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -209(%rbp)         # 1-byte Spill
.LBB143_19:                             # %lor.end.53
	movb	-209(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -121(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB143_20
	jmp	.LBB143_22
.LBB143_20:                             # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB143_21
	jmp	.LBB143_22
.LBB143_21:                             # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB143_23
.LBB143_22:                             # %if.else
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB143_23:                             # %if.end
	movq	-56(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB143_25
# BB#24:                                # %if.then.65
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
.LBB143_25:                             # %if.else.66
	movl	$1, %eax
	movl	$2, %ecx
	movq	-120(%rbp), %rdx
	movb	-105(%rbp), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movslq	%eax, %rdi
	cmpq	%rdi, %rdx
	jge	.LBB143_27
# BB#26:                                # %if.then.73
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.LBB143_27:                             # %if.else.74
	testb	$1, -121(%rbp)
	jne	.LBB143_39
# BB#28:                                # %land.lhs.true.76
	xorl	%edi, %edi
	movq	globals+2624, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB143_39
# BB#29:                                # %if.then.80
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	testb	$1, -105(%rbp)
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	je	.LBB143_31
# BB#30:                                # %cond.true.85
	movq	-72(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB143_32
.LBB143_31:                             # %cond.false.86
	movq	-72(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB143_32:                             # %cond.end.87
	movl	-260(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	wset_new_pixel
	movq	-72(%rbp), %rdi
	movb	-105(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB143_34
# BB#33:                                # %if.then.94
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	error
.LBB143_34:                             # %if.else.95
	movq	-72(%rbp), %rdi
	testb	$1, -105(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	je	.LBB143_36
# BB#35:                                # %cond.true.98
	movq	-72(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB143_37
.LBB143_36:                             # %cond.false.100
	movq	-72(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB143_37:                             # %cond.end.102
	movl	-276(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	wset_new_pixel
# BB#38:                                # %if.end.107
	jmp	.LBB143_48
.LBB143_39:                             # %if.else.108
	movq	-64(%rbp), %rdi
	movb	-105(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB143_41
# BB#40:                                # %if.then.111
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB143_41:                             # %if.else.112
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-64(%rbp), %rcx
	movq	72(%rcx), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	testb	$1, -105(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	je	.LBB143_43
# BB#42:                                # %cond.true.118
	movq	-64(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB143_44
.LBB143_43:                             # %cond.false.120
	movq	-64(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
.LBB143_44:                             # %cond.end.122
	movl	-292(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rcx, %rdx
	je	.LBB143_46
# BB#45:                                # %if.then.127
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	error
.LBB143_46:                             # %if.end.128
	jmp	.LBB143_47
.LBB143_47:                             # %if.end.129
	jmp	.LBB143_48
.LBB143_48:                             # %if.end.130
	jmp	.LBB143_49
.LBB143_49:                             # %if.end.131
	jmp	.LBB143_50
.LBB143_50:                             # %if.end.132
	testb	$1, -121(%rbp)
	je	.LBB143_63
# BB#51:                                # %if.then.134
	testb	$1, -105(%rbp)
	je	.LBB143_53
# BB#52:                                # %cond.true.137
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB143_54
.LBB143_53:                             # %cond.false.138
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB143_54:                             # %cond.end.139
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rdi
	movb	-105(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	make_parent_window
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)
	movq	globals+2616, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB143_56
# BB#55:                                # %if.then.147
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_combination_limit
.LBB143_56:                             # %if.end.149
	movq	-72(%rbp), %rdi
	testb	$1, -105(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	je	.LBB143_58
# BB#57:                                # %cond.true.152
	movq	-64(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB143_59
.LBB143_58:                             # %cond.false.154
	movq	-64(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
.LBB143_59:                             # %cond.end.156
	movl	-332(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	wset_new_pixel
	movq	-72(%rbp), %rdi
	testb	$1, -105(%rbp)
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	je	.LBB143_61
# BB#60:                                # %cond.true.163
	movq	-64(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB143_62
.LBB143_61:                             # %cond.false.164
	movq	-64(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
.LBB143_62:                             # %cond.end.165
	movl	-348(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	wset_new_total
	movq	-72(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	wset_new_normal
	jmp	.LBB143_64
.LBB143_63:                             # %if.else.170
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -72(%rbp)
.LBB143_64:                             # %if.end.173
	movq	-104(%rbp), %rdi
	callq	fset_redisplay
	movq	-104(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-524289, %rax          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rax           # imm = 0x80000
	movq	%rax, 208(%rdi)
	callq	make_window
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	wset_frame
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	32(%rax), %rsi
	callq	wset_parent
	movl	$155, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB143_66
# BB#65:                                # %lor.lhs.false.182
	movl	$607, %edi              # imm = 0x25F
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB143_70
.LBB143_66:                             # %if.then.186
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	callq	wset_prev
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB143_68
# BB#67:                                # %if.then.191
	movq	-72(%rbp), %rdi
	movb	-105(%rbp), %al
	movq	-40(%rbp), %rdx
	andb	$1, %al
	movzbl	%al, %esi
	callq	wset_combination
	jmp	.LBB143_69
.LBB143_68:                             # %if.else.193
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XWINDOW
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_next
.LBB143_69:                             # %if.end.196
	movq	-80(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	wset_next
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	wset_prev
	jmp	.LBB143_73
.LBB143_70:                             # %if.else.197
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB143_72
# BB#71:                                # %if.then.202
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev
.LBB143_72:                             # %if.end.205
	movq	-80(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	wset_prev
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	wset_next
.LBB143_73:                             # %if.end.206
	movq	-80(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-8193, %cx             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%cx, 468(%rax)
	movq	-80(%rbp), %rax
	movl	$0, 400(%rax)
	movq	-88(%rbp), %rax
	movl	428(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 428(%rax)
	movq	-88(%rbp), %rax
	movl	432(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 432(%rax)
	movq	-88(%rbp), %rax
	movl	420(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 420(%rax)
	movq	-88(%rbp), %rax
	movl	424(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 424(%rax)
	movq	-88(%rbp), %rax
	movzwl	468(%rax), %edx
	shrl	$12, %edx
	andl	$1, %edx
	movw	%dx, %cx
	movb	%dl, %sil
	movq	-80(%rbp), %rax
	movw	468(%rax), %di
	shlw	$12, %cx
	andw	$-4097, %di             # imm = 0xFFFFFFFFFFFFEFFF
	orw	%cx, %di
	movw	%di, 468(%rax)
	movq	-88(%rbp), %rax
	movl	436(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 436(%rax)
	movq	-88(%rbp), %rax
	movl	440(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 440(%rax)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	128(%rax), %rax
	movb	%sil, -385(%rbp)        # 1-byte Spill
	movq	%rax, %rsi
	callq	wset_vertical_scroll_bar_type
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	144(%rax), %rsi
	callq	wset_horizontal_scroll_bar_type
	testb	$1, -105(%rbp)
	je	.LBB143_75
# BB#74:                                # %if.then.225
	movq	-64(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-64(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-64(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-64(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 268(%rax)
	jmp	.LBB143_76
.LBB143_75:                             # %if.else.232
	movq	-64(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-64(%rbp), %rax
	movl	248(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 248(%rax)
	movq	-64(%rbp), %rax
	movl	256(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-64(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, 264(%rax)
.LBB143_76:                             # %if.end.239
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_new_pixel
	movq	$0, -144(%rbp)
	movq	-72(%rbp), %rsi
	movq	80(%rsi), %rdi
	callq	XWINDOW
	movq	%rax, -96(%rbp)
.LBB143_77:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB143_84
# BB#78:                                # %while.body
                                        #   in Loop: Header=BB143_77 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB143_80
# BB#79:                                # %if.then.245
                                        #   in Loop: Header=BB143_77 Depth=1
	movq	-144(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	56(%rcx), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
.LBB143_80:                             # %if.end.248
                                        #   in Loop: Header=BB143_77 Depth=1
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB143_82
# BB#81:                                # %cond.true.253
                                        #   in Loop: Header=BB143_77 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB143_83
.LBB143_82:                             # %cond.false.254
                                        #   in Loop: Header=BB143_77 Depth=1
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB143_83:                             # %cond.end.257
                                        #   in Loop: Header=BB143_77 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB143_77
.LBB143_84:                             # %while.end
	movq	-80(%rbp), %rdi
	testb	$1, -105(%rbp)
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	je	.LBB143_86
# BB#85:                                # %cond.true.261
	movq	-72(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB143_87
.LBB143_86:                             # %cond.false.263
	movq	-72(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB143_87:                             # %cond.end.265
	movl	-420(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	subq	-144(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	wset_new_total
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	wset_new_normal
	callq	block_input
	movq	-72(%rbp), %rdi
	movb	-105(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	window_resize_apply
	movq	-104(%rbp), %rdi
	callq	adjust_frame_glyphs
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %r8
	movq	80(%r8), %rsi
	callq	set_window_buffer
	callq	unblock_input
	xorl	%edi, %edi
	movq	globals+2656, %rsi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB143_89
# BB#88:                                # %if.then.276
	movl	$1033, %edi             # imm = 0x409
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	Fmarker_position
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	run_hook_with_args_2
.LBB143_89:                             # %if.end.279
	movq	-40(%rbp), %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end143:
	.size	Fsplit_window_internal, .Lfunc_end143-Fsplit_window_internal
	.cfi_endproc

	.align	16, 0x90
	.type	make_parent_window,@function
make_parent_window:                     # @make_parent_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp432:
	.cfi_def_cfa_offset 16
.Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp434:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
	callq	allocate_window
	movl	$1, %esi
	movl	$480, %ecx              # imm = 0x1E0
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	callq	adjust_window_count
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	sequence_number, %rax
	addq	$1, %rax
	movq	%rax, sequence_number
	movq	-40(%rbp), %rdi
	movq	%rax, 232(%rdi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	replace_window
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_prev
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	wset_parent
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_start
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_pointm
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_old_pointm
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_buffer
	movq	-40(%rbp), %rdi
	movb	-9(%rbp), %r8b
	movq	-8(%rbp), %rdx
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	wset_combination
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_combination_limit
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_window_parameters
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	make_parent_window, .Lfunc_end144-make_parent_window
	.cfi_endproc

	.align	16, 0x90
	.type	wset_parent,@function
wset_parent:                            # @wset_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end145:
	.size	wset_parent, .Lfunc_end145-wset_parent
	.cfi_endproc

	.globl	Fdelete_window_internal
	.align	16, 0x90
	.type	Fdelete_window_internal,@function
Fdelete_window_internal:                # @Fdelete_window_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
.Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp440:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movb	$0, -90(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_any_window
	movl	$5, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB146_55
.LBB146_2:                              # %if.end
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB146_4:                              # %if.else
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_7
# BB#5:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_7
# BB#6:                                 # %if.then.12
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	error
.LBB146_7:                              # %if.end.13
	jmp	.LBB146_8
.LBB146_8:                              # %if.end.14
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -153(%rbp)         # 1-byte Spill
	jne	.LBB146_9
	jmp	.LBB146_10
.LBB146_9:                              # %land.rhs
	movq	-64(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	movb	%dl, -153(%rbp)         # 1-byte Spill
.LBB146_10:                             # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -89(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	subq	$5, %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_12
# BB#11:                                # %if.then.23
	movb	$1, -90(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_prev
	movq	-64(%rbp), %rdi
	movb	-89(%rbp), %cl
	movq	-32(%rbp), %rdx
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	wset_combination
	jmp	.LBB146_15
.LBB146_12:                             # %if.else.27
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	16(%rax), %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB146_14
# BB#13:                                # %if.then.34
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev
.LBB146_14:                             # %if.end.37
	jmp	.LBB146_15
.LBB146_15:                             # %if.end.38
	movq	-80(%rbp), %rdi
	movb	-89(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB146_16
	jmp	.LBB146_48
.LBB146_16:                             # %land.lhs.true.41
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	testb	$1, -89(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB146_18
# BB#17:                                # %cond.true
	movq	-80(%rbp), %rax
	movl	256(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB146_19
.LBB146_18:                             # %cond.false
	movq	-80(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB146_19:                             # %cond.end
	movl	-196(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rcx, %rdx
	jne	.LBB146_48
# BB#20:                                # %if.then.45
	callq	block_input
	movq	-56(%rbp), %rdi
	callq	xwidget_view_delete_all_in_window
	movq	-64(%rbp), %rdi
	movb	-89(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	window_resize_apply
	movq	-88(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	cmpl	$0, %esi
	je	.LBB146_27
# BB#21:                                # %if.then.53
	movq	-88(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB146_23
# BB#22:                                # %cond.true.61
	movq	-88(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	addq	$184, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB146_24
.LBB146_23:                             # %cond.false.62
	movq	-88(%rbp), %rax
	movq	384(%rax), %rax
	movq	(%rax), %rax
	addq	$104, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB146_24:                             # %cond.end.66
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB146_26
# BB#25:                                # %if.then.70
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB146_26:                             # %if.end.73
	jmp	.LBB146_27
.LBB146_27:                             # %if.end.74
	movq	-88(%rbp), %rdi
	callq	fset_redisplay
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, Vwindow_list
	movq	-88(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 208(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_next
	movq	-56(%rbp), %rdi
	callq	free_window_matrices
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB146_28
	jmp	.LBB146_29
.LBB146_28:                             # %if.then.81
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdi
	callq	delete_all_child_windows
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	wset_combination
	jmp	.LBB146_30
.LBB146_29:                             # %if.else.84
	movq	-56(%rbp), %rdi
	callq	unshow_buffer
	movq	-56(%rbp), %rdi
	movq	96(%rdi), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_buffer
.LBB146_30:                             # %if.end.89
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_33
# BB#31:                                # %land.lhs.true.94
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB146_33
# BB#32:                                # %if.then.99
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	replace_window
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	48(%rsi), %rsi
	callq	wset_normal_cols
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	40(%rsi), %rsi
	callq	wset_normal_lines
	xorl	%edi, %edi
	movq	-64(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	wset_combination
	movq	-32(%rbp), %rdi
	callq	recombine_windows
.LBB146_33:                             # %if.end.101
	movq	-88(%rbp), %rdi
	callq	adjust_frame_glyphs
	movq	-88(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB146_34
	jmp	.LBB146_35
.LBB146_34:                             # %land.lhs.true.104
	movq	-88(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB146_46
.LBB146_35:                             # %if.then.110
	movq	-40(%rbp), %rdi
	callq	Fframe_first_window
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	selected_window, %rax
	jne	.LBB146_37
# BB#36:                                # %if.then.115
	movl	$901, %edi              # imm = 0x385
	movq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB146_38
.LBB146_37:                             # %if.else.118
	movq	-88(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	fset_selected_window
.LBB146_38:                             # %if.end.119
	callq	unblock_input
	movl	$487, %edi              # imm = 0x1E7
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB146_39
	jmp	.LBB146_42
.LBB146_39:                             # %land.lhs.true.124
	movq	-120(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB146_40
	jmp	.LBB146_42
.LBB146_40:                             # %land.lhs.true.129
	movq	-120(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB146_42
# BB#41:                                # %if.then.134
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB146_42:                             # %if.end.135
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	selected_window, %rax
	jne	.LBB146_44
# BB#43:                                # %if.then.139
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fselect_window
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB146_45
.LBB146_44:                             # %if.else.142
	movq	-88(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	fset_selected_window
.LBB146_45:                             # %if.end.143
	jmp	.LBB146_47
.LBB146_46:                             # %if.else.144
	callq	unblock_input
.LBB146_47:                             # %if.end.145
	jmp	.LBB146_54
.LBB146_48:                             # %if.else.146
	testb	$1, -90(%rbp)
	je	.LBB146_50
# BB#49:                                # %if.then.148
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_prev
	movq	-64(%rbp), %rdi
	movb	-89(%rbp), %al
	movq	-16(%rbp), %rdx
	andb	$1, %al
	movzbl	%al, %esi
	callq	wset_combination
	jmp	.LBB146_53
.LBB146_50:                             # %if.else.150
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-56(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB146_52
# BB#51:                                # %if.then.155
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev
.LBB146_52:                             # %if.end.158
	jmp	.LBB146_53
.LBB146_53:                             # %if.end.159
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	error
.LBB146_54:                             # %if.end.160
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB146_55:                             # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end146:
	.size	Fdelete_window_internal, .Lfunc_end146-Fdelete_window_internal
	.cfi_endproc

	.align	16, 0x90
	.type	recombine_windows,@function
recombine_windows:                      # @recombine_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
.Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp443:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB147_23
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB147_23
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB147_3
	jmp	.LBB147_22
.LBB147_3:                              # %land.lhs.true.7
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB147_4
	jmp	.LBB147_22
.LBB147_4:                              # %land.lhs.true.10
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	cmpl	%edi, %esi
	jne	.LBB147_22
# BB#5:                                 # %if.then.19
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -73(%rbp)          # 1-byte Spill
	jne	.LBB147_6
	jmp	.LBB147_7
.LBB147_6:                              # %land.rhs
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$1, %cx
	andw	$1, %cx
	movb	%cl, %dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB147_7:                              # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB147_9
# BB#8:                                 # %if.then.34
	movq	-24(%rbp), %rdi
	movb	-49(%rbp), %al
	movq	-48(%rbp), %rdx
	andb	$1, %al
	movzbl	%al, %esi
	callq	wset_combination
	jmp	.LBB147_10
.LBB147_9:                              # %if.else
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	wset_prev
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XWINDOW
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_next
.LBB147_10:                             # %if.end
	jmp	.LBB147_11
.LBB147_11:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB147_21
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB147_11 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	wset_parent
	testb	$1, -49(%rbp)
	je	.LBB147_14
# BB#13:                                # %if.then.40
                                        #   in Loop: Header=BB147_11 Depth=1
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	256(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_normal_cols
	jmp	.LBB147_15
.LBB147_14:                             # %if.else.45
                                        #   in Loop: Header=BB147_11 Depth=1
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm0
	movq	-24(%rbp), %rax
	cvtsi2sdl	260(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	make_float
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_normal_lines
.LBB147_15:                             # %if.end.51
                                        #   in Loop: Header=BB147_11 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB147_19
# BB#16:                                # %if.then.55
                                        #   in Loop: Header=BB147_11 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB147_18
# BB#17:                                # %if.then.60
                                        #   in Loop: Header=BB147_11 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	wset_next
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wset_prev
.LBB147_18:                             # %if.end.64
                                        #   in Loop: Header=BB147_11 Depth=1
	movq	$0, -32(%rbp)
	jmp	.LBB147_20
.LBB147_19:                             # %if.else.65
                                        #   in Loop: Header=BB147_11 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
.LBB147_20:                             # %if.end.68
                                        #   in Loop: Header=BB147_11 Depth=1
	jmp	.LBB147_11
.LBB147_21:                             # %while.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	wset_combination
.LBB147_22:                             # %if.end.70
	jmp	.LBB147_23
.LBB147_23:                             # %if.end.71
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	recombine_windows, .Lfunc_end147-recombine_windows
	.cfi_endproc

	.globl	grow_mini_window
	.align	16, 0x90
	.type	grow_mini_window,@function
grow_mini_window:                       # @grow_mini_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB148_23
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movl	$1031, %edi             # imm = 0x407
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	subl	-12(%rbp), %edi
	movslq	%edi, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	testb	$1, -13(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	je	.LBB148_3
# BB#2:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB148_4
.LBB148_3:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB148_4:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB148_22
# BB#5:                                 # %land.lhs.true
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB148_6
	jmp	.LBB148_22
.LBB148_6:                              # %if.then.13
	callq	block_input
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_apply
	testb	$1, -13(%rbp)
	je	.LBB148_11
# BB#7:                                 # %if.then.15
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	-8(%rbp), %rsi
	subl	260(%rsi), %eax
	movslq	%eax, %rsi
	cmpq	%rsi, %rdx
	jge	.LBB148_9
# BB#8:                                 # %cond.true.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB148_10
.LBB148_9:                              # %cond.false.25
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rcx
	subl	260(%rcx), %eax
	movslq	%eax, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB148_10:                             # %cond.end.29
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cltd
	movq	-104(%rbp), %rsi        # 8-byte Reload
	idivl	368(%rsi)
	movl	%eax, -52(%rbp)
	jmp	.LBB148_15
.LBB148_11:                             # %if.else
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movq	-8(%rbp), %rsi
	subl	260(%rsi), %eax
	movq	-24(%rbp), %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	cltd
	idivl	368(%rsi)
	movslq	%eax, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rsi, %rdi
	jge	.LBB148_13
# BB#12:                                # %cond.true.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB148_14
.LBB148_13:                             # %cond.false.45
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rcx
	subl	260(%rcx), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	368(%rcx)
	movslq	%eax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB148_14:                             # %cond.end.51
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rax
	imull	368(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB148_15:                             # %if.end
	movq	-32(%rbp), %rax
	movl	244(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	268(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	addl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	368(%rax), %ecx
	jle	.LBB148_17
# BB#16:                                # %cond.true.65
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB148_18
.LBB148_17:                             # %cond.false.68
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB148_18:                             # %cond.end.70
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 260(%rcx)
	movq	-8(%rbp), %rcx
	movl	268(%rcx), %eax
	addl	-52(%rbp), %eax
	cmpl	$1, %eax
	jle	.LBB148_20
# BB#19:                                # %cond.true.77
	movq	-8(%rbp), %rax
	movl	268(%rax), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB148_21
.LBB148_20:                             # %cond.false.80
	movl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB148_21
.LBB148_21:                             # %cond.end.81
	movl	-128(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 268(%rcx)
	movq	-24(%rbp), %rdi
	callq	fset_redisplay
	movq	-24(%rbp), %rcx
	movq	208(%rcx), %rdi
	andq	$-524289, %rdi          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rdi           # imm = 0x80000
	movq	%rdi, 208(%rcx)
	movq	-24(%rbp), %rdi
	callq	adjust_frame_glyphs
	callq	unblock_input
.LBB148_22:                             # %if.end.84
	jmp	.LBB148_23
.LBB148_23:                             # %if.end.85
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end148:
	.size	grow_mini_window, .Lfunc_end148-grow_mini_window
	.cfi_endproc

	.globl	shrink_mini_window
	.align	16, 0x90
	.type	shrink_mini_window,@function
shrink_mini_window:                     # @shrink_mini_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp447:
	.cfi_def_cfa_offset 16
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp449:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB149_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB149_3
.LBB149_2:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB149_3:                              # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -56(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB149_5
# BB#4:                                 # %cond.true.3
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB149_6
.LBB149_5:                              # %cond.false.4
	movl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB149_6
.LBB149_6:                              # %cond.end.5
	movl	-72(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rcx
	cmpq	-64(%rbp), %rcx
	jle	.LBB149_14
# BB#7:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XWINDOW
	movl	$1031, %edi             # imm = 0x407
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rcx
	subq	-64(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	testb	$1, -9(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	je	.LBB149_9
# BB#8:                                 # %cond.true.13
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB149_10
.LBB149_9:                              # %cond.false.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB149_10:                             # %cond.end.17
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB149_13
# BB#11:                                # %land.lhs.true
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB149_12
	jmp	.LBB149_13
.LBB149_12:                             # %if.then.26
	callq	block_input
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	window_resize_apply
	movq	-32(%rbp), %rdi
	movl	252(%rdi), %esi
	movq	-32(%rbp), %rdi
	addl	268(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 252(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 268(%rdi)
	movq	-32(%rbp), %rdi
	movl	244(%rdi), %esi
	movq	-32(%rbp), %rdi
	addl	260(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 244(%rdi)
	movq	-24(%rbp), %rdi
	movl	368(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 260(%rdi)
	movq	-24(%rbp), %rdi
	callq	fset_redisplay
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-524289, %rax          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rax           # imm = 0x80000
	movq	%rax, 208(%rdi)
	movq	-24(%rbp), %rdi
	callq	adjust_frame_glyphs
	callq	unblock_input
.LBB149_13:                             # %if.end
	jmp	.LBB149_14
.LBB149_14:                             # %if.end.36
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	shrink_mini_window, .Lfunc_end149-shrink_mini_window
	.cfi_endproc

	.globl	Fresize_mini_window_internal
	.align	16, 0x90
	.type	Fresize_mini_window_internal,@function
Fresize_mini_window_internal:           # @Fresize_mini_window_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp450:
	.cfi_def_cfa_offset 16
.Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp452:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_WINDOW
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	56(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB150_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB150_2:                              # %if.else
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB150_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	error
.LBB150_4:                              # %if.end
	jmp	.LBB150_5
.LBB150_5:                              # %if.end.6
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	260(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	window_resize_check
	testb	$1, %al
	jne	.LBB150_6
	jmp	.LBB150_9
.LBB150_6:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB150_9
# BB#7:                                 # %land.lhs.true.12
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	72(%rcx), %rcx
	sarq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	sarq	$2, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB150_9
# BB#8:                                 # %if.then.20
	callq	block_input
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	window_resize_apply
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	sarq	$2, %rdi
	movl	%edi, %esi
	movq	-16(%rbp), %rdi
	movl	%esi, 260(%rdi)
	movq	-16(%rbp), %rdi
	movl	260(%rdi), %eax
	movq	-32(%rbp), %rdi
	cltd
	idivl	368(%rdi)
	movq	-16(%rbp), %rdi
	movl	%eax, 268(%rdi)
	movq	-24(%rbp), %rdi
	movl	244(%rdi), %eax
	movq	-24(%rbp), %rdi
	addl	260(%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 244(%rdi)
	movq	-24(%rbp), %rdi
	movl	252(%rdi), %eax
	movq	-24(%rbp), %rdi
	addl	268(%rdi), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 252(%rdi)
	movq	-32(%rbp), %rdi
	callq	fset_redisplay
	movq	-32(%rbp), %rdi
	movq	208(%rdi), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 208(%rdi)
	movq	-32(%rbp), %rdi
	callq	adjust_frame_glyphs
	callq	unblock_input
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB150_9:                              # %if.else.33
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	error
.Lfunc_end150:
	.size	Fresize_mini_window_internal, .Lfunc_end150-Fresize_mini_window_internal
	.cfi_endproc

	.globl	mark_window_cursors_off
	.align	16, 0x90
	.type	mark_window_cursors_off,@function
mark_window_cursors_off:                # @mark_window_cursors_off
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp453:
	.cfi_def_cfa_offset 16
.Ltmp454:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp455:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB151_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB151_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB151_3
	jmp	.LBB151_4
.LBB151_3:                              # %if.then
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	mark_window_cursors_off
	jmp	.LBB151_5
.LBB151_4:                              # %if.else
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-129, %cx
	movw	%cx, 468(%rax)
.LBB151_5:                              # %if.end
                                        #   in Loop: Header=BB151_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB151_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB151_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB151_8
.LBB151_7:                              # %cond.false
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB151_8:                              # %cond.end
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB151_1
.LBB151_9:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	mark_window_cursors_off, .Lfunc_end151-mark_window_cursors_off
	.cfi_endproc

	.globl	window_internal_height
	.align	16, 0x90
	.type	window_internal_height,@function
window_internal_height:                 # @window_internal_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp456:
	.cfi_def_cfa_offset 16
.Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp458:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	268(%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movw	468(%rdi), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_31
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB152_12
# BB#2:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB152_12
# BB#3:                                 # %lor.lhs.false.2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB152_12
# BB#4:                                 # %lor.lhs.false.5
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB152_12
# BB#5:                                 # %lor.lhs.false.8
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB152_6
	jmp	.LBB152_11
.LBB152_6:                              # %cond.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_13
# BB#7:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_13
# BB#8:                                 # %land.lhs.true.18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB152_13
# BB#9:                                 # %land.lhs.true.23
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB152_13
# BB#10:                                # %land.lhs.true.28
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB152_12
	jmp	.LBB152_13
.LBB152_11:                             # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB152_12
	jmp	.LBB152_13
.LBB152_12:                             # %if.then.32
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB152_13:                             # %if.end
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB152_14
	jmp	.LBB152_28
.LBB152_14:                             # %cond.true.35
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_30
# BB#15:                                # %land.lhs.true.40
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_30
# BB#16:                                # %land.lhs.true.46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB152_30
# BB#17:                                # %land.lhs.true.54
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB152_30
# BB#18:                                # %land.lhs.true.59
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB152_19
	jmp	.LBB152_24
.LBB152_19:                             # %cond.true.63
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_26
# BB#20:                                # %land.lhs.true.68
	movq	-8(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB152_26
# BB#21:                                # %land.lhs.true.74
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB152_26
# BB#22:                                # %land.lhs.true.82
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB152_26
# BB#23:                                # %land.lhs.true.88
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB152_25
	jmp	.LBB152_26
.LBB152_24:                             # %cond.false.94
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB152_25
	jmp	.LBB152_26
.LBB152_25:                             # %cond.true.95
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB152_27
.LBB152_26:                             # %cond.false.99
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB152_27:                             # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB152_29
	jmp	.LBB152_30
.LBB152_28:                             # %cond.false.104
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB152_29
	jmp	.LBB152_30
.LBB152_29:                             # %if.then.105
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB152_30:                             # %if.end.107
	jmp	.LBB152_31
.LBB152_31:                             # %if.end.108
	movl	-12(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	window_internal_height, .Lfunc_end152-window_internal_height
	.cfi_endproc

	.globl	Fscroll_up
	.align	16, 0x90
	.type	Fscroll_up,@function
Fscroll_up:                             # @Fscroll_up
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp459:
	.cfi_def_cfa_offset 16
.Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp461:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	scroll_command
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end153:
	.size	Fscroll_up, .Lfunc_end153-Fscroll_up
	.cfi_endproc

	.align	16, 0x90
	.type	scroll_command,@function
scroll_command:                         # @scroll_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp462:
	.cfi_def_cfa_offset 16
.Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp464:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB154_2
# BB#1:                                 # %if.then
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB154_2:                              # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB154_4
# BB#3:                                 # %if.then.9
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	selected_window, %rdi
	movslq	-12(%rbp), %rsi
	callq	window_scroll
	jmp	.LBB154_8
.LBB154_4:                              # %if.else
	movl	$668, %edi              # imm = 0x29C
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB154_6
# BB#5:                                 # %if.then.13
	movl	$1, %edx
	xorl	%eax, %eax
	movq	selected_window, %rdi
	movl	%eax, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	%eax, %ecx
	callq	window_scroll
	jmp	.LBB154_7
.LBB154_6:                              # %if.else.15
	movq	-8(%rbp), %rdi
	callq	Fprefix_numeric_value
	xorl	%ecx, %ecx
	movq	%rax, -8(%rbp)
	movq	selected_window, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movslq	-12(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	window_scroll
.LBB154_7:                              # %if.end.18
	jmp	.LBB154_8
.LBB154_8:                              # %if.end.19
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end154:
	.size	scroll_command, .Lfunc_end154-scroll_command
	.cfi_endproc

	.globl	Fscroll_down
	.align	16, 0x90
	.type	Fscroll_down,@function
Fscroll_down:                           # @Fscroll_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp465:
	.cfi_def_cfa_offset 16
.Ltmp466:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp467:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	scroll_command
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	Fscroll_down, .Lfunc_end155-Fscroll_down
	.cfi_endproc

	.globl	Fother_window_for_scrolling
	.align	16, 0x90
	.type	Fother_window_for_scrolling,@function
Fother_window_for_scrolling:            # @Fother_window_for_scrolling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp468:
	.cfi_def_cfa_offset 16
.Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp470:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	selected_window, %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB156_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1448, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB156_3
# BB#2:                                 # %if.then
	movq	globals+1448, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB156_18
.LBB156_3:                              # %if.else
	xorl	%edi, %edi
	movq	globals+1688, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB156_9
# BB#4:                                 # %land.lhs.true.4
	movq	globals+1688, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB156_5
	jmp	.LBB156_9
.LBB156_5:                              # %land.lhs.true.6
	movq	globals+1688, %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB156_9
# BB#6:                                 # %if.then.10
	xorl	%edi, %edi
	movq	globals+1688, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget_buffer_window
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB156_8
# BB#7:                                 # %if.then.15
	movl	$901, %edi              # imm = 0x385
	movq	globals+1688, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	display_buffer
	movq	%rax, -8(%rbp)
.LBB156_8:                              # %if.end
	jmp	.LBB156_17
.LBB156_9:                              # %if.else.19
	xorl	%edi, %edi
	movq	selected_window, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fnext_window
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	selected_window, %rax
	jne	.LBB156_16
# BB#10:                                # %if.then.24
	jmp	.LBB156_11
.LBB156_11:                             # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fnext_window
	movq	%rax, -8(%rbp)
# BB#12:                                # %do.cond
                                        #   in Loop: Header=BB156_11 Depth=1
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	movb	%dl, -97(%rbp)          # 1-byte Spill
	jne	.LBB156_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB156_11 Depth=1
	movq	-8(%rbp), %rax
	cmpq	selected_window, %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB156_14:                             # %land.end
                                        #   in Loop: Header=BB156_11 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB156_11
# BB#15:                                # %do.end
	jmp	.LBB156_16
.LBB156_16:                             # %if.end.33
	jmp	.LBB156_17
.LBB156_17:                             # %if.end.34
	jmp	.LBB156_18
.LBB156_18:                             # %if.end.35
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB156_19
	jmp	.LBB156_21
.LBB156_19:                             # %land.lhs.true.37
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB156_20
	jmp	.LBB156_21
.LBB156_20:                             # %cond.true
	jmp	.LBB156_22
.LBB156_21:                             # %cond.false
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB156_22:                             # %cond.end
	movq	-8(%rbp), %rax
	cmpq	selected_window, %rax
	jne	.LBB156_24
# BB#23:                                # %if.then.42
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	error
.LBB156_24:                             # %if.end.43
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	Fother_window_for_scrolling, .Lfunc_end156-Fother_window_for_scrolling
	.cfi_endproc

	.globl	Fscroll_other_window
	.align	16, 0x90
	.type	Fscroll_other_window,@function
Fscroll_other_window:                   # @Fscroll_other_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp471:
	.cfi_def_cfa_offset 16
.Ltmp472:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp473:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -32(%rbp)
	callq	Fother_window_for_scrolling
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	-24(%rbp), %rsi
	movq	96(%rsi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	marker_position
	movq	-24(%rbp), %rsi
	movq	96(%rsi), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	marker_byte_position
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	marker_position
	movq	-24(%rbp), %rsi
	movq	104(%rsi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	marker_byte_position
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB157_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	window_scroll
	jmp	.LBB157_11
.LBB157_2:                              # %if.else
	movl	$668, %edi              # imm = 0x29C
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB157_4
# BB#3:                                 # %if.then.14
	movq	$-1, %rsi
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	window_scroll
	jmp	.LBB157_10
.LBB157_4:                              # %if.else.15
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB157_6
# BB#5:                                 # %if.then.18
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB157_6:                              # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB157_8
# BB#7:                                 # %cond.true
	jmp	.LBB157_9
.LBB157_8:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB157_9:                              # %cond.end
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	window_scroll
.LBB157_10:                             # %if.end.25
	jmp	.LBB157_11
.LBB157_11:                             # %if.end.26
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	set_marker_both
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end157:
	.size	Fscroll_other_window, .Lfunc_end157-Fscroll_other_window
	.cfi_endproc

	.align	16, 0x90
	.type	window_scroll,@function
window_scroll:                          # @window_scroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp474:
	.cfi_def_cfa_offset 16
.Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp476:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%cl, %al
	movb	%dl, %r8b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %r8b
	movb	%r8b, -17(%rbp)
	andb	$1, %al
	movb	%al, -18(%rbp)
	callq	SPECPDL_INDEX
	movq	$-2147483648, %rdi      # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movb	$1, immediate_quit
	movq	-16(%rbp), %rsi
	callq	clip_to_bounds
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	wset_redisplay
	testb	$1, -17(%rbp)
	je	.LBB158_3
# BB#1:                                 # %land.lhs.true
	testb	$1, globals+3361
	je	.LBB158_3
# BB#2:                                 # %if.then
	movl	$447, %edi              # imm = 0x1BF
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB158_3:                              # %if.end
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB158_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movb	-17(%rbp), %dl
	movb	-18(%rbp), %sil
	andb	$1, %dl
	andb	$1, %sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
	movl	%ecx, %esi
	movzbl	%dl, %edx
	movb	-41(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	window_scroll_pixel_based
	jmp	.LBB158_6
.LBB158_5:                              # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movb	-17(%rbp), %dl
	movb	-18(%rbp), %sil
	andb	$1, %dl
	andb	$1, %sil
	movb	%sil, -42(%rbp)         # 1-byte Spill
	movl	%ecx, %esi
	movzbl	%dl, %edx
	movb	-42(%rbp), %r8b         # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	window_scroll_line_based
.LBB158_6:                              # %if.end.14
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$-8193, %cx             # imm = 0xFFFFFFFFFFFFDFFF
	movw	%cx, 468(%rax)
	movb	$0, immediate_quit
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end158:
	.size	window_scroll, .Lfunc_end158-window_scroll
	.cfi_endproc

	.globl	Fscroll_left
	.align	16, 0x90
	.type	Fscroll_left,@function
Fscroll_left:                           # @Fscroll_left
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp477:
	.cfi_def_cfa_offset 16
.Ltmp478:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp479:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB159_2
# BB#1:                                 # %cond.true
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	window_body_width
	subl	$2, %eax
	movslq	%eax, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB159_3
.LBB159_2:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	Fprefix_numeric_value
	sarq	$2, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB159_3:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	set_window_hscroll
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB159_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 280(%rcx)
.LBB159_5:                              # %if.end
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	andw	$32767, %cx             # imm = 0x7FFF
	orw	$-32768, %cx            # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, 468(%rax)
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	Fscroll_left, .Lfunc_end159-Fscroll_left
	.cfi_endproc

	.globl	Fscroll_right
	.align	16, 0x90
	.type	Fscroll_right,@function
Fscroll_right:                          # @Fscroll_right
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp480:
	.cfi_def_cfa_offset 16
.Ltmp481:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp482:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB160_2
# BB#1:                                 # %cond.true
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	window_body_width
	subl	$2, %eax
	movslq	%eax, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB160_3
.LBB160_2:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	Fprefix_numeric_value
	sarq	$2, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB160_3:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	set_window_hscroll
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB160_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 280(%rcx)
.LBB160_5:                              # %if.end
	movq	-24(%rbp), %rax
	movw	468(%rax), %cx
	andw	$32767, %cx             # imm = 0x7FFF
	orw	$-32768, %cx            # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, 468(%rax)
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end160:
	.size	Fscroll_right, .Lfunc_end160-Fscroll_right
	.cfi_endproc

	.globl	Fminibuffer_selected_window
	.align	16, 0x90
	.type	Fminibuffer_selected_window,@function
Fminibuffer_selected_window:            # @Fminibuffer_selected_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp483:
	.cfi_def_cfa_offset 16
.Ltmp484:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp485:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, minibuf_level
	jle	.LBB161_5
# BB#1:                                 # %land.lhs.true
	movq	selected_window, %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB161_5
# BB#2:                                 # %land.lhs.true.1
	movq	minibuf_selected_window, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB161_3
	jmp	.LBB161_5
.LBB161_3:                              # %land.lhs.true.3
	movq	minibuf_selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB161_4
	jmp	.LBB161_5
.LBB161_4:                              # %if.then
	movq	minibuf_selected_window, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB161_6
.LBB161_5:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB161_6:                              # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end161:
	.size	Fminibuffer_selected_window, .Lfunc_end161-Fminibuffer_selected_window
	.cfi_endproc

	.globl	Frecenter
	.align	16, 0x90
	.type	Frecenter,@function
Frecenter:                              # @Frecenter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp486:
	.cfi_def_cfa_offset 16
.Ltmp487:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp488:
	.cfi_def_cfa_register %rbp
	subq	$14800, %rsp            # imm = 0x39D0
	movq	%rdi, -16(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-32(%rbp), %rax
	cmpq	current_buffer, %rax
	je	.LBB162_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.20, %rdi
	movb	$0, %al
	callq	error
.LBB162_2:                              # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	$0, 888(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -14656(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-14656(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB162_12
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	movq	globals+1992, %rax
	movq	%rax, -14664(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-14664(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB162_11
# BB#4:                                 # %land.lhs.true
	movl	$938, %edi              # imm = 0x3AA
	movq	globals+1992, %rax
	movq	%rax, -14672(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-14672(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB162_6
# BB#5:                                 # %lor.lhs.false
	movq	selected_frame, %rdi
	callq	Ftty_type
	xorl	%edi, %edi
	movq	%rax, -14680(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-14680(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB162_11
.LBB162_6:                              # %if.then.12
	movq	$0, -80(%rbp)
.LBB162_7:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	n_compositions, %rax
	jge	.LBB162_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB162_7 Depth=1
	movq	-80(%rbp), %rax
	movq	composition_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	$0, 32(%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB162_7 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB162_7
.LBB162_10:                             # %for.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	Fredraw_frame
	movb	$1, frame_garbaged
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rax, -14688(%rbp)      # 8-byte Spill
	callq	fset_redisplay
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rax)
.LBB162_11:                             # %if.end.18
	movb	$1, -33(%rbp)
	jmp	.LBB162_19
.LBB162_12:                             # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB162_14
# BB#13:                                # %if.then.21
	movb	$1, -33(%rbp)
	jmp	.LBB162_18
.LBB162_14:                             # %if.else.22
	movq	-16(%rbp), %rdi
	callq	Fprefix_numeric_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB162_16
# BB#15:                                # %cond.true
	jmp	.LBB162_17
.LBB162_16:                             # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -14696(%rbp)      # 8-byte Spill
.LBB162_17:                             # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB162_18:                             # %if.end.30
	jmp	.LBB162_19
.LBB162_19:                             # %if.end.31
	movl	$4, %eax
	movq	globals+3264, %rcx
	movq	-24(%rbp), %rdx
	movl	268(%rdx), %esi
	movl	%eax, -14700(%rbp)      # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-14700(%rbp), %esi      # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	jge	.LBB162_21
# BB#20:                                # %cond.true.35
	movq	globals+3264, %rax
	movq	%rax, -14712(%rbp)      # 8-byte Spill
	jmp	.LBB162_22
.LBB162_21:                             # %cond.false.36
	movl	$4, %eax
	movq	-24(%rbp), %rcx
	movl	268(%rcx), %edx
	movl	%eax, -14716(%rbp)      # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-14716(%rbp), %esi      # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -14712(%rbp)      # 8-byte Spill
.LBB162_22:                             # %cond.end.40
	movq	-14712(%rbp), %rax      # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB162_24
# BB#23:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -14728(%rbp)      # 8-byte Spill
	jmp	.LBB162_28
.LBB162_24:                             # %cond.false.44
	movl	$4, %eax
	movq	globals+3264, %rcx
	movq	-24(%rbp), %rdx
	movl	268(%rdx), %esi
	movl	%eax, -14732(%rbp)      # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-14732(%rbp), %esi      # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	jge	.LBB162_26
# BB#25:                                # %cond.true.50
	movq	globals+3264, %rax
	movq	%rax, -14744(%rbp)      # 8-byte Spill
	jmp	.LBB162_27
.LBB162_26:                             # %cond.false.51
	movl	$4, %eax
	movq	-24(%rbp), %rcx
	movl	268(%rcx), %edx
	movl	%eax, -14748(%rbp)      # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-14748(%rbp), %esi      # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -14744(%rbp)      # 8-byte Spill
.LBB162_27:                             # %cond.end.55
	movq	-14744(%rbp), %rax      # 8-byte Reload
	movq	%rax, -14728(%rbp)      # 8-byte Spill
.LBB162_28:                             # %cond.end.57
	movq	-14728(%rbp), %rax      # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB162_54
# BB#29:                                # %if.then.66
	testb	$1, -33(%rbp)
	je	.LBB162_31
# BB#30:                                # %if.then.67
	callq	bidi_shelve_cache
	leaq	-4880(%rbp), %rdi
	movq	%rax, -4904(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -4896(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -4888(%rbp)
	movq	-24(%rbp), %rsi
	movq	-4896(%rbp), %rdx
	movq	-4888(%rbp), %rcx
	callq	start_display
	movq	-24(%rbp), %rdi
	callq	window_box_height
	leaq	-4880(%rbp), %rdi
	movl	$2, %r8d
	cltd
	idivl	%r8d
	movl	%eax, %esi
	callq	move_it_vertically_backward
	xorl	%esi, %esi
	movq	-4568(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-4560(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-4904(%rbp), %rdi
	callq	bidi_unshelve_cache
	jmp	.LBB162_53
.LBB162_31:                             # %if.else.79
	cmpq	$0, -64(%rbp)
	jge	.LBB162_46
# BB#32:                                # %if.then.82
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	subq	-64(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB162_34
# BB#33:                                # %cond.true.88
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -14760(%rbp)      # 8-byte Spill
	jmp	.LBB162_35
.LBB162_34:                             # %cond.false.89
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-64(%rbp), %rcx
	movq	%rcx, -14760(%rbp)      # 8-byte Spill
.LBB162_35:                             # %cond.end.91
	movq	-14760(%rbp), %rax      # 8-byte Reload
	movq	%rax, -9728(%rbp)
	movq	-24(%rbp), %rdi
	callq	window_box_height
	movl	%eax, -9736(%rbp)
	movq	-24(%rbp), %rdi
	callq	window_internal_height
	movl	%eax, -9740(%rbp)
	callq	bidi_shelve_cache
	movq	%rax, -9752(%rbp)
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	movq	-9728(%rbp), %rsi
	movl	-9740(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	clip_to_bounds
	leaq	-9704(%rbp), %rdi
	movq	%rax, -9728(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -9720(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -9712(%rbp)
	movq	-24(%rbp), %rsi
	movq	-9720(%rbp), %rdx
	movq	-9712(%rbp), %rcx
	callq	start_display
	leaq	-9704(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	callq	move_it_by_lines
	leaq	-9704(%rbp), %rdi
	movl	$0, -7272(%rbp)
	movl	$0, -7264(%rbp)
	movq	-9728(%rbp), %rsi
	callq	move_it_by_lines
	movslq	-7264(%rbp), %rax
	cmpq	-9728(%rbp), %rax
	jne	.LBB162_37
# BB#36:                                # %if.then.112
	movl	-7272(%rbp), %eax
	movl	-9736(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -9736(%rbp)
	jmp	.LBB162_38
.LBB162_37:                             # %if.else.115
	leaq	-9704(%rbp), %rdi
	callq	line_bottom_y
	movl	-9736(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -9736(%rbp)
	movl	-7264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7264(%rbp)
.LBB162_38:                             # %if.end.120
	movl	-7372(%rbp), %eax
	movl	%eax, -9732(%rbp)
	movslq	-7264(%rbp), %rcx
	cmpq	-9728(%rbp), %rcx
	jge	.LBB162_40
# BB#39:                                # %if.then.125
	movslq	-7264(%rbp), %rax
	movq	-9728(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -9728(%rbp)
	movl	-7376(%rbp), %edx
	movl	%edx, -9732(%rbp)
	movq	-9728(%rbp), %rax
	movq	-9688(%rbp), %rcx
	movl	368(%rcx), %edx
	addl	-9732(%rbp), %edx
	movslq	%edx, %rcx
	imulq	%rcx, %rax
	movslq	-9736(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -9736(%rbp)
.LBB162_40:                             # %if.end.135
	cmpl	$0, -9736(%rbp)
	jg	.LBB162_42
# BB#41:                                # %if.then.138
	xorl	%esi, %esi
	movq	-9752(%rbp), %rdi
	callq	bidi_unshelve_cache
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB162_66
.LBB162_42:                             # %if.end.140
	leaq	-9704(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-9720(%rbp), %rdx
	movq	-9712(%rbp), %rcx
	callq	start_display
	leaq	-9704(%rbp), %rdi
	movl	$0, -7272(%rbp)
	movl	-9736(%rbp), %esi
	callq	move_it_vertically_backward
	movl	-9732(%rbp), %esi
	addl	-9736(%rbp), %esi
	movl	%esi, -9736(%rbp)
.LBB162_43:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	subl	-7272(%rbp), %eax
	cmpl	-9736(%rbp), %eax
	jle	.LBB162_45
# BB#44:                                # %while.body
                                        #   in Loop: Header=BB162_43 Depth=1
	leaq	-9704(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	move_it_by_lines
	jmp	.LBB162_43
.LBB162_45:                             # %while.end
	xorl	%esi, %esi
	movq	-9392(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-9384(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-9752(%rbp), %rdi
	callq	bidi_unshelve_cache
	jmp	.LBB162_52
.LBB162_46:                             # %if.else.153
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	-64(%rbp), %rax
	jge	.LBB162_48
# BB#47:                                # %cond.true.159
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -14768(%rbp)      # 8-byte Spill
	jmp	.LBB162_49
.LBB162_48:                             # %cond.false.160
	movq	-64(%rbp), %rax
	movq	%rax, -14768(%rbp)      # 8-byte Spill
.LBB162_49:                             # %cond.end.161
	movq	-14768(%rbp), %rax      # 8-byte Reload
	movq	%rax, -14576(%rbp)
	movq	-24(%rbp), %rdi
	callq	window_internal_height
	movl	%eax, -14580(%rbp)
	callq	bidi_shelve_cache
	movq	%rax, -14592(%rbp)
	movslq	-68(%rbp), %rdi
	movq	-14576(%rbp), %rsi
	movl	-14580(%rbp), %ecx
	subl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	callq	clip_to_bounds
	leaq	-14552(%rbp), %rdi
	movq	%rax, -14576(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -14568(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -14560(%rbp)
	movq	-24(%rbp), %rsi
	movq	-14568(%rbp), %rdx
	movq	-14560(%rbp), %rcx
	callq	start_display
	leaq	-14552(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	callq	move_it_by_lines
	cmpq	$0, -14576(%rbp)
	jle	.LBB162_51
# BB#50:                                # %if.then.180
	leaq	-14552(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, -12120(%rbp)
	movl	$0, -12112(%rbp)
	subq	-14576(%rbp), %rcx
	movq	%rcx, %rsi
	callq	move_it_by_lines
.LBB162_51:                             # %if.end.184
	xorl	%esi, %esi
	movq	-14240(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-14232(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-14592(%rbp), %rdi
	callq	bidi_unshelve_cache
.LBB162_52:                             # %if.end.191
	jmp	.LBB162_53
.LBB162_53:                             # %if.end.192
	jmp	.LBB162_60
.LBB162_54:                             # %if.else.193
	movq	-24(%rbp), %rdi
	callq	window_internal_height
	movl	%eax, -14644(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB162_56
# BB#55:                                # %if.then.198
	movl	$2, %eax
	movl	-14644(%rbp), %ecx
	movl	%eax, -14772(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-14772(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	jmp	.LBB162_59
.LBB162_56:                             # %if.else.201
	cmpq	$0, -64(%rbp)
	jge	.LBB162_58
# BB#57:                                # %if.then.204
	movslq	-14644(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB162_58:                             # %if.end.207
	jmp	.LBB162_59
.LBB162_59:                             # %if.end.208
	movslq	-68(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-14644(%rbp), %eax
	subl	-68(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	callq	clip_to_bounds
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	subq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	vmotion
	movl	$48, %r8d
	movl	%r8d, %edx
	leaq	-14640(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-14640(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-14632(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB162_60:                             # %if.end.221
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	set_marker_both
	movb	$1, %r8b
	movq	-24(%rbp), %rcx
	movw	468(%rcx), %r9w
	andw	$-8193, %r9w            # imm = 0xFFFFFFFFFFFFDFFF
	movw	%r9w, 468(%rcx)
	movq	-24(%rbp), %rcx
	movw	468(%rcx), %r9w
	andw	$-65, %r9w
	orw	$64, %r9w
	movw	%r9w, 468(%rcx)
	movq	-56(%rbp), %rcx
	movq	current_buffer, %rdx
	cmpq	760(%rdx), %rcx
	movq	%rax, -14784(%rbp)      # 8-byte Spill
	movb	%r8b, -14785(%rbp)      # 1-byte Spill
	je	.LBB162_65
# BB#61:                                # %lor.rhs
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB162_63
# BB#62:                                # %cond.true.234
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -14800(%rbp)      # 8-byte Spill
	jmp	.LBB162_64
.LBB162_63:                             # %cond.false.236
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -14800(%rbp)      # 8-byte Spill
	jmp	.LBB162_64
.LBB162_64:                             # %cond.end.237
	movq	-14800(%rbp), %rax      # 8-byte Reload
	movq	-56(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	sete	%sil
	movb	%sil, -14785(%rbp)      # 1-byte Spill
.LBB162_65:                             # %lor.end
	movb	-14785(%rbp), %al       # 1-byte Reload
	movq	-24(%rbp), %rcx
	movzbl	%al, %edx
	andl	$1, %edx
	movw	%dx, %si
	movw	468(%rcx), %di
	shlw	$4, %si
	andw	$-17, %di
	orw	%si, %di
	movw	%di, 468(%rcx)
	movq	-24(%rbp), %rdi
	callq	wset_redisplay
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB162_66:                             # %return
	movq	-8(%rbp), %rax
	addq	$14800, %rsp            # imm = 0x39D0
	popq	%rbp
	retq
.Lfunc_end162:
	.size	Frecenter, .Lfunc_end162-Frecenter
	.cfi_endproc

	.globl	Fwindow_text_width
	.align	16, 0x90
	.type	Fwindow_text_width,@function
Fwindow_text_width:                     # @Fwindow_text_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp489:
	.cfi_def_cfa_offset 16
.Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp491:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB163_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	window_box_width
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	cltd
	idivl	364(%rdi)
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB163_3
.LBB163_2:                              # %if.else
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	window_box_width
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
.LBB163_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end163:
	.size	Fwindow_text_width, .Lfunc_end163-Fwindow_text_width
	.cfi_endproc

	.globl	Fwindow_text_height
	.align	16, 0x90
	.type	Fwindow_text_height,@function
Fwindow_text_height:                    # @Fwindow_text_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp492:
	.cfi_def_cfa_offset 16
.Ltmp493:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp494:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB164_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	window_box_height
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	cltd
	idivl	368(%rdi)
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB164_3
.LBB164_2:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	window_box_height
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -8(%rbp)
.LBB164_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	Fwindow_text_height, .Lfunc_end164-Fwindow_text_height
	.cfi_endproc

	.globl	Fmove_to_window_line
	.align	16, 0x90
	.type	Fmove_to_window_line,@function
Fmove_to_window_line:                   # @Fmove_to_window_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp495:
	.cfi_def_cfa_offset 16
.Ltmp496:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp497:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB165_1
	jmp	.LBB165_2
.LBB165_1:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB165_3
.LBB165_2:                              # %if.then
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB165_3:                              # %if.end
	movq	selected_window, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_position
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movslq	-24(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	752(%rdi), %rax
	jl	.LBB165_5
# BB#4:                                 # %lor.lhs.false
	movslq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB165_6
.LBB165_5:                              # %if.then.12
	movq	-16(%rbp), %rdi
	callq	window_internal_height
	movl	%eax, -36(%rbp)
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	negl	%eax
	movslq	%eax, %rdi
	leaq	2(,%rdi,4), %rdi
	movq	-32(%rbp), %rsi
	xorl	%eax, %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rsi
	movq	88(%rdx), %rdi
	movq	current_buffer(%rip), %rdx
	movq	736(%rdx), %r8
	movq	744(%rdx), %rcx
	movq	%r8, %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	set_marker_both
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	Fbolp
	movl	-60(%rbp), %edi         # 4-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	setne	%r9b
	movq	-16(%rbp), %rax
	movzbl	%r9b, %edi
	movw	%di, %r10w
	movw	468(%rax), %r11w
	shlw	$4, %r10w
	andw	$-17, %r11w
	orw	%r10w, %r11w
	movw	%r11w, 468(%rax)
	movq	-16(%rbp), %rax
	movw	468(%rax), %r10w
	andw	$-33, %r10w
	orw	$32, %r10w
	movw	%r10w, 468(%rax)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB165_7
.LBB165_6:                              # %if.else
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	Fgoto_char
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB165_7:                              # %if.end.31
	movq	-16(%rbp), %rdi
	callq	displayed_window_lines
	xorl	%edi, %edi
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB165_9
# BB#8:                                 # %if.then.36
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-124(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB165_12
.LBB165_9:                              # %if.else.40
	movq	-8(%rbp), %rdi
	callq	Fprefix_numeric_value
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB165_11
# BB#10:                                # %if.then.44
	movq	-48(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB165_11:                             # %if.end.47
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB165_12:                             # %if.end.50
	movq	-16(%rbp), %rax
	cmpl	$0, 472(%rax)
	je	.LBB165_14
# BB#13:                                # %if.then.52
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB165_14:                             # %if.end.57
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	Fmove_to_window_line, .Lfunc_end165-Fmove_to_window_line
	.cfi_endproc

	.align	16, 0x90
	.type	displayed_window_lines,@function
displayed_window_lines:                 # @displayed_window_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp498:
	.cfi_def_cfa_offset 16
.Ltmp499:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp500:
	.cfi_def_cfa_register %rbp
	subq	$4880, %rsp             # imm = 0x1310
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	window_box_height
	movl	%eax, -4828(%rbp)
	movq	$0, -4856(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB166_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	%rax, -4840(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	jmp	.LBB166_3
.LBB166_2:                              # %if.else
	movq	$0, -4840(%rbp)
.LBB166_3:                              # %if.end
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -4872(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_position
	movq	current_buffer, %rdi
	movq	768(%rdi), %rdx
	movq	-4872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -4824(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -4880(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	marker_byte_position
	movq	current_buffer, %rdx
	movq	776(%rdx), %rdx
	movq	-4880(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -4816(%rbp)
	callq	bidi_shelve_cache
	leaq	-4808(%rbp), %rdi
	movq	%rax, -4856(%rbp)
	movq	-8(%rbp), %rsi
	movq	-4824(%rbp), %rdx
	movq	-4816(%rbp), %rcx
	callq	start_display
	leaq	-4808(%rbp), %rdi
	movl	-4828(%rbp), %esi
	callq	move_it_vertically
	leaq	-4808(%rbp), %rdi
	callq	line_bottom_y
	xorl	%esi, %esi
	movl	%eax, -4844(%rbp)
	movq	-4856(%rbp), %rdi
	callq	bidi_unshelve_cache
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$2, %eax
	je	.LBB166_5
# BB#4:                                 # %if.then.13
	movl	-4828(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4828(%rbp)
.LBB166_5:                              # %if.end.14
	movl	-4844(%rbp), %eax
	cmpl	-4828(%rbp), %eax
	jge	.LBB166_7
# BB#6:                                 # %if.then.16
	movq	-4792(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -4860(%rbp)
	movl	-4828(%rbp), %ecx
	subl	-4844(%rbp), %ecx
	addl	-4860(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-4860(%rbp)
	addl	-2368(%rbp), %eax
	movl	%eax, -2368(%rbp)
.LBB166_7:                              # %if.end.20
	cmpq	$0, -4840(%rbp)
	je	.LBB166_9
# BB#8:                                 # %if.then.21
	movq	-4840(%rbp), %rdi
	callq	set_buffer_internal
.LBB166_9:                              # %if.end.22
	movl	-2368(%rbp), %eax
	addq	$4880, %rsp             # imm = 0x1310
	popq	%rbp
	retq
.Lfunc_end166:
	.size	displayed_window_lines, .Lfunc_end166-displayed_window_lines
	.cfi_endproc

	.globl	Fwindow_configuration_p
	.align	16, 0x90
	.type	Fwindow_configuration_p,@function
Fwindow_configuration_p:                # @Fwindow_configuration_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp501:
	.cfi_def_cfa_offset 16
.Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp503:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOW_CONFIGURATIONP
	testb	$1, %al
	jne	.LBB167_1
	jmp	.LBB167_2
.LBB167_1:                              # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB167_3
.LBB167_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB167_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end167:
	.size	Fwindow_configuration_p, .Lfunc_end167-Fwindow_configuration_p
	.cfi_endproc

	.globl	Fwindow_configuration_frame
	.align	16, 0x90
	.type	Fwindow_configuration_frame,@function
Fwindow_configuration_frame:            # @Fwindow_configuration_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp504:
	.cfi_def_cfa_offset 16
.Ltmp505:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp506:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_WINDOW_CONFIGURATION
	movq	-8(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XVECTOR
	movq	8(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end168:
	.size	Fwindow_configuration_frame, .Lfunc_end168-Fwindow_configuration_frame
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_WINDOW_CONFIGURATION,@function
CHECK_WINDOW_CONFIGURATION:             # @CHECK_WINDOW_CONFIGURATION
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp507:
	.cfi_def_cfa_offset 16
.Ltmp508:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp509:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOW_CONFIGURATIONP
	testb	$1, %al
	jne	.LBB169_1
	jmp	.LBB169_2
.LBB169_1:                              # %cond.true
	jmp	.LBB169_3
.LBB169_2:                              # %cond.false
	movl	$1021, %edi             # imm = 0x3FD
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB169_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end169:
	.size	CHECK_WINDOW_CONFIGURATION, .Lfunc_end169-CHECK_WINDOW_CONFIGURATION
	.cfi_endproc

	.globl	Fset_window_configuration
	.align	16, 0x90
	.type	Fset_window_configuration,@function
Fset_window_configuration:              # @Fset_window_configuration
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp510:
	.cfi_def_cfa_offset 16
.Ltmp511:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp512:
	.cfi_def_cfa_register %rbp
	subq	$944, %rsp              # imm = 0x3B0
	movq	%rdi, -8(%rbp)
	movq	$-1, -56(%rbp)
	movq	$16384, -64(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_WINDOW_CONFIGURATION
	movq	-8(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB170_22
.LBB170_2:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_10
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB170_8
# BB#4:                                 # %land.lhs.true
	movq	selected_window, %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB170_5
	jmp	.LBB170_8
.LBB170_5:                              # %land.lhs.true.13
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB170_8
# BB#6:                                 # %land.lhs.true.17
	movq	selected_window, %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB170_8
# BB#7:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	96(%rax), %rdi
	callq	marker_position
	movq	%rax, -56(%rbp)
	jmp	.LBB170_9
.LBB170_8:                              # %if.else.24
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)
.LBB170_9:                              # %if.end
	jmp	.LBB170_21
.LBB170_10:                             # %if.else.25
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB170_13
# BB#11:                                # %land.lhs.true.30
	movq	selected_window, %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB170_13
# BB#12:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	96(%rax), %rdi
	callq	marker_position
	movq	%rax, -56(%rbp)
	jmp	.LBB170_20
.LBB170_13:                             # %if.else.38
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_15
# BB#14:                                # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB170_19
.LBB170_15:                             # %cond.false
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_17
# BB#16:                                # %cond.true.46
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB170_18
.LBB170_17:                             # %cond.false.49
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB170_18:                             # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB170_19:                             # %cond.end.53
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
.LBB170_20:                             # %if.end.55
	jmp	.LBB170_21
.LBB170_21:                             # %if.end.56
	jmp	.LBB170_22
.LBB170_22:                             # %if.end.57
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XVECTOR
	movq	8(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB170_144
# BB#23:                                # %if.then.63
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	$0, -168(%rbp)
.LBB170_24:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB170_31
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB170_24 Depth=1
	movq	-168(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	XVECTOR
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB170_26
	jmp	.LBB170_29
.LBB170_26:                             # %land.lhs.true.74
                                        #   in Loop: Header=BB170_24 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	movq	-136(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB170_29
# BB#27:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB170_24 Depth=1
	movq	-136(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_29
# BB#28:                                # %if.then.83
                                        #   in Loop: Header=BB170_24 Depth=1
	movl	$796, %edi              # imm = 0x31C
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB170_29:                             # %if.end.86
                                        #   in Loop: Header=BB170_24 Depth=1
	jmp	.LBB170_30
.LBB170_30:                             # %for.inc
                                        #   in Loop: Header=BB170_24 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB170_24
.LBB170_31:                             # %for.end
	movq	-48(%rbp), %rax
	movabsq	$-17179869185, %rcx     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rcx
	movq	%rcx, 208(%rax)
	callq	block_input
	movq	selected_window, %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	80(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_45
# BB#32:                                # %if.then.91
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_34
# BB#33:                                # %cond.true.98
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB170_38
.LBB170_34:                             # %cond.false.101
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_36
# BB#35:                                # %cond.true.107
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB170_37
.LBB170_36:                             # %cond.false.111
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB170_37:                             # %cond.end.116
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB170_38:                             # %cond.end.118
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_40
# BB#39:                                # %cond.true.123
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB170_44
.LBB170_40:                             # %cond.false.125
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_42
# BB#41:                                # %cond.true.131
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	744(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB170_43
.LBB170_42:                             # %cond.false.135
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB170_43:                             # %cond.end.140
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB170_44:                             # %cond.end.142
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB170_45:                             # %if.end.145
	movq	-48(%rbp), %rdi
	callq	fset_redisplay
	movq	-48(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-524289, %rax          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rax           # imm = 0x80000
	movq	%rax, 208(%rdi)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	count_windows
	movq	%rax, -184(%rbp)
# BB#46:                                # %do.body
	movq	-184(%rbp), %rax
	movq	-64(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB170_48
# BB#47:                                # %if.then.153
	movq	-184(%rbp), %rax
	shlq	$3, %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-184(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -152(%rbp)
	jmp	.LBB170_49
.LBB170_48:                             # %if.else.156
	movl	$8, %eax
	movl	%eax, %esi
	movq	-184(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -152(%rbp)
	movb	$1, -73(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB170_49:                             # %if.end.158
	jmp	.LBB170_50
.LBB170_50:                             # %do.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	get_leaf_windows
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	callq	delete_all_child_windows
	movq	$0, -168(%rbp)
.LBB170_51:                             # %for.cond.161
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB170_63 Depth 2
	movq	-168(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB170_121
# BB#52:                                # %for.body.165
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-168(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	XVECTOR
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_next
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_54
# BB#53:                                # %if.then.174
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	160(%rax), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	movq	8(%rax), %rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	callq	wset_parent
	jmp	.LBB170_55
.LBB170_54:                             # %if.else.180
                                        #   in Loop: Header=BB170_51 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_parent
.LBB170_55:                             # %if.end.182
                                        #   in Loop: Header=BB170_51 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_57
# BB#56:                                # %if.then.185
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	168(%rax), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	movq	8(%rax), %rsi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	callq	wset_prev
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XWINDOW
	movq	-136(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	wset_next
	jmp	.LBB170_60
.LBB170_57:                             # %if.else.195
                                        #   in Loop: Header=BB170_51 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_prev
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB170_59
# BB#58:                                # %if.then.200
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	-136(%rbp), %rdi
	movq	96(%rdi), %rdi
	sarq	$2, %rdi
	movq	-128(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movslq	264(%rax), %rax
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	setne	%dl
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	%dl, %esi
	andl	$1, %esi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	wset_combination
.LBB170_59:                             # %if.end.210
                                        #   in Loop: Header=BB170_51 Depth=1
	jmp	.LBB170_60
.LBB170_60:                             # %if.end.211
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	176(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB170_61
	jmp	.LBB170_62
.LBB170_61:                             # %if.then.213
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	176(%rax), %rsi
	callq	wset_buffer
.LBB170_62:                             # %if.end.215
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 240(%rax)
	movq	-136(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 244(%rax)
	movq	-136(%rbp), %rax
	movq	72(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-136(%rbp), %rax
	movq	80(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 248(%rax)
	movq	-136(%rbp), %rax
	movq	88(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 252(%rax)
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 264(%rax)
	movq	-136(%rbp), %rax
	movq	104(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 268(%rax)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	112(%rax), %rsi
	callq	wset_normal_cols
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	120(%rax), %rsi
	callq	wset_normal_lines
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	sarq	$2, %rax
	movq	-128(%rbp), %rsi
	movq	%rax, 272(%rsi)
	movq	-136(%rbp), %rax
	movq	152(%rax), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rsi        # 8-byte Reload
	subq	%rax, %rsi
	setne	%dl
	movq	-128(%rbp), %rax
	movzbl	%dl, %ecx
	movzwl	468(%rax), %edi
	shll	$15, %ecx
	andl	$32767, %edi            # imm = 0x7FFF
	orl	%ecx, %edi
	movw	%di, %r8w
	movw	%r8w, 468(%rax)
	movq	-136(%rbp), %rax
	movq	136(%rax), %rax
	sarq	$2, %rax
	movq	-128(%rbp), %r9
	movq	%rax, 280(%r9)
	movq	-136(%rbp), %rax
	movq	144(%rax), %rax
	sarq	$2, %rax
	movq	-128(%rbp), %r9
	movq	%rax, 288(%r9)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	wset_display_table
	movq	-136(%rbp), %rax
	movq	192(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 428(%rax)
	movq	-136(%rbp), %rax
	movq	200(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 432(%rax)
	movq	-136(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 420(%rax)
	movq	-136(%rbp), %rax
	movq	216(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 424(%rax)
	movq	-136(%rbp), %rax
	movq	224(%rax), %rax
	movl	-412(%rbp), %edi        # 4-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rsi        # 8-byte Reload
	subq	%rax, %rsi
	setne	%dl
	movq	-128(%rbp), %rax
	movzbl	%dl, %ecx
	movw	%cx, %r8w
	movw	468(%rax), %r10w
	shlw	$12, %r8w
	andw	$-4097, %r10w           # imm = 0xFFFFFFFFFFFFEFFF
	orw	%r8w, %r10w
	movw	%r10w, 468(%rax)
	movq	-136(%rbp), %rax
	movq	232(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 436(%rax)
	movq	-136(%rbp), %rax
	movq	256(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 440(%rax)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	wset_vertical_scroll_bar_type
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	264(%rax), %rsi
	callq	wset_horizontal_scroll_bar_type
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	248(%rax), %rsi
	callq	wset_dedicated
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	272(%rax), %rsi
	callq	wset_combination_limit
	movq	-136(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB170_63:                             # %for.cond.284
                                        #   Parent Loop BB170_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB170_74
# BB#64:                                # %for.body.288
                                        #   in Loop: Header=BB170_63 Depth=2
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB170_72
# BB#65:                                # %if.then.294
                                        #   in Loop: Header=BB170_63 Depth=2
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_70
# BB#66:                                # %if.then.299
                                        #   in Loop: Header=BB170_63 Depth=2
	movq	-120(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	184(%rax), %rsi
	callq	Fassq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB170_69
# BB#67:                                # %land.lhs.true.308
                                        #   in Loop: Header=BB170_63 Depth=2
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_69
# BB#68:                                # %if.then.315
                                        #   in Loop: Header=BB170_63 Depth=2
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcdr
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB170_69:                             # %if.end.318
                                        #   in Loop: Header=BB170_63 Depth=2
	jmp	.LBB170_71
.LBB170_70:                             # %if.else.319
                                        #   in Loop: Header=BB170_63 Depth=2
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movq	-120(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdx
	callq	Fset_window_parameter
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB170_71:                             # %if.end.326
                                        #   in Loop: Header=BB170_63 Depth=2
	jmp	.LBB170_72
.LBB170_72:                             # %if.end.327
                                        #   in Loop: Header=BB170_63 Depth=2
	jmp	.LBB170_73
.LBB170_73:                             # %for.inc.328
                                        #   in Loop: Header=BB170_63 Depth=2
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB170_63
.LBB170_74:                             # %for.end.332
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-136(%rbp), %rax
	movq	16(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB170_75
	jmp	.LBB170_80
.LBB170_75:                             # %land.lhs.true.336
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-136(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_80
# BB#76:                                # %if.then.343
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	16(%rax), %rsi
	callq	wset_buffer
	movq	-136(%rbp), %rax
	movq	176(%rax), %rax
	xorl	%edi, %edi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rsi        # 8-byte Reload
	subq	%rax, %rsi
	setne	%cl
	movq	-128(%rbp), %rax
	movzbl	%cl, %edi
	movw	%di, %dx
	movw	468(%rax), %r8w
	shlw	$4, %dx
	andw	$-17, %r8w
	orw	%dx, %r8w
	movw	%r8w, 468(%rax)
	movq	-128(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	-128(%rbp), %r9
	movq	80(%r9), %rdx
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	set_marker_restricted
	movq	-128(%rbp), %rdx
	movq	96(%rdx), %rdi
	movq	-136(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	-128(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	set_marker_restricted
	movq	-128(%rbp), %rdx
	movq	104(%rdx), %rdi
	movq	-136(%rbp), %rdx
	movq	40(%rdx), %rsi
	movq	-128(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	set_marker_restricted
	movq	-136(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	-32(%rbp), %rdx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	je	.LBB170_79
# BB#77:                                # %land.lhs.true.369
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-136(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_79
# BB#78:                                # %if.then.374
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	96(%rax), %rdi
	callq	Fgoto_char
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB170_79:                             # %if.end.377
                                        #   in Loop: Header=BB170_51 Depth=1
	jmp	.LBB170_119
.LBB170_80:                             # %if.else.378
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB170_81
	jmp	.LBB170_113
.LBB170_81:                             # %land.lhs.true.382
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_113
# BB#82:                                # %if.then.389
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB170_84
# BB#83:                                # %if.then.395
                                        #   in Loop: Header=BB170_51 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx
	movq	88(%rdx), %rdi
	movq	-128(%rbp), %rdx
	movq	80(%rdx), %rsi
	movq	%rcx, %rdx
	callq	set_marker_restricted_both
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB170_84:                             # %if.end.399
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	96(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB170_98
# BB#85:                                # %if.then.405
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_87
# BB#86:                                # %cond.true.412
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB170_91
.LBB170_87:                             # %cond.false.415
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_89
# BB#88:                                # %cond.true.422
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB170_90
.LBB170_89:                             # %cond.false.426
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB170_90:                             # %cond.end.431
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB170_91:                             # %cond.end.433
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_93
# BB#92:                                # %cond.true.439
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB170_97
.LBB170_93:                             # %cond.false.442
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_95
# BB#94:                                # %cond.true.449
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	744(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB170_96
.LBB170_95:                             # %cond.false.453
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB170_96:                             # %cond.end.458
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB170_97:                             # %cond.end.460
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_restricted_both
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB170_98:                             # %if.end.463
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	104(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	jne	.LBB170_112
# BB#99:                                # %if.then.469
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-128(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_101
# BB#100:                               # %cond.true.476
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB170_105
.LBB170_101:                            # %cond.false.479
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_103
# BB#102:                               # %cond.true.486
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB170_104
.LBB170_103:                            # %cond.false.490
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB170_104:                            # %cond.end.495
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB170_105:                            # %cond.end.497
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB170_107
# BB#106:                               # %cond.true.503
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB170_111
.LBB170_107:                            # %cond.false.506
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_109
# BB#108:                               # %cond.true.513
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	744(%rax), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB170_110
.LBB170_109:                            # %cond.false.517
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB170_110:                            # %cond.end.522
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB170_111:                            # %cond.end.524
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	-648(%rbp), %rsi        # 8-byte Reload
	movq	-680(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_restricted_both
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB170_112:                            # %if.end.527
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rax
	movw	468(%rax), %cx
	andw	$-17, %cx
	orw	$16, %cx
	movw	%cx, 468(%rax)
	jmp	.LBB170_118
.LBB170_113:                            # %if.else.532
                                        #   in Loop: Header=BB170_51 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_117
# BB#114:                               # %if.then.537
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-128(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	callq	Fcurrent_buffer
	movq	%rax, %rdi
	callq	other_buffer_safely
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_buffer
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-128(%rbp), %rsi
	movq	88(%rsi), %rdi
	movq	-128(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	set_marker_restricted_both
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-128(%rbp), %rdx
	movq	96(%rdx), %rdi
	movq	-128(%rbp), %rdx
	movq	80(%rdx), %rsi
	movq	%rcx, %rdx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	set_marker_restricted_both
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-128(%rbp), %rdx
	movq	104(%rdx), %rdi
	movq	-128(%rbp), %rdx
	movq	80(%rdx), %rsi
	movq	%rcx, %rdx
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	set_marker_restricted_both
	xorl	%edi, %edi
	movq	-128(%rbp), %rcx
	movw	468(%rcx), %r9w
	andw	$-17, %r9w
	orw	$16, %r9w
	movw	%r9w, 468(%rcx)
	movq	-128(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_116
# BB#115:                               # %if.then.557
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	Fcons
	movq	%rax, -96(%rbp)
.LBB170_116:                            # %if.end.559
                                        #   in Loop: Header=BB170_51 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wset_dedicated
.LBB170_117:                            # %if.end.561
                                        #   in Loop: Header=BB170_51 Depth=1
	jmp	.LBB170_118
.LBB170_118:                            # %if.end.562
                                        #   in Loop: Header=BB170_51 Depth=1
	jmp	.LBB170_119
.LBB170_119:                            # %if.end.563
                                        #   in Loop: Header=BB170_51 Depth=1
	jmp	.LBB170_120
.LBB170_120:                            # %for.inc.564
                                        #   in Loop: Header=BB170_51 Depth=1
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB170_51
.LBB170_121:                            # %for.end.566
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	fset_root_window
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB170_123
# BB#122:                               # %if.then.573
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	96(%rax), %rdi
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rdx
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	-784(%rbp), %rsi        # 8-byte Reload
	callq	set_marker_restricted
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB170_123:                            # %if.end.582
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	select_window
	movq	selected_window, %rsi
	movq	selected_window, %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	-816(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 408(%rax)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-824(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB170_126
# BB#124:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB170_125
	jmp	.LBB170_127
.LBB170_125:                            # %land.lhs.true.595
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB170_127
.LBB170_126:                            # %if.then.601
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	Fredirect_frame_focus
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB170_127:                            # %if.end.604
	movq	$0, -160(%rbp)
.LBB170_128:                            # %for.cond.605
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jge	.LBB170_133
# BB#129:                               # %for.body.608
                                        #   in Loop: Header=BB170_128 Depth=1
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	80(%rax), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB170_131
# BB#130:                               # %if.then.614
                                        #   in Loop: Header=BB170_128 Depth=1
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free_window_matrices
.LBB170_131:                            # %if.end.616
                                        #   in Loop: Header=BB170_128 Depth=1
	jmp	.LBB170_132
.LBB170_132:                            # %for.inc.617
                                        #   in Loop: Header=BB170_128 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB170_128
.LBB170_133:                            # %for.end.619
	movl	$853, %edi              # imm = 0x355
	movq	-48(%rbp), %rax
	movabsq	$-17179869185, %rcx     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$17179869184, %rdx      # imm = 0x400000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-848(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -852(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movl	-852(%rbp), %esi        # 4-byte Reload
	movl	-852(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movq	-48(%rbp), %rdi
	callq	adjust_frame_glyphs
	callq	unblock_input
.LBB170_134:                            # %for.cond.625
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB170_141
# BB#135:                               # %for.body.630
                                        #   in Loop: Header=BB170_134 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB170_136
	jmp	.LBB170_139
.LBB170_136:                            # %land.lhs.true.635
                                        #   in Loop: Header=BB170_134 Depth=1
	movq	-88(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB170_137
	jmp	.LBB170_139
.LBB170_137:                            # %land.lhs.true.640
                                        #   in Loop: Header=BB170_134 Depth=1
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	40(%rcx), %rax
	je	.LBB170_139
# BB#138:                               # %if.then.644
                                        #   in Loop: Header=BB170_134 Depth=1
	movq	-88(%rbp), %rdi
	callq	delete_deletable_window
.LBB170_139:                            # %if.end.645
                                        #   in Loop: Header=BB170_134 Depth=1
	jmp	.LBB170_140
.LBB170_140:                            # %for.inc.646
                                        #   in Loop: Header=BB170_134 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB170_134
.LBB170_141:                            # %for.end.650
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	select_window
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	$5, %rsi
	cmpq	$0, 376(%rsi)
	movq	%rax, -872(%rbp)        # 8-byte Spill
	je	.LBB170_143
# BB#142:                               # %if.then.658
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-880(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -884(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-884(%rbp), %esi        # 4-byte Reload
	movl	-884(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	do_switch_frame
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB170_143:                            # %if.end.662
	movq	-48(%rbp), %rdi
	callq	run_window_configuration_change_hook
.LBB170_144:                            # %if.end.663
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_148
# BB#145:                               # %if.then.667
	movq	-32(%rbp), %rdi
	callq	Fset_buffer
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB170_147
# BB#146:                               # %if.then.674
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fgoto_char
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB170_147:                            # %if.end.678
	jmp	.LBB170_148
.LBB170_148:                            # %if.end.679
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, globals+1448
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, minibuf_selected_window
# BB#149:                               # %do.body.680
	testb	$1, -73(%rbp)
	je	.LBB170_151
# BB#150:                               # %if.then.682
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB170_151:                            # %if.end.685
	jmp	.LBB170_152
.LBB170_152:                            # %do.end.686
	movq	-48(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB170_154
# BB#153:                               # %cond.true.690
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB170_155
.LBB170_154:                            # %cond.false.692
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB170_155:                            # %cond.end.694
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end170:
	.size	Fset_window_configuration, .Lfunc_end170-Fset_window_configuration
	.cfi_endproc

	.align	16, 0x90
	.type	count_windows,@function
count_windows:                          # @count_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp513:
	.cfi_def_cfa_offset 16
.Ltmp514:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp515:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	$1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB171_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	count_windows
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB171_2:                              # %if.end
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB171_3
	jmp	.LBB171_4
.LBB171_3:                              # %if.then.5
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	count_windows
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB171_4:                              # %if.end.10
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	count_windows, .Lfunc_end171-count_windows
	.cfi_endproc

	.align	16, 0x90
	.type	get_leaf_windows,@function
get_leaf_windows:                       # @get_leaf_windows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp516:
	.cfi_def_cfa_offset 16
.Ltmp517:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp518:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB172_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB172_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB172_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB172_3
	jmp	.LBB172_4
.LBB172_3:                              # %if.then
                                        #   in Loop: Header=BB172_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	get_leaf_windows
	movq	%rax, -24(%rbp)
	jmp	.LBB172_5
.LBB172_4:                              # %if.else
                                        #   in Loop: Header=BB172_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB172_5:                              # %if.end
                                        #   in Loop: Header=BB172_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB172_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB172_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB172_8
.LBB172_7:                              # %cond.false
                                        #   in Loop: Header=BB172_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB172_8:                              # %cond.end
                                        #   in Loop: Header=BB172_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB172_1
.LBB172_9:                              # %while.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end172:
	.size	get_leaf_windows, .Lfunc_end172-get_leaf_windows
	.cfi_endproc

	.align	16, 0x90
	.type	delete_deletable_window,@function
delete_deletable_window:                # @delete_deletable_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp519:
	.cfi_def_cfa_offset 16
.Ltmp520:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp521:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1022, %eax             # imm = 0x3FE
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB173_2
# BB#1:                                 # %if.then
	movl	$338, %edi              # imm = 0x152
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB173_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	delete_deletable_window, .Lfunc_end173-delete_deletable_window
	.cfi_endproc

	.globl	restore_window_configuration
	.align	16, 0x90
	.type	restore_window_configuration,@function
restore_window_configuration:           # @restore_window_configuration
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp522:
	.cfi_def_cfa_offset 16
.Ltmp523:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp524:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fset_window_configuration
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end174:
	.size	restore_window_configuration, .Lfunc_end174-restore_window_configuration
	.cfi_endproc

	.globl	get_phys_cursor_glyph
	.align	16, 0x90
	.type	get_phys_cursor_glyph,@function
get_phys_cursor_glyph:                  # @get_phys_cursor_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp525:
	.cfi_def_cfa_offset 16
.Ltmp526:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp527:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	376(%rdi), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 380(%rdi)
	jl	.LBB175_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	380(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB175_3
.LBB175_2:                              # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB175_18
.LBB175_3:                              # %if.end
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	380(%rcx), %rcx
	shlq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB175_5
# BB#4:                                 # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB175_18
.LBB175_5:                              # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB175_13
# BB#6:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB175_9
# BB#7:                                 # %land.lhs.true.16
	cmpl	$0, -36(%rbp)
	jge	.LBB175_9
# BB#8:                                 # %if.then.18
	movl	$0, -36(%rbp)
.LBB175_9:                              # %if.end.19
	movq	-24(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB175_12
# BB#10:                                # %land.lhs.true.25
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB175_12
# BB#11:                                # %if.then.28
	movq	-24(%rbp), %rax
	movswl	34(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
.LBB175_12:                             # %if.end.32
	jmp	.LBB175_13
.LBB175_13:                             # %if.end.33
	xorl	%eax, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB175_16
# BB#14:                                # %land.lhs.true.36
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movswl	34(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB175_16
# BB#15:                                # %if.then.42
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB175_17
.LBB175_16:                             # %if.else
	movq	$0, -32(%rbp)
.LBB175_17:                             # %if.end.46
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB175_18:                             # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end175:
	.size	get_phys_cursor_glyph, .Lfunc_end175-get_phys_cursor_glyph
	.cfi_endproc

	.globl	Fcurrent_window_configuration
	.align	16, 0x90
	.type	Fcurrent_window_configuration,@function
Fcurrent_window_configuration:          # @Fcurrent_window_configuration
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp528:
	.cfi_def_cfa_offset 16
.Ltmp529:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp530:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, %rdi
	callq	count_windows
	movl	$12, %edi
	movl	$8, %ecx
	movl	$9, %edx
	movq	%rax, -32(%rbp)
	movl	%ecx, %esi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	allocate_pseudovector
	movl	$5, %esi
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movl	272(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 72(%rax)
	movq	-48(%rbp), %rax
	movl	276(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 76(%rax)
	movq	-48(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-48(%rbp), %rax
	movl	216(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 84(%rax)
	movq	-48(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 88(%rax)
	movq	-48(%rbp), %rax
	movl	292(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-48(%rbp), %rax
	movl	360(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-48(%rbp), %rax
	movl	220(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 100(%rax)
	movq	selected_frame, %rax
	movq	-40(%rbp), %r8
	movq	%rax, 8(%r8)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %r8
	movq	%rax, 16(%r8)
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	cmpq	$0, minibuf_level
	jle	.LBB176_2
# BB#1:                                 # %cond.true
	movq	globals+1448, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB176_3
.LBB176_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB176_3:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	cmpq	$0, minibuf_level
	jle	.LBB176_5
# BB#4:                                 # %cond.true.7
	movq	minibuf_selected_window, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB176_6
.LBB176_5:                              # %cond.false.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB176_6:                              # %cond.end.10
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	$0, -24(%rbp)
.LBB176_7:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB176_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB176_7 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$142, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB176_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB176_7
.LBB176_10:                             # %for.end
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	save_window_save
	movl	$5, %esi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end176:
	.size	Fcurrent_window_configuration, .Lfunc_end176-Fcurrent_window_configuration
	.cfi_endproc

	.align	16, 0x90
	.type	save_window_save,@function
save_window_save:                       # @save_window_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp531:
	.cfi_def_cfa_offset 16
.Ltmp532:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp533:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB177_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB177_13 Depth 2
                                        #     Child Loop BB177_20 Depth 2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB177_2
	jmp	.LBB177_61
.LBB177_2:                              # %for.body
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	XVECTOR
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	wset_temslot
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB177_3
	jmp	.LBB177_4
.LBB177_3:                              # %cond.true
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB177_5
.LBB177_4:                              # %cond.false
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB177_5:                              # %cond.end
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movslq	240(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-40(%rbp), %rax
	movslq	244(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movslq	256(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-40(%rbp), %rax
	movslq	260(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-40(%rbp), %rax
	movslq	248(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-40(%rbp), %rax
	movslq	252(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-40(%rbp), %rax
	movslq	264(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-40(%rbp), %rax
	movslq	268(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	callq	make_natnum
	movq	-32(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-40(%rbp), %rax
	movw	468(%rax), %dx
	shrw	$15, %dx
	testw	$1, %dx
	je	.LBB177_7
# BB#6:                                 # %cond.true.44
                                        #   in Loop: Header=BB177_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB177_8
.LBB177_7:                              # %cond.false.46
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB177_8:                              # %cond.end.48
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdi
	callq	make_natnum
	movq	-32(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rdi
	callq	make_natnum
	movq	-32(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-40(%rbp), %rax
	movslq	428(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-40(%rbp), %rax
	movslq	432(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-40(%rbp), %rax
	movslq	420(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-40(%rbp), %rax
	movslq	424(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-40(%rbp), %rax
	movw	468(%rax), %dx
	shrw	$12, %dx
	andw	$1, %dx
	testw	$1, %dx
	je	.LBB177_10
# BB#9:                                 # %cond.true.76
                                        #   in Loop: Header=BB177_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB177_11
.LBB177_10:                             # %cond.false.78
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB177_11:                             # %cond.end.80
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-40(%rbp), %rax
	movslq	436(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-40(%rbp), %rax
	movslq	440(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 272(%rcx)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movq	globals+2640, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB177_30
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	globals+2640, %rax
	movq	%rax, -72(%rbp)
	movq	%rax, -80(%rbp)
.LBB177_13:                             # %while.cond
                                        #   Parent Loop BB177_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB177_19
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB177_13 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB177_16
# BB#15:                                # %if.then.106
                                        #   in Loop: Header=BB177_1 Depth=1
	jmp	.LBB177_19
.LBB177_16:                             # %if.end
                                        #   in Loop: Header=BB177_13 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB177_18
# BB#17:                                # %if.then.115
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2640
	jmp	.LBB177_19
.LBB177_18:                             # %if.end.117
                                        #   in Loop: Header=BB177_13 Depth=2
	jmp	.LBB177_13
.LBB177_19:                             # %while.end
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	globals+2640, %rax
	movq	%rax, -48(%rbp)
.LBB177_20:                             # %for.cond.118
                                        #   Parent Loop BB177_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB177_29
# BB#21:                                # %for.body.123
                                        #   in Loop: Header=BB177_20 Depth=2
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB177_27
# BB#22:                                # %land.lhs.true
                                        #   in Loop: Header=BB177_20 Depth=2
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB177_27
# BB#23:                                # %if.then.135
                                        #   in Loop: Header=BB177_20 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	184(%rax), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB177_25
# BB#24:                                # %if.then.143
                                        #   in Loop: Header=BB177_20 Depth=2
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	%rax, 280(%rsi)
	jmp	.LBB177_26
.LBB177_25:                             # %if.else
                                        #   in Loop: Header=BB177_20 Depth=2
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	%rax, 280(%rsi)
.LBB177_26:                             # %if.end.160
                                        #   in Loop: Header=BB177_20 Depth=2
	jmp	.LBB177_27
.LBB177_27:                             # %if.end.161
                                        #   in Loop: Header=BB177_20 Depth=2
	jmp	.LBB177_28
.LBB177_28:                             # %for.inc
                                        #   in Loop: Header=BB177_20 Depth=2
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB177_20
.LBB177_29:                             # %for.end
                                        #   in Loop: Header=BB177_1 Depth=1
	jmp	.LBB177_30
.LBB177_30:                             # %if.end.165
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB177_31
	jmp	.LBB177_50
.LBB177_31:                             # %if.then.168
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	selected_window, %rax
	jne	.LBB177_45
# BB#32:                                # %if.then.171
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	-40(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB177_34
# BB#33:                                # %cond.true.178
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB177_38
.LBB177_34:                             # %cond.false.180
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB177_36
# BB#35:                                # %cond.true.186
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB177_37
.LBB177_36:                             # %cond.false.190
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB177_37:                             # %cond.end.195
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB177_38:                             # %cond.end.197
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB177_40
# BB#39:                                # %cond.true.203
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB177_44
.LBB177_40:                             # %cond.false.205
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB177_42
# BB#41:                                # %cond.true.212
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	744(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB177_43
.LBB177_42:                             # %cond.false.216
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB177_43:                             # %cond.end.221
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB177_44:                             # %cond.end.223
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	build_marker
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.LBB177_46
.LBB177_45:                             # %if.else.226
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
.LBB177_46:                             # %if.end.231
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movl	$1029, %edi             # imm = 0x405
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdi
	callq	buffer_local_value
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movb	%cl, -233(%rbp)         # 1-byte Spill
	callq	XMARKER
	movl	$1029, %edi             # imm = 0x405
	movb	-233(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	(%rax), %r8d
	shll	$31, %edx
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	%edx, %r8d
	movl	%r8d, (%rax)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdi
	callq	buffer_local_value
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movb	%cl, -249(%rbp)         # 1-byte Spill
	callq	XMARKER
	xorl	%edi, %edi
	movb	-249(%rbp), %cl         # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	(%rax), %r8d
	shll	$31, %edx
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	%edx, %r8d
	movl	%r8d, (%rax)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcopy_marker
	movq	-32(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-40(%rbp), %rax
	movw	468(%rax), %r9w
	shrw	$4, %r9w
	andw	$1, %r9w
	testw	$1, %r9w
	je	.LBB177_48
# BB#47:                                # %cond.true.269
                                        #   in Loop: Header=BB177_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB177_49
.LBB177_48:                             # %cond.false.271
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB177_49:                             # %cond.end.273
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
	jmp	.LBB177_51
.LBB177_50:                             # %if.else.276
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB177_51:                             # %if.end.285
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB177_53
# BB#52:                                # %cond.true.289
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB177_54
.LBB177_53:                             # %cond.false.291
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	XWINDOW
	movq	112(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB177_54:                             # %cond.end.294
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB177_56
# BB#55:                                # %cond.true.300
                                        #   in Loop: Header=BB177_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB177_57
.LBB177_56:                             # %cond.false.302
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XWINDOW
	movq	112(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB177_57:                             # %cond.end.306
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB177_58
	jmp	.LBB177_59
.LBB177_58:                             # %if.then.311
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	save_window_save
	movq	%rax, -24(%rbp)
.LBB177_59:                             # %if.end.314
                                        #   in Loop: Header=BB177_1 Depth=1
	jmp	.LBB177_60
.LBB177_60:                             # %for.inc.315
                                        #   in Loop: Header=BB177_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB177_1
.LBB177_61:                             # %for.end.316
	movq	-24(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end177:
	.size	save_window_save, .Lfunc_end177-save_window_save
	.cfi_endproc

	.globl	Fset_window_margins
	.align	16, 0x90
	.type	Fset_window_margins,@function
Fset_window_margins:                    # @Fset_window_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp534:
	.cfi_def_cfa_offset 16
.Ltmp535:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp536:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_window_margins
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB178_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rdi
	callq	apply_window_adjustment
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB178_3
.LBB178_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB178_3:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end178:
	.size	Fset_window_margins, .Lfunc_end178-Fset_window_margins
	.cfi_endproc

	.globl	Fwindow_margins
	.align	16, 0x90
	.type	Fwindow_margins,@function
Fwindow_margins:                        # @Fwindow_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp537:
	.cfi_def_cfa_offset 16
.Ltmp538:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp539:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 428(%rax)
	je	.LBB179_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movslq	428(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB179_3
.LBB179_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB179_3:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	cmpl	$0, 432(%rcx)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB179_5
# BB#4:                                 # %cond.true.4
	movq	-16(%rbp), %rax
	movslq	432(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB179_6
.LBB179_5:                              # %cond.false.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB179_6:                              # %cond.end.11
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end179:
	.size	Fwindow_margins, .Lfunc_end179-Fwindow_margins
	.cfi_endproc

	.globl	Fset_window_fringes
	.align	16, 0x90
	.type	Fset_window_fringes,@function
Fset_window_fringes:                    # @Fset_window_fringes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp540:
	.cfi_def_cfa_offset 16
.Ltmp541:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp542:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	set_window_fringes
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB180_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rdi
	callq	apply_window_adjustment
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB180_3
.LBB180_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB180_3:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end180:
	.size	Fset_window_fringes, .Lfunc_end180-Fset_window_fringes
	.cfi_endproc

	.globl	Fwindow_fringes
	.align	16, 0x90
	.type	Fwindow_fringes,@function
Fwindow_fringes:                        # @Fwindow_fringes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp543:
	.cfi_def_cfa_offset 16
.Ltmp544:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp545:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 420(%rax)
	jl	.LBB181_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	jmp	.LBB181_3
.LBB181_2:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
.LBB181_3:                              # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	cmpl	$0, 424(%rdx)
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jl	.LBB181_5
# BB#4:                                 # %cond.true.5
	movq	-16(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB181_6
.LBB181_5:                              # %cond.false.7
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	348(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB181_6:                              # %cond.end.11
	movl	-36(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movw	468(%rdx), %si
	shrw	$12, %si
	andw	$1, %si
	testw	$1, %si
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	je	.LBB181_8
# BB#7:                                 # %cond.true.17
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB181_9
.LBB181_8:                              # %cond.false.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB181_9:                              # %cond.end.21
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end181:
	.size	Fwindow_fringes, .Lfunc_end181-Fwindow_fringes
	.cfi_endproc

	.globl	Fset_window_scroll_bars
	.align	16, 0x90
	.type	Fset_window_scroll_bars,@function
Fset_window_scroll_bars:                # @Fset_window_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp546:
	.cfi_def_cfa_offset 16
.Ltmp547:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp548:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	%rax, %rdi
	callq	set_window_scroll_bars
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB182_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rdi
	callq	apply_window_adjustment
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB182_3
.LBB182_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB182_3:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end182:
	.size	Fset_window_scroll_bars, .Lfunc_end182-Fset_window_scroll_bars
	.cfi_endproc

	.globl	Fwindow_scroll_bars
	.align	16, 0x90
	.type	Fwindow_scroll_bars,@function
Fwindow_scroll_bars:                    # @Fwindow_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp549:
	.cfi_def_cfa_offset 16
.Ltmp550:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp551:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB183_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movslq	436(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB183_3
.LBB183_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB183_3:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %dx
	shrw	$11, %dx
	andw	$1, %dx
	testw	$1, %dx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB183_5
# BB#4:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB183_12
.LBB183_5:                              # %cond.false.5
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB183_7
# BB#6:                                 # %cond.true.9
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB183_11
.LBB183_7:                              # %cond.false.15
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB183_9
# BB#8:                                 # %cond.true.20
	movl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB183_10
.LBB183_9:                              # %cond.false.21
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -68(%rbp)         # 4-byte Spill
.LBB183_10:                             # %cond.end.27
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB183_11:                             # %cond.end.29
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB183_12:                             # %cond.end.31
	movl	-36(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB183_23
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB183_15
# BB#14:                                # %cond.true.41
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB183_22
.LBB183_15:                             # %cond.false.42
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB183_17
# BB#16:                                # %cond.true.47
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB183_21
.LBB183_17:                             # %cond.false.55
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB183_19
# BB#18:                                # %cond.true.60
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB183_20
.LBB183_19:                             # %cond.false.61
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -116(%rbp)        # 4-byte Spill
.LBB183_20:                             # %cond.end.67
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB183_21:                             # %cond.end.69
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB183_22:                             # %cond.end.71
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB183_27
.LBB183_23:                             # %cond.true.75
	movq	-16(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB183_25
# BB#24:                                # %cond.true.79
	movq	-16(%rbp), %rax
	movl	436(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	addl	364(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-136(%rbp), %rsi        # 8-byte Reload
	idivl	364(%rsi)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB183_26
.LBB183_25:                             # %cond.false.88
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	424(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB183_26:                             # %cond.end.91
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB183_28
.LBB183_27:                             # %cond.false.93
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB183_28
.LBB183_28:                             # %cond.end.94
	movl	-144(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rsi
	movq	-16(%rbp), %rdx
	cmpl	$0, 440(%rdx)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	jl	.LBB183_30
# BB#29:                                # %cond.true.102
	movq	-16(%rbp), %rax
	movslq	440(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB183_31
.LBB183_30:                             # %cond.false.107
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB183_31:                             # %cond.end.109
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movw	468(%rcx), %dx
	shrw	$11, %dx
	andw	$1, %dx
	testw	$1, %dx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB183_34
# BB#32:                                # %lor.lhs.false.117
	movq	-16(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB183_35
# BB#33:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB183_35
.LBB183_34:                             # %cond.true.126
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB183_40
	jmp	.LBB183_44
.LBB183_35:                             # %cond.false.127
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB183_37
# BB#36:                                # %cond.true.131
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB183_40
	jmp	.LBB183_44
.LBB183_37:                             # %cond.false.139
	movl	$213, %edi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB183_39
# BB#38:                                # %cond.true.144
	movb	$1, %al
	testb	$1, %al
	jne	.LBB183_40
	jmp	.LBB183_44
.LBB183_39:                             # %cond.false.145
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB183_40
	jmp	.LBB183_44
.LBB183_40:                             # %cond.true.146
	movq	-16(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB183_42
# BB#41:                                # %cond.true.150
	movq	-16(%rbp), %rax
	movl	440(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	addl	368(%rax), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-200(%rbp), %rsi        # 8-byte Reload
	idivl	368(%rsi)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB183_43
.LBB183_42:                             # %cond.false.160
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	432(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB183_43:                             # %cond.end.163
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB183_45
.LBB183_44:                             # %cond.false.165
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB183_45
.LBB183_45:                             # %cond.end.166
	movl	-208(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	list5
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end183:
	.size	Fwindow_scroll_bars, .Lfunc_end183-Fwindow_scroll_bars
	.cfi_endproc

	.globl	Fwindow_vscroll
	.align	16, 0x90
	.type	Fwindow_vscroll,@function
Fwindow_vscroll:                        # @Fwindow_vscroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp552:
	.cfi_def_cfa_offset 16
.Ltmp553:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp554:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB184_8
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB184_6
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	subl	472(%rcx), %eax
	movq	-40(%rbp), %rcx
	cltd
	idivl	368(%rcx)
	cmpl	$0, %edx
	je	.LBB184_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	subl	472(%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-40(%rbp), %rcx
	cvtsi2sdl	368(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB184_5
.LBB184_4:                              # %cond.false
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	subl	472(%rcx), %eax
	movq	-40(%rbp), %rcx
	cltd
	idivl	368(%rcx)
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB184_5:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB184_7
.LBB184_6:                              # %cond.false.15
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	subl	472(%rcx), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB184_7:                              # %cond.end.21
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB184_9
.LBB184_8:                              # %if.else
	movq	$2, -24(%rbp)
.LBB184_9:                              # %if.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end184:
	.size	Fwindow_vscroll, .Lfunc_end184-Fwindow_vscroll
	.cfi_endproc

	.globl	Fset_window_vscroll
	.align	16, 0x90
	.type	Fset_window_vscroll,@function
Fset_window_vscroll:                    # @Fset_window_vscroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp555:
	.cfi_def_cfa_offset 16
.Ltmp556:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp557:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB185_13
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB185_3
# BB#2:                                 # %cond.true
	movq	-40(%rbp), %rax
	cvtsi2sdl	368(%rax), %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	XFLOATINT
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	jmp	.LBB185_4
.LBB185_3:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	XFLOATINT
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB185_4:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 472(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 472(%rax)
	jge	.LBB185_6
# BB#5:                                 # %cond.true.12
	movq	-32(%rbp), %rax
	movl	472(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB185_7
.LBB185_6:                              # %cond.false.14
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB185_7
.LBB185_7:                              # %cond.end.15
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 472(%rcx)
	movq	-32(%rbp), %rcx
	movl	472(%rcx), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB185_12
# BB#8:                                 # %if.then.21
	movq	-32(%rbp), %rax
	cmpl	$0, 472(%rax)
	jge	.LBB185_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movl	472(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jge	.LBB185_11
# BB#10:                                # %if.then.28
	movq	-40(%rbp), %rdi
	callq	adjust_frame_glyphs
.LBB185_11:                             # %if.end
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
.LBB185_12:                             # %if.end.32
	jmp	.LBB185_13
.LBB185_13:                             # %if.end.33
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fwindow_vscroll
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end185:
	.size	Fset_window_vscroll, .Lfunc_end185-Fset_window_vscroll
	.cfi_endproc

	.globl	compare_window_configurations
	.align	16, 0x90
	.type	compare_window_configurations,@function
compare_window_configurations:          # @compare_window_configurations
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp558:
	.cfi_def_cfa_offset 16
.Ltmp559:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp560:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_WINDOW_CONFIGURATION
	movq	-24(%rbp), %rdi
	callq	CHECK_WINDOW_CONFIGURATION
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	72(%rax), %edx
	movq	-48(%rbp), %rax
	cmpl	72(%rax), %edx
	jne	.LBB186_10
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	76(%rax), %ecx
	jne	.LBB186_10
# BB#2:                                 # %lor.lhs.false.8
	movq	-40(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	80(%rax), %ecx
	jne	.LBB186_10
# BB#3:                                 # %lor.lhs.false.11
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB186_10
# BB#4:                                 # %lor.lhs.false.14
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB186_10
# BB#5:                                 # %lor.lhs.false.17
	testb	$1, -25(%rbp)
	jne	.LBB186_8
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	.LBB186_10
# BB#7:                                 # %lor.lhs.false.20
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB186_10
.LBB186_8:                              # %lor.lhs.false.23
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB186_10
# BB#9:                                 # %lor.lhs.false.26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB186_11
.LBB186_10:                             # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB186_45
.LBB186_11:                             # %if.end
	movq	$0, -72(%rbp)
.LBB186_12:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB186_44
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	XVECTOR
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	XVECTOR
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	cmpl	%r8d, %esi
	jne	.LBB186_41
# BB#14:                                # %lor.lhs.false.44
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB186_41
# BB#15:                                # %lor.lhs.false.48
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB186_41
# BB#16:                                # %lor.lhs.false.52
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB186_41
# BB#17:                                # %lor.lhs.false.56
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB186_41
# BB#18:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB186_41
# BB#19:                                # %lor.lhs.false.64
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB186_41
# BB#20:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	88(%rcx), %rax
	jne	.LBB186_41
# BB#21:                                # %lor.lhs.false.72
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	96(%rcx), %rax
	jne	.LBB186_41
# BB#22:                                # %lor.lhs.false.76
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB186_41
# BB#23:                                # %lor.lhs.false.80
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	184(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	184(%rcx), %rax
	jne	.LBB186_41
# BB#24:                                # %lor.lhs.false.84
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	160(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	160(%rcx), %rax
	jne	.LBB186_41
# BB#25:                                # %lor.lhs.false.88
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	168(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	168(%rcx), %rax
	jne	.LBB186_41
# BB#26:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB186_12 Depth=1
	testb	$1, -25(%rbp)
	jne	.LBB186_32
# BB#27:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	128(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	128(%rcx), %rax
	jne	.LBB186_41
# BB#28:                                # %lor.lhs.false.98
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	136(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	136(%rcx), %rax
	jne	.LBB186_41
# BB#29:                                # %lor.lhs.false.102
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	176(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	176(%rcx), %rax
	jne	.LBB186_41
# BB#30:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	24(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB186_41
# BB#31:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	32(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB186_41
.LBB186_32:                             # %lor.lhs.false.118
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	192(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	192(%rcx), %rax
	jne	.LBB186_41
# BB#33:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	200(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	200(%rcx), %rax
	jne	.LBB186_41
# BB#34:                                # %lor.lhs.false.126
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	208(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	208(%rcx), %rax
	jne	.LBB186_41
# BB#35:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	216(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	216(%rcx), %rax
	jne	.LBB186_41
# BB#36:                                # %lor.lhs.false.134
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	224(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	224(%rcx), %rax
	jne	.LBB186_41
# BB#37:                                # %lor.lhs.false.138
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	232(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	232(%rcx), %rax
	jne	.LBB186_41
# BB#38:                                # %lor.lhs.false.142
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	256(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	256(%rcx), %rax
	jne	.LBB186_41
# BB#39:                                # %lor.lhs.false.146
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	240(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	240(%rcx), %rax
	jne	.LBB186_41
# BB#40:                                # %lor.lhs.false.150
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-80(%rbp), %rax
	movq	264(%rax), %rax
	movq	-88(%rbp), %rcx
	cmpq	264(%rcx), %rax
	je	.LBB186_42
.LBB186_41:                             # %if.then.154
	movb	$0, -1(%rbp)
	jmp	.LBB186_45
.LBB186_42:                             # %if.end.155
                                        #   in Loop: Header=BB186_12 Depth=1
	jmp	.LBB186_43
.LBB186_43:                             # %for.inc
                                        #   in Loop: Header=BB186_12 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB186_12
.LBB186_44:                             # %for.end
	movb	$1, -1(%rbp)
.LBB186_45:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end186:
	.size	compare_window_configurations, .Lfunc_end186-compare_window_configurations
	.cfi_endproc

	.globl	Fcompare_window_configurations
	.align	16, 0x90
	.type	Fcompare_window_configurations,@function
Fcompare_window_configurations:         # @Fcompare_window_configurations
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp561:
	.cfi_def_cfa_offset 16
.Ltmp562:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp563:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	compare_window_configurations
	testb	$1, %al
	jne	.LBB187_1
	jmp	.LBB187_2
.LBB187_1:                              # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB187_3
.LBB187_2:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB187_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end187:
	.size	Fcompare_window_configurations, .Lfunc_end187-Fcompare_window_configurations
	.cfi_endproc

	.globl	init_window_once
	.align	16, 0x90
	.type	init_window_once,@function
init_window_once:                       # @init_window_once
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp564:
	.cfi_def_cfa_offset 16
.Ltmp565:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp566:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	make_initial_frame
	movl	$5, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, selected_frame
	movq	selected_frame, %rax
	movq	%rax, globals+2320
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, minibuf_window
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, selected_window
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end188:
	.size	init_window_once, .Lfunc_end188-init_window_once
	.cfi_endproc

	.globl	init_window
	.align	16, 0x90
	.type	init_window,@function
init_window:                            # @init_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp567:
	.cfi_def_cfa_offset 16
.Ltmp568:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp569:
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vwindow_list
	popq	%rbp
	retq
.Lfunc_end189:
	.size	init_window, .Lfunc_end189-init_window
	.cfi_endproc

	.globl	syms_of_window
	.align	16, 0x90
	.type	syms_of_window,@function
syms_of_window:                         # @syms_of_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp570:
	.cfi_def_cfa_offset 16
.Ltmp571:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp572:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$838, %edi              # imm = 0x346
	callq	builtin_lisp_symbol
	movl	$836, %edi              # imm = 0x344
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$837, %edi              # imm = 0x345
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$836, %edi              # imm = 0x344
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movabsq	$Vwindow_list, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$minibuf_selected_window, %rdi
	movq	%rax, minibuf_selected_window
	callq	staticpro
	movl	$-1, window_scroll_pixel_based_preserve_x
	movl	$-1, window_scroll_pixel_based_preserve_y
	movq	$-1, window_scroll_preserve_hpos
	movq	$-1, window_scroll_preserve_vpos
# BB#1:                                 # %do.body
	movabsq	$syms_of_window.o_fwd, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$globals, %rax
	addq	$2304, %rax             # imm = 0x900
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2304
# BB#3:                                 # %do.body.10
	movabsq	$syms_of_window.o_fwd.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$globals, %rax
	addq	$1448, %rax             # imm = 0x5A8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1448
# BB#5:                                 # %do.body.13
	movabsq	$syms_of_window.b_fwd, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$globals, %rax
	addq	$3413, %rax             # imm = 0xD55
	movq	%rax, %rdx
	callq	defvar_bool
# BB#6:                                 # %do.end.14
	movb	$1, globals+3413
# BB#7:                                 # %do.body.15
	movabsq	$syms_of_window.o_fwd.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$globals, %rax
	addq	$1688, %rax             # imm = 0x698
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1688
# BB#9:                                 # %do.body.18
	movabsq	$syms_of_window.b_fwd.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$globals, %rax
	addq	$3363, %rax             # imm = 0xD23
	movq	%rax, %rdx
	callq	defvar_bool
# BB#10:                                # %do.end.19
	movb	$1, globals+3363
# BB#11:                                # %do.body.20
	movabsq	$syms_of_window.i_fwd, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$globals, %rax
	addq	$3192, %rax             # imm = 0xC78
	movq	%rax, %rdx
	callq	defvar_int
# BB#12:                                # %do.end.21
	movq	$2, globals+3192
# BB#13:                                # %do.body.22
	movabsq	$syms_of_window.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$2088, %rax             # imm = 0x828
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2088
# BB#15:                                # %do.body.25
	movabsq	$syms_of_window.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$2648, %rax             # imm = 0xA58
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2648
# BB#17:                                # %do.body.28
	movabsq	$syms_of_window.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$2632, %rax             # imm = 0xA48
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2632
# BB#19:                                # %do.body.31
	movabsq	$syms_of_window.o_fwd.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$globals, %rax
	addq	$1992, %rax             # imm = 0x7C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.32
	movl	$938, %edi              # imm = 0x3AA
	callq	builtin_lisp_symbol
	movq	%rax, globals+1992
# BB#21:                                # %do.body.34
	movabsq	$syms_of_window.o_fwd.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$2624, %rax             # imm = 0xA40
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.35
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2624
# BB#23:                                # %do.body.37
	movabsq	$syms_of_window.o_fwd.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$globals, %rax
	addq	$2616, %rax             # imm = 0xA38
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.38
	movl	$1034, %edi             # imm = 0x40A
	callq	builtin_lisp_symbol
	movq	%rax, globals+2616
# BB#25:                                # %do.body.40
	movabsq	$syms_of_window.o_fwd.43, %rdi
	movabsq	$.L.str.44, %rsi
	movabsq	$globals, %rax
	addq	$2640, %rax             # imm = 0xA50
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.41
	movl	$266, %edi              # imm = 0x10A
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, globals+2640
# BB#27:                                # %do.body.46
	movabsq	$syms_of_window.b_fwd.45, %rdi
	movabsq	$.L.str.46, %rsi
	movabsq	$globals, %rax
	addq	$3438, %rax             # imm = 0xD6E
	movq	%rax, %rdx
	callq	defvar_bool
# BB#28:                                # %do.end.47
	movb	$0, globals+3438
# BB#29:                                # %do.body.48
	movabsq	$syms_of_window.b_fwd.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$globals, %rax
	addq	$3361, %rax             # imm = 0xD21
	movq	%rax, %rdx
	callq	defvar_bool
# BB#30:                                # %do.end.49
	movabsq	$Sselected_window, %rdi
	movb	$0, globals+3361
	callq	defsubr
	movabsq	$Sminibuffer_window, %rdi
	callq	defsubr
	movabsq	$Swindow_minibuffer_p, %rdi
	callq	defsubr
	movabsq	$Swindowp, %rdi
	callq	defsubr
	movabsq	$Swindow_valid_p, %rdi
	callq	defsubr
	movabsq	$Swindow_live_p, %rdi
	callq	defsubr
	movabsq	$Swindow_frame, %rdi
	callq	defsubr
	movabsq	$Sframe_root_window, %rdi
	callq	defsubr
	movabsq	$Sframe_first_window, %rdi
	callq	defsubr
	movabsq	$Sframe_selected_window, %rdi
	callq	defsubr
	movabsq	$Sset_frame_selected_window, %rdi
	callq	defsubr
	movabsq	$Spos_visible_in_window_p, %rdi
	callq	defsubr
	movabsq	$Swindow_line_height, %rdi
	callq	defsubr
	movabsq	$Swindow_buffer, %rdi
	callq	defsubr
	movabsq	$Swindow_parent, %rdi
	callq	defsubr
	movabsq	$Swindow_top_child, %rdi
	callq	defsubr
	movabsq	$Swindow_left_child, %rdi
	callq	defsubr
	movabsq	$Swindow_next_sibling, %rdi
	callq	defsubr
	movabsq	$Swindow_prev_sibling, %rdi
	callq	defsubr
	movabsq	$Swindow_combination_limit, %rdi
	callq	defsubr
	movabsq	$Sset_window_combination_limit, %rdi
	callq	defsubr
	movabsq	$Swindow_use_time, %rdi
	callq	defsubr
	movabsq	$Swindow_pixel_width, %rdi
	callq	defsubr
	movabsq	$Swindow_pixel_height, %rdi
	callq	defsubr
	movabsq	$Swindow_total_width, %rdi
	callq	defsubr
	movabsq	$Swindow_total_height, %rdi
	callq	defsubr
	movabsq	$Swindow_normal_size, %rdi
	callq	defsubr
	movabsq	$Swindow_new_pixel, %rdi
	callq	defsubr
	movabsq	$Swindow_new_total, %rdi
	callq	defsubr
	movabsq	$Swindow_new_normal, %rdi
	callq	defsubr
	movabsq	$Swindow_pixel_left, %rdi
	callq	defsubr
	movabsq	$Swindow_pixel_top, %rdi
	callq	defsubr
	movabsq	$Swindow_left_column, %rdi
	callq	defsubr
	movabsq	$Swindow_top_line, %rdi
	callq	defsubr
	movabsq	$Sset_window_new_pixel, %rdi
	callq	defsubr
	movabsq	$Sset_window_new_total, %rdi
	callq	defsubr
	movabsq	$Sset_window_new_normal, %rdi
	callq	defsubr
	movabsq	$Swindow_resize_apply, %rdi
	callq	defsubr
	movabsq	$Swindow_resize_apply_total, %rdi
	callq	defsubr
	movabsq	$Swindow_body_height, %rdi
	callq	defsubr
	movabsq	$Swindow_body_width, %rdi
	callq	defsubr
	movabsq	$Swindow_hscroll, %rdi
	callq	defsubr
	movabsq	$Sset_window_hscroll, %rdi
	callq	defsubr
	movabsq	$Swindow_redisplay_end_trigger, %rdi
	callq	defsubr
	movabsq	$Sset_window_redisplay_end_trigger, %rdi
	callq	defsubr
	movabsq	$Swindow_mode_line_height, %rdi
	callq	defsubr
	movabsq	$Swindow_header_line_height, %rdi
	callq	defsubr
	movabsq	$Swindow_right_divider_width, %rdi
	callq	defsubr
	movabsq	$Swindow_bottom_divider_width, %rdi
	callq	defsubr
	movabsq	$Swindow_scroll_bar_width, %rdi
	callq	defsubr
	movabsq	$Swindow_scroll_bar_height, %rdi
	callq	defsubr
	movabsq	$Scoordinates_in_window_p, %rdi
	callq	defsubr
	movabsq	$Swindow_at, %rdi
	callq	defsubr
	movabsq	$Swindow_point, %rdi
	callq	defsubr
	movabsq	$Swindow_old_point, %rdi
	callq	defsubr
	movabsq	$Swindow_start, %rdi
	callq	defsubr
	movabsq	$Swindow_end, %rdi
	callq	defsubr
	movabsq	$Sset_window_point, %rdi
	callq	defsubr
	movabsq	$Sset_window_start, %rdi
	callq	defsubr
	movabsq	$Swindow_dedicated_p, %rdi
	callq	defsubr
	movabsq	$Sset_window_dedicated_p, %rdi
	callq	defsubr
	movabsq	$Swindow_display_table, %rdi
	callq	defsubr
	movabsq	$Sset_window_display_table, %rdi
	callq	defsubr
	movabsq	$Snext_window, %rdi
	callq	defsubr
	movabsq	$Sprevious_window, %rdi
	callq	defsubr
	movabsq	$Swindow__sanitize_window_sizes, %rdi
	callq	defsubr
	movabsq	$Sget_buffer_window, %rdi
	callq	defsubr
	movabsq	$Sdelete_other_windows_internal, %rdi
	callq	defsubr
	movabsq	$Sdelete_window_internal, %rdi
	callq	defsubr
	movabsq	$Sresize_mini_window_internal, %rdi
	callq	defsubr
	movabsq	$Sset_window_buffer, %rdi
	callq	defsubr
	movabsq	$Srun_window_configuration_change_hook, %rdi
	callq	defsubr
	movabsq	$Srun_window_scroll_functions, %rdi
	callq	defsubr
	movabsq	$Sselect_window, %rdi
	callq	defsubr
	movabsq	$Sforce_window_update, %rdi
	callq	defsubr
	movabsq	$Ssplit_window_internal, %rdi
	callq	defsubr
	movabsq	$Sscroll_up, %rdi
	callq	defsubr
	movabsq	$Sscroll_down, %rdi
	callq	defsubr
	movabsq	$Sscroll_left, %rdi
	callq	defsubr
	movabsq	$Sscroll_right, %rdi
	callq	defsubr
	movabsq	$Sother_window_for_scrolling, %rdi
	callq	defsubr
	movabsq	$Sscroll_other_window, %rdi
	callq	defsubr
	movabsq	$Sminibuffer_selected_window, %rdi
	callq	defsubr
	movabsq	$Srecenter, %rdi
	callq	defsubr
	movabsq	$Swindow_text_width, %rdi
	callq	defsubr
	movabsq	$Swindow_text_height, %rdi
	callq	defsubr
	movabsq	$Smove_to_window_line, %rdi
	callq	defsubr
	movabsq	$Swindow_configuration_p, %rdi
	callq	defsubr
	movabsq	$Swindow_configuration_frame, %rdi
	callq	defsubr
	movabsq	$Sset_window_configuration, %rdi
	callq	defsubr
	movabsq	$Scurrent_window_configuration, %rdi
	callq	defsubr
	movabsq	$Sset_window_margins, %rdi
	callq	defsubr
	movabsq	$Swindow_margins, %rdi
	callq	defsubr
	movabsq	$Sset_window_fringes, %rdi
	callq	defsubr
	movabsq	$Swindow_fringes, %rdi
	callq	defsubr
	movabsq	$Sset_window_scroll_bars, %rdi
	callq	defsubr
	movabsq	$Swindow_scroll_bars, %rdi
	callq	defsubr
	movabsq	$Swindow_vscroll, %rdi
	callq	defsubr
	movabsq	$Sset_window_vscroll, %rdi
	callq	defsubr
	movabsq	$Scompare_window_configurations, %rdi
	callq	defsubr
	movabsq	$Swindow_list, %rdi
	callq	defsubr
	movabsq	$Swindow_list_1, %rdi
	callq	defsubr
	movabsq	$Swindow_prev_buffers, %rdi
	callq	defsubr
	movabsq	$Sset_window_prev_buffers, %rdi
	callq	defsubr
	movabsq	$Swindow_next_buffers, %rdi
	callq	defsubr
	movabsq	$Sset_window_next_buffers, %rdi
	callq	defsubr
	movabsq	$Swindow_parameters, %rdi
	callq	defsubr
	movabsq	$Swindow_parameter, %rdi
	callq	defsubr
	movabsq	$Sset_window_parameter, %rdi
	callq	defsubr
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end190:
	.size	syms_of_window, .Lfunc_end190-syms_of_window
	.cfi_endproc

	.globl	keys_of_window
	.align	16, 0x90
	.type	keys_of_window,@function
keys_of_window:                         # @keys_of_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp573:
	.cfi_def_cfa_offset 16
.Ltmp574:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp575:
	.cfi_def_cfa_register %rbp
	movl	$60, %esi
	movabsq	$.L.str.49, %rdx
	movq	control_x_map, %rdi
	callq	initial_define_key
	movl	$62, %esi
	movabsq	$.L.str.50, %rdx
	movq	control_x_map, %rdi
	callq	initial_define_key
	movl	$22, %esi
	movabsq	$.L.str.51, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$22, %esi
	movabsq	$.L.str.52, %rdx
	movq	meta_map, %rdi
	callq	initial_define_key
	movl	$118, %esi
	movabsq	$.L.str.53, %rdx
	movq	meta_map, %rdi
	callq	initial_define_key
	popq	%rbp
	retq
.Lfunc_end191:
	.size	keys_of_window, .Lfunc_end191-keys_of_window
	.cfi_endproc

	.align	16, 0x90
	.type	select_window_1,@function
select_window_1:                        # @select_window_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp576:
	.cfi_def_cfa_offset 16
.Ltmp577:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp578:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	jne	.LBB192_16
# BB#1:                                 # %if.then
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB192_2
	jmp	.LBB192_15
.LBB192_2:                              # %if.then.2
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB192_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB192_8
.LBB192_4:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB192_6
# BB#5:                                 # %cond.true.10
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB192_7
.LBB192_6:                              # %cond.false.14
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB192_7:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB192_8:                              # %cond.end.19
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB192_10
# BB#9:                                 # %cond.true.24
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB192_14
.LBB192_10:                             # %cond.false.26
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB192_12
# BB#11:                                # %cond.true.32
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	744(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB192_13
.LBB192_12:                             # %cond.false.36
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB192_13:                             # %cond.end.41
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB192_14:                             # %cond.end.43
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB192_15:                             # %if.end
	jmp	.LBB192_16
.LBB192_16:                             # %if.end.46
	movq	-8(%rbp), %rax
	movq	%rax, selected_window
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	96(%rax), %rdi
	callq	set_point_from_marker
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end192:
	.size	select_window_1, .Lfunc_end192-select_window_1
	.cfi_endproc

	.align	16, 0x90
	.type	decode_next_window_args,@function
decode_next_window_args:                # @decode_next_window_args
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp579:
	.cfi_def_cfa_offset 16
.Ltmp580:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp581:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	decode_live_window
	movl	$5, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB193_5
# BB#1:                                 # %if.then
	cmpq	$0, minibuf_level
	je	.LBB193_3
# BB#2:                                 # %cond.true
	movq	minibuf_window, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB193_4
.LBB193_3:                              # %cond.false
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB193_4:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB193_8
.LBB193_5:                              # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB193_7
# BB#6:                                 # %if.then.6
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB193_7:                              # %if.end
	jmp	.LBB193_8
.LBB193_8:                              # %if.end.8
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB193_13
# BB#9:                                 # %if.then.11
	movl	$598, %edi              # imm = 0x256
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB193_11
# BB#10:                                # %cond.true.14
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB193_12
.LBB193_11:                             # %cond.false.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB193_12:                             # %cond.end.17
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB193_25
.LBB193_13:                             # %if.else.19
	movl	$1005, %edi             # imm = 0x3ED
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB193_15
# BB#14:                                # %if.then.22
	jmp	.LBB193_24
.LBB193_15:                             # %if.else.23
	movq	-24(%rbp), %rax
	cmpq	$2, (%rax)
	jne	.LBB193_17
# BB#16:                                # %if.then.25
	jmp	.LBB193_23
.LBB193_17:                             # %if.else.26
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB193_18
	jmp	.LBB193_19
.LBB193_18:                             # %if.then.28
	jmp	.LBB193_22
.LBB193_19:                             # %if.else.29
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB193_21
# BB#20:                                # %if.then.32
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB193_21:                             # %if.end.34
	jmp	.LBB193_22
.LBB193_22:                             # %if.end.35
	jmp	.LBB193_23
.LBB193_23:                             # %if.end.36
	jmp	.LBB193_24
.LBB193_24:                             # %if.end.37
	jmp	.LBB193_25
.LBB193_25:                             # %if.end.38
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end193:
	.size	decode_next_window_args, .Lfunc_end193-decode_next_window_args
	.cfi_endproc

	.align	16, 0x90
	.type	candidate_window_p,@function
candidate_window_p:                     # @candidate_window_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp582:
	.cfi_def_cfa_offset 16
.Ltmp583:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp584:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movb	$1, -49(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB194_2
# BB#1:                                 # %if.then
	movb	$0, -49(%rbp)
	jmp	.LBB194_38
.LBB194_2:                              # %if.else
	movq	-40(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB194_7
# BB#3:                                 # %land.lhs.true
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB194_6
# BB#4:                                 # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB194_5
	jmp	.LBB194_7
.LBB194_5:                              # %land.lhs.true.4
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB194_7
.LBB194_6:                              # %if.then.6
	movb	$0, -49(%rbp)
	jmp	.LBB194_37
.LBB194_7:                              # %if.else.7
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB194_9
# BB#8:                                 # %if.then.10
	movb	$1, -49(%rbp)
	jmp	.LBB194_36
.LBB194_9:                              # %if.else.11
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB194_11
# BB#10:                                # %if.then.14
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	8(%rax), %rdi
	sete	%cl
	andb	$1, %cl
	movb	%cl, -49(%rbp)
	jmp	.LBB194_35
.LBB194_11:                             # %if.else.19
	movl	$1005, %edi             # imm = 0x3ED
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB194_15
# BB#12:                                # %if.then.22
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$10, %rdx
	andq	$3, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB194_14
# BB#13:                                # %land.rhs
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	selected_frame, %rcx
	subq	$5, %rcx
	cmpq	376(%rcx), %rax
	sete	%dl
	movb	%dl, -97(%rbp)          # 1-byte Spill
.LBB194_14:                             # %land.end
	movb	-97(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB194_34
.LBB194_15:                             # %if.else.32
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB194_24
# BB#16:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB194_24
# BB#17:                                # %if.then.39
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB194_22
# BB#18:                                # %lor.lhs.false.46
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$12, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB194_22
# BB#19:                                # %lor.lhs.false.52
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$23, %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$2, %eax
	movb	%cl, -98(%rbp)          # 1-byte Spill
	jne	.LBB194_23
# BB#20:                                # %land.lhs.true.59
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	384(%rdx), %rdx
	movb	440(%rdx), %sil
	shrb	$2, %sil
	andb	$1, %sil
	testb	$1, %sil
	movb	%cl, -98(%rbp)          # 1-byte Spill
	je	.LBB194_23
# BB#21:                                # %land.lhs.true.65
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	384(%rdx), %rdx
	movb	440(%rdx), %sil
	shrb	$3, %sil
	andb	$1, %sil
	testb	$1, %sil
	movb	%cl, -98(%rbp)          # 1-byte Spill
	jne	.LBB194_23
.LBB194_22:                             # %land.rhs.72
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	selected_frame, %rcx
	subq	$5, %rcx
	cmpq	376(%rcx), %rax
	sete	%dl
	movb	%dl, -98(%rbp)          # 1-byte Spill
.LBB194_23:                             # %land.end.80
	movb	-98(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB194_33
.LBB194_24:                             # %if.else.82
	movq	-32(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB194_25
	jmp	.LBB194_29
.LBB194_25:                             # %if.then.84
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movq	56(%rcx), %rcx
	cmpq	-32(%rbp), %rcx
	movb	%al, -99(%rbp)          # 1-byte Spill
	je	.LBB194_28
# BB#26:                                # %lor.lhs.false.87
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movb	$1, %cl
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movb	%cl, -99(%rbp)          # 1-byte Spill
	je	.LBB194_28
# BB#27:                                # %lor.rhs
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdi
	cmpq	32(%rdi), %rax
	sete	%cl
	movb	%cl, -99(%rbp)          # 1-byte Spill
.LBB194_28:                             # %lor.end
	movb	-99(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -49(%rbp)
	jmp	.LBB194_32
.LBB194_29:                             # %if.else.98
	movq	-32(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB194_30
	jmp	.LBB194_31
.LBB194_30:                             # %if.then.100
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -49(%rbp)
.LBB194_31:                             # %if.end
	jmp	.LBB194_32
.LBB194_32:                             # %if.end.105
	jmp	.LBB194_33
.LBB194_33:                             # %if.end.106
	jmp	.LBB194_34
.LBB194_34:                             # %if.end.107
	jmp	.LBB194_35
.LBB194_35:                             # %if.end.108
	jmp	.LBB194_36
.LBB194_36:                             # %if.end.109
	jmp	.LBB194_37
.LBB194_37:                             # %if.end.110
	jmp	.LBB194_38
.LBB194_38:                             # %if.end.111
	movb	-49(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end194:
	.size	candidate_window_p, .Lfunc_end194-candidate_window_p
	.cfi_endproc

	.align	16, 0x90
	.type	window_scroll_pixel_based,@function
window_scroll_pixel_based:              # @window_scroll_pixel_based
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp585:
	.cfi_def_cfa_offset 16
.Ltmp586:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp587:
	.cfi_def_cfa_register %rbp
	subq	$10416, %rsp            # imm = 0x28B0
	movb	%cl, %al
	movb	%dl, %r8b
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %r8b
	movb	%r8b, -13(%rbp)
	andb	$1, %al
	movb	%al, -14(%rbp)
	movq	-8(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -4824(%rbp)
	movb	$0, -4845(%rbp)
	movq	$0, -4880(%rbp)
	movq	-4824(%rbp), %rdi
	callq	default_line_pixel_height
	movl	%eax, -4888(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fwindow_point
	movq	-8(%rbp), %rdi
	movq	%rax, -9808(%rbp)       # 8-byte Spill
	callq	Fwindow_old_point
	movq	-9808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -9816(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9816(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movb	%r8b, -4889(%rbp)
	movq	-4824(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_position
	movq	%rax, -4840(%rbp)
	movq	-4824(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -4832(%rbp)
	movq	-4840(%rbp), %rax
	movq	current_buffer, %rsi
	cmpq	768(%rsi), %rax
	jle	.LBB195_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -4840(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -4832(%rbp)
.LBB195_2:                              # %if.end
	leaq	-4852(%rbp), %rdx
	leaq	-4856(%rbp), %rcx
	leaq	-4860(%rbp), %r8
	leaq	-4864(%rbp), %r9
	leaq	-4868(%rbp), %rax
	leaq	-4872(%rbp), %rsi
	movq	-4824(%rbp), %rdi
	movq	current_buffer, %r10
	movq	736(%r10), %r10
	addq	$0, %r10
	movq	%rsi, -9824(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	%rax, (%rsp)
	movq	-9824(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	pos_visible_p
	testb	$1, %al
	jne	.LBB195_6
# BB#3:                                 # %if.then.17
	callq	bidi_shelve_cache
	leaq	-4816(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -4880(%rbp)
	movq	-4824(%rbp), %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -9832(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-9832(%rbp), %rcx       # 8-byte Reload
	callq	init_iterator
	movl	-2492(%rbp), %r9d
	movl	%r9d, -2384(%rbp)
	movq	-4824(%rbp), %rdi
	callq	window_box_height
	leaq	-4816(%rbp), %rdi
	movl	$2, %r9d
	cltd
	idivl	%r9d
	movl	%eax, %esi
	callq	move_it_vertically_backward
	cmpl	$0, -2384(%rbp)
	jg	.LBB195_5
# BB#4:                                 # %if.then.25
	leaq	-4816(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-4824(%rbp), %rsi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -9840(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-9840(%rbp), %rcx       # 8-byte Reload
	callq	init_iterator
	leaq	-4816(%rbp), %rdi
	xorl	%esi, %esi
	callq	move_it_vertically_backward
	movl	$0, -2384(%rbp)
.LBB195_5:                              # %if.end.31
	xorl	%esi, %esi
	movq	-4504(%rbp), %rax
	movq	%rax, -4840(%rbp)
	movq	-4496(%rbp), %rax
	movq	%rax, -4832(%rbp)
	movq	-4880(%rbp), %rdi
	callq	bidi_unshelve_cache
	jmp	.LBB195_55
.LBB195_6:                              # %if.else
	testb	$1, globals+3363
	je	.LBB195_54
# BB#7:                                 # %if.then.32
	cmpl	$0, -4860(%rbp)
	jne	.LBB195_9
# BB#8:                                 # %lor.lhs.false
	cmpl	$0, -4864(%rbp)
	je	.LBB195_53
.LBB195_9:                              # %if.then.35
	movl	-4888(%rbp), %eax
	movl	%eax, -4900(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB195_14
# BB#10:                                # %if.then.37
	movq	-4824(%rbp), %rdi
	callq	window_box_height
	cltd
	idivl	-4900(%rbp)
	movslq	%eax, %rdi
	subq	globals+3192, %rdi
	movslq	-4900(%rbp), %rcx
	imulq	%rcx, %rdi
	movslq	-4900(%rbp), %rcx
	cmpq	%rcx, %rdi
	jle	.LBB195_12
# BB#11:                                # %cond.true
	movq	-4824(%rbp), %rdi
	callq	window_box_height
	cltd
	idivl	-4900(%rbp)
	movslq	%eax, %rdi
	subq	globals+3192, %rdi
	movslq	-4900(%rbp), %rcx
	imulq	%rcx, %rdi
	movq	%rdi, -9848(%rbp)       # 8-byte Spill
	jmp	.LBB195_13
.LBB195_12:                             # %cond.false
	movslq	-4900(%rbp), %rax
	movq	%rax, -9848(%rbp)       # 8-byte Spill
.LBB195_13:                             # %cond.end
	movq	-9848(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -4900(%rbp)
.LBB195_14:                             # %if.end.52
	movl	-12(%rbp), %eax
	imull	-4900(%rbp), %eax
	movl	%eax, -4900(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB195_28
# BB#15:                                # %if.then.56
	movq	-4824(%rbp), %rax
	cmpl	$0, 472(%rax)
	jge	.LBB195_27
# BB#16:                                # %land.lhs.true
	cmpl	$0, -4860(%rbp)
	jle	.LBB195_27
# BB#17:                                # %if.then.61
	xorl	%eax, %eax
	movq	-4824(%rbp), %rcx
	movl	%eax, %edx
	subl	472(%rcx), %edx
	movl	-4860(%rbp), %esi
	subl	-4900(%rbp), %eax
	cmpl	%eax, %esi
	movl	%edx, -9852(%rbp)       # 4-byte Spill
	jge	.LBB195_19
# BB#18:                                # %cond.true.67
	movl	-4860(%rbp), %eax
	movl	%eax, -9856(%rbp)       # 4-byte Spill
	jmp	.LBB195_20
.LBB195_19:                             # %cond.false.68
	xorl	%eax, %eax
	subl	-4900(%rbp), %eax
	movl	%eax, -9856(%rbp)       # 4-byte Spill
.LBB195_20:                             # %cond.end.70
	movl	-9856(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movl	-9852(%rbp), %edx       # 4-byte Reload
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jle	.LBB195_22
# BB#21:                                # %cond.true.75
	xorl	%eax, %eax
	movl	%eax, -9860(%rbp)       # 4-byte Spill
	jmp	.LBB195_26
.LBB195_22:                             # %cond.false.76
	xorl	%eax, %eax
	movq	-4824(%rbp), %rcx
	movl	%eax, %edx
	subl	472(%rcx), %edx
	movl	-4860(%rbp), %esi
	subl	-4900(%rbp), %eax
	cmpl	%eax, %esi
	movl	%edx, -9864(%rbp)       # 4-byte Spill
	jge	.LBB195_24
# BB#23:                                # %cond.true.82
	movl	-4860(%rbp), %eax
	movl	%eax, -9868(%rbp)       # 4-byte Spill
	jmp	.LBB195_25
.LBB195_24:                             # %cond.false.83
	xorl	%eax, %eax
	subl	-4900(%rbp), %eax
	movl	%eax, -9868(%rbp)       # 4-byte Spill
.LBB195_25:                             # %cond.end.85
	movl	-9868(%rbp), %eax       # 4-byte Reload
	movl	-9864(%rbp), %ecx       # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -9860(%rbp)       # 4-byte Spill
.LBB195_26:                             # %cond.end.88
	movl	-9860(%rbp), %eax       # 4-byte Reload
	movl	$901, %edi              # imm = 0x385
	movl	%eax, -4896(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-4896(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -9880(%rbp)       # 8-byte Spill
	movq	%rcx, -9888(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9888(%rbp), %rdi       # 8-byte Reload
	movq	-9880(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_window_vscroll
	movq	%rax, -9896(%rbp)       # 8-byte Spill
	jmp	.LBB195_271
.LBB195_27:                             # %if.end.94
	jmp	.LBB195_28
.LBB195_28:                             # %if.end.95
	cmpl	$0, -12(%rbp)
	jle	.LBB195_52
# BB#29:                                # %if.then.98
	cmpl	$0, -4864(%rbp)
	jle	.LBB195_42
# BB#30:                                # %land.lhs.true.101
	movq	-4824(%rbp), %rax
	cmpl	$0, 472(%rax)
	jl	.LBB195_32
# BB#31:                                # %lor.lhs.false.105
	cmpl	$0, -4872(%rbp)
	jne	.LBB195_42
.LBB195_32:                             # %if.then.108
	xorl	%eax, %eax
	movq	-4824(%rbp), %rcx
	subl	472(%rcx), %eax
	movl	-4864(%rbp), %edx
	cmpl	-4900(%rbp), %edx
	movl	%eax, -9900(%rbp)       # 4-byte Spill
	jge	.LBB195_34
# BB#33:                                # %cond.true.113
	movl	-4864(%rbp), %eax
	movl	%eax, -9904(%rbp)       # 4-byte Spill
	jmp	.LBB195_35
.LBB195_34:                             # %cond.false.114
	movl	-4900(%rbp), %eax
	movl	%eax, -9904(%rbp)       # 4-byte Spill
.LBB195_35:                             # %cond.end.115
	movl	-9904(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movl	-9900(%rbp), %edx       # 4-byte Reload
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jle	.LBB195_37
# BB#36:                                # %cond.true.120
	xorl	%eax, %eax
	movl	%eax, -9908(%rbp)       # 4-byte Spill
	jmp	.LBB195_41
.LBB195_37:                             # %cond.false.121
	xorl	%eax, %eax
	movq	-4824(%rbp), %rcx
	subl	472(%rcx), %eax
	movl	-4864(%rbp), %edx
	cmpl	-4900(%rbp), %edx
	movl	%eax, -9912(%rbp)       # 4-byte Spill
	jge	.LBB195_39
# BB#38:                                # %cond.true.126
	movl	-4864(%rbp), %eax
	movl	%eax, -9916(%rbp)       # 4-byte Spill
	jmp	.LBB195_40
.LBB195_39:                             # %cond.false.127
	movl	-4900(%rbp), %eax
	movl	%eax, -9916(%rbp)       # 4-byte Spill
.LBB195_40:                             # %cond.end.128
	movl	-9916(%rbp), %eax       # 4-byte Reload
	movl	-9912(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -9908(%rbp)       # 4-byte Spill
.LBB195_41:                             # %cond.end.131
	movl	-9908(%rbp), %eax       # 4-byte Reload
	movl	$901, %edi              # imm = 0x385
	movl	%eax, -4896(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-4896(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -9928(%rbp)       # 8-byte Spill
	movq	%rcx, -9936(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9936(%rbp), %rdi       # 8-byte Reload
	movq	-9928(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_window_vscroll
	movq	%rax, -9944(%rbp)       # 8-byte Spill
	jmp	.LBB195_271
.LBB195_42:                             # %if.end.138
	cmpl	$0, -4864(%rbp)
	jg	.LBB195_44
# BB#43:                                # %lor.lhs.false.141
	movq	-4824(%rbp), %rax
	cmpl	$0, 472(%rax)
	jge	.LBB195_51
.LBB195_44:                             # %if.then.145
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -9952(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-9952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_window_vscroll
	cmpl	$0, -4864(%rbp)
	movq	%rax, -9960(%rbp)       # 8-byte Spill
	jle	.LBB195_46
# BB#45:                                # %if.then.150
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fline_beginning_position
	sarq	$2, %rax
	movq	%rax, -4912(%rbp)
	jmp	.LBB195_50
.LBB195_46:                             # %if.else.153
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fline_end_position
	sarq	$2, %rax
	addq	$1, %rax
	movq	current_buffer, %rdi
	cmpq	768(%rdi), %rax
	jge	.LBB195_48
# BB#47:                                # %cond.true.161
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fline_end_position
	sarq	$2, %rax
	addq	$1, %rax
	movq	%rax, -9968(%rbp)       # 8-byte Spill
	jmp	.LBB195_49
.LBB195_48:                             # %cond.false.166
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -9968(%rbp)       # 8-byte Spill
.LBB195_49:                             # %cond.end.168
	movq	-9968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4912(%rbp)
.LBB195_50:                             # %if.end.170
	movq	-4824(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-4912(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-4824(%rbp), %rcx
	movq	80(%rcx), %rdx
	movq	%rax, %rsi
	callq	set_marker_restricted
	movq	-4824(%rbp), %rcx
	movw	468(%rcx), %r8w
	andw	$-17, %r8w
	orw	$16, %r8w
	movw	%r8w, 468(%rcx)
	movq	-4824(%rbp), %rdi
	movq	%rax, -9976(%rbp)       # 8-byte Spill
	callq	wset_update_mode_line
	movq	-4824(%rbp), %rax
	movw	468(%rax), %r8w
	andw	$-33, %r8w
	orw	$32, %r8w
	movw	%r8w, 468(%rax)
	jmp	.LBB195_271
.LBB195_51:                             # %if.end.178
	jmp	.LBB195_52
.LBB195_52:                             # %if.end.179
	jmp	.LBB195_53
.LBB195_53:                             # %if.end.180
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -9984(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-9984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_window_vscroll
	movq	%rax, -9992(%rbp)       # 8-byte Spill
.LBB195_54:                             # %if.end.183
	jmp	.LBB195_55
.LBB195_55:                             # %if.end.184
	callq	bidi_shelve_cache
	xorl	%edi, %edi
	movq	%rax, -4880(%rbp)
	movq	globals+2088, %rax
	movq	%rax, -10000(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10000(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_61
# BB#56:                                # %if.then.189
	cmpl	$0, window_scroll_pixel_based_preserve_y
	jl	.LBB195_59
# BB#57:                                # %lor.lhs.false.192
	movq	current_kboard, %rax
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB195_59
# BB#58:                                # %lor.lhs.false.196
	movl	$836, %edi              # imm = 0x344
	movq	current_kboard, %rax
	movq	16(%rax), %rax
	movq	%rax, -10008(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10008(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -10016(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10016(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB195_60
.LBB195_59:                             # %if.then.203
	leaq	-4816(%rbp), %rdi
	movq	-4824(%rbp), %rsi
	movq	-4840(%rbp), %rdx
	movq	-4832(%rbp), %rcx
	callq	start_display
	leaq	-4816(%rbp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$8, %r9d
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	move_it_to
	movl	-2384(%rbp), %ecx
	movl	%ecx, window_scroll_pixel_based_preserve_y
	movl	-2412(%rbp), %ecx
	movl	%ecx, window_scroll_pixel_based_preserve_x
	movl	%eax, -10020(%rbp)      # 4-byte Spill
.LBB195_60:                             # %if.end.208
	jmp	.LBB195_62
.LBB195_61:                             # %if.else.209
	movl	$-1, window_scroll_pixel_based_preserve_x
	movl	$-1, window_scroll_pixel_based_preserve_y
.LBB195_62:                             # %if.end.210
	leaq	-4816(%rbp), %rdi
	movq	-4824(%rbp), %rsi
	movq	-4840(%rbp), %rdx
	movq	-4832(%rbp), %rcx
	callq	start_display
	testb	$1, -13(%rbp)
	je	.LBB195_82
# BB#63:                                # %if.then.212
	movq	-4504(%rbp), %rax
	movq	%rax, -4920(%rbp)
	movl	-4888(%rbp), %ecx
	movl	%ecx, -4924(%rbp)
	movq	-4824(%rbp), %rdi
	callq	window_box_height
	cltd
	idivl	-4924(%rbp)
	movslq	%eax, %rdi
	subq	globals+3192, %rdi
	movslq	-4924(%rbp), %rsi
	imulq	%rsi, %rdi
	movslq	-4924(%rbp), %rsi
	cmpq	%rsi, %rdi
	jle	.LBB195_65
# BB#64:                                # %cond.true.226
	movq	-4824(%rbp), %rdi
	callq	window_box_height
	cltd
	idivl	-4924(%rbp)
	movslq	%eax, %rdi
	subq	globals+3192, %rdi
	movslq	-4924(%rbp), %rcx
	imulq	%rcx, %rdi
	movq	%rdi, -10032(%rbp)      # 8-byte Spill
	jmp	.LBB195_66
.LBB195_65:                             # %cond.false.233
	movslq	-4924(%rbp), %rax
	movq	%rax, -10032(%rbp)      # 8-byte Spill
.LBB195_66:                             # %cond.end.235
	movq	-10032(%rbp), %rax      # 8-byte Reload
	movslq	-12(%rbp), %rcx
	imulq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -4924(%rbp)
	cmpl	$0, -4924(%rbp)
	jg	.LBB195_73
# BB#67:                                # %if.then.242
	leaq	-4816(%rbp), %rdi
	xorl	%eax, %eax
	subl	-4924(%rbp), %eax
	movl	%eax, %esi
	callq	move_it_vertically_backward
.LBB195_68:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-4920(%rbp), %rdx
	cmpq	-4504(%rbp), %rdx
	movb	%cl, -10033(%rbp)       # 1-byte Spill
	jne	.LBB195_70
# BB#69:                                # %land.rhs
                                        #   in Loop: Header=BB195_68 Depth=1
	movq	-4920(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	setg	%dl
	movb	%dl, -10033(%rbp)       # 1-byte Spill
.LBB195_70:                             # %land.end
                                        #   in Loop: Header=BB195_68 Depth=1
	movb	-10033(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB195_71
	jmp	.LBB195_72
.LBB195_71:                             # %while.body
                                        #   in Loop: Header=BB195_68 Depth=1
	leaq	-4816(%rbp), %rdi
	movq	$-1, %rsi
	callq	move_it_by_lines
	jmp	.LBB195_68
.LBB195_72:                             # %while.end
	jmp	.LBB195_81
.LBB195_73:                             # %if.else.252
	cmpl	$0, -4924(%rbp)
	jle	.LBB195_80
# BB#74:                                # %if.then.255
	leaq	-4816(%rbp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$10, %r9d
	movq	current_buffer, %rcx
	movq	768(%rcx), %rsi
	movl	-2384(%rbp), %edx
	addl	-4924(%rbp), %edx
	movl	%edx, -10040(%rbp)      # 4-byte Spill
	movl	%eax, %edx
	movl	-10040(%rbp), %ecx      # 4-byte Reload
	movl	%eax, %r8d
	callq	move_it_to
	movl	%eax, -10044(%rbp)      # 4-byte Spill
.LBB195_75:                             # %while.cond.260
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-4920(%rbp), %rdx
	cmpq	-4504(%rbp), %rdx
	movb	%cl, -10045(%rbp)       # 1-byte Spill
	jne	.LBB195_77
# BB#76:                                # %land.rhs.266
                                        #   in Loop: Header=BB195_75 Depth=1
	movq	-4920(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	setl	%dl
	movb	%dl, -10045(%rbp)       # 1-byte Spill
.LBB195_77:                             # %land.end.270
                                        #   in Loop: Header=BB195_75 Depth=1
	movb	-10045(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB195_78
	jmp	.LBB195_79
.LBB195_78:                             # %while.body.271
                                        #   in Loop: Header=BB195_75 Depth=1
	leaq	-4816(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	move_it_by_lines
	jmp	.LBB195_75
.LBB195_79:                             # %while.end.272
	jmp	.LBB195_80
.LBB195_80:                             # %if.end.273
	jmp	.LBB195_81
.LBB195_81:                             # %if.end.274
	jmp	.LBB195_83
.LBB195_82:                             # %if.else.275
	leaq	-4816(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	move_it_by_lines
.LBB195_83:                             # %if.end.277
	cmpl	$0, -12(%rbp)
	jle	.LBB195_85
# BB#84:                                # %land.lhs.true.280
	movq	-4504(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	je	.LBB195_87
.LBB195_85:                             # %lor.lhs.false.287
	cmpl	$0, -12(%rbp)
	jge	.LBB195_104
# BB#86:                                # %land.lhs.true.290
	movq	-4504(%rbp), %rax
	cmpq	-4840(%rbp), %rax
	jne	.LBB195_104
.LBB195_87:                             # %if.then.297
	movq	-4504(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jne	.LBB195_97
# BB#88:                                # %if.then.304
	movl	-2384(%rbp), %eax
	cmpl	-2492(%rbp), %eax
	jge	.LBB195_91
# BB#89:                                # %land.lhs.true.309
	movl	-2384(%rbp), %eax
	addl	-2436(%rbp), %eax
	addl	-2432(%rbp), %eax
	cmpl	-2492(%rbp), %eax
	jle	.LBB195_91
# BB#90:                                # %if.then.316
	movl	-2492(%rbp), %eax
	subl	-2384(%rbp), %eax
	addl	-2436(%rbp), %eax
	addl	-2432(%rbp), %eax
	movq	-4824(%rbp), %rcx
	movl	%eax, 472(%rcx)
	movq	-4800(%rbp), %rdi
	callq	adjust_frame_glyphs
	jmp	.LBB195_96
.LBB195_91:                             # %if.else.325
	xorl	%esi, %esi
	movq	-4880(%rbp), %rdi
	callq	bidi_unshelve_cache
	testb	$1, -14(%rbp)
	je	.LBB195_93
# BB#92:                                # %if.then.327
	jmp	.LBB195_271
.LBB195_93:                             # %if.else.328
	cmpl	$0, -12(%rbp)
	jge	.LBB195_95
# BB#94:                                # %if.then.331
	movl	$200, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB195_95:                             # %if.else.333
	movl	$366, %edi              # imm = 0x16E
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB195_96:                             # %if.end.335
	jmp	.LBB195_103
.LBB195_97:                             # %if.else.336
	movq	-4824(%rbp), %rax
	cmpl	$0, 472(%rax)
	je	.LBB195_99
# BB#98:                                # %if.then.340
	movq	-4824(%rbp), %rax
	movl	$0, 472(%rax)
	jmp	.LBB195_102
.LBB195_99:                             # %if.else.342
	xorl	%esi, %esi
	movq	-4880(%rbp), %rdi
	callq	bidi_unshelve_cache
	testb	$1, -14(%rbp)
	je	.LBB195_101
# BB#100:                               # %if.then.344
	jmp	.LBB195_271
.LBB195_101:                            # %if.else.345
	movl	$200, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB195_102:                            # %if.end.347
	jmp	.LBB195_103
.LBB195_103:                            # %if.end.348
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movb	936(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 936(%rax)
	movb	$1, -4845(%rbp)
.LBB195_104:                            # %if.end.354
	testb	$1, -4845(%rbp)
	jne	.LBB195_113
# BB#105:                               # %if.then.356
	leaq	-4816(%rbp), %rdi
	movq	-4504(%rbp), %rax
	movq	%rax, -4936(%rbp)
	callq	in_display_vector_p
	testb	$1, %al
	jne	.LBB195_106
	jmp	.LBB195_107
.LBB195_106:                            # %if.then.363
	leaq	-4816(%rbp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$8, %r9d
	movq	-4936(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -4936(%rbp)
	movq	-4936(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	move_it_to
	movl	%eax, -10052(%rbp)      # 4-byte Spill
.LBB195_107:                            # %if.end.365
	movq	-4824(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-4504(%rbp), %rdx
	movq	-4496(%rbp), %rcx
	callq	set_marker_restricted_both
	movq	-4824(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	%rax, -10064(%rbp)      # 8-byte Spill
	callq	marker_byte_position
	movb	$1, %r8b
	movq	%rax, -4944(%rbp)
	movq	-4936(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	movb	%r8b, -10065(%rbp)      # 1-byte Spill
	je	.LBB195_112
# BB#108:                               # %lor.rhs
	movq	-4944(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB195_110
# BB#109:                               # %cond.true.383
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -10080(%rbp)      # 8-byte Spill
	jmp	.LBB195_111
.LBB195_110:                            # %cond.false.385
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -10080(%rbp)      # 8-byte Spill
	jmp	.LBB195_111
.LBB195_111:                            # %cond.end.386
	movq	-10080(%rbp), %rax      # 8-byte Reload
	movq	-4944(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	sete	%sil
	movb	%sil, -10065(%rbp)      # 1-byte Spill
.LBB195_112:                            # %lor.end
	movb	-10065(%rbp), %al       # 1-byte Reload
	movq	-4824(%rbp), %rcx
	movzbl	%al, %edx
	andl	$1, %edx
	movw	%dx, %si
	movw	468(%rcx), %di
	shlw	$4, %si
	andw	$-17, %di
	orw	%si, %di
	movw	%di, 468(%rcx)
	movq	-4824(%rbp), %rdi
	callq	wset_update_mode_line
	movq	-4824(%rbp), %rcx
	movw	468(%rcx), %si
	andw	$-33, %si
	orw	$32, %si
	movw	%si, 468(%rcx)
.LBB195_113:                            # %if.end.404
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, -2376(%rbp)
	movl	$0, -2384(%rbp)
	movq	-4824(%rbp), %rdx
	movl	268(%rdx), %eax
	movq	-4824(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	imull	368(%rdx), %eax
	cltd
	idivl	-4888(%rbp)
	movl	%eax, -4884(%rbp)
	cmpq	globals+3264, %rcx
	jle	.LBB195_115
# BB#114:                               # %cond.true.412
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -10088(%rbp)      # 8-byte Spill
	jmp	.LBB195_116
.LBB195_115:                            # %cond.false.413
	movq	globals+3264, %rax
	movq	%rax, -10088(%rbp)      # 8-byte Spill
.LBB195_116:                            # %cond.end.414
	movq	-10088(%rbp), %rax      # 8-byte Reload
	movl	$4, %ecx
	movl	%eax, %edx
	movl	%edx, -4844(%rbp)
	movl	-4844(%rbp), %edx
	movl	-4884(%rbp), %eax
	movl	%edx, -10092(%rbp)      # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-10092(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB195_118
# BB#117:                               # %cond.true.420
	movl	-4844(%rbp), %eax
	movl	%eax, -10096(%rbp)      # 4-byte Spill
	jmp	.LBB195_119
.LBB195_118:                            # %cond.false.421
	movl	$4, %eax
	movl	-4884(%rbp), %ecx
	movl	%eax, -10100(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-10100(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	movl	%eax, -10096(%rbp)      # 4-byte Spill
.LBB195_119:                            # %cond.end.423
	movl	-10096(%rbp), %eax      # 4-byte Reload
	movl	%eax, -4844(%rbp)
	movl	-4888(%rbp), %eax
	imull	-4844(%rbp), %eax
	movl	%eax, -4844(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB195_200
# BB#120:                               # %if.then.428
	leaq	-4816(%rbp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$8, %r9d
	movl	-2492(%rbp), %ecx
	subl	-4844(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -4948(%rbp)
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	move_it_to
	movq	-4504(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	cmpq	%rdi, %rsi
	movl	%eax, -10104(%rbp)      # 4-byte Spill
	jne	.LBB195_157
# BB#121:                               # %land.lhs.true.442
	movl	-2384(%rbp), %eax
	cmpl	-4844(%rbp), %eax
	jl	.LBB195_157
# BB#122:                               # %land.lhs.true.446
	movl	-2384(%rbp), %eax
	movl	-4948(%rbp), %ecx
	movq	-4824(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%eax, -10108(%rbp)      # 4-byte Spill
	movl	%ecx, -10112(%rbp)      # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB195_123
	jmp	.LBB195_137
.LBB195_123:                            # %cond.true.451
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_152
# BB#124:                               # %land.lhs.true.454
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_152
# BB#125:                               # %land.lhs.true.458
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB195_152
# BB#126:                               # %land.lhs.true.466
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -10120(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10120(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_152
# BB#127:                               # %land.lhs.true.472
	movq	-4824(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -10124(%rbp)      # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB195_128
	jmp	.LBB195_133
.LBB195_128:                            # %cond.true.476
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_135
# BB#129:                               # %land.lhs.true.481
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_135
# BB#130:                               # %land.lhs.true.487
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB195_135
# BB#131:                               # %land.lhs.true.496
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -10136(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10136(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_135
# BB#132:                               # %land.lhs.true.502
	movq	-4824(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB195_134
	jmp	.LBB195_135
.LBB195_133:                            # %cond.false.509
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_134
	jmp	.LBB195_135
.LBB195_134:                            # %cond.true.510
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -10140(%rbp)      # 4-byte Spill
	jmp	.LBB195_136
.LBB195_135:                            # %cond.false.515
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -10140(%rbp)      # 4-byte Spill
.LBB195_136:                            # %cond.end.519
	movl	-10140(%rbp), %eax      # 4-byte Reload
	movl	-10124(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB195_138
	jmp	.LBB195_152
.LBB195_137:                            # %cond.false.523
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_138
	jmp	.LBB195_152
.LBB195_138:                            # %cond.true.524
	movq	-4824(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB195_140
# BB#139:                               # %cond.true.527
	movq	-4824(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -10144(%rbp)      # 4-byte Spill
	jmp	.LBB195_151
.LBB195_140:                            # %cond.false.529
	movq	-4824(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB195_143
# BB#141:                               # %land.lhs.true.531
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB195_143
# BB#142:                               # %cond.true.534
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB195_144
	jmp	.LBB195_149
.LBB195_143:                            # %cond.false.538
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_144
	jmp	.LBB195_149
.LBB195_144:                            # %cond.true.539
	movq	-4824(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB195_147
# BB#145:                               # %land.lhs.true.542
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB195_147
# BB#146:                               # %cond.true.546
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -10148(%rbp)      # 4-byte Spill
	jmp	.LBB195_148
.LBB195_147:                            # %cond.false.550
	xorl	%eax, %eax
	movl	%eax, -10148(%rbp)      # 4-byte Spill
	jmp	.LBB195_148
.LBB195_148:                            # %cond.end.551
	movl	-10148(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10152(%rbp)      # 4-byte Spill
	jmp	.LBB195_150
.LBB195_149:                            # %cond.false.553
	movl	$5, %esi
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -10152(%rbp)      # 4-byte Spill
.LBB195_150:                            # %cond.end.557
	movl	-10152(%rbp), %eax      # 4-byte Reload
	movq	-4824(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -10144(%rbp)      # 4-byte Spill
.LBB195_151:                            # %cond.end.560
	movl	-10144(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10156(%rbp)      # 4-byte Spill
	jmp	.LBB195_153
.LBB195_152:                            # %cond.false.562
	xorl	%eax, %eax
	movl	%eax, -10156(%rbp)      # 4-byte Spill
	jmp	.LBB195_153
.LBB195_153:                            # %cond.end.563
	movl	-10156(%rbp), %eax      # 4-byte Reload
	movl	-10112(%rbp), %ecx      # 4-byte Reload
	subl	%eax, %ecx
	movl	-10108(%rbp), %eax      # 4-byte Reload
	cmpl	%ecx, %eax
	jg	.LBB195_157
# BB#154:                               # %land.lhs.true.568
	xorl	%edi, %edi
	movq	globals+2088, %rax
	movq	%rax, -10168(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10168(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_156
# BB#155:                               # %lor.lhs.false.572
	movl	$901, %edi              # imm = 0x385
	movq	globals+2088, %rax
	movq	%rax, -10176(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10176(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB195_157
.LBB195_156:                            # %if.then.576
	jmp	.LBB195_199
.LBB195_157:                            # %if.else.577
	cmpl	$0, window_scroll_pixel_based_preserve_y
	jl	.LBB195_193
# BB#158:                               # %if.then.580
	movl	-4948(%rbp), %eax
	cmpl	window_scroll_pixel_based_preserve_y, %eax
	jge	.LBB195_160
# BB#159:                               # %cond.true.583
	movl	-4948(%rbp), %eax
	movl	%eax, -10180(%rbp)      # 4-byte Spill
	jmp	.LBB195_161
.LBB195_160:                            # %cond.false.584
	movl	window_scroll_pixel_based_preserve_y, %eax
	movl	%eax, -10180(%rbp)      # 4-byte Spill
.LBB195_161:                            # %cond.end.585
	movl	-10180(%rbp), %eax      # 4-byte Reload
	movl	%eax, -4952(%rbp)
	movl	window_scroll_pixel_based_preserve_x, %edx
	movl	-4952(%rbp), %eax
	movq	-4824(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	%edx, -10184(%rbp)      # 4-byte Spill
	movl	%eax, -10188(%rbp)      # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB195_162
	jmp	.LBB195_176
.LBB195_162:                            # %cond.true.590
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_191
# BB#163:                               # %land.lhs.true.595
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_191
# BB#164:                               # %land.lhs.true.601
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB195_191
# BB#165:                               # %land.lhs.true.610
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -10200(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10200(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_191
# BB#166:                               # %land.lhs.true.617
	movq	-4824(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -10204(%rbp)      # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB195_167
	jmp	.LBB195_172
.LBB195_167:                            # %cond.true.622
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_174
# BB#168:                               # %land.lhs.true.627
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_174
# BB#169:                               # %land.lhs.true.633
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB195_174
# BB#170:                               # %land.lhs.true.642
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -10216(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10216(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_174
# BB#171:                               # %land.lhs.true.649
	movq	-4824(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB195_173
	jmp	.LBB195_174
.LBB195_172:                            # %cond.false.656
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_173
	jmp	.LBB195_174
.LBB195_173:                            # %cond.true.657
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -10220(%rbp)      # 4-byte Spill
	jmp	.LBB195_175
.LBB195_174:                            # %cond.false.662
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -10220(%rbp)      # 4-byte Spill
.LBB195_175:                            # %cond.end.666
	movl	-10220(%rbp), %eax      # 4-byte Reload
	movl	-10204(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB195_177
	jmp	.LBB195_191
.LBB195_176:                            # %cond.false.670
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_177
	jmp	.LBB195_191
.LBB195_177:                            # %cond.true.671
	movq	-4824(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB195_179
# BB#178:                               # %cond.true.675
	movq	-4824(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -10224(%rbp)      # 4-byte Spill
	jmp	.LBB195_190
.LBB195_179:                            # %cond.false.677
	movq	-4824(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB195_182
# BB#180:                               # %land.lhs.true.680
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB195_182
# BB#181:                               # %cond.true.684
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB195_183
	jmp	.LBB195_188
.LBB195_182:                            # %cond.false.689
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_183
	jmp	.LBB195_188
.LBB195_183:                            # %cond.true.690
	movq	-4824(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB195_186
# BB#184:                               # %land.lhs.true.693
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB195_186
# BB#185:                               # %cond.true.697
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -10228(%rbp)      # 4-byte Spill
	jmp	.LBB195_187
.LBB195_186:                            # %cond.false.701
	xorl	%eax, %eax
	movl	%eax, -10228(%rbp)      # 4-byte Spill
	jmp	.LBB195_187
.LBB195_187:                            # %cond.end.702
	movl	-10228(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10232(%rbp)      # 4-byte Spill
	jmp	.LBB195_189
.LBB195_188:                            # %cond.false.704
	movl	$5, %esi
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -10232(%rbp)      # 4-byte Spill
.LBB195_189:                            # %cond.end.708
	movl	-10232(%rbp), %eax      # 4-byte Reload
	movq	-4824(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -10224(%rbp)      # 4-byte Spill
.LBB195_190:                            # %cond.end.711
	movl	-10224(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10236(%rbp)      # 4-byte Spill
	jmp	.LBB195_192
.LBB195_191:                            # %cond.false.713
	xorl	%eax, %eax
	movl	%eax, -10236(%rbp)      # 4-byte Spill
	jmp	.LBB195_192
.LBB195_192:                            # %cond.end.714
	movl	-10236(%rbp), %eax      # 4-byte Reload
	leaq	-4816(%rbp), %rdi
	movq	$-1, %rsi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$3, %r9d
	movl	-10188(%rbp), %ecx      # 4-byte Reload
	subl	%eax, %ecx
	movl	-10184(%rbp), %edx      # 4-byte Reload
	callq	move_it_to
	movl	%eax, -10240(%rbp)      # 4-byte Spill
.LBB195_193:                            # %if.end.718
	jmp	.LBB195_194
.LBB195_194:                            # %while.cond.719
                                        # =>This Inner Loop Header: Depth=1
	movl	-2384(%rbp), %eax
	cmpl	-4844(%rbp), %eax
	jge	.LBB195_198
# BB#195:                               # %while.body.723
                                        #   in Loop: Header=BB195_194 Depth=1
	leaq	-4816(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	movl	-2384(%rbp), %eax
	movl	%eax, -4956(%rbp)
	callq	move_it_by_lines
	movl	-4956(%rbp), %eax
	cmpl	-2384(%rbp), %eax
	jne	.LBB195_197
# BB#196:                               # %if.then.728
	jmp	.LBB195_198
.LBB195_197:                            # %if.end.729
                                        #   in Loop: Header=BB195_194 Depth=1
	jmp	.LBB195_194
.LBB195_198:                            # %while.end.730
	movq	-4504(%rbp), %rdi
	movq	-4496(%rbp), %rsi
	callq	set_point_both
.LBB195_199:                            # %if.end.737
	jmp	.LBB195_260
.LBB195_200:                            # %if.else.738
	cmpl	$0, -12(%rbp)
	jge	.LBB195_259
# BB#201:                               # %if.then.741
	movq	-4504(%rbp), %rax
	movq	%rax, -4968(%rbp)
	movq	-4496(%rbp), %rax
	movq	%rax, -4976(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movl	-2492(%rbp), %ecx
	movq	-4824(%rbp), %rdx
	movq	80(%rdx), %rdi
	movq	%rax, -10248(%rbp)      # 8-byte Spill
	movl	%ecx, -10252(%rbp)      # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB195_202
	jmp	.LBB195_216
.LBB195_202:                            # %cond.true.756
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_231
# BB#203:                               # %land.lhs.true.761
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_231
# BB#204:                               # %land.lhs.true.767
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB195_231
# BB#205:                               # %land.lhs.true.776
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -10264(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10264(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_231
# BB#206:                               # %land.lhs.true.783
	movq	-4824(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -10268(%rbp)      # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB195_207
	jmp	.LBB195_212
.LBB195_207:                            # %cond.true.788
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_214
# BB#208:                               # %land.lhs.true.793
	movq	-4824(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB195_214
# BB#209:                               # %land.lhs.true.799
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB195_214
# BB#210:                               # %land.lhs.true.808
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -10280(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10280(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_214
# BB#211:                               # %land.lhs.true.815
	movq	-4824(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB195_213
	jmp	.LBB195_214
.LBB195_212:                            # %cond.false.822
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_213
	jmp	.LBB195_214
.LBB195_213:                            # %cond.true.823
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -10284(%rbp)      # 4-byte Spill
	jmp	.LBB195_215
.LBB195_214:                            # %cond.false.828
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -10284(%rbp)      # 4-byte Spill
.LBB195_215:                            # %cond.end.832
	movl	-10284(%rbp), %eax      # 4-byte Reload
	movl	-10268(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB195_217
	jmp	.LBB195_231
.LBB195_216:                            # %cond.false.836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_217
	jmp	.LBB195_231
.LBB195_217:                            # %cond.true.837
	movq	-4824(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB195_219
# BB#218:                               # %cond.true.841
	movq	-4824(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -10288(%rbp)      # 4-byte Spill
	jmp	.LBB195_230
.LBB195_219:                            # %cond.false.843
	movq	-4824(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB195_222
# BB#220:                               # %land.lhs.true.846
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB195_222
# BB#221:                               # %cond.true.850
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB195_223
	jmp	.LBB195_228
.LBB195_222:                            # %cond.false.855
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB195_223
	jmp	.LBB195_228
.LBB195_223:                            # %cond.true.856
	movq	-4824(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB195_226
# BB#224:                               # %land.lhs.true.859
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB195_226
# BB#225:                               # %cond.true.863
	movq	-4824(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -10292(%rbp)      # 4-byte Spill
	jmp	.LBB195_227
.LBB195_226:                            # %cond.false.867
	xorl	%eax, %eax
	movl	%eax, -10292(%rbp)      # 4-byte Spill
	jmp	.LBB195_227
.LBB195_227:                            # %cond.end.868
	movl	-10292(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10296(%rbp)      # 4-byte Spill
	jmp	.LBB195_229
.LBB195_228:                            # %cond.false.870
	movl	$5, %esi
	movq	-4824(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -10296(%rbp)      # 4-byte Spill
.LBB195_229:                            # %cond.end.874
	movl	-10296(%rbp), %eax      # 4-byte Reload
	movq	-4824(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -10288(%rbp)      # 4-byte Spill
.LBB195_230:                            # %cond.end.877
	movl	-10288(%rbp), %eax      # 4-byte Reload
	movl	%eax, -10300(%rbp)      # 4-byte Spill
	jmp	.LBB195_232
.LBB195_231:                            # %cond.false.879
	xorl	%eax, %eax
	movl	%eax, -10300(%rbp)      # 4-byte Spill
	jmp	.LBB195_232
.LBB195_232:                            # %cond.end.880
	movl	-10300(%rbp), %eax      # 4-byte Reload
	leaq	-4816(%rbp), %rdi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$10, %r9d
	movl	-10252(%rbp), %edx      # 4-byte Reload
	subl	%eax, %edx
	subl	-4844(%rbp), %edx
	subl	$1, %edx
	movq	-10248(%rbp), %rsi      # 8-byte Reload
	movl	%edx, -10304(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-10304(%rbp), %eax      # 4-byte Reload
	movl	%ecx, -10308(%rbp)      # 4-byte Spill
	movl	%eax, %ecx
	movl	-10308(%rbp), %r8d      # 4-byte Reload
	callq	move_it_to
	movq	-4504(%rbp), %rsi
	movq	%rsi, -4968(%rbp)
	movq	-4496(%rbp), %rsi
	movq	%rsi, -4976(%rbp)
	movq	-4968(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	cmpq	%rdi, %rsi
	movl	%eax, -10312(%rbp)      # 4-byte Spill
	je	.LBB195_238
# BB#233:                               # %if.then.896
	movl	$4800, %eax             # imm = 0x12C0
	movl	%eax, %edx
	leaq	-4816(%rbp), %rcx
	leaq	-9784(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	callq	bidi_shelve_cache
	leaq	-4816(%rbp), %rdi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$8, %r9d
	movq	%rax, -9792(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	move_it_to
	movq	-4504(%rbp), %rsi
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	cmpq	%rdi, %rsi
	movl	%eax, -10316(%rbp)      # 4-byte Spill
	jne	.LBB195_236
# BB#234:                               # %land.lhs.true.908
	movl	-2384(%rbp), %eax
	cmpl	-7352(%rbp), %eax
	jne	.LBB195_236
# BB#235:                               # %if.then.913
	movl	$1, %esi
	movq	-4504(%rbp), %rax
	movq	%rax, -4968(%rbp)
	movq	-4496(%rbp), %rax
	movq	%rax, -4976(%rbp)
	movq	-9792(%rbp), %rdi
	callq	bidi_unshelve_cache
	jmp	.LBB195_237
.LBB195_236:                            # %if.else.920
	xorl	%esi, %esi
	movl	$4800, %eax             # imm = 0x12C0
	movl	%eax, %edx
	leaq	-9784(%rbp), %rcx
	leaq	-4816(%rbp), %rdi
	movl	%esi, -10320(%rbp)      # 4-byte Spill
	movq	%rcx, %rsi
	callq	memcpy
	movq	-9792(%rbp), %rdi
	movl	-10320(%rbp), %esi      # 4-byte Reload
	callq	bidi_unshelve_cache
.LBB195_237:                            # %if.end.921
	jmp	.LBB195_238
.LBB195_238:                            # %if.end.922
	cmpl	$5, -2712(%rbp)
	jne	.LBB195_240
# BB#239:                               # %if.then.925
	movl	-2384(%rbp), %eax
	addl	-2444(%rbp), %eax
	addl	-2440(%rbp), %eax
	cmpl	-2492(%rbp), %eax
	setg	%cl
	andb	$1, %cl
	movb	%cl, -4977(%rbp)
	jmp	.LBB195_241
.LBB195_240:                            # %if.else.933
	leaq	-4816(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	move_it_by_lines
	movl	-2384(%rbp), %eax
	cmpl	-2492(%rbp), %eax
	setg	%cl
	andb	$1, %cl
	movb	%cl, -4977(%rbp)
.LBB195_241:                            # %if.end.939
	movq	-4968(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LBB195_246
# BB#242:                               # %land.lhs.true.944
	testb	$1, -4977(%rbp)
	jne	.LBB195_246
# BB#243:                               # %land.lhs.true.946
	xorl	%edi, %edi
	movq	globals+2088, %rax
	movq	%rax, -10328(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10328(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB195_245
# BB#244:                               # %lor.lhs.false.950
	movl	$901, %edi              # imm = 0x385
	movq	globals+2088, %rax
	movq	%rax, -10336(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10336(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB195_246
.LBB195_245:                            # %if.then.954
	jmp	.LBB195_258
.LBB195_246:                            # %if.else.955
	cmpl	$0, window_scroll_pixel_based_preserve_y
	jl	.LBB195_253
# BB#247:                               # %if.then.958
	movl	-2492(%rbp), %eax
	subl	-4844(%rbp), %eax
	subl	$1, %eax
	cmpl	window_scroll_pixel_based_preserve_y, %eax
	jge	.LBB195_249
# BB#248:                               # %cond.true.965
	movl	-2492(%rbp), %eax
	subl	-4844(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -10340(%rbp)      # 4-byte Spill
	jmp	.LBB195_250
.LBB195_249:                            # %cond.false.969
	movl	window_scroll_pixel_based_preserve_y, %eax
	movl	%eax, -10340(%rbp)      # 4-byte Spill
.LBB195_250:                            # %cond.end.970
	movl	-10340(%rbp), %eax      # 4-byte Reload
	movl	%eax, -9796(%rbp)
	movl	-9796(%rbp), %eax
	cmpl	-4844(%rbp), %eax
	jge	.LBB195_252
# BB#251:                               # %if.then.974
	movl	-4844(%rbp), %eax
	movl	%eax, -9796(%rbp)
.LBB195_252:                            # %if.end.975
	movq	-4824(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_position
	movq	%rax, -4840(%rbp)
	movq	-4824(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_byte_position
	leaq	-4816(%rbp), %rdi
	movq	%rax, -4832(%rbp)
	movq	-4824(%rbp), %rsi
	movq	-4840(%rbp), %rdx
	movq	-4832(%rbp), %rcx
	callq	start_display
	leaq	-4816(%rbp), %rdi
	movq	$-1, %rsi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$3, %r9d
	movl	window_scroll_pixel_based_preserve_x, %edx
	movl	-9796(%rbp), %ecx
	callq	move_it_to
	movq	-4504(%rbp), %rdi
	movq	-4496(%rbp), %rsi
	movl	%eax, -10344(%rbp)      # 4-byte Spill
	callq	set_point_both
	jmp	.LBB195_257
.LBB195_253:                            # %if.else.989
	testb	$1, -4977(%rbp)
	je	.LBB195_255
# BB#254:                               # %if.then.991
	leaq	-4816(%rbp), %rdi
	movq	$-2, %rsi
	callq	move_it_by_lines
	movq	-4504(%rbp), %rdi
	movq	-4496(%rbp), %rsi
	callq	set_point_both
	jmp	.LBB195_256
.LBB195_255:                            # %if.else.998
	movq	-4968(%rbp), %rdi
	movq	-4976(%rbp), %rsi
	callq	set_point_both
.LBB195_256:                            # %if.end.999
	jmp	.LBB195_257
.LBB195_257:                            # %if.end.1000
	jmp	.LBB195_258
.LBB195_258:                            # %if.end.1001
	jmp	.LBB195_259
.LBB195_259:                            # %if.end.1002
	jmp	.LBB195_260
.LBB195_260:                            # %if.end.1003
	xorl	%esi, %esi
	movq	-4880(%rbp), %rdi
	callq	bidi_unshelve_cache
	testb	$1, -4889(%rbp)
	je	.LBB195_271
# BB#261:                               # %if.then.1005
	movq	-4824(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-4824(%rbp), %rax
	movq	selected_window, %rcx
	movq	%rdi, -10352(%rbp)      # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -10360(%rbp)      # 8-byte Spill
	callq	XWINDOW
	movq	-10360(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB195_269
# BB#262:                               # %cond.true.1009
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB195_264
# BB#263:                               # %cond.true.1014
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -10368(%rbp)      # 8-byte Spill
	jmp	.LBB195_268
.LBB195_264:                            # %cond.false.1017
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -10376(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10376(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB195_266
# BB#265:                               # %cond.true.1023
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -10384(%rbp)      # 8-byte Spill
	jmp	.LBB195_267
.LBB195_266:                            # %cond.false.1027
	movq	-4824(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -10384(%rbp)      # 8-byte Spill
.LBB195_267:                            # %cond.end.1032
	movq	-10384(%rbp), %rax      # 8-byte Reload
	movq	%rax, -10368(%rbp)      # 8-byte Spill
.LBB195_268:                            # %cond.end.1034
	movq	-10368(%rbp), %rax      # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10392(%rbp)      # 8-byte Spill
	jmp	.LBB195_270
.LBB195_269:                            # %cond.false.1038
	movq	-4824(%rbp), %rax
	movq	96(%rax), %rdi
	callq	Fmarker_position
	movq	%rax, -10392(%rbp)      # 8-byte Spill
.LBB195_270:                            # %cond.end.1040
	movq	-10392(%rbp), %rax      # 8-byte Reload
	movq	-4824(%rbp), %rcx
	movq	80(%rcx), %rdx
	movq	-10352(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_marker
	movq	%rax, -10400(%rbp)      # 8-byte Spill
.LBB195_271:                            # %if.end.1044
	addq	$10416, %rsp            # imm = 0x28B0
	popq	%rbp
	retq
.Lfunc_end195:
	.size	window_scroll_pixel_based, .Lfunc_end195-window_scroll_pixel_based
	.cfi_endproc

	.align	16, 0x90
	.type	window_scroll_line_based,@function
window_scroll_line_based:               # @window_scroll_line_based
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp588:
	.cfi_def_cfa_offset 16
.Ltmp589:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp590:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp591:
	.cfi_offset %rbx, -24
	movb	%cl, %al
	movb	%dl, %r8b
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	andb	$1, %r8b
	movb	%r8b, -21(%rbp)
	andb	$1, %al
	movb	%al, -22(%rbp)
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -32(%rbp)
	callq	Fpoint_marker
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	window_internal_height
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movq	88(%rdi), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	callq	marker_byte_position
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fwindow_point
	movq	-16(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	Fwindow_old_point
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movb	%r8b, -113(%rbp)
	testb	$1, -21(%rbp)
	je	.LBB196_5
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %ecx
	movslq	-60(%rbp), %rdx
	subq	globals+3192, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB196_3
# BB#2:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB196_4
.LBB196_3:                              # %cond.false
	movslq	-60(%rbp), %rax
	subq	globals+3192, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB196_4:                              # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movslq	-20(%rbp), %rcx
	imulq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -20(%rbp)
.LBB196_5:                              # %if.end
	xorl	%edi, %edi
	movq	globals+2088, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB196_11
# BB#6:                                 # %if.then.22
	cmpq	$0, window_scroll_preserve_vpos
	jle	.LBB196_9
# BB#7:                                 # %lor.lhs.false
	movq	current_kboard, %rax
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB196_9
# BB#8:                                 # %lor.lhs.false.28
	movl	$836, %edi              # imm = 0x344
	movq	current_kboard, %rax
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB196_10
.LBB196_9:                              # %if.then.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	movq	$-1, %rdx
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	current_buffer, %r9
	movq	736(%r9), %r9
	addq	$0, %r9
	movslq	-60(%rbp), %r10
	movq	-32(%rbp), %r11
	movq	272(%r11), %r11
	movq	-32(%rbp), %rbx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	compute_motion
	movl	$48, %r8d
	movl	%r8d, %edx
	leaq	-168(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-144(%rbp), %rax
	movq	%rax, window_scroll_preserve_vpos
	movq	-152(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	272(%rcx), %rax
	movq	%rax, window_scroll_preserve_hpos
.LBB196_10:                             # %if.end.40
	movq	window_scroll_preserve_hpos, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	window_scroll_preserve_vpos, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	%rax, -112(%rbp)
.LBB196_11:                             # %if.end.45
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fpos_visible_in_window_p
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB196_13
# BB#12:                                # %if.then.54
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	-60(%rbp), %edx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-16(%rbp), %rdi
	movl	-276(%rbp), %eax        # 4-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -96(%rbp)
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -104(%rbp)
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB196_13:                             # %if.end.64
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	set_point_both
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -305(%rbp)         # 1-byte Spill
	jge	.LBB196_15
# BB#14:                                # %land.rhs
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	sete	%dl
	movb	%dl, -305(%rbp)         # 1-byte Spill
.LBB196_15:                             # %land.end
	movb	-305(%rbp), %al         # 1-byte Reload
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -73(%rbp)
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -48(%rbp)
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	Fbolp
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	-40(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	marker_byte_position
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	testb	$1, -73(%rbp)
	je	.LBB196_19
# BB#16:                                # %if.then.85
	testb	$1, -22(%rbp)
	je	.LBB196_18
# BB#17:                                # %if.then.87
	jmp	.LBB196_83
.LBB196_18:                             # %if.else
	movl	$200, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB196_19:                             # %if.end.89
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB196_69
# BB#20:                                # %if.then.92
	movl	$4, %eax
	movq	globals+3264, %rcx
	movq	-32(%rbp), %rdx
	movl	268(%rdx), %esi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-348(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	jge	.LBB196_22
# BB#21:                                # %cond.true.97
	movq	globals+3264, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB196_23
.LBB196_22:                             # %cond.false.98
	movl	$4, %eax
	movq	-32(%rbp), %rcx
	movl	268(%rcx), %edx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-364(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB196_23:                             # %cond.end.102
	movq	-360(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB196_25
# BB#24:                                # %cond.true.106
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB196_29
.LBB196_25:                             # %cond.false.107
	movl	$4, %eax
	movq	globals+3264, %rcx
	movq	-32(%rbp), %rdx
	movl	268(%rdx), %esi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-380(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	jge	.LBB196_27
# BB#26:                                # %cond.true.113
	movq	globals+3264, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB196_28
.LBB196_27:                             # %cond.false.114
	movl	$4, %eax
	movq	-32(%rbp), %rcx
	movl	268(%rcx), %edx
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-396(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
.LBB196_28:                             # %cond.end.118
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB196_29:                             # %cond.end.120
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rsi
	movq	88(%rax), %rdi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	set_marker_restricted_both
	movq	-88(%rbp), %rcx
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	setne	%r8b
	movq	-32(%rbp), %rax
	movzbl	%r8b, %edi
	movw	%di, %r9w
	movw	468(%rax), %r10w
	shlw	$4, %r9w
	andw	$-17, %r10w
	orw	%r9w, %r10w
	movw	%r10w, 468(%rax)
	movq	-32(%rbp), %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	wset_update_mode_line
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movw	468(%rax), %r9w
	andw	$-33, %r9w
	orw	$32, %r9w
	movw	%r9w, 468(%rax)
	movq	globals+2088, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB196_34
# BB#30:                                # %land.lhs.true
	cmpl	$0, -172(%rbp)
	jne	.LBB196_34
# BB#31:                                # %land.lhs.true.138
	testb	$1, -21(%rbp)
	jne	.LBB196_33
# BB#32:                                # %lor.lhs.false.141
	movl	$901, %edi              # imm = 0x385
	movq	globals+2088, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB196_34
.LBB196_33:                             # %if.then.145
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB196_68
.LBB196_34:                             # %if.else.148
	cmpl	$0, -20(%rbp)
	jle	.LBB196_50
# BB#35:                                # %if.then.151
	cmpl	$0, -172(%rbp)
	jle	.LBB196_37
# BB#36:                                # %if.then.154
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movslq	-172(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movl	%edx, %ecx
	movl	%ecx, -176(%rbp)
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB196_38
.LBB196_37:                             # %if.else.163
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -176(%rbp)
.LBB196_38:                             # %if.end.165
	movslq	-176(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	marker_position
	movq	-496(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB196_40
# BB#39:                                # %if.then.170
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	-40(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	marker_byte_position
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	jmp	.LBB196_49
.LBB196_40:                             # %if.else.173
	xorl	%edi, %edi
	movq	globals+2088, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB196_47
# BB#41:                                # %if.then.177
	movq	window_scroll_preserve_vpos, %rax
	movl	%eax, %ecx
	movl	%ecx, -180(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_point_both
	movq	window_scroll_preserve_vpos, %rax
	movslq	-172(%rbp), %rsi
	cmpq	%rsi, %rax
	jge	.LBB196_43
# BB#42:                                # %if.then.182
	movl	-172(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB196_46
.LBB196_43:                             # %if.else.183
	movq	window_scroll_preserve_vpos, %rax
	movq	-32(%rbp), %rcx
	movl	268(%rcx), %edx
	subl	-172(%rbp), %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jl	.LBB196_45
# BB#44:                                # %if.then.189
	movq	-32(%rbp), %rax
	movl	268(%rax), %ecx
	subl	-172(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -180(%rbp)
.LBB196_45:                             # %if.end.193
	jmp	.LBB196_46
.LBB196_46:                             # %if.end.194
	movq	window_scroll_preserve_hpos, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-180(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB196_48
.LBB196_47:                             # %if.else.203
	movslq	-176(%rbp), %rdi
	callq	set_point
.LBB196_48:                             # %if.end.205
	jmp	.LBB196_49
.LBB196_49:                             # %if.end.206
	jmp	.LBB196_67
.LBB196_50:                             # %if.else.207
	cmpl	$0, -20(%rbp)
	jge	.LBB196_66
# BB#51:                                # %if.then.210
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movl	-60(%rbp), %eax
	subl	-172(%rbp), %eax
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-16(%rbp), %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movl	-60(%rbp), %r8d
	subl	-172(%rbp), %r8d
	movslq	%r8d, %rcx
	cmpq	%rcx, %rax
	jne	.LBB196_53
# BB#52:                                # %if.then.221
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movl	%eax, %ecx
	movl	%ecx, -184(%rbp)
	jmp	.LBB196_54
.LBB196_53:                             # %if.else.225
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -184(%rbp)
.LBB196_54:                             # %if.end.230
	movslq	-184(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	marker_position
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jle	.LBB196_56
# BB#55:                                # %if.then.235
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	-40(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	marker_byte_position
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_point_both
	jmp	.LBB196_65
.LBB196_56:                             # %if.else.238
	xorl	%edi, %edi
	movq	globals+2088, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB196_63
# BB#57:                                # %if.then.242
	movq	window_scroll_preserve_vpos, %rax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	set_point_both
	movq	window_scroll_preserve_vpos, %rax
	movslq	-172(%rbp), %rsi
	cmpq	%rsi, %rax
	jge	.LBB196_59
# BB#58:                                # %if.then.248
	movl	-172(%rbp), %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB196_62
.LBB196_59:                             # %if.else.249
	movq	window_scroll_preserve_vpos, %rax
	movl	-60(%rbp), %ecx
	subl	-172(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB196_61
# BB#60:                                # %if.then.254
	movl	-60(%rbp), %eax
	subl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -188(%rbp)
.LBB196_61:                             # %if.end.257
	jmp	.LBB196_62
.LBB196_62:                             # %if.end.258
	movq	window_scroll_preserve_hpos, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-188(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	-592(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB196_64
.LBB196_63:                             # %if.else.267
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-2, %rdi
	movq	-608(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fvertical_motion
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB196_64:                             # %if.end.270
	jmp	.LBB196_65
.LBB196_65:                             # %if.end.271
	jmp	.LBB196_66
.LBB196_66:                             # %if.end.272
	jmp	.LBB196_67
.LBB196_67:                             # %if.end.273
	jmp	.LBB196_68
.LBB196_68:                             # %if.end.274
	jmp	.LBB196_72
.LBB196_69:                             # %if.else.275
	testb	$1, -22(%rbp)
	je	.LBB196_71
# BB#70:                                # %if.then.277
	jmp	.LBB196_83
.LBB196_71:                             # %if.else.278
	movl	$366, %edi              # imm = 0x16E
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB196_72:                             # %if.end.280
	testb	$1, -113(%rbp)
	je	.LBB196_83
# BB#73:                                # %if.then.282
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	selected_window, %rcx
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	XWINDOW
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB196_81
# BB#74:                                # %cond.true.286
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB196_76
# BB#75:                                # %cond.true.291
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB196_80
.LBB196_76:                             # %cond.false.294
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	360(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB196_78
# BB#77:                                # %cond.true.300
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	736(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB196_79
.LBB196_78:                             # %cond.false.304
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB196_79:                             # %cond.end.309
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB196_80:                             # %cond.end.311
	movq	-640(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB196_82
.LBB196_81:                             # %cond.false.315
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	callq	Fmarker_position
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB196_82:                             # %cond.end.317
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_marker
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB196_83:                             # %if.end.321
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end196:
	.size	window_scroll_line_based, .Lfunc_end196-window_scroll_line_based
	.cfi_endproc

	.align	16, 0x90
	.type	wset_temslot,@function
wset_temslot:                           # @wset_temslot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp592:
	.cfi_def_cfa_offset 16
.Ltmp593:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp594:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end197:
	.size	wset_temslot, .Lfunc_end197-wset_temslot
	.cfi_endproc

	.align	16, 0x90
	.type	extract_dimension,@function
extract_dimension:                      # @extract_dimension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp595:
	.cfi_def_cfa_offset 16
.Ltmp596:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp597:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB198_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB198_11
.LBB198_2:                              # %if.end
	jmp	.LBB198_3
.LBB198_3:                              # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB198_5
# BB#4:                                 # %cond.true
	jmp	.LBB198_6
.LBB198_5:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB198_6:                              # %cond.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB198_8
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB198_9
.LBB198_8:                              # %if.then.10
	movl	$2, %eax
	movl	%eax, %esi
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB198_9:                              # %if.end.11
	jmp	.LBB198_10
.LBB198_10:                             # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
.LBB198_11:                             # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end198:
	.size	extract_dimension, .Lfunc_end198-extract_dimension
	.cfi_endproc

	.align	16, 0x90
	.type	foreach_window_1,@function
foreach_window_1:                       # @foreach_window_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp598:
	.cfi_def_cfa_offset 16
.Ltmp599:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp600:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
.LBB199_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB199_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB199_1 Depth=1
	movb	-25(%rbp), %al
	movb	%al, -26(%rbp)          # 1-byte Spill
.LBB199_3:                              # %land.end
                                        #   in Loop: Header=BB199_1 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB199_4
	jmp	.LBB199_11
.LBB199_4:                              # %for.body
                                        #   in Loop: Header=BB199_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB199_5
	jmp	.LBB199_6
.LBB199_5:                              # %if.then
                                        #   in Loop: Header=BB199_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XWINDOW
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	foreach_window_1
	andb	$1, %al
	movb	%al, -25(%rbp)
	jmp	.LBB199_7
.LBB199_6:                              # %if.else
                                        #   in Loop: Header=BB199_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	andb	$1, %al
	movb	%al, -25(%rbp)
.LBB199_7:                              # %if.end
                                        #   in Loop: Header=BB199_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB199_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB199_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB199_10
.LBB199_9:                              # %cond.false
                                        #   in Loop: Header=BB199_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB199_10:                             # %cond.end
                                        #   in Loop: Header=BB199_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB199_1
.LBB199_11:                             # %for.end
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end199:
	.size	foreach_window_1, .Lfunc_end199-foreach_window_1
	.cfi_endproc

	.type	selected_window,@object # @selected_window
	.comm	selected_window,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"In `set-frame-selected-window', WINDOW is not on FRAME"
	.size	.L.str, 55

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Combination limit is meaningful for internal windows only"
	.size	.L.str.1, 58

	.type	minibuf_selected_window,@object # @minibuf_selected_window
	.comm	minibuf_selected_window,8,8
	.type	minibuf_window,@object  # @minibuf_window
	.comm	minibuf_window,8,8
	.type	Vwindow_list,@object    # @Vwindow_list
	.comm	Vwindow_list,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Window is on a different frame"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Specified root is not an ancestor of specified window"
	.size	.L.str.3, 54

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Can't expand minibuffer to full frame"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Attempt to display deleted buffer"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Window is deleted"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Window is dedicated to `%s'"
	.size	.L.str.7, 28

	.type	sequence_number,@object # @sequence_number
	.local	sequence_number
	.comm	sequence_number,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Attempt to split minibuffer window"
	.size	.L.str.8, 35

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Size of new window too small (after split)"
	.size	.L.str.9, 43

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Window sizes don't fit"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Resizing old window failed"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Sum of sizes of old and new window don't fit"
	.size	.L.str.12, 45

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Attempt to delete minibuffer or sole ordinary window"
	.size	.L.str.13, 53

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Attempt to delete sole window of parent"
	.size	.L.str.14, 40

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Deletion failed"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Not a valid minibuffer window"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Cannot resize a minibuffer-only frame"
	.size	.L.str.17, 38

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Failed to resize minibuffer window"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"There is no other window"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"`recenter'ing a window that does not display current-buffer."
	.size	.L.str.20, 61

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"move-to-window-line called from unrelated buffer"
	.size	.L.str.21, 49

	.type	window_scroll_pixel_based_preserve_x,@object # @window_scroll_pixel_based_preserve_x
	.local	window_scroll_pixel_based_preserve_x
	.comm	window_scroll_pixel_based_preserve_x,4,4
	.type	window_scroll_pixel_based_preserve_y,@object # @window_scroll_pixel_based_preserve_y
	.local	window_scroll_pixel_based_preserve_y
	.comm	window_scroll_pixel_based_preserve_y,4,4
	.type	window_scroll_preserve_hpos,@object # @window_scroll_preserve_hpos
	.local	window_scroll_preserve_hpos
	.comm	window_scroll_preserve_hpos,8,8
	.type	window_scroll_preserve_vpos,@object # @window_scroll_preserve_vpos
	.local	window_scroll_preserve_vpos
	.comm	window_scroll_preserve_vpos,8,8
	.type	syms_of_window.o_fwd,@object # @syms_of_window.o_fwd
	.local	syms_of_window.o_fwd
	.comm	syms_of_window.o_fwd,16,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"temp-buffer-show-function"
	.size	.L.str.22, 26

	.type	syms_of_window.o_fwd.23,@object # @syms_of_window.o_fwd.23
	.local	syms_of_window.o_fwd.23
	.comm	syms_of_window.o_fwd.23,16,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"minibuffer-scroll-window"
	.size	.L.str.24, 25

	.type	syms_of_window.b_fwd,@object # @syms_of_window.b_fwd
	.local	syms_of_window.b_fwd
	.comm	syms_of_window.b_fwd,16,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"mode-line-in-non-selected-windows"
	.size	.L.str.25, 34

	.type	syms_of_window.o_fwd.26,@object # @syms_of_window.o_fwd.26
	.local	syms_of_window.o_fwd.26
	.comm	syms_of_window.o_fwd.26,16,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"other-window-scroll-buffer"
	.size	.L.str.27, 27

	.type	syms_of_window.b_fwd.28,@object # @syms_of_window.b_fwd.28
	.local	syms_of_window.b_fwd.28
	.comm	syms_of_window.b_fwd.28,16,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"auto-window-vscroll"
	.size	.L.str.29, 20

	.type	syms_of_window.i_fwd,@object # @syms_of_window.i_fwd
	.local	syms_of_window.i_fwd
	.comm	syms_of_window.i_fwd,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"next-screen-context-lines"
	.size	.L.str.30, 26

	.type	syms_of_window.o_fwd.31,@object # @syms_of_window.o_fwd.31
	.local	syms_of_window.o_fwd.31
	.comm	syms_of_window.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"scroll-preserve-screen-position"
	.size	.L.str.32, 32

	.type	syms_of_window.o_fwd.33,@object # @syms_of_window.o_fwd.33
	.local	syms_of_window.o_fwd.33
	.comm	syms_of_window.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"window-point-insertion-type"
	.size	.L.str.34, 28

	.type	syms_of_window.o_fwd.35,@object # @syms_of_window.o_fwd.35
	.local	syms_of_window.o_fwd.35
	.comm	syms_of_window.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"window-configuration-change-hook"
	.size	.L.str.36, 33

	.type	syms_of_window.o_fwd.37,@object # @syms_of_window.o_fwd.37
	.local	syms_of_window.o_fwd.37
	.comm	syms_of_window.o_fwd.37,16,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"recenter-redisplay"
	.size	.L.str.38, 19

	.type	syms_of_window.o_fwd.39,@object # @syms_of_window.o_fwd.39
	.local	syms_of_window.o_fwd.39
	.comm	syms_of_window.o_fwd.39,16,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"window-combination-resize"
	.size	.L.str.40, 26

	.type	syms_of_window.o_fwd.41,@object # @syms_of_window.o_fwd.41
	.local	syms_of_window.o_fwd.41
	.comm	syms_of_window.o_fwd.41,16,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"window-combination-limit"
	.size	.L.str.42, 25

	.type	syms_of_window.o_fwd.43,@object # @syms_of_window.o_fwd.43
	.local	syms_of_window.o_fwd.43
	.comm	syms_of_window.o_fwd.43,16,8
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"window-persistent-parameters"
	.size	.L.str.44, 29

	.type	syms_of_window.b_fwd.45,@object # @syms_of_window.b_fwd.45
	.local	syms_of_window.b_fwd.45
	.comm	syms_of_window.b_fwd.45,16,8
	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"window-resize-pixelwise"
	.size	.L.str.46, 24

	.type	syms_of_window.b_fwd.47,@object # @syms_of_window.b_fwd.47
	.local	syms_of_window.b_fwd.47
	.comm	syms_of_window.b_fwd.47,16,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"fast-but-imprecise-scrolling"
	.size	.L.str.48, 29

	.type	Sselected_window,@object # @Sselected_window
	.data
	.align	8
Sselected_window:
	.quad	167772160               # 0xa000000
	.quad	Fselected_window
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.56
	.quad	0
	.quad	0
	.size	Sselected_window, 48

	.type	Sother_window_for_scrolling,@object # @Sother_window_for_scrolling
	.align	8
Sother_window_for_scrolling:
	.quad	167772160               # 0xa000000
	.quad	Fother_window_for_scrolling
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.136
	.quad	0
	.quad	0
	.size	Sother_window_for_scrolling, 48

	.type	Sminibuffer_selected_window,@object # @Sminibuffer_selected_window
	.align	8
Sminibuffer_selected_window:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_selected_window
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.138
	.quad	0
	.quad	0
	.size	Sminibuffer_selected_window, 48

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"scroll-left"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"scroll-right"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"scroll-up-command"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"scroll-other-window"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"scroll-down-command"
	.size	.L.str.53, 20

	.type	window_select_count,@object # @window_select_count
	.comm	window_select_count,8,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Invalid type of vertical scroll bar"
	.size	.L.str.54, 36

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Invalid type of horizontal scroll bar"
	.size	.L.str.55, 38

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"selected-window"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"minibuffer-window"
	.size	.L.str.57, 18

	.type	Sminibuffer_window,@object # @Sminibuffer_window
	.data
	.align	8
Sminibuffer_window:
	.quad	167772160               # 0xa000000
	.quad	Fminibuffer_window
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Sminibuffer_window, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"window-minibuffer-p"
	.size	.L.str.58, 20

	.type	Swindow_minibuffer_p,@object # @Swindow_minibuffer_p
	.data
	.align	8
Swindow_minibuffer_p:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_minibuffer_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Swindow_minibuffer_p, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"windowp"
	.size	.L.str.59, 8

	.type	Swindowp,@object        # @Swindowp
	.data
	.align	8
Swindowp:
	.quad	167772160               # 0xa000000
	.quad	Fwindowp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Swindowp, 48

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"window-valid-p"
	.size	.L.str.60, 15

	.type	Swindow_valid_p,@object # @Swindow_valid_p
	.data
	.align	8
Swindow_valid_p:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_valid_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Swindow_valid_p, 48

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"window-live-p"
	.size	.L.str.61, 14

	.type	Swindow_live_p,@object  # @Swindow_live_p
	.data
	.align	8
Swindow_live_p:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_live_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Swindow_live_p, 48

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"window-frame"
	.size	.L.str.62, 13

	.type	Swindow_frame,@object   # @Swindow_frame
	.data
	.align	8
Swindow_frame:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_frame
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Swindow_frame, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"frame-root-window"
	.size	.L.str.63, 18

	.type	Sframe_root_window,@object # @Sframe_root_window
	.data
	.align	8
Sframe_root_window:
	.quad	167772160               # 0xa000000
	.quad	Fframe_root_window
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Sframe_root_window, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"frame-first-window"
	.size	.L.str.64, 19

	.type	Sframe_first_window,@object # @Sframe_first_window
	.data
	.align	8
Sframe_first_window:
	.quad	167772160               # 0xa000000
	.quad	Fframe_first_window
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Sframe_first_window, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"frame-selected-window"
	.size	.L.str.65, 22

	.type	Sframe_selected_window,@object # @Sframe_selected_window
	.data
	.align	8
Sframe_selected_window:
	.quad	167772160               # 0xa000000
	.quad	Fframe_selected_window
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Sframe_selected_window, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"set-frame-selected-window"
	.size	.L.str.66, 26

	.type	Sset_frame_selected_window,@object # @Sset_frame_selected_window
	.data
	.align	8
Sset_frame_selected_window:
	.quad	167772160               # 0xa000000
	.quad	Fset_frame_selected_window
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Sset_frame_selected_window, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"pos-visible-in-window-p"
	.size	.L.str.67, 24

	.type	Spos_visible_in_window_p,@object # @Spos_visible_in_window_p
	.data
	.align	8
Spos_visible_in_window_p:
	.quad	167772160               # 0xa000000
	.quad	Fpos_visible_in_window_p
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Spos_visible_in_window_p, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"window-line-height"
	.size	.L.str.68, 19

	.type	Swindow_line_height,@object # @Swindow_line_height
	.data
	.align	8
Swindow_line_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_line_height
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Swindow_line_height, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"window-buffer"
	.size	.L.str.69, 14

	.type	Swindow_buffer,@object  # @Swindow_buffer
	.data
	.align	8
Swindow_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_buffer
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Swindow_buffer, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"window-parent"
	.size	.L.str.70, 14

	.type	Swindow_parent,@object  # @Swindow_parent
	.data
	.align	8
Swindow_parent:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_parent
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Swindow_parent, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"window-top-child"
	.size	.L.str.71, 17

	.type	Swindow_top_child,@object # @Swindow_top_child
	.data
	.align	8
Swindow_top_child:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_top_child
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Swindow_top_child, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"window-left-child"
	.size	.L.str.72, 18

	.type	Swindow_left_child,@object # @Swindow_left_child
	.data
	.align	8
Swindow_left_child:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_left_child
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Swindow_left_child, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"window-next-sibling"
	.size	.L.str.73, 20

	.type	Swindow_next_sibling,@object # @Swindow_next_sibling
	.data
	.align	8
Swindow_next_sibling:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_next_sibling
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Swindow_next_sibling, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"window-prev-sibling"
	.size	.L.str.74, 20

	.type	Swindow_prev_sibling,@object # @Swindow_prev_sibling
	.data
	.align	8
Swindow_prev_sibling:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_prev_sibling
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Swindow_prev_sibling, 48

	.type	Swindow_combination_limit,@object # @Swindow_combination_limit
	.align	8
Swindow_combination_limit:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_combination_limit
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.size	Swindow_combination_limit, 48

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"set-window-combination-limit"
	.size	.L.str.75, 29

	.type	Sset_window_combination_limit,@object # @Sset_window_combination_limit
	.data
	.align	8
Sset_window_combination_limit:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_combination_limit
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Sset_window_combination_limit, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"window-use-time"
	.size	.L.str.76, 16

	.type	Swindow_use_time,@object # @Swindow_use_time
	.data
	.align	8
Swindow_use_time:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_use_time
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Swindow_use_time, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"window-pixel-width"
	.size	.L.str.77, 19

	.type	Swindow_pixel_width,@object # @Swindow_pixel_width
	.data
	.align	8
Swindow_pixel_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_pixel_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Swindow_pixel_width, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"window-pixel-height"
	.size	.L.str.78, 20

	.type	Swindow_pixel_height,@object # @Swindow_pixel_height
	.data
	.align	8
Swindow_pixel_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_pixel_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Swindow_pixel_height, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"window-total-width"
	.size	.L.str.79, 19

	.type	Swindow_total_width,@object # @Swindow_total_width
	.data
	.align	8
Swindow_total_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_total_width
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Swindow_total_width, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"window-total-height"
	.size	.L.str.80, 20

	.type	Swindow_total_height,@object # @Swindow_total_height
	.data
	.align	8
Swindow_total_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_total_height
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Swindow_total_height, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"window-normal-size"
	.size	.L.str.81, 19

	.type	Swindow_normal_size,@object # @Swindow_normal_size
	.data
	.align	8
Swindow_normal_size:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_normal_size
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Swindow_normal_size, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"window-new-pixel"
	.size	.L.str.82, 17

	.type	Swindow_new_pixel,@object # @Swindow_new_pixel
	.data
	.align	8
Swindow_new_pixel:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_new_pixel
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Swindow_new_pixel, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"window-new-total"
	.size	.L.str.83, 17

	.type	Swindow_new_total,@object # @Swindow_new_total
	.data
	.align	8
Swindow_new_total:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_new_total
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Swindow_new_total, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"window-new-normal"
	.size	.L.str.84, 18

	.type	Swindow_new_normal,@object # @Swindow_new_normal
	.data
	.align	8
Swindow_new_normal:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_new_normal
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Swindow_new_normal, 48

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"window-pixel-left"
	.size	.L.str.85, 18

	.type	Swindow_pixel_left,@object # @Swindow_pixel_left
	.data
	.align	8
Swindow_pixel_left:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_pixel_left
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.85
	.quad	0
	.quad	0
	.size	Swindow_pixel_left, 48

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"window-pixel-top"
	.size	.L.str.86, 17

	.type	Swindow_pixel_top,@object # @Swindow_pixel_top
	.data
	.align	8
Swindow_pixel_top:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_pixel_top
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.86
	.quad	0
	.quad	0
	.size	Swindow_pixel_top, 48

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"window-left-column"
	.size	.L.str.87, 19

	.type	Swindow_left_column,@object # @Swindow_left_column
	.data
	.align	8
Swindow_left_column:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_left_column
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.87
	.quad	0
	.quad	0
	.size	Swindow_left_column, 48

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"window-top-line"
	.size	.L.str.88, 16

	.type	Swindow_top_line,@object # @Swindow_top_line
	.data
	.align	8
Swindow_top_line:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_top_line
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.88
	.quad	0
	.quad	0
	.size	Swindow_top_line, 48

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"set-window-new-pixel"
	.size	.L.str.89, 21

	.type	Sset_window_new_pixel,@object # @Sset_window_new_pixel
	.data
	.align	8
Sset_window_new_pixel:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_new_pixel
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Sset_window_new_pixel, 48

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"set-window-new-total"
	.size	.L.str.90, 21

	.type	Sset_window_new_total,@object # @Sset_window_new_total
	.data
	.align	8
Sset_window_new_total:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_new_total
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Sset_window_new_total, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"set-window-new-normal"
	.size	.L.str.91, 22

	.type	Sset_window_new_normal,@object # @Sset_window_new_normal
	.data
	.align	8
Sset_window_new_normal:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_new_normal
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Sset_window_new_normal, 48

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"window-resize-apply"
	.size	.L.str.92, 20

	.type	Swindow_resize_apply,@object # @Swindow_resize_apply
	.data
	.align	8
Swindow_resize_apply:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_resize_apply
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Swindow_resize_apply, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"window-resize-apply-total"
	.size	.L.str.93, 26

	.type	Swindow_resize_apply_total,@object # @Swindow_resize_apply_total
	.data
	.align	8
Swindow_resize_apply_total:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_resize_apply_total
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Swindow_resize_apply_total, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"window-body-height"
	.size	.L.str.94, 19

	.type	Swindow_body_height,@object # @Swindow_body_height
	.data
	.align	8
Swindow_body_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_body_height
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Swindow_body_height, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"window-body-width"
	.size	.L.str.95, 18

	.type	Swindow_body_width,@object # @Swindow_body_width
	.data
	.align	8
Swindow_body_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_body_width
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Swindow_body_width, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"window-hscroll"
	.size	.L.str.96, 15

	.type	Swindow_hscroll,@object # @Swindow_hscroll
	.data
	.align	8
Swindow_hscroll:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_hscroll
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Swindow_hscroll, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"set-window-hscroll"
	.size	.L.str.97, 19

	.type	Sset_window_hscroll,@object # @Sset_window_hscroll
	.data
	.align	8
Sset_window_hscroll:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_hscroll
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Sset_window_hscroll, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"window-redisplay-end-trigger"
	.size	.L.str.98, 29

	.type	Swindow_redisplay_end_trigger,@object # @Swindow_redisplay_end_trigger
	.data
	.align	8
Swindow_redisplay_end_trigger:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_redisplay_end_trigger
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Swindow_redisplay_end_trigger, 48

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"set-window-redisplay-end-trigger"
	.size	.L.str.99, 33

	.type	Sset_window_redisplay_end_trigger,@object # @Sset_window_redisplay_end_trigger
	.data
	.align	8
Sset_window_redisplay_end_trigger:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_redisplay_end_trigger
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.99
	.quad	0
	.quad	0
	.size	Sset_window_redisplay_end_trigger, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"window-mode-line-height"
	.size	.L.str.100, 24

	.type	Swindow_mode_line_height,@object # @Swindow_mode_line_height
	.data
	.align	8
Swindow_mode_line_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_mode_line_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Swindow_mode_line_height, 48

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"window-header-line-height"
	.size	.L.str.101, 26

	.type	Swindow_header_line_height,@object # @Swindow_header_line_height
	.data
	.align	8
Swindow_header_line_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_header_line_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.101
	.quad	0
	.quad	0
	.size	Swindow_header_line_height, 48

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"window-right-divider-width"
	.size	.L.str.102, 27

	.type	Swindow_right_divider_width,@object # @Swindow_right_divider_width
	.data
	.align	8
Swindow_right_divider_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_right_divider_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.102
	.quad	0
	.quad	0
	.size	Swindow_right_divider_width, 48

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"window-bottom-divider-width"
	.size	.L.str.103, 28

	.type	Swindow_bottom_divider_width,@object # @Swindow_bottom_divider_width
	.data
	.align	8
Swindow_bottom_divider_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_bottom_divider_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.103
	.quad	0
	.quad	0
	.size	Swindow_bottom_divider_width, 48

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"window-scroll-bar-width"
	.size	.L.str.104, 24

	.type	Swindow_scroll_bar_width,@object # @Swindow_scroll_bar_width
	.data
	.align	8
Swindow_scroll_bar_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_scroll_bar_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.104
	.quad	0
	.quad	0
	.size	Swindow_scroll_bar_width, 48

	.type	.L.str.105,@object      # @.str.105
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.105:
	.asciz	"window-scroll-bar-height"
	.size	.L.str.105, 25

	.type	Swindow_scroll_bar_height,@object # @Swindow_scroll_bar_height
	.data
	.align	8
Swindow_scroll_bar_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_scroll_bar_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.105
	.quad	0
	.quad	0
	.size	Swindow_scroll_bar_height, 48

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"coordinates-in-window-p"
	.size	.L.str.106, 24

	.type	Scoordinates_in_window_p,@object # @Scoordinates_in_window_p
	.data
	.align	8
Scoordinates_in_window_p:
	.quad	167772160               # 0xa000000
	.quad	Fcoordinates_in_window_p
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Scoordinates_in_window_p, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"window-at"
	.size	.L.str.107, 10

	.type	Swindow_at,@object      # @Swindow_at
	.data
	.align	8
Swindow_at:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_at
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Swindow_at, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"window-point"
	.size	.L.str.108, 13

	.type	Swindow_point,@object   # @Swindow_point
	.data
	.align	8
Swindow_point:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_point
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Swindow_point, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"window-old-point"
	.size	.L.str.109, 17

	.type	Swindow_old_point,@object # @Swindow_old_point
	.data
	.align	8
Swindow_old_point:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_old_point
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Swindow_old_point, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"window-start"
	.size	.L.str.110, 13

	.type	Swindow_start,@object   # @Swindow_start
	.data
	.align	8
Swindow_start:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_start
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Swindow_start, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"window-end"
	.size	.L.str.111, 11

	.type	Swindow_end,@object     # @Swindow_end
	.data
	.align	8
Swindow_end:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_end
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Swindow_end, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"set-window-point"
	.size	.L.str.112, 17

	.type	Sset_window_point,@object # @Sset_window_point
	.data
	.align	8
Sset_window_point:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_point
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.112
	.quad	0
	.quad	0
	.size	Sset_window_point, 48

	.type	.L.str.113,@object      # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"set-window-start"
	.size	.L.str.113, 17

	.type	Sset_window_start,@object # @Sset_window_start
	.data
	.align	8
Sset_window_start:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_start
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.113
	.quad	0
	.quad	0
	.size	Sset_window_start, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"window-dedicated-p"
	.size	.L.str.114, 19

	.type	Swindow_dedicated_p,@object # @Swindow_dedicated_p
	.data
	.align	8
Swindow_dedicated_p:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_dedicated_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.114
	.quad	0
	.quad	0
	.size	Swindow_dedicated_p, 48

	.type	.L.str.115,@object      # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"set-window-dedicated-p"
	.size	.L.str.115, 23

	.type	Sset_window_dedicated_p,@object # @Sset_window_dedicated_p
	.data
	.align	8
Sset_window_dedicated_p:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_dedicated_p
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.115
	.quad	0
	.quad	0
	.size	Sset_window_dedicated_p, 48

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"window-display-table"
	.size	.L.str.116, 21

	.type	Swindow_display_table,@object # @Swindow_display_table
	.data
	.align	8
Swindow_display_table:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_display_table
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.116
	.quad	0
	.quad	0
	.size	Swindow_display_table, 48

	.type	.L.str.117,@object      # @.str.117
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.117:
	.asciz	"set-window-display-table"
	.size	.L.str.117, 25

	.type	Sset_window_display_table,@object # @Sset_window_display_table
	.data
	.align	8
Sset_window_display_table:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_display_table
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.117
	.quad	0
	.quad	0
	.size	Sset_window_display_table, 48

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"next-window"
	.size	.L.str.118, 12

	.type	Snext_window,@object    # @Snext_window
	.data
	.align	8
Snext_window:
	.quad	167772160               # 0xa000000
	.quad	Fnext_window
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.118
	.quad	0
	.quad	0
	.size	Snext_window, 48

	.type	.L.str.119,@object      # @.str.119
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"previous-window"
	.size	.L.str.119, 16

	.type	Sprevious_window,@object # @Sprevious_window
	.data
	.align	8
Sprevious_window:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_window
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.119
	.quad	0
	.quad	0
	.size	Sprevious_window, 48

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"window--sanitize-window-sizes"
	.size	.L.str.120, 30

	.type	Swindow__sanitize_window_sizes,@object # @Swindow__sanitize_window_sizes
	.data
	.align	8
Swindow__sanitize_window_sizes:
	.quad	167772160               # 0xa000000
	.quad	Fwindow__sanitize_window_sizes
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.120
	.quad	0
	.quad	0
	.size	Swindow__sanitize_window_sizes, 48

	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"get-buffer-window"
	.size	.L.str.121, 18

	.type	Sget_buffer_window,@object # @Sget_buffer_window
	.data
	.align	8
Sget_buffer_window:
	.quad	167772160               # 0xa000000
	.quad	Fget_buffer_window
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.121
	.quad	0
	.quad	0
	.size	Sget_buffer_window, 48

	.type	.L.str.122,@object      # @.str.122
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.122:
	.asciz	"delete-other-windows-internal"
	.size	.L.str.122, 30

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.zero	1
	.size	.L.str.123, 1

	.type	Sdelete_other_windows_internal,@object # @Sdelete_other_windows_internal
	.data
	.align	8
Sdelete_other_windows_internal:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_other_windows_internal
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	0
	.size	Sdelete_other_windows_internal, 48

	.type	.L.str.124,@object      # @.str.124
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.124:
	.asciz	"delete-window-internal"
	.size	.L.str.124, 23

	.type	Sdelete_window_internal,@object # @Sdelete_window_internal
	.data
	.align	8
Sdelete_window_internal:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_window_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.124
	.quad	0
	.quad	0
	.size	Sdelete_window_internal, 48

	.type	.L.str.125,@object      # @.str.125
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.125:
	.asciz	"resize-mini-window-internal"
	.size	.L.str.125, 28

	.type	Sresize_mini_window_internal,@object # @Sresize_mini_window_internal
	.data
	.align	8
Sresize_mini_window_internal:
	.quad	167772160               # 0xa000000
	.quad	Fresize_mini_window_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	0
	.size	Sresize_mini_window_internal, 48

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"set-window-buffer"
	.size	.L.str.126, 18

	.type	Sset_window_buffer,@object # @Sset_window_buffer
	.data
	.align	8
Sset_window_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_buffer
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.126
	.quad	0
	.quad	0
	.size	Sset_window_buffer, 48

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"run-window-configuration-change-hook"
	.size	.L.str.127, 37

	.type	Srun_window_configuration_change_hook,@object # @Srun_window_configuration_change_hook
	.data
	.align	8
Srun_window_configuration_change_hook:
	.quad	167772160               # 0xa000000
	.quad	Frun_window_configuration_change_hook
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.127
	.quad	0
	.quad	0
	.size	Srun_window_configuration_change_hook, 48

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"run-window-scroll-functions"
	.size	.L.str.128, 28

	.type	Srun_window_scroll_functions,@object # @Srun_window_scroll_functions
	.data
	.align	8
Srun_window_scroll_functions:
	.quad	167772160               # 0xa000000
	.quad	Frun_window_scroll_functions
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.128
	.quad	0
	.quad	0
	.size	Srun_window_scroll_functions, 48

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"select-window"
	.size	.L.str.129, 14

	.type	Sselect_window,@object  # @Sselect_window
	.data
	.align	8
Sselect_window:
	.quad	167772160               # 0xa000000
	.quad	Fselect_window
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.129
	.quad	0
	.quad	0
	.size	Sselect_window, 48

	.type	.L.str.130,@object      # @.str.130
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"force-window-update"
	.size	.L.str.130, 20

	.type	Sforce_window_update,@object # @Sforce_window_update
	.data
	.align	8
Sforce_window_update:
	.quad	167772160               # 0xa000000
	.quad	Fforce_window_update
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.130
	.quad	0
	.quad	0
	.size	Sforce_window_update, 48

	.type	.L.str.131,@object      # @.str.131
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.131:
	.asciz	"split-window-internal"
	.size	.L.str.131, 22

	.type	Ssplit_window_internal,@object # @Ssplit_window_internal
	.data
	.align	8
Ssplit_window_internal:
	.quad	167772160               # 0xa000000
	.quad	Fsplit_window_internal
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.131
	.quad	0
	.quad	0
	.size	Ssplit_window_internal, 48

	.type	.L.str.132,@object      # @.str.132
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.132:
	.asciz	"scroll-up"
	.size	.L.str.132, 10

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"^P"
	.size	.L.str.133, 3

	.type	Sscroll_up,@object      # @Sscroll_up
	.data
	.align	8
Sscroll_up:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_up
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	0
	.size	Sscroll_up, 48

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"scroll-down"
	.size	.L.str.134, 12

	.type	Sscroll_down,@object    # @Sscroll_down
	.data
	.align	8
Sscroll_down:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_down
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.134
	.quad	.L.str.133
	.quad	0
	.size	Sscroll_down, 48

	.type	.L.str.135,@object      # @.str.135
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.135:
	.asciz	"^P\np"
	.size	.L.str.135, 5

	.type	Sscroll_left,@object    # @Sscroll_left
	.data
	.align	8
Sscroll_left:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_left
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.49
	.quad	.L.str.135
	.quad	0
	.size	Sscroll_left, 48

	.type	Sscroll_right,@object   # @Sscroll_right
	.align	8
Sscroll_right:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_right
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.50
	.quad	.L.str.135
	.quad	0
	.size	Sscroll_right, 48

	.type	.L.str.136,@object      # @.str.136
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.136:
	.asciz	"other-window-for-scrolling"
	.size	.L.str.136, 27

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"P"
	.size	.L.str.137, 2

	.type	Sscroll_other_window,@object # @Sscroll_other_window
	.data
	.align	8
Sscroll_other_window:
	.quad	167772160               # 0xa000000
	.quad	Fscroll_other_window
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.52
	.quad	.L.str.137
	.quad	0
	.size	Sscroll_other_window, 48

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"minibuffer-selected-window"
	.size	.L.str.138, 27

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"recenter"
	.size	.L.str.139, 9

	.type	Srecenter,@object       # @Srecenter
	.data
	.align	8
Srecenter:
	.quad	167772160               # 0xa000000
	.quad	Frecenter
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.139
	.quad	.L.str.137
	.quad	0
	.size	Srecenter, 48

	.type	.L.str.140,@object      # @.str.140
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.140:
	.asciz	"window-text-width"
	.size	.L.str.140, 18

	.type	Swindow_text_width,@object # @Swindow_text_width
	.data
	.align	8
Swindow_text_width:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_text_width
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.140
	.quad	0
	.quad	0
	.size	Swindow_text_width, 48

	.type	.L.str.141,@object      # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"window-text-height"
	.size	.L.str.141, 19

	.type	Swindow_text_height,@object # @Swindow_text_height
	.data
	.align	8
Swindow_text_height:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_text_height
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.141
	.quad	0
	.quad	0
	.size	Swindow_text_height, 48

	.type	.L.str.142,@object      # @.str.142
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.142:
	.asciz	"move-to-window-line"
	.size	.L.str.142, 20

	.type	Smove_to_window_line,@object # @Smove_to_window_line
	.data
	.align	8
Smove_to_window_line:
	.quad	167772160               # 0xa000000
	.quad	Fmove_to_window_line
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.142
	.quad	.L.str.137
	.quad	0
	.size	Smove_to_window_line, 48

	.type	.L.str.143,@object      # @.str.143
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.143:
	.asciz	"window-configuration-p"
	.size	.L.str.143, 23

	.type	Swindow_configuration_p,@object # @Swindow_configuration_p
	.data
	.align	8
Swindow_configuration_p:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_configuration_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.143
	.quad	0
	.quad	0
	.size	Swindow_configuration_p, 48

	.type	.L.str.144,@object      # @.str.144
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.144:
	.asciz	"window-configuration-frame"
	.size	.L.str.144, 27

	.type	Swindow_configuration_frame,@object # @Swindow_configuration_frame
	.data
	.align	8
Swindow_configuration_frame:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_configuration_frame
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.144
	.quad	0
	.quad	0
	.size	Swindow_configuration_frame, 48

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"set-window-configuration"
	.size	.L.str.145, 25

	.type	Sset_window_configuration,@object # @Sset_window_configuration
	.data
	.align	8
Sset_window_configuration:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_configuration
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.145
	.quad	0
	.quad	0
	.size	Sset_window_configuration, 48

	.type	.L.str.146,@object      # @.str.146
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.146:
	.asciz	"current-window-configuration"
	.size	.L.str.146, 29

	.type	Scurrent_window_configuration,@object # @Scurrent_window_configuration
	.data
	.align	8
Scurrent_window_configuration:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_window_configuration
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.146
	.quad	0
	.quad	0
	.size	Scurrent_window_configuration, 48

	.type	.L.str.147,@object      # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"set-window-margins"
	.size	.L.str.147, 19

	.type	Sset_window_margins,@object # @Sset_window_margins
	.data
	.align	8
Sset_window_margins:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_margins
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.147
	.quad	0
	.quad	0
	.size	Sset_window_margins, 48

	.type	.L.str.148,@object      # @.str.148
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.148:
	.asciz	"window-margins"
	.size	.L.str.148, 15

	.type	Swindow_margins,@object # @Swindow_margins
	.data
	.align	8
Swindow_margins:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_margins
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.148
	.quad	0
	.quad	0
	.size	Swindow_margins, 48

	.type	.L.str.149,@object      # @.str.149
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.149:
	.asciz	"set-window-fringes"
	.size	.L.str.149, 19

	.type	Sset_window_fringes,@object # @Sset_window_fringes
	.data
	.align	8
Sset_window_fringes:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_fringes
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.149
	.quad	0
	.quad	0
	.size	Sset_window_fringes, 48

	.type	.L.str.150,@object      # @.str.150
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.150:
	.asciz	"window-fringes"
	.size	.L.str.150, 15

	.type	Swindow_fringes,@object # @Swindow_fringes
	.data
	.align	8
Swindow_fringes:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_fringes
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.150
	.quad	0
	.quad	0
	.size	Swindow_fringes, 48

	.type	.L.str.151,@object      # @.str.151
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.151:
	.asciz	"set-window-scroll-bars"
	.size	.L.str.151, 23

	.type	Sset_window_scroll_bars,@object # @Sset_window_scroll_bars
	.data
	.align	8
Sset_window_scroll_bars:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_scroll_bars
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.151
	.quad	0
	.quad	0
	.size	Sset_window_scroll_bars, 48

	.type	.L.str.152,@object      # @.str.152
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.152:
	.asciz	"window-scroll-bars"
	.size	.L.str.152, 19

	.type	Swindow_scroll_bars,@object # @Swindow_scroll_bars
	.data
	.align	8
Swindow_scroll_bars:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_scroll_bars
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.152
	.quad	0
	.quad	0
	.size	Swindow_scroll_bars, 48

	.type	.L.str.153,@object      # @.str.153
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.153:
	.asciz	"window-vscroll"
	.size	.L.str.153, 15

	.type	Swindow_vscroll,@object # @Swindow_vscroll
	.data
	.align	8
Swindow_vscroll:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_vscroll
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.153
	.quad	0
	.quad	0
	.size	Swindow_vscroll, 48

	.type	.L.str.154,@object      # @.str.154
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.154:
	.asciz	"set-window-vscroll"
	.size	.L.str.154, 19

	.type	Sset_window_vscroll,@object # @Sset_window_vscroll
	.data
	.align	8
Sset_window_vscroll:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_vscroll
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.154
	.quad	0
	.quad	0
	.size	Sset_window_vscroll, 48

	.type	.L.str.155,@object      # @.str.155
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.155:
	.asciz	"compare-window-configurations"
	.size	.L.str.155, 30

	.type	Scompare_window_configurations,@object # @Scompare_window_configurations
	.data
	.align	8
Scompare_window_configurations:
	.quad	167772160               # 0xa000000
	.quad	Fcompare_window_configurations
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.155
	.quad	0
	.quad	0
	.size	Scompare_window_configurations, 48

	.type	.L.str.156,@object      # @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"window-list"
	.size	.L.str.156, 12

	.type	Swindow_list,@object    # @Swindow_list
	.data
	.align	8
Swindow_list:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_list
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.156
	.quad	0
	.quad	0
	.size	Swindow_list, 48

	.type	.L.str.157,@object      # @.str.157
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.157:
	.asciz	"window-list-1"
	.size	.L.str.157, 14

	.type	Swindow_list_1,@object  # @Swindow_list_1
	.data
	.align	8
Swindow_list_1:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_list_1
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.157
	.quad	0
	.quad	0
	.size	Swindow_list_1, 48

	.type	.L.str.158,@object      # @.str.158
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.158:
	.asciz	"window-prev-buffers"
	.size	.L.str.158, 20

	.type	Swindow_prev_buffers,@object # @Swindow_prev_buffers
	.data
	.align	8
Swindow_prev_buffers:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_prev_buffers
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.158
	.quad	0
	.quad	0
	.size	Swindow_prev_buffers, 48

	.type	.L.str.159,@object      # @.str.159
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.159:
	.asciz	"set-window-prev-buffers"
	.size	.L.str.159, 24

	.type	Sset_window_prev_buffers,@object # @Sset_window_prev_buffers
	.data
	.align	8
Sset_window_prev_buffers:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_prev_buffers
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.159
	.quad	0
	.quad	0
	.size	Sset_window_prev_buffers, 48

	.type	.L.str.160,@object      # @.str.160
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.160:
	.asciz	"window-next-buffers"
	.size	.L.str.160, 20

	.type	Swindow_next_buffers,@object # @Swindow_next_buffers
	.data
	.align	8
Swindow_next_buffers:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_next_buffers
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.160
	.quad	0
	.quad	0
	.size	Swindow_next_buffers, 48

	.type	.L.str.161,@object      # @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"set-window-next-buffers"
	.size	.L.str.161, 24

	.type	Sset_window_next_buffers,@object # @Sset_window_next_buffers
	.data
	.align	8
Sset_window_next_buffers:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_next_buffers
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.161
	.quad	0
	.quad	0
	.size	Sset_window_next_buffers, 48

	.type	.L.str.162,@object      # @.str.162
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.162:
	.asciz	"window-parameters"
	.size	.L.str.162, 18

	.type	Swindow_parameters,@object # @Swindow_parameters
	.data
	.align	8
Swindow_parameters:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_parameters
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.162
	.quad	0
	.quad	0
	.size	Swindow_parameters, 48

	.type	.L.str.163,@object      # @.str.163
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.163:
	.asciz	"window-parameter"
	.size	.L.str.163, 17

	.type	Swindow_parameter,@object # @Swindow_parameter
	.data
	.align	8
Swindow_parameter:
	.quad	167772160               # 0xa000000
	.quad	Fwindow_parameter
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.163
	.quad	0
	.quad	0
	.size	Swindow_parameter, 48

	.type	.L.str.164,@object      # @.str.164
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.164:
	.asciz	"set-window-parameter"
	.size	.L.str.164, 21

	.type	Sset_window_parameter,@object # @Sset_window_parameter
	.data
	.align	8
Sset_window_parameter:
	.quad	167772160               # 0xa000000
	.quad	Fset_window_parameter
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.164
	.quad	0
	.quad	0
	.size	Sset_window_parameter, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
