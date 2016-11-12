	.text
	.file	"terminal.bc"
	.globl	ring_bell
	.align	16, 0x90
	.type	ring_bell,@function
ring_bell:                              # @ring_bell
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+2056, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	globals+2056, %rax
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+2056
	movq	-16(%rbp), %rdi
	callq	call0
	movq	-16(%rbp), %rdi
	movq	%rdi, globals+2056
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_5
.LBB0_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 192(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ring_bell, .Lfunc_end0-ring_bell
	.cfi_endproc

	.globl	update_begin
	.align	16, 0x90
	.type	update_begin,@function
update_begin:                           # @update_begin
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
	movq	376(%rdi), %rdi
	cmpq	$0, 224(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	224(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB1_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	update_begin, .Lfunc_end1-update_begin
	.cfi_endproc

	.globl	update_end
	.align	16, 0x90
	.type	update_end,@function
update_end:                             # @update_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 232(%rdi)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	update_end, .Lfunc_end2-update_end
	.cfi_endproc

	.globl	set_terminal_window
	.align	16, 0x90
	.type	set_terminal_window,@function
set_terminal_window:                    # @set_terminal_window
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 240(%rdi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB3_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_terminal_window, .Lfunc_end3-set_terminal_window
	.cfi_endproc

	.globl	cursor_to
	.align	16, 0x90
	.type	cursor_to,@function
cursor_to:                              # @cursor_to
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 120(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cursor_to, .Lfunc_end4-cursor_to
	.cfi_endproc

	.globl	raw_cursor_to
	.align	16, 0x90
	.type	raw_cursor_to,@function
raw_cursor_to:                          # @raw_cursor_to
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 128(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	128(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	raw_cursor_to, .Lfunc_end5-raw_cursor_to
	.cfi_endproc

	.globl	clear_to_end
	.align	16, 0x90
	.type	clear_to_end,@function
clear_to_end:                           # @clear_to_end
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
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 136(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	clear_to_end, .Lfunc_end6-clear_to_end
	.cfi_endproc

	.globl	clear_frame
	.align	16, 0x90
	.type	clear_frame,@function
clear_frame:                            # @clear_frame
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
	movq	376(%rdi), %rdi
	cmpq	$0, 144(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clear_frame, .Lfunc_end7-clear_frame
	.cfi_endproc

	.globl	clear_end_of_line
	.align	16, 0x90
	.type	clear_end_of_line,@function
clear_end_of_line:                      # @clear_end_of_line
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 152(%rdi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB8_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	clear_end_of_line, .Lfunc_end8-clear_end_of_line
	.cfi_endproc

	.globl	write_glyphs
	.align	16, 0x90
	.type	write_glyphs,@function
write_glyphs:                           # @write_glyphs
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	376(%rsi), %rsi
	cmpq	$0, 176(%rsi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	write_glyphs, .Lfunc_end9-write_glyphs
	.cfi_endproc

	.globl	insert_glyphs
	.align	16, 0x90
	.type	insert_glyphs,@function
insert_glyphs:                          # @insert_glyphs
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_4
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 168(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
.LBB10_4:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	insert_glyphs, .Lfunc_end10-insert_glyphs
	.cfi_endproc

	.globl	delete_glyphs
	.align	16, 0x90
	.type	delete_glyphs,@function
delete_glyphs:                          # @delete_glyphs
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 184(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	delete_glyphs, .Lfunc_end11-delete_glyphs
	.cfi_endproc

	.globl	ins_del_lines
	.align	16, 0x90
	.type	ins_del_lines,@function
ins_del_lines:                          # @ins_del_lines
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 160(%rdi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
.LBB12_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ins_del_lines, .Lfunc_end12-ins_del_lines
	.cfi_endproc

	.globl	decode_live_terminal
	.align	16, 0x90
	.type	decode_live_terminal,@function
decode_live_terminal:                   # @decode_live_terminal
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
	movq	-8(%rbp), %rdi
	callq	decode_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$908, %edi              # imm = 0x38C
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	decode_live_terminal, .Lfunc_end13-decode_live_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	decode_terminal,@function
decode_terminal:                        # @decode_terminal
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
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -8(%rbp)
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	TERMINALP
	testb	$1, %al
	jne	.LBB14_3
	jmp	.LBB14_4
.LBB14_3:                               # %cond.true
	movq	-8(%rbp), %rdi
	callq	XTERMINAL
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB14_8
.LBB14_4:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB14_5
	jmp	.LBB14_6
.LBB14_5:                               # %cond.true.4
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB14_7
.LBB14_7:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB14_8:                               # %cond.end.7
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_11
# BB#9:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB14_11
# BB#10:                                # %cond.true.10
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_12
.LBB14_11:                              # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_12
.LBB14_12:                              # %cond.end.12
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	decode_terminal, .Lfunc_end14-decode_terminal
	.cfi_endproc

	.globl	decode_tty_terminal
	.align	16, 0x90
	.type	decode_tty_terminal,@function
decode_tty_terminal:                    # @decode_tty_terminal
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
	movq	-8(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 56(%rax)
	je	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$3, 56(%rax)
	jne	.LBB15_3
.LBB15_2:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB15_4
.LBB15_4:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	decode_tty_terminal, .Lfunc_end15-decode_tty_terminal
	.cfi_endproc

	.globl	get_named_terminal
	.align	16, 0x90
	.type	get_named_terminal,@function
get_named_terminal:                     # @get_named_terminal
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	terminal_list, %rdi
	movq	%rdi, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$1, 56(%rax)
	je	.LBB16_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$3, 56(%rax)
	jne	.LBB16_9
.LBB16_4:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_9
# BB#5:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$1, 56(%rax)
	je	.LBB16_7
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$3, 56(%rax)
	jne	.LBB16_8
.LBB16_7:                               # %lor.lhs.false.11
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_9
.LBB16_8:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_12
.LBB16_9:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_10
.LBB16_10:                              # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_11:                              # %for.end
	movq	$0, -8(%rbp)
.LBB16_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	get_named_terminal, .Lfunc_end16-get_named_terminal
	.cfi_endproc

	.globl	create_terminal
	.align	16, 0x90
	.type	create_terminal,@function
create_terminal:                        # @create_terminal
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
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	allocate_terminal
	movl	$616, %edi              # imm = 0x268
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, -24(%rbp)
	movq	terminal_list, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, terminal_list
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 112(%rsi)
	movl	next_terminal_id, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, next_terminal_id
	movq	-24(%rbp), %rax
	movl	%ecx, 48(%rax)
	callq	xmalloc
	movl	$616, %ecx              # imm = 0x268
	movl	%ecx, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, 104(%rsi)
	callq	xmalloc
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, 96(%rsi)
	callq	intern
	movq	%rax, %rdi
	callq	find_symbol_value
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_3
# BB#1:                                 # %lor.lhs.false
	movl	$957, %edi              # imm = 0x3BD
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_3
# BB#2:                                 # %lor.lhs.false.12
	movq	-40(%rbp), %rdi
	callq	Fcoding_system_p
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_4
.LBB17_3:                               # %if.then
	movl	$702, %edi              # imm = 0x2BE
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB17_4:                               # %if.end
	movabsq	$.L.str.1, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	find_symbol_value
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_7
# BB#5:                                 # %lor.lhs.false.21
	movl	$957, %edi              # imm = 0x3BD
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_7
# BB#6:                                 # %lor.lhs.false.24
	movq	-32(%rbp), %rdi
	callq	Fcoding_system_p
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_8
.LBB17_7:                               # %if.then.28
	movl	$958, %edi              # imm = 0x3BE
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB17_8:                               # %if.end.30
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	104(%rax), %rsi
	callq	setup_coding_system
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rsi
	callq	setup_coding_system
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	create_terminal, .Lfunc_end17-create_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_terminal,@function
allocate_terminal:                      # @allocate_terminal
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
	movl	$45, %eax
	movl	$4, %esi
	movl	$8, %ecx
	movl	%eax, %edi
	movl	%eax, %edx
	callq	allocate_pseudovector
	popq	%rbp
	retq
.Lfunc_end18:
	.size	allocate_terminal, .Lfunc_end18-allocate_terminal
	.cfi_endproc

	.globl	delete_terminal
	.align	16, 0x90
	.type	delete_terminal,@function
delete_terminal:                        # @delete_terminal
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 64(%rdi)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_20
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	Vframe_list, %rax
	movq	%rax, -24(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB19_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB19_3 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB19_5:                               # %land.end
                                        #   in Loop: Header=BB19_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_6
	jmp	.LBB19_11
.LBB19_6:                               # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB19_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB19_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	$704, %edi              # imm = 0x2C0
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB19_9:                               # %if.end.13
                                        #   in Loop: Header=BB19_3 Depth=1
	jmp	.LBB19_10
.LBB19_10:                              # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB19_3
.LBB19_11:                              # %for.end
	movabsq	$terminal_list, %rax
	movq	%rax, -16(%rbp)
.LBB19_12:                              # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB19_17
# BB#13:                                # %for.body.18
                                        #   in Loop: Header=BB19_12 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	callq	emacs_abort
.LBB19_15:                              # %if.end.21
                                        #   in Loop: Header=BB19_12 Depth=1
	jmp	.LBB19_16
.LBB19_16:                              # %for.inc.22
                                        #   in Loop: Header=BB19_12 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$40, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB19_12
.LBB19_17:                              # %for.end.23
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB19_20
# BB#18:                                # %land.lhs.true.28
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	168(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 168(%rax)
	cmpl	$0, %ecx
	jne	.LBB19_20
# BB#19:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	delete_kboard
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
.LBB19_20:                              # %if.end.35
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	delete_terminal, .Lfunc_end19-delete_terminal
	.cfi_endproc

	.globl	Fdelete_terminal
	.align	16, 0x90
	.type	Fdelete_terminal,@function
Fdelete_terminal:                       # @Fdelete_terminal
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_terminal
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_26
.LBB20_2:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_16
# BB#3:                                 # %if.then.3
	movq	terminal_list, %rax
	movq	%rax, -40(%rbp)
.LBB20_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB20_11
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB20_4 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	movb	%al, -50(%rbp)          # 1-byte Spill
	je	.LBB20_10
# BB#6:                                 # %lor.rhs
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$1, 56(%rax)
	je	.LBB20_8
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB20_4 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	cmpl	$3, 56(%rcx)
	movb	%al, -51(%rbp)          # 1-byte Spill
	jne	.LBB20_9
.LBB20_8:                               # %lor.rhs.9
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	$0, 24(%rax)
	setne	%cl
	movb	%cl, -51(%rbp)          # 1-byte Spill
.LBB20_9:                               # %lor.end
                                        #   in Loop: Header=BB20_4 Depth=1
	movb	-51(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB20_10:                              # %lor.end.11
                                        #   in Loop: Header=BB20_4 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB20_11:                              # %land.end
                                        #   in Loop: Header=BB20_4 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_12
	jmp	.LBB20_13
.LBB20_12:                              # %while.body
                                        #   in Loop: Header=BB20_4 Depth=1
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_4
.LBB20_13:                              # %while.end
	cmpq	$0, -40(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.13
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB20_15:                              # %if.end.14
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.15
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_18
# BB#17:                                # %if.then.18
	jmp	.LBB20_22
.LBB20_18:                              # %if.else
	movl	$704, %edi              # imm = 0x2C0
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_20
# BB#19:                                # %if.then.21
	movl	$821, %edi              # imm = 0x335
	callq	builtin_lisp_symbol
	movl	$337, %edi              # imm = 0x151
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list3
	movq	pending_funcalls, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, pending_funcalls
	jmp	.LBB20_21
.LBB20_20:                              # %if.else.26
	movl	$821, %edi              # imm = 0x335
	callq	builtin_lisp_symbol
	movl	$337, %edi              # imm = 0x151
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	safe_call2
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB20_21:                              # %if.end.30
	jmp	.LBB20_22
.LBB20_22:                              # %if.end.31
	movq	-32(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB20_24
# BB#23:                                # %if.then.33
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	jmp	.LBB20_25
.LBB20_24:                              # %if.else.35
	movq	-32(%rbp), %rdi
	callq	delete_terminal
.LBB20_25:                              # %if.end.36
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB20_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fdelete_terminal, .Lfunc_end20-Fdelete_terminal
	.cfi_endproc

	.globl	Fframe_terminal
	.align	16, 0x90
	.type	Fframe_terminal,@function
Fframe_terminal:                        # @Fframe_terminal
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_live_frame
	movq	376(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fframe_terminal, .Lfunc_end21-Fframe_terminal
	.cfi_endproc

	.globl	Fterminal_live_p
	.align	16, 0x90
	.type	Fterminal_live_p,@function
Fterminal_live_p:                       # @Fterminal_live_p
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_terminal
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_9
.LBB22_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	ja	.LBB22_8
# BB#10:                                # %if.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI22_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB22_3:                               # %sw.bb
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_9
.LBB22_4:                               # %sw.bb.3
	movl	$1045, %edi             # imm = 0x415
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_9
.LBB22_5:                               # %sw.bb.5
	movl	$1009, %edi             # imm = 0x3F1
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_9
.LBB22_6:                               # %sw.bb.7
	movl	$744, %edi              # imm = 0x2E8
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_9
.LBB22_7:                               # %sw.bb.9
	movl	$708, %edi              # imm = 0x2C4
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB22_9
.LBB22_8:                               # %sw.default
	callq	emacs_abort
.LBB22_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fterminal_live_p, .Lfunc_end22-Fterminal_live_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_3
	.quad	.LBB22_3
	.quad	.LBB22_4
	.quad	.LBB22_6
	.quad	.LBB22_5
	.quad	.LBB22_7

	.text
	.globl	Fterminal_list
	.align	16, 0x90
	.type	Fterminal_list,@function
Fterminal_list:                         # @Fterminal_list
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	terminal_list, %rax
	movq	%rax, -24(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fterminal_list, .Lfunc_end23-Fterminal_list
	.cfi_endproc

	.globl	Fterminal_name
	.align	16, 0x90
	.type	Fterminal_name,@function
Fterminal_name:                         # @Fterminal_name
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB24_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	build_string
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB24_3
.LBB24_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB24_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fterminal_name, .Lfunc_end24-Fterminal_name
	.cfi_endproc

	.globl	Fterminal_parameters
	.align	16, 0x90
	.type	Fterminal_parameters,@function
Fterminal_parameters:                   # @Fterminal_parameters
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_terminal
	movq	8(%rax), %rdi
	callq	Fcopy_alist
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fterminal_parameters, .Lfunc_end25-Fterminal_parameters
	.cfi_endproc

	.globl	Fterminal_parameter
	.align	16, 0x90
	.type	Fterminal_parameter,@function
Fterminal_parameter:                    # @Fterminal_parameter
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB26_2
# BB#1:                                 # %cond.true
	jmp	.LBB26_3
.LBB26_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB26_3:                               # %cond.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	decode_live_terminal
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fterminal_parameter, .Lfunc_end26-Fterminal_parameter
	.cfi_endproc

	.globl	Fset_terminal_parameter
	.align	16, 0x90
	.type	Fset_terminal_parameter,@function
Fset_terminal_parameter:                # @Fset_terminal_parameter
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_terminal
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	store_terminal_param
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fset_terminal_parameter, .Lfunc_end27-Fset_terminal_parameter
	.cfi_endproc

	.align	16, 0x90
	.type	store_terminal_param,@function
store_terminal_param:                   # @store_terminal_param
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	tset_param_alist
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fsetcdr
	movq	-48(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB28_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	store_terminal_param, .Lfunc_end28-store_terminal_param
	.cfi_endproc

	.globl	terminal_glyph_code
	.align	16, 0x90
	.type	terminal_glyph_code,@function
terminal_glyph_code:                    # @terminal_glyph_code
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$1, 56(%rdi)
	jne	.LBB29_7
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$4194303, -20(%rbp)     # imm = 0x3FFFFF
	jne	.LBB29_4
.LBB29_3:                               # %if.then.3
	movq	-16(%rbp), %rdi
	callq	calculate_glyph_code_table
.LBB29_4:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_6
# BB#5:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	char_table_ref
	movq	%rax, -8(%rbp)
	jmp	.LBB29_8
.LBB29_6:                               # %if.end.10
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB29_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	terminal_glyph_code, .Lfunc_end29-terminal_glyph_code
	.cfi_endproc

	.align	16, 0x90
	.type	calculate_glyph_code_table,@function
calculate_glyph_code_table:             # @calculate_glyph_code_table
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
	subq	$4080, %rsp             # imm = 0xFF0
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	leaq	-4032(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movl	$1000, -20(%rbp)        # imm = 0x3E8
	movq	%rcx, -4040(%rbp)
	movq	$0, -4048(%rbp)
.LBB30_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	32(%rax), %rdi
	callq	fileno
	movl	$19302, %ecx            # imm = 0x4B66
	movl	%ecx, %esi
	leaq	-4072(%rbp), %rdx
	movl	%eax, -4052(%rbp)
	movl	-20(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -4072(%rbp)
	movq	-4040(%rbp), %rdi
	movq	%rdi, -4064(%rbp)
	movl	-4052(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jne	.LBB30_7
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	$-2, %rsi
	movq	%rax, %rdi
	callq	Fmake_char_table
	movq	%rax, -16(%rbp)
	movl	$0, -4076(%rbp)
.LBB30_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4076(%rbp), %eax
	movzwl	-4072(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB30_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB30_3 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-4076(%rbp), %rax
	movq	-4040(%rbp), %rcx
	movzwl	(%rcx,%rax,4), %esi
	movslq	-4076(%rbp), %rax
	movq	-4040(%rbp), %rcx
	movzwl	2(%rcx,%rax,4), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	char_table_set
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	-4076(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4076(%rbp)
	jmp	.LBB30_3
.LBB30_6:                               # %for.end
	jmp	.LBB30_10
.LBB30_7:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	__errno_location
	cmpl	$12, (%rax)
	je	.LBB30_9
# BB#8:                                 # %if.then.19
	jmp	.LBB30_10
.LBB30_9:                               # %if.end.20
                                        #   in Loop: Header=BB30_1 Depth=1
	movzwl	-4072(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-4048(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, -4048(%rbp)
	movq	%rax, -4040(%rbp)
	jmp	.LBB30_1
.LBB30_10:                              # %while.end
	movq	-4048(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	addq	$4080, %rsp             # imm = 0xFF0
	popq	%rbp
	retq
.Lfunc_end30:
	.size	calculate_glyph_code_table, .Lfunc_end30-calculate_glyph_code_table
	.cfi_endproc

	.globl	init_initial_terminal
	.align	16, 0x90
	.type	init_initial_terminal,@function
init_initial_terminal:                  # @init_initial_terminal
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
	testb	$1, initialized
	jne	.LBB31_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, terminal_list
	jne	.LBB31_3
# BB#2:                                 # %lor.lhs.false.2
	cmpq	$0, tty_list
	je	.LBB31_4
.LBB31_3:                               # %if.then
	callq	emacs_abort
.LBB31_4:                               # %if.end
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	create_terminal
	movabsq	$.L.str.3, %rdi
	movq	%rax, initial_terminal
	callq	xstrdup
	movabsq	$initial_free_frame_resources, %rsi
	movabsq	$delete_initial_terminal, %rdi
	movq	initial_terminal, %rcx
	movq	%rax, 64(%rcx)
	movq	initial_kboard, %rax
	movq	initial_terminal, %rcx
	movq	%rax, 72(%rcx)
	movq	initial_terminal, %rax
	movq	%rdi, 360(%rax)
	movq	initial_terminal, %rax
	movq	%rsi, 352(%rax)
	movq	initial_terminal, %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	init_initial_terminal, .Lfunc_end31-init_initial_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	delete_initial_terminal,@function
delete_initial_terminal:                # @delete_initial_terminal
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
	movq	-8(%rbp), %rdi
	cmpq	initial_terminal, %rdi
	je	.LBB32_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB32_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	delete_terminal
	movq	$0, initial_terminal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	delete_initial_terminal, .Lfunc_end32-delete_initial_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	initial_free_frame_resources,@function
initial_free_frame_resources:           # @initial_free_frame_resources
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
	callq	free_frame_faces
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	initial_free_frame_resources, .Lfunc_end33-initial_free_frame_resources
	.cfi_endproc

	.globl	syms_of_terminal
	.align	16, 0x90
	.type	syms_of_terminal,@function
syms_of_terminal:                       # @syms_of_terminal
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
	jmp	.LBB34_1
.LBB34_1:                               # %do.body
	movabsq	$syms_of_terminal.o_fwd, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$2056, %rax             # imm = 0x808
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2056
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_terminal.o_fwd.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$552, %rax              # imm = 0x228
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sdelete_terminal, %rcx
	movq	%rax, globals+552
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sframe_terminal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sterminal_live_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sterminal_list, %rdi
	callq	defsubr
	movabsq	$Sterminal_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sterminal_parameters, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sterminal_parameter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_terminal_parameter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$.L.str.7, %rdi
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	syms_of_terminal, .Lfunc_end34-syms_of_terminal
	.cfi_endproc

	.align	16, 0x90
	.type	tset_param_alist,@function
tset_param_alist:                       # @tset_param_alist
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	tset_param_alist, .Lfunc_end35-tset_param_alist
	.cfi_endproc

	.type	terminal_list,@object   # @terminal_list
	.comm	terminal_list,8,8
	.type	next_terminal_id,@object # @next_terminal_id
	.local	next_terminal_id
	.comm	next_terminal_id,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default-keyboard-coding-system"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"default-terminal-coding-system"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Attempt to delete the sole active display terminal"
	.size	.L.str.2, 51

	.type	initial_terminal,@object # @initial_terminal
	.comm	initial_terminal,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"initial_terminal"
	.size	.L.str.3, 17

	.type	syms_of_terminal.o_fwd,@object # @syms_of_terminal.o_fwd
	.local	syms_of_terminal.o_fwd
	.comm	syms_of_terminal.o_fwd,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ring-bell-function"
	.size	.L.str.4, 19

	.type	syms_of_terminal.o_fwd.5,@object # @syms_of_terminal.o_fwd.5
	.local	syms_of_terminal.o_fwd.5
	.comm	syms_of_terminal.o_fwd.5,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"delete-terminal-functions"
	.size	.L.str.6, 26

	.type	Sterminal_list,@object  # @Sterminal_list
	.data
	.align	8
Sterminal_list:
	.quad	167772160               # 0xa000000
	.quad	Fterminal_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Sterminal_list, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"multi-tty"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"delete-terminal"
	.size	.L.str.8, 16

	.type	Sdelete_terminal,@object # @Sdelete_terminal
	.data
	.align	8
Sdelete_terminal:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_terminal
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sdelete_terminal, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"frame-terminal"
	.size	.L.str.9, 15

	.type	Sframe_terminal,@object # @Sframe_terminal
	.data
	.align	8
Sframe_terminal:
	.quad	167772160               # 0xa000000
	.quad	Fframe_terminal
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sframe_terminal, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"terminal-live-p"
	.size	.L.str.10, 16

	.type	Sterminal_live_p,@object # @Sterminal_live_p
	.data
	.align	8
Sterminal_live_p:
	.quad	167772160               # 0xa000000
	.quad	Fterminal_live_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sterminal_live_p, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"terminal-list"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"terminal-name"
	.size	.L.str.12, 14

	.type	Sterminal_name,@object  # @Sterminal_name
	.data
	.align	8
Sterminal_name:
	.quad	167772160               # 0xa000000
	.quad	Fterminal_name
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Sterminal_name, 48

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"terminal-parameters"
	.size	.L.str.13, 20

	.type	Sterminal_parameters,@object # @Sterminal_parameters
	.data
	.align	8
Sterminal_parameters:
	.quad	167772160               # 0xa000000
	.quad	Fterminal_parameters
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Sterminal_parameters, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"terminal-parameter"
	.size	.L.str.14, 19

	.type	Sterminal_parameter,@object # @Sterminal_parameter
	.data
	.align	8
Sterminal_parameter:
	.quad	167772160               # 0xa000000
	.quad	Fterminal_parameter
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Sterminal_parameter, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"set-terminal-parameter"
	.size	.L.str.15, 23

	.type	Sset_terminal_parameter,@object # @Sset_terminal_parameter
	.data
	.align	8
Sset_terminal_parameter:
	.quad	167772160               # 0xa000000
	.quad	Fset_terminal_parameter
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sset_terminal_parameter, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
