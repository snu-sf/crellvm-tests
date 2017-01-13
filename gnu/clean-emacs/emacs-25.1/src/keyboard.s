	.text
	.file	"keyboard.bc"
	.globl	cancel_echoing
	.align	16, 0x90
	.type	cancel_echoing,@function
cancel_echoing:                         # @cancel_echoing
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
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 185(%rax)
	movq	current_kboard, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_prompt
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_string
	xorl	%edi, %edi
	movq	$0, ok_to_echo_at_next_pause
	movq	$0, echo_kboard
	callq	builtin_lisp_symbol
	movq	%rax, echo_message_buffer
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cancel_echoing, .Lfunc_end0-cancel_echoing
	.cfi_endproc

	.align	16, 0x90
	.type	kset_echo_prompt,@function
kset_echo_prompt:                       # @kset_echo_prompt
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 192(%rdi)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	kset_echo_prompt, .Lfunc_end1-kset_echo_prompt
	.cfi_endproc

	.align	16, 0x90
	.type	kset_echo_string,@function
kset_echo_string:                       # @kset_echo_string
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	kset_echo_string, .Lfunc_end2-kset_echo_string
	.cfi_endproc

	.globl	recursive_edit_1
	.align	16, 0x90
	.type	recursive_edit_1,@function
recursive_edit_1:                       # @recursive_edit_1
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
	subq	$80, %rsp
	callq	SPECPDL_INDEX
	movq	%rax, -8(%rbp)
	cmpq	$0, command_loop_level
	jle	.LBB3_2
# BB#1:                                 # %if.then
	movl	$871, %edi              # imm = 0x367
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$870, %edi              # imm = 0x366
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB3_2:                                # %if.end
	callq	cancel_hourglass
	movl	$548, %edi              # imm = 0x224
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$967, %edi              # imm = 0x3C7
	movb	$0, redisplaying_p
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	callq	command_loop
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_4
# BB#3:                                 # %if.then.12
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB3_4:                                # %if.end.16
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_6
.LBB3_5:                                # %if.then.18
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB3_6:                                # %if.end.20
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	recursive_edit_1, .Lfunc_end3-recursive_edit_1
	.cfi_endproc

	.align	16, 0x90
	.type	command_loop,@function
command_loop:                           # @command_loop
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
	subq	$64, %rsp
	movabsq	$return_to_command_loop, %rdi
	movl	$1, %esi
	callq	__sigsetjmp
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	callq	init_eval
	movq	recover_top_level_message, %rax
	movq	%rax, globals+1168
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	regular_top_level_message, %rax
	movq	%rax, globals+1168
.LBB4_3:                                # %if.end
	cmpq	$0, command_loop_level
	jg	.LBB4_5
# BB#4:                                 # %lor.lhs.false
	cmpq	$0, minibuf_level
	jle	.LBB4_6
.LBB4_5:                                # %if.then.3
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$command_loop_2, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_catch
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, executing_kbd_macro
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB4_6:                                # %if.else.8
	jmp	.LBB4_7
.LBB4_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$930, %edi              # imm = 0x3A2
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$top_level_1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_catch
	movl	$930, %edi              # imm = 0x3A2
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$command_loop_2, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_catch
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, executing_kbd_macro
	testb	$1, noninteractive
	je	.LBB4_9
# BB#8:                                 # %if.then.16
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_9:                                # %if.end.18
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_7
.Lfunc_end4:
	.size	command_loop, .Lfunc_end4-command_loop
	.cfi_endproc

	.globl	record_auto_save
	.align	16, 0x90
	.type	record_auto_save,@function
record_auto_save:                       # @record_auto_save
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
	movq	globals+3208, %rax
	movq	%rax, last_auto_save
	popq	%rbp
	retq
.Lfunc_end5:
	.size	record_auto_save, .Lfunc_end5-record_auto_save
	.cfi_endproc

	.globl	Frecursive_edit
	.align	16, 0x90
	.type	Frecursive_edit,@function
Frecursive_edit:                        # @Frecursive_edit
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
	subq	$64, %rsp
	callq	SPECPDL_INDEX
	movq	%rax, -16(%rbp)
	callq	input_blocked_p
	testb	$1, %al
	jne	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_13
.LBB6_2:                                # %if.end
	cmpq	$0, command_loop_level
	jl	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	selected_window, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB6_5
# BB#4:                                 # %if.then.6
	callq	Fcurrent_buffer
	movq	%rax, -24(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB6_6:                                # %if.end.9
	movabsq	$recursive_edit_unwind, %rdi
	movq	command_loop_level, %rax
	addq	$1, %rax
	movq	%rax, command_loop_level
	movl	$17, update_mode_lines
	movq	-24(%rbp), %rsi
	callq	record_unwind_protect
	cmpq	$0, command_loop_level
	jle	.LBB6_12
# BB#7:                                 # %if.then.11
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB6_8
	jmp	.LBB6_10
.LBB6_8:                                # %land.lhs.true.13
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB6_10
# BB#9:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false
	callq	emacs_abort
.LBB6_11:                               # %cond.end
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	temporarily_switch_to_single_kboard
.LBB6_12:                               # %if.end.16
	callq	recursive_edit_1
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Frecursive_edit, .Lfunc_end6-Frecursive_edit
	.cfi_endproc

	.align	16, 0x90
	.type	recursive_edit_unwind,@function
recursive_edit_unwind:                  # @recursive_edit_unwind
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
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB7_1
	jmp	.LBB7_2
.LBB7_1:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB7_2:                                # %if.end
	movq	command_loop_level, %rax
	addq	$-1, %rax
	movq	%rax, command_loop_level
	movl	$18, update_mode_lines
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	recursive_edit_unwind, .Lfunc_end7-recursive_edit_unwind
	.cfi_endproc

	.globl	temporarily_switch_to_single_kboard
	.align	16, 0x90
	.type	temporarily_switch_to_single_kboard,@function
temporarily_switch_to_single_kboard:    # @temporarily_switch_to_single_kboard
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
	movb	single_kboard, %al
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB8_6
# BB#1:                                 # %if.then
	cmpq	$0, -8(%rbp)
	je	.LBB8_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	cmpq	current_kboard, %rax
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movl	48(%rax), %esi
	movb	$0, %al
	callq	error
.LBB8_4:                                # %if.else
	movq	current_kboard, %rdi
	callq	push_kboard
# BB#5:                                 # %if.end
	jmp	.LBB8_9
.LBB8_6:                                # %if.else.5
	cmpq	$0, -8(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, current_kboard
.LBB8_8:                                # %if.end.10
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.11
	movabsq	$restore_kboard_configuration, %rdi
	movb	$1, single_kboard
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	record_unwind_protect_int
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	temporarily_switch_to_single_kboard, .Lfunc_end8-temporarily_switch_to_single_kboard
	.cfi_endproc

	.globl	not_single_kboard_state
	.align	16, 0x90
	.type	not_single_kboard_state,@function
not_single_kboard_state:                # @not_single_kboard_state
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	current_kboard, %rdi
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movb	$0, single_kboard
.LBB9_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	not_single_kboard_state, .Lfunc_end9-not_single_kboard_state
	.cfi_endproc

	.globl	push_kboard
	.align	16, 0x90
	.type	push_kboard,@function
push_kboard:                            # @push_kboard
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
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	kboard_stack, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	current_kboard, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, kboard_stack
	movq	-8(%rbp), %rax
	movq	%rax, current_kboard
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	push_kboard, .Lfunc_end10-push_kboard
	.cfi_endproc

	.globl	pop_kboard
	.align	16, 0x90
	.type	pop_kboard,@function
pop_kboard:                             # @pop_kboard
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
	subq	$32, %rsp
	movq	kboard_stack, %rax
	movq	%rax, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	terminal_list, %rax
	movq	%rax, -8(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB11_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, current_kboard
	movb	$1, -17(%rbp)
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	testb	$1, -17(%rbp)
	jne	.LBB11_12
# BB#7:                                 # %if.then.4
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB11_8
	jmp	.LBB11_10
.LBB11_8:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB11_10
# BB#9:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false
	callq	emacs_abort
.LBB11_11:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, current_kboard
	movb	$0, single_kboard
.LBB11_12:                              # %if.end.9
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, kboard_stack
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pop_kboard, .Lfunc_end11-pop_kboard
	.cfi_endproc

	.align	16, 0x90
	.type	restore_kboard_configuration,@function
restore_kboard_configuration:           # @restore_kboard_configuration
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
	cmpl	$0, -4(%rbp)
	setne	%al
	andb	$1, %al
	movb	%al, single_kboard
	cmpl	$0, -4(%rbp)
	je	.LBB12_5
# BB#1:                                 # %if.then
	movq	current_kboard, %rax
	movq	%rax, -16(%rbp)
	callq	pop_kboard
	testb	$1, single_kboard
	je	.LBB12_4
# BB#2:                                 # %land.lhs.true
	movq	current_kboard, %rax
	cmpq	-16(%rbp), %rax
	je	.LBB12_4
# BB#3:                                 # %if.then.3
	callq	emacs_abort
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	restore_kboard_configuration, .Lfunc_end12-restore_kboard_configuration
	.cfi_endproc

	.globl	cmd_error_internal
	.align	16, 0x90
	.type	cmd_error_internal,@function
cmd_error_internal:                     # @cmd_error_internal
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
	subq	$64, %rsp
	movl	$782, %eax              # imm = 0x30E
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB13_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vsignaling_function
.LBB13_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+1928
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1104
	movq	globals+320, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_7
# BB#3:                                 # %if.then.6
	movq	globals+320, %rdi
	movq	-8(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB13_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	build_string
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
	movq	empty_unibyte_string, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB13_6:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	Vsignaling_function, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	call3
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB13_7:                               # %if.end.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vsignaling_function
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cmd_error_internal, .Lfunc_end13-cmd_error_internal
	.cfi_endproc

	.globl	Fcommand_error_default_function
	.align	16, 0x90
	.type	Fcommand_error_default_function,@function
Fcommand_error_default_function:        # @Fcommand_error_default_function
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_3
.LBB14_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB14_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB14_4
.LBB14_3:                               # %cond.false
	callq	emacs_abort
.LBB14_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB14_8
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, daemon_pipe+4
	jne	.LBB14_7
# BB#6:                                 # %land.lhs.true.3
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB14_8
.LBB14_7:                               # %lor.lhs.false.8
	testb	$1, noninteractive
	je	.LBB14_9
.LBB14_8:                               # %if.then
	movl	$394, %edi              # imm = 0x18A
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	print_error_message
	movl	$394, %edi              # imm = 0x18A
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fterpri
	movq	$-2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Fkill_emacs
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB14_9:                               # %if.else
	movl	$1, %edi
	xorl	%esi, %esi
	callq	clear_message
	callq	Fdiscard_input
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	message_log_maybe_newline
	callq	bitch_at_user
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	print_error_message
# BB#10:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fcommand_error_default_function, .Lfunc_end14-Fcommand_error_default_function
	.cfi_endproc

	.globl	Fdiscard_input
	.align	16, 0x90
	.type	Fdiscard_input,@function
Fdiscard_input:                         # @Fdiscard_input
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
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_2
# BB#1:                                 # %if.then
	callq	Fcancel_kbd_macro_events
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	end_kbd_macro
.LBB15_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2520
	callq	discard_tty_input
	xorl	%edi, %edi
	movq	kbd_store_ptr, %rax
	movq	%rax, kbd_fetch_ptr
	movb	$0, input_pending
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fdiscard_input, .Lfunc_end15-Fdiscard_input
	.cfi_endproc

	.globl	Ftop_level
	.align	16, 0x90
	.type	Ftop_level,@function
Ftop_level:                             # @Ftop_level
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
	testb	$1, globals+3378
	je	.LBB16_2
# BB#1:                                 # %if.then
	callq	cancel_hourglass
.LBB16_2:                               # %if.end
	callq	totally_unblock_input
	movl	$930, %edi              # imm = 0x3A2
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -24(%rbp)         # 8-byte Spill
.Lfunc_end16:
	.size	Ftop_level, .Lfunc_end16-Ftop_level
	.cfi_endproc

	.globl	totally_unblock_input
	.align	16, 0x90
	.type	totally_unblock_input,@function
totally_unblock_input:                  # @totally_unblock_input
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
	xorl	%edi, %edi
	callq	unblock_input_to
	popq	%rbp
	retq
.Lfunc_end17:
	.size	totally_unblock_input, .Lfunc_end17-totally_unblock_input
	.cfi_endproc

	.globl	Fexit_recursive_edit
	.align	16, 0x90
	.type	Fexit_recursive_edit,@function
Fexit_recursive_edit:                   # @Fexit_recursive_edit
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
	cmpq	$0, command_loop_level
	jg	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, minibuf_level
	jle	.LBB18_3
.LBB18_2:                               # %if.then
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB18_3:                               # %if.end
	movabsq	$.L.str.1, %rdi
	callq	user_error
.Lfunc_end18:
	.size	Fexit_recursive_edit, .Lfunc_end18-Fexit_recursive_edit
	.cfi_endproc

	.align	16, 0x90
	.type	user_error,@function
user_error:                             # @user_error
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
	movl	$981, %eax              # imm = 0x3D5
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.Lfunc_end19:
	.size	user_error, .Lfunc_end19-user_error
	.cfi_endproc

	.globl	Fabort_recursive_edit
	.align	16, 0x90
	.type	Fabort_recursive_edit,@function
Fabort_recursive_edit:                  # @Fabort_recursive_edit
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
	cmpq	$0, command_loop_level
	jg	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, minibuf_level
	jle	.LBB20_3
.LBB20_2:                               # %if.then
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB20_3:                               # %if.end
	movabsq	$.L.str.1, %rdi
	callq	user_error
.Lfunc_end20:
	.size	Fabort_recursive_edit, .Lfunc_end20-Fabort_recursive_edit
	.cfi_endproc

	.globl	Ftrack_mouse
	.align	16, 0x90
	.type	Ftrack_mouse,@function
Ftrack_mouse:                           # @Ftrack_mouse
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
	callq	SPECPDL_INDEX
	movabsq	$tracking_off, %rdi
	movq	%rax, -16(%rbp)
	movq	globals+2944, %rsi
	callq	record_unwind_protect
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2944
	movq	-8(%rbp), %rdi
	callq	call0
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	unbind_to
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Ftrack_mouse, .Lfunc_end21-Ftrack_mouse
	.cfi_endproc

	.align	16, 0x90
	.type	tracking_off,@function
tracking_off:                           # @tracking_off
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, globals+2944
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_4
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	readable_events
	testb	$1, %al
	jne	.LBB22_3
# BB#2:                                 # %if.then.2
	movl	$6, %edi
	callq	redisplay_preserve_echo_area
	movl	$1, %edi
	callq	get_input_pending
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB22_3:                               # %if.end
	jmp	.LBB22_4
.LBB22_4:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	tracking_off, .Lfunc_end22-tracking_off
	.cfi_endproc

	.globl	command_loop_1
	.align	16, 0x90
	.type	command_loop_1,@function
command_loop_1:                         # @command_loop_1
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
	subq	$784, %rsp              # imm = 0x310
	xorl	%edi, %edi
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	current_kboard, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_prefix_arg
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_prefix_arg
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+416
	movb	$0, waiting_for_input
	callq	cancel_echoing
	xorl	%edi, %edi
	movq	$0, this_command_key_count
	movq	$0, this_single_command_key_start
	movq	globals+1392, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB23_11
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	globals+1752, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_4
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_4
# BB#3:                                 # %if.then.8
	movl	$762, %edi              # imm = 0x2FA
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
.LBB23_4:                               # %if.end
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_6
# BB#5:                                 # %if.then.12
	callq	resize_echo_area_exactly
.LBB23_6:                               # %if.end.13
	xorl	%edi, %edi
	movq	globals+536, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_8
# BB#7:                                 # %if.then.16
	movl	$329, %edi              # imm = 0x149
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
.LBB23_8:                               # %if.end.18
	xorl	%edi, %edi
	movq	globals+520, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_10
# BB#9:                                 # %if.then.21
	movl	$326, %edi              # imm = 0x146
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
.LBB23_10:                              # %if.end.23
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.24
	movq	current_kboard, %rdi
	movq	globals+2344, %rsi
	callq	kset_last_command
	movq	current_kboard, %rdi
	movq	globals+1984, %rsi
	callq	kset_real_last_command
	movq	globals+3000, %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	je	.LBB23_13
# BB#12:                                # %if.then.27
	movq	current_kboard, %rdi
	movq	globals+1984, %rsi
	callq	kset_last_repeatable_command
.LBB23_13:                              # %if.end.28
	jmp	.LBB23_14
.LBB23_14:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_17 Depth 2
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB23_16
# BB#15:                                # %if.then.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB23_16:                              # %if.end.33
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
.LBB23_17:                              # %while.cond.36
                                        #   Parent Loop BB23_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, pending_malloc_warning
	je	.LBB23_19
# BB#18:                                # %while.body.37
                                        #   in Loop: Header=BB23_17 Depth=2
	callq	display_malloc_warning
	jmp	.LBB23_17
.LBB23_19:                              # %while.end
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+416
	movb	$0, ignore_mouse_drag_p
	cmpq	$0, minibuf_level
	je	.LBB23_26
# BB#20:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_26
# BB#21:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	minibuf_window, %rax
	cmpq	echo_area_window, %rax
	jne	.LBB23_26
# BB#22:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	globals+1536, %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB23_23
	jmp	.LBB23_26
.LBB23_23:                              # %if.then.50
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	SPECPDL_INDEX
	movl	$546, %edi              # imm = 0x222
	movq	%rax, -288(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%esi, %esi
	movl	$2, %edx
	movq	globals+1536, %rdi
	callq	sit_for
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	message1
	movl	$355, %edi              # imm = 0x163
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	xorl	%edi, %edi
	movq	-288(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	globals+1928, %rsi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB23_25
# BB#24:                                # %if.then.61
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movslq	quit_char, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	list1
	movq	%rax, globals+2520
.LBB23_25:                              # %if.end.65
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_26
.LBB23_26:                              # %if.end.66
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+1352, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_29
# BB#27:                                # %land.lhs.true.70
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$795, %edi              # imm = 0x31B
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_29
# BB#28:                                # %if.then.76
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$795, %edi              # imm = 0x31B
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB23_29:                              # %if.end.79
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2344
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1984
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2360
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	leaq	-272(%rbp), %rcx
	movq	%rax, globals+2352
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$30, %esi
	xorl	%ecx, %ecx
	movl	$1, %edi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -468(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movl	-468(%rbp), %r8d        # 4-byte Reload
	movl	-468(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	read_key_sequence
	movl	%eax, -276(%rbp)
	movq	selected_frame, %rdx
	subq	$5, %rdx
	cmpq	$0, 376(%rdx)
	jne	.LBB23_31
# BB#30:                                # %if.then.90
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB23_31:                              # %if.end.92
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	movq	globals+3200, %rax
	addq	$1, %rax
	movq	%rax, globals+3200
	cmpl	$0, -276(%rbp)
	jne	.LBB23_33
# BB#32:                                # %if.then.98
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$784, %rsp              # imm = 0x310
	popq	%rbp
	retq
.LBB23_33:                              # %if.end.100
                                        #   in Loop: Header=BB23_14 Depth=1
	cmpl	$-1, -276(%rbp)
	jne	.LBB23_35
# BB#34:                                # %if.then.103
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	cancel_echoing
	movq	$0, this_command_key_count
	movq	$0, this_single_command_key_start
	jmp	.LBB23_96
.LBB23_35:                              # %if.end.104
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-276(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-272(%rbp,%rcx,8), %rcx
	movq	%rcx, globals+3000
	movq	selected_window, %rdi
	callq	XWINDOW
	movw	468(%rax), %dx
	shrw	$5, %dx
	andw	$1, %dx
	testw	$1, %dx
	je	.LBB23_37
# BB#36:                                # %if.then.107
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	selected_window, %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$-33, %cx
	movw	%cx, 468(%rax)
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	720(%rax), %rax
	movq	$0, 96(%rax)
	movq	-296(%rbp), %rax
	movq	720(%rax), %rax
	movq	$0, 88(%rax)
.LBB23_37:                              # %if.end.116
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	read_key_sequence_cmd, %rax
	movq	%rax, -32(%rbp)
	movq	globals+688, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_49
# BB#38:                                # %if.then.120
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_48
# BB#39:                                # %if.then.124
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+688
# BB#40:                                # %do.body
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_43
# BB#41:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_43
# BB#42:                                # %if.then.133
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	process_quit_flag
	jmp	.LBB23_46
.LBB23_43:                              # %if.else
                                        #   in Loop: Header=BB23_14 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB23_45
# BB#44:                                # %if.then.135
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	process_pending_signals
.LBB23_45:                              # %if.end.136
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_46
.LBB23_46:                              # %if.end.137
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_47
.LBB23_47:                              # %do.end
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_48
.LBB23_48:                              # %if.end.138
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_49
.LBB23_49:                              # %if.end.139
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, last_point_position
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+560
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+416
	movq	-32(%rbp), %rax
	movq	%rax, globals+2360
	movq	read_key_sequence_remapped, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_51
# BB#50:                                # %if.then.147
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	read_key_sequence_remapped, %rax
	movq	%rax, -32(%rbp)
.LBB23_51:                              # %if.end.148
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	cmpl	$300, total_keys        # imm = 0x12C
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	total_keys, %ecx
	movl	%ecx, total_keys
	movq	recent_keys, %rdx
	movslq	recent_keys_index, %rsi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	recent_keys_index, %ecx
	addl	$1, %ecx
	movl	%ecx, recent_keys_index
	cmpl	$300, %ecx              # imm = 0x12C
	jl	.LBB23_53
# BB#52:                                # %if.then.158
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$0, recent_keys_index
.LBB23_53:                              # %if.end.159
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$767, %edi              # imm = 0x2FF
	movq	-32(%rbp), %rax
	movq	%rax, globals+2344
	movq	-32(%rbp), %rax
	movq	%rax, globals+1984
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	xorl	%edi, %edi
	movb	$0, -17(%rbp)
	movq	globals+2344, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_55
# BB#54:                                # %if.then.164
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$959, %edi              # imm = 0x3BF
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB23_61
.LBB23_55:                              # %if.else.167
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	SPECPDL_INDEX
	movq	%rax, -304(%rbp)
	testb	$1, globals+3378
	je	.LBB23_58
# BB#56:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_58
# BB#57:                                # %if.then.175
                                        #   in Loop: Header=BB23_14 Depth=1
	movabsq	$cancel_hourglass, %rdi
	callq	record_unwind_protect_void
	callq	start_hourglass
.LBB23_58:                              # %if.end.176
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$962, %edi              # imm = 0x3C2
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movl	$285, %edi              # imm = 0x11D
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, point_before_last_command_or_undo
	movq	current_buffer, %rcx
	movq	%rcx, buffer_before_last_command_or_undo
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	globals+2344, %rsi
	movq	%rax, %rdi
	callq	call1
	xorl	%edi, %edi
	movq	globals+688, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_60
# BB#59:                                # %if.then.186
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	-304(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB23_60:                              # %if.end.189
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_61
.LBB23_61:                              # %if.end.190
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_kboard, %rdi
	movq	globals+400, %rsi
	callq	kset_last_prefix_arg
	movl	$762, %edi              # imm = 0x2FA
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB23_63
# BB#62:                                # %if.then.195
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	resize_echo_area_exactly
.LBB23_63:                              # %if.end.196
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+536, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_65
# BB#64:                                # %if.then.200
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$329, %edi              # imm = 0x149
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
.LBB23_65:                              # %if.end.202
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$326, %edi              # imm = 0x146
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	movq	current_kboard, %rdi
	movq	globals+2344, %rsi
	callq	kset_last_command
	movq	current_kboard, %rdi
	movq	globals+1984, %rsi
	callq	kset_real_last_command
	movq	globals+3000, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB23_67
# BB#66:                                # %if.then.208
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_kboard, %rdi
	movq	globals+1984, %rsi
	callq	kset_last_repeatable_command
.LBB23_67:                              # %if.end.209
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	$0, this_command_key_count
	movq	$0, this_single_command_key_start
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB23_70
# BB#68:                                # %land.lhs.true.214
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$566, %edi              # imm = 0x236
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	xorl	%edi, %edi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_70
# BB#69:                                # %if.then.220
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 185(%rax)
	callq	echo_now
	jmp	.LBB23_71
.LBB23_70:                              # %if.else.224
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	cancel_echoing
.LBB23_71:                              # %if.end.225
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	304(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_95
# BB#72:                                # %land.lhs.true.229
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	Vrun_hooks, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_95
# BB#73:                                # %if.then.233
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$534, %edi              # imm = 0x216
	movq	globals+2440, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_75
# BB#74:                                # %if.then.237
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2440
	jmp	.LBB23_78
.LBB23_75:                              # %if.else.239
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$717, %edi              # imm = 0x2CD
	movq	globals+2440, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_77
# BB#76:                                # %if.then.243
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$534, %edi              # imm = 0x216
	callq	builtin_lisp_symbol
	movq	%rax, globals+2440
.LBB23_77:                              # %if.end.245
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_78
.LBB23_78:                              # %if.end.246
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+416, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_80
# BB#79:                                # %if.then.250
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$319, %edi              # imm = 0x13F
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB23_94
.LBB23_80:                              # %if.else.253
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fwindow_system
	xorl	%edi, %edi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_90
# BB#81:                                # %land.lhs.true.259
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_buffer, %rax
	movq	64(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB23_90
# BB#82:                                # %land.lhs.true.262
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$717, %edi              # imm = 0x2CD
	movq	globals+2104, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_84
# BB#83:                                # %cond.true
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	globals+2440, %rdi
	callq	CAR_SAFE
	movl	$717, %edi              # imm = 0x2CD
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_86
	jmp	.LBB23_90
.LBB23_84:                              # %cond.false
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+2104, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_90
# BB#85:                                # %land.lhs.true.273
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+2440, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_90
.LBB23_86:                              # %land.lhs.true.277
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	globals+2344, %rdi
	movq	globals+2128, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB23_90
# BB#87:                                # %if.then.282
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$801, %edi              # imm = 0x321
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fsymbol_value
	xorl	%edi, %edi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB23_89
# BB#88:                                # %if.then.290
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$503, %edi              # imm = 0x1F7
	callq	builtin_lisp_symbol
	movl	$147, %edi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB23_89:                              # %if.end.294
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_90
.LBB23_90:                              # %if.end.295
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_buffer, %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB23_92
# BB#91:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB23_93
.LBB23_92:                              # %if.then.302
                                        #   in Loop: Header=BB23_14 Depth=1
	movabsq	$.L.str.2, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	run_hook
.LBB23_93:                              # %if.end.304
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_94
.LBB23_94:                              # %if.end.305
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2064
.LBB23_95:                              # %if.end.307
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_96
.LBB23_96:                              # %finalize
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	current_buffer, %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB23_108
# BB#97:                                # %land.lhs.true.310
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB23_108
# BB#98:                                # %land.lhs.true.316
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	last_point_position, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	je	.LBB23_108
# BB#99:                                # %land.lhs.true.321
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+560, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_108
# BB#100:                               # %land.lhs.true.325
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	globals+928, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_108
# BB#101:                               # %if.then.329
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	last_point_position, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB23_105
# BB#102:                               # %land.lhs.true.332
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	last_point_position, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB23_105
# BB#103:                               # %land.lhs.true.335
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	last_point_position, %rdi
	movq	last_point_position, %rsi
	callq	composition_adjust_point
	cmpq	last_point_position, %rax
	je	.LBB23_105
# BB#104:                               # %if.then.339
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$21, windows_or_buffers_changed
.LBB23_105:                             # %if.end.340
                                        #   in Loop: Header=BB23_14 Depth=1
	testb	$1, -17(%rbp)
	jne	.LBB23_107
# BB#106:                               # %if.then.342
                                        #   in Loop: Header=BB23_14 Depth=1
	movq	last_point_position, %rdi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-8(%rbp), %rax
	setne	%cl
	movzbl	%cl, %edx
	andl	$1, %edx
	movl	%edx, %esi
	callq	adjust_point_for_property
.LBB23_107:                             # %if.end.347
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_108
.LBB23_108:                             # %if.end.348
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	72(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_111
# BB#109:                               # %land.lhs.true.352
                                        #   in Loop: Header=BB23_14 Depth=1
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	48(%rax), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_111
# BB#110:                               # %if.then.356
                                        #   in Loop: Header=BB23_14 Depth=1
	callq	finalize_kbd_macro_chars
.LBB23_111:                             # %if.end.357
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_14
.Lfunc_end23:
	.size	command_loop_1, .Lfunc_end23-command_loop_1
	.cfi_endproc

	.align	16, 0x90
	.type	kset_last_prefix_arg,@function
kset_last_prefix_arg:                   # @kset_last_prefix_arg
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	kset_last_prefix_arg, .Lfunc_end24-kset_last_prefix_arg
	.cfi_endproc

	.globl	safe_run_hooks
	.align	16, 0x90
	.type	safe_run_hooks,@function
safe_run_hooks:                         # @safe_run_hooks
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movl	$546, %edi              # imm = 0x222
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$2, %ecx
	movl	%ecx, %edi
	movabsq	$safe_run_hook_funcall, %rdx
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	run_hook_with_args
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	safe_run_hooks, .Lfunc_end25-safe_run_hooks
	.cfi_endproc

	.align	16, 0x90
	.type	kset_real_last_command,@function
kset_real_last_command:                 # @kset_real_last_command
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	kset_real_last_command, .Lfunc_end26-kset_real_last_command
	.cfi_endproc

	.align	16, 0x90
	.type	kset_last_repeatable_command,@function
kset_last_repeatable_command:           # @kset_last_repeatable_command
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
	movq	%rsi, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	kset_last_repeatable_command, .Lfunc_end27-kset_last_repeatable_command
	.cfi_endproc

	.align	16, 0x90
	.type	read_key_sequence,@function
read_key_sequence:                      # @read_key_sequence
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
	pushq	%rbx
	subq	$1080, %rsp             # imm = 0x438
.Ltmp87:
	.cfi_offset %rbx, -24
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movb	16(%rbp), %bl
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	andb	$1, %r11b
	movb	%r11b, -41(%rbp)
	andb	$1, %r10b
	movb	%r10b, -42(%rbp)
	andb	$1, %al
	movb	%al, -43(%rbp)
	andb	$1, %bl
	movb	%bl, -44(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movl	$0, -104(%rbp)
	movb	$0, -177(%rbp)
	movl	$-1, -204(%rbp)
	movb	$0, -205(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)
	movl	$0, raw_keybuf_count
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+3016
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	movq	globals+688, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB28_11
# BB#1:                                 # %land.lhs.true
	testb	$1, noninteractive
	jne	.LBB28_11
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_6
# BB#3:                                 # %if.then.12
	movq	current_kboard, %rdi
	movq	-40(%rbp), %rsi
	callq	kset_echo_prompt
	movq	current_kboard, %rsi
	movb	185(%rsi), %al
	andb	$-2, %al
	movb	%al, 185(%rsi)
	callq	echo_now
	callq	echo_keystrokes_p
	testb	$1, %al
	jne	.LBB28_5
# BB#4:                                 # %if.then.14
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 185(%rax)
.LBB28_5:                               # %if.end
	jmp	.LBB28_10
.LBB28_6:                               # %if.else
	testb	$1, globals+3371
	je	.LBB28_9
# BB#7:                                 # %land.lhs.true.19
	callq	echo_keystrokes_p
	testb	$1, %al
	jne	.LBB28_8
	jmp	.LBB28_9
.LBB28_8:                               # %if.then.21
	callq	echo_dash
.LBB28_9:                               # %if.end.22
	jmp	.LBB28_10
.LBB28_10:                              # %if.end.23
	jmp	.LBB28_11
.LBB28_11:                              # %if.end.24
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_14
# BB#12:                                # %land.lhs.true.27
	testb	$1, noninteractive
	jne	.LBB28_14
# BB#13:                                # %if.then.29
	callq	echo_length
	movq	%rax, -72(%rbp)
.LBB28_14:                              # %if.end.31
	movq	this_command_key_count, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, this_single_command_key_start
.LBB28_15:                              # %replay_entire_sequence
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_16 Depth 2
                                        #       Child Loop BB28_21 Depth 3
                                        #         Child Loop BB28_37 Depth 4
                                        #           Child Loop BB28_170 Depth 5
                                        #         Child Loop BB28_208 Depth 4
                                        #         Child Loop BB28_225 Depth 4
                                        #         Child Loop BB28_239 Depth 4
                                        #       Child Loop BB28_27 Depth 3
                                        #     Child Loop BB28_56 Depth 2
                                        #     Child Loop BB28_66 Depth 2
	movq	current_kboard, %rax
	movq	152(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	current_kboard, %rax
	movq	144(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	globals+1208, %rax
	movq	%rax, -152(%rbp)
	movq	%rax, -144(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
.LBB28_16:                              # %replay_sequence
                                        #   Parent Loop BB28_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_21 Depth 3
                                        #         Child Loop BB28_37 Depth 4
                                        #           Child Loop BB28_170 Depth 5
                                        #         Child Loop BB28_208 Depth 4
                                        #         Child Loop BB28_225 Depth 4
                                        #         Child Loop BB28_239 Depth 4
                                        #       Child Loop BB28_27 Depth 3
	movq	current_buffer, %rax
	movq	%rax, -216(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -100(%rbp)
	movq	-96(%rbp), %rdi
	callq	active_maps
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movl	$0, -60(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, this_command_key_count
	movq	globals+688, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB28_20
# BB#17:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB28_16 Depth=2
	testb	$1, noninteractive
	jne	.LBB28_20
# BB#18:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB28_20
# BB#19:                                # %if.then.47
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-72(%rbp), %rdi
	callq	echo_truncate
.LBB28_20:                              # %if.end.48
                                        #   in Loop: Header=BB28_16 Depth=2
	jmp	.LBB28_21
.LBB28_21:                              # %while.cond
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB28_37 Depth 4
                                        #           Child Loop BB28_170 Depth 5
                                        #         Child Loop BB28_208 Depth 4
                                        #         Child Loop BB28_225 Depth 4
                                        #         Child Loop BB28_239 Depth 4
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%eax, %eax
	movq	-88(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB28_24
.LBB28_23:                              # %cond.false
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-136(%rbp), %eax
	cmpl	-60(%rbp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB28_24:                              # %cond.end
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-492(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB28_288
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB28_21 Depth=3
	movb	$0, -233(%rbp)
	movl	-100(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB28_31
# BB#26:                                # %if.then.60
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
.LBB28_27:                              # %for.cond
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-268(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB28_30
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB28_27 Depth=3
	movslq	-268(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-268(%rbp), %edx
	subl	-100(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB28_27 Depth=3
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB28_27
.LBB28_30:                              # %for.end
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	subl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	-160(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	movl	%ecx, -156(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -168(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	-112(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -112(%rbp)
	movl	%ecx, -108(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, -120(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	-136(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -136(%rbp)
	movl	%ecx, -132(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	jmp	.LBB28_16
.LBB28_31:                              # %if.end.87
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB28_33
# BB#32:                                # %if.then.90
	movabsq	$.L.str.388, %rdi
	movb	$0, %al
	callq	error
.LBB28_33:                              # %if.end.91
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_36
# BB#34:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB28_21 Depth=3
	testb	$1, noninteractive
	jne	.LBB28_36
# BB#35:                                # %if.then.97
                                        #   in Loop: Header=BB28_21 Depth=3
	callq	echo_length
	movq	%rax, -248(%rbp)
.LBB28_36:                              # %if.end.99
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	this_command_key_count, %rax
	movl	%eax, %ecx
	movl	%ecx, -252(%rbp)
.LBB28_37:                              # %replay_key
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        #       Parent Loop BB28_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB28_170 Depth 5
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_41
# BB#38:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB28_37 Depth=4
	testb	$1, noninteractive
	jne	.LBB28_41
# BB#39:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB28_41
# BB#40:                                # %if.then.109
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-248(%rbp), %rdi
	callq	echo_truncate
.LBB28_41:                              # %if.end.110
                                        #   in Loop: Header=BB28_37 Depth=4
	movslq	-252(%rbp), %rax
	movq	%rax, this_command_key_count
	movl	-60(%rbp), %ecx
	movl	%ecx, -240(%rbp)
	movl	-60(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	jge	.LBB28_45
# BB#42:                                # %if.then.114
                                        #   in Loop: Header=BB28_37 Depth=4
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	add_command_key
	movq	current_kboard, %rax
	movb	185(%rax), %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB28_44
# BB#43:                                # %if.then.120
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 185(%rax)
	callq	echo_now
.LBB28_44:                              # %if.end.124
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_113
.LBB28_45:                              # %if.else.125
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	current_kboard, %rax
	movq	%rax, -280(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB28_46
	jmp	.LBB28_48
.LBB28_46:                              # %land.lhs.true.128
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB28_48
# BB#47:                                # %cond.true.132
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB28_49
.LBB28_48:                              # %cond.false.134
	callq	emacs_abort
.LBB28_49:                              # %cond.end.135
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, -288(%rbp)
	testb	$1, -44(%rbp)
	je	.LBB28_51
# BB#50:                                # %cond.true.139
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB28_52
.LBB28_51:                              # %cond.false.140
                                        #   in Loop: Header=BB28_37 Depth=4
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -524(%rbp)        # 4-byte Spill
.LBB28_52:                              # %cond.end.144
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-524(%rbp), %eax        # 4-byte Reload
	leaq	-233(%rbp), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-88(%rbp), %rsi
	movq	globals+3016, %rdx
	movl	%eax, %edi
	callq	read_char
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	andl	$-5, %edi
	cmpl	$2, %edi
	jne	.LBB28_54
# BB#53:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-2, %rax
	je	.LBB28_55
.LBB28_54:                              # %lor.lhs.false
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-280(%rbp), %rax
	cmpq	current_kboard, %rax
	je	.LBB28_77
.LBB28_55:                              # %if.then.156
                                        #   in Loop: Header=BB28_15 Depth=1
	movb	$0, -289(%rbp)
	movq	all_kboards, %rax
	movq	%rax, -304(%rbp)
.LBB28_56:                              # %for.cond.157
                                        #   Parent Loop BB28_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -304(%rbp)
	je	.LBB28_61
# BB#57:                                # %for.body.159
                                        #   in Loop: Header=BB28_56 Depth=2
	movq	-304(%rbp), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB28_59
# BB#58:                                # %if.then.162
                                        #   in Loop: Header=BB28_56 Depth=2
	movb	$1, -289(%rbp)
.LBB28_59:                              # %if.end.163
                                        #   in Loop: Header=BB28_56 Depth=2
	jmp	.LBB28_60
.LBB28_60:                              # %for.inc.164
                                        #   in Loop: Header=BB28_56 Depth=2
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB28_56
.LBB28_61:                              # %for.end.165
                                        #   in Loop: Header=BB28_15 Depth=1
	testb	$1, -289(%rbp)
	jne	.LBB28_63
# BB#62:                                # %if.then.167
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)
	jmp	.LBB28_15
.LBB28_63:                              # %if.end.169
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%edi, %edi
	movq	-192(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_65
# BB#64:                                # %if.then.173
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-280(%rbp), %rdi
	movq	-192(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -192(%rbp)
.LBB28_65:                              # %if.end.176
                                        #   in Loop: Header=BB28_15 Depth=1
	jmp	.LBB28_66
.LBB28_66:                              # %while.cond.177
                                        #   Parent Loop BB28_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -60(%rbp)
	jle	.LBB28_68
# BB#67:                                # %while.body.180
                                        #   in Loop: Header=BB28_66 Depth=2
	movq	-280(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-280(%rbp), %rdx
	movq	64(%rdx), %rsi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	Fcons
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
	jmp	.LBB28_66
.LBB28_68:                              # %while.end
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_76
# BB#69:                                # %land.lhs.true.190
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-280(%rbp), %rdx
	movq	64(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -232(%rbp)
	movq	-232(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -561(%rbp)         # 1-byte Spill
	jne	.LBB28_74
# BB#70:                                # %land.rhs
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_72
# BB#71:                                # %cond.true.201
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB28_73
.LBB28_72:                              # %cond.false.204
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB28_73:                              # %cond.end.205
                                        #   in Loop: Header=BB28_15 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$895, %edi              # imm = 0x37F
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -561(%rbp)         # 1-byte Spill
.LBB28_74:                              # %land.end
                                        #   in Loop: Header=BB28_15 Depth=1
	movb	-561(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB28_75
	jmp	.LBB28_76
.LBB28_75:                              # %if.then.214
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	$5, %esi
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -312(%rbp)
	movq	-280(%rbp), %rdi
	movq	-312(%rbp), %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	make_lispy_switch_frame
	movq	-280(%rbp), %rdi
	movq	64(%rdi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
.LBB28_76:                              # %if.end.219
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	$0, -104(%rbp)
	jmp	.LBB28_15
.LBB28_77:                              # %if.end.220
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	$901, %edi              # imm = 0x385
	movq	-232(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_79
# BB#78:                                # %if.then.224
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	$-1, -12(%rbp)
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB28_305
.LBB28_79:                              # %if.end.227
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB28_82
# BB#80:                                # %land.lhs.true.233
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-1, %rax
	jne	.LBB28_82
# BB#81:                                # %if.then.237
	movl	$0, -60(%rbp)
	movb	$1, -205(%rbp)
	jmp	.LBB28_288
.LBB28_82:                              # %if.end.238
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB28_83
	jmp	.LBB28_90
.LBB28_83:                              # %if.then.240
                                        #   in Loop: Header=BB28_16 Depth=2
	callq	timer_resume_idle
	movl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)
	testb	$1, -43(%rbp)
	je	.LBB28_89
# BB#84:                                # %if.then.242
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB28_86
# BB#85:                                # %if.then.247
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB28_86:                              # %if.end.249
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB28_88
# BB#87:                                # %if.then.254
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB28_88:                              # %if.end.258
                                        #   in Loop: Header=BB28_16 Depth=2
	jmp	.LBB28_89
.LBB28_89:                              # %if.end.259
                                        #   in Loop: Header=BB28_16 Depth=2
	jmp	.LBB28_16
.LBB28_90:                              # %if.end.260
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB28_96
# BB#91:                                # %land.lhs.true.266
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	movslq	quit_char, %rcx
	cmpq	%rcx, %rax
	jne	.LBB28_96
# BB#92:                                # %land.lhs.true.271
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	current_buffer, %rax
	cmpq	-216(%rbp), %rax
	je	.LBB28_96
# BB#93:                                # %if.then.274
                                        #   in Loop: Header=BB28_16 Depth=2
	movslq	raw_keybuf_count, %rax
	movq	raw_keybuf, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-648(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB28_95
# BB#94:                                # %if.then.279
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	raw_keybuf, %rdi
	callq	larger_vector
	movq	%rax, raw_keybuf
.LBB28_95:                              # %if.end.281
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	raw_keybuf, %rdi
	movslq	raw_keybuf_count, %rsi
	movq	-232(%rbp), %rdx
	callq	ASET
	xorl	%edi, %edi
	movl	raw_keybuf_count, %eax
	addl	$1, %eax
	movl	%eax, raw_keybuf_count
	movq	-232(%rbp), %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movslq	%eax, %rsi
	movq	-24(%rbp), %r8
	movq	%rdx, (%r8,%rsi,8)
	movl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	jmp	.LBB28_16
.LBB28_96:                              # %if.end.288
                                        #   in Loop: Header=BB28_37 Depth=4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB28_105
# BB#97:                                # %land.lhs.true.294
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_99
# BB#98:                                # %cond.true.299
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB28_100
.LBB28_99:                              # %cond.false.302
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB28_100:                             # %cond.end.303
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$895, %edi              # imm = 0x37F
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-672(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_105
# BB#101:                               # %if.then.310
                                        #   in Loop: Header=BB28_37 Depth=4
	cmpl	$0, -60(%rbp)
	jg	.LBB28_103
# BB#102:                               # %lor.lhs.false.313
                                        #   in Loop: Header=BB28_37 Depth=4
	testb	$1, -42(%rbp)
	jne	.LBB28_104
.LBB28_103:                             # %if.then.315
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB28_37
.LBB28_104:                             # %if.end.316
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_105
.LBB28_105:                             # %if.end.317
                                        #   in Loop: Header=BB28_37 Depth=4
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_110
# BB#106:                               # %if.then.321
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	movq	%rax, -96(%rbp)
	testb	$1, -43(%rbp)
	je	.LBB28_109
# BB#107:                               # %land.lhs.true.324
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB28_109
# BB#108:                               # %if.then.330
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	Fset_buffer
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB28_109:                             # %if.end.334
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-96(%rbp), %rdi
	callq	active_maps
	movq	%rax, -88(%rbp)
.LBB28_110:                             # %if.end.336
                                        #   in Loop: Header=BB28_37 Depth=4
	movslq	raw_keybuf_count, %rax
	movq	raw_keybuf, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB28_112
# BB#111:                               # %if.then.341
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	$1, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	raw_keybuf, %rdi
	callq	larger_vector
	movq	%rax, raw_keybuf
.LBB28_112:                             # %if.end.343
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	raw_keybuf, %rdi
	movslq	raw_keybuf_count, %rsi
	movq	-232(%rbp), %rdx
	callq	ASET
	movl	raw_keybuf_count, %eax
	addl	$1, %eax
	movl	%eax, raw_keybuf_count
.LBB28_113:                             # %if.end.346
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_156
# BB#114:                               # %if.then.351
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_116
# BB#115:                               # %cond.true.356
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB28_117
.LBB28_116:                             # %cond.false.359
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB28_117:                             # %cond.end.360
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$685, %edi              # imm = 0x2AD
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_139
# BB#118:                               # %if.then.367
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, -328(%rbp)
	movq	-232(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB28_121
# BB#119:                               # %lor.lhs.false.379
                                        #   in Loop: Header=BB28_37 Depth=4
	xorl	%edi, %edi
	movq	-224(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_124
# BB#120:                               # %land.lhs.true.383
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_124
.LBB28_121:                             # %if.then.388
                                        #   in Loop: Header=BB28_37 Depth=4
	cmpl	$0, -60(%rbp)
	jle	.LBB28_123
# BB#122:                               # %if.then.391
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -240(%rbp)
.LBB28_123:                             # %if.end.393
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_124
.LBB28_124:                             # %if.end.394
                                        #   in Loop: Header=BB28_37 Depth=4
	cmpl	$0, -240(%rbp)
	jne	.LBB28_132
# BB#125:                               # %if.then.397
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-328(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB28_126
	jmp	.LBB28_131
.LBB28_126:                             # %land.lhs.true.400
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-328(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB28_127
	jmp	.LBB28_131
.LBB28_127:                             # %land.lhs.true.405
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-328(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	je	.LBB28_131
# BB#128:                               # %if.then.411
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	raw_keybuf, %rdi
	movslq	raw_keybuf_count, %rsi
	movq	-232(%rbp), %rdx
	callq	ASET
	movl	raw_keybuf_count, %eax
	addl	$1, %eax
	movl	%eax, raw_keybuf_count
	movq	-232(%rbp), %rdx
	movslq	-60(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdx, (%rdi,%rsi,8)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	callq	record_unwind_current_buffer
	movq	selected_frame, %rdx
	subq	$5, %rdx
	cmpq	$0, 376(%rdx)
	jne	.LBB28_130
# BB#129:                               # %if.then.421
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB28_130:                             # %if.end.423
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-328(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	jmp	.LBB28_16
.LBB28_131:                             # %if.end.427
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_132
.LBB28_132:                             # %if.end.428
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-336(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_138
# BB#133:                               # %land.lhs.true.433
                                        #   in Loop: Header=BB28_37 Depth=4
	xorl	%edi, %edi
	movq	-224(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_135
# BB#134:                               # %lor.lhs.false.437
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_138
.LBB28_135:                             # %if.then.442
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-28(%rbp), %eax
	subl	-60(%rbp), %eax
	cmpl	$1, %eax
	jg	.LBB28_137
# BB#136:                               # %if.then.446
	movabsq	$.L.str.388, %rdi
	movb	$0, %al
	callq	error
.LBB28_137:                             # %if.end.447
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-336(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-232(%rbp), %rax
	movl	-60(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-60(%rbp), %esi
	addl	$2, %esi
	movl	%esi, -104(%rbp)
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	Fcons
	movq	%rax, -224(%rbp)
	jmp	.LBB28_37
.LBB28_138:                             # %if.end.455
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_155
.LBB28_139:                             # %if.else.456
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_154
# BB#140:                               # %land.lhs.true.462
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_154
# BB#141:                               # %land.lhs.true.469
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_154
# BB#142:                               # %if.then.479
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movl	$651, %edi              # imm = 0x28B
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_144
# BB#143:                               # %lor.lhs.false.488
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	$921, %edi              # imm = 0x399
	movq	-344(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_147
.LBB28_144:                             # %if.then.492
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-28(%rbp), %eax
	subl	-60(%rbp), %eax
	cmpl	$1, %eax
	jg	.LBB28_146
# BB#145:                               # %if.then.496
	movabsq	$.L.str.388, %rdi
	movb	$0, %al
	callq	error
.LBB28_146:                             # %if.end.497
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-344(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-232(%rbp), %rax
	movl	-60(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-232(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-344(%rbp), %rax
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
	movl	-60(%rbp), %r8d
	addl	$2, %r8d
	movl	%r8d, -104(%rbp)
	jmp	.LBB28_16
.LBB28_147:                             # %if.else.510
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_152
# BB#148:                               # %if.then.515
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB28_151
# BB#149:                               # %land.lhs.true.518
                                        #   in Loop: Header=BB28_37 Depth=4
	cmpl	$0, -60(%rbp)
	jle	.LBB28_151
# BB#150:                               # %if.then.521
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -240(%rbp)
.LBB28_151:                             # %if.end.523
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_152
.LBB28_152:                             # %if.end.524
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_153
.LBB28_153:                             # %if.end.525
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_154
.LBB28_154:                             # %if.end.526
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_155
.LBB28_155:                             # %if.end.527
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_156
.LBB28_156:                             # %if.end.528
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-88(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	follow_key
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_161
# BB#157:                               # %if.then.533
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	cmpl	-100(%rbp), %eax
	jle	.LBB28_159
# BB#158:                               # %cond.true.537
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -796(%rbp)        # 4-byte Spill
	jmp	.LBB28_160
.LBB28_159:                             # %cond.false.539
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-100(%rbp), %eax
	movl	%eax, -796(%rbp)        # 4-byte Spill
.LBB28_160:                             # %cond.end.540
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-796(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	jmp	.LBB28_203
.LBB28_161:                             # %if.else.542
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-60(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB28_163
# BB#162:                               # %cond.true.545
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -800(%rbp)        # 4-byte Spill
	jmp	.LBB28_164
.LBB28_163:                             # %cond.false.546
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-100(%rbp), %eax
	movl	%eax, -800(%rbp)        # 4-byte Spill
.LBB28_164:                             # %cond.end.547
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-800(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)
	movq	-232(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB28_166
# BB#165:                               # %cond.true.553
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB28_167
.LBB28_166:                             # %cond.false.556
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-232(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB28_167:                             # %cond.end.557
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_202
# BB#168:                               # %if.then.563
                                        #   in Loop: Header=BB28_37 Depth=4
	movq	-352(%rbp), %rdi
	callq	parse_modifiers
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -364(%rbp)
	movl	-364(%rbp), %ecx
	andl	$55, %ecx
	cmpl	$0, %ecx
	je	.LBB28_201
# BB#169:                               # %if.then.574
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_170
.LBB28_170:                             # %while.cond.575
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        #       Parent Loop BB28_21 Depth=3
                                        #         Parent Loop BB28_37 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-364(%rbp), %eax
	andl	$55, %eax
	cmpl	$0, %eax
	je	.LBB28_200
# BB#171:                               # %while.body.578
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB28_173
# BB#172:                               # %if.then.581
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %eax
	xorl	$48, %eax
	movl	%eax, -364(%rbp)
	jmp	.LBB28_197
.LBB28_173:                             # %if.else.582
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB28_175
# BB#174:                               # %if.then.585
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %eax
	andl	$-17, %eax
	movl	%eax, -364(%rbp)
	jmp	.LBB28_196
.LBB28_175:                             # %if.else.587
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB28_177
# BB#176:                               # %if.then.590
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %eax
	andl	$-5, %eax
	movl	%eax, -364(%rbp)
	jmp	.LBB28_195
.LBB28_177:                             # %if.else.592
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-156(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jle	.LBB28_192
# BB#178:                               # %if.then.596
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB28_180
# BB#179:                               # %cond.true.600
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jmp	.LBB28_181
.LBB28_180:                             # %cond.false.601
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-160(%rbp), %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
.LBB28_181:                             # %cond.end.603
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-812(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
	movl	%eax, -156(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movl	-108(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jle	.LBB28_191
# BB#182:                               # %if.then.612
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB28_184
# BB#183:                               # %cond.true.616
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB28_185
.LBB28_184:                             # %cond.false.617
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-112(%rbp), %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
.LBB28_185:                             # %cond.end.619
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-816(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movl	-132(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jle	.LBB28_190
# BB#186:                               # %if.then.628
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB28_188
# BB#187:                               # %cond.true.632
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-240(%rbp), %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB28_189
.LBB28_188:                             # %cond.false.633
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-136(%rbp), %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB28_189:                             # %cond.end.635
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-820(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movl	%eax, -132(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
.LBB28_190:                             # %if.end.641
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_191
.LBB28_191:                             # %if.end.642
                                        #   in Loop: Header=BB28_37 Depth=4
	jmp	.LBB28_192
.LBB28_192:                             # %if.end.643
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	-60(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jne	.LBB28_194
# BB#193:                               # %if.then.646
                                        #   in Loop: Header=BB28_37 Depth=4
	movl	$0, -104(%rbp)
	jmp	.LBB28_37
.LBB28_194:                             # %if.else.647
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-240(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB28_16
.LBB28_195:                             # %if.end.648
                                        #   in Loop: Header=BB28_170 Depth=5
	jmp	.LBB28_196
.LBB28_196:                             # %if.end.649
                                        #   in Loop: Header=BB28_170 Depth=5
	jmp	.LBB28_197
.LBB28_197:                             # %if.end.650
                                        #   in Loop: Header=BB28_170 Depth=5
	movl	-364(%rbp), %edi
	movq	-360(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	apply_modifiers
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rdi
	movq	-232(%rbp), %rax
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -384(%rbp)
	movq	-88(%rbp), %rdi
	movq	-384(%rbp), %rsi
	callq	follow_key
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_199
# BB#198:                               # %if.then.661
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-264(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB28_200
.LBB28_199:                             # %if.end.662
                                        #   in Loop: Header=BB28_170 Depth=5
	jmp	.LBB28_170
.LBB28_200:                             # %while.end.663
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_201
.LBB28_201:                             # %if.end.664
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_202
.LBB28_202:                             # %if.end.665
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_203
.LBB28_203:                             # %if.end.666
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-264(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-232(%rbp), %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
	movslq	%ecx, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	testb	$1, -233(%rbp)
	jne	.LBB28_205
# BB#204:                               # %if.then.671
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	movq	%rax, globals+3016
.LBB28_205:                             # %if.end.672
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	this_command_key_count, %rax
	movslq	-60(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, this_single_command_key_start
	cmpq	$0, this_single_command_key_start
	jge	.LBB28_207
# BB#206:                               # %if.then.677
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	$0, this_single_command_key_start
.LBB28_207:                             # %if.end.678
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_208
.LBB28_208:                             # %while.cond.679
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        #       Parent Loop BB28_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-156(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB28_218
# BB#209:                               # %while.body.683
                                        #   in Loop: Header=BB28_208 Depth=4
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movl	%esi, -852(%rbp)        # 4-byte Spill
	jle	.LBB28_211
# BB#210:                               # %cond.true.686
                                        #   in Loop: Header=BB28_208 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB28_212
.LBB28_211:                             # %cond.false.687
                                        #   in Loop: Header=BB28_208 Depth=4
	movl	-104(%rbp), %eax
	movl	%eax, -856(%rbp)        # 4-byte Spill
.LBB28_212:                             # %cond.end.688
                                        #   in Loop: Header=BB28_208 Depth=4
	movl	-856(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rdx
	movl	$1, %r8d
	leaq	-392(%rbp), %r9
	movq	-40(%rbp), %rcx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movl	-852(%rbp), %esi        # 4-byte Reload
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-864(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	keyremap_step
	andb	$1, %al
	movb	%al, -385(%rbp)
	testb	$1, -385(%rbp)
	je	.LBB28_217
# BB#213:                               # %if.then.693
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-392(%rbp), %eax
	movl	-60(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jle	.LBB28_215
# BB#214:                               # %cond.true.696
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
	jmp	.LBB28_216
.LBB28_215:                             # %cond.false.697
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -872(%rbp)        # 4-byte Spill
.LBB28_216:                             # %cond.end.698
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-872(%rbp), %eax        # 4-byte Reload
	movl	-868(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -104(%rbp)
	jmp	.LBB28_16
.LBB28_217:                             # %if.end.701
                                        #   in Loop: Header=BB28_208 Depth=4
	jmp	.LBB28_208
.LBB28_218:                             # %while.end.702
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%eax, %eax
	movq	-88(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-880(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_224
# BB#219:                               # %land.lhs.true.707
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-88(%rbp), %rdi
	callq	test_undefined
	testb	$1, %al
	jne	.LBB28_224
# BB#220:                               # %land.lhs.true.709
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-160(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB28_224
# BB#221:                               # %if.then.713
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-112(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB28_223
# BB#222:                               # %if.then.717
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-60(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	%eax, -112(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
.LBB28_223:                             # %if.end.722
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_238
.LBB28_224:                             # %if.else.723
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_225
.LBB28_225:                             # %while.cond.724
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        #       Parent Loop BB28_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-108(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB28_237
# BB#226:                               # %while.body.729
                                        #   in Loop: Header=BB28_225 Depth=4
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movl	%esi, -892(%rbp)        # 4-byte Spill
	jle	.LBB28_228
# BB#227:                               # %cond.true.734
                                        #   in Loop: Header=BB28_225 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
	jmp	.LBB28_229
.LBB28_228:                             # %cond.false.735
                                        #   in Loop: Header=BB28_225 Depth=4
	movl	-104(%rbp), %eax
	movl	%eax, -896(%rbp)        # 4-byte Spill
.LBB28_229:                             # %cond.end.736
                                        #   in Loop: Header=BB28_225 Depth=4
	movl	-896(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	-108(%rbp), %ecx
	addl	$1, %ecx
	cmpl	-60(%rbp), %ecx
	movl	%eax, -900(%rbp)        # 4-byte Spill
	movb	%dl, -901(%rbp)         # 1-byte Spill
	jne	.LBB28_231
# BB#230:                               # %land.rhs.742
                                        #   in Loop: Header=BB28_225 Depth=4
	movq	-88(%rbp), %rdi
	callq	test_undefined
	movb	%al, -901(%rbp)         # 1-byte Spill
.LBB28_231:                             # %land.end.745
                                        #   in Loop: Header=BB28_225 Depth=4
	movb	-901(%rbp), %al         # 1-byte Reload
	leaq	-128(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rsp, %rsi
	movq	%rdx, (%rsi)
	movzbl	%al, %edi
	andl	$1, %edi
	leaq	-128(%rbp), %rdx
	leaq	-400(%rbp), %r9
	movq	-888(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -908(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movl	-892(%rbp), %esi        # 4-byte Reload
	movl	-900(%rbp), %r8d        # 4-byte Reload
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	-908(%rbp), %r8d        # 4-byte Reload
	callq	keyremap_step
	andb	$1, %al
	movb	%al, -393(%rbp)
	testb	$1, -393(%rbp)
	je	.LBB28_236
# BB#232:                               # %if.then.749
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-400(%rbp), %eax
	movl	-60(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	movl	%eax, -924(%rbp)        # 4-byte Spill
	jle	.LBB28_234
# BB#233:                               # %cond.true.752
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -928(%rbp)        # 4-byte Spill
	jmp	.LBB28_235
.LBB28_234:                             # %cond.false.753
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -928(%rbp)        # 4-byte Spill
.LBB28_235:                             # %cond.end.754
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-928(%rbp), %eax        # 4-byte Reload
	movl	-924(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -104(%rbp)
	movl	-400(%rbp), %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-400(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB28_16
.LBB28_236:                             # %if.end.761
                                        #   in Loop: Header=BB28_225 Depth=4
	jmp	.LBB28_225
.LBB28_237:                             # %while.end.762
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_238
.LBB28_238:                             # %if.end.763
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_239
.LBB28_239:                             # %while.cond.764
                                        #   Parent Loop BB28_15 Depth=1
                                        #     Parent Loop BB28_16 Depth=2
                                        #       Parent Loop BB28_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-132(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB28_249
# BB#240:                               # %while.body.769
                                        #   in Loop: Header=BB28_239 Depth=4
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movl	%esi, -940(%rbp)        # 4-byte Spill
	jle	.LBB28_242
# BB#241:                               # %cond.true.774
                                        #   in Loop: Header=BB28_239 Depth=4
	movl	-60(%rbp), %eax
	movl	%eax, -944(%rbp)        # 4-byte Spill
	jmp	.LBB28_243
.LBB28_242:                             # %cond.false.775
                                        #   in Loop: Header=BB28_239 Depth=4
	movl	-104(%rbp), %eax
	movl	%eax, -944(%rbp)        # 4-byte Spill
.LBB28_243:                             # %cond.end.776
                                        #   in Loop: Header=BB28_239 Depth=4
	movl	-944(%rbp), %eax        # 4-byte Reload
	leaq	-152(%rbp), %rdx
	movl	$1, %r8d
	leaq	-408(%rbp), %r9
	movq	-40(%rbp), %rcx
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movl	-940(%rbp), %esi        # 4-byte Reload
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-952(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	keyremap_step
	andb	$1, %al
	movb	%al, -401(%rbp)
	testb	$1, -401(%rbp)
	je	.LBB28_248
# BB#244:                               # %if.then.781
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-408(%rbp), %eax
	movl	-60(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jle	.LBB28_246
# BB#245:                               # %cond.true.784
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jmp	.LBB28_247
.LBB28_246:                             # %cond.false.785
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
.LBB28_247:                             # %cond.end.786
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-960(%rbp), %eax        # 4-byte Reload
	movl	-956(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -104(%rbp)
	movl	-408(%rbp), %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-408(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-408(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-408(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB28_16
.LBB28_248:                             # %if.end.797
                                        #   in Loop: Header=BB28_239 Depth=4
	jmp	.LBB28_239
.LBB28_249:                             # %while.end.798
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_263
# BB#250:                               # %land.lhs.true.802
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-136(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB28_263
# BB#251:                               # %land.lhs.true.806
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB28_263
# BB#252:                               # %land.lhs.true.812
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB28_253
	jmp	.LBB28_255
.LBB28_253:                             # %land.lhs.true.818
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	shlq	$2, %rax
	addq	$2, %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB28_255
# BB#254:                               # %land.lhs.true.826
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB28_256
.LBB28_255:                             # %lor.lhs.false.832
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$33554432, %rax         # imm = 0x2000000
	cmpq	$0, %rax
	je	.LBB28_263
.LBB28_256:                             # %if.then.836
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-232(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -204(%rbp)
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$33554432, %rax         # imm = 0x2000000
	cmpq	$0, %rax
	je	.LBB28_258
# BB#257:                               # %if.then.841
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$-33554433, %rax        # imm = 0xFFFFFFFFFDFFFFFF
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -416(%rbp)
	jmp	.LBB28_259
.LBB28_258:                             # %if.else.846
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$-264241153, %rax       # imm = 0xFFFFFFFFF03FFFFF
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	downcase
	movslq	%eax, %rdx
	movq	-232(%rbp), %rsi
	sarq	$2, %rsi
	andq	$264241152, %rsi        # imm = 0xFC00000
	orq	%rsi, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -416(%rbp)
.LBB28_259:                             # %if.end.856
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-416(%rbp), %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movl	-60(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	jle	.LBB28_261
# BB#260:                               # %cond.true.862
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -972(%rbp)        # 4-byte Spill
	jmp	.LBB28_262
.LBB28_261:                             # %cond.false.863
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -972(%rbp)        # 4-byte Spill
.LBB28_262:                             # %cond.end.864
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-972(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movb	$1, -177(%rbp)
	jmp	.LBB28_16
.LBB28_263:                             # %if.end.866
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_270
# BB#264:                               # %land.lhs.true.870
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_266
# BB#265:                               # %cond.true.875
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB28_267
.LBB28_266:                             # %cond.false.878
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB28_267:                             # %cond.end.879
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	help_char_p
	testb	$1, %al
	jne	.LBB28_268
	jmp	.LBB28_270
.LBB28_268:                             # %land.lhs.true.883
                                        #   in Loop: Header=BB28_21 Depth=3
	cmpl	$1, -60(%rbp)
	jle	.LBB28_270
# BB#269:                               # %if.then.886
	movq	globals+1792, %rax
	movq	%rax, read_key_sequence_cmd
	movb	$1, -205(%rbp)
	jmp	.LBB28_288
.LBB28_270:                             # %if.end.887
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_287
# BB#271:                               # %land.lhs.true.891
                                        #   in Loop: Header=BB28_21 Depth=3
	movl	-136(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB28_287
# BB#272:                               # %if.then.895
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rdi
	callq	parse_modifiers
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_274
# BB#273:                               # %cond.true.903
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-424(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB28_275
.LBB28_274:                             # %cond.false.910
                                        #   in Loop: Header=BB28_21 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB28_275
.LBB28_275:                             # %cond.end.911
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -428(%rbp)
	movl	-428(%rbp), %ecx
	andl	$33554432, %ecx         # imm = 0x2000000
	cmpl	$0, %ecx
	jne	.LBB28_279
# BB#276:                               # %lor.lhs.false.916
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB28_286
# BB#277:                               # %land.lhs.true.922
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$4194303, %rax          # imm = 0x3FFFFF
	movq	current_buffer, %rcx
	movq	184(%rcx), %rdi
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	cmpq	(%rax), %rcx
	jge	.LBB28_286
# BB#278:                               # %land.lhs.true.928
                                        #   in Loop: Header=BB28_21 Depth=3
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$4194303, %rax          # imm = 0x3FFFFF
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB28_279
	jmp	.LBB28_286
.LBB28_279:                             # %if.then.934
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-428(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB28_281
# BB#280:                               # %cond.true.938
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-428(%rbp), %eax
	andl	$-33554433, %eax        # imm = 0xFFFFFFFFFDFFFFFF
	movq	-424(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movl	%eax, %edi
	callq	apply_modifiers
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB28_282
.LBB28_281:                             # %cond.false.943
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	andq	$4194303, %rax          # imm = 0x3FFFFF
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	downcase
	orl	-428(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
.LBB28_282:                             # %cond.end.952
                                        #   in Loop: Header=BB28_16 Depth=2
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -204(%rbp)
	movq	-440(%rbp), %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movl	-60(%rbp), %ecx
	cmpl	-104(%rbp), %ecx
	jle	.LBB28_284
# BB#283:                               # %cond.true.960
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB28_285
.LBB28_284:                             # %cond.false.961
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-104(%rbp), %eax
	movl	%eax, -1028(%rbp)       # 4-byte Spill
.LBB28_285:                             # %cond.end.962
                                        #   in Loop: Header=BB28_16 Depth=2
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movl	%eax, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movb	$1, -177(%rbp)
	jmp	.LBB28_16
.LBB28_286:                             # %if.end.968
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_287
.LBB28_287:                             # %if.end.969
                                        #   in Loop: Header=BB28_21 Depth=3
	jmp	.LBB28_21
.LBB28_288:                             # %while.end.970
	testb	$1, -205(%rbp)
	jne	.LBB28_290
# BB#289:                               # %if.then.972
	movq	-88(%rbp), %rax
	movq	%rax, read_key_sequence_cmd
.LBB28_290:                             # %if.end.973
	movq	read_key_sequence_cmd, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_292
# BB#291:                               # %cond.true.978
	xorl	%edi, %edi
	movq	read_key_sequence_cmd, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fcommand_remapping
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB28_293
.LBB28_292:                             # %cond.false.982
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB28_293:                             # %cond.end.984
	movq	-1056(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, read_key_sequence_remapped
	movq	-192(%rbp), %rax
	movq	%rax, unread_switch_frame
	movq	-56(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	testb	$1, -41(%rbp)
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jne	.LBB28_295
# BB#294:                               # %lor.lhs.false.990
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_298
.LBB28_295:                             # %land.lhs.true.994
	cmpl	$0, -60(%rbp)
	jle	.LBB28_298
# BB#296:                               # %land.lhs.true.997
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	-204(%rbp), %eax
	jne	.LBB28_298
# BB#297:                               # %if.then.1001
	movq	-200(%rbp), %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movb	$0, -177(%rbp)
.LBB28_298:                             # %if.end.1005
	testb	$1, -177(%rbp)
	je	.LBB28_300
# BB#299:                               # %if.then.1007
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2352
.LBB28_300:                             # %if.end.1009
	jmp	.LBB28_301
.LBB28_301:                             # %for.cond.1010
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB28_304
# BB#302:                               # %for.body.1013
                                        #   in Loop: Header=BB28_301 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	add_command_key
# BB#303:                               # %for.inc.1016
                                        #   in Loop: Header=BB28_301 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB28_301
.LBB28_304:                             # %for.end.1018
	callq	echo_update
	movl	-60(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB28_305:                             # %return
	movl	-12(%rbp), %eax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	read_key_sequence, .Lfunc_end28-read_key_sequence
	.cfi_endproc

	.globl	process_pending_signals
	.align	16, 0x90
	.type	process_pending_signals,@function
process_pending_signals:                # @process_pending_signals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movb	$0, pending_signals
	callq	handle_async_input
	callq	do_pending_atimers
	popq	%rbp
	retq
.Lfunc_end29:
	.size	process_pending_signals, .Lfunc_end29-process_pending_signals
	.cfi_endproc

	.align	16, 0x90
	.type	echo_now,@function
echo_now:                               # @echo_now
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 185(%rax)
	callq	echo_update
	callq	echo_dash
.LBB30_2:                               # %if.end
	movb	$1, echoing
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	message3_nolog
	movb	$0, echoing
	movq	echo_area_buffer, %rax
	movq	%rax, echo_message_buffer
	movq	current_kboard, %rax
	movq	%rax, echo_kboard
	testb	$1, waiting_for_input
	je	.LBB30_5
# BB#3:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_5
# BB#4:                                 # %if.then.4
	xorl	%edi, %edi
	callq	quit_throw_to_read_char
.LBB30_5:                               # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	echo_now, .Lfunc_end30-echo_now
	.cfi_endproc

	.align	16, 0x90
	.type	adjust_point_for_property,@function
adjust_point_for_property:              # @adjust_point_for_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$544, %rsp              # imm = 0x220
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movb	-9(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -57(%rbp)
	movb	$1, -58(%rbp)
	movb	$1, -59(%rbp)
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	movq	%rdi, -72(%rbp)
.LBB31_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_45 Depth 2
                                        #     Child Loop BB31_64 Depth 2
	movb	$1, %al
	testb	$1, -57(%rbp)
	movb	%al, -78(%rbp)          # 1-byte Spill
	jne	.LBB31_4
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$1, %al
	testb	$1, -58(%rbp)
	movb	%al, -78(%rbp)          # 1-byte Spill
	jne	.LBB31_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	-59(%rbp), %al
	movb	%al, -78(%rbp)          # 1-byte Spill
.LBB31_4:                               # %lor.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	-78(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_5
	jmp	.LBB31_133
.LBB31_5:                               # %while.body
                                        #   in Loop: Header=BB31_1 Depth=1
	testb	$1, -57(%rbp)
	je	.LBB31_10
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB31_10
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB31_10
# BB#8:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	composition_adjust_point
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	cmpq	%rsi, %rax
	je	.LBB31_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	set_point
	movb	$1, -59(%rbp)
	movb	$1, -58(%rbp)
.LBB31_10:                              # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$0, -57(%rbp)
	testb	$1, -58(%rbp)
	je	.LBB31_41
# BB#11:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB31_41
# BB#12:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB31_41
# BB#13:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$344, %edi              # imm = 0x158
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-48(%rbp), %rcx
	movq	selected_window, %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_char_property_and_overlay
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_41
# BB#14:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdx
	callq	display_prop_intangible_p
	testb	$1, %al
	jne	.LBB31_15
	jmp	.LBB31_41
.LBB31_15:                              # %land.lhs.true.46
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	OVERLAYP
	testb	$1, %al
	jne	.LBB31_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$344, %edi              # imm = 0x158
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %r9
	callq	get_property_and_range
	testb	$1, %al
	jne	.LBB31_26
	jmp	.LBB31_41
.LBB31_17:                              # %cond.false
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_20
# BB#18:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_20
# BB#19:                                # %cond.true.62
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB31_21
.LBB31_20:                              # %cond.false.66
	callq	emacs_abort
.LBB31_21:                              # %cond.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB31_24
# BB#22:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB31_24
# BB#23:                                # %cond.true.79
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	callq	marker_position
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB31_25
.LBB31_24:                              # %cond.false.83
	callq	emacs_abort
.LBB31_25:                              # %cond.end.84
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB31_41
.LBB31_26:                              # %land.lhs.true.87
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jl	.LBB31_30
# BB#27:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jg	.LBB31_41
# BB#28:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB31_29
	jmp	.LBB31_41
.LBB31_29:                              # %land.lhs.true.100
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB31_41
.LBB31_30:                              # %if.then.104
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB31_39
# BB#31:                                # %cond.true.109
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB31_32
	jmp	.LBB31_37
.LBB31_32:                              # %land.lhs.true.112
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB31_37
# BB#33:                                # %cond.true.116
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB31_35
# BB#34:                                # %cond.true.120
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB31_36
.LBB31_35:                              # %cond.false.122
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB31_36:                              # %cond.end.124
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB31_38
.LBB31_37:                              # %cond.false.126
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB31_38:                              # %cond.end.127
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB31_40
.LBB31_39:                              # %cond.false.129
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB31_40:                              # %cond.end.130
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	set_point
	movb	$1, -59(%rbp)
	movb	$1, -57(%rbp)
.LBB31_41:                              # %if.end.132
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$0, -58(%rbp)
	testb	$1, -59(%rbp)
	je	.LBB31_132
# BB#42:                                # %land.lhs.true.135
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB31_132
# BB#43:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB31_132
# BB#44:                                # %if.then.147
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$0, -77(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
.LBB31_45:                              # %while.cond.152
                                        #   Parent Loop BB31_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	768(%rsi), %rdx
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jge	.LBB31_51
# BB#46:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB31_45 Depth=2
	movl	$574, %edi              # imm = 0x23E
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-48(%rbp), %rcx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_char_property_and_overlay
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %r8b
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r8b, -153(%rbp)        # 1-byte Spill
	je	.LBB31_51
# BB#47:                                # %land.rhs
                                        #   in Loop: Header=BB31_45 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_49
# BB#48:                                # %cond.true.168
                                        #   in Loop: Header=BB31_45 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -204(%rbp)        # 4-byte Spill
	jmp	.LBB31_50
.LBB31_49:                              # %cond.false.173
                                        #   in Loop: Header=BB31_45 Depth=2
	movq	-40(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB31_50:                              # %cond.end.176
                                        #   in Loop: Header=BB31_45 Depth=2
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB31_51:                              # %land.end
                                        #   in Loop: Header=BB31_45 Depth=2
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_52
	jmp	.LBB31_63
.LBB31_52:                              # %while.body.179
                                        #   in Loop: Header=BB31_45 Depth=2
	movb	$1, %al
	testb	$1, -77(%rbp)
	movb	%al, -205(%rbp)         # 1-byte Spill
	jne	.LBB31_59
# BB#53:                                # %lor.lhs.false.182
                                        #   in Loop: Header=BB31_45 Depth=2
	movb	$1, %al
	cmpl	$1, -76(%rbp)
	movb	%al, -205(%rbp)         # 1-byte Spill
	jg	.LBB31_59
# BB#54:                                # %lor.rhs.185
                                        #   in Loop: Header=BB31_45 Depth=2
	movq	-48(%rbp), %rdi
	callq	OVERLAYP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -206(%rbp)         # 1-byte Spill
	jne	.LBB31_55
	jmp	.LBB31_58
.LBB31_55:                              # %land.rhs.188
                                        #   in Loop: Header=BB31_45 Depth=2
	movl	$168, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jne	.LBB31_57
# BB#56:                                # %lor.rhs.194
                                        #   in Loop: Header=BB31_45 Depth=2
	movl	$199, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB31_57:                              # %lor.end.202
                                        #   in Loop: Header=BB31_45 Depth=2
	movb	-225(%rbp), %al         # 1-byte Reload
	movb	%al, -206(%rbp)         # 1-byte Spill
.LBB31_58:                              # %land.end.203
                                        #   in Loop: Header=BB31_45 Depth=2
	movb	-206(%rbp), %al         # 1-byte Reload
	movb	%al, -205(%rbp)         # 1-byte Spill
.LBB31_59:                              # %lor.end.204
                                        #   in Loop: Header=BB31_45 Depth=2
	movb	-205(%rbp), %al         # 1-byte Reload
	movl	$574, %edi              # imm = 0x23E
	andb	$1, %al
	movb	%al, -77(%rbp)
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fnext_single_char_property_change
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB31_60
	jmp	.LBB31_61
.LBB31_60:                              # %cond.true.214
                                        #   in Loop: Header=BB31_45 Depth=2
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB31_62
.LBB31_61:                              # %cond.false.215
                                        #   in Loop: Header=BB31_45 Depth=2
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB31_62:                              # %cond.end.217
                                        #   in Loop: Header=BB31_45 Depth=2
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB31_45
.LBB31_63:                              # %while.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_64
.LBB31_64:                              # %while.cond.219
                                        #   Parent Loop BB31_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	752(%rsi), %rdx
	movb	%cl, -281(%rbp)         # 1-byte Spill
	jle	.LBB31_70
# BB#65:                                # %land.lhs.true.223
                                        #   in Loop: Header=BB31_64 Depth=2
	movl	$574, %edi              # imm = 0x23E
	movq	-24(%rbp), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-48(%rbp), %rcx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_char_property_and_overlay
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %r8b
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r8b, -281(%rbp)        # 1-byte Spill
	je	.LBB31_70
# BB#66:                                # %land.rhs.233
                                        #   in Loop: Header=BB31_64 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_68
# BB#67:                                # %cond.true.238
                                        #   in Loop: Header=BB31_64 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -332(%rbp)        # 4-byte Spill
	jmp	.LBB31_69
.LBB31_68:                              # %cond.false.244
                                        #   in Loop: Header=BB31_64 Depth=2
	movq	-40(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB31_69:                              # %cond.end.247
                                        #   in Loop: Header=BB31_64 Depth=2
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -281(%rbp)         # 1-byte Spill
.LBB31_70:                              # %land.end.250
                                        #   in Loop: Header=BB31_64 Depth=2
	movb	-281(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_71
	jmp	.LBB31_82
.LBB31_71:                              # %while.body.251
                                        #   in Loop: Header=BB31_64 Depth=2
	movb	$1, %al
	testb	$1, -77(%rbp)
	movb	%al, -333(%rbp)         # 1-byte Spill
	jne	.LBB31_78
# BB#72:                                # %lor.lhs.false.254
                                        #   in Loop: Header=BB31_64 Depth=2
	movb	$1, %al
	cmpl	$1, -76(%rbp)
	movb	%al, -333(%rbp)         # 1-byte Spill
	jg	.LBB31_78
# BB#73:                                # %lor.rhs.257
                                        #   in Loop: Header=BB31_64 Depth=2
	movq	-48(%rbp), %rdi
	callq	OVERLAYP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -334(%rbp)         # 1-byte Spill
	jne	.LBB31_74
	jmp	.LBB31_77
.LBB31_74:                              # %land.rhs.260
                                        #   in Loop: Header=BB31_64 Depth=2
	movl	$168, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-352(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -353(%rbp)         # 1-byte Spill
	jne	.LBB31_76
# BB#75:                                # %lor.rhs.266
                                        #   in Loop: Header=BB31_64 Depth=2
	movl	$199, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -353(%rbp)         # 1-byte Spill
.LBB31_76:                              # %lor.end.274
                                        #   in Loop: Header=BB31_64 Depth=2
	movb	-353(%rbp), %al         # 1-byte Reload
	movb	%al, -334(%rbp)         # 1-byte Spill
.LBB31_77:                              # %land.end.275
                                        #   in Loop: Header=BB31_64 Depth=2
	movb	-334(%rbp), %al         # 1-byte Reload
	movb	%al, -333(%rbp)         # 1-byte Spill
.LBB31_78:                              # %lor.end.276
                                        #   in Loop: Header=BB31_64 Depth=2
	movb	-333(%rbp), %al         # 1-byte Reload
	movl	$574, %edi              # imm = 0x23E
	andb	$1, %al
	movb	%al, -77(%rbp)
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fprevious_single_char_property_change
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB31_79
	jmp	.LBB31_80
.LBB31_79:                              # %cond.true.286
                                        #   in Loop: Header=BB31_64 Depth=2
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB31_81
.LBB31_80:                              # %cond.false.288
                                        #   in Loop: Header=BB31_64 Depth=2
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB31_81:                              # %cond.end.290
                                        #   in Loop: Header=BB31_64 Depth=2
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB31_64
.LBB31_82:                              # %while.end.292
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jge	.LBB31_96
# BB#83:                                # %land.lhs.true.297
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jle	.LBB31_96
# BB#84:                                # %if.then.302
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jne	.LBB31_91
# BB#85:                                # %land.lhs.true.307
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB31_87
# BB#86:                                # %lor.lhs.false.310
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB31_91
.LBB31_87:                              # %cond.true.313
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	$-1, -72(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB31_89
# BB#88:                                # %cond.true.318
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB31_90
.LBB31_89:                              # %cond.false.319
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB31_90:                              # %cond.end.320
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB31_95
.LBB31_91:                              # %cond.false.322
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB31_93
# BB#92:                                # %cond.true.327
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB31_94
.LBB31_93:                              # %cond.false.328
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB31_94:                              # %cond.end.329
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB31_95:                              # %cond.end.331
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	set_point
	movb	$1, -58(%rbp)
	movb	$1, -57(%rbp)
.LBB31_96:                              # %if.end.333
                                        #   in Loop: Header=BB31_1 Depth=1
	testb	$1, -9(%rbp)
	jne	.LBB31_131
# BB#97:                                # %land.lhs.true.335
                                        #   in Loop: Header=BB31_1 Depth=1
	testb	$1, -77(%rbp)
	jne	.LBB31_131
# BB#98:                                # %land.lhs.true.337
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB31_131
# BB#99:                                # %if.then.340
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB31_103
# BB#100:                               # %land.lhs.true.343
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_103
# BB#101:                               # %land.lhs.true.348
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB31_103
# BB#102:                               # %if.then.352
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$1, -58(%rbp)
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	set_point
	jmp	.LBB31_130
.LBB31_103:                             # %if.else
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_107
# BB#104:                               # %land.lhs.true.356
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB31_107
# BB#105:                               # %land.lhs.true.361
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB31_107
# BB#106:                               # %if.then.365
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$1, -58(%rbp)
	movb	$1, -57(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	set_point
	jmp	.LBB31_129
.LBB31_107:                             # %if.else.367
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	-8(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB31_109
# BB#108:                               # %cond.true.374
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB31_110
.LBB31_109:                             # %cond.false.375
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB31_110:                             # %cond.end.376
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_112
# BB#111:                               # %if.then.380
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_128
.LBB31_112:                             # %if.else.381
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$574, %edi              # imm = 0x23E
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-464(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_pos_property
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB31_114
# BB#113:                               # %cond.true.393
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-480(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -481(%rbp)         # 1-byte Spill
	je	.LBB31_122
	jmp	.LBB31_115
.LBB31_114:                             # %cond.false.397
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -481(%rbp)         # 1-byte Spill
	je	.LBB31_122
.LBB31_115:                             # %land.rhs.401
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB31_117
# BB#116:                               # %cond.true.406
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB31_118
.LBB31_117:                             # %cond.false.407
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB31_118:                             # %cond.end.408
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$574, %edi              # imm = 0x23E
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_pos_property
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	400(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB31_120
# BB#119:                               # %cond.true.419
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, -532(%rbp)        # 4-byte Spill
	jmp	.LBB31_121
.LBB31_120:                             # %cond.false.425
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	current_buffer, %rax
	movq	400(%rax), %rsi
	callq	invisible_prop
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB31_121:                             # %cond.end.428
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -481(%rbp)         # 1-byte Spill
.LBB31_122:                             # %land.end.433
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	-481(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_123
	jmp	.LBB31_127
.LBB31_123:                             # %if.then.434
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$1, -58(%rbp)
	movb	$1, -57(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB31_125
# BB#124:                               # %cond.true.439
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB31_126
.LBB31_125:                             # %cond.false.440
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB31_126:                             # %cond.end.441
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	set_point
.LBB31_127:                             # %if.end.443
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_128
.LBB31_128:                             # %if.end.444
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_129
.LBB31_129:                             # %if.end.445
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_130
.LBB31_130:                             # %if.end.446
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_131
.LBB31_131:                             # %if.end.447
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_132
.LBB31_132:                             # %if.end.448
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$0, -59(%rbp)
	jmp	.LBB31_1
.LBB31_133:                             # %while.end.449
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	retq
.Lfunc_end31:
	.size	adjust_point_for_property, .Lfunc_end31-adjust_point_for_property
	.cfi_endproc

	.globl	read_menu_command
	.align	16, 0x90
	.type	read_menu_command,@function
read_menu_command:                      # @read_menu_command
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
	subq	$320, %rsp              # imm = 0x140
	callq	SPECPDL_INDEX
	movl	$356, %edi              # imm = 0x164
	movq	%rax, -264(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	specbind
	xorl	%edi, %edi
	leaq	-256(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$30, %esi
	xorl	%ecx, %ecx
	movl	$1, %edi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -284(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movl	-284(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	read_key_sequence
	xorl	%edi, %edi
	movl	%eax, -268(%rbp)
	movq	-264(%rbp), %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	selected_frame, %rdx
	subq	$5, %rdx
	cmpq	$0, 376(%rdx)
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB32_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB32_2:                               # %if.end
	cmpl	$0, -268(%rbp)
	je	.LBB32_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$-1, -268(%rbp)
	jne	.LBB32_5
.LBB32_4:                               # %if.then.9
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB32_6
.LBB32_5:                               # %if.end.11
	movq	read_key_sequence_cmd, %rax
	movq	%rax, -8(%rbp)
.LBB32_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end32:
	.size	read_menu_command, .Lfunc_end32-read_menu_command
	.cfi_endproc

	.align	16, 0x90
	.type	safe_run_hook_funcall,@function
safe_run_hook_funcall:                  # @safe_run_hook_funcall
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
	subq	$48, %rsp
	movl	$901, %eax              # imm = 0x385
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$safe_run_hooks_1, %rdi
	movl	$2, %ecx
	movl	%ecx, %esi
	movabsq	$safe_run_hooks_error, %r8
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	internal_condition_case_n
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	safe_run_hook_funcall, .Lfunc_end33-safe_run_hook_funcall
	.cfi_endproc

	.globl	poll_for_input_1
	.align	16, 0x90
	.type	poll_for_input_1,@function
poll_for_input_1:                       # @poll_for_input_1
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
	subq	$16, %rsp
	callq	input_blocked_p
	testb	$1, %al
	jne	.LBB34_3
# BB#1:                                 # %land.lhs.true
	testb	$1, waiting_for_input
	jne	.LBB34_3
# BB#2:                                 # %if.then
	callq	gobble_input
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB34_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	poll_for_input_1, .Lfunc_end34-poll_for_input_1
	.cfi_endproc

	.globl	gobble_input
	.align	16, 0x90
	.type	gobble_input,@function
gobble_input:                           # @gobble_input
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
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	movb	$0, -5(%rbp)
	callq	store_user_signal_events
	movq	terminal_list, %rax
	movq	%rax, -16(%rbp)
.LBB35_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_6 Depth 2
                                        #     Child Loop BB35_17 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB35_29
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB35_28
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB35_1 Depth=1
	callq	input_blocked_p
	testb	$1, %al
	jne	.LBB35_4
	jmp	.LBB35_5
.LBB35_4:                               # %if.then.2
	movb	$1, pending_signals
	jmp	.LBB35_29
.LBB35_5:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	leaq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-88(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	movl	%eax, -88(%rbp)
.LBB35_6:                               # %while.cond.3
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-88(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB35_8
# BB#7:                                 # %while.body.6
                                        #   in Loop: Header=BB35_6 Depth=2
	movl	-28(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB35_6
.LBB35_8:                               # %while.end
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$-1, -28(%rbp)
	jne	.LBB35_10
# BB#9:                                 # %if.then.8
                                        #   in Loop: Header=BB35_1 Depth=1
	movb	$1, -5(%rbp)
	jmp	.LBB35_15
.LBB35_10:                              # %if.else
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$-2, -28(%rbp)
	jne	.LBB35_14
# BB#11:                                # %if.then.10
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	terminal_list, %rax
	cmpq	$0, 40(%rax)
	jne	.LBB35_13
# BB#12:                                # %if.then.13
	movl	$1, %edi
	movl	$10, %esi
	callq	terminate_due_to_signal
.LBB35_13:                              # %if.end.14
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$704, %edi              # imm = 0x2C0
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdelete_terminal
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB35_14:                              # %if.end.18
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_15
.LBB35_15:                              # %if.end.19
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB35_25
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	Vframe_list, %rax
	movq	%rax, -104(%rbp)
.LBB35_17:                              # %for.cond
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jne	.LBB35_19
# BB#18:                                # %land.rhs
                                        #   in Loop: Header=BB35_17 Depth=2
	movb	$1, %al
	movq	-104(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB35_19:                              # %land.end
                                        #   in Loop: Header=BB35_17 Depth=2
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_20
	jmp	.LBB35_24
.LBB35_20:                              # %for.body
                                        #   in Loop: Header=BB35_17 Depth=2
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB35_22
# BB#21:                                # %if.then.30
                                        #   in Loop: Header=BB35_17 Depth=2
	movq	-120(%rbp), %rdi
	callq	frame_make_pointer_visible
.LBB35_22:                              # %if.end.31
                                        #   in Loop: Header=BB35_17 Depth=2
	jmp	.LBB35_23
.LBB35_23:                              # %for.inc
                                        #   in Loop: Header=BB35_17 Depth=2
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB35_17
.LBB35_24:                              # %for.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_25
.LBB35_25:                              # %if.end.33
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-88(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	cmpl	$0, %eax
	je	.LBB35_27
# BB#26:                                # %if.then.38
                                        #   in Loop: Header=BB35_1 Depth=1
	leaq	-88(%rbp), %rdi
	callq	kbd_buffer_store_event
.LBB35_27:                              # %if.end.39
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_28
.LBB35_28:                              # %if.end.40
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB35_1
.LBB35_29:                              # %while.end.41
	testb	$1, -5(%rbp)
	je	.LBB35_32
# BB#30:                                # %land.lhs.true
	cmpl	$0, -4(%rbp)
	jne	.LBB35_32
# BB#31:                                # %if.then.45
	movl	$-1, -4(%rbp)
.LBB35_32:                              # %if.end.46
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gobble_input, .Lfunc_end35-gobble_input
	.cfi_endproc

	.globl	start_polling
	.align	16, 0x90
	.type	start_polling,@function
start_polling:                          # @start_polling
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
	subq	$48, %rsp
	testb	$1, interrupt_input
	jne	.LBB36_16
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	turn_on_atimers
	cmpq	$0, poll_timer
	je	.LBB36_3
# BB#2:                                 # %lor.lhs.false
	movq	poll_timer, %rax
	movq	24(%rax), %rax
	cmpq	globals+3224, %rax
	je	.LBB36_15
.LBB36_3:                               # %if.then.2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, globals+3224
	jge	.LBB36_5
# BB#4:                                 # %cond.true
	movq	globals+3224, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB36_6
.LBB36_5:                               # %cond.false
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB36_6
.LBB36_6:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB36_8
# BB#7:                                 # %cond.true.5
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB36_12
.LBB36_8:                               # %cond.false.6
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, globals+3224
	jge	.LBB36_10
# BB#9:                                 # %cond.true.8
	movq	globals+3224, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB36_11
.LBB36_10:                              # %cond.false.9
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB36_11
.LBB36_11:                              # %cond.end.10
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB36_12:                              # %cond.end.12
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_timespec
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	cmpq	$0, poll_timer
	je	.LBB36_14
# BB#13:                                # %if.then.16
	movq	poll_timer, %rdi
	callq	cancel_atimer
.LBB36_14:                              # %if.end
	movl	$2, %edi
	movabsq	$poll_for_input, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	start_atimer
	movq	%rax, poll_timer
.LBB36_15:                              # %if.end.18
	movl	poll_suppress_count, %eax
	addl	$-1, %eax
	movl	%eax, poll_suppress_count
.LBB36_16:                              # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	start_polling, .Lfunc_end36-start_polling
	.cfi_endproc

	.align	16, 0x90
	.type	poll_for_input,@function
poll_for_input:                         # @poll_for_input
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
	movq	%rdi, -8(%rbp)
	cmpl	$0, poll_suppress_count
	jne	.LBB37_2
# BB#1:                                 # %if.then
	movb	$1, pending_signals
.LBB37_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end37:
	.size	poll_for_input, .Lfunc_end37-poll_for_input
	.cfi_endproc

	.globl	input_polling_used
	.align	16, 0x90
	.type	input_polling_used,@function
input_polling_used:                     # @input_polling_used
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
	movb	interrupt_input, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end38:
	.size	input_polling_used, .Lfunc_end38-input_polling_used
	.cfi_endproc

	.globl	stop_polling
	.align	16, 0x90
	.type	stop_polling,@function
stop_polling:                           # @stop_polling
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
	testb	$1, interrupt_input
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movl	poll_suppress_count, %eax
	addl	$1, %eax
	movl	%eax, poll_suppress_count
.LBB39_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end39:
	.size	stop_polling, .Lfunc_end39-stop_polling
	.cfi_endproc

	.globl	set_poll_suppress_count
	.align	16, 0x90
	.type	set_poll_suppress_count,@function
set_poll_suppress_count:                # @set_poll_suppress_count
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB40_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, poll_suppress_count
	je	.LBB40_3
# BB#2:                                 # %if.then
	movl	$1, poll_suppress_count
	callq	start_polling
	jmp	.LBB40_7
.LBB40_3:                               # %if.else
	cmpl	$0, -4(%rbp)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, poll_suppress_count
	jne	.LBB40_6
# BB#5:                                 # %if.then.5
	callq	stop_polling
.LBB40_6:                               # %if.end
	jmp	.LBB40_7
.LBB40_7:                               # %if.end.6
	movl	-4(%rbp), %eax
	movl	%eax, poll_suppress_count
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	set_poll_suppress_count, .Lfunc_end40-set_poll_suppress_count
	.cfi_endproc

	.globl	bind_polling_period
	.align	16, 0x90
	.type	bind_polling_period,@function
bind_polling_period:                    # @bind_polling_period
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
	movl	%edi, -4(%rbp)
	movq	globals+3224, %rax
	movq	%rax, -16(%rbp)
	movslq	-4(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB41_2
# BB#1:                                 # %if.then
	movslq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB41_2:                               # %if.end
	movq	poll_timer, %rdi
	callq	stop_other_atimers
	callq	stop_polling
	movl	$758, %edi              # imm = 0x2F6
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	specbind
	callq	start_polling
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	bind_polling_period, .Lfunc_end41-bind_polling_period
	.cfi_endproc

	.globl	make_ctrl_char
	.align	16, 0x90
	.type	make_ctrl_char,@function
make_ctrl_char:                         # @make_ctrl_char
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
	movb	$1, %al
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	andl	$-128, %edi
	movl	%edi, -12(%rbp)
	testb	$1, %al
	jne	.LBB42_1
	jmp	.LBB42_2
.LBB42_1:                               # %cond.true
	movl	-8(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB42_4
	jmp	.LBB42_3
.LBB42_2:                               # %cond.false
	movslq	-8(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB42_4
.LBB42_3:                               # %if.then
	movl	-8(%rbp), %eax
	orl	$67108864, %eax         # imm = 0x4000000
	movl	%eax, -8(%rbp)
	movl	%eax, -4(%rbp)
	jmp	.LBB42_18
.LBB42_4:                               # %if.end
	movl	-8(%rbp), %eax
	andl	$127, %eax
	movl	%eax, -8(%rbp)
	cmpl	$64, -8(%rbp)
	jl	.LBB42_10
# BB#5:                                 # %land.lhs.true
	cmpl	$96, -8(%rbp)
	jge	.LBB42_10
# BB#6:                                 # %if.then.9
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	andl	$-97, %eax
	movl	%eax, -8(%rbp)
	cmpl	$65, -16(%rbp)
	jl	.LBB42_9
# BB#7:                                 # %land.lhs.true.13
	cmpl	$90, -16(%rbp)
	jg	.LBB42_9
# BB#8:                                 # %if.then.16
	movl	-8(%rbp), %eax
	orl	$33554432, %eax         # imm = 0x2000000
	movl	%eax, -8(%rbp)
.LBB42_9:                               # %if.end.18
	jmp	.LBB42_17
.LBB42_10:                              # %if.else
	cmpl	$97, -8(%rbp)
	jl	.LBB42_13
# BB#11:                                # %land.lhs.true.21
	cmpl	$122, -8(%rbp)
	jg	.LBB42_13
# BB#12:                                # %if.then.24
	movl	-8(%rbp), %eax
	andl	$-97, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB42_16
.LBB42_13:                              # %if.else.26
	cmpl	$32, -8(%rbp)
	jl	.LBB42_15
# BB#14:                                # %if.then.29
	movl	-8(%rbp), %eax
	orl	$67108864, %eax         # imm = 0x4000000
	movl	%eax, -8(%rbp)
.LBB42_15:                              # %if.end.31
	jmp	.LBB42_16
.LBB42_16:                              # %if.end.32
	jmp	.LBB42_17
.LBB42_17:                              # %if.end.33
	movl	-12(%rbp), %eax
	andl	$-67108865, %eax        # imm = 0xFFFFFFFFFBFFFFFF
	orl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB42_18:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end42:
	.size	make_ctrl_char, .Lfunc_end42-make_ctrl_char
	.cfi_endproc

	.globl	show_help_echo
	.align	16, 0x90
	.type	show_help_echo,@function
show_help_echo:                         # @show_help_echo
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_8
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB43_8
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB43_3
	jmp	.LBB43_4
.LBB43_3:                               # %if.then.3
	movl	$4, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	safe_call
	movq	%rax, -8(%rbp)
	jmp	.LBB43_5
.LBB43_4:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	safe_eval
	movq	%rax, -8(%rbp)
.LBB43_5:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB43_7
# BB#6:                                 # %if.then.7
	jmp	.LBB43_21
.LBB43_7:                               # %if.end.8
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.9
	testb	$1, noninteractive
	jne	.LBB43_16
# BB#9:                                 # %land.lhs.true.10
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB43_10
	jmp	.LBB43_16
.LBB43_10:                              # %if.then.12
	xorl	%edi, %edi
	movq	globals+2944, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_12
# BB#11:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB43_13
.LBB43_12:                              # %cond.false
	callq	some_mouse_moved
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB43_13:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$688, %edi              # imm = 0x2B0
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB43_15
# BB#14:                                # %if.then.19
	movq	-40(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-1048577, %rcx         # imm = 0xFFFFFFFFFFEFFFFF
	orq	$1048576, %rcx          # imm = 0x100000
	movq	%rcx, 208(%rax)
.LBB43_15:                              # %if.end.20
	jmp	.LBB43_16
.LBB43_16:                              # %if.end.21
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB43_18
# BB#17:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_21
.LBB43_18:                              # %if.then.25
	xorl	%edi, %edi
	movq	globals+2160, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_20
# BB#19:                                # %if.then.28
	movq	globals+2160, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fsubstitute_command_keys
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB43_20:                              # %if.end.31
	movq	-8(%rbp), %rdi
	callq	STRINGP
	andb	$1, %al
	movb	%al, help_echo_showing_p
.LBB43_21:                              # %if.end.33
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	show_help_echo, .Lfunc_end43-show_help_echo
	.cfi_endproc

	.align	16, 0x90
	.type	some_mouse_moved,@function
some_mouse_moved:                       # @some_mouse_moved
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
	testb	$1, ignore_mouse_drag_p
	je	.LBB44_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB44_11
.LBB44_2:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB44_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB44_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB44_3 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB44_5:                               # %land.end
                                        #   in Loop: Header=BB44_3 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_6
	jmp	.LBB44_10
.LBB44_6:                               # %for.body
                                        #   in Loop: Header=BB44_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$20, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB44_8
# BB#7:                                 # %if.then.3
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_11
.LBB44_8:                               # %if.end.5
                                        #   in Loop: Header=BB44_3 Depth=1
	jmp	.LBB44_9
.LBB44_9:                               # %for.inc
                                        #   in Loop: Header=BB44_3 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB44_3
.LBB44_10:                              # %for.end
	movq	$0, -8(%rbp)
.LBB44_11:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	some_mouse_moved, .Lfunc_end44-some_mouse_moved
	.cfi_endproc

	.globl	read_char
	.align	16, 0x90
	.type	read_char,@function
read_char:                              # @read_char
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
	subq	$1552, %rsp             # imm = 0x610
	xorl	%eax, %eax
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movb	$0, -515(%rbp)
	movq	current_kboard, %rcx
	movq	%rcx, -528(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -512(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -504(%rbp)
.LBB45_1:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_48 Depth 2
                                        #     Child Loop BB45_148 Depth 2
                                        #     Child Loop BB45_193 Depth 2
	movb	$0, -514(%rbp)
	movq	globals+2536, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_8
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2536, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	globals+2536, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, globals+2536
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB45_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_7
.LBB45_5:                               # %land.lhs.true.22
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_7
# BB#6:                                 # %if.then.29
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB45_7:                               # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, -513(%rbp)
	jmp	.LBB45_303
.LBB45_8:                               # %if.else
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$0, -513(%rbp)
# BB#9:                                 # %if.end.32
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_25
# BB#10:                                # %if.then.37
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$0, -529(%rbp)
	movq	globals+2520, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	globals+2520, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, globals+2520
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_13
# BB#11:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_13
# BB#12:                                # %if.then.53
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB45_14
.LBB45_13:                              # %if.else.57
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, -513(%rbp)
.LBB45_14:                              # %if.end.58
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_19
# BB#15:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$343, %edi              # imm = 0x157
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_19
# BB#16:                                # %land.lhs.true.70
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB45_18
# BB#17:                                # %lor.lhs.false.77
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_19
.LBB45_18:                              # %if.then.85
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, -529(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB45_19:                              # %if.end.88
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB45_24
# BB#20:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$921, %edi              # imm = 0x399
	movq	-56(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_23
# BB#21:                                # %lor.lhs.false.93
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$651, %edi              # imm = 0x28B
	movq	-56(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_23
# BB#22:                                # %lor.lhs.false.97
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, -529(%rbp)
	je	.LBB45_24
.LBB45_23:                              # %if.then.100
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-40(%rbp), %rax
	movb	$1, (%rax)
.LBB45_24:                              # %if.end.101
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_277
.LBB45_25:                              # %if.end.102
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2528, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_32
# BB#26:                                # %if.then.107
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2528, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	globals+2528, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, globals+2528
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_31
# BB#27:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB45_29
# BB#28:                                # %lor.lhs.false.124
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_31
.LBB45_29:                              # %land.lhs.true.132
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_31
# BB#30:                                # %if.then.139
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB45_31:                              # %if.end.142
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, -513(%rbp)
	jmp	.LBB45_277
.LBB45_32:                              # %if.end.143
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-808(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_41
# BB#33:                                # %if.then.147
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$636, %edi              # imm = 0x27C
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, internal_last_event_frame
	movq	%rax, globals+1248
	movq	globals+688, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-816(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_35
# BB#34:                                # %lor.lhs.false.152
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+3088, %rax
	movq	globals+688, %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	Flength
	sarq	$2, %rax
	movq	-824(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_36
.LBB45_35:                              # %if.then.156
	movq	$-2, -56(%rbp)
	jmp	.LBB45_338
.LBB45_36:                              # %if.end.157
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+688, %rdi
	movq	globals+3088, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -56(%rbp)
	movq	globals+688, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB45_37
	jmp	.LBB45_40
.LBB45_37:                              # %land.lhs.true.161
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$128, %rax
	cmpq	$0, %rax
	je	.LBB45_40
# BB#38:                                # %land.lhs.true.165
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jg	.LBB45_40
# BB#39:                                # %if.then.169
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$-129, %rax
	orq	$134217728, %rax        # imm = 0x8000000
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
.LBB45_40:                              # %if.end.173
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+3088, %rax
	addq	$1, %rax
	movq	%rax, globals+3088
	jmp	.LBB45_278
.LBB45_41:                              # %if.end.174
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	unread_switch_frame, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-832(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_43
# BB#42:                                # %if.then.178
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	unread_switch_frame, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, unread_switch_frame
	jmp	.LBB45_303
.LBB45_43:                              # %if.end.180
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$0, -12(%rbp)
	jl	.LBB45_64
# BB#44:                                # %if.then.183
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	echo_message_buffer, %rax
	cmpq	echo_area_buffer, %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -530(%rbp)
	testb	$1, input_pending
	jne	.LBB45_46
# BB#45:                                # %lor.lhs.false.188
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB45_46
	jmp	.LBB45_47
.LBB45_46:                              # %if.then.191
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	swallow_events
.LBB45_47:                              # %if.end.192
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_48
.LBB45_48:                              # %while.cond
                                        #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, input_pending
	movb	%cl, -833(%rbp)         # 1-byte Spill
	je	.LBB45_52
# BB#49:                                # %land.rhs
                                        #   in Loop: Header=BB45_48 Depth=2
	movb	$1, %al
	testb	$1, input_was_pending
	movb	%al, -834(%rbp)         # 1-byte Spill
	jne	.LBB45_51
# BB#50:                                # %lor.rhs
                                        #   in Loop: Header=BB45_48 Depth=2
	movb	globals+3427, %al
	xorb	$-1, %al
	movb	%al, -834(%rbp)         # 1-byte Spill
.LBB45_51:                              # %lor.end
                                        #   in Loop: Header=BB45_48 Depth=2
	movb	-834(%rbp), %al         # 1-byte Reload
	movb	%al, -833(%rbp)         # 1-byte Spill
.LBB45_52:                              # %land.end
                                        #   in Loop: Header=BB45_48 Depth=2
	movb	-833(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB45_53
	jmp	.LBB45_60
.LBB45_53:                              # %while.body
                                        #   in Loop: Header=BB45_48 Depth=2
	movb	input_pending, %al
	andb	$1, %al
	movb	%al, input_was_pending
	testb	$1, help_echo_showing_p
	je	.LBB45_56
# BB#54:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB45_48 Depth=2
	movq	selected_window, %rax
	cmpq	minibuf_window, %rax
	je	.LBB45_56
# BB#55:                                # %if.then.206
                                        #   in Loop: Header=BB45_48 Depth=2
	movl	$5, %edi
	callq	redisplay_preserve_echo_area
	jmp	.LBB45_57
.LBB45_56:                              # %if.else.207
                                        #   in Loop: Header=BB45_48 Depth=2
	callq	redisplay
.LBB45_57:                              # %if.end.208
                                        #   in Loop: Header=BB45_48 Depth=2
	testb	$1, input_pending
	jne	.LBB45_59
# BB#58:                                # %if.then.210
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_60
.LBB45_59:                              # %if.end.211
                                        #   in Loop: Header=BB45_48 Depth=2
	xorl	%edi, %edi
	callq	swallow_events
	jmp	.LBB45_48
.LBB45_60:                              # %while.end
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB45_63
# BB#61:                                # %land.lhs.true.214
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, -530(%rbp)
	je	.LBB45_63
# BB#62:                                # %if.then.217
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	echo_area_buffer, %rax
	movq	%rax, echo_message_buffer
.LBB45_63:                              # %if.end.218
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_64
.LBB45_64:                              # %if.end.219
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-848(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_68
# BB#65:                                # %land.lhs.true.223
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	echo_kboard, %rax
	cmpq	current_kboard, %rax
	jne	.LBB45_67
# BB#66:                                # %lor.lhs.false.226
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, ok_to_echo_at_next_pause
	jne	.LBB45_68
.LBB45_67:                              # %if.then.229
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	cancel_echoing
	jmp	.LBB45_69
.LBB45_68:                              # %if.else.230
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	echo_dash
.LBB45_69:                              # %if.end.231
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	%edi, -852(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-852(%rbp), %esi        # 4-byte Reload
	movl	-852(%rbp), %edx        # 4-byte Reload
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_82
# BB#70:                                # %land.lhs.true.237
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_82
# BB#71:                                # %land.lhs.true.241
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, noninteractive
	jne	.LBB45_82
# BB#72:                                # %land.lhs.true.243
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-880(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_82
# BB#73:                                # %land.lhs.true.247
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_82
# BB#74:                                # %land.lhs.true.252
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_82
# BB#75:                                # %land.lhs.true.257
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB45_82
# BB#76:                                # %if.then.259
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	read_char_minibuf_menu_prompt
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	andl	$-5, %edi
	cmpl	$2, %edi
	jne	.LBB45_79
# BB#77:                                # %land.lhs.true.266
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-2, %rax
	jne	.LBB45_79
# BB#78:                                # %if.then.270
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_343
.LBB45_79:                              # %if.end.271
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-888(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_81
# BB#80:                                # %if.then.275
	jmp	.LBB45_338
.LBB45_81:                              # %if.end.276
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_82
.LBB45_82:                              # %if.end.277
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	SPECPDL_INDEX
	leaq	-272(%rbp), %rdi
	movq	%rax, -64(%rbp)
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB45_100
# BB#83:                                # %if.then.281
                                        #   in Loop: Header=BB45_1 Depth=1
	leaq	-480(%rbp), %rdi
	callq	restore_getcjmp
	movl	$2, %edi
	movabsq	$empty_mask, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	pthread_sigmask
	xorl	%edi, %edi
	movq	-64(%rbp), %rdx
	movl	%eax, -892(%rbp)        # 4-byte Spill
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movslq	quit_char, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -56(%rbp)
	movq	selected_frame, %rdx
	movq	%rdx, internal_last_event_frame
	movq	internal_last_event_frame, %rdx
	movq	%rdx, globals+1248
	movq	globals+1104, %rdx
	movq	%rax, -912(%rbp)        # 8-byte Spill
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-920(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB45_85
# BB#84:                                # %if.then.292
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
.LBB45_85:                              # %if.end.294
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	cmpq	current_kboard, %rax
	je	.LBB45_99
# BB#86:                                # %if.then.298
	movq	-544(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -552(%rbp)
	testb	$1, single_kboard
	je	.LBB45_88
# BB#87:                                # %if.then.300
	callq	emacs_abort
.LBB45_88:                              # %if.end.301
	movq	-552(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_95
# BB#89:                                # %if.then.306
	jmp	.LBB45_90
.LBB45_90:                              # %while.cond.307
                                        # =>This Inner Loop Header: Depth=1
	movq	-552(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_92
# BB#91:                                # %while.body.315
                                        #   in Loop: Header=BB45_90 Depth=1
	movq	-552(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -552(%rbp)
	jmp	.LBB45_90
.LBB45_92:                              # %while.end.319
	xorl	%edi, %edi
	movq	-552(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_94
# BB#93:                                # %if.then.326
	callq	emacs_abort
.LBB45_94:                              # %if.end.327
	jmp	.LBB45_95
.LBB45_95:                              # %if.end.328
	movq	-552(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_97
# BB#96:                                # %if.then.333
	movq	-544(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
	jmp	.LBB45_98
.LBB45_97:                              # %if.else.335
	movq	-552(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB45_98:                              # %if.end.337
	movq	-544(%rbp), %rax
	movb	$1, 184(%rax)
	movq	-544(%rbp), %rax
	movq	%rax, current_kboard
	movq	$-6, -8(%rbp)
	jmp	.LBB45_343
.LBB45_99:                              # %if.end.338
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_213
.LBB45_100:                             # %if.end.339
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB45_102
# BB#101:                               # %if.then.341
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	timer_start_idle
.LBB45_102:                             # %if.end.342
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, minibuf_level
	jne	.LBB45_122
# BB#103:                               # %land.lhs.true.345
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB45_122
# BB#104:                               # %land.lhs.true.347
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB45_122
# BB#105:                               # %land.lhs.true.348
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, this_command_key_count
	jg	.LBB45_107
# BB#106:                               # %lor.lhs.false.351
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$566, %edi              # imm = 0x236
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	xorl	%edi, %edi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_122
.LBB45_107:                             # %land.lhs.true.357
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, noninteractive
	jne	.LBB45_122
# BB#108:                               # %land.lhs.true.359
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	echo_keystrokes_p
	testb	$1, %al
	jne	.LBB45_109
	jmp	.LBB45_122
.LBB45_109:                             # %land.lhs.true.362
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_115
# BB#110:                               # %lor.lhs.false.366
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	echo_area_buffer, %rdi
	callq	XBUFFER
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	720(%rax), %rax
	cmpq	16(%rax), %rdi
	je	.LBB45_115
# BB#111:                               # %lor.lhs.false.370
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, echo_kboard
	je	.LBB45_113
# BB#112:                               # %land.lhs.true.372
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	ok_to_echo_at_next_pause, %rax
	cmpq	echo_kboard, %rax
	je	.LBB45_115
.LBB45_113:                             # %lor.lhs.false.375
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, echo_kboard
	jne	.LBB45_122
# BB#114:                               # %land.lhs.true.377
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, ok_to_echo_at_next_pause
	je	.LBB45_122
.LBB45_115:                             # %if.then.379
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_117
# BB#116:                               # %if.then.384
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	echo_now
	jmp	.LBB45_121
.LBB45_117:                             # %if.else.385
                                        #   in Loop: Header=BB45_1 Depth=1
	leaq	-480(%rbp), %rdi
	callq	save_getcjmp
	leaq	-272(%rbp), %rdi
	callq	restore_getcjmp
	movl	$1, %eax
	movq	globals+608, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	sit_for
	leaq	-480(%rbp), %rdi
	movq	%rax, -560(%rbp)
	callq	restore_getcjmp
	movl	$901, %edi              # imm = 0x385
	movq	-560(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_120
# BB#118:                               # %land.lhs.true.393
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_120
# BB#119:                               # %if.then.398
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	echo_now
.LBB45_120:                             # %if.end.399
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_121
.LBB45_121:                             # %if.end.400
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_122
.LBB45_122:                             # %if.end.401
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB45_131
# BB#123:                               # %land.lhs.true.404
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$-2, -12(%rbp)
	je	.LBB45_131
# BB#124:                               # %land.lhs.true.407
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, globals+3040
	jle	.LBB45_131
# BB#125:                               # %land.lhs.true.410
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+3208, %rax
	subq	last_auto_save, %rax
	cmpq	$20, globals+3040
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jle	.LBB45_127
# BB#126:                               # %cond.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+3040, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB45_128
.LBB45_127:                             # %cond.false
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$20, %eax
	movl	%eax, %ecx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB45_128
.LBB45_128:                             # %cond.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	-976(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB45_131
# BB#129:                               # %land.lhs.true.416
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB45_131
# BB#130:                               # %if.then.418
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdo_auto_save
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	redisplay
.LBB45_131:                             # %if.end.422
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_142
# BB#132:                               # %land.lhs.true.427
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_142
# BB#133:                               # %land.lhs.true.431
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, noninteractive
	jne	.LBB45_142
# BB#134:                               # %land.lhs.true.433
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_142
# BB#135:                               # %land.lhs.true.437
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_142
# BB#136:                               # %land.lhs.true.442
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$651, %edi              # imm = 0x28B
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_142
# BB#137:                               # %land.lhs.true.448
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$921, %edi              # imm = 0x399
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_142
# BB#138:                               # %land.lhs.true.454
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_142
# BB#139:                               # %if.then.459
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	read_char_x_menu_prompt
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB45_141
# BB#140:                               # %if.then.462
	callq	timer_stop_idle
.LBB45_141:                             # %if.end.463
	jmp	.LBB45_338
.LBB45_142:                             # %if.end.464
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_167
# BB#143:                               # %land.lhs.true.468
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, noninteractive
	jne	.LBB45_167
# BB#144:                               # %land.lhs.true.470
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_167
# BB#145:                               # %if.then.474
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	selected_window, %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB45_147
# BB#146:                               # %if.then.479
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, last_non_minibuf_size
.LBB45_147:                             # %if.end.483
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	last_non_minibuf_size, %rax
	sarq	$8, %rax
	addq	$1, %rax
	movq	%rax, -576(%rbp)
	movl	$0, -564(%rbp)
.LBB45_148:                             # %while.cond.486
                                        #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$64, -576(%rbp)
	jle	.LBB45_150
# BB#149:                               # %while.body.489
                                        #   in Loop: Header=BB45_148 Depth=2
	movl	-564(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -564(%rbp)
	movq	-576(%rbp), %rcx
	sarq	$2, %rcx
	movq	-576(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -576(%rbp)
	jmp	.LBB45_148
.LBB45_150:                             # %while.end.493
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$4, -564(%rbp)
	jge	.LBB45_152
# BB#151:                               # %if.then.496
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$4, -564(%rbp)
.LBB45_152:                             # %if.end.497
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB45_164
# BB#153:                               # %land.lhs.true.500
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$-2, -12(%rbp)
	je	.LBB45_164
# BB#154:                               # %land.lhs.true.503
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+3208, %rax
	cmpq	last_auto_save, %rax
	jle	.LBB45_164
# BB#155:                               # %land.lhs.true.506
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+88, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_164
# BB#156:                               # %land.lhs.true.512
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+88, %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB45_164
# BB#157:                               # %if.then.516
                                        #   in Loop: Header=BB45_1 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	globals+88, %rcx
	sarq	$2, %rcx
	movq	%rcx, -592(%rbp)
	movq	-592(%rbp), %rcx
	movslq	-564(%rbp), %rdx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	cqto
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	shlq	$2, %rax
	cmpq	%rax, %rcx
	jge	.LBB45_159
# BB#158:                               # %cond.true.522
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-592(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB45_160
.LBB45_159:                             # %cond.false.523
                                        #   in Loop: Header=BB45_1 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-564(%rbp), %rcx
	cqto
	idivq	%rcx
	shlq	$2, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB45_160:                             # %cond.end.527
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-1072(%rbp), %rax       # 8-byte Reload
	leaq	-480(%rbp), %rdi
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rax, -592(%rbp)
	movslq	-564(%rbp), %rax
	imulq	-592(%rbp), %rax
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cqto
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	%rax, -592(%rbp)
	callq	save_getcjmp
	leaq	-272(%rbp), %rdi
	callq	restore_getcjmp
	movl	$1, %ecx
	movq	-592(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	sit_for
	leaq	-480(%rbp), %rdi
	movq	%rax, -584(%rbp)
	callq	restore_getcjmp
	movl	$901, %edi              # imm = 0x385
	movq	-584(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1088(%rbp), %r8        # 8-byte Reload
	cmpq	%rax, %r8
	jne	.LBB45_163
# BB#161:                               # %land.lhs.true.541
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_163
# BB#162:                               # %if.then.546
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdo_auto_save
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	redisplay
.LBB45_163:                             # %if.end.550
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_164
.LBB45_164:                             # %if.end.551
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB45_166
# BB#165:                               # %if.then.553
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	maybe_gc
.LBB45_166:                             # %if.end.554
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_167
.LBB45_167:                             # %if.end.555
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_170
# BB#168:                               # %land.lhs.true.559
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	cmpq	-528(%rbp), %rax
	je	.LBB45_170
# BB#169:                               # %if.then.562
	movq	$-6, -8(%rbp)
	jmp	.LBB45_343
.LBB45_170:                             # %if.end.563
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_176
# BB#171:                               # %if.then.568
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+2520, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	globals+2520, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, globals+2520
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_174
# BB#172:                               # %land.lhs.true.578
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_174
# BB#173:                               # %if.then.584
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB45_175
.LBB45_174:                             # %if.else.588
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, -513(%rbp)
.LBB45_175:                             # %if.end.589
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_176
.LBB45_176:                             # %if.end.590
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_190
# BB#177:                               # %if.then.594
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	testb	$1, 184(%rax)
	je	.LBB45_189
# BB#178:                               # %if.then.597
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movq	64(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_180
# BB#179:                               # %if.then.603
	callq	emacs_abort
.LBB45_180:                             # %if.end.604
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movq	64(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	current_kboard, %rdi
	movq	current_kboard, %rax
	movq	64(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	kset_kbd_queue
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	64(%rax), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_182
# BB#181:                               # %if.then.616
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movb	$0, 184(%rax)
.LBB45_182:                             # %if.end.618
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	readable_events
	andb	$1, %al
	movb	%al, input_pending
	movq	-56(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edi
	cmpl	$3, %edi
	jne	.LBB45_188
# BB#183:                               # %land.lhs.true.625
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_185
# BB#184:                               # %cond.true.630
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB45_186
.LBB45_185:                             # %cond.false.633
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB45_186:                             # %cond.end.634
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$895, %edi              # imm = 0x37F
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_188
# BB#187:                               # %if.then.641
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, internal_last_event_frame
.LBB45_188:                             # %if.end.647
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	internal_last_event_frame, %rax
	movq	%rax, globals+1248
.LBB45_189:                             # %if.end.648
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_190
.LBB45_190:                             # %if.end.649
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_199
# BB#191:                               # %land.lhs.true.653
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, single_kboard
	jne	.LBB45_199
# BB#192:                               # %if.then.655
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	all_kboards, %rax
	movq	%rax, -600(%rbp)
.LBB45_193:                             # %for.cond
                                        #   Parent Loop BB45_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -600(%rbp)
	je	.LBB45_198
# BB#194:                               # %for.body
                                        #   in Loop: Header=BB45_193 Depth=2
	movq	-600(%rbp), %rax
	testb	$1, 184(%rax)
	je	.LBB45_196
# BB#195:                               # %if.then.660
	movq	-600(%rbp), %rax
	movq	%rax, current_kboard
	movq	$-6, -8(%rbp)
	jmp	.LBB45_343
.LBB45_196:                             # %if.end.661
                                        #   in Loop: Header=BB45_193 Depth=2
	jmp	.LBB45_197
.LBB45_197:                             # %for.inc
                                        #   in Loop: Header=BB45_193 Depth=2
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	jmp	.LBB45_193
.LBB45_198:                             # %for.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_199
.LBB45_199:                             # %if.end.662
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_200
.LBB45_200:                             # %wrong_kboard
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_201
.LBB45_201:                             # %do.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-515(%rbp), %al
	testb	$1, %al
	jne	.LBB45_203
# BB#202:                               # %if.then.664
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	stop_polling
.LBB45_203:                             # %if.end.665
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, -515(%rbp)
# BB#204:                               # %do.end
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_212
# BB#205:                               # %if.then.669
                                        #   in Loop: Header=BB45_1 Depth=1
	leaq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	read_decoded_event_from_main_queue
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_209
# BB#206:                               # %land.lhs.true.675
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB45_209
# BB#207:                               # %land.lhs.true.677
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	current_timespec
	movq	%rax, -616(%rbp)
	movq	%rdx, -608(%rbp)
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-616(%rbp), %rdx
	movq	-608(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB45_209
# BB#208:                               # %if.then.682
	jmp	.LBB45_338
.LBB45_209:                             # %if.end.683
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$-6, -56(%rbp)
	jne	.LBB45_211
# BB#210:                               # %if.then.686
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_343
.LBB45_211:                             # %if.end.687
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_212
.LBB45_212:                             # %if.end.688
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_213
.LBB45_213:                             # %non_reread
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB45_215
# BB#214:                               # %if.then.690
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	timer_stop_idle
.LBB45_215:                             # %if.end.691
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_216
.LBB45_216:                             # %do.body.692
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-515(%rbp), %al
	testb	$1, %al
	je	.LBB45_218
# BB#217:                               # %if.then.694
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	start_polling
.LBB45_218:                             # %if.end.695
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$0, -515(%rbp)
# BB#219:                               # %do.end.696
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_225
# BB#220:                               # %if.then.700
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpl	$0, -12(%rbp)
	jl	.LBB45_224
# BB#221:                               # %land.lhs.true.703
                                        #   in Loop: Header=BB45_1 Depth=1
	testb	$1, input_pending
	jne	.LBB45_224
# BB#222:                               # %land.lhs.true.705
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB45_224
# BB#223:                               # %if.then.707
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	redisplay
.LBB45_224:                             # %if.end.708
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_200
.LBB45_225:                             # %if.end.709
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB45_226
	jmp	.LBB45_227
.LBB45_226:                             # %if.then.711
	jmp	.LBB45_338
.LBB45_227:                             # %if.end.712
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -496(%rbp)
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, globals+1928
	movq	globals+2192, %rdi
	callq	get_keymap
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -1204(%rbp)       # 4-byte Spill
	movl	-1204(%rbp), %ecx       # 4-byte Reload
	callq	access_keymap
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, globals+1928
	movq	-488(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_235
# BB#228:                               # %if.then.719
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$285, %edi              # imm = 0x11D
	movq	current_buffer, %rax
	movq	%rax, -624(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, globals+3008
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-488(%rbp), %rsi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	movq	%rsi, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
                                        # kill: RDI<def> EDI<kill>
	movabsq	$globals, %rsi
	addq	$3008, %rsi             # imm = 0xBC0
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	Fvector
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	-1232(%rbp), %rsi       # 8-byte Reload
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	call4
	movq	-56(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %r9d
	cmpl	$3, %r9d
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jne	.LBB45_232
# BB#229:                               # %land.lhs.true.729
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$840, %edi              # imm = 0x348
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_232
# BB#230:                               # %land.lhs.true.735
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB45_232
# BB#231:                               # %if.then.737
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	timer_resume_idle
.LBB45_232:                             # %if.end.738
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_buffer, %rax
	cmpq	-624(%rbp), %rax
	je	.LBB45_234
# BB#233:                               # %if.then.741
	movq	$-6, -56(%rbp)
	jmp	.LBB45_338
.LBB45_234:                             # %if.else.742
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_235:                             # %if.end.743
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_253
# BB#236:                               # %if.then.749
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-1, %rax
	jne	.LBB45_238
# BB#237:                               # %if.then.753
	jmp	.LBB45_338
.LBB45_238:                             # %if.end.754
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB45_239
	jmp	.LBB45_242
.LBB45_239:                             # %land.lhs.true.757
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_240
	jmp	.LBB45_241
.LBB45_240:                             # %cond.true.758
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	movq	current_kboard, %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	SCHARS
	addq	$0, %rax
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB45_249
	jmp	.LBB45_242
.LBB45_241:                             # %cond.false.766
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	movq	current_kboard, %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	SCHARS
	addq	$0, %rax
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB45_249
.LBB45_242:                             # %lor.lhs.false.774
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB45_243
	jmp	.LBB45_246
.LBB45_243:                             # %land.lhs.true.778
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_244
	jmp	.LBB45_245
.LBB45_244:                             # %cond.true.779
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	movq	current_kboard, %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	ASIZE
	addq	$0, %rax
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB45_249
	jmp	.LBB45_246
.LBB45_245:                             # %cond.false.787
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	movq	current_kboard, %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	ASIZE
	addq	$0, %rax
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB45_249
.LBB45_246:                             # %lor.lhs.false.795
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB45_247
	jmp	.LBB45_252
.LBB45_247:                             # %land.lhs.true.799
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB45_248
	jmp	.LBB45_252
.LBB45_248:                             # %land.lhs.true.802
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB45_252
.LBB45_249:                             # %if.then.806
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	current_kboard, %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	Faref
	xorl	%edi, %edi
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_251
# BB#250:                               # %if.then.812
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-632(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB45_251:                             # %if.end.813
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_252
.LBB45_252:                             # %if.end.814
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_253
.LBB45_253:                             # %if.end.815
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_261
# BB#254:                               # %land.lhs.true.820
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_261
# BB#255:                               # %land.lhs.true.828
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_261
# BB#256:                               # %land.lhs.true.835
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_261
# BB#257:                               # %if.then.845
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	%rax, %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movl	$651, %edi              # imm = 0x28B
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_259
# BB#258:                               # %lor.lhs.false.853
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$921, %edi              # imm = 0x399
	movq	-640(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_260
.LBB45_259:                             # %if.then.857
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-640(%rbp), %rax
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
	movq	-56(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-56(%rbp), %rdi
	movq	globals+2520, %rsi
	callq	Fcons
	movq	%rax, globals+2520
	movq	-640(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB45_260:                             # %if.end.865
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_261
.LBB45_261:                             # %if.end.866
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	record_char
	xorl	%edi, %edi
	movb	$1, -514(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_263
# BB#262:                               # %if.then.870
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-512(%rbp), %rdi
	callq	record_char
.LBB45_263:                             # %if.end.871
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_269
# BB#264:                               # %land.lhs.true.877
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1144, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_269
# BB#265:                               # %land.lhs.true.881
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$32, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB45_269
# BB#266:                               # %land.lhs.true.885
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jge	.LBB45_269
# BB#267:                               # %land.lhs.true.889
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$127, %rax
	je	.LBB45_269
# BB#268:                               # %if.then.893
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	Fcurrent_message
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, globals+1152
.LBB45_269:                             # %if.end.895
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_273
# BB#270:                               # %lor.lhs.false.900
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$516, %edi              # imm = 0x204
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	je	.LBB45_276
# BB#271:                               # %land.lhs.true.906
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$895, %edi              # imm = 0x37F
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	je	.LBB45_276
# BB#272:                               # %land.lhs.true.912
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$840, %edi              # imm = 0x348
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	je	.LBB45_276
.LBB45_273:                             # %if.then.918
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	echo_area_buffer, %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_275
# BB#274:                               # %if.then.922
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$355, %edi              # imm = 0x163
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	movl	$1, %edi
	xorl	%esi, %esi
	callq	clear_message
.LBB45_275:                             # %if.end.924
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_276
.LBB45_276:                             # %if.end.925
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_277
.LBB45_277:                             # %reread_for_input_method
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_278
.LBB45_278:                             # %from_macro
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_300
# BB#279:                               # %land.lhs.true.931
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1144, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_300
# BB#280:                               # %land.lhs.true.935
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_300
# BB#281:                               # %land.lhs.true.939
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$32, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB45_300
# BB#282:                               # %land.lhs.true.943
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jge	.LBB45_300
# BB#283:                               # %land.lhs.true.947
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$127, %rax
	je	.LBB45_300
# BB#284:                               # %if.then.951
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	SPECPDL_INDEX
	movq	%rax, -672(%rbp)
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$1, %cl
	andb	$1, %cl
	movb	%cl, -673(%rbp)
	movq	ok_to_echo_at_next_pause, %rax
	movq	%rax, -688(%rbp)
	movq	current_kboard, %rax
	movq	176(%rax), %rax
	movq	%rax, -696(%rbp)
	movq	current_kboard, %rax
	movq	192(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	this_command_key_count, %rax
	movq	%rax, -656(%rbp)
	movq	this_single_command_key_start, %rax
	movq	%rax, -664(%rbp)
	cmpq	$0, -656(%rbp)
	jle	.LBB45_286
# BB#285:                               # %if.then.960
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	this_command_keys, %rdi
	callq	Fcopy_sequence
	movq	%rax, -648(%rbp)
	jmp	.LBB45_287
.LBB45_286:                             # %if.else.962
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -648(%rbp)
.LBB45_287:                             # %if.end.964
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	$0, this_command_key_count
	movq	$0, this_single_command_key_start
	movq	echo_area_buffer, %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_289
# BB#288:                               # %if.then.968
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$355, %edi              # imm = 0x163
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
.LBB45_289:                             # %if.end.970
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	callq	clear_message
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	echo_truncate
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -1380(%rbp)       # 4-byte Spill
	movl	-1380(%rbp), %edx       # 4-byte Reload
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_291
# BB#290:                               # %if.then.975
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$551, %edi              # imm = 0x227
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB45_291:                             # %if.end.978
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	globals+1144, %rdi
	movq	-56(%rbp), %rsi
	callq	call1
	movq	%rax, -488(%rbp)
	movq	-672(%rbp), %rdi
	movq	-488(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -488(%rbp)
	movq	-656(%rbp), %rax
	movq	%rax, this_command_key_count
	movq	-664(%rbp), %rax
	movq	%rax, this_single_command_key_start
	cmpq	$0, -656(%rbp)
	jle	.LBB45_293
# BB#292:                               # %if.then.983
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-648(%rbp), %rax
	movq	%rax, this_command_keys
.LBB45_293:                             # %if.end.984
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	cancel_echoing
	movq	-688(%rbp), %rax
	movq	%rax, ok_to_echo_at_next_pause
	movq	current_kboard, %rdi
	movq	-696(%rbp), %rsi
	callq	kset_echo_string
	movq	current_kboard, %rdi
	movq	-704(%rbp), %rsi
	callq	kset_echo_prompt
	testb	$1, -673(%rbp)
	je	.LBB45_295
# BB#294:                               # %if.then.986
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	echo_now
.LBB45_295:                             # %if.end.987
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB45_299
# BB#296:                               # %if.then.992
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	-504(%rbp), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_298
# BB#297:                               # %if.then.996
                                        #   in Loop: Header=BB45_1 Depth=1
	movabsq	$.L.str.3, %rdi
	xorl	%edx, %edx
	movq	-504(%rbp), %rsi
	callq	message_with_string
.LBB45_298:                             # %if.end.997
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_299:                             # %if.end.998
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-488(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-488(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	globals+2536, %rsi
	callq	nconc2
	movq	%rax, globals+2536
.LBB45_300:                             # %if.end.1005
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-514(%rbp), %al
	testb	$1, %al
	jne	.LBB45_302
# BB#301:                               # %if.then.1007
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	record_char
	movb	$1, -514(%rbp)
.LBB45_302:                             # %if.end.1008
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_303
.LBB45_303:                             # %reread_first
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_308
# BB#304:                               # %land.lhs.true.1013
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$516, %edi              # imm = 0x204
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1416(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_308
# BB#305:                               # %if.then.1019
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcar
	movq	%rax, -712(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcar
	movq	%rax, -736(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcar
	movq	%rax, -720(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -744(%rbp)
	movq	-744(%rbp), %rdi
	callq	Fcar
	movq	%rax, -728(%rbp)
	movq	-712(%rbp), %rdi
	movq	-736(%rbp), %rsi
	movq	-720(%rbp), %rdx
	movq	-728(%rbp), %rcx
	callq	show_help_echo
	cmpq	$0, -48(%rbp)
	jne	.LBB45_307
# BB#306:                               # %if.then.1032
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	timer_resume_idle
.LBB45_307:                             # %if.end.1033
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_308:                             # %if.end.1034
	movb	-513(%rbp), %al
	testb	$1, %al
	je	.LBB45_310
# BB#309:                               # %lor.lhs.false.1036
	cmpq	$0, this_command_key_count
	jne	.LBB45_320
.LBB45_310:                             # %land.lhs.true.1039
	cmpq	$0, -48(%rbp)
	jne	.LBB45_320
# BB#311:                               # %if.then.1041
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_316
# BB#312:                               # %land.lhs.true.1046
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_314
# BB#313:                               # %cond.true.1051
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	jmp	.LBB45_315
.LBB45_314:                             # %cond.false.1054
	movq	-56(%rbp), %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
.LBB45_315:                             # %cond.end.1055
	movq	-1424(%rbp), %rax       # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$690, %edi              # imm = 0x2B2
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1440(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_317
.LBB45_316:                             # %if.then.1062
	movq	current_kboard, %rax
	movq	%rax, ok_to_echo_at_next_pause
.LBB45_317:                             # %if.end.1063
	movq	-56(%rbp), %rdi
	callq	add_command_key
	xorl	%edi, %edi
	movq	-512(%rbp), %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1448(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_319
# BB#318:                               # %if.then.1067
	movq	-512(%rbp), %rdi
	callq	add_command_key
.LBB45_319:                             # %if.end.1068
	callq	echo_update
.LBB45_320:                             # %if.end.1069
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, globals+3008
	movq	num_input_events, %rax
	addq	$1, %rax
	movq	%rax, num_input_events
	movq	globals+984, %rax
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_337
# BB#321:                               # %land.lhs.true.1074
	movq	-56(%rbp), %rdi
	callq	help_char_p
	testb	$1, %al
	jne	.LBB45_322
	jmp	.LBB45_337
.LBB45_322:                             # %if.then.1077
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -752(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fcurrent_window_configuration
	movq	help_form_saved_window_configs, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movabsq	$read_char_help_form_unwind, %rdi
	movq	%rax, help_form_saved_window_configs
	callq	record_unwind_protect_void
	movl	$517, %edi              # imm = 0x205
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	cancel_echoing
.LBB45_323:                             # %do.body.1085
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1472(%rbp), %rsi       # 8-byte Reload
	movq	%rdx, -1480(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1480(%rbp), %rcx       # 8-byte Reload
	movq	-1480(%rbp), %r8        # 8-byte Reload
	callq	read_char
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB45_329
# BB#324:                               # %land.lhs.true.1093
                                        #   in Loop: Header=BB45_323 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_326
# BB#325:                               # %cond.true.1098
                                        #   in Loop: Header=BB45_323 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	jmp	.LBB45_327
.LBB45_326:                             # %cond.false.1101
                                        #   in Loop: Header=BB45_323 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
.LBB45_327:                             # %cond.end.1102
                                        #   in Loop: Header=BB45_323 Depth=1
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$685, %edi              # imm = 0x2AD
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1504(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_329
# BB#328:                               # %if.then.1109
                                        #   in Loop: Header=BB45_323 Depth=1
	xorl	%edi, %edi
	movq	help_form_saved_window_configs, %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB45_329:                             # %if.end.1111
                                        #   in Loop: Header=BB45_323 Depth=1
	jmp	.LBB45_330
.LBB45_330:                             # %do.cond
                                        #   in Loop: Header=BB45_323 Depth=1
	movq	-56(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB45_323
# BB#331:                               # %do.end.1113
	xorl	%edi, %edi
	movq	-752(%rbp), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	callq	redisplay
	cmpq	$130, -56(%rbp)
	jne	.LBB45_336
# BB#332:                               # %if.then.1118
	callq	cancel_echoing
.LBB45_333:                             # %do.body.1119
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1536(%rbp), %rsi       # 8-byte Reload
	movq	%rdx, -1544(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1544(%rbp), %rcx       # 8-byte Reload
	movq	-1544(%rbp), %r8        # 8-byte Reload
	callq	read_char
	movq	%rax, -56(%rbp)
# BB#334:                               # %do.cond.1123
                                        #   in Loop: Header=BB45_333 Depth=1
	movq	-56(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB45_333
# BB#335:                               # %do.end.1125
	jmp	.LBB45_336
.LBB45_336:                             # %if.end.1126
	jmp	.LBB45_337
.LBB45_337:                             # %if.end.1127
	jmp	.LBB45_338
.LBB45_338:                             # %exit
	jmp	.LBB45_339
.LBB45_339:                             # %do.body.1128
	movb	-515(%rbp), %al
	testb	$1, %al
	je	.LBB45_341
# BB#340:                               # %if.then.1130
	callq	start_polling
.LBB45_341:                             # %if.end.1131
	movb	$0, -515(%rbp)
# BB#342:                               # %do.end.1133
	movb	input_pending, %al
	andb	$1, %al
	movb	%al, input_was_pending
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB45_343:                             # %return
	movq	-8(%rbp), %rax
	addq	$1552, %rsp             # imm = 0x610
	popq	%rbp
	retq
.Lfunc_end45:
	.size	read_char, .Lfunc_end45-read_char
	.cfi_endproc

	.globl	detect_input_pending_run_timers
	.align	16, 0x90
	.type	detect_input_pending_run_timers,@function
detect_input_pending_run_timers:        # @detect_input_pending_run_timers
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
	subq	$16, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	movl	timers_run, %edi
	movl	%edi, -8(%rbp)
	testb	$1, input_pending
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	get_input_pending
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB46_2:                               # %if.end
	movl	-8(%rbp), %eax
	cmpl	timers_run, %eax
	je	.LBB46_5
# BB#3:                                 # %land.lhs.true
	testb	$1, -1(%rbp)
	je	.LBB46_5
# BB#4:                                 # %if.then.2
	movl	$8, %edi
	callq	redisplay_preserve_echo_area
.LBB46_5:                               # %if.end.3
	movb	input_pending, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	detect_input_pending_run_timers, .Lfunc_end46-detect_input_pending_run_timers
	.cfi_endproc

	.globl	swallow_events
	.align	16, 0x90
	.type	swallow_events,@function
swallow_events:                         # @swallow_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	callq	process_special_events
	movl	$1, %edi
	movl	timers_run, %ecx
	movl	%ecx, -8(%rbp)
	callq	get_input_pending
	testb	$1, input_pending
	movb	%al, -9(%rbp)           # 1-byte Spill
	jne	.LBB47_4
# BB#1:                                 # %land.lhs.true
	movl	timers_run, %eax
	cmpl	-8(%rbp), %eax
	je	.LBB47_4
# BB#2:                                 # %land.lhs.true.1
	testb	$1, -1(%rbp)
	je	.LBB47_4
# BB#3:                                 # %if.then
	movl	$7, %edi
	callq	redisplay_preserve_echo_area
.LBB47_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	swallow_events, .Lfunc_end47-swallow_events
	.cfi_endproc

	.align	16, 0x90
	.type	echo_dash,@function
echo_dash:                              # @echo_dash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	176(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_2
# BB#1:                                 # %if.then
	jmp	.LBB48_14
.LBB48_2:                               # %if.end
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB48_5
# BB#3:                                 # %land.lhs.true
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB48_5
# BB#4:                                 # %if.then.4
	jmp	.LBB48_14
.LBB48_5:                               # %if.end.5
	movq	current_kboard, %rax
	movq	192(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB48_6
	jmp	.LBB48_8
.LBB48_6:                               # %land.lhs.true.7
	movq	current_kboard, %rax
	movq	192(%rax), %rdi
	callq	SCHARS
	movq	current_kboard, %rdi
	movq	176(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB48_8
# BB#7:                                 # %if.then.13
	jmp	.LBB48_14
.LBB48_8:                               # %if.end.14
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	SCHARS
	cmpq	$1, %rax
	jle	.LBB48_13
# BB#9:                                 # %if.then.18
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	SCHARS
	subq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Faref
	movq	%rax, -16(%rbp)
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	SCHARS
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Faref
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$45, %rax
	jne	.LBB48_12
# BB#10:                                # %land.lhs.true.31
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$32, %rax
	je	.LBB48_12
# BB#11:                                # %if.then.34
	jmp	.LBB48_14
.LBB48_12:                              # %if.end.35
	jmp	.LBB48_13
.LBB48_13:                              # %if.end.36
	movl	$4, %esi
	leaq	-64(%rbp), %rax
	movabsq	$.L.str.191, %rcx
	movq	$1, -64(%rbp)
	movq	$-1, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	current_kboard, %rdi
	movq	current_kboard, %rax
	movq	176(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	concat2
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_string
	callq	echo_now
.LBB48_14:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	echo_dash, .Lfunc_end48-echo_dash
	.cfi_endproc

	.align	16, 0x90
	.type	read_char_minibuf_menu_prompt,@function
read_char_minibuf_menu_prompt:          # @read_char_minibuf_menu_prompt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB49_1
	jmp	.LBB49_3
.LBB49_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB49_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB49_4
.LBB49_3:                               # %cond.false
	callq	emacs_abort
.LBB49_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-376(%rbp), %rax        # 8-byte Reload
	movl	272(%rax), %ecx
	subl	$4, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -48(%rbp)
	movq	$-1, -56(%rbp)
	movb	$1, -57(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	testb	$1, globals+3409
	jne	.LBB49_6
# BB#5:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB49_82
.LBB49_6:                               # %if.end
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fkeymap_prompt
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB49_8
# BB#7:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB49_82
.LBB49_8:                               # %if.end.11
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	Fcons
	movabsq	$.L.str.379, %rdi
	movq	%rax, -88(%rbp)
	callq	build_unibyte_string
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	SCHARS
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB49_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_10 Depth 2
                                        #     Child Loop BB49_71 Depth 2
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB49_10:                              # %while.cond.16
                                        #   Parent Loop BB49_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB49_70
# BB#11:                                # %while.body.19
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_17
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB49_10 Depth=2
	testb	$1, -89(%rbp)
	jne	.LBB49_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB49_10 Depth=2
	testb	$1, -57(%rbp)
	je	.LBB49_15
.LBB49_14:                              # %if.then.28
                                        #   in Loop: Header=BB49_9 Depth=1
	jmp	.LBB49_70
.LBB49_15:                              # %if.else
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
# BB#16:                                # %if.end.29
                                        #   in Loop: Header=BB49_10 Depth=2
	jmp	.LBB49_17
.LBB49_17:                              # %if.end.30
                                        #   in Loop: Header=BB49_10 Depth=2
	cmpq	$0, -56(%rbp)
	jl	.LBB49_19
# BB#18:                                # %if.then.33
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	jmp	.LBB49_20
.LBB49_19:                              # %if.else.35
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-72(%rbp), %rdi
	callq	Fcar_safe
	movq	%rax, -136(%rbp)
.LBB49_20:                              # %if.end.37
                                        #   in Loop: Header=BB49_10 Depth=2
	cmpq	$0, -56(%rbp)
	jge	.LBB49_23
# BB#21:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-136(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB49_22
	jmp	.LBB49_23
.LBB49_22:                              # %if.then.43
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-72(%rbp), %rdi
	callq	Fcdr_safe
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -56(%rbp)
	jmp	.LBB49_69
.LBB49_23:                              # %if.else.45
                                        #   in Loop: Header=BB49_10 Depth=2
	cmpq	$0, -56(%rbp)
	jge	.LBB49_25
# BB#24:                                # %if.then.48
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-136(%rbp), %rdi
	callq	Fcar_safe
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rdi
	callq	Fcdr_safe
	movq	%rax, -136(%rbp)
	jmp	.LBB49_26
.LBB49_25:                              # %if.else.51
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -144(%rbp)
.LBB49_26:                              # %if.end.53
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB49_62
# BB#27:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB49_10 Depth=2
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-136(%rbp), %rdi
	callq	parse_menu_item
	testb	$1, %al
	jne	.LBB49_28
	jmp	.LBB49_62
.LBB49_28:                              # %if.then.61
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	%edi, %esi
	movq	%rax, -184(%rbp)
	movq	item_properties, %rdi
	callq	AREF
	movq	%rax, -192(%rbp)
	movq	-144(%rbp), %rdi
	callq	Fupcase
	movq	%rax, -168(%rbp)
	movq	-144(%rbp), %rdi
	callq	Fdowncase
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	sarq	$2, %rax
	movq	-192(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	SREF
	movb	$1, %dl
	movzbl	%al, %ecx
	movl	%ecx, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	cmpq	%rsi, %rdi
	movb	%dl, -393(%rbp)         # 1-byte Spill
	je	.LBB49_30
# BB#29:                                # %lor.rhs
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-176(%rbp), %rcx
	sarq	$2, %rcx
	movq	-192(%rbp), %rdi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	SREF
	movzbl	%al, %edx
	movl	%edx, %ecx
	movq	-408(%rbp), %rsi        # 8-byte Reload
	cmpq	%rcx, %rsi
	sete	%al
	movb	%al, -393(%rbp)         # 1-byte Spill
.LBB49_30:                              # %lor.end
                                        #   in Loop: Header=BB49_10 Depth=2
	movb	-393(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -153(%rbp)
	testb	$1, -153(%rbp)
	jne	.LBB49_32
# BB#31:                                # %if.then.76
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsingle_key_description
	movq	%rax, -184(%rbp)
.LBB49_32:                              # %if.end.79
                                        #   in Loop: Header=BB49_10 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movl	$101, %edi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB49_34
# BB#33:                                # %lor.lhs.false.84
                                        #   in Loop: Header=BB49_10 Depth=2
	movl	$130, %edi
	movq	-152(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_44
.LBB49_34:                              # %if.then.88
                                        #   in Loop: Header=BB49_10 Depth=2
	movl	$6, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movl	$4, %esi
	leaq	-240(%rbp), %rdi
	movabsq	$.L.str.380, %rcx
	movq	%rax, -200(%rbp)
	movq	$4, -240(%rbp)
	movq	$-1, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	%rcx, -216(%rbp)
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-280(%rbp), %rcx
	movabsq	$.L.str.381, %rdi
	movq	%rax, -208(%rbp)
	movq	$4, -280(%rbp)
	movq	$-1, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	%rdi, -256(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-320(%rbp), %rcx
	movabsq	$.L.str.382, %rdi
	movq	%rax, -248(%rbp)
	movq	$4, -320(%rbp)
	movq	$-1, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	%rdi, -296(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-360(%rbp), %rcx
	movabsq	$.L.str.383, %rdi
	movq	%rax, -288(%rbp)
	movq	$4, -360(%rbp)
	movq	$-1, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	%rdi, -336(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$101, %edi
	movq	%rax, -328(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_39
# BB#35:                                # %if.then.120
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_37
# BB#36:                                # %cond.true.124
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-208(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB49_38
.LBB49_37:                              # %cond.false.125
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-248(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB49_38:                              # %cond.end.126
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	jmp	.LBB49_43
.LBB49_39:                              # %if.else.128
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_41
# BB#40:                                # %cond.true.132
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-288(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB49_42
.LBB49_41:                              # %cond.false.133
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-328(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB49_42:                              # %cond.end.134
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
.LBB49_43:                              # %if.end.136
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-152(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	concat2
	movq	%rax, -192(%rbp)
.LBB49_44:                              # %if.end.138
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-192(%rbp), %rdi
	callq	SCHARS
	addq	-112(%rbp), %rax
	addq	$2, %rax
	testb	$1, -153(%rbp)
	movq	%rax, -480(%rbp)        # 8-byte Spill
	je	.LBB49_46
# BB#45:                                # %cond.true.144
                                        #   in Loop: Header=BB49_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB49_47
.LBB49_46:                              # %cond.false.145
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-184(%rbp), %rdi
	callq	SCHARS
	addq	$3, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB49_47:                              # %cond.end.148
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	-48(%rbp), %rcx
	jl	.LBB49_49
# BB#48:                                # %lor.lhs.false.153
                                        #   in Loop: Header=BB49_10 Depth=2
	testb	$1, -89(%rbp)
	jne	.LBB49_60
.LBB49_49:                              # %if.then.155
                                        #   in Loop: Header=BB49_10 Depth=2
	testb	$1, -89(%rbp)
	je	.LBB49_51
# BB#50:                                # %if.then.157
                                        #   in Loop: Header=BB49_10 Depth=2
	movabsq	$.L.str.384, %rdi
	callq	build_unibyte_string
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -112(%rbp)
.LBB49_51:                              # %if.end.161
                                        #   in Loop: Header=BB49_10 Depth=2
	movb	$1, -89(%rbp)
	movb	$0, -57(%rbp)
	testb	$1, -153(%rbp)
	jne	.LBB49_56
# BB#52:                                # %if.then.163
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-184(%rbp), %rdi
	callq	SCHARS
	movq	-48(%rbp), %rdi
	subq	-112(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB49_54
# BB#53:                                # %cond.true.168
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-184(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB49_55
.LBB49_54:                              # %cond.false.170
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-48(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB49_55:                              # %cond.end.172
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -368(%rbp)
	movq	-184(%rbp), %rdi
	movq	-368(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	Fsubstring
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movabsq	$.L.str.385, %rdi
	movq	%rax, -104(%rbp)
	movq	-368(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	build_unibyte_string
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -112(%rbp)
.LBB49_56:                              # %if.end.182
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-192(%rbp), %rdi
	callq	SCHARS
	movq	-48(%rbp), %rdi
	subq	-112(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB49_58
# BB#57:                                # %cond.true.187
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-192(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB49_59
.LBB49_58:                              # %cond.false.189
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-48(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB49_59:                              # %cond.end.191
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -368(%rbp)
	movq	-192(%rbp), %rdi
	movq	-368(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	Fsubstring
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -104(%rbp)
	movq	-368(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB49_61
.LBB49_60:                              # %if.else.198
                                        #   in Loop: Header=BB49_9 Depth=1
	movabsq	$.L.str.386, %rdi
	callq	build_unibyte_string
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -104(%rbp)
	jmp	.LBB49_70
.LBB49_61:                              # %if.end.201
                                        #   in Loop: Header=BB49_10 Depth=2
	jmp	.LBB49_62
.LBB49_62:                              # %if.end.202
                                        #   in Loop: Header=BB49_10 Depth=2
	cmpq	$0, -56(%rbp)
	jl	.LBB49_65
# BB#63:                                # %land.lhs.true.205
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	-80(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-512(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB49_65
# BB#64:                                # %if.then.210
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	$-1, -56(%rbp)
.LBB49_65:                              # %if.end.211
                                        #   in Loop: Header=BB49_10 Depth=2
	cmpq	$0, -56(%rbp)
	jl	.LBB49_67
# BB#66:                                # %if.then.214
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB49_68
.LBB49_67:                              # %if.else.215
                                        #   in Loop: Header=BB49_10 Depth=2
	movq	-72(%rbp), %rdi
	callq	Fcdr_safe
	movq	%rax, -72(%rbp)
.LBB49_68:                              # %if.end.217
                                        #   in Loop: Header=BB49_10 Depth=2
	jmp	.LBB49_69
.LBB49_69:                              # %if.end.218
                                        #   in Loop: Header=BB49_10 Depth=2
	jmp	.LBB49_10
.LBB49_70:                              # %while.end
                                        #   in Loop: Header=BB49_9 Depth=1
	movabsq	$.L.str.387, %rdi
	callq	intern
	movq	-104(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	Fnreverse
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	apply1
	movq	%rax, %rdi
	callq	message3_nolog
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	72(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	current_kboard, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_defining_kbd_macro
.LBB49_71:                              # %do.body
                                        #   Parent Loop BB49_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movl	-12(%rbp), %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-532(%rbp), %edi        # 4-byte Reload
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movq	-552(%rbp), %r8         # 8-byte Reload
	callq	read_char
	movq	%rax, -120(%rbp)
# BB#72:                                # %do.cond
                                        #   in Loop: Header=BB49_71 Depth=2
	movq	-120(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB49_71
# BB#73:                                # %do.end
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	current_kboard, %rdi
	movq	-128(%rbp), %rsi
	callq	kset_defining_kbd_macro
	movq	-120(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB49_78
# BB#74:                                # %lor.lhs.false.232
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	-120(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-2, %rax
	je	.LBB49_78
# BB#75:                                # %lor.lhs.false.236
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	-120(%rbp), %rax
	cmpq	globals+3024, %rax
	je	.LBB49_81
# BB#76:                                # %land.lhs.true.239
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	globals+3024, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB49_78
# BB#77:                                # %lor.lhs.false.245
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	-120(%rbp), %rax
	movq	globals+3024, %rcx
	sarq	$2, %rcx
	andq	$31, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	je	.LBB49_81
.LBB49_78:                              # %if.then.252
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	72(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB49_80
# BB#79:                                # %if.then.257
	movq	-120(%rbp), %rdi
	callq	store_kbd_macro_char
.LBB49_80:                              # %if.end.258
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_82
.LBB49_81:                              # %if.end.259
                                        #   in Loop: Header=BB49_9 Depth=1
	jmp	.LBB49_9
.LBB49_82:                              # %return
	movq	-8(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end49:
	.size	read_char_minibuf_menu_prompt, .Lfunc_end49-read_char_minibuf_menu_prompt
	.cfi_endproc

	.align	16, 0x90
	.type	restore_getcjmp,@function
restore_getcjmp:                        # @restore_getcjmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$getcjmp, %rax
	movl	$200, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	restore_getcjmp, .Lfunc_end50-restore_getcjmp
	.cfi_endproc

	.align	16, 0x90
	.type	kset_kbd_queue,@function
kset_kbd_queue:                         # @kset_kbd_queue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	kset_kbd_queue, .Lfunc_end51-kset_kbd_queue
	.cfi_endproc

	.align	16, 0x90
	.type	timer_start_idle,@function
timer_start_idle:                       # @timer_start_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	timer_idleness_start_time, %rdi
	movq	timer_idleness_start_time+8, %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB52_1
	jmp	.LBB52_2
.LBB52_1:                               # %if.then
	jmp	.LBB52_3
.LBB52_2:                               # %if.end
	callq	current_timespec
	movabsq	$.L.str.355, %rdi
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, timer_idleness_start_time
	movq	-8(%rbp), %rax
	movq	%rax, timer_idleness_start_time+8
	movq	timer_idleness_start_time, %rax
	movq	%rax, timer_last_idleness_start_time
	movq	timer_idleness_start_time+8, %rax
	movq	%rax, timer_last_idleness_start_time+8
	callq	intern
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB52_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	timer_start_idle, .Lfunc_end52-timer_start_idle
	.cfi_endproc

	.align	16, 0x90
	.type	echo_keystrokes_p,@function
echo_keystrokes_p:                      # @echo_keystrokes_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	globals+608, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB53_2
# BB#1:                                 # %cond.true
	movq	globals+608, %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)          # 4-byte Spill
	jmp	.LBB53_6
.LBB53_2:                               # %cond.false
	movq	globals+608, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB53_4
# BB#3:                                 # %cond.true.9
	movq	globals+608, %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -8(%rbp)          # 4-byte Spill
	jmp	.LBB53_5
.LBB53_4:                               # %cond.false.12
	xorl	%eax, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB53_5
.LBB53_5:                               # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB53_6:                               # %cond.end.13
	movl	-4(%rbp), %eax          # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	echo_keystrokes_p, .Lfunc_end53-echo_keystrokes_p
	.cfi_endproc

	.align	16, 0x90
	.type	save_getcjmp,@function
save_getcjmp:                           # @save_getcjmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$getcjmp, %rax
	movl	$200, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	memcpy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	save_getcjmp, .Lfunc_end54-save_getcjmp
	.cfi_endproc

	.align	16, 0x90
	.type	read_char_x_menu_prompt,@function
read_char_x_menu_prompt:                # @read_char_x_menu_prompt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB55_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.LBB55_2:                               # %if.end
	testb	$1, globals+3409
	jne	.LBB55_4
# BB#3:                                 # %if.then.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB55_23
.LBB55_4:                               # %if.end.3
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB55_22
# BB#5:                                 # %land.lhs.true
	movl	$651, %edi              # imm = 0x28B
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB55_22
# BB#6:                                 # %land.lhs.true.8
	movl	$921, %edi              # imm = 0x399
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB55_22
# BB#7:                                 # %if.then.14
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	get_keymap
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fx_popup_menu
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB55_16
# BB#8:                                 # %if.then.21
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	record_menu_key
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB55_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB55_15
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	record_menu_key
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB55_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB55_13
.LBB55_12:                              # %if.then.44
                                        #   in Loop: Header=BB55_9 Depth=1
	movl	$343, %edi              # imm = 0x157
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB55_13:                              # %if.end.49
                                        #   in Loop: Header=BB55_9 Depth=1
	jmp	.LBB55_14
.LBB55_14:                              # %for.inc
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB55_9
.LBB55_15:                              # %for.end
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	globals+2520, %rsi
	callq	nconc2
	movq	%rax, globals+2520
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB55_19
.LBB55_16:                              # %if.else
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_18
# BB#17:                                # %if.then.62
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB55_18:                              # %if.end.64
	jmp	.LBB55_19
.LBB55_19:                              # %if.end.65
	cmpq	$0, -32(%rbp)
	je	.LBB55_21
# BB#20:                                # %if.then.67
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
.LBB55_21:                              # %if.end.68
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB55_23
.LBB55_22:                              # %if.end.69
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB55_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	read_char_x_menu_prompt, .Lfunc_end55-read_char_x_menu_prompt
	.cfi_endproc

	.align	16, 0x90
	.type	timer_stop_idle,@function
timer_stop_idle:                        # @timer_stop_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	invalid_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, timer_idleness_start_time
	movq	-8(%rbp), %rax
	movq	%rax, timer_idleness_start_time+8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	timer_stop_idle, .Lfunc_end56-timer_stop_idle
	.cfi_endproc

	.align	16, 0x90
	.type	readable_events,@function
readable_events:                        # @readable_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	andl	$1, %edi
	cmpl	$0, %edi
	je	.LBB57_2
# BB#1:                                 # %if.then
	callq	timer_check
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
.LBB57_2:                               # %if.end
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB57_22
# BB#3:                                 # %if.then.1
	movl	-8(%rbp), %eax
	andl	$6, %eax
	cmpl	$0, %eax
	je	.LBB57_20
# BB#4:                                 # %if.then.4
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -32(%rbp)
.LBB57_5:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, -32(%rbp)
	jne	.LBB57_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB57_5 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -32(%rbp)
.LBB57_7:                               # %if.end.7
                                        #   in Loop: Header=BB57_5 Depth=1
	movl	-8(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB57_9
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$22, %ecx
	je	.LBB57_17
.LBB57_9:                               # %land.lhs.true.11
                                        #   in Loop: Header=BB57_5 Depth=1
	movl	-8(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB57_14
# BB#10:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$8, %ecx
	je	.LBB57_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$9, %ecx
	jne	.LBB57_14
.LBB57_12:                              # %land.lhs.true.21
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$16, %ecx
	cmpl	$2, %ecx
	jne	.LBB57_14
# BB#13:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB57_17
.LBB57_14:                              # %land.lhs.true.27
                                        #   in Loop: Header=BB57_5 Depth=1
	movl	-8(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB57_16
# BB#15:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$12, %ecx
	je	.LBB57_17
.LBB57_16:                              # %if.then.34
	movb	$1, -1(%rbp)
	jmp	.LBB57_38
.LBB57_17:                              # %if.end.35
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -32(%rbp)
# BB#18:                                # %do.cond
                                        #   in Loop: Header=BB57_5 Depth=1
	movq	-32(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	jne	.LBB57_5
# BB#19:                                # %do.end
	jmp	.LBB57_21
.LBB57_20:                              # %if.else
	movb	$1, -1(%rbp)
	jmp	.LBB57_38
.LBB57_21:                              # %if.end.37
	jmp	.LBB57_22
.LBB57_22:                              # %if.end.38
	movl	-8(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB57_26
# BB#23:                                # %land.lhs.true.41
	xorl	%edi, %edi
	movq	globals+2944, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB57_26
# BB#24:                                # %land.lhs.true.44
	callq	some_mouse_moved
	cmpq	$0, %rax
	je	.LBB57_26
# BB#25:                                # %if.then.47
	movb	$1, -1(%rbp)
	jmp	.LBB57_38
.LBB57_26:                              # %if.end.48
	testb	$1, single_kboard
	je	.LBB57_30
# BB#27:                                # %if.then.50
	movq	current_kboard, %rax
	testb	$1, 184(%rax)
	je	.LBB57_29
# BB#28:                                # %if.then.52
	movb	$1, -1(%rbp)
	jmp	.LBB57_38
.LBB57_29:                              # %if.end.53
	jmp	.LBB57_37
.LBB57_30:                              # %if.else.54
	movq	all_kboards, %rax
	movq	%rax, -40(%rbp)
.LBB57_31:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB57_36
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB57_31 Depth=1
	movq	-40(%rbp), %rax
	testb	$1, 184(%rax)
	je	.LBB57_34
# BB#33:                                # %if.then.58
	movb	$1, -1(%rbp)
	jmp	.LBB57_38
.LBB57_34:                              # %if.end.59
                                        #   in Loop: Header=BB57_31 Depth=1
	jmp	.LBB57_35
.LBB57_35:                              # %for.inc
                                        #   in Loop: Header=BB57_31 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB57_31
.LBB57_36:                              # %for.end
	jmp	.LBB57_37
.LBB57_37:                              # %if.end.60
	movb	$0, -1(%rbp)
.LBB57_38:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	readable_events, .Lfunc_end57-readable_events
	.cfi_endproc

	.align	16, 0x90
	.type	read_decoded_event_from_main_queue,@function
read_decoded_event_from_main_queue:     # @read_decoded_event_from_main_queue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -180(%rbp)
.LBB58_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_16 Depth 2
                                        #     Child Loop BB58_21 Depth 2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	read_event_from_main_queue
	movq	%rax, -192(%rbp)
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB58_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_4
# BB#3:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-208(%rbp), %rax
	movq	104(%rax), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$1024, %ecx             # imm = 0x400
	cmpl	$0, %ecx
	jne	.LBB58_5
.LBB58_4:                               # %if.then
	movq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_50
.LBB58_5:                               # %if.else
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-208(%rbp), %rax
	movq	88(%rax), %rax
	movl	8780(%rax), %ecx
	movl	%ecx, -212(%rbp)
	movq	-192(%rbp), %rax
	movl	-180(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -176(%rbp,%rsi,8)
	movq	-192(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB58_6
	jmp	.LBB58_46
.LBB58_6:                               # %land.lhs.true.9
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	$128, %ecx
	movq	-192(%rbp), %rdx
	sarq	$2, %rdx
	cmpl	$1, -212(%rbp)
	cmovel	%ecx, %eax
	movslq	%eax, %rsi
	cmpq	%rsi, %rdx
	jge	.LBB58_46
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-208(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	raw_text_coding_system_p
	testb	$1, %al
	jne	.LBB58_8
	jmp	.LBB58_15
.LBB58_8:                               # %if.then.16
	cmpl	$2, -212(%rbp)
	je	.LBB58_14
# BB#9:                                 # %if.then.19
	movl	$0, -228(%rbp)
.LBB58_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-228(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB58_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB58_10 Depth=1
	movslq	-228(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	sarq	$2, %rax
	andq	$-129, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-228(%rbp), %rcx
	movq	%rax, -176(%rbp,%rcx,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB58_10 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB58_10
.LBB58_13:                              # %for.end
	jmp	.LBB58_14
.LBB58_14:                              # %if.end
	jmp	.LBB58_45
.LBB58_15:                              # %if.else.29
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$0, -340(%rbp)
.LBB58_16:                              # %for.cond.31
                                        #   Parent Loop BB58_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-340(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB58_19
# BB#17:                                # %for.body.34
                                        #   in Loop: Header=BB58_16 Depth=2
	movslq	-340(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movslq	-340(%rbp), %rax
	movb	%cl, -256(%rbp,%rax)
# BB#18:                                # %for.inc.41
                                        #   in Loop: Header=BB58_16 Depth=2
	movl	-340(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	jmp	.LBB58_16
.LBB58_19:                              # %for.end.43
                                        #   in Loop: Header=BB58_1 Depth=1
	cmpl	$2, -212(%rbp)
	je	.LBB58_25
# BB#20:                                # %if.then.46
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	$0, -340(%rbp)
.LBB58_21:                              # %for.cond.47
                                        #   Parent Loop BB58_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-340(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB58_24
# BB#22:                                # %for.body.50
                                        #   in Loop: Header=BB58_21 Depth=2
	movslq	-340(%rbp), %rax
	movzbl	-256(%rbp,%rax), %ecx
	andl	$-129, %ecx
	movb	%cl, %dl
	movb	%dl, -256(%rbp,%rax)
# BB#23:                                # %for.inc.56
                                        #   in Loop: Header=BB58_21 Depth=2
	movl	-340(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	jmp	.LBB58_21
.LBB58_24:                              # %for.end.58
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_25
.LBB58_25:                              # %if.end.59
                                        #   in Loop: Header=BB58_1 Depth=1
	leaq	-336(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 496(%rcx)
	movq	-224(%rbp), %rax
	movq	$80, 480(%rax)
# BB#26:                                # %do.body
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%edi, %edi
	leaq	-256(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 456(%rcx)
	movslq	-180(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 440(%rcx)
	movq	-224(%rbp), %rcx
	movq	%rax, 432(%rcx)
	movq	-224(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movslq	-180(%rbp), %r8
	movslq	-180(%rbp), %r9
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	-384(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	decode_coding_object
# BB#27:                                # %do.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-224(%rbp), %rax
	cmpq	$0, 392(%rax)
	jne	.LBB58_31
# BB#28:                                # %if.then.68
                                        #   in Loop: Header=BB58_1 Depth=1
	cmpl	$16, -180(%rbp)
	jge	.LBB58_30
# BB#29:                                # %if.then.71
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_1
.LBB58_30:                              # %if.end.72
	jmp	.LBB58_44
.LBB58_31:                              # %if.else.73
	movq	-224(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, -352(%rbp)
	movl	$0, -180(%rbp)
.LBB58_32:                              # %while.cond.75
                                        # =>This Inner Loop Header: Depth=1
	movslq	-180(%rbp), %rax
	movq	-224(%rbp), %rcx
	cmpq	392(%rcx), %rax
	jge	.LBB58_43
# BB#33:                                # %while.body.80
                                        #   in Loop: Header=BB58_32 Depth=1
	movq	-352(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB58_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB58_32 Depth=1
	movq	-352(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -352(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB58_42
.LBB58_35:                              # %cond.false
                                        #   in Loop: Header=BB58_32 Depth=1
	movq	-352(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB58_37
# BB#36:                                # %cond.true.90
                                        #   in Loop: Header=BB58_32 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-352(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -352(%rbp)
	movq	-352(%rbp), %rdx
	movzbl	-2(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-352(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-352(%rbp), %rdx
	movzbl	-2(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -400(%rbp)        # 4-byte Spill
	jmp	.LBB58_41
.LBB58_37:                              # %cond.false.104
                                        #   in Loop: Header=BB58_32 Depth=1
	movq	-352(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB58_39
# BB#38:                                # %cond.true.109
                                        #   in Loop: Header=BB58_32 Depth=1
	movq	-352(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movzbl	-3(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-352(%rbp), %rax
	movzbl	-2(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-352(%rbp), %rax
	movzbl	-1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB58_40
.LBB58_39:                              # %cond.false.124
                                        #   in Loop: Header=BB58_32 Depth=1
	leaq	-352(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-352(%rbp), %rdi
	callq	string_char
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB58_40:                              # %cond.end
                                        #   in Loop: Header=BB58_32 Depth=1
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB58_41:                              # %cond.end.127
                                        #   in Loop: Header=BB58_32 Depth=1
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB58_42:                              # %cond.end.129
                                        #   in Loop: Header=BB58_32 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movl	-180(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
	movslq	%eax, %rsi
	movq	%rcx, -176(%rbp,%rsi,8)
	jmp	.LBB58_32
.LBB58_43:                              # %while.end
	jmp	.LBB58_44
.LBB58_44:                              # %if.end.137
	jmp	.LBB58_45
.LBB58_45:                              # %if.end.138
	jmp	.LBB58_46
.LBB58_46:                              # %if.end.139
	jmp	.LBB58_47
.LBB58_47:                              # %while.cond.140
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -180(%rbp)
	jle	.LBB58_49
# BB#48:                                # %while.body.143
                                        #   in Loop: Header=BB58_47 Depth=1
	movl	-180(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -180(%rbp)
	movslq	%eax, %rcx
	movq	-176(%rbp,%rcx,8), %rdi
	movq	globals+2520, %rsi
	callq	Fcons
	movq	%rax, globals+2520
	jmp	.LBB58_47
.LBB58_49:                              # %while.end.147
	movq	-176(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB58_50:                              # %return
	movq	-8(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end58:
	.size	read_decoded_event_from_main_queue, .Lfunc_end58-read_decoded_event_from_main_queue
	.cfi_endproc

	.align	16, 0x90
	.type	timer_resume_idle,@function
timer_resume_idle:                      # @timer_resume_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	movq	timer_idleness_start_time, %rdi
	movq	timer_idleness_start_time+8, %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB59_1
	jmp	.LBB59_2
.LBB59_1:                               # %if.then
	jmp	.LBB59_3
.LBB59_2:                               # %if.end
	movq	timer_last_idleness_start_time, %rax
	movq	%rax, timer_idleness_start_time
	movq	timer_last_idleness_start_time+8, %rax
	movq	%rax, timer_idleness_start_time+8
.LBB59_3:                               # %return
	popq	%rbp
	retq
.Lfunc_end59:
	.size	timer_resume_idle, .Lfunc_end59-timer_resume_idle
	.cfi_endproc

	.align	16, 0x90
	.type	record_char,@function
record_char:                            # @record_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB60_45
# BB#1:                                 # %land.lhs.true
	movl	$516, %edi              # imm = 0x204
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_3
# BB#2:                                 # %lor.lhs.false
	movl	$690, %edi              # imm = 0x2B2
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_45
.LBB60_3:                               # %if.then
	movl	recent_keys_index, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB60_5
# BB#4:                                 # %if.then.12
	movl	$299, -44(%rbp)         # imm = 0x12B
.LBB60_5:                               # %if.end
	movq	recent_keys, %rdi
	movslq	-44(%rbp), %rsi
	callq	AREF
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, %ecx
	jge	.LBB60_7
# BB#6:                                 # %if.then.18
	movl	$299, -48(%rbp)         # imm = 0x12B
.LBB60_7:                               # %if.end.19
	movq	recent_keys, %rdi
	movslq	-48(%rbp), %rsi
	callq	AREF
	movq	%rax, -32(%rbp)
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %ecx
	jge	.LBB60_9
# BB#8:                                 # %if.then.25
	movl	$299, -52(%rbp)         # imm = 0x12B
.LBB60_9:                               # %if.end.26
	movq	recent_keys, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$516, %edi              # imm = 0x204
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB60_34
# BB#10:                                # %if.then.34
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB60_12
# BB#11:                                # %if.then.39
	movl	$1, -12(%rbp)
	jmp	.LBB60_33
.LBB60_12:                              # %if.else
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_16
# BB#13:                                # %land.lhs.true.44
	movl	$516, %edi              # imm = 0x204
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_16
# BB#14:                                # %land.lhs.true.50
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB60_16
# BB#15:                                # %if.then.58
	movl	$1, -12(%rbp)
	jmp	.LBB60_32
.LBB60_16:                              # %if.else.59
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_22
# BB#17:                                # %land.lhs.true.64
	movl	$690, %edi              # imm = 0x2B2
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_22
# BB#18:                                # %land.lhs.true.70
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_22
# BB#19:                                # %land.lhs.true.75
	movl	$516, %edi              # imm = 0x204
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_22
# BB#20:                                # %land.lhs.true.81
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB60_22
# BB#21:                                # %if.then.89
	movl	$-1, -12(%rbp)
	jmp	.LBB60_31
.LBB60_22:                              # %if.else.90
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_30
# BB#23:                                # %land.lhs.true.95
	movl	$690, %edi              # imm = 0x2B2
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_30
# BB#24:                                # %land.lhs.true.101
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_30
# BB#25:                                # %land.lhs.true.106
	movl	$690, %edi              # imm = 0x2B2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_30
# BB#26:                                # %land.lhs.true.112
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_30
# BB#27:                                # %land.lhs.true.117
	movl	$516, %edi              # imm = 0x204
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_30
# BB#28:                                # %land.lhs.true.123
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB60_30
# BB#29:                                # %if.then.131
	movl	$-2, -12(%rbp)
.LBB60_30:                              # %if.end.132
	jmp	.LBB60_31
.LBB60_31:                              # %if.end.133
	jmp	.LBB60_32
.LBB60_32:                              # %if.end.134
	jmp	.LBB60_33
.LBB60_33:                              # %if.end.135
	jmp	.LBB60_44
.LBB60_34:                              # %if.else.136
	movl	$690, %edi              # imm = 0x2B2
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_43
# BB#35:                                # %if.then.142
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_42
# BB#36:                                # %land.lhs.true.152
	movl	$690, %edi              # imm = 0x2B2
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_42
# BB#37:                                # %land.lhs.true.158
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB60_42
# BB#38:                                # %land.lhs.true.166
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_42
# BB#39:                                # %land.lhs.true.171
	movl	$690, %edi              # imm = 0x2B2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_42
# BB#40:                                # %land.lhs.true.177
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar_safe
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB60_42
# BB#41:                                # %if.then.185
	movq	recent_keys, %rdi
	movslq	-44(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movl	$1, -12(%rbp)
.LBB60_42:                              # %if.end.187
	jmp	.LBB60_43
.LBB60_43:                              # %if.end.188
	jmp	.LBB60_44
.LBB60_44:                              # %if.end.189
	jmp	.LBB60_46
.LBB60_45:                              # %if.else.190
	movq	-8(%rbp), %rdi
	callq	store_kbd_macro_char
.LBB60_46:                              # %if.end.191
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_64
# BB#47:                                # %if.then.195
	cmpl	$0, -12(%rbp)
	jne	.LBB60_51
# BB#48:                                # %if.then.196
	cmpl	$300, total_keys        # imm = 0x12C
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	total_keys, %ecx
	movl	%ecx, total_keys
	movq	recent_keys, %rdi
	movslq	recent_keys_index, %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movl	recent_keys_index, %ecx
	addl	$1, %ecx
	movl	%ecx, recent_keys_index
	cmpl	$300, %ecx              # imm = 0x12C
	jl	.LBB60_50
# BB#49:                                # %if.then.202
	movl	$0, recent_keys_index
.LBB60_50:                              # %if.end.203
	jmp	.LBB60_63
.LBB60_51:                              # %if.else.204
	cmpl	$0, -12(%rbp)
	jge	.LBB60_62
# BB#52:                                # %if.then.207
	jmp	.LBB60_53
.LBB60_53:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	cmpl	$0, %eax
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jge	.LBB60_55
# BB#54:                                # %land.rhs
                                        #   in Loop: Header=BB60_53 Depth=1
	cmpl	$0, total_keys
	setg	%al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB60_55:                              # %land.end
                                        #   in Loop: Header=BB60_53 Depth=1
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_56
	jmp	.LBB60_61
.LBB60_56:                              # %while.body
                                        #   in Loop: Header=BB60_53 Depth=1
	cmpl	$300, total_keys        # imm = 0x12C
	jge	.LBB60_58
# BB#57:                                # %if.then.215
                                        #   in Loop: Header=BB60_53 Depth=1
	movl	total_keys, %eax
	addl	$-1, %eax
	movl	%eax, total_keys
.LBB60_58:                              # %if.end.216
                                        #   in Loop: Header=BB60_53 Depth=1
	movl	recent_keys_index, %eax
	addl	$-1, %eax
	movl	%eax, recent_keys_index
	cmpl	$0, %eax
	jge	.LBB60_60
# BB#59:                                # %if.then.220
                                        #   in Loop: Header=BB60_53 Depth=1
	movl	$299, recent_keys_index # imm = 0x12B
.LBB60_60:                              # %if.end.221
                                        #   in Loop: Header=BB60_53 Depth=1
	xorl	%edi, %edi
	movq	recent_keys, %rax
	movslq	recent_keys_index, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB60_53
.LBB60_61:                              # %while.end
	jmp	.LBB60_62
.LBB60_62:                              # %if.end.224
	jmp	.LBB60_63
.LBB60_63:                              # %if.end.225
	movq	globals+3208, %rax
	addq	$1, %rax
	movq	%rax, globals+3208
.LBB60_64:                              # %if.end.227
	cmpq	$0, dribble
	je	.LBB60_77
# BB#65:                                # %if.then.229
	callq	block_input
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB60_70
# BB#66:                                # %if.then.235
	movq	-8(%rbp), %rdi
	callq	XUINT
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB60_68
# BB#67:                                # %if.then.239
	movq	-8(%rbp), %rdi
	callq	XUINT
	movl	%eax, %ecx
	movq	dribble, %rsi
	movl	%ecx, %edi
	callq	_IO_putc
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB60_69
.LBB60_68:                              # %if.else.243
	movq	dribble, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XUINT
	movabsq	$.L.str.354, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB60_69:                              # %if.end.246
	jmp	.LBB60_76
.LBB60_70:                              # %if.else.247
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_72
# BB#71:                                # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB60_73
.LBB60_72:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB60_73:                              # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB60_75
# BB#74:                                # %if.then.258
	movl	$60, %edi
	movq	dribble, %rsi
	callq	_IO_putc
	movq	-96(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movq	-96(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	dribble, %rcx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movl	$62, %edi
	movq	dribble, %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	_IO_putc
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB60_75:                              # %if.end.266
	jmp	.LBB60_76
.LBB60_76:                              # %if.end.267
	movq	dribble, %rdi
	callq	fflush
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	unblock_input
.LBB60_77:                              # %if.end.269
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end60:
	.size	record_char, .Lfunc_end60-record_char
	.cfi_endproc

	.align	16, 0x90
	.type	echo_truncate,@function
echo_truncate:                          # @echo_truncate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_kboard, %rdi
	movq	176(%rdi), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB61_1
	jmp	.LBB61_2
.LBB61_1:                               # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movq	current_kboard, %rdi
	movq	current_kboard, %rcx
	movq	176(%rcx), %rcx
	movq	-8(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	Fsubstring
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_string
.LBB61_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	truncate_echo_area
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	echo_truncate, .Lfunc_end61-echo_truncate
	.cfi_endproc

	.align	16, 0x90
	.type	add_command_key,@function
add_command_key:                        # @add_command_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	this_command_key_count, %rdi
	movq	this_command_keys, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	ASIZE
	movq	-16(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB62_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	this_command_keys, %rdi
	callq	larger_vector
	movq	%rax, this_command_keys
.LBB62_2:                               # %if.end
	movq	this_command_keys, %rdi
	movq	this_command_key_count, %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movq	this_command_key_count, %rdx
	addq	$1, %rdx
	movq	%rdx, this_command_key_count
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	add_command_key, .Lfunc_end62-add_command_key
	.cfi_endproc

	.align	16, 0x90
	.type	echo_update,@function
echo_update:                            # @echo_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	current_kboard, %rax
	movb	185(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB63_18
# BB#1:                                 # %if.then
	movl	$566, %edi              # imm = 0x236
	movq	current_kboard, %rax
	movq	192(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	current_kboard, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB63_7
.LBB63_3:                               # %cond.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_5
# BB#4:                                 # %cond.true.5
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB63_6
.LBB63_5:                               # %cond.false.6
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	concat2
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB63_6:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB63_7:                               # %cond.end.8
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_string
	movq	$0, -8(%rbp)
.LBB63_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	this_command_key_count, %rax
	jge	.LBB63_17
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	this_command_keys, %rdi
	movq	-8(%rbp), %rsi
	callq	AREF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB63_14
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB63_12
# BB#11:                                # %cond.true.18
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB63_13
.LBB63_12:                              # %cond.false.19
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB63_13:                              # %cond.end.20
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movl	$690, %edi              # imm = 0x2B2
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB63_15
.LBB63_14:                              # %if.then.27
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	-32(%rbp), %rdi
	callq	echo_add_key
.LBB63_15:                              # %if.end
                                        #   in Loop: Header=BB63_8 Depth=1
	jmp	.LBB63_16
.LBB63_16:                              # %for.inc
                                        #   in Loop: Header=BB63_8 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB63_8
.LBB63_17:                              # %for.end
	callq	echo_now
.LBB63_18:                              # %if.end.28
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	echo_update, .Lfunc_end63-echo_update
	.cfi_endproc

	.align	16, 0x90
	.type	help_char_p,@function
help_char_p:                            # @help_char_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	globals+968, %rdi
	jne	.LBB64_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB64_9
.LBB64_2:                               # %if.end
	movq	globals+976, %rax
	movq	%rax, -24(%rbp)
.LBB64_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB64_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB64_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB64_6
# BB#5:                                 # %if.then.5
	movb	$1, -1(%rbp)
	jmp	.LBB64_9
.LBB64_6:                               # %if.end.6
                                        #   in Loop: Header=BB64_3 Depth=1
	jmp	.LBB64_7
.LBB64_7:                               # %for.inc
                                        #   in Loop: Header=BB64_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB64_3
.LBB64_8:                               # %for.end
	movb	$0, -1(%rbp)
.LBB64_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	help_char_p, .Lfunc_end64-help_char_p
	.cfi_endproc

	.align	16, 0x90
	.type	read_char_help_form_unwind,@function
read_char_help_form_unwind:             # @read_char_help_form_unwind
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%edi, %edi
	movq	help_form_saved_window_configs, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	help_form_saved_window_configs, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, help_form_saved_window_configs
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	Fset_window_configuration
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB65_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	read_char_help_form_unwind, .Lfunc_end65-read_char_help_form_unwind
	.cfi_endproc

	.globl	kbd_buffer_store_event
	.align	16, 0x90
	.type	kbd_buffer_store_event,@function
kbd_buffer_store_event:                 # @kbd_buffer_store_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	kbd_buffer_store_event_hold
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	kbd_buffer_store_event, .Lfunc_end66-kbd_buffer_store_event
	.cfi_endproc

	.globl	kbd_buffer_store_buffered_event
	.align	16, 0x90
	.type	kbd_buffer_store_buffered_event,@function
kbd_buffer_store_buffered_event:        # @kbd_buffer_store_buffered_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movzwl	(%rsi), %eax
	cmpl	$0, %eax
	jne	.LBB67_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB67_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB67_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$0, %ecx
	je	.LBB67_5
# BB#4:                                 # %if.then.3
	jmp	.LBB67_62
.LBB67_5:                               # %if.end.4
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB67_29
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$67108864, %ecx         # imm = 0x4000000
	cmpl	$0, %ecx
	je	.LBB67_8
# BB#7:                                 # %if.then.12
	movl	-20(%rbp), %edi
	callq	make_ctrl_char
	movl	%eax, -20(%rbp)
.LBB67_8:                               # %if.end.13
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$163577856, %ecx        # imm = 0x9C00000
	orl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	quit_char, %ecx
	jne	.LBB67_25
# BB#9:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	testb	$1, single_kboard
	je	.LBB67_20
# BB#10:                                # %land.lhs.true.21
	movq	-32(%rbp), %rax
	cmpq	current_kboard, %rax
	je	.LBB67_20
# BB#11:                                # %if.then.23
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	make_lispy_switch_frame
	movslq	-20(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	list2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
	movq	-32(%rbp), %rax
	movb	$1, 184(%rax)
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -40(%rbp)
.LBB67_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB67_19
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB67_12 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, -40(%rbp)
	jne	.LBB67_15
# BB#14:                                # %if.then.32
                                        #   in Loop: Header=BB67_12 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -40(%rbp)
.LBB67_15:                              # %if.end.33
                                        #   in Loop: Header=BB67_12 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	event_to_kboard
	cmpq	-32(%rbp), %rax
	jne	.LBB67_17
# BB#16:                                # %if.then.38
                                        #   in Loop: Header=BB67_12 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	movl	%ecx, (%rax)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx
	movq	%rax, 48(%rdx)
.LBB67_17:                              # %if.end.47
                                        #   in Loop: Header=BB67_12 Depth=1
	jmp	.LBB67_18
.LBB67_18:                              # %for.inc
                                        #   in Loop: Header=BB67_12 Depth=1
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB67_12
.LBB67_19:                              # %for.end
	jmp	.LBB67_62
.LBB67_20:                              # %if.end.48
	cmpq	$0, -16(%rbp)
	je	.LBB67_22
# BB#21:                                # %if.then.50
	movl	$56, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB67_62
.LBB67_22:                              # %if.end.52
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_24
# BB#23:                                # %if.then.59
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB67_24:                              # %if.end.62
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, internal_last_event_frame
	movq	-48(%rbp), %rax
	movq	%rax, globals+1248
	callq	handle_interrupt
	jmp	.LBB67_62
.LBB67_25:                              # %if.end.63
	cmpl	$0, -20(%rbp)
	je	.LBB67_28
# BB#26:                                # %land.lhs.true.65
	movl	-20(%rbp), %eax
	cmpl	stop_character, %eax
	jne	.LBB67_28
# BB#27:                                # %if.then.68
	callq	sys_suspend
	jmp	.LBB67_62
.LBB67_28:                              # %if.end.69
	jmp	.LBB67_37
.LBB67_29:                              # %if.else
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$12, %ecx
	jne	.LBB67_36
# BB#30:                                # %land.lhs.true.74
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB67_36
# BB#31:                                # %land.lhs.true.77
	movabsq	$kbd_buffer, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rax, %rcx
	jne	.LBB67_33
# BB#32:                                # %cond.true
	movabsq	$kbd_buffer, %rax
	addq	$229320, %rax           # imm = 0x37FC8
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB67_34
.LBB67_33:                              # %cond.false
	movq	kbd_store_ptr, %rax
	addq	$-56, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB67_34:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzwl	(%rax), %ecx
	cmpl	$12, %ecx
	jne	.LBB67_36
# BB#35:                                # %if.then.84
	jmp	.LBB67_62
.LBB67_36:                              # %if.end.85
	jmp	.LBB67_37
.LBB67_37:                              # %if.end.86
	movl	$56, %eax
	movl	%eax, %ecx
	movabsq	$kbd_buffer, %rdx
	movq	kbd_store_ptr, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	cmpq	$4096, %rax             # imm = 0x1000
	jne	.LBB67_39
# BB#38:                                # %if.then.89
	movabsq	$kbd_buffer, %rax
	movq	%rax, kbd_store_ptr
.LBB67_39:                              # %if.end.90
	movq	kbd_fetch_ptr, %rax
	addq	$-56, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB67_44
# BB#40:                                # %if.then.94
	movl	$56, %eax
	movl	%eax, %edx
	movq	kbd_store_ptr, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	kbd_store_ptr, %rcx
	addq	$56, %rcx
	movq	%rcx, kbd_store_ptr
	callq	kbd_buffer_nr_stored
	cmpl	$2048, %eax             # imm = 0x800
	jle	.LBB67_43
# BB#41:                                # %land.lhs.true.99
	callq	kbd_on_hold_p
	testb	$1, %al
	jne	.LBB67_43
# BB#42:                                # %if.then.101
	callq	hold_keyboard_input
	callq	unrequest_sigio
	callq	stop_polling
.LBB67_43:                              # %if.end.102
	jmp	.LBB67_44
.LBB67_44:                              # %if.end.103
	xorl	%edi, %edi
	movq	globals+2368, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_62
# BB#45:                                # %land.lhs.true.107
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$22, %ecx
	je	.LBB67_62
# BB#46:                                # %land.lhs.true.112
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$23, %ecx
	je	.LBB67_62
# BB#47:                                # %land.lhs.true.117
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$20, %ecx
	je	.LBB67_62
# BB#48:                                # %land.lhs.true.122
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$15, %ecx
	je	.LBB67_62
# BB#49:                                # %land.lhs.true.127
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB67_62
# BB#50:                                # %if.then.132
	movq	globals+2368, %rax
	movq	%rax, globals+1928
	testb	$1, immediate_quit
	je	.LBB67_61
# BB#51:                                # %land.lhs.true.135
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_61
# BB#52:                                # %if.then.139
	movb	$0, immediate_quit
# BB#53:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_56
# BB#54:                                # %land.lhs.true.143
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_56
# BB#55:                                # %if.then.147
	callq	process_quit_flag
	jmp	.LBB67_59
.LBB67_56:                              # %if.else.148
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB67_58
# BB#57:                                # %if.then.150
	callq	process_pending_signals
.LBB67_58:                              # %if.end.151
	jmp	.LBB67_59
.LBB67_59:                              # %if.end.152
	jmp	.LBB67_60
.LBB67_60:                              # %do.end
	jmp	.LBB67_61
.LBB67_61:                              # %if.end.153
	jmp	.LBB67_62
.LBB67_62:                              # %if.end.154
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	kbd_buffer_store_buffered_event, .Lfunc_end67-kbd_buffer_store_buffered_event
	.cfi_endproc

	.align	16, 0x90
	.type	make_lispy_switch_frame,@function
make_lispy_switch_frame:                # @make_lispy_switch_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$895, %eax              # imm = 0x37F
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	make_lispy_switch_frame, .Lfunc_end68-make_lispy_switch_frame
	.cfi_endproc

	.align	16, 0x90
	.type	event_to_kboard,@function
event_to_kboard:                        # @event_to_kboard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	cmpl	$10, %eax
	je	.LBB69_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$11, %ecx
	jne	.LBB69_3
.LBB69_2:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB69_10
.LBB69_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB69_4
	jmp	.LBB69_5
.LBB69_4:                               # %if.then.4
	movq	-24(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB69_5:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB69_6
	jmp	.LBB69_8
.LBB69_6:                               # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB69_8
# BB#7:                                 # %cond.true
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB69_9
.LBB69_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB69_9
.LBB69_9:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB69_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	event_to_kboard, .Lfunc_end69-event_to_kboard
	.cfi_endproc

	.align	16, 0x90
	.type	handle_interrupt,@function
handle_interrupt:                       # @handle_interrupt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	callq	cancel_echoing
	xorl	%edi, %edi
	movq	globals+1928, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_20
# BB#1:                                 # %land.lhs.true
	movabsq	$.L.str.25, %rdi
	callq	get_named_terminal
	cmpq	$0, %rax
	je	.LBB70_20
# BB#2:                                 # %if.then
	testb	$1, -1(%rbp)
	jne	.LBB70_4
# BB#3:                                 # %if.then.3
	leaq	-136(%rbp), %rdi
	callq	sigemptyset
	leaq	-136(%rbp), %rdi
	movl	$2, %esi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-136(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movq	stdout, %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	fflush
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB70_4:                               # %if.end
	callq	reset_all_sys_modes
	callq	sys_suspend
	testb	$1, gc_in_progress
	jne	.LBB70_12
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.390, %rdi
	callq	write_stdout
	callq	read_stdin
	movb	%al, %cl
	movb	%cl, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$121, %eax
	je	.LBB70_7
# BB#6:                                 # %lor.lhs.false
	movsbl	-2(%rbp), %eax
	cmpl	$89, %eax
	jne	.LBB70_8
.LBB70_7:                               # %if.then.17
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdo_auto_save
	movabsq	$.L.str.391, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	write_stdout
.LBB70_8:                               # %if.end.21
	jmp	.LBB70_9
.LBB70_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-2(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB70_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB70_9 Depth=1
	callq	read_stdin
	movb	%al, %cl
	movb	%cl, -2(%rbp)
	jmp	.LBB70_9
.LBB70_11:                              # %while.end
	jmp	.LBB70_13
.LBB70_12:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.392, %rdi
	movq	%rax, globals+1104
	callq	write_stdout
.LBB70_13:                              # %if.end.28
	movabsq	$.L.str.393, %rdi
	callq	write_stdout
	callq	read_stdin
	movb	%al, %cl
	movb	%cl, -2(%rbp)
	movsbl	-2(%rbp), %eax
	cmpl	$121, %eax
	je	.LBB70_15
# BB#14:                                # %lor.lhs.false.34
	movsbl	-2(%rbp), %eax
	cmpl	$89, %eax
	jne	.LBB70_16
.LBB70_15:                              # %if.then.38
	callq	emacs_abort
.LBB70_16:                              # %if.end.39
	jmp	.LBB70_17
.LBB70_17:                              # %while.cond.40
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-2(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB70_19
# BB#18:                                # %while.body.44
                                        #   in Loop: Header=BB70_17 Depth=1
	callq	read_stdin
	movb	%al, %cl
	movb	%cl, -2(%rbp)
	jmp	.LBB70_17
.LBB70_19:                              # %while.end.47
	movabsq	$.L.str.394, %rdi
	callq	write_stdout
	callq	init_all_sys_modes
	jmp	.LBB70_30
.LBB70_20:                              # %if.else.48
	testb	$1, immediate_quit
	je	.LBB70_23
# BB#21:                                # %land.lhs.true.51
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_23
# BB#22:                                # %if.then.55
	movl	$2, %edi
	movabsq	$empty_mask, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movb	$0, immediate_quit
	callq	pthread_sigmask
	movl	$782, %edi              # imm = 0x30E
	movabsq	$gl_state, %rdx
	movl	$104, %ecx
	movl	%ecx, %esi
	leaq	-240(%rbp), %r8
	movl	%edi, -300(%rbp)        # 4-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	memcpy
	movl	-300(%rbp), %edi        # 4-byte Reload
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movabsq	$gl_state, %rdx
	movl	$104, %ecx
	movl	%ecx, %esi
	leaq	-240(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	memcpy
	jmp	.LBB70_29
.LBB70_23:                              # %if.else.60
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#24:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB70_26
.LBB70_25:                              # %cond.false
	movl	force_quit_count, %eax
	addl	$1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB70_26:                              # %cond.end
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)
	movl	-244(%rbp), %eax
	movl	%eax, force_quit_count
	cmpl	$3, -244(%rbp)
	jne	.LBB70_28
# BB#27:                                # %if.then.66
	xorl	%edi, %edi
	movb	$1, immediate_quit
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
.LBB70_28:                              # %if.end.68
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
.LBB70_29:                              # %if.end.70
	jmp	.LBB70_30
.LBB70_30:                              # %if.end.71
	movl	$2, %edi
	movabsq	$empty_mask, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	pthread_sigmask
	testb	$1, waiting_for_input
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB70_33
# BB#31:                                # %land.lhs.true.75
	testb	$1, echoing
	jne	.LBB70_33
# BB#32:                                # %if.then.77
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	quit_throw_to_read_char
.LBB70_33:                              # %if.end.79
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end70:
	.size	handle_interrupt, .Lfunc_end70-handle_interrupt
	.cfi_endproc

	.align	16, 0x90
	.type	kbd_buffer_nr_stored,@function
kbd_buffer_nr_stored:                   # @kbd_buffer_nr_stored
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	jne	.LBB71_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB71_6
.LBB71_2:                               # %cond.false
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	jae	.LBB71_4
# BB#3:                                 # %cond.true.2
	movl	$56, %eax
	movl	%eax, %ecx
	movq	kbd_store_ptr, %rdx
	movq	kbd_fetch_ptr, %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB71_5
.LBB71_4:                               # %cond.false.3
	movl	$56, %eax
	movl	%eax, %ecx
	movabsq	$kbd_buffer, %rdx
	movq	%rdx, %rsi
	addq	$229376, %rsi           # imm = 0x38000
	movq	kbd_fetch_ptr, %rdi
	subq	%rdi, %rsi
	movq	%rsi, %rax
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	kbd_store_ptr, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	subq	%rdi, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
.LBB71_5:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB71_6:                               # %cond.end.10
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end71:
	.size	kbd_buffer_nr_stored, .Lfunc_end71-kbd_buffer_nr_stored
	.cfi_endproc

	.globl	kbd_buffer_unget_event
	.align	16, 0x90
	.type	kbd_buffer_unget_event,@function
kbd_buffer_unget_event:                 # @kbd_buffer_unget_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$kbd_buffer, %rax
	movq	%rdi, -8(%rbp)
	cmpq	%rax, kbd_fetch_ptr
	jne	.LBB72_2
# BB#1:                                 # %if.then
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	movq	%rax, kbd_fetch_ptr
.LBB72_2:                               # %if.end
	movq	kbd_fetch_ptr, %rax
	addq	$-56, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB72_4
# BB#3:                                 # %if.then.2
	movl	$56, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-16(%rbp), %rcx
	movq	%rcx, kbd_fetch_ptr
.LBB72_4:                               # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	kbd_buffer_unget_event, .Lfunc_end72-kbd_buffer_unget_event
	.cfi_endproc

	.globl	gen_help_event
	.align	16, 0x90
	.type	gen_help_event,@function
gen_help_event:                         # @gen_help_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	-96(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$20, %eax
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB73_1
	jmp	.LBB73_2
.LBB73_1:                               # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB73_3
.LBB73_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB73_3:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	position_to_Time
	leaq	-96(%rbp), %rdi
	movq	%rax, -64(%rbp)
	callq	kbd_buffer_store_event
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gen_help_event, .Lfunc_end73-gen_help_event
	.cfi_endproc

	.align	16, 0x90
	.type	position_to_Time,@function
position_to_Time:                       # @position_to_Time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end74:
	.size	position_to_Time, .Lfunc_end74-position_to_Time
	.cfi_endproc

	.globl	kbd_buffer_store_help_event
	.align	16, 0x90
	.type	kbd_buffer_store_help_event,@function
kbd_buffer_store_help_event:            # @kbd_buffer_store_help_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-72(%rbp), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$20, %ecx
	movl	%ecx, -72(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	leaq	-72(%rbp), %rdi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	callq	kbd_buffer_store_event
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	kbd_buffer_store_help_event, .Lfunc_end75-kbd_buffer_store_help_event
	.cfi_endproc

	.globl	discard_mouse_events
	.align	16, 0x90
	.type	discard_mouse_events,@function
discard_mouse_events:                   # @discard_mouse_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -8(%rbp)
.LBB76_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB76_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB76_1 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, -8(%rbp)
	jne	.LBB76_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB76_1 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -8(%rbp)
.LBB76_4:                               # %if.end
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$5, %ecx
	je	.LBB76_9
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$6, %ecx
	je	.LBB76_9
# BB#6:                                 # %lor.lhs.false.6
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$7, %ecx
	je	.LBB76_9
# BB#7:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$8, %ecx
	je	.LBB76_9
# BB#8:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$9, %ecx
	jne	.LBB76_10
.LBB76_9:                               # %if.then.18
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	movw	$0, (%rax)
.LBB76_10:                              # %if.end.19
                                        #   in Loop: Header=BB76_1 Depth=1
	jmp	.LBB76_11
.LBB76_11:                              # %for.inc
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB76_1
.LBB76_12:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end76:
	.size	discard_mouse_events, .Lfunc_end76-discard_mouse_events
	.cfi_endproc

	.globl	kbd_buffer_events_waiting
	.align	16, 0x90
	.type	kbd_buffer_events_waiting,@function
kbd_buffer_events_waiting:              # @kbd_buffer_events_waiting
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -8(%rbp)
.LBB77_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	kbd_store_ptr, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB77_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB77_3:                               # %land.end
                                        #   in Loop: Header=BB77_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB77_4
	jmp	.LBB77_8
.LBB77_4:                               # %for.body
                                        #   in Loop: Header=BB77_1 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, -8(%rbp)
	jne	.LBB77_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB77_1 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -8(%rbp)
.LBB77_6:                               # %if.end
                                        #   in Loop: Header=BB77_1 Depth=1
	jmp	.LBB77_7
.LBB77_7:                               # %for.inc
                                        #   in Loop: Header=BB77_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB77_1
.LBB77_8:                               # %for.end
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, kbd_fetch_ptr
	movq	-8(%rbp), %rdx
	movq	kbd_store_ptr, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -10(%rbp)          # 1-byte Spill
	je	.LBB77_10
# BB#9:                                 # %land.rhs.4
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -10(%rbp)          # 1-byte Spill
.LBB77_10:                              # %land.end.8
	movb	-10(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end77:
	.size	kbd_buffer_events_waiting, .Lfunc_end77-kbd_buffer_events_waiting
	.cfi_endproc

	.align	16, 0x90
	.type	process_special_events,@function
process_special_events:                 # @process_special_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -8(%rbp)
.LBB78_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB78_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, -8(%rbp)
	jne	.LBB78_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	jne	.LBB78_5
# BB#4:                                 # %if.then.3
	jmp	.LBB78_26
.LBB78_5:                               # %if.end
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_6
.LBB78_6:                               # %if.end.4
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB78_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB78_24
.LBB78_8:                               # %if.then.9
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	movl	$56, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, kbd_fetch_ptr
	jne	.LBB78_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB78_11
.LBB78_10:                              # %cond.false
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB78_11:                              # %cond.end
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jbe	.LBB78_13
# BB#12:                                # %if.then.12
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$56, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	addq	$56, %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %r8
	subq	%r8, %rdi
	movq	%rdi, %rax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	imulq	$56, %rax, %rax
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memmove
	jmp	.LBB78_20
.LBB78_13:                              # %if.else
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB78_19
# BB#14:                                # %if.then.14
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	cmpq	%rax, -8(%rbp)
	jbe	.LBB78_16
# BB#15:                                # %if.then.16
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$56, %eax
	movl	%eax, %ecx
	movabsq	$kbd_buffer, %rdx
	movq	-8(%rbp), %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	imulq	$56, %rax, %rax
	movl	$kbd_buffer, %edi
	movl	%edi, %esi
	movl	$kbd_buffer+56, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rdx
	callq	memmove
.LBB78_16:                              # %if.end.21
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, %rcx
	addq	$229320, %rcx           # imm = 0x37FC8
	movq	%rcx, %rdx
	movl	$56, %esi
	movl	%esi, %edi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -72(%rbp)
	jae	.LBB78_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB78_1 Depth=1
	movl	$56, %eax
	movl	%eax, %ecx
	movabsq	$kbd_buffer, %rdx
	addq	$229320, %rdx           # imm = 0x37FC8
	movq	-72(%rbp), %rsi
	addq	$56, %rsi
	movq	-72(%rbp), %rdi
	movq	-72(%rbp), %r8
	subq	%r8, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	imulq	$56, %rax, %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memmove
.LBB78_18:                              # %if.end.29
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_19
.LBB78_19:                              # %if.end.30
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_20
.LBB78_20:                              # %if.end.31
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, kbd_fetch_ptr
	jne	.LBB78_22
# BB#21:                                # %if.then.33
                                        #   in Loop: Header=BB78_1 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB78_23
.LBB78_22:                              # %if.else.34
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	kbd_fetch_ptr, %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
.LBB78_23:                              # %if.end.35
                                        #   in Loop: Header=BB78_1 Depth=1
	xorl	%edi, %edi
	callq	readable_events
	leaq	-64(%rbp), %rdi
	andb	$1, %al
	movb	%al, input_pending
	callq	x_handle_selection_event
.LBB78_24:                              # %if.end.36
                                        #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_25
.LBB78_25:                              # %for.inc
                                        #   in Loop: Header=BB78_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB78_1
.LBB78_26:                              # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	process_special_events, .Lfunc_end78-process_special_events
	.cfi_endproc

	.align	16, 0x90
	.type	get_input_pending,@function
get_input_pending:                      # @get_input_pending
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	globals+1928, %rcx
	movl	%eax, %edi
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB79_2
# BB#1:                                 # %lor.rhs
	movl	-4(%rbp), %edi
	callq	readable_events
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB79_2:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, input_pending
	testb	$1, input_pending
	jne	.LBB79_8
# BB#3:                                 # %land.lhs.true
	testb	$1, interrupt_input
	je	.LBB79_5
# BB#4:                                 # %lor.lhs.false
	testb	$1, interrupts_deferred
	je	.LBB79_8
.LBB79_5:                               # %if.then
	callq	gobble_input
	xorl	%edi, %edi
	movq	globals+1928, %rcx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %dl
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jne	.LBB79_7
# BB#6:                                 # %lor.rhs.7
	movl	-4(%rbp), %edi
	callq	readable_events
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB79_7:                               # %lor.end.9
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, input_pending
.LBB79_8:                               # %if.end
	movb	input_pending, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	get_input_pending, .Lfunc_end79-get_input_pending
	.cfi_endproc

	.globl	timer_check
	.align	16, 0x90
	.type	timer_check,@function
timer_check:                            # @timer_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$901, %edi              # imm = 0x385
	movq	globals+1104, %rax
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	movq	globals+2384, %rdi
	callq	Fcopy_sequence
	movq	%rax, -40(%rbp)
	movq	timer_idleness_start_time, %rdi
	movq	timer_idleness_start_time+8, %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB80_1
	jmp	.LBB80_2
.LBB80_1:                               # %if.then
	movq	globals+2376, %rdi
	callq	Fcopy_sequence
	movq	%rax, -48(%rbp)
	jmp	.LBB80_3
.LBB80_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB80_3:                               # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, globals+1104
.LBB80_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	timer_check_2
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB80_4 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB80_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB80_4 Depth=1
	cmpq	$0, -24(%rbp)
	sete	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB80_7:                               # %land.end
                                        #   in Loop: Header=BB80_4 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB80_4
# BB#8:                                 # %do.end
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	timer_check, .Lfunc_end80-timer_check
	.cfi_endproc

	.align	16, 0x90
	.type	timer_check_2,@function
timer_check_2:                          # @timer_check_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	callq	invalid_timespec
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB81_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	pending_funcalls, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB81_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB81_1 Depth=1
	movl	$175, %edi
	movq	pending_funcalls, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	pending_funcalls, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, pending_funcalls
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	-112(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rdi
	callq	safe_call2
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB81_1
.LBB81_3:                               # %while.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB81_5
# BB#4:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB81_9
.LBB81_5:                               # %if.then
	callq	current_timespec
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	timer_idleness_start_time, %rdi
	movq	timer_idleness_start_time+8, %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB81_6
	jmp	.LBB81_7
.LBB81_6:                               # %cond.true
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	timer_idleness_start_time, %rdx
	movq	timer_idleness_start_time+8, %rcx
	callq	timespec_sub
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB81_8
.LBB81_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	make_timespec
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB81_8:                               # %cond.end
	jmp	.LBB81_9
.LBB81_9:                               # %if.end
	jmp	.LBB81_10
.LBB81_10:                              # %while.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	movb	%al, -369(%rbp)         # 1-byte Spill
	je	.LBB81_12
# BB#11:                                # %lor.rhs
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -369(%rbp)         # 1-byte Spill
.LBB81_12:                              # %lor.end
                                        #   in Loop: Header=BB81_10 Depth=1
	movb	-369(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB81_13
	jmp	.LBB81_42
.LBB81_13:                              # %while.body.36
                                        #   in Loop: Header=BB81_10 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)
	callq	invalid_timespec
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	callq	invalid_timespec
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movb	$0, -258(%rbp)
	movb	$0, -259(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB81_20
# BB#14:                                # %if.then.45
                                        #   in Loop: Header=BB81_10 Depth=1
	leaq	-192(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	decode_timer
	testb	$1, %al
	jne	.LBB81_16
# BB#15:                                # %if.then.49
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB81_10
.LBB81_16:                              # %if.end.53
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	setle	%r8b
	andb	$1, %r8b
	movb	%r8b, -258(%rbp)
	testb	$1, -258(%rbp)
	je	.LBB81_18
# BB#17:                                # %cond.true.58
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -280(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB81_19
.LBB81_18:                              # %cond.false.61
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -232(%rbp)
.LBB81_19:                              # %cond.end.64
                                        #   in Loop: Header=BB81_10 Depth=1
	jmp	.LBB81_20
.LBB81_20:                              # %if.end.65
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB81_27
# BB#21:                                # %if.then.70
                                        #   in Loop: Header=BB81_10 Depth=1
	leaq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	decode_timer
	testb	$1, %al
	jne	.LBB81_23
# BB#22:                                # %if.then.74
                                        #   in Loop: Header=BB81_10 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB81_10
.LBB81_23:                              # %if.end.78
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	setle	%r8b
	andb	$1, %r8b
	movb	%r8b, -259(%rbp)
	testb	$1, -259(%rbp)
	je	.LBB81_25
# BB#24:                                # %cond.true.85
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -312(%rbp)
	movq	%rdx, -304(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB81_26
.LBB81_25:                              # %cond.false.88
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -328(%rbp)
	movq	%rdx, -320(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB81_26:                              # %cond.end.91
	jmp	.LBB81_27
.LBB81_27:                              # %if.end.92
	movq	-240(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB81_28
	jmp	.LBB81_36
.LBB81_28:                              # %land.lhs.true
	movq	-256(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB81_29
	jmp	.LBB81_35
.LBB81_29:                              # %lor.lhs.false.96
	movb	-259(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-258(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jl	.LBB81_35
# BB#30:                                # %lor.lhs.false.103
	movb	-259(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-258(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jne	.LBB81_36
# BB#31:                                # %land.lhs.true.110
	testb	$1, -258(%rbp)
	je	.LBB81_33
# BB#32:                                # %cond.true.113
	movq	-256(%rbp), %rdi
	movq	-248(%rbp), %rsi
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rcx
	callq	timespec_cmp
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB81_34
.LBB81_33:                              # %cond.false.115
	movq	-240(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rcx
	callq	timespec_cmp
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB81_34:                              # %cond.end.117
	movl	-376(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB81_36
.LBB81_35:                              # %if.then.120
	movq	-168(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -216(%rbp)
	movb	-258(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -257(%rbp)
	jmp	.LBB81_37
.LBB81_36:                              # %if.else
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -216(%rbp)
	movb	-259(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -257(%rbp)
.LBB81_37:                              # %if.end.131
	testb	$1, -257(%rbp)
	je	.LBB81_41
# BB#38:                                # %if.then.133
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB81_40
# BB#39:                                # %if.then.138
	callq	SPECPDL_INDEX
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -336(%rbp)
	movq	globals+416, %rax
	movq	%rax, -344(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$546, %edi              # imm = 0x222
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$918, %edi              # imm = 0x396
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	xorl	%edi, %edi
	movq	-344(%rbp), %rdx
	movq	%rdx, globals+416
	movl	timers_run, %ecx
	addl	$1, %ecx
	movl	%ecx, timers_run
	movq	-336(%rbp), %rdx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB81_40:                              # %if.end.147
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	make_timespec
	movq	%rax, -360(%rbp)
	movq	%rdx, -352(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB81_42
.LBB81_41:                              # %if.else.150
	movq	-224(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB81_43
.LBB81_42:                              # %while.end.151
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB81_43:                              # %return
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end81:
	.size	timer_check_2, .Lfunc_end81-timer_check_2
	.cfi_endproc

	.globl	Fcurrent_idle_time
	.align	16, 0x90
	.type	Fcurrent_idle_time,@function
Fcurrent_idle_time:                     # @Fcurrent_idle_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	timer_idleness_start_time, %rdi
	movq	timer_idleness_start_time+8, %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB82_1
	jmp	.LBB82_2
.LBB82_1:                               # %if.then
	callq	current_timespec
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	timer_idleness_start_time, %rdx
	movq	timer_idleness_start_time+8, %rcx
	callq	timespec_sub
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_lisp_time
	movq	%rax, -8(%rbp)
	jmp	.LBB82_3
.LBB82_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB82_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	Fcurrent_idle_time, .Lfunc_end82-Fcurrent_idle_time
	.cfi_endproc

	.globl	parse_modifiers
	.align	16, 0x90
	.type	parse_modifiers,@function
parse_modifiers:                        # @parse_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB83_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	andq	$4194303, %rax          # imm = 0x3FFFFF
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	andq	$264241152, %rcx        # imm = 0xFC00000
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list2i
	movq	%rax, -8(%rbp)
	jmp	.LBB83_10
.LBB83_2:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB83_4
# BB#3:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB83_10
.LBB83_4:                               # %if.end
	jmp	.LBB83_5
.LBB83_5:                               # %if.end.12
	movl	$383, %edi              # imm = 0x17F
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB83_7
# BB#6:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB83_10
.LBB83_7:                               # %if.else.20
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	parse_modifiers_uncached
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	addq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	subq	-32(%rbp), %rax
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_string
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -48(%rbp)
	movslq	-36(%rbp), %rax
	movabsq	$-4611686018427387904, %rsi # imm = 0xC000000000000000
	andq	%rsi, %rax
	cmpq	$0, %rax
	je	.LBB83_9
# BB#8:                                 # %if.then.31
	callq	emacs_abort
.LBB83_9:                               # %if.end.32
	movslq	-36(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	list2
	movl	$383, %edi              # imm = 0x17F
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$384, %edi              # imm = 0x180
	movq	-16(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	lispy_modifier_list
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	-24(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB83_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	parse_modifiers, .Lfunc_end83-parse_modifiers
	.cfi_endproc

	.align	16, 0x90
	.type	parse_modifiers_uncached,@function
parse_modifiers_uncached:               # @parse_modifiers_uncached
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB84_2
# BB#1:                                 # %cond.true
	jmp	.LBB84_3
.LBB84_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB84_3:                               # %cond.end
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB84_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	subq	$1, %rax
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB84_36
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, %edx
	subl	$65, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	je	.LBB84_6
	jmp	.LBB84_49
.LBB84_49:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB84_7
	jmp	.LBB84_50
.LBB84_50:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB84_8
	jmp	.LBB84_51
.LBB84_51:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB84_9
	jmp	.LBB84_52
.LBB84_52:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB84_10
	jmp	.LBB84_53
.LBB84_53:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB84_12
	jmp	.LBB84_54
.LBB84_54:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB84_11
	jmp	.LBB84_55
.LBB84_55:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB84_22
	jmp	.LBB84_56
.LBB84_56:                              # %for.body
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB84_26
	jmp	.LBB84_30
.LBB84_6:                               # %sw.bb
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$4194304, -52(%rbp)     # imm = 0x400000
	jmp	.LBB84_30
.LBB84_7:                               # %sw.bb.8
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$67108864, -52(%rbp)    # imm = 0x4000000
	jmp	.LBB84_30
.LBB84_8:                               # %sw.bb.10
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$16777216, -52(%rbp)    # imm = 0x1000000
	jmp	.LBB84_30
.LBB84_9:                               # %sw.bb.12
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$134217728, -52(%rbp)   # imm = 0x8000000
	jmp	.LBB84_30
.LBB84_10:                              # %sw.bb.14
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$33554432, -52(%rbp)    # imm = 0x2000000
	jmp	.LBB84_30
.LBB84_11:                              # %sw.bb.16
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	$8388608, -52(%rbp)     # imm = 0x800000
	jmp	.LBB84_30
.LBB84_12:                              # %sw.bb.18
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB84_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1734439524, %ecx       # imm = 0x67617264
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jne	.LBB84_15
# BB#14:                                # %if.then
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	$4, -52(%rbp)
.LBB84_15:                              # %if.end
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB84_18
# BB#16:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1853321060, %ecx       # imm = 0x6E776F64
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jne	.LBB84_18
# BB#17:                                # %if.then.37
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	movl	$2, -52(%rbp)
.LBB84_18:                              # %if.end.39
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$6, %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-152(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB84_21
# BB#19:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB84_21
# BB#20:                                # %if.then.50
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -48(%rbp)
	movl	$16, -52(%rbp)
.LBB84_21:                              # %if.end.52
                                        #   in Loop: Header=BB84_4 Depth=1
	jmp	.LBB84_30
.LBB84_22:                              # %sw.bb.53
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$6, %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB84_25
# BB#23:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB84_25
# BB#24:                                # %if.then.64
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -48(%rbp)
	movl	$32, -52(%rbp)
.LBB84_25:                              # %if.end.66
                                        #   in Loop: Header=BB84_4 Depth=1
	jmp	.LBB84_30
.LBB84_26:                              # %sw.bb.67
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$2, %rax
	addq	$1, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB84_29
# BB#27:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	subl	$28789, %ecx            # imm = 0x7075
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jne	.LBB84_29
# BB#28:                                # %if.then.78
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movl	$1, -52(%rbp)
.LBB84_29:                              # %if.end.80
                                        #   in Loop: Header=BB84_4 Depth=1
	jmp	.LBB84_30
.LBB84_30:                              # %sw.epilog
                                        #   in Loop: Header=BB84_4 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB84_32
# BB#31:                                # %if.then.83
	jmp	.LBB84_36
.LBB84_32:                              # %if.end.84
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB84_34
# BB#33:                                # %lor.lhs.false
                                        #   in Loop: Header=BB84_4 Depth=1
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$45, %ecx
	je	.LBB84_35
.LBB84_34:                              # %if.then.92
	jmp	.LBB84_36
.LBB84_35:                              # %if.end.93
                                        #   in Loop: Header=BB84_4 Depth=1
	movl	-52(%rbp), %eax
	orl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB84_4
.LBB84_36:                              # %for.end
	movl	-36(%rbp), %eax
	andl	$54, %eax
	cmpl	$0, %eax
	jne	.LBB84_42
# BB#37:                                # %land.lhs.true.97
	movq	-32(%rbp), %rax
	addq	$7, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-192(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB84_42
# BB#38:                                # %land.lhs.true.102
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movl	$.L.str.356, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB84_42
# BB#39:                                # %land.lhs.true.108
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rsi
	callq	SREF
	movl	$48, %ecx
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jg	.LBB84_42
# BB#40:                                # %land.lhs.true.114
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rsi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$57, %ecx
	jg	.LBB84_42
# BB#41:                                # %if.then.120
	movl	-36(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -36(%rbp)
.LBB84_42:                              # %if.end.122
	movl	-36(%rbp), %eax
	andl	$48, %eax
	cmpl	$0, %eax
	jne	.LBB84_46
# BB#43:                                # %land.lhs.true.125
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB84_46
# BB#44:                                # %land.lhs.true.130
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-32(%rbp), %rax
	movl	$.L.str.357, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB84_46
# BB#45:                                # %if.then.136
	movl	-36(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -36(%rbp)
.LBB84_46:                              # %if.end.138
	cmpq	$0, -16(%rbp)
	je	.LBB84_48
# BB#47:                                # %if.then.140
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB84_48:                              # %if.end.141
	movl	-36(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	parse_modifiers_uncached, .Lfunc_end84-parse_modifiers_uncached
	.cfi_endproc

	.align	16, 0x90
	.type	lispy_modifier_list,@function
lispy_modifier_list:                    # @lispy_modifier_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB85_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$1, %eax
	movl	-20(%rbp), %edx
	movb	%cl, -21(%rbp)          # 1-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	cmpl	-4(%rbp), %eax
	movb	-21(%rbp), %cl          # 1-byte Reload
	movb	%cl, -22(%rbp)          # 1-byte Spill
	jg	.LBB85_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB85_1 Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$28, %rax
	setb	%cl
	movb	%cl, -22(%rbp)          # 1-byte Spill
.LBB85_3:                               # %land.end
                                        #   in Loop: Header=BB85_1 Depth=1
	movb	-22(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB85_4
	jmp	.LBB85_8
.LBB85_4:                               # %for.body
                                        #   in Loop: Header=BB85_1 Depth=1
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-28(%rbp), %edx         # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB85_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB85_1 Depth=1
	movq	modifier_symbols, %rdi
	movslq	-20(%rbp), %rsi
	callq	AREF
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB85_6:                               # %if.end
                                        #   in Loop: Header=BB85_1 Depth=1
	jmp	.LBB85_7
.LBB85_7:                               # %for.inc
                                        #   in Loop: Header=BB85_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB85_1
.LBB85_8:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	lispy_modifier_list, .Lfunc_end85-lispy_modifier_list
	.cfi_endproc

	.globl	Fevent_symbol_parse_modifiers
	.align	16, 0x90
	.type	Fevent_symbol_parse_modifiers,@function
Fevent_symbol_parse_modifiers:          # @Fevent_symbol_parse_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	parse_modifiers
	movl	$384, %edi              # imm = 0x180
	movq	-8(%rbp), %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fevent_symbol_parse_modifiers, .Lfunc_end86-Fevent_symbol_parse_modifiers
	.cfi_endproc

	.globl	reorder_modifiers
	.align	16, 0x90
	.type	reorder_modifiers,@function
reorder_modifiers:                      # @reorder_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	parse_modifiers
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movl	%ecx, %edi
	callq	apply_modifiers
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	reorder_modifiers, .Lfunc_end87-reorder_modifiers
	.cfi_endproc

	.align	16, 0x90
	.type	apply_modifiers,@function
apply_modifiers:                        # @apply_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movslq	-12(%rbp), %rsi
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	andq	%rax, %rsi
	movl	%esi, %edi
	movl	%edi, -12(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	andl	$-5, %edi
	cmpl	$2, %edi
	jne	.LBB88_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movslq	-12(%rbp), %rcx
	orq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB88_10
.LBB88_2:                               # %if.end
	movl	$677, %edi              # imm = 0x2A5
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	andl	$-9, %ecx
	movslq	%ecx, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	assq_no_quit
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB88_4
# BB#3:                                 # %if.then.17
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB88_5
.LBB88_4:                               # %if.else
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SCHARS
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	callq	apply_modifiers_uncached
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fcons
	movl	$677, %edi              # imm = 0x2A5
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB88_5:                               # %if.end.31
	movl	$382, %edi              # imm = 0x17E
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB88_9
# BB#6:                                 # %if.then.37
	movl	$382, %edi              # imm = 0x17E
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB88_8
# BB#7:                                 # %if.then.43
	movl	$382, %edi              # imm = 0x17E
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB88_8:                               # %if.end.46
	jmp	.LBB88_9
.LBB88_9:                               # %if.end.47
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB88_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	apply_modifiers, .Lfunc_end88-apply_modifiers
	.cfi_endproc

	.globl	Fevent_convert_list
	.align	16, 0x90
	.type	Fevent_convert_list,@function
Fevent_convert_list:                    # @Fevent_convert_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB89_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB89_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB89_1 Depth=1
	movl	$0, -52(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB89_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB89_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	parse_solitary_modifier
	movl	%eax, -52(%rbp)
.LBB89_5:                               # %if.end
                                        #   in Loop: Header=BB89_1 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB89_7
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB89_1 Depth=1
	movl	-52(%rbp), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB89_11
.LBB89_7:                               # %if.else
                                        #   in Loop: Header=BB89_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB89_9
# BB#8:                                 # %if.then.18
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB89_9:                               # %if.else.19
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#10:                                # %if.end.20
                                        #   in Loop: Header=BB89_1 Depth=1
	jmp	.LBB89_11
.LBB89_11:                              # %if.end.21
                                        #   in Loop: Header=BB89_1 Depth=1
	jmp	.LBB89_1
.LBB89_12:                              # %while.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB89_15
# BB#13:                                # %land.lhs.true.26
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SCHARS
	cmpq	$1, %rax
	jne	.LBB89_15
# BB#14:                                # %if.then.31
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, %esi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -24(%rbp)
.LBB89_15:                              # %if.end.35
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB89_23
# BB#16:                                # %if.then.41
	movl	-28(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB89_20
# BB#17:                                # %land.lhs.true.45
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$97, %rax
	jl	.LBB89_20
# BB#18:                                # %land.lhs.true.48
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$122, %rax
	jg	.LBB89_20
# BB#19:                                # %if.then.52
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	subq	$32, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %ecx
	andl	$-33554433, %ecx        # imm = 0xFFFFFFFFFDFFFFFF
	movl	%ecx, -28(%rbp)
.LBB89_20:                              # %if.end.58
	movl	-28(%rbp), %eax
	andl	$67108864, %eax         # imm = 0x4000000
	cmpl	$0, %eax
	je	.LBB89_22
# BB#21:                                # %if.then.60
	movl	-28(%rbp), %eax
	andl	$-67108865, %eax        # imm = 0xFFFFFFFFFBFFFFFF
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	make_ctrl_char
	movl	-68(%rbp), %edx         # 4-byte Reload
	orl	%eax, %edx
	movslq	%edx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB89_26
.LBB89_22:                              # %if.else.69
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	orq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB89_26
.LBB89_23:                              # %if.else.75
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB89_25
# BB#24:                                # %if.then.80
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	apply_modifiers
	movq	%rax, -8(%rbp)
	jmp	.LBB89_26
.LBB89_25:                              # %if.else.82
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB89_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	Fevent_convert_list, .Lfunc_end89-Fevent_convert_list
	.cfi_endproc

	.globl	parse_solitary_modifier
	.align	16, 0x90
	.type	parse_solitary_modifier,@function
parse_solitary_modifier:                # @parse_solitary_modifier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp273:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	callq	SYMBOL_NAME
	movq	%rax, -24(%rbp)
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, %edx
	subl	$65, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, -32(%rbp)         # 4-byte Spill
	je	.LBB90_1
	jmp	.LBB90_64
.LBB90_64:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB90_8
	jmp	.LBB90_65
.LBB90_65:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB90_18
	jmp	.LBB90_66
.LBB90_66:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB90_25
	jmp	.LBB90_67
.LBB90_67:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB90_32
	jmp	.LBB90_68
.LBB90_68:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB90_4
	jmp	.LBB90_69
.LBB90_69:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB90_11
	jmp	.LBB90_70
.LBB90_70:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB90_44
	jmp	.LBB90_71
.LBB90_71:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB90_21
	jmp	.LBB90_72
.LBB90_72:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB90_28
	jmp	.LBB90_73
.LBB90_73:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB90_35
	jmp	.LBB90_74
.LBB90_74:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB90_54
	jmp	.LBB90_75
.LBB90_75:                              # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB90_58
	jmp	.LBB90_62
.LBB90_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB90_3
# BB#2:                                 # %if.then
	movl	$4194304, -4(%rbp)      # imm = 0x400000
	jmp	.LBB90_63
.LBB90_3:                               # %if.end
	jmp	.LBB90_62
.LBB90_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$3, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.6, %ecx
	movl	%ecx, %esi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_7
# BB#6:                                 # %if.then.10
	movl	$4194304, -4(%rbp)      # imm = 0x400000
	jmp	.LBB90_63
.LBB90_7:                               # %if.end.11
	jmp	.LBB90_62
.LBB90_8:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB90_10
# BB#9:                                 # %if.then.16
	movl	$67108864, -4(%rbp)     # imm = 0x4000000
	jmp	.LBB90_63
.LBB90_10:                              # %if.end.17
	jmp	.LBB90_62
.LBB90_11:                              # %sw.bb.18
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$4, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_14
# BB#12:                                # %land.lhs.true.22
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	(%rax), %ecx
	subl	$1819440227, %ecx       # imm = 0x6C727463
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jne	.LBB90_14
# BB#13:                                # %if.then.26
	movl	$67108864, -4(%rbp)     # imm = 0x4000000
	jmp	.LBB90_63
.LBB90_14:                              # %if.end.27
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$7, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_17
# BB#15:                                # %land.lhs.true.31
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_17
# BB#16:                                # %if.then.35
	movl	$67108864, -4(%rbp)     # imm = 0x4000000
	jmp	.LBB90_63
.LBB90_17:                              # %if.end.36
	jmp	.LBB90_62
.LBB90_18:                              # %sw.bb.37
	movq	-24(%rbp), %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB90_20
# BB#19:                                # %if.then.41
	movl	$16777216, -4(%rbp)     # imm = 0x1000000
	jmp	.LBB90_63
.LBB90_20:                              # %if.end.42
	jmp	.LBB90_62
.LBB90_21:                              # %sw.bb.43
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$5, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_24
# BB#22:                                # %land.lhs.true.47
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_24
# BB#23:                                # %if.then.51
	movl	$16777216, -4(%rbp)     # imm = 0x1000000
	jmp	.LBB90_63
.LBB90_24:                              # %if.end.52
	jmp	.LBB90_62
.LBB90_25:                              # %sw.bb.53
	movq	-24(%rbp), %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB90_27
# BB#26:                                # %if.then.57
	movl	$134217728, -4(%rbp)    # imm = 0x8000000
	jmp	.LBB90_63
.LBB90_27:                              # %if.end.58
	jmp	.LBB90_62
.LBB90_28:                              # %sw.bb.59
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$4, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_31
# BB#29:                                # %land.lhs.true.63
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	(%rax), %ecx
	subl	$1635018093, %ecx       # imm = 0x6174656D
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jne	.LBB90_31
# BB#30:                                # %if.then.67
	movl	$134217728, -4(%rbp)    # imm = 0x8000000
	jmp	.LBB90_63
.LBB90_31:                              # %if.end.68
	jmp	.LBB90_62
.LBB90_32:                              # %sw.bb.69
	movq	-24(%rbp), %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB90_34
# BB#33:                                # %if.then.73
	movl	$33554432, -4(%rbp)     # imm = 0x2000000
	jmp	.LBB90_63
.LBB90_34:                              # %if.end.74
	jmp	.LBB90_62
.LBB90_35:                              # %sw.bb.75
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$5, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_38
# BB#36:                                # %land.lhs.true.79
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_38
# BB#37:                                # %if.then.83
	movl	$33554432, -4(%rbp)     # imm = 0x2000000
	jmp	.LBB90_63
.LBB90_38:                              # %if.end.84
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$5, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_41
# BB#39:                                # %land.lhs.true.88
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_41
# BB#40:                                # %if.then.92
	movl	$8388608, -4(%rbp)      # imm = 0x800000
	jmp	.LBB90_63
.LBB90_41:                              # %if.end.93
	movq	-24(%rbp), %rdi
	callq	SBYTES
	cmpq	$1, %rax
	jne	.LBB90_43
# BB#42:                                # %if.then.97
	movl	$8388608, -4(%rbp)      # imm = 0x800000
	jmp	.LBB90_63
.LBB90_43:                              # %if.end.98
	jmp	.LBB90_62
.LBB90_44:                              # %sw.bb.99
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$4, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_47
# BB#45:                                # %land.lhs.true.103
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	(%rax), %ecx
	subl	$1734439524, %ecx       # imm = 0x67617264
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jne	.LBB90_47
# BB#46:                                # %if.then.107
	movl	$4, -4(%rbp)
	jmp	.LBB90_63
.LBB90_47:                              # %if.end.108
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$4, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_50
# BB#48:                                # %land.lhs.true.112
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	(%rax), %ecx
	subl	$1853321060, %ecx       # imm = 0x6E776F64
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jne	.LBB90_50
# BB#49:                                # %if.then.116
	movl	$2, -4(%rbp)
	jmp	.LBB90_63
.LBB90_50:                              # %if.end.117
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$6, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_53
# BB#51:                                # %land.lhs.true.121
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_53
# BB#52:                                # %if.then.125
	movl	$16, -4(%rbp)
	jmp	.LBB90_63
.LBB90_53:                              # %if.end.126
	jmp	.LBB90_62
.LBB90_54:                              # %sw.bb.127
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$6, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_57
# BB#55:                                # %land.lhs.true.131
	movq	-24(%rbp), %rdi
	callq	SDATA
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB90_57
# BB#56:                                # %if.then.135
	movl	$32, -4(%rbp)
	jmp	.LBB90_63
.LBB90_57:                              # %if.end.136
	jmp	.LBB90_62
.LBB90_58:                              # %sw.bb.137
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movl	$2, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jne	.LBB90_61
# BB#59:                                # %land.lhs.true.141
	movq	-24(%rbp), %rdi
	callq	SDATA
	movzwl	(%rax), %ecx
	subl	$28789, %ecx            # imm = 0x7075
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jne	.LBB90_61
# BB#60:                                # %if.then.145
	movl	$1, -4(%rbp)
	jmp	.LBB90_63
.LBB90_61:                              # %if.end.146
	jmp	.LBB90_62
.LBB90_62:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB90_63:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	parse_solitary_modifier, .Lfunc_end90-parse_solitary_modifier
	.cfi_endproc

	.globl	lucid_event_type_list_p
	.align	16, 0x90
	.type	lucid_event_type_list_p,@function
lucid_event_type_list_p:                # @lucid_event_type_list_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB91_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB91_15
.LBB91_2:                               # %if.end
	movl	$516, %edi              # imm = 0x204
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB91_6
# BB#3:                                 # %lor.lhs.false
	movl	$1001, %edi             # imm = 0x3E9
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB91_6
# BB#4:                                 # %lor.lhs.false.9
	movl	$672, %edi              # imm = 0x2A0
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB91_6
# BB#5:                                 # %lor.lhs.false.15
	movl	$513, %edi              # imm = 0x201
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB91_7
.LBB91_6:                               # %if.then.21
	movb	$0, -1(%rbp)
	jmp	.LBB91_15
.LBB91_7:                               # %if.end.22
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB91_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB91_14
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB91_8 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB91_12
# BB#10:                                # %lor.lhs.false.34
                                        #   in Loop: Header=BB91_8 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB91_12
# BB#11:                                # %if.then.39
	movb	$0, -1(%rbp)
	jmp	.LBB91_15
.LBB91_12:                              # %if.end.40
                                        #   in Loop: Header=BB91_8 Depth=1
	jmp	.LBB91_13
.LBB91_13:                              # %for.inc
                                        #   in Loop: Header=BB91_8 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB91_8
.LBB91_14:                              # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
.LBB91_15:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	lucid_event_type_list_p, .Lfunc_end91-lucid_event_type_list_p
	.cfi_endproc

	.globl	record_asynch_buffer_change
	.align	16, 0x90
	.type	record_asynch_buffer_change,@function
record_asynch_buffer_change:            # @record_asynch_buffer_change
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp277:
	.cfi_def_cfa_offset 16
.Ltmp278:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp279:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	callq	Fwaiting_for_user_input_p
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB92_5
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$56, %ecx
	movl	%ecx, %edx
	leaq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	memset
	movl	-56(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$12, %eax
	movl	%eax, -56(%rbp)
	movl	-68(%rbp), %edi         # 4-byte Reload
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	testb	$1, interrupt_input
	je	.LBB92_3
# BB#2:                                 # %if.then.4
	leaq	-56(%rbp), %rdi
	callq	kbd_buffer_store_event
	jmp	.LBB92_4
.LBB92_3:                               # %if.else
	callq	stop_polling
	leaq	-56(%rbp), %rdi
	callq	kbd_buffer_store_event
	callq	start_polling
.LBB92_4:                               # %if.end
	jmp	.LBB92_5
.LBB92_5:                               # %if.end.5
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	record_asynch_buffer_change, .Lfunc_end92-record_asynch_buffer_change
	.cfi_endproc

	.align	16, 0x90
	.type	store_user_signal_events,@function
store_user_signal_events:               # @store_user_signal_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	$0, -65(%rbp)
	movq	user_signals, %rax
	movq	%rax, -8(%rbp)
.LBB93_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_6 Depth 2
	cmpq	$0, -8(%rbp)
	je	.LBB93_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB93_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB93_1 Depth=1
	testb	$1, -65(%rbp)
	jne	.LBB93_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB93_1 Depth=1
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-64(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$19, %eax
	movl	%eax, -64(%rbp)
	movq	selected_frame, %rcx
	movq	%rcx, -24(%rbp)
	movb	$1, -65(%rbp)
.LBB93_5:                               # %if.end
                                        #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_6
.LBB93_6:                               # %do.body
                                        #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	callq	kbd_buffer_store_event
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
# BB#7:                                 # %do.cond
                                        #   in Loop: Header=BB93_6 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jg	.LBB93_6
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_9
.LBB93_9:                               # %if.end.6
                                        #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_10
.LBB93_10:                              # %for.inc
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB93_1
.LBB93_11:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	store_user_signal_events, .Lfunc_end93-store_user_signal_events
	.cfi_endproc

	.globl	tty_read_avail_input
	.align	16, 0x90
	.type	tty_read_avail_input,@function
tty_read_avail_input:                   # @tty_read_avail_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp285:
	.cfi_def_cfa_register %rbp
	subq	$4208, %rsp             # imm = 0x1070
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -4144(%rbp)
	movl	$0, -4148(%rbp)
	callq	kbd_buffer_nr_stored
	movl	$4096, %ecx             # imm = 0x1000
	subl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -4152(%rbp)
	callq	kbd_on_hold_p
	testb	$1, %al
	jne	.LBB94_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -4152(%rbp)
	jg	.LBB94_3
.LBB94_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB94_43
.LBB94_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB94_5
# BB#4:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB94_43
.LBB94_5:                               # %if.end.5
	movq	-16(%rbp), %rax
	cmpl	$1, 56(%rax)
	je	.LBB94_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$3, 56(%rax)
	je	.LBB94_8
# BB#7:                                 # %if.then.9
	callq	emacs_abort
.LBB94_8:                               # %if.end.10
	movq	-4144(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB94_10
# BB#9:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB94_43
.LBB94_10:                              # %if.end.12
	movq	-4144(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB94_12
# BB#11:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB94_43
.LBB94_12:                              # %if.end.15
	movq	-4144(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	$21531, %ecx            # imm = 0x541B
	movl	%ecx, %esi
	leaq	-4132(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB94_17
# BB#13:                                # %if.then.20
	testb	$1, noninteractive
	jne	.LBB94_15
# BB#14:                                # %if.then.22
	movl	$-2, -4(%rbp)
	jmp	.LBB94_43
.LBB94_15:                              # %if.else
	movl	$0, -4132(%rbp)
# BB#16:                                # %if.end.23
	jmp	.LBB94_17
.LBB94_17:                              # %if.end.24
	cmpl	$0, -4132(%rbp)
	jne	.LBB94_19
# BB#18:                                # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB94_43
.LBB94_19:                              # %if.end.27
	movslq	-4132(%rbp), %rax
	cmpq	$4095, %rax             # imm = 0xFFF
	jbe	.LBB94_21
# BB#20:                                # %if.then.30
	movl	$4095, -4132(%rbp)      # imm = 0xFFF
.LBB94_21:                              # %if.end.31
	movl	-4132(%rbp), %eax
	cmpl	-4152(%rbp), %eax
	jle	.LBB94_23
# BB#22:                                # %if.then.34
	movl	-4152(%rbp), %eax
	movl	%eax, -4132(%rbp)
.LBB94_23:                              # %if.end.35
	jmp	.LBB94_24
.LBB94_24:                              # %do.body
	movq	-4144(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-4128(%rbp), %rsi
	movslq	-4132(%rbp), %rdx
	movl	%eax, %edi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -4148(%rbp)
	cmpl	$-1, -4148(%rbp)
	jne	.LBB94_27
# BB#25:                                # %land.lhs.true.43
	callq	__errno_location
	cmpl	$5, (%rax)
	jne	.LBB94_27
# BB#26:                                # %if.then.47
	movl	$-2, -4(%rbp)
	jmp	.LBB94_43
.LBB94_27:                              # %if.end.48
	jmp	.LBB94_28
.LBB94_28:                              # %do.end
	cmpl	$0, -4148(%rbp)
	jg	.LBB94_30
# BB#29:                                # %if.then.51
	movl	-4148(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB94_43
.LBB94_30:                              # %if.end.52
	movl	$0, -4136(%rbp)
.LBB94_31:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4136(%rbp), %eax
	cmpl	-4148(%rbp), %eax
	jge	.LBB94_42
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB94_31 Depth=1
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	leaq	-4208(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-4208(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$1, %eax
	movl	%eax, -4208(%rbp)
	movl	$0, -4200(%rbp)
	movq	-4144(%rbp), %rcx
	cmpl	$1, 8780(%rcx)
	jne	.LBB94_35
# BB#33:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB94_31 Depth=1
	movslq	-4136(%rbp), %rax
	movzbl	-4128(%rbp,%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB94_35
# BB#34:                                # %if.then.62
                                        #   in Loop: Header=BB94_31 Depth=1
	movl	$134217728, -4200(%rbp) # imm = 0x8000000
.LBB94_35:                              # %if.end.64
                                        #   in Loop: Header=BB94_31 Depth=1
	movq	-4144(%rbp), %rax
	cmpl	$2, 8780(%rax)
	je	.LBB94_37
# BB#36:                                # %if.then.68
                                        #   in Loop: Header=BB94_31 Depth=1
	movslq	-4136(%rbp), %rax
	movzbl	-4128(%rbp,%rax), %ecx
	andl	$-129, %ecx
	movb	%cl, %dl
	movb	%dl, -4128(%rbp,%rax)
.LBB94_37:                              # %if.end.74
                                        #   in Loop: Header=BB94_31 Depth=1
	xorl	%edi, %edi
	movslq	-4136(%rbp), %rax
	movzbl	-4128(%rbp,%rax), %ecx
	movl	%ecx, -4204(%rbp)
	movq	-4144(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -4168(%rbp)
	callq	builtin_lisp_symbol
	leaq	-4208(%rbp), %rdi
	movq	%rax, -4160(%rbp)
	callq	kbd_buffer_store_event
	movl	-4208(%rbp), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$1, %ecx
	jne	.LBB94_40
# BB#38:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB94_31 Depth=1
	movl	-4204(%rbp), %eax
	cmpl	quit_char, %eax
	jne	.LBB94_40
# BB#39:                                # %if.then.87
	jmp	.LBB94_42
.LBB94_40:                              # %if.end.88
                                        #   in Loop: Header=BB94_31 Depth=1
	jmp	.LBB94_41
.LBB94_41:                              # %for.inc
                                        #   in Loop: Header=BB94_31 Depth=1
	movl	-4136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4136(%rbp)
	jmp	.LBB94_31
.LBB94_42:                              # %for.end
	movl	-4148(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB94_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$4208, %rsp             # imm = 0x1070
	popq	%rbp
	retq
.Lfunc_end94:
	.size	tty_read_avail_input, .Lfunc_end94-tty_read_avail_input
	.cfi_endproc

	.align	16, 0x90
	.type	handle_async_input,@function
handle_async_input:                     # @handle_async_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
.LBB95_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	callq	gobble_input
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB95_3
# BB#2:                                 # %if.then
	jmp	.LBB95_4
.LBB95_3:                               # %if.end
                                        #   in Loop: Header=BB95_1 Depth=1
	jmp	.LBB95_1
.LBB95_4:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	handle_async_input, .Lfunc_end95-handle_async_input
	.cfi_endproc

	.globl	unblock_input_to
	.align	16, 0x90
	.type	unblock_input_to,@function
unblock_input_to:                       # @unblock_input_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, interrupt_input_blocked
	cmpl	$0, -4(%rbp)
	jne	.LBB96_5
# BB#1:                                 # %if.then
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB96_4
# BB#2:                                 # %land.lhs.true
	testb	$1, fatal_error_in_progress
	jne	.LBB96_4
# BB#3:                                 # %if.then.2
	callq	process_pending_signals
.LBB96_4:                               # %if.end
	jmp	.LBB96_8
.LBB96_5:                               # %if.else
	cmpl	$0, -4(%rbp)
	jge	.LBB96_7
# BB#6:                                 # %if.then.4
	callq	emacs_abort
.LBB96_7:                               # %if.end.5
	jmp	.LBB96_8
.LBB96_8:                               # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	unblock_input_to, .Lfunc_end96-unblock_input_to
	.cfi_endproc

	.globl	unblock_input
	.align	16, 0x90
	.type	unblock_input,@function
unblock_input:                          # @unblock_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	movl	interrupt_input_blocked, %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	unblock_input_to
	popq	%rbp
	retq
.Lfunc_end97:
	.size	unblock_input, .Lfunc_end97-unblock_input
	.cfi_endproc

	.globl	handle_input_available_signal
	.align	16, 0x90
	.type	handle_input_available_signal,@function
handle_input_available_signal:          # @handle_input_available_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp295:
	.cfi_def_cfa_offset 16
.Ltmp296:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp297:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movb	$1, pending_signals
	cmpq	$0, input_available_clear_time
	je	.LBB98_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	input_available_clear_time, %rdx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	make_timespec
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 8(%rcx)
.LBB98_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	handle_input_available_signal, .Lfunc_end98-handle_input_available_signal
	.cfi_endproc

	.globl	add_user_signal
	.align	16, 0x90
	.type	add_user_signal,@function
add_user_signal:                        # @add_user_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp298:
	.cfi_def_cfa_offset 16
.Ltmp299:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp300:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	user_signals, %rsi
	movq	%rsi, -176(%rbp)
.LBB99_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB99_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB99_1 Depth=1
	movq	-176(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	jne	.LBB99_4
# BB#3:                                 # %if.then
	jmp	.LBB99_7
.LBB99_4:                               # %if.end
                                        #   in Loop: Header=BB99_1 Depth=1
	jmp	.LBB99_5
.LBB99_5:                               # %for.inc
                                        #   in Loop: Header=BB99_1 Depth=1
	movq	-176(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB99_1
.LBB99_6:                               # %for.end
	movl	$32, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -176(%rbp)
	movl	-4(%rbp), %ecx
	movq	-176(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	leaq	-168(%rbp), %rdi
	movabsq	$deliver_user_signal, %rsi
	movq	-176(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-176(%rbp), %rax
	movl	$0, 16(%rax)
	movq	user_signals, %rax
	movq	-176(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-176(%rbp), %rax
	movq	%rax, user_signals
	callq	emacs_sigaction_init
	leaq	-168(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %edi
	callq	sigaction
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB99_7:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	add_user_signal, .Lfunc_end99-add_user_signal
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_user_signal,@function
deliver_user_signal:                    # @deliver_user_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
.Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp303:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$handle_user_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	deliver_user_signal, .Lfunc_end100-deliver_user_signal
	.cfi_endproc

	.globl	menu_separator_name_p
	.align	16, 0x90
	.type	menu_separator_name_p,@function
menu_separator_name_p:                  # @menu_separator_name_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
.Ltmp305:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp306:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB101_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB101_18
.LBB101_2:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$3, %rax
	jbe	.LBB101_12
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movzwl	(%rax), %ecx
	subl	$11565, %ecx            # imm = 0x2D2D
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jne	.LBB101_12
# BB#4:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB101_12
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB101_6:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$0, separator_names(,%rax,8)
	je	.LBB101_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB101_6 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	separator_names(,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB101_9
# BB#8:                                 # %if.then.14
	movb	$1, -1(%rbp)
	jmp	.LBB101_18
.LBB101_9:                              # %if.end
                                        #   in Loop: Header=BB101_6 Depth=1
	jmp	.LBB101_10
.LBB101_10:                             # %for.inc
                                        #   in Loop: Header=BB101_6 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB101_6
.LBB101_11:                             # %for.end
	jmp	.LBB101_16
.LBB101_12:                             # %if.else.15
	jmp	.LBB101_13
.LBB101_13:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB101_15
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB101_13 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB101_13
.LBB101_15:                             # %while.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
	jmp	.LBB101_18
.LBB101_16:                             # %if.end.22
	jmp	.LBB101_17
.LBB101_17:                             # %if.end.23
	movb	$0, -1(%rbp)
.LBB101_18:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	menu_separator_name_p, .Lfunc_end101-menu_separator_name_p
	.cfi_endproc

	.globl	menu_bar_items
	.align	16, 0x90
	.type	menu_bar_items,@function
menu_bar_items:                         # @menu_bar_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp309:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	globals+1104, %rax
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1104
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, menu_bar_items_vector
	jmp	.LBB102_3
.LBB102_2:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$98, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, menu_bar_items_vector
.LBB102_3:                              # %if.end
	xorl	%edi, %edi
	movl	$0, menu_bar_items_index
	movq	globals+1736, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_10
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1728, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_10
# BB#5:                                 # %if.then.9
	xorl	%edi, %edi
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_7
# BB#6:                                 # %if.then.12
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB102_7:                              # %if.end.14
	xorl	%edi, %edi
	movq	globals+1728, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_9
# BB#8:                                 # %if.then.17
	movq	globals+1728, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB102_9:                              # %if.end.20
	jmp	.LBB102_23
.LBB102_10:                             # %if.else.21
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-112(%rbp), %rsi
	callq	current_minor_maps
	movq	%rax, -120(%rbp)
# BB#11:                                # %do.body
	movq	-120(%rbp), %rax
	addq	$4, %rax
	movq	-88(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB102_13
# BB#12:                                # %if.then.25
	movq	-120(%rbp), %rax
	leaq	32(,%rax,8), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-120(%rbp), %rax
	leaq	47(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -24(%rbp)
	jmp	.LBB102_14
.LBB102_13:                             # %if.else.29
	movl	$8, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -24(%rbp)
	movb	$1, -97(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB102_14:                             # %if.end.32
	jmp	.LBB102_15
.LBB102_15:                             # %do.end
	xorl	%edi, %edi
	movq	$0, -16(%rbp)
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_18
# BB#16:                                # %land.lhs.true.36
	xorl	%edi, %edi
	movq	globals+1736, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_18
# BB#17:                                # %if.then.39
	movq	-128(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB102_18:                             # %if.end.42
	movl	$589, %edi              # imm = 0x24D
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB102_19
	jmp	.LBB102_20
.LBB102_19:                             # %if.then.48
	movq	-128(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB102_20:                             # %if.end.51
	cmpq	$0, -120(%rbp)
	je	.LBB102_22
# BB#21:                                # %if.then.53
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-120(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB102_22:                             # %if.end.56
	movl	$633, %edi              # imm = 0x279
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
.LBB102_23:                             # %if.end.63
	movq	current_global_map, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB102_24:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	jl	.LBB102_31
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB102_24 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_29
# BB#26:                                # %if.then.71
                                        #   in Loop: Header=BB102_24 Depth=1
	movl	$651, %edi              # imm = 0x28B
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -292(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movl	-292(%rbp), %edx        # 4-byte Reload
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	access_keymap
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	get_keymap
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB102_28
# BB#27:                                # %if.then.78
                                        #   in Loop: Header=BB102_24 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, menu_bar_one_keymap_changed_items
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$menu_bar_item, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	map_keymap_canonical
.LBB102_28:                             # %if.end.81
                                        #   in Loop: Header=BB102_24 Depth=1
	jmp	.LBB102_29
.LBB102_29:                             # %if.end.82
                                        #   in Loop: Header=BB102_24 Depth=1
	jmp	.LBB102_30
.LBB102_30:                             # %for.inc
                                        #   in Loop: Header=BB102_24 Depth=1
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB102_24
.LBB102_31:                             # %for.end
	movq	globals+1408, %rax
	movq	%rax, -64(%rbp)
.LBB102_32:                             # %for.cond.83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB102_34 Depth 2
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB102_43
# BB#33:                                # %for.body.88
                                        #   in Loop: Header=BB102_32 Depth=1
	movl	menu_bar_items_index, %eax
	movl	%eax, -136(%rbp)
	movl	$0, -132(%rbp)
.LBB102_34:                             # %for.cond.89
                                        #   Parent Loop BB102_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB102_41
# BB#35:                                # %for.body.92
                                        #   in Loop: Header=BB102_34 Depth=2
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	menu_bar_items_vector, %rdi
	movslq	-132(%rbp), %rsi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB102_39
# BB#36:                                # %if.then.98
                                        #   in Loop: Header=BB102_32 Depth=1
	movq	menu_bar_items_vector, %rdi
	movl	-132(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	menu_bar_items_vector, %rdi
	movl	-132(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -152(%rbp)
	movq	menu_bar_items_vector, %rdi
	movl	-132(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -160(%rbp)
	movq	menu_bar_items_vector, %rdi
	movl	-132(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -168(%rbp)
	movl	-136(%rbp), %ecx
	movl	-132(%rbp), %edx
	addl	$4, %edx
	cmpl	%edx, %ecx
	jle	.LBB102_38
# BB#37:                                # %if.then.114
                                        #   in Loop: Header=BB102_32 Depth=1
	movq	menu_bar_items_vector, %rdi
	movslq	-132(%rbp), %rsi
	callq	aref_addr
	movq	menu_bar_items_vector, %rdi
	movl	-132(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	aref_addr
	movl	-136(%rbp), %ecx
	subl	-132(%rbp), %ecx
	subl	$4, %ecx
	shll	$3, %ecx
	movslq	%ecx, %rdx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memmove
.LBB102_38:                             # %if.end.124
                                        #   in Loop: Header=BB102_32 Depth=1
	movq	menu_bar_items_vector, %rdi
	movl	-136(%rbp), %eax
	subl	$4, %eax
	movslq	%eax, %rsi
	movq	-144(%rbp), %rdx
	callq	ASET
	movq	menu_bar_items_vector, %rdi
	movl	-136(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rsi
	movq	-152(%rbp), %rdx
	callq	ASET
	movq	menu_bar_items_vector, %rdi
	movl	-136(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rsi
	movq	-160(%rbp), %rdx
	callq	ASET
	movq	menu_bar_items_vector, %rdi
	movl	-136(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movq	-168(%rbp), %rdx
	callq	ASET
	jmp	.LBB102_41
.LBB102_39:                             # %if.end.133
                                        #   in Loop: Header=BB102_34 Depth=2
	jmp	.LBB102_40
.LBB102_40:                             # %for.inc.134
                                        #   in Loop: Header=BB102_34 Depth=2
	movl	-132(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB102_34
.LBB102_41:                             # %for.end.136
                                        #   in Loop: Header=BB102_32 Depth=1
	jmp	.LBB102_42
.LBB102_42:                             # %for.inc.137
                                        #   in Loop: Header=BB102_32 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB102_32
.LBB102_43:                             # %for.end.139
	movl	menu_bar_items_index, %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	menu_bar_items_vector, %rdi
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB102_45
# BB#44:                                # %if.then.146
	movl	$4, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	menu_bar_items_vector, %rdi
	callq	larger_vector
	movq	%rax, menu_bar_items_vector
.LBB102_45:                             # %if.end.148
	xorl	%edi, %edi
	movq	menu_bar_items_vector, %rax
	movslq	-172(%rbp), %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	movq	menu_bar_items_vector, %rax
	movslq	-172(%rbp), %rsi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	movq	menu_bar_items_vector, %rax
	movslq	-172(%rbp), %rsi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	movq	menu_bar_items_vector, %rax
	movslq	-172(%rbp), %rsi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	movl	-172(%rbp), %ecx
	movl	%ecx, menu_bar_items_index
	movq	-80(%rbp), %rax
	movq	%rax, globals+1104
# BB#46:                                # %do.body.161
	testb	$1, -97(%rbp)
	je	.LBB102_48
# BB#47:                                # %if.then.162
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB102_48:                             # %if.end.165
	jmp	.LBB102_49
.LBB102_49:                             # %do.end.166
	movq	menu_bar_items_vector, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	menu_bar_items, .Lfunc_end102-menu_bar_items
	.cfi_endproc

	.align	16, 0x90
	.type	menu_bar_item,@function
menu_bar_item:                          # @menu_bar_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
.Ltmp311:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp312:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$959, %eax              # imm = 0x3BF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB103_10
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB103_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	menu_bar_items_index, %eax
	jge	.LBB103_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB103_2 Depth=1
	movq	-8(%rbp), %rax
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	AREF
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB103_7
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB103_2 Depth=1
	movl	menu_bar_items_index, %eax
	movl	-36(%rbp), %ecx
	addl	$4, %ecx
	cmpl	%ecx, %eax
	jle	.LBB103_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB103_2 Depth=1
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rsi
	callq	aref_addr
	movq	menu_bar_items_vector, %rdi
	movl	-36(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	aref_addr
	movl	menu_bar_items_index, %ecx
	subl	-36(%rbp), %ecx
	subl	$4, %ecx
	shll	$3, %ecx
	movslq	%ecx, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	memmove
.LBB103_6:                              # %if.end
                                        #   in Loop: Header=BB103_2 Depth=1
	movl	menu_bar_items_index, %eax
	subl	$4, %eax
	movl	%eax, menu_bar_items_index
.LBB103_7:                              # %if.end.17
                                        #   in Loop: Header=BB103_2 Depth=1
	jmp	.LBB103_8
.LBB103_8:                              # %for.inc
                                        #   in Loop: Header=BB103_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB103_2
.LBB103_9:                              # %for.end
	jmp	.LBB103_10
.LBB103_10:                             # %if.end.19
	movq	-8(%rbp), %rdi
	movq	menu_bar_one_keymap_changed_items, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB103_12
# BB#11:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB103_13
.LBB103_12:                             # %if.then.27
	jmp	.LBB103_30
.LBB103_13:                             # %if.end.28
	movq	-8(%rbp), %rdi
	movq	menu_bar_one_keymap_changed_items, %rsi
	callq	Fcons
	movl	$1, %esi
	movq	%rax, menu_bar_one_keymap_changed_items
	movq	-16(%rbp), %rdi
	callq	parse_menu_item
	andb	$1, %al
	movb	%al, -37(%rbp)
	testb	$1, -37(%rbp)
	jne	.LBB103_15
# BB#14:                                # %if.then.31
	jmp	.LBB103_30
.LBB103_15:                             # %if.end.32
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
.LBB103_16:                             # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	menu_bar_items_index, %eax
	jge	.LBB103_21
# BB#17:                                # %for.body.37
                                        #   in Loop: Header=BB103_16 Depth=1
	movq	-8(%rbp), %rax
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB103_19
# BB#18:                                # %if.then.42
	jmp	.LBB103_21
.LBB103_19:                             # %if.end.43
                                        #   in Loop: Header=BB103_16 Depth=1
	jmp	.LBB103_20
.LBB103_20:                             # %for.inc.44
                                        #   in Loop: Header=BB103_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB103_16
.LBB103_21:                             # %for.end.46
	movl	-36(%rbp), %eax
	cmpl	menu_bar_items_index, %eax
	jne	.LBB103_25
# BB#22:                                # %if.then.49
	movl	-36(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	movq	menu_bar_items_vector, %rdi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB103_24
# BB#23:                                # %if.then.55
	movl	$4, %eax
	movl	%eax, %esi
	movq	$-1, %rdx
	movq	menu_bar_items_vector, %rdi
	callq	larger_vector
	movq	%rax, menu_bar_items_vector
.LBB103_24:                             # %if.end.57
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movl	$1, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rdx
	movq	item_properties, %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -36(%rbp)
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	list1
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$2, %r8d
	movl	%r8d, %edx
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -36(%rbp)
	movq	menu_bar_items_vector, %rdi
	movslq	-36(%rbp), %rsi
	callq	ASET
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -36(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, menu_bar_items_index
	jmp	.LBB103_30
.LBB103_25:                             # %if.else
	movq	menu_bar_items_vector, %rdi
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	je	.LBB103_28
# BB#26:                                # %land.lhs.true
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB103_28
# BB#27:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB103_29
.LBB103_28:                             # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB103_29:                             # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
	movq	menu_bar_items_vector, %rdi
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdx
	callq	ASET
.LBB103_30:                             # %if.end.83
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	menu_bar_item, .Lfunc_end103-menu_bar_item
	.cfi_endproc

	.globl	menu_item_eval_property
	.align	16, 0x90
	.type	menu_item_eval_property,@function
menu_item_eval_property:                # @menu_item_eval_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp313:
	.cfi_def_cfa_offset 16
.Ltmp314:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp315:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movl	$548, %edi              # imm = 0x224
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$372, %edi              # imm = 0x174
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$eval_dyn, %rdi
	movabsq	$menu_item_eval_property_1, %rcx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	unbind_to
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	menu_item_eval_property, .Lfunc_end104-menu_item_eval_property
	.cfi_endproc

	.align	16, 0x90
	.type	eval_dyn,@function
eval_dyn:                               # @eval_dyn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp316:
	.cfi_def_cfa_offset 16
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp318:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Feval
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	eval_dyn, .Lfunc_end105-eval_dyn
	.cfi_endproc

	.align	16, 0x90
	.type	menu_item_eval_property_1,@function
menu_item_eval_property_1:              # @menu_item_eval_property_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
.Ltmp320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp321:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB106_3
# BB#1:                                 # %land.lhs.true
	movl	$782, %edi              # imm = 0x30E
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB106_3
# BB#2:                                 # %if.then
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB106_3:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	menu_item_eval_property_1, .Lfunc_end106-menu_item_eval_property_1
	.cfi_endproc

	.globl	parse_menu_item
	.align	16, 0x90
	.type	parse_menu_item,@function
parse_menu_item:                        # @parse_menu_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
.Ltmp323:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp324:
	.cfi_def_cfa_register %rbp
	subq	$528, %rsp              # imm = 0x210
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$3, %esi
	je	.LBB107_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB107_128
.LBB107_2:                              # %if.end
	xorl	%edi, %edi
	movq	item_properties, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_4
# BB#3:                                 # %if.then.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$38, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, item_properties
.LBB107_4:                              # %if.end.9
	movl	$2, -76(%rbp)
.LBB107_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -76(%rbp)
	jge	.LBB107_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB107_5 Depth=1
	xorl	%edi, %edi
	movq	item_properties, %rax
	movslq	-76(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB107_5 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB107_5
.LBB107_8:                              # %for.end
	movl	$901, %edi              # imm = 0x385
	movq	item_properties, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	item_properties, %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_9
	jmp	.LBB107_25
.LBB107_9:                              # %if.then.17
	movl	$1, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-48(%rbp), %rdx
	callq	ASET
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	jne	.LBB107_12
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_11
	jmp	.LBB107_12
.LBB107_11:                             # %if.then.26
	movq	item_properties, %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fsubstitute_command_keys
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB107_12:                             # %if.end.33
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_17
# BB#13:                                # %land.lhs.true.38
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_17
# BB#14:                                # %land.lhs.true.45
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_16
# BB#15:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB107_16
	jmp	.LBB107_17
.LBB107_16:                             # %if.then.59
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB107_17:                             # %if.end.63
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB107_24
# BB#18:                                # %if.then.68
	movl	$656, %edi              # imm = 0x290
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	globals+648, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB107_20
# BB#19:                                # %if.then.74
	movl	$901, %edi              # imm = 0x385
	movq	item_properties, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB107_23
.LBB107_20:                             # %if.else
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_22
# BB#21:                                # %if.then.79
	movl	$8, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
.LBB107_22:                             # %if.end.80
	jmp	.LBB107_23
.LBB107_23:                             # %if.end.81
	jmp	.LBB107_24
.LBB107_24:                             # %if.end.82
	jmp	.LBB107_82
.LBB107_25:                             # %if.else.83
	movl	$657, %edi              # imm = 0x291
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_80
# BB#26:                                # %land.lhs.true.87
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_80
# BB#27:                                # %if.then.92
	movl	$1, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	callq	ASET
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB107_75
# BB#28:                                # %if.then.102
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	callq	ASET
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB107_31
# BB#29:                                # %land.lhs.true.112
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_31
# BB#30:                                # %if.then.119
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB107_31:                             # %if.end.123
	jmp	.LBB107_32
.LBB107_32:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -249(%rbp)         # 1-byte Spill
	jne	.LBB107_34
# BB#33:                                # %land.rhs
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -249(%rbp)         # 1-byte Spill
.LBB107_34:                             # %land.end
                                        #   in Loop: Header=BB107_32 Depth=1
	movb	-249(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB107_35
	jmp	.LBB107_74
.LBB107_35:                             # %while.body
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$37, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_40
# BB#36:                                # %if.then.143
                                        #   in Loop: Header=BB107_32 Depth=1
	xorl	%edi, %edi
	movq	globals+648, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_38
# BB#37:                                # %if.then.147
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	item_properties, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB107_39
.LBB107_38:                             # %if.else.149
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	callq	ASET
.LBB107_39:                             # %if.end.152
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_73
.LBB107_40:                             # %if.else.153
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$135, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_44
# BB#41:                                # %if.then.157
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	menu_item_eval_property
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_43
# BB#42:                                # %if.then.164
	movb	$0, -1(%rbp)
	jmp	.LBB107_128
.LBB107_43:                             # %if.end.165
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_72
.LBB107_44:                             # %if.else.166
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$59, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_48
# BB#45:                                # %if.then.170
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_46
	jmp	.LBB107_47
.LBB107_46:                             # %if.then.174
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-88(%rbp), %rdi
	callq	Fsubstitute_command_keys
	movq	%rax, -88(%rbp)
.LBB107_47:                             # %if.end.176
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$7, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-88(%rbp), %rdx
	callq	ASET
	jmp	.LBB107_71
.LBB107_48:                             # %if.else.177
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$42, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_50
# BB#49:                                # %if.then.181
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB107_70
.LBB107_50:                             # %if.else.182
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$70, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_56
# BB#51:                                # %if.then.186
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB107_54
# BB#52:                                # %lor.lhs.false.193
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_54
# BB#53:                                # %lor.lhs.false.196
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB107_54
	jmp	.LBB107_55
.LBB107_54:                             # %if.then.199
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB107_55:                             # %if.end.200
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_69
.LBB107_56:                             # %if.else.201
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$71, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_61
# BB#57:                                # %if.then.205
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB107_59
# BB#58:                                # %lor.lhs.false.212
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_59
	jmp	.LBB107_60
.LBB107_59:                             # %if.then.215
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$5, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
.LBB107_60:                             # %if.end.216
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_68
.LBB107_61:                             # %if.else.217
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$17, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_67
# BB#62:                                # %land.lhs.true.221
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_67
# BB#63:                                # %if.then.228
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$130, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_65
# BB#64:                                # %lor.lhs.false.236
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$101, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_66
.LBB107_65:                             # %if.then.240
                                        #   in Loop: Header=BB107_32 Depth=1
	movl	$6, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	callq	ASET
	movl	$4, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-96(%rbp), %rdx
	callq	ASET
.LBB107_66:                             # %if.end.244
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_67
.LBB107_67:                             # %if.end.245
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_68
.LBB107_68:                             # %if.end.246
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_69
.LBB107_69:                             # %if.end.247
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_70
.LBB107_70:                             # %if.end.248
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_71
.LBB107_71:                             # %if.end.249
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_72
.LBB107_72:                             # %if.end.250
                                        #   in Loop: Header=BB107_32 Depth=1
	jmp	.LBB107_73
.LBB107_73:                             # %if.end.251
                                        #   in Loop: Header=BB107_32 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB107_32
.LBB107_74:                             # %while.end
	jmp	.LBB107_79
.LBB107_75:                             # %if.else.255
	cmpl	$0, -20(%rbp)
	jne	.LBB107_77
# BB#76:                                # %lor.lhs.false.256
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_78
.LBB107_77:                             # %if.then.260
	movb	$0, -1(%rbp)
	jmp	.LBB107_128
.LBB107_78:                             # %if.end.261
	jmp	.LBB107_79
.LBB107_79:                             # %if.end.262
	jmp	.LBB107_81
.LBB107_80:                             # %if.else.263
	movb	$0, -1(%rbp)
	jmp	.LBB107_128
.LBB107_81:                             # %if.end.264
	jmp	.LBB107_82
.LBB107_82:                             # %if.end.265
	movl	$1, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_86
# BB#83:                                # %if.then.268
	movq	-48(%rbp), %rdi
	callq	menu_item_eval_property
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_85
# BB#84:                                # %if.then.271
	movb	$0, -1(%rbp)
	jmp	.LBB107_128
.LBB107_85:                             # %if.end.272
	movl	$1, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-48(%rbp), %rdx
	callq	ASET
.LBB107_86:                             # %if.end.273
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB107_88
# BB#87:                                # %if.then.278
	movl	$783, %edi              # imm = 0x30F
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, %rdi
	callq	menu_item_eval_property
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	item_properties, %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
.LBB107_88:                             # %if.end.285
	movl	$8, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB107_93
# BB#89:                                # %if.then.290
	movq	-40(%rbp), %rdi
	callq	menu_item_eval_property
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB107_92
# BB#90:                                # %land.lhs.true.293
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_92
# BB#91:                                # %if.then.297
	movb	$0, -1(%rbp)
	jmp	.LBB107_128
.LBB107_92:                             # %if.end.298
	movl	$8, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
.LBB107_93:                             # %if.end.299
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_95
# BB#94:                                # %if.then.303
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB107_128
.LBB107_95:                             # %if.end.305
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	get_keymap
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB107_97
# BB#96:                                # %if.then.312
	movl	$3, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-40(%rbp), %rdx
	callq	ASET
	movb	$1, -1(%rbp)
	jmp	.LBB107_128
.LBB107_97:                             # %if.end.313
	cmpl	$0, -20(%rbp)
	jle	.LBB107_99
# BB#98:                                # %if.then.316
	movb	$1, -1(%rbp)
	jmp	.LBB107_128
.LBB107_99:                             # %if.end.317
	movl	$5, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movl	$4, %esi
	leaq	-144(%rbp), %rdi
	movabsq	$.L.str.19, %rcx
	movq	%rax, -104(%rbp)
	movq	$2, -144(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rcx, -120(%rbp)
	callq	make_lisp_ptr
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_100
	jmp	.LBB107_102
.LBB107_100:                            # %land.lhs.true.323
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB107_102
# BB#101:                               # %if.then.328
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fsubstitute_command_keys
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -104(%rbp)
	jmp	.LBB107_125
.LBB107_102:                            # %if.else.331
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB107_104
# BB#103:                               # %if.then.337
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB107_105
.LBB107_104:                            # %if.else.343
	movl	$2, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movq	%rax, -32(%rbp)
.LBB107_105:                            # %if.end.345
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_113
# BB#106:                               # %land.lhs.true.350
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_113
# BB#107:                               # %if.then.356
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Fkey_binding
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_111
# BB#108:                               # %lor.lhs.false.366
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB107_112
# BB#109:                               # %land.lhs.true.369
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB107_111
# BB#110:                               # %land.lhs.true.374
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$0, %rcx
	cmpq	lispsym+24(,%rcx), %rax
	je	.LBB107_112
.LBB107_111:                            # %if.then.378
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -160(%rbp)
.LBB107_112:                            # %if.end.380
	jmp	.LBB107_113
.LBB107_113:                            # %if.end.381
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_115
# BB#114:                               # %if.then.385
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fwhere_is_internal
	movq	%rax, -160(%rbp)
.LBB107_115:                            # %if.end.391
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_123
# BB#116:                               # %if.then.395
	xorl	%edi, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkey_description
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB107_122
# BB#117:                               # %if.then.402
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_118
	jmp	.LBB107_119
.LBB107_118:                            # %if.then.406
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	concat2
	movq	%rax, -40(%rbp)
.LBB107_119:                            # %if.end.410
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB107_120
	jmp	.LBB107_121
.LBB107_120:                            # %if.then.415
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	concat2
	movq	%rax, -40(%rbp)
.LBB107_121:                            # %if.end.420
	jmp	.LBB107_122
.LBB107_122:                            # %if.end.421
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	concat2
	movq	%rax, -104(%rbp)
	jmp	.LBB107_124
.LBB107_123:                            # %if.else.423
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
.LBB107_124:                            # %if.end.425
	jmp	.LBB107_125
.LBB107_125:                            # %if.end.426
	movl	$5, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	movq	-104(%rbp), %rdx
	callq	ASET
	movl	$6, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB107_127
# BB#126:                               # %if.then.431
	movq	item_properties, %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	menu_item_eval_property
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB107_127:                            # %if.end.433
	movb	$1, -1(%rbp)
.LBB107_128:                            # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end107:
	.size	parse_menu_item, .Lfunc_end107-parse_menu_item
	.cfi_endproc

	.globl	tool_bar_items
	.align	16, 0x90
	.type	tool_bar_items,@function
tool_bar_items:                         # @tool_bar_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
.Ltmp326:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp327:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	globals+1104, %rax
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	movq	-8(%rbp), %rdi
	callq	init_tool_bar_items
	xorl	%edi, %edi
	movq	globals+1736, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB108_7
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1728, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_7
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_4
# BB#3:                                 # %if.then.7
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB108_4:                              # %if.end
	xorl	%edi, %edi
	movq	globals+1728, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_6
# BB#5:                                 # %if.then.11
	movq	globals+1728, %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB108_6:                              # %if.end.14
	jmp	.LBB108_20
.LBB108_7:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-80(%rbp), %rsi
	callq	current_minor_maps
	movq	%rax, -112(%rbp)
# BB#8:                                 # %do.body
	movq	-112(%rbp), %rax
	addq	$4, %rax
	movq	-88(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB108_10
# BB#9:                                 # %if.then.18
	movq	-112(%rbp), %rax
	leaq	32(,%rax,8), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-112(%rbp), %rax
	leaq	47(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -24(%rbp)
	jmp	.LBB108_11
.LBB108_10:                             # %if.else.22
	movl	$8, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -24(%rbp)
	movb	$1, -97(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB108_11:                             # %if.end.25
	jmp	.LBB108_12
.LBB108_12:                             # %do.end
	xorl	%edi, %edi
	movq	$0, -56(%rbp)
	movq	current_kboard, %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_15
# BB#13:                                # %land.lhs.true.29
	xorl	%edi, %edi
	movq	globals+1736, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_15
# BB#14:                                # %if.then.32
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB108_15:                             # %if.end.35
	movl	$589, %edi              # imm = 0x24D
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB108_16
	jmp	.LBB108_17
.LBB108_16:                             # %if.then.41
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB108_17:                             # %if.end.44
	cmpq	$0, -112(%rbp)
	je	.LBB108_19
# BB#18:                                # %if.then.46
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-80(%rbp), %rcx
	movq	-112(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-112(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB108_19:                             # %if.end.49
	movl	$633, %edi              # imm = 0x279
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_local_map
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
.LBB108_20:                             # %if.end.56
	movq	current_global_map, %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB108_21:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	jl	.LBB108_28
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB108_21 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB108_26
# BB#23:                                # %if.then.64
                                        #   in Loop: Header=BB108_21 Depth=1
	movl	$921, %edi              # imm = 0x399
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -236(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movl	-236(%rbp), %edx        # 4-byte Reload
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	access_keymap
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	get_keymap
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB108_25
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB108_21 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$process_tool_bar_item, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	$1, %r8d
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	map_keymap
.LBB108_25:                             # %if.end.73
                                        #   in Loop: Header=BB108_21 Depth=1
	jmp	.LBB108_26
.LBB108_26:                             # %if.end.74
                                        #   in Loop: Header=BB108_21 Depth=1
	jmp	.LBB108_27
.LBB108_27:                             # %for.inc
                                        #   in Loop: Header=BB108_21 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB108_21
.LBB108_28:                             # %for.end
	movl	$11, %eax
	movq	-72(%rbp), %rcx
	movq	%rcx, globals+1104
	movl	ntool_bar_items, %edx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-252(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
# BB#29:                                # %do.body.76
	testb	$1, -97(%rbp)
	je	.LBB108_31
# BB#30:                                # %if.then.77
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB108_31:                             # %if.end.80
	jmp	.LBB108_32
.LBB108_32:                             # %do.end.81
	movq	tool_bar_items_vector, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	tool_bar_items, .Lfunc_end108-tool_bar_items
	.cfi_endproc

	.align	16, 0x90
	.type	init_tool_bar_items,@function
init_tool_bar_items:                    # @init_tool_bar_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp328:
	.cfi_def_cfa_offset 16
.Ltmp329:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp330:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB109_1
	jmp	.LBB109_2
.LBB109_1:                              # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, tool_bar_items_vector
	jmp	.LBB109_3
.LBB109_2:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$258, %edi              # imm = 0x102
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, tool_bar_items_vector
.LBB109_3:                              # %if.end
	movl	$0, ntool_bar_items
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	init_tool_bar_items, .Lfunc_end109-init_tool_bar_items
	.cfi_endproc

	.align	16, 0x90
	.type	process_tool_bar_item,@function
process_tool_bar_item:                  # @process_tool_bar_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp331:
	.cfi_def_cfa_offset 16
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp333:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$959, %eax              # imm = 0x3BF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB110_10
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB110_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ntool_bar_items, %eax
	jge	.LBB110_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB110_2 Depth=1
	movq	tool_bar_items_vector, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movslq	-36(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdi
	cmpq	(%rdi), %rax
	jne	.LBB110_7
# BB#4:                                 # %if.then.4
	movl	ntool_bar_items, %eax
	movl	-36(%rbp), %ecx
	addl	$11, %ecx
	cmpl	%ecx, %eax
	jle	.LBB110_6
# BB#5:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$88, %rcx
	movl	ntool_bar_items, %edx
	subl	-36(%rbp), %edx
	subl	$11, %edx
	shll	$3, %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
.LBB110_6:                              # %if.end
	movl	ntool_bar_items, %eax
	subl	$11, %eax
	movl	%eax, ntool_bar_items
	jmp	.LBB110_9
.LBB110_7:                              # %if.end.10
                                        #   in Loop: Header=BB110_2 Depth=1
	jmp	.LBB110_8
.LBB110_8:                              # %for.inc
                                        #   in Loop: Header=BB110_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$11, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB110_2
.LBB110_9:                              # %for.end
	jmp	.LBB110_13
.LBB110_10:                             # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	parse_tool_bar_item
	testb	$1, %al
	jne	.LBB110_11
	jmp	.LBB110_12
.LBB110_11:                             # %if.then.13
	callq	append_tool_bar_item
.LBB110_12:                             # %if.end.14
	jmp	.LBB110_13
.LBB110_13:                             # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	process_tool_bar_item, .Lfunc_end110-process_tool_bar_item
	.cfi_endproc

	.globl	Fread_key_sequence
	.align	16, 0x90
	.type	Fread_key_sequence,@function
Fread_key_sequence:                     # @Fread_key_sequence
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp334:
	.cfi_def_cfa_offset 16
.Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp336:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	read_key_sequence_vs
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	Fread_key_sequence, .Lfunc_end111-Fread_key_sequence
	.cfi_endproc

	.align	16, 0x90
	.type	read_key_sequence_vs,@function
read_key_sequence_vs:                   # @read_key_sequence_vs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp337:
	.cfi_def_cfa_offset 16
.Ltmp338:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp339:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movb	%r9b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -304(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB112_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
.LBB112_2:                              # %if.end
	jmp	.LBB112_3
.LBB112_3:                              # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB112_6
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB112_6
# BB#5:                                 # %if.then.6
	callq	process_quit_flag
	jmp	.LBB112_9
.LBB112_6:                              # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB112_8
# BB#7:                                 # %if.then.7
	callq	process_pending_signals
.LBB112_8:                              # %if.end.8
	jmp	.LBB112_9
.LBB112_9:                              # %if.end.9
	jmp	.LBB112_10
.LBB112_10:                             # %do.end
	movl	$550, %edi              # imm = 0x226
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB112_12
# BB#11:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB112_13
.LBB112_12:                             # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB112_13:                             # %cond.end
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$551, %edi              # imm = 0x227
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB112_15
# BB#14:                                # %cond.true.18
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB112_16
.LBB112_15:                             # %cond.false.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB112_16:                             # %cond.end.22
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB112_18
# BB#17:                                # %if.then.26
	movq	$0, this_command_key_count
	movq	$0, this_single_command_key_start
.LBB112_18:                             # %if.end.27
	testb	$1, globals+3378
	je	.LBB112_20
# BB#19:                                # %if.then.29
	callq	cancel_hourglass
.LBB112_20:                             # %if.end.30
	xorl	%edi, %edi
	leaq	-288(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movb	%sil, -417(%rbp)        # 1-byte Spill
	callq	builtin_lisp_symbol
	movl	$30, %edi
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movq	%rsp, %rax
	movl	$0, (%rax)
	movb	-417(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %r9d
	andl	$1, %r9d
	movzbl	%sil, %r10d
	andl	$1, %r10d
	movl	$30, %esi
	xorl	%r11d, %r11d
	movq	-400(%rbp), %rax        # 8-byte Reload
	movl	%edi, -424(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	callq	read_key_sequence
	movl	%eax, -292(%rbp)
	cmpl	$-1, -292(%rbp)
	jne	.LBB112_30
# BB#21:                                # %if.then.38
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
# BB#22:                                # %do.body.40
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB112_25
# BB#23:                                # %land.lhs.true.43
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB112_25
# BB#24:                                # %if.then.46
	callq	process_quit_flag
	jmp	.LBB112_28
.LBB112_25:                             # %if.else.47
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB112_27
# BB#26:                                # %if.then.49
	callq	process_pending_signals
.LBB112_27:                             # %if.end.50
	jmp	.LBB112_28
.LBB112_28:                             # %if.end.51
	jmp	.LBB112_29
.LBB112_29:                             # %do.end.52
	jmp	.LBB112_30
.LBB112_30:                             # %if.end.53
	leaq	-288(%rbp), %rsi
	movabsq	$Fvector, %rax
	movabsq	$make_event_array, %rcx
	movq	-304(%rbp), %rdi
	movb	-41(%rbp), %dl
	testb	$1, %dl
	cmovneq	%rcx, %rax
	movslq	-292(%rbp), %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	*%rax
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end112:
	.size	read_key_sequence_vs, .Lfunc_end112-read_key_sequence_vs
	.cfi_endproc

	.globl	Fread_key_sequence_vector
	.align	16, 0x90
	.type	Fread_key_sequence_vector,@function
Fread_key_sequence_vector:              # @Fread_key_sequence_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp340:
	.cfi_def_cfa_offset 16
.Ltmp341:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp342:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	read_key_sequence_vs
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	Fread_key_sequence_vector, .Lfunc_end113-Fread_key_sequence_vector
	.cfi_endproc

	.globl	detect_input_pending
	.align	16, 0x90
	.type	detect_input_pending,@function
detect_input_pending:                   # @detect_input_pending
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp343:
	.cfi_def_cfa_offset 16
.Ltmp344:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp345:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	$1, %al
	testb	$1, input_pending
	movb	%al, -1(%rbp)           # 1-byte Spill
	jne	.LBB114_2
# BB#1:                                 # %lor.rhs
	xorl	%edi, %edi
	callq	get_input_pending
	movb	%al, -1(%rbp)           # 1-byte Spill
.LBB114_2:                              # %lor.end
	movb	-1(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	detect_input_pending, .Lfunc_end114-detect_input_pending
	.cfi_endproc

	.globl	detect_input_pending_ignore_squeezables
	.align	16, 0x90
	.type	detect_input_pending_ignore_squeezables,@function
detect_input_pending_ignore_squeezables: # @detect_input_pending_ignore_squeezables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp346:
	.cfi_def_cfa_offset 16
.Ltmp347:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp348:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	$1, %al
	testb	$1, input_pending
	movb	%al, -1(%rbp)           # 1-byte Spill
	jne	.LBB115_2
# BB#1:                                 # %lor.rhs
	movl	$4, %edi
	callq	get_input_pending
	movb	%al, -1(%rbp)           # 1-byte Spill
.LBB115_2:                              # %lor.end
	movb	-1(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	detect_input_pending_ignore_squeezables, .Lfunc_end115-detect_input_pending_ignore_squeezables
	.cfi_endproc

	.globl	clear_input_pending
	.align	16, 0x90
	.type	clear_input_pending,@function
clear_input_pending:                    # @clear_input_pending
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp349:
	.cfi_def_cfa_offset 16
.Ltmp350:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp351:
	.cfi_def_cfa_register %rbp
	movb	$0, input_pending
	popq	%rbp
	retq
.Lfunc_end116:
	.size	clear_input_pending, .Lfunc_end116-clear_input_pending
	.cfi_endproc

	.globl	requeued_events_pending_p
	.align	16, 0x90
	.type	requeued_events_pending_p,@function
requeued_events_pending_p:              # @requeued_events_pending_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp352:
	.cfi_def_cfa_offset 16
.Ltmp353:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp354:
	.cfi_def_cfa_register %rbp
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	popq	%rbp
	retq
.Lfunc_end117:
	.size	requeued_events_pending_p, .Lfunc_end117-requeued_events_pending_p
	.cfi_endproc

	.globl	Finput_pending_p
	.align	16, 0x90
	.type	Finput_pending_p,@function
Finput_pending_p:                       # @Finput_pending_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp355:
	.cfi_def_cfa_offset 16
.Ltmp356:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp357:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	globals+2520, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB118_3
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals+2536, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB118_3
# BB#2:                                 # %lor.lhs.false.4
	xorl	%edi, %edi
	movq	globals+2528, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB118_4
.LBB118_3:                              # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB118_8
.LBB118_4:                              # %if.end
	callq	process_special_events
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	orl	$2, %edi
	callq	get_input_pending
	testb	$1, %al
	jne	.LBB118_5
	jmp	.LBB118_6
.LBB118_5:                              # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB118_7
.LBB118_6:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB118_7:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB118_8:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	Finput_pending_p, .Lfunc_end118-Finput_pending_p
	.cfi_endproc

	.globl	Frecent_keys
	.align	16, 0x90
	.type	Frecent_keys,@function
Frecent_keys:                           # @Frecent_keys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp358:
	.cfi_def_cfa_offset 16
.Ltmp359:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp360:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	cmpl	$0, total_keys
	je	.LBB119_3
# BB#1:                                 # %lor.lhs.false
	testb	$1, -17(%rbp)
	je	.LBB119_4
# BB#2:                                 # %land.lhs.true
	cmpl	$300, total_keys        # imm = 0x12C
	jge	.LBB119_4
.LBB119_3:                              # %if.then
	movslq	total_keys, %rdi
	movq	recent_keys, %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fvector
	movq	%rax, -8(%rbp)
	jmp	.LBB119_17
.LBB119_4:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	cmpl	$300, total_keys        # imm = 0x12C
	jge	.LBB119_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB119_7
.LBB119_6:                              # %cond.false
	movl	recent_keys_index, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB119_7:                              # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
.LBB119_8:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	recent_keys, %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	testb	$1, -17(%rbp)
	jne	.LBB119_11
# BB#9:                                 # %lor.lhs.false.12
                                        #   in Loop: Header=BB119_8 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB119_11
# BB#10:                                # %lor.lhs.false.16
                                        #   in Loop: Header=BB119_8 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB119_12
.LBB119_11:                             # %if.then.20
                                        #   in Loop: Header=BB119_8 Depth=1
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB119_12:                             # %if.end
                                        #   in Loop: Header=BB119_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$300, %eax              # imm = 0x12C
	jl	.LBB119_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB119_8 Depth=1
	movl	$0, -36(%rbp)
.LBB119_14:                             # %if.end.25
                                        #   in Loop: Header=BB119_8 Depth=1
	jmp	.LBB119_15
.LBB119_15:                             # %do.cond
                                        #   in Loop: Header=BB119_8 Depth=1
	movl	-36(%rbp), %eax
	cmpl	recent_keys_index, %eax
	jne	.LBB119_8
# BB#16:                                # %do.end
	movq	-32(%rbp), %rdi
	callq	Fnreverse
	movl	$1, %ecx
	movl	%ecx, %edi
	leaq	-32(%rbp), %rsi
	movq	%rax, -32(%rbp)
	callq	Fvconcat
	movq	%rax, -8(%rbp)
.LBB119_17:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	Frecent_keys, .Lfunc_end119-Frecent_keys
	.cfi_endproc

	.globl	Fthis_command_keys
	.align	16, 0x90
	.type	Fthis_command_keys,@function
Fthis_command_keys:                     # @Fthis_command_keys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp361:
	.cfi_def_cfa_offset 16
.Ltmp362:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp363:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	this_command_key_count, %rdi
	movq	this_command_keys, %rax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	make_event_array
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	Fthis_command_keys, .Lfunc_end120-Fthis_command_keys
	.cfi_endproc

	.globl	Fthis_command_keys_vector
	.align	16, 0x90
	.type	Fthis_command_keys_vector,@function
Fthis_command_keys_vector:              # @Fthis_command_keys_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp364:
	.cfi_def_cfa_offset 16
.Ltmp365:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp366:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	this_command_key_count, %rdi
	movq	this_command_keys, %rax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fvector
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Fthis_command_keys_vector, .Lfunc_end121-Fthis_command_keys_vector
	.cfi_endproc

	.globl	Fthis_single_command_keys
	.align	16, 0x90
	.type	Fthis_single_command_keys,@function
Fthis_single_command_keys:              # @Fthis_single_command_keys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp367:
	.cfi_def_cfa_offset 16
.Ltmp368:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp369:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	this_command_key_count, %rax
	subq	this_single_command_key_start, %rax
	movq	this_command_keys, %rdi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movq	this_single_command_key_start, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rax
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fvector
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	Fthis_single_command_keys, .Lfunc_end122-Fthis_single_command_keys
	.cfi_endproc

	.globl	Fthis_single_command_raw_keys
	.align	16, 0x90
	.type	Fthis_single_command_raw_keys,@function
Fthis_single_command_raw_keys:          # @Fthis_single_command_raw_keys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp370:
	.cfi_def_cfa_offset 16
.Ltmp371:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp372:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movslq	raw_keybuf_count, %rdi
	movq	raw_keybuf, %rax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fvector
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	Fthis_single_command_raw_keys, .Lfunc_end123-Fthis_single_command_raw_keys
	.cfi_endproc

	.globl	Fclear_this_command_keys
	.align	16, 0x90
	.type	Fclear_this_command_keys,@function
Fclear_this_command_keys:               # @Fclear_this_command_keys
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp373:
	.cfi_def_cfa_offset 16
.Ltmp374:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp375:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	$0, this_command_key_count
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB124_6
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB124_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	movq	recent_keys, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB124_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB124_2 Depth=1
	xorl	%edi, %edi
	movq	recent_keys, %rax
	movslq	-12(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB124_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB124_2
.LBB124_5:                              # %for.end
	movl	$0, total_keys
	movl	$0, recent_keys_index
.LBB124_6:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	Fclear_this_command_keys, .Lfunc_end124-Fclear_this_command_keys
	.cfi_endproc

	.globl	Frecursion_depth
	.align	16, 0x90
	.type	Frecursion_depth,@function
Frecursion_depth:                       # @Frecursion_depth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp376:
	.cfi_def_cfa_offset 16
.Ltmp377:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp378:
	.cfi_def_cfa_register %rbp
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	andq	command_loop_level, %rax
	movabsq	$4611686018427387903, %rcx # imm = 0x3FFFFFFFFFFFFFFF
	andq	minibuf_level, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end125:
	.size	Frecursion_depth, .Lfunc_end125-Frecursion_depth
	.cfi_endproc

	.globl	Fopen_dribble_file
	.align	16, 0x90
	.type	Fopen_dribble_file,@function
Fopen_dribble_file:                     # @Fopen_dribble_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp379:
	.cfi_def_cfa_offset 16
.Ltmp380:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp381:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, dribble
	je	.LBB126_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	dribble, %rdi
	callq	fclose
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	$0, dribble
.LBB126_2:                              # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB126_13
# BB#3:                                 # %if.then.2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$193, %esi
	movl	$384, %edx              # imm = 0x180
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB126_7
# BB#4:                                 # %land.lhs.true
	callq	__errno_location
	cmpl	$17, (%rax)
	jne	.LBB126_7
# BB#5:                                 # %land.lhs.true.11
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	cmpl	$0, %eax
	jne	.LBB126_7
# BB#6:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$193, %esi
	movl	$384, %edx              # imm = 0x180
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -12(%rbp)
.LBB126_7:                              # %if.end.18
	cmpl	$0, -12(%rbp)
	jge	.LBB126_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB126_10
.LBB126_9:                              # %cond.false
	movabsq	$.L.str.20, %rsi
	movl	-12(%rbp), %edi
	callq	fdopen
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB126_10:                             # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, dribble
	cmpq	$0, dribble
	jne	.LBB126_12
# BB#11:                                # %if.then.22
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB126_12:                             # %if.end.23
	jmp	.LBB126_13
.LBB126_13:                             # %if.end.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	Fopen_dribble_file, .Lfunc_end126-Fopen_dribble_file
	.cfi_endproc

	.globl	Fsuspend_emacs
	.align	16, 0x90
	.type	Fsuspend_emacs,@function
Fsuspend_emacs:                         # @Fsuspend_emacs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp382:
	.cfi_def_cfa_offset 16
.Ltmp383:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp384:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -16(%rbp)
	cmpq	$0, tty_list
	je	.LBB127_3
# BB#1:                                 # %land.lhs.true
	movq	tty_list, %rax
	cmpq	$0, (%rax)
	je	.LBB127_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	error
.LBB127_3:                              # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB127_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
.LBB127_5:                              # %if.end.4
	movabsq	$.L.str.23, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	run_hook
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_6
	jmp	.LBB127_8
.LBB127_6:                              # %land.lhs.true.7
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_8
# BB#7:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB127_9
.LBB127_8:                              # %cond.false
	callq	emacs_abort
.LBB127_9:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB127_15
# BB#10:                                # %lor.lhs.false
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_11
	jmp	.LBB127_13
.LBB127_11:                             # %land.lhs.true.12
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_13
# BB#12:                                # %cond.true.16
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB127_14
.LBB127_13:                             # %cond.false.18
	callq	emacs_abort
.LBB127_14:                             # %cond.end.19
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB127_20
.LBB127_15:                             # %cond.true.27
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_16
	jmp	.LBB127_18
.LBB127_16:                             # %land.lhs.true.29
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_18
# BB#17:                                # %cond.true.33
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB127_19
.LBB127_18:                             # %cond.false.35
	callq	emacs_abort
.LBB127_19:                             # %cond.end.36
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB127_21
.LBB127_20:                             # %cond.false.39
	callq	emacs_abort
.LBB127_21:                             # %cond.end.40
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-24(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movl	%eax, %edi
	callq	get_tty_size
	callq	reset_all_sys_modes
	movabsq	$init_all_sys_modes, %rdi
	callq	record_unwind_protect_void
	movq	-8(%rbp), %rdi
	callq	stuff_buffered_input
	testb	$1, globals+3366
	je	.LBB127_23
# BB#22:                                # %if.then.44
	callq	sys_subshell
	jmp	.LBB127_24
.LBB127_23:                             # %if.else
	callq	sys_suspend
.LBB127_24:                             # %if.end.45
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	selected_frame, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_25
	jmp	.LBB127_27
.LBB127_25:                             # %land.lhs.true.49
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_27
# BB#26:                                # %cond.true.53
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB127_28
.LBB127_27:                             # %cond.false.55
	callq	emacs_abort
.LBB127_28:                             # %cond.end.56
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB127_34
# BB#29:                                # %lor.lhs.false.64
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_30
	jmp	.LBB127_32
.LBB127_30:                             # %land.lhs.true.66
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_32
# BB#31:                                # %cond.true.70
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB127_33
.LBB127_32:                             # %cond.false.72
	callq	emacs_abort
.LBB127_33:                             # %cond.end.73
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB127_39
.LBB127_34:                             # %cond.true.81
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_35
	jmp	.LBB127_37
.LBB127_35:                             # %land.lhs.true.83
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_37
# BB#36:                                # %cond.true.87
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB127_38
.LBB127_37:                             # %cond.false.89
	callq	emacs_abort
.LBB127_38:                             # %cond.end.90
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	376(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB127_40
.LBB127_39:                             # %cond.false.95
	callq	emacs_abort
.LBB127_40:                             # %cond.end.96
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movl	%eax, %edi
	callq	get_tty_size
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB127_42
# BB#41:                                # %lor.lhs.false.101
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB127_51
.LBB127_42:                             # %if.then.103
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_43
	jmp	.LBB127_45
.LBB127_43:                             # %land.lhs.true.105
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_45
# BB#44:                                # %cond.true.109
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB127_46
.LBB127_45:                             # %cond.false.111
	callq	emacs_abort
.LBB127_46:                             # %cond.end.112
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %eax
	movq	selected_frame, %rdi
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB127_47
	jmp	.LBB127_49
.LBB127_47:                             # %land.lhs.true.115
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB127_49
# BB#48:                                # %cond.true.119
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB127_50
.LBB127_49:                             # %cond.false.121
	callq	emacs_abort
.LBB127_50:                             # %cond.end.122
	xorl	%eax, %eax
	movl	-136(%rbp), %ecx        # 4-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	subl	356(%rdx), %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	change_frame_size
.LBB127_51:                             # %if.end.125
	movabsq	$.L.str.24, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	run_hook
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	Fsuspend_emacs, .Lfunc_end127-Fsuspend_emacs
	.cfi_endproc

	.globl	stuff_buffered_input
	.align	16, 0x90
	.type	stuff_buffered_input,@function
stuff_buffered_input:                   # @stuff_buffered_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp385:
	.cfi_def_cfa_offset 16
.Ltmp386:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp387:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB128_1
	jmp	.LBB128_5
.LBB128_1:                              # %if.then
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
.LBB128_2:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	cmpq	$0, %rax
	jle	.LBB128_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edi
	callq	stuff_char
	jmp	.LBB128_2
.LBB128_4:                              # %while.end
	movl	$10, %edi
	callq	stuff_char
.LBB128_5:                              # %if.end
	jmp	.LBB128_6
.LBB128_6:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB128_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB128_6 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, kbd_fetch_ptr
	jne	.LBB128_9
# BB#8:                                 # %if.then.5
                                        #   in Loop: Header=BB128_6 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, kbd_fetch_ptr
.LBB128_9:                              # %if.end.6
                                        #   in Loop: Header=BB128_6 Depth=1
	movq	kbd_fetch_ptr, %rax
	movzwl	(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB128_11
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB128_6 Depth=1
	movq	kbd_fetch_ptr, %rax
	movl	4(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %edi
	callq	stuff_char
.LBB128_11:                             # %if.end.9
                                        #   in Loop: Header=BB128_6 Depth=1
	movq	kbd_fetch_ptr, %rdi
	callq	clear_event
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB128_6 Depth=1
	movq	kbd_fetch_ptr, %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB128_6
.LBB128_13:                             # %for.end
	movb	$0, input_pending
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	stuff_buffered_input, .Lfunc_end128-stuff_buffered_input
	.cfi_endproc

	.align	16, 0x90
	.type	clear_event,@function
clear_event:                            # @clear_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp388:
	.cfi_def_cfa_offset 16
.Ltmp389:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp390:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movw	$0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end129:
	.size	clear_event, .Lfunc_end129-clear_event
	.cfi_endproc

	.globl	set_waiting_for_input
	.align	16, 0x90
	.type	set_waiting_for_input,@function
set_waiting_for_input:                  # @set_waiting_for_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp391:
	.cfi_def_cfa_offset 16
.Ltmp392:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp393:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, input_available_clear_time
	movb	$1, waiting_for_input
	movq	globals+1928, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB130_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	quit_throw_to_read_char
.LBB130_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	set_waiting_for_input, .Lfunc_end130-set_waiting_for_input
	.cfi_endproc

	.align	16, 0x90
	.type	quit_throw_to_read_char,@function
quit_throw_to_read_char:                # @quit_throw_to_read_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp394:
	.cfi_def_cfa_offset 16
.Ltmp395:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp396:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	testb	$1, -1(%rbp)
	jne	.LBB131_3
# BB#1:                                 # %land.lhs.true
	movl	$594, %edi              # imm = 0x252
	movq	globals+1928, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB131_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB131_3:                              # %if.end
	callq	clear_waiting_for_input
	xorl	%edi, %edi
	movb	$0, input_pending
	callq	builtin_lisp_symbol
	movq	%rax, globals+2520
	movq	internal_last_event_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB131_4
	jmp	.LBB131_6
.LBB131_4:                              # %land.lhs.true.4
	movq	internal_last_event_frame, %rax
	cmpq	selected_frame, %rax
	je	.LBB131_6
# BB#5:                                 # %if.then.6
	movq	internal_last_event_frame, %rdi
	callq	make_lispy_switch_frame
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	do_switch_frame
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB131_6:                              # %if.end.10
	movabsq	$getcjmp, %rdi
	movl	$1, %esi
	callq	_longjmp
.Lfunc_end131:
	.size	quit_throw_to_read_char, .Lfunc_end131-quit_throw_to_read_char
	.cfi_endproc

	.globl	clear_waiting_for_input
	.align	16, 0x90
	.type	clear_waiting_for_input,@function
clear_waiting_for_input:                # @clear_waiting_for_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp397:
	.cfi_def_cfa_offset 16
.Ltmp398:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp399:
	.cfi_def_cfa_register %rbp
	movb	$0, waiting_for_input
	movq	$0, input_available_clear_time
	popq	%rbp
	retq
.Lfunc_end132:
	.size	clear_waiting_for_input, .Lfunc_end132-clear_waiting_for_input
	.cfi_endproc

	.globl	Fset_input_interrupt_mode
	.align	16, 0x90
	.type	Fset_input_interrupt_mode,@function
Fset_input_interrupt_mode:              # @Fset_input_interrupt_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp400:
	.cfi_def_cfa_offset 16
.Ltmp401:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp402:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, x_display_list
	je	.LBB133_2
# BB#1:                                 # %if.then
	movb	$1, -9(%rbp)
	jmp	.LBB133_3
.LBB133_2:                              # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -9(%rbp)
.LBB133_3:                              # %if.end
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	interrupt_input, %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	je	.LBB133_5
# BB#4:                                 # %if.then.6
	callq	stop_polling
	callq	reset_all_sys_modes
	movb	-9(%rbp), %al
	andb	$1, %al
	movb	%al, interrupt_input
	callq	init_all_sys_modes
	movl	$1, poll_suppress_count
	callq	start_polling
.LBB133_5:                              # %if.end.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	Fset_input_interrupt_mode, .Lfunc_end133-Fset_input_interrupt_mode
	.cfi_endproc

	.globl	Fset_output_flow_control
	.align	16, 0x90
	.type	Fset_output_flow_control,@function
Fset_output_flow_control:               # @Fset_output_flow_control
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp403:
	.cfi_def_cfa_offset 16
.Ltmp404:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp405:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB134_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB134_5
.LBB134_2:                              # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	8788(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%edx, -52(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	-52(%rbp), %edi         # 4-byte Reload
	cmpl	%edx, %edi
	je	.LBB134_4
# BB#3:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	callq	reset_sys_modes
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-40(%rbp), %rax
	andb	$1, %dl
	movb	8788(%rax), %sil
	shlb	$1, %dl
	andb	$-3, %sil
	orb	%dl, %sil
	movb	%sil, 8788(%rax)
	movq	-40(%rbp), %rdi
	callq	init_sys_modes
.LBB134_4:                              # %if.end.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB134_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	Fset_output_flow_control, .Lfunc_end134-Fset_output_flow_control
	.cfi_endproc

	.globl	Fset_input_meta_mode
	.align	16, 0x90
	.type	Fset_input_meta_mode,@function
Fset_input_meta_mode:                   # @Fset_input_meta_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp406:
	.cfi_def_cfa_offset 16
.Ltmp407:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp408:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_tty_terminal
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB135_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB135_11
.LBB135_2:                              # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_4
# BB#3:                                 # %if.then.4
	movl	$0, -44(%rbp)
	jmp	.LBB135_8
.LBB135_4:                              # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_6
# BB#5:                                 # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB135_7
.LBB135_6:                              # %if.else.8
	movl	$2, -44(%rbp)
.LBB135_7:                              # %if.end.9
	jmp	.LBB135_8
.LBB135_8:                              # %if.end.10
	movq	-40(%rbp), %rax
	movl	8780(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	je	.LBB135_10
# BB#9:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	callq	reset_sys_modes
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 8780(%rdi)
	movq	-40(%rbp), %rdi
	callq	init_sys_modes
.LBB135_10:                             # %if.end.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB135_11:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	Fset_input_meta_mode, .Lfunc_end135-Fset_input_meta_mode
	.cfi_endproc

	.globl	Fset_quit_char
	.align	16, 0x90
	.type	Fset_quit_char,@function
Fset_quit_char:                         # @Fset_quit_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp409:
	.cfi_def_cfa_offset 16
.Ltmp410:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp411:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.25, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	get_named_terminal
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB136_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB136_8
.LBB136_2:                              # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB136_6
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB136_6
# BB#4:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB136_6
# BB#5:                                 # %lor.lhs.false.10
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$256, %rax              # imm = 0x100
	jle	.LBB136_7
.LBB136_6:                              # %if.then.14
	movabsq	$.L.str.26, %rdi
	movb	$0, %al
	callq	error
.LBB136_7:                              # %if.end.15
	movq	-32(%rbp), %rdi
	callq	reset_sys_modes
	movl	$255, %eax
	movl	$127, %ecx
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	-32(%rbp), %rdx
	cmpl	$0, 8780(%rdx)
	cmovel	%ecx, %eax
	movslq	%eax, %rdx
	andq	%rdx, %rdi
	movl	%edi, %eax
	movl	%eax, quit_char
	movq	-32(%rbp), %rdi
	callq	init_sys_modes
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB136_8:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	Fset_quit_char, .Lfunc_end136-Fset_quit_char
	.cfi_endproc

	.globl	Fset_input_mode
	.align	16, 0x90
	.type	Fset_input_mode,@function
Fset_input_mode:                        # @Fset_input_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp412:
	.cfi_def_cfa_offset 16
.Ltmp413:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp414:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fset_input_interrupt_mode
	xorl	%edi, %edi
	movq	-16(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_output_flow_control
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_input_meta_mode
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB137_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	Fset_quit_char
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB137_2:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	Fset_input_mode, .Lfunc_end137-Fset_input_mode
	.cfi_endproc

	.globl	Fcurrent_input_mode
	.align	16, 0x90
	.type	Fcurrent_input_mode,@function
Fcurrent_input_mode:                    # @Fcurrent_input_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp415:
	.cfi_def_cfa_offset 16
.Ltmp416:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp417:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -8(%rbp)
	testb	$1, interrupt_input
	je	.LBB138_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB138_3
.LBB138_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB138_3:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB138_38
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB138_6
# BB#5:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB138_7
.LBB138_6:                              # %cond.true.14
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB138_8
.LBB138_7:                              # %cond.false.15
	callq	emacs_abort
.LBB138_8:                              # %cond.end.16
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	8788(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB138_10
# BB#9:                                 # %cond.true.22
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB138_11
.LBB138_10:                             # %cond.false.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB138_11:                             # %cond.end.26
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB138_13
# BB#12:                                # %lor.lhs.false.34
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB138_14
.LBB138_13:                             # %cond.true.41
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB138_15
.LBB138_14:                             # %cond.false.45
	callq	emacs_abort
.LBB138_15:                             # %cond.end.46
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$2, 8780(%rax)
	jne	.LBB138_17
# BB#16:                                # %cond.true.49
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB138_37
.LBB138_17:                             # %cond.false.50
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB138_18
	jmp	.LBB138_20
.LBB138_18:                             # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB138_20
# BB#19:                                # %cond.true.55
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB138_21
.LBB138_20:                             # %cond.false.57
	callq	emacs_abort
.LBB138_21:                             # %cond.end.58
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB138_27
# BB#22:                                # %lor.lhs.false.66
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB138_23
	jmp	.LBB138_25
.LBB138_23:                             # %land.lhs.true.68
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB138_25
# BB#24:                                # %cond.true.72
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB138_26
.LBB138_25:                             # %cond.false.74
	callq	emacs_abort
.LBB138_26:                             # %cond.end.75
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB138_32
.LBB138_27:                             # %cond.true.83
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB138_28
	jmp	.LBB138_30
.LBB138_28:                             # %land.lhs.true.85
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB138_30
# BB#29:                                # %cond.true.89
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB138_31
.LBB138_30:                             # %cond.false.91
	callq	emacs_abort
.LBB138_31:                             # %cond.end.92
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	376(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB138_33
.LBB138_32:                             # %cond.false.97
	callq	emacs_abort
.LBB138_33:                             # %cond.end.98
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	$1, 8780(%rax)
	jne	.LBB138_35
# BB#34:                                # %cond.true.102
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB138_36
.LBB138_35:                             # %cond.false.104
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB138_36:                             # %cond.end.106
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB138_37:                             # %cond.end.108
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB138_39
.LBB138_38:                             # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB138_39:                             # %if.end
	movslq	quit_char, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	list4
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	Fcurrent_input_mode, .Lfunc_end138-Fcurrent_input_mode
	.cfi_endproc

	.globl	Fposn_at_x_y
	.align	16, 0x90
	.type	Fposn_at_x_y,@function
Fposn_at_x_y:                           # @Fposn_at_x_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp418:
	.cfi_def_cfa_offset 16
.Ltmp419:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp420:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB139_2
# BB#1:                                 # %cond.true
	jmp	.LBB139_3
.LBB139_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB139_3:                              # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-1, %rax
	je	.LBB139_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	CHECK_NATNUM
.LBB139_5:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_NATNUM
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB139_7
# BB#6:                                 # %if.then.8
	movq	selected_window, %rax
	movq	%rax, -24(%rbp)
.LBB139_7:                              # %if.end.9
	movq	-24(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB139_8
	jmp	.LBB139_12
.LBB139_8:                              # %if.then.11
	movq	-24(%rbp), %rdi
	callq	decode_live_window
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edx
	movq	-40(%rbp), %rcx
	addl	240(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB139_10
# BB#9:                                 # %cond.true.19
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	window_box_left_offset
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB139_11
.LBB139_10:                             # %cond.false.21
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB139_11
.LBB139_11:                             # %cond.end.22
	movl	-76(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$5, %rdx
	movl	332(%rdx), %eax
	movq	-40(%rbp), %rdx
	addl	244(%rdx), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
.LBB139_12:                             # %if.end.36
	movq	-24(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB139_13
	jmp	.LBB139_15
.LBB139_13:                             # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB139_15
# BB#14:                                # %cond.true.42
	jmp	.LBB139_16
.LBB139_15:                             # %cond.false.43
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB139_16:                             # %cond.end.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	subq	$5, %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	make_lispy_position
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	Fposn_at_x_y, .Lfunc_end139-Fposn_at_x_y
	.cfi_endproc

	.align	16, 0x90
	.type	make_lispy_position,@function
make_lispy_position:                    # @make_lispy_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp421:
	.cfi_def_cfa_offset 16
.Ltmp422:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp423:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$944, %rsp              # imm = 0x3B0
.Ltmp424:
	.cfi_offset %rbx, -32
.Ltmp425:
	.cfi_offset %r14, -24
	xorl	%eax, %eax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB140_2
# BB#1:                                 # %cond.true
	leaq	-52(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -292(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-292(%rbp), %edx        # 4-byte Reload
	callq	window_from_coordinates
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB140_3
.LBB140_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB140_3:                              # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB140_4
	jmp	.LBB140_272
.LBB140_4:                              # %if.then
	movq	-88(%rbp), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$-1, -116(%rbp)
	movl	$-1, -120(%rbp)
	movl	$-1, -124(%rbp)
	movl	$-1, -128(%rbp)
	movl	$-1, -132(%rbp)
	movl	$-1, -136(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edi
	movq	-96(%rbp), %rcx
	addl	240(%rcx), %edi
	movslq	%edi, %rcx
	subq	%rcx, %rax
	movl	%eax, %edi
	movl	%edi, -148(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	332(%rcx), %edi
	movq	-96(%rbp), %rcx
	addl	244(%rcx), %edi
	movslq	%edi, %rcx
	subq	%rcx, %rax
	movl	%eax, %edi
	movl	%edi, -152(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB140_37
# BB#5:                                 # %if.then.23
	movl	$1, %esi
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	window_box_left
	movslq	%eax, %rdi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	subq	%rdi, %rcx
	movl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-152(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_6
	jmp	.LBB140_20
.LBB140_6:                              # %cond.true.31
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_35
# BB#7:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_35
# BB#8:                                 # %land.lhs.true.35
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_35
# BB#9:                                 # %land.lhs.true.43
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_35
# BB#10:                                # %land.lhs.true.49
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_11
	jmp	.LBB140_16
.LBB140_11:                             # %cond.true.53
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_18
# BB#12:                                # %land.lhs.true.58
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_18
# BB#13:                                # %land.lhs.true.64
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_18
# BB#14:                                # %land.lhs.true.73
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_18
# BB#15:                                # %land.lhs.true.79
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB140_17
	jmp	.LBB140_18
.LBB140_16:                             # %cond.false.85
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_17
	jmp	.LBB140_18
.LBB140_17:                             # %cond.true.86
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB140_19
.LBB140_18:                             # %cond.false.90
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
.LBB140_19:                             # %cond.end.94
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	-332(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB140_21
	jmp	.LBB140_35
.LBB140_20:                             # %cond.false.98
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_21
	jmp	.LBB140_35
.LBB140_21:                             # %cond.true.99
	movq	-96(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB140_23
# BB#22:                                # %cond.true.102
	movq	-96(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	jmp	.LBB140_34
.LBB140_23:                             # %cond.false.104
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_26
# BB#24:                                # %land.lhs.true.106
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_26
# BB#25:                                # %cond.true.109
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB140_27
	jmp	.LBB140_32
.LBB140_26:                             # %cond.false.114
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_27
	jmp	.LBB140_32
.LBB140_27:                             # %cond.true.115
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_30
# BB#28:                                # %land.lhs.true.118
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_30
# BB#29:                                # %cond.true.122
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB140_31
.LBB140_30:                             # %cond.false.126
	xorl	%eax, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB140_31
.LBB140_31:                             # %cond.end.127
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB140_33
.LBB140_32:                             # %cond.false.129
	movl	$5, %esi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB140_33:                             # %cond.end.133
	movl	-360(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB140_34:                             # %cond.end.136
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB140_36
.LBB140_35:                             # %cond.false.138
	xorl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB140_36
.LBB140_36:                             # %cond.end.139
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	-316(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB140_224
.LBB140_37:                             # %if.else
	cmpl	$2, -52(%rbp)
	je	.LBB140_39
# BB#38:                                # %lor.lhs.false
	cmpl	$4, -52(%rbp)
	jne	.LBB140_45
.LBB140_39:                             # %if.then.146
	cmpl	$2, -52(%rbp)
	jne	.LBB140_41
# BB#40:                                # %cond.true.149
	movl	$672, %edi              # imm = 0x2A0
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB140_42
.LBB140_41:                             # %cond.false.151
	movl	$513, %edi              # imm = 0x201
	callq	builtin_lisp_symbol
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB140_42:                             # %cond.end.153
	movq	-376(%rbp), %rax        # 8-byte Reload
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-168(%rbp), %r8
	leaq	-144(%rbp), %r9
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	leaq	-132(%rbp), %r10
	leaq	-136(%rbp), %r11
	movq	%rax, -64(%rbp)
	movl	-148(%rbp), %ebx
	movl	%ebx, -116(%rbp)
	movl	-152(%rbp), %ebx
	movl	%ebx, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	-52(%rbp), %ebx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movl	%ebx, %esi
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-384(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	mode_line_string
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB140_43
	jmp	.LBB140_44
.LBB140_43:                             # %if.then.157
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -104(%rbp)
.LBB140_44:                             # %if.end
	movq	$-1, -112(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB140_223
.LBB140_45:                             # %if.else.160
	cmpl	$7, -52(%rbp)
	je	.LBB140_47
# BB#46:                                # %lor.lhs.false.163
	cmpl	$8, -52(%rbp)
	jne	.LBB140_84
.LBB140_47:                             # %if.then.166
	cmpl	$7, -52(%rbp)
	jne	.LBB140_49
# BB#48:                                # %cond.true.171
	movl	$609, %edi              # imm = 0x261
	callq	builtin_lisp_symbol
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB140_50
.LBB140_49:                             # %cond.false.173
	movl	$815, %edi              # imm = 0x32F
	callq	builtin_lisp_symbol
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB140_50:                             # %cond.end.175
	movq	-400(%rbp), %rax        # 8-byte Reload
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-184(%rbp), %r8
	leaq	-144(%rbp), %r9
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	leaq	-132(%rbp), %r10
	leaq	-136(%rbp), %r11
	movq	%rax, -64(%rbp)
	movl	-148(%rbp), %ebx
	movl	%ebx, -116(%rbp)
	movl	-152(%rbp), %ebx
	movl	%ebx, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	-52(%rbp), %ebx
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movl	%ebx, %esi
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-408(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	callq	marginal_area_string
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB140_51
	jmp	.LBB140_52
.LBB140_51:                             # %if.then.179
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -104(%rbp)
.LBB140_52:                             # %if.end.183
	movl	-148(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-152(%rbp), %eax
	movq	-96(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_53
	jmp	.LBB140_67
.LBB140_53:                             # %cond.true.187
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_82
# BB#54:                                # %land.lhs.true.192
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_82
# BB#55:                                # %land.lhs.true.198
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_82
# BB#56:                                # %land.lhs.true.207
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_82
# BB#57:                                # %land.lhs.true.214
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_58
	jmp	.LBB140_63
.LBB140_58:                             # %cond.true.219
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_65
# BB#59:                                # %land.lhs.true.224
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_65
# BB#60:                                # %land.lhs.true.230
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_65
# BB#61:                                # %land.lhs.true.239
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_65
# BB#62:                                # %land.lhs.true.246
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB140_64
	jmp	.LBB140_65
.LBB140_63:                             # %cond.false.253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_64
	jmp	.LBB140_65
.LBB140_64:                             # %cond.true.254
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	jmp	.LBB140_66
.LBB140_65:                             # %cond.false.259
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
.LBB140_66:                             # %cond.end.263
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	-436(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB140_68
	jmp	.LBB140_82
.LBB140_67:                             # %cond.false.267
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_68
	jmp	.LBB140_82
.LBB140_68:                             # %cond.true.268
	movq	-96(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB140_70
# BB#69:                                # %cond.true.272
	movq	-96(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	jmp	.LBB140_81
.LBB140_70:                             # %cond.false.274
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_73
# BB#71:                                # %land.lhs.true.277
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_73
# BB#72:                                # %cond.true.281
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB140_74
	jmp	.LBB140_79
.LBB140_73:                             # %cond.false.286
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_74
	jmp	.LBB140_79
.LBB140_74:                             # %cond.true.287
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_77
# BB#75:                                # %land.lhs.true.290
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_77
# BB#76:                                # %cond.true.294
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	jmp	.LBB140_78
.LBB140_77:                             # %cond.false.298
	xorl	%eax, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB140_78
.LBB140_78:                             # %cond.end.299
	movl	-460(%rbp), %eax        # 4-byte Reload
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB140_80
.LBB140_79:                             # %cond.false.301
	movl	$5, %esi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB140_80:                             # %cond.end.305
	movl	-464(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -456(%rbp)        # 4-byte Spill
.LBB140_81:                             # %cond.end.308
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB140_83
.LBB140_82:                             # %cond.false.310
	xorl	%eax, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB140_83
.LBB140_83:                             # %cond.end.311
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	-420(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB140_222
.LBB140_84:                             # %if.else.314
	cmpl	$5, -52(%rbp)
	jne	.LBB140_120
# BB#85:                                # %if.then.317
	movl	$608, %edi              # imm = 0x260
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movl	$0, -116(%rbp)
	movl	-148(%rbp), %edi
	movl	%edi, -76(%rbp)
	movl	-148(%rbp), %edi
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$12, %cx
	andw	$1, %cx
	testw	$1, %cx
	movl	%edi, -472(%rbp)        # 4-byte Spill
	je	.LBB140_87
# BB#86:                                # %cond.true.324
	xorl	%eax, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB140_88
.LBB140_87:                             # %cond.false.325
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	window_box_width
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB140_88:                             # %cond.end.327
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	-472(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	movl	-152(%rbp), %eax
	movq	-96(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_89
	jmp	.LBB140_103
.LBB140_89:                             # %cond.true.333
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_118
# BB#90:                                # %land.lhs.true.338
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_118
# BB#91:                                # %land.lhs.true.344
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_118
# BB#92:                                # %land.lhs.true.353
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_118
# BB#93:                                # %land.lhs.true.360
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_94
	jmp	.LBB140_99
.LBB140_94:                             # %cond.true.365
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_101
# BB#95:                                # %land.lhs.true.370
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_101
# BB#96:                                # %land.lhs.true.376
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_101
# BB#97:                                # %land.lhs.true.385
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_101
# BB#98:                                # %land.lhs.true.392
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB140_100
	jmp	.LBB140_101
.LBB140_99:                             # %cond.false.399
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_100
	jmp	.LBB140_101
.LBB140_100:                            # %cond.true.400
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	jmp	.LBB140_102
.LBB140_101:                            # %cond.false.405
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
.LBB140_102:                            # %cond.end.409
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	-492(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB140_104
	jmp	.LBB140_118
.LBB140_103:                            # %cond.false.413
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_104
	jmp	.LBB140_118
.LBB140_104:                            # %cond.true.414
	movq	-96(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB140_106
# BB#105:                               # %cond.true.418
	movq	-96(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	jmp	.LBB140_117
.LBB140_106:                            # %cond.false.420
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_109
# BB#107:                               # %land.lhs.true.423
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_109
# BB#108:                               # %cond.true.427
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB140_110
	jmp	.LBB140_115
.LBB140_109:                            # %cond.false.432
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_110
	jmp	.LBB140_115
.LBB140_110:                            # %cond.true.433
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_113
# BB#111:                               # %land.lhs.true.436
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_113
# BB#112:                               # %cond.true.440
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB140_114
.LBB140_113:                            # %cond.false.444
	xorl	%eax, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB140_114
.LBB140_114:                            # %cond.end.445
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB140_116
.LBB140_115:                            # %cond.false.447
	movl	$5, %esi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB140_116:                            # %cond.end.451
	movl	-520(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB140_117:                            # %cond.end.454
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB140_119
.LBB140_118:                            # %cond.false.456
	xorl	%eax, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB140_119
.LBB140_119:                            # %cond.end.457
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	-480(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movl	%ecx, -128(%rbp)
	jmp	.LBB140_221
.LBB140_120:                            # %if.else.460
	cmpl	$6, -52(%rbp)
	jne	.LBB140_156
# BB#121:                               # %if.then.463
	movl	$814, %edi              # imm = 0x32E
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	%rax, -64(%rbp)
	movl	$0, -116(%rbp)
	movl	-148(%rbp), %edi
	movl	%edi, -76(%rbp)
	movl	-148(%rbp), %edi
	movq	-96(%rbp), %rax
	movl	%edi, -528(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	window_box_width
	movl	$1, %esi
	movl	-528(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	callq	window_box_width
	movl	-532(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movw	468(%rdi), %dx
	shrw	$12, %dx
	andw	$1, %dx
	testw	$1, %dx
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	je	.LBB140_123
# BB#122:                               # %cond.true.475
	movl	$2, %esi
	movq	-96(%rbp), %rdi
	callq	window_box_width
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB140_124
.LBB140_123:                            # %cond.false.477
	xorl	%eax, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB140_124
.LBB140_124:                            # %cond.end.478
	movl	-540(%rbp), %eax        # 4-byte Reload
	movl	-536(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	movl	-152(%rbp), %eax
	movq	-96(%rbp), %rdx
	movq	80(%rdx), %rdi
	movl	%eax, -544(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_125
	jmp	.LBB140_139
.LBB140_125:                            # %cond.true.484
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_154
# BB#126:                               # %land.lhs.true.489
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_154
# BB#127:                               # %land.lhs.true.495
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_154
# BB#128:                               # %land.lhs.true.504
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	104(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_154
# BB#129:                               # %land.lhs.true.511
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB140_130
	jmp	.LBB140_135
.LBB140_130:                            # %cond.true.516
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_137
# BB#131:                               # %land.lhs.true.521
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_137
# BB#132:                               # %land.lhs.true.527
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB140_137
# BB#133:                               # %land.lhs.true.536
	movq	-96(%rbp), %rax
	movq	80(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	96(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_137
# BB#134:                               # %land.lhs.true.543
	movq	-96(%rbp), %rax
	movl	260(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpl	368(%rax), %ecx
	jg	.LBB140_136
	jmp	.LBB140_137
.LBB140_135:                            # %cond.false.550
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_136
	jmp	.LBB140_137
.LBB140_136:                            # %cond.true.551
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	jmp	.LBB140_138
.LBB140_137:                            # %cond.false.556
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	368(%rax), %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
.LBB140_138:                            # %cond.end.560
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	-556(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB140_140
	jmp	.LBB140_154
.LBB140_139:                            # %cond.false.564
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_140
	jmp	.LBB140_154
.LBB140_140:                            # %cond.true.565
	movq	-96(%rbp), %rax
	cmpl	$0, 448(%rax)
	jl	.LBB140_142
# BB#141:                               # %cond.true.569
	movq	-96(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	jmp	.LBB140_153
.LBB140_142:                            # %cond.false.571
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_145
# BB#143:                               # %land.lhs.true.574
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_145
# BB#144:                               # %cond.true.578
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB140_146
	jmp	.LBB140_151
.LBB140_145:                            # %cond.false.583
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_146
	jmp	.LBB140_151
.LBB140_146:                            # %cond.true.584
	movq	-96(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB140_149
# BB#147:                               # %land.lhs.true.587
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB140_149
# BB#148:                               # %cond.true.591
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	movq	8(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	jmp	.LBB140_150
.LBB140_149:                            # %cond.false.595
	xorl	%eax, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jmp	.LBB140_150
.LBB140_150:                            # %cond.end.596
	movl	-580(%rbp), %eax        # 4-byte Reload
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB140_152
.LBB140_151:                            # %cond.false.598
	movl	$5, %esi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	estimate_mode_line_height
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB140_152:                            # %cond.end.602
	movl	-584(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movl	%eax, 448(%rcx)
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB140_153:                            # %cond.end.605
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB140_155
.LBB140_154:                            # %cond.false.607
	xorl	%eax, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB140_155
.LBB140_155:                            # %cond.end.608
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	-544(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movl	%ecx, -128(%rbp)
	jmp	.LBB140_220
.LBB140_156:                            # %if.else.611
	cmpl	$3, -52(%rbp)
	jne	.LBB140_158
# BB#157:                               # %if.then.614
	movl	$1001, %edi             # imm = 0x3E9
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movl	$1, -132(%rbp)
	movl	$0, -124(%rbp)
	movl	-148(%rbp), %edi
	movl	%edi, -76(%rbp)
	movl	-152(%rbp), %edi
	movl	%edi, -80(%rbp)
	movl	%edi, -128(%rbp)
	jmp	.LBB140_219
.LBB140_158:                            # %if.else.616
	cmpl	$9, -52(%rbp)
	jne	.LBB140_185
# BB#159:                               # %if.then.619
	movl	$1002, %edi             # imm = 0x3EA
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB140_161
# BB#160:                               # %cond.true.627
	xorl	%eax, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB140_168
.LBB140_161:                            # %cond.false.628
	movl	$901, %edi              # imm = 0x385
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_163
# BB#162:                               # %cond.true.632
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	jmp	.LBB140_167
.LBB140_163:                            # %cond.false.640
	movl	$607, %edi              # imm = 0x25F
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_165
# BB#164:                               # %cond.true.645
	movl	$1, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB140_166
.LBB140_165:                            # %cond.false.646
	movl	$811, %edi              # imm = 0x32B
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-632(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -620(%rbp)        # 4-byte Spill
.LBB140_166:                            # %cond.end.652
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB140_167:                            # %cond.end.654
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB140_168:                            # %cond.end.656
	movl	-592(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB140_179
# BB#169:                               # %lor.lhs.false.660
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB140_171
# BB#170:                               # %cond.true.667
	xorl	%eax, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB140_178
.LBB140_171:                            # %cond.false.668
	movl	$901, %edi              # imm = 0x385
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_173
# BB#172:                               # %cond.true.673
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB140_177
.LBB140_173:                            # %cond.false.681
	movl	$607, %edi              # imm = 0x25F
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_175
# BB#174:                               # %cond.true.686
	movl	$1, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	jmp	.LBB140_176
.LBB140_175:                            # %cond.false.687
	movl	$811, %edi              # imm = 0x32B
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-680(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -668(%rbp)        # 4-byte Spill
.LBB140_176:                            # %cond.end.693
	movl	-668(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB140_177:                            # %cond.end.695
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB140_178:                            # %cond.end.697
	movl	-636(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB140_183
.LBB140_179:                            # %cond.true.701
	movq	-96(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB140_181
# BB#180:                               # %cond.true.704
	movq	-96(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	jmp	.LBB140_182
.LBB140_181:                            # %cond.false.706
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
.LBB140_182:                            # %cond.end.709
	movl	-684(%rbp), %eax        # 4-byte Reload
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jmp	.LBB140_184
.LBB140_183:                            # %cond.false.711
	xorl	%eax, %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jmp	.LBB140_184
.LBB140_184:                            # %cond.end.712
	movl	-688(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -124(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -128(%rbp)
	jmp	.LBB140_218
.LBB140_185:                            # %if.else.714
	cmpl	$10, -52(%rbp)
	jne	.LBB140_201
# BB#186:                               # %if.then.717
	movl	$524, %edi              # imm = 0x20C
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB140_189
# BB#187:                               # %lor.lhs.false.725
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB140_190
# BB#188:                               # %land.lhs.true.731
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB140_190
.LBB140_189:                            # %cond.true.736
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_195
	jmp	.LBB140_199
.LBB140_190:                            # %cond.false.737
	movl	$901, %edi              # imm = 0x385
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_192
# BB#191:                               # %cond.true.741
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$32, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB140_195
	jmp	.LBB140_199
.LBB140_192:                            # %cond.false.749
	movl	$213, %edi
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_194
# BB#193:                               # %cond.true.754
	movb	$1, %al
	testb	$1, %al
	jne	.LBB140_195
	jmp	.LBB140_199
.LBB140_194:                            # %cond.false.755
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB140_195
	jmp	.LBB140_199
.LBB140_195:                            # %cond.true.756
	movq	-96(%rbp), %rax
	cmpl	$0, 440(%rax)
	jl	.LBB140_197
# BB#196:                               # %cond.true.759
	movq	-96(%rbp), %rax
	movl	440(%rax), %ecx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	jmp	.LBB140_198
.LBB140_197:                            # %cond.false.761
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	428(%rax), %ecx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
.LBB140_198:                            # %cond.end.764
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB140_200
.LBB140_199:                            # %cond.false.766
	xorl	%eax, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB140_200
.LBB140_200:                            # %cond.end.767
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -124(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -128(%rbp)
	jmp	.LBB140_217
.LBB140_201:                            # %if.else.769
	cmpl	$11, -52(%rbp)
	jne	.LBB140_207
# BB#202:                               # %if.then.772
	movl	$812, %edi              # imm = 0x32C
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movl	240(%rax), %edi
	movq	-96(%rbp), %rax
	addl	256(%rax), %edi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movl	%edi, -716(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movl	240(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -720(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-720(%rbp), %ecx        # 4-byte Reload
	addl	256(%rax), %ecx
	movl	-716(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB140_204
# BB#203:                               # %lor.lhs.false.789
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB140_205
.LBB140_204:                            # %cond.true.795
	xorl	%eax, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB140_206
.LBB140_205:                            # %cond.false.796
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	336(%rax), %ecx
	movl	%ecx, -724(%rbp)        # 4-byte Spill
.LBB140_206:                            # %cond.end.799
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -124(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -128(%rbp)
	jmp	.LBB140_216
.LBB140_207:                            # %if.else.801
	cmpl	$12, -52(%rbp)
	jne	.LBB140_215
# BB#208:                               # %if.then.804
	movl	$214, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movl	244(%rax), %edi
	movq	-96(%rbp), %rax
	addl	260(%rax), %edi
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rax
	movl	%edi, -728(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	XWINDOW
	movl	244(%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	callq	XWINDOW
	movl	-732(%rbp), %ecx        # 4-byte Reload
	addl	260(%rax), %ecx
	movl	-728(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB140_210
# BB#209:                               # %land.lhs.true.822
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	xorl	%edi, %edi
	movq	16(%rax), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-744(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB140_212
.LBB140_210:                            # %lor.lhs.false.830
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB140_212
# BB#211:                               # %lor.lhs.false.837
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB140_213
.LBB140_212:                            # %cond.true.844
	xorl	%eax, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB140_214
.LBB140_213:                            # %cond.false.845
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	340(%rax), %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
.LBB140_214:                            # %cond.end.848
	movl	-748(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -124(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -128(%rbp)
.LBB140_215:                            # %if.end.850
	jmp	.LBB140_216
.LBB140_216:                            # %if.end.851
	jmp	.LBB140_217
.LBB140_217:                            # %if.end.852
	jmp	.LBB140_218
.LBB140_218:                            # %if.end.853
	jmp	.LBB140_219
.LBB140_219:                            # %if.end.854
	jmp	.LBB140_220
.LBB140_220:                            # %if.end.855
	jmp	.LBB140_221
.LBB140_221:                            # %if.end.856
	jmp	.LBB140_222
.LBB140_222:                            # %if.end.857
	jmp	.LBB140_223
.LBB140_223:                            # %if.end.858
	jmp	.LBB140_224
.LBB140_224:                            # %if.end.859
	cmpq	$0, -112(%rbp)
	jne	.LBB140_262
# BB#225:                               # %if.then.861
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -200(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB140_227
# BB#226:                               # %cond.true.865
	movslq	-76(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB140_243
.LBB140_227:                            # %cond.false.867
	cmpl	$6, -52(%rbp)
	je	.LBB140_240
# BB#228:                               # %lor.lhs.false.870
	cmpl	$8, -52(%rbp)
	je	.LBB140_240
# BB#229:                               # %lor.lhs.false.873
	cmpl	$9, -52(%rbp)
	jne	.LBB140_241
# BB#230:                               # %land.lhs.true.876
	movq	-96(%rbp), %rax
	movw	468(%rax), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB140_232
# BB#231:                               # %cond.true.883
	xorl	%eax, %eax
	movl	%eax, -764(%rbp)        # 4-byte Spill
	jmp	.LBB140_239
.LBB140_232:                            # %cond.false.884
	movl	$901, %edi              # imm = 0x385
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_234
# BB#233:                               # %cond.true.889
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	jmp	.LBB140_238
.LBB140_234:                            # %cond.false.897
	movl	$607, %edi              # imm = 0x25F
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_236
# BB#235:                               # %cond.true.902
	movl	$1, %eax
	movl	%eax, -796(%rbp)        # 4-byte Spill
	jmp	.LBB140_237
.LBB140_236:                            # %cond.false.903
	movl	$811, %edi              # imm = 0x32B
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-808(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -796(%rbp)        # 4-byte Spill
.LBB140_237:                            # %cond.end.909
	movl	-796(%rbp), %eax        # 4-byte Reload
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB140_238:                            # %cond.end.911
	movl	-780(%rbp), %eax        # 4-byte Reload
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB140_239:                            # %cond.end.913
	movl	-764(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB140_241
.LBB140_240:                            # %cond.true.917
	movl	$1, %esi
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	window_box_left
	movslq	%eax, %rdi
	movq	-816(%rbp), %rcx        # 8-byte Reload
	subq	%rdi, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB140_242
.LBB140_241:                            # %cond.false.922
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB140_242
.LBB140_242:                            # %cond.end.923
	movq	-824(%rbp), %rax        # 8-byte Reload
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB140_243:                            # %cond.end.925
	movq	-760(%rbp), %rax        # 8-byte Reload
	leaq	-268(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	leaq	-248(%rbp), %rcx
	leaq	-200(%rbp), %r8
	leaq	-252(%rbp), %r9
	leaq	-256(%rbp), %rdi
	leaq	-260(%rbp), %r10
	leaq	-264(%rbp), %r11
	movl	%eax, %ebx
	movl	%ebx, -268(%rbp)
	movl	-152(%rbp), %ebx
	movl	%ebx, -272(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	buffer_posn_from_coords
	movq	%rax, -192(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -116(%rbp)
	jge	.LBB140_245
# BB#244:                               # %if.then.932
	movl	-268(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB140_245:                            # %if.end.933
	cmpl	$0, -120(%rbp)
	jge	.LBB140_247
# BB#246:                               # %if.then.936
	movl	-272(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB140_247:                            # %if.end.937
	cmpl	$0, -124(%rbp)
	jge	.LBB140_249
# BB#248:                               # %if.then.940
	movl	-252(%rbp), %eax
	movl	%eax, -124(%rbp)
.LBB140_249:                            # %if.end.941
	cmpl	$0, -128(%rbp)
	jge	.LBB140_251
# BB#250:                               # %if.then.944
	movl	-256(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB140_251:                            # %if.end.945
	cmpl	$0, -132(%rbp)
	jge	.LBB140_253
# BB#252:                               # %if.then.948
	movl	-260(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB140_253:                            # %if.end.949
	cmpl	$0, -136(%rbp)
	jge	.LBB140_255
# BB#254:                               # %if.then.952
	movl	-264(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB140_255:                            # %if.end.953
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_259
# BB#256:                               # %if.then.957
	movq	-112(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-192(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB140_257
	jmp	.LBB140_258
.LBB140_257:                            # %if.then.961
	movq	-192(%rbp), %rdi
	movq	-224(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -104(%rbp)
.LBB140_258:                            # %if.end.966
	jmp	.LBB140_259
.LBB140_259:                            # %if.end.967
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-848(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB140_261
# BB#260:                               # %if.then.971
	movq	-200(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB140_261:                            # %if.end.972
	jmp	.LBB140_262
.LBB140_262:                            # %if.end.973
	movq	-144(%rbp), %rdi
	callq	IMAGEP
	testb	$1, %al
	jne	.LBB140_263
	jmp	.LBB140_268
.LBB140_263:                            # %if.then.975
	movl	$79, %edi
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB140_264
	jmp	.LBB140_267
.LBB140_264:                            # %land.lhs.true.982
	movq	-280(%rbp), %rdi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	callq	find_hot_spot
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB140_267
# BB#265:                               # %land.lhs.true.987
	movq	-288(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB140_267
# BB#266:                               # %if.then.995
	movq	-288(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB140_267:                            # %if.end.997
	jmp	.LBB140_268
.LBB140_268:                            # %if.end.998
	movq	-144(%rbp), %rdi
	movslq	-124(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-128(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movslq	-132(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-136(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rcx, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	-880(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rdi
	cmpq	$0, -112(%rbp)
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	jge	.LBB140_270
# BB#269:                               # %cond.true.1016
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB140_271
.LBB140_270:                            # %cond.false.1018
	movq	-112(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB140_271:                            # %cond.end.1021
	movq	-896(%rbp), %rax        # 8-byte Reload
	movslq	-116(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-120(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -72(%rbp)
	jmp	.LBB140_276
.LBB140_272:                            # %if.else.1033
	cmpq	$0, -24(%rbp)
	je	.LBB140_274
# BB#273:                               # %if.then.1036
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -76(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %esi
	movl	%esi, -80(%rbp)
	jmp	.LBB140_275
.LBB140_274:                            # %if.else.1042
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB140_275:                            # %if.end.1044
	jmp	.LBB140_276
.LBB140_276:                            # %if.end.1045
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rax
	movslq	-76(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-80(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-72(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$944, %rsp              # imm = 0x3B0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end140:
	.size	make_lispy_position, .Lfunc_end140-make_lispy_position
	.cfi_endproc

	.globl	Fposn_at_point
	.align	16, 0x90
	.type	Fposn_at_point,@function
Fposn_at_point:                         # @Fposn_at_point
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB141_2
# BB#1:                                 # %if.then
	movq	selected_window, %rax
	movq	%rax, -24(%rbp)
.LBB141_2:                              # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fpos_visible_in_window_p
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB141_6
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$-1, %rax
	jge	.LBB141_5
# BB#4:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB141_7
.LBB141_5:                              # %if.end.12
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	Fposn_at_x_y
	movq	%rax, -32(%rbp)
.LBB141_6:                              # %if.end.15
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB141_7:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	Fposn_at_point, .Lfunc_end141-Fposn_at_point
	.cfi_endproc

	.globl	allocate_kboard
	.align	16, 0x90
	.type	allocate_kboard,@function
allocate_kboard:                        # @allocate_kboard
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
	subq	$16, %rsp
	movl	$200, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	init_kboard
	movq	all_kboards, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, all_kboards
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	allocate_kboard, .Lfunc_end142-allocate_kboard
	.cfi_endproc

	.align	16, 0x90
	.type	init_kboard,@function
init_kboard:                            # @init_kboard
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_overriding_terminal_local_map
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_command
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_real_last_command
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_keyboard_translate_table
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_repeatable_command
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_prefix_arg
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_prefix_arg
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movb	$0, 184(%rax)
	movq	-8(%rbp), %rax
	movb	185(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 185(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_string
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_prompt
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_defining_kbd_macro
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_kbd_macro
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movl	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_system_key_alist
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_system_key_syms
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	kset_window_system
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_input_decode_map
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_local_function_key_map
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	globals+904, %rsi
	callq	Fset_keymap_parent
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_default_minibuffer_frame
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end143:
	.size	init_kboard, .Lfunc_end143-init_kboard
	.cfi_endproc

	.globl	delete_kboard
	.align	16, 0x90
	.type	delete_kboard,@function
delete_kboard:                          # @delete_kboard
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
	subq	$16, %rsp
	movabsq	$all_kboards, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
.LBB144_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB144_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB144_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB144_4
# BB#3:                                 # %if.then
	callq	emacs_abort
.LBB144_4:                              # %if.end
                                        #   in Loop: Header=BB144_1 Depth=1
	jmp	.LBB144_5
.LBB144_5:                              # %for.inc
                                        #   in Loop: Header=BB144_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB144_1
.LBB144_6:                              # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	current_kboard, %rax
	jne	.LBB144_12
# BB#7:                                 # %land.lhs.true
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB144_8
	jmp	.LBB144_12
.LBB144_8:                              # %land.lhs.true.4
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB144_12
# BB#9:                                 # %if.then.6
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, current_kboard
	movb	$0, single_kboard
	movq	current_kboard, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB144_11
# BB#10:                                # %if.then.10
	callq	emacs_abort
.LBB144_11:                             # %if.end.11
	jmp	.LBB144_12
.LBB144_12:                             # %if.end.12
	movq	-8(%rbp), %rdi
	callq	wipe_kboard
	movq	-8(%rbp), %rdi
	callq	xfree
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	delete_kboard, .Lfunc_end144-delete_kboard
	.cfi_endproc

	.align	16, 0x90
	.type	wipe_kboard,@function
wipe_kboard:                            # @wipe_kboard
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	xfree
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	wipe_kboard, .Lfunc_end145-wipe_kboard
	.cfi_endproc

	.globl	init_keyboard
	.align	16, 0x90
	.type	init_keyboard,@function
init_keyboard:                          # @init_keyboard
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
	subq	$352, %rsp              # imm = 0x160
	xorl	%edi, %edi
	movq	$-1, command_loop_level
	movb	$0, immediate_quit
	movl	$7, quit_char
	callq	builtin_lisp_symbol
	movq	%rax, globals+2520
	callq	invalid_timespec
	xorl	%edi, %edi
	movabsq	$kbd_buffer, %rcx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, timer_idleness_start_time
	movq	-8(%rbp), %rax
	movq	%rax, timer_idleness_start_time+8
	movl	$0, total_keys
	movl	$0, recent_keys_index
	movq	%rcx, kbd_fetch_ptr
	movq	%rcx, kbd_store_ptr
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2944
	movb	$0, input_pending
	movl	$0, interrupt_input_blocked
	movb	$0, pending_signals
	callq	builtin_lisp_symbol
	movq	%rax, internal_last_event_frame
	movq	internal_last_event_frame, %rax
	movq	%rax, globals+1248
	movq	initial_kboard, %rax
	movq	%rax, current_kboard
	movq	current_kboard, %rdi
	callq	wipe_kboard
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	init_kboard
	testb	$1, noninteractive
	jne	.LBB146_2
# BB#1:                                 # %if.then
	leaq	-168(%rbp), %rdi
	movabsq	$deliver_interrupt_signal, %rsi
	callq	emacs_sigaction_init
	movl	$2, %edi
	leaq	-168(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	$3, %edi
	leaq	-168(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB146_2:                              # %if.end
	testb	$1, noninteractive
	jne	.LBB146_4
# BB#3:                                 # %if.then.8
	leaq	-320(%rbp), %rdi
	movabsq	$deliver_input_available_signal, %rsi
	callq	emacs_sigaction_init
	movl	$29, %edi
	leaq	-320(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB146_4:                              # %if.end.11
	movl	$2, %edi
	movabsq	$empty_mask, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movb	$1, interrupt_input
	callq	pthread_sigmask
	movq	$0, dribble
	cmpq	$0, keyboard_init_hook
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB146_6
# BB#5:                                 # %if.then.14
	callq	*keyboard_init_hook
.LBB146_6:                              # %if.end.15
	movq	$0, poll_timer
	movl	$1, poll_suppress_count
	callq	start_polling
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end146:
	.size	init_keyboard, .Lfunc_end146-init_keyboard
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_interrupt_signal,@function
deliver_interrupt_signal:               # @deliver_interrupt_signal
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
	subq	$16, %rsp
	movabsq	$handle_interrupt_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	deliver_interrupt_signal, .Lfunc_end147-deliver_interrupt_signal
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_input_available_signal,@function
deliver_input_available_signal:         # @deliver_input_available_signal
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
	subq	$16, %rsp
	movabsq	$handle_input_available_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end148:
	.size	deliver_input_available_signal, .Lfunc_end148-deliver_input_available_signal
	.cfi_endproc

	.globl	syms_of_keyboard
	.align	16, 0x90
	.type	syms_of_keyboard,@function
syms_of_keyboard:                       # @syms_of_keyboard
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
	subq	$176, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$pending_funcalls, %rdi
	movq	%rax, pending_funcalls
	callq	staticpro
	movabsq	$.L.str.27, %rdi
	callq	build_pure_c_string
	movabsq	$Vlispy_mouse_stem, %rdi
	movq	%rax, Vlispy_mouse_stem
	callq	staticpro
	movabsq	$.L.str.28, %rdi
	callq	build_pure_c_string
	movabsq	$.L.str.29, %rdi
	movq	%rax, regular_top_level_message
	callq	build_pure_c_string
	movq	%rax, recover_top_level_message
# BB#1:                                 # %do.body
	movabsq	$syms_of_keyboard.o_fwd, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$globals, %rax
	addq	$1168, %rax             # imm = 0x490
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	movabsq	$item_properties, %rdi
	movq	regular_top_level_message, %rax
	movq	%rax, globals+1168
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$tool_bar_item_properties, %rdi
	movq	%rax, item_properties
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$tool_bar_items_vector, %rdi
	movq	%rax, tool_bar_item_properties
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$550, %edi              # imm = 0x226
	movq	%rax, tool_bar_items_vector
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movl	$551, %edi              # imm = 0x227
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movl	$0, -4(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB149_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$9, %rax
	jae	.LBB149_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB149_3 Depth=1
	movabsq	$head_table, %rax
	movslq	-4(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movswl	(%rax), %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movswl	2(%rax), %edi
	callq	builtin_lisp_symbol
	movl	$382, %edi              # imm = 0x17E
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$384, %edi              # imm = 0x180
	movq	-24(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	list1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB149_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB149_3
.LBB149_6:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$22, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$button_down_location, %rdi
	movq	%rax, button_down_location
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$22, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$mouse_syms, %rdi
	movq	%rax, mouse_syms
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$18, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$wheel_syms, %rdi
	movq	%rax, wheel_syms
	callq	staticpro
	xorl	%edi, %edi
	movl	$28, -40(%rbp)
	movslq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, modifier_symbols
	movl	$0, -36(%rbp)
.LBB149_7:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB149_12
# BB#8:                                 # %for.body.38
                                        #   in Loop: Header=BB149_7 Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$0, modifier_names(,%rax,8)
	je	.LBB149_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB149_7 Depth=1
	movq	modifier_symbols, %rdi
	movslq	-36(%rbp), %rsi
	movslq	-36(%rbp), %rax
	movq	modifier_names(,%rax,8), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	intern_c_string
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB149_10:                             # %if.end
                                        #   in Loop: Header=BB149_7 Depth=1
	jmp	.LBB149_11
.LBB149_11:                             # %for.inc.45
                                        #   in Loop: Header=BB149_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB149_7
.LBB149_12:                             # %for.end.47
	movabsq	$modifier_symbols, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$1202, %edi             # imm = 0x4B2
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$recent_keys, %rdi
	movq	%rax, recent_keys
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$162, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$this_command_keys, %rdi
	movq	%rax, this_command_keys
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$122, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movabsq	$raw_keybuf, %rdi
	movq	%rax, raw_keybuf
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$accent_key_syms, %rdi
	movq	%rax, accent_key_syms
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$func_key_syms, %rdi
	movq	%rax, func_key_syms
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$drag_n_drop_syms, %rdi
	movq	%rax, drag_n_drop_syms
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$unread_switch_frame, %rdi
	movq	%rax, unread_switch_frame
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$internal_last_event_frame, %rdi
	movq	%rax, internal_last_event_frame
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$read_key_sequence_cmd, %rdi
	movq	%rax, read_key_sequence_cmd
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$read_key_sequence_remapped, %rdi
	movq	%rax, read_key_sequence_remapped
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$menu_bar_one_keymap_changed_items, %rdi
	movq	%rax, menu_bar_one_keymap_changed_items
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$menu_bar_items_vector, %rdi
	movq	%rax, menu_bar_items_vector
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$help_form_saved_window_configs, %rdi
	movq	%rax, help_form_saved_window_configs
	callq	staticpro
	movabsq	$Scurrent_idle_time, %rdi
	callq	defsubr
	movabsq	$Sevent_symbol_parse_modifiers, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sevent_convert_list, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_key_sequence, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sread_key_sequence_vector, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srecursive_edit, %rdi
	callq	defsubr
	movabsq	$Strack_mouse, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinput_pending_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srecent_keys, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sthis_command_keys, %rdi
	callq	defsubr
	movabsq	$Sthis_command_keys_vector, %rdi
	callq	defsubr
	movabsq	$Sthis_single_command_keys, %rdi
	callq	defsubr
	movabsq	$Sthis_single_command_raw_keys, %rdi
	callq	defsubr
	movabsq	$Sclear_this_command_keys, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssuspend_emacs, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sabort_recursive_edit, %rdi
	callq	defsubr
	movabsq	$Sexit_recursive_edit, %rdi
	callq	defsubr
	movabsq	$Srecursion_depth, %rdi
	callq	defsubr
	movabsq	$Scommand_error_default_function, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stop_level, %rdi
	callq	defsubr
	movabsq	$Sdiscard_input, %rdi
	callq	defsubr
	movabsq	$Sopen_dribble_file, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_input_interrupt_mode, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_output_flow_control, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_input_meta_mode, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_quit_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_input_mode, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scurrent_input_mode, %rdi
	callq	defsubr
	movabsq	$Sposn_at_point, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sposn_at_x_y, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#13:                                # %do.body.64
	movabsq	$syms_of_keyboard.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$3000, %rax             # imm = 0xBB8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.65
	jmp	.LBB149_15
.LBB149_15:                             # %do.body.66
	movabsq	$syms_of_keyboard.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$3016, %rax             # imm = 0xBC8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.67
	jmp	.LBB149_17
.LBB149_17:                             # %do.body.68
	movabsq	$syms_of_keyboard.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$3008, %rax             # imm = 0xBC0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.69
	jmp	.LBB149_19
.LBB149_19:                             # %do.body.70
	movabsq	$syms_of_keyboard.o_fwd.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$globals, %rax
	addq	$2520, %rax             # imm = 0x9D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.71
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2520
# BB#21:                                # %do.body.73
	movabsq	$syms_of_keyboard.o_fwd.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$2536, %rax             # imm = 0x9E8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.74
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2536
# BB#23:                                # %do.body.76
	movabsq	$syms_of_keyboard.o_fwd.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$globals, %rax
	addq	$2528, %rax             # imm = 0x9E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.77
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2528
# BB#25:                                # %do.body.79
	movabsq	$syms_of_keyboard.o_fwd.43, %rdi
	movabsq	$.L.str.44, %rsi
	movabsq	$globals, %rax
	addq	$3032, %rax             # imm = 0xBD8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.80
	movq	$110, globals+3032
# BB#27:                                # %do.body.81
	movabsq	$syms_of_keyboard.ko_fwd, %rdi
	movabsq	$.L.str.45, %rsi
	movl	$16, %edx
	callq	defvar_kboard
# BB#28:                                # %do.end.82
	jmp	.LBB149_29
.LBB149_29:                             # %do.body.83
	movabsq	$syms_of_keyboard.ko_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movl	$24, %edx
	callq	defvar_kboard
# BB#30:                                # %do.end.84
	jmp	.LBB149_31
.LBB149_31:                             # %do.body.85
	movabsq	$syms_of_keyboard.ko_fwd.48, %rdi
	movabsq	$.L.str.49, %rsi
	movl	$40, %edx
	callq	defvar_kboard
# BB#32:                                # %do.end.86
	jmp	.LBB149_33
.LBB149_33:                             # %do.body.87
	movabsq	$syms_of_keyboard.o_fwd.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$globals, %rax
	addq	$2344, %rax             # imm = 0x928
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#34:                                # %do.end.88
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2344
# BB#35:                                # %do.body.90
	movabsq	$syms_of_keyboard.o_fwd.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$globals, %rax
	addq	$1984, %rax             # imm = 0x7C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#36:                                # %do.end.91
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1984
# BB#37:                                # %do.body.93
	movabsq	$syms_of_keyboard.o_fwd.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$globals, %rax
	addq	$2352, %rax             # imm = 0x930
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#38:                                # %do.end.94
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2352
# BB#39:                                # %do.body.96
	movabsq	$syms_of_keyboard.o_fwd.56, %rdi
	movabsq	$.L.str.57, %rsi
	movabsq	$globals, %rax
	addq	$2360, %rax             # imm = 0x938
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#40:                                # %do.end.97
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2360
# BB#41:                                # %do.body.99
	movabsq	$syms_of_keyboard.i_fwd, %rdi
	movabsq	$.L.str.58, %rsi
	movabsq	$globals, %rax
	addq	$3040, %rax             # imm = 0xBE0
	movq	%rax, %rdx
	callq	defvar_int
# BB#42:                                # %do.end.100
	movq	$300, globals+3040      # imm = 0x12C
# BB#43:                                # %do.body.101
	movabsq	$syms_of_keyboard.o_fwd.59, %rdi
	movabsq	$.L.str.60, %rsi
	movabsq	$globals, %rax
	addq	$88, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#44:                                # %do.end.102
	movl	$30, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, globals+88
# BB#45:                                # %do.body.104
	movabsq	$syms_of_keyboard.o_fwd.61, %rdi
	movabsq	$.L.str.62, %rsi
	movabsq	$globals, %rax
	addq	$608, %rax              # imm = 0x260
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#46:                                # %do.end.105
	movq	$6, globals+608
# BB#47:                                # %do.body.106
	movabsq	$syms_of_keyboard.i_fwd.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$globals, %rax
	addq	$3224, %rax             # imm = 0xC98
	movq	%rax, %rdx
	callq	defvar_int
# BB#48:                                # %do.end.107
	movq	$2, globals+3224
# BB#49:                                # %do.body.108
	movabsq	$syms_of_keyboard.o_fwd.65, %rdi
	movabsq	$.L.str.66, %rsi
	movabsq	$globals, %rax
	addq	$592, %rax              # imm = 0x250
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#50:                                # %do.end.109
	movq	$2002, globals+592      # imm = 0x7D2
# BB#51:                                # %do.body.110
	movabsq	$syms_of_keyboard.i_fwd.67, %rdi
	movabsq	$.L.str.68, %rsi
	movabsq	$globals, %rax
	addq	$3072, %rax             # imm = 0xC00
	movq	%rax, %rdx
	callq	defvar_int
# BB#52:                                # %do.end.111
	movq	$3, globals+3072
# BB#53:                                # %do.body.112
	movabsq	$syms_of_keyboard.i_fwd.69, %rdi
	movabsq	$.L.str.70, %rsi
	movabsq	$globals, %rax
	addq	$3200, %rax             # imm = 0xC80
	movq	%rax, %rdx
	callq	defvar_int
# BB#54:                                # %do.end.113
	movq	$0, globals+3200
# BB#55:                                # %do.body.114
	movabsq	$syms_of_keyboard.i_fwd.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$globals, %rax
	addq	$3208, %rax             # imm = 0xC88
	movq	%rax, %rdx
	callq	defvar_int
# BB#56:                                # %do.end.115
	movq	$0, globals+3208
# BB#57:                                # %do.body.116
	movabsq	$syms_of_keyboard.o_fwd.73, %rdi
	movabsq	$.L.str.74, %rsi
	movabsq	$globals, %rax
	addq	$1248, %rax             # imm = 0x4E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#58:                                # %do.end.117
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1248
# BB#59:                                # %do.body.119
	movabsq	$syms_of_keyboard.o_fwd.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$globals, %rax
	addq	$2488, %rax             # imm = 0x9B8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#60:                                # %do.end.120
	jmp	.LBB149_61
.LBB149_61:                             # %do.body.121
	movabsq	$syms_of_keyboard.o_fwd.77, %rdi
	movabsq	$.L.str.78, %rsi
	movabsq	$globals, %rax
	addq	$968, %rax              # imm = 0x3C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#62:                                # %do.end.122
	movq	$34, globals+968
# BB#63:                                # %do.body.123
	movabsq	$syms_of_keyboard.o_fwd.79, %rdi
	movabsq	$.L.str.80, %rsi
	movabsq	$globals, %rax
	addq	$976, %rax              # imm = 0x3D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#64:                                # %do.end.124
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+976
# BB#65:                                # %do.body.126
	movabsq	$syms_of_keyboard.o_fwd.81, %rdi
	movabsq	$.L.str.82, %rsi
	movabsq	$globals, %rax
	addq	$984, %rax              # imm = 0x3D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#66:                                # %do.end.127
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+984
# BB#67:                                # %do.body.129
	movabsq	$syms_of_keyboard.o_fwd.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$globals, %rax
	addq	$1792, %rax             # imm = 0x700
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#68:                                # %do.end.130
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1792
# BB#69:                                # %do.body.132
	movabsq	$syms_of_keyboard.o_fwd.85, %rdi
	movabsq	$.L.str.86, %rsi
	movabsq	$globals, %rax
	addq	$2432, %rax             # imm = 0x980
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#70:                                # %do.end.133
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$930, %edi              # imm = 0x3A2
	movq	%rax, globals+2432
	callq	builtin_lisp_symbol
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	movw	%cx, lispsym(,%rax)
# BB#71:                                # %do.body.136
	movabsq	$syms_of_keyboard.ko_fwd.87, %rdi
	movabsq	$.L.str.88, %rsi
	movl	$32, %edx
	callq	defvar_kboard
# BB#72:                                # %do.end.137
	jmp	.LBB149_73
.LBB149_73:                             # %do.body.138
	movabsq	$syms_of_keyboard.b_fwd, %rdi
	movabsq	$.L.str.89, %rsi
	movabsq	$globals, %rax
	addq	$3366, %rax             # imm = 0xD26
	movq	%rax, %rdx
	callq	defvar_bool
# BB#74:                                # %do.end.139
	movb	$0, globals+3366
# BB#75:                                # %do.body.140
	movabsq	$syms_of_keyboard.b_fwd.90, %rdi
	movabsq	$.L.str.91, %rsi
	movabsq	$globals, %rax
	addq	$3409, %rax             # imm = 0xD51
	movq	%rax, %rdx
	callq	defvar_bool
# BB#76:                                # %do.end.141
	movb	$1, globals+3409
# BB#77:                                # %do.body.142
	movabsq	$syms_of_keyboard.o_fwd.92, %rdi
	movabsq	$.L.str.93, %rsi
	movabsq	$globals, %rax
	addq	$3024, %rax             # imm = 0xBD0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#78:                                # %do.end.143
	movq	$130, globals+3024
# BB#79:                                # %do.body.144
	movabsq	$syms_of_keyboard.i_fwd.94, %rdi
	movabsq	$.L.str.95, %rsi
	movabsq	$globals, %rax
	addq	$3096, %rax             # imm = 0xC18
	movq	%rax, %rdx
	callq	defvar_int
# BB#80:                                # %do.end.145
	movq	$0, globals+3096
# BB#81:                                # %do.body.146
	movabsq	$syms_of_keyboard.o_fwd.96, %rdi
	movabsq	$.L.str.97, %rsi
	movabsq	$globals, %rax
	addq	$416, %rax              # imm = 0x1A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#82:                                # %do.end.147
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$319, %edi              # imm = 0x13F
	movq	%rax, globals+416
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_variable_buffer_local
	movq	%rax, -144(%rbp)        # 8-byte Spill
# BB#83:                                # %do.body.151
	movabsq	$syms_of_keyboard.o_fwd.98, %rdi
	movabsq	$.L.str.99, %rsi
	movabsq	$globals, %rax
	addq	$1776, %rax             # imm = 0x6F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#84:                                # %do.end.152
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1776
# BB#85:                                # %do.body.154
	movabsq	$syms_of_keyboard.o_fwd.100, %rdi
	movabsq	$.L.str.101, %rsi
	movabsq	$globals, %rax
	addq	$1752, %rax             # imm = 0x6D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#86:                                # %do.end.155
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$355, %edi              # imm = 0x163
	movq	%rax, globals+1752
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -160(%rbp)        # 8-byte Spill
# BB#87:                                # %do.body.160
	movabsq	$syms_of_keyboard.o_fwd.102, %rdi
	movabsq	$.L.str.103, %rsi
	movabsq	$globals, %rax
	addq	$1352, %rax             # imm = 0x548
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#88:                                # %do.end.161
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1352
# BB#89:                                # %do.body.163
	movabsq	$syms_of_keyboard.o_fwd.104, %rdi
	movabsq	$.L.str.105, %rsi
	movabsq	$globals, %rax
	addq	$1408, %rax             # imm = 0x580
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#90:                                # %do.end.164
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1408
# BB#91:                                # %do.body.166
	movabsq	$syms_of_keyboard.o_fwd.106, %rdi
	movabsq	$.L.str.107, %rsi
	movabsq	$globals, %rax
	addq	$2416, %rax             # imm = 0x970
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#92:                                # %do.end.167
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2416
# BB#93:                                # %do.body.169
	movabsq	$syms_of_keyboard.ko_fwd.108, %rdi
	movabsq	$.L.str.109, %rsi
	movl	$8, %edx
	callq	defvar_kboard
# BB#94:                                # %do.end.170
	jmp	.LBB149_95
.LBB149_95:                             # %do.body.171
	movabsq	$syms_of_keyboard.o_fwd.110, %rdi
	movabsq	$.L.str.111, %rsi
	movabsq	$globals, %rax
	addq	$1728, %rax             # imm = 0x6C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#96:                                # %do.end.172
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1728
# BB#97:                                # %do.body.174
	movabsq	$syms_of_keyboard.o_fwd.112, %rdi
	movabsq	$.L.str.113, %rsi
	movabsq	$globals, %rax
	addq	$1736, %rax             # imm = 0x6C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#98:                                # %do.end.175
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1736
# BB#99:                                # %do.body.177
	movabsq	$syms_of_keyboard.o_fwd.114, %rdi
	movabsq	$.L.str.115, %rsi
	movabsq	$globals, %rax
	addq	$2192, %rax             # imm = 0x890
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#100:                               # %do.end.178
	movl	$589, %edi              # imm = 0x24D
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, globals+2192
# BB#101:                               # %do.body.181
	movabsq	$syms_of_keyboard.o_fwd.116, %rdi
	movabsq	$.L.str.117, %rsi
	movabsq	$globals, %rax
	addq	$2944, %rax             # imm = 0xB80
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#102:                               # %do.end.182
	jmp	.LBB149_103
.LBB149_103:                            # %do.body.183
	movabsq	$syms_of_keyboard.ko_fwd.118, %rdi
	movabsq	$.L.str.119, %rsi
	movl	$120, %edx
	callq	defvar_kboard
# BB#104:                               # %do.end.184
	jmp	.LBB149_105
.LBB149_105:                            # %do.body.185
	movabsq	$syms_of_keyboard.ko_fwd.120, %rdi
	movabsq	$.L.str.121, %rsi
	movl	$144, %edx
	callq	defvar_kboard
# BB#106:                               # %do.end.186
	jmp	.LBB149_107
.LBB149_107:                            # %do.body.187
	movabsq	$syms_of_keyboard.ko_fwd.122, %rdi
	movabsq	$.L.str.123, %rsi
	movl	$152, %edx
	callq	defvar_kboard
# BB#108:                               # %do.end.188
	jmp	.LBB149_109
.LBB149_109:                            # %do.body.189
	movabsq	$syms_of_keyboard.o_fwd.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$globals, %rax
	addq	$904, %rax              # imm = 0x388
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#110:                               # %do.end.190
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	%rax, globals+904
# BB#111:                               # %do.body.193
	movabsq	$syms_of_keyboard.o_fwd.126, %rdi
	movabsq	$.L.str.127, %rsi
	movabsq	$globals, %rax
	addq	$1208, %rax             # imm = 0x4B8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#112:                               # %do.end.194
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_sparse_keymap
	movq	%rax, globals+1208
# BB#113:                               # %do.body.197
	movabsq	$syms_of_keyboard.o_fwd.128, %rdi
	movabsq	$.L.str.129, %rsi
	movabsq	$globals, %rax
	addq	$520, %rax              # imm = 0x208
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#114:                               # %do.end.198
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+520
# BB#115:                               # %do.body.200
	movabsq	$syms_of_keyboard.o_fwd.130, %rdi
	movabsq	$.L.str.131, %rsi
	movabsq	$globals, %rax
	addq	$512, %rax              # imm = 0x200
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#116:                               # %do.end.201
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+512
# BB#117:                               # %do.body.203
	movabsq	$syms_of_keyboard.o_fwd.132, %rdi
	movabsq	$.L.str.133, %rsi
	movabsq	$globals, %rax
	addq	$536, %rax              # imm = 0x218
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#118:                               # %do.end.204
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+536
# BB#119:                               # %do.body.206
	movabsq	$syms_of_keyboard.o_fwd.134, %rdi
	movabsq	$.L.str.135, %rsi
	movabsq	$globals, %rax
	addq	$2384, %rax             # imm = 0x950
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#120:                               # %do.end.207
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2384
# BB#121:                               # %do.body.209
	movabsq	$syms_of_keyboard.o_fwd.136, %rdi
	movabsq	$.L.str.137, %rsi
	movabsq	$globals, %rax
	addq	$2376, %rax             # imm = 0x948
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#122:                               # %do.end.210
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2376
# BB#123:                               # %do.body.212
	movabsq	$syms_of_keyboard.o_fwd.138, %rdi
	movabsq	$.L.str.139, %rsi
	movabsq	$globals, %rax
	addq	$1144, %rax             # imm = 0x478
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#124:                               # %do.end.213
	movl	$624, %edi              # imm = 0x270
	callq	builtin_lisp_symbol
	movq	%rax, globals+1144
# BB#125:                               # %do.body.215
	movabsq	$syms_of_keyboard.o_fwd.140, %rdi
	movabsq	$.L.str.141, %rsi
	movabsq	$globals, %rax
	addq	$1152, %rax             # imm = 0x480
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#126:                               # %do.end.216
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1152
# BB#127:                               # %do.body.218
	movabsq	$syms_of_keyboard.o_fwd.142, %rdi
	movabsq	$.L.str.143, %rsi
	movabsq	$globals, %rax
	addq	$2160, %rax             # imm = 0x870
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#128:                               # %do.end.219
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2160
# BB#129:                               # %do.body.221
	movabsq	$syms_of_keyboard.o_fwd.144, %rdi
	movabsq	$.L.str.145, %rsi
	movabsq	$globals, %rax
	addq	$560, %rax              # imm = 0x230
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#130:                               # %do.end.222
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+560
# BB#131:                               # %do.body.224
	movabsq	$syms_of_keyboard.o_fwd.146, %rdi
	movabsq	$.L.str.147, %rsi
	movabsq	$globals, %rax
	addq	$928, %rax              # imm = 0x3A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#132:                               # %do.end.225
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+928
# BB#133:                               # %do.body.227
	movabsq	$syms_of_keyboard.o_fwd.148, %rdi
	movabsq	$.L.str.149, %rsi
	movabsq	$globals, %rax
	addq	$1536, %rax             # imm = 0x600
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#134:                               # %do.end.228
	movq	$10, globals+1536
# BB#135:                               # %do.body.229
	movabsq	$syms_of_keyboard.o_fwd.150, %rdi
	movabsq	$.L.str.151, %rsi
	movabsq	$globals, %rax
	addq	$2368, %rax             # imm = 0x940
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#136:                               # %do.end.230
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2368
# BB#137:                               # %do.body.232
	movabsq	$syms_of_keyboard.o_fwd.152, %rdi
	movabsq	$.L.str.153, %rsi
	movabsq	$globals, %rax
	addq	$320, %rax              # imm = 0x140
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#138:                               # %do.end.233
	movabsq	$.L.str.154, %rdi
	callq	intern
	movq	%rax, globals+320
# BB#139:                               # %do.body.235
	movabsq	$syms_of_keyboard.o_fwd.155, %rdi
	movabsq	$.L.str.156, %rsi
	movabsq	$globals, %rax
	addq	$648, %rax              # imm = 0x288
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#140:                               # %do.end.236
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+648
# BB#141:                               # %do.body.238
	movabsq	$syms_of_keyboard.o_fwd.157, %rdi
	movabsq	$.L.str.158, %rsi
	movabsq	$globals, %rax
	addq	$2104, %rax             # imm = 0x838
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#142:                               # %do.end.239
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2104
# BB#143:                               # %do.body.241
	movabsq	$syms_of_keyboard.o_fwd.159, %rdi
	movabsq	$.L.str.160, %rsi
	movabsq	$globals, %rax
	addq	$2064, %rax             # imm = 0x810
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#144:                               # %do.end.242
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2064
# BB#145:                               # %do.body.244
	movabsq	$syms_of_keyboard.o_fwd.161, %rdi
	movabsq	$.L.str.162, %rsi
	movabsq	$globals, %rax
	addq	$2128, %rax             # imm = 0x850
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#146:                               # %do.end.245
	movl	$508, %edi              # imm = 0x1FC
	callq	builtin_lisp_symbol
	movl	$506, %edi              # imm = 0x1FA
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, globals+2128
# BB#147:                               # %do.body.249
	movabsq	$syms_of_keyboard.o_fwd.163, %rdi
	movabsq	$.L.str.164, %rsi
	movabsq	$globals, %rax
	addq	$440, %rax              # imm = 0x1B8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#148:                               # %do.end.250
	movabsq	$.L.str.165, %rdi
	callq	intern_c_string
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+440
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	allocate_kboard
	movq	%rax, initial_kboard
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	syms_of_keyboard, .Lfunc_end149-syms_of_keyboard
	.cfi_endproc

	.globl	keys_of_keyboard
	.align	16, 0x90
	.type	keys_of_keyboard,@function
keys_of_keyboard:                       # @keys_of_keyboard
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
	movl	$26, %esi
	movabsq	$.L.str.166, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$26, %esi
	movabsq	$.L.str.166, %rdx
	movq	control_x_map, %rdi
	callq	initial_define_key
	movl	$3, %esi
	movabsq	$.L.str.167, %rdx
	movq	meta_map, %rdi
	callq	initial_define_key
	movl	$29, %esi
	movabsq	$.L.str.168, %rdx
	movq	global_map, %rdi
	callq	initial_define_key
	movl	$120, %esi
	movabsq	$.L.str.169, %rdx
	movq	meta_map, %rdi
	callq	initial_define_key
	movabsq	$.L.str.170, %rsi
	movabsq	$.L.str.171, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.172, %rdx
	movq	globals+2192, %rdi
	movq	%rdx, %rsi
	callq	initial_define_lispy_key
	movabsq	$.L.str.173, %rdx
	movq	globals+2192, %rdi
	movq	%rdx, %rsi
	callq	initial_define_lispy_key
	movabsq	$.L.str.174, %rsi
	movabsq	$.L.str.175, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.176, %rsi
	movabsq	$.L.str.175, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.177, %rsi
	movabsq	$.L.str.178, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.179, %rsi
	movabsq	$.L.str.180, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.181, %rsi
	movabsq	$.L.str.175, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.182, %rsi
	movabsq	$.L.str.183, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	movabsq	$.L.str.184, %rsi
	movabsq	$.L.str.185, %rdx
	movq	globals+2192, %rdi
	callq	initial_define_lispy_key
	popq	%rbp
	retq
.Lfunc_end150:
	.size	keys_of_keyboard, .Lfunc_end150-keys_of_keyboard
	.cfi_endproc

	.globl	mark_kboards
	.align	16, 0x90
	.type	mark_kboards,@function
mark_kboards:                           # @mark_kboards
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
	subq	$32, %rsp
	movq	all_kboards, %rax
	movq	%rax, -8(%rbp)
.LBB151_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_4 Depth 2
	cmpq	$0, -8(%rbp)
	je	.LBB151_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB151_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB151_4:                              # %for.cond.3
                                        #   Parent Loop BB151_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	88(%rcx), %rax
	jae	.LBB151_7
# BB#5:                                 # %for.body.4
                                        #   in Loop: Header=BB151_4 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	mark_object
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB151_4 Depth=2
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB151_4
.LBB151_7:                              # %for.end
                                        #   in Loop: Header=BB151_1 Depth=1
	jmp	.LBB151_8
.LBB151_8:                              # %if.end
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	mark_object
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	mark_object
# BB#9:                                 # %for.inc.5
                                        #   in Loop: Header=BB151_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB151_1
.LBB151_10:                             # %for.end.6
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -24(%rbp)
.LBB151_11:                             # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB151_19
# BB#12:                                # %for.body.9
                                        #   in Loop: Header=BB151_11 Depth=1
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, -24(%rbp)
	jne	.LBB151_14
# BB#13:                                # %if.then.11
                                        #   in Loop: Header=BB151_11 Depth=1
	movabsq	$kbd_buffer, %rax
	movq	%rax, -24(%rbp)
.LBB151_14:                             # %if.end.12
                                        #   in Loop: Header=BB151_11 Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB151_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB151_11 Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$11, %ecx
	je	.LBB151_17
# BB#16:                                # %if.then.17
                                        #   in Loop: Header=BB151_11 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	mark_object
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	mark_object
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	mark_object
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	mark_object
.LBB151_17:                             # %if.end.21
                                        #   in Loop: Header=BB151_11 Depth=1
	jmp	.LBB151_18
.LBB151_18:                             # %for.inc.22
                                        #   in Loop: Header=BB151_11 Depth=1
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB151_11
.LBB151_19:                             # %for.end.24
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	mark_kboards, .Lfunc_end151-mark_kboards
	.cfi_endproc

	.align	16, 0x90
	.type	command_loop_2,@function
command_loop_2:                         # @command_loop_2
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB152_1:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movabsq	$command_loop_1, %rdi
	movabsq	$cmd_error, %rdx
	movq	%rax, %rsi
	callq	internal_condition_case
	movq	%rax, -16(%rbp)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB152_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB152_1
# BB#3:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	command_loop_2, .Lfunc_end152-command_loop_2
	.cfi_endproc

	.align	16, 0x90
	.type	top_level_1,@function
top_level_1:                            # @top_level_1
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+2432, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB153_2
# BB#1:                                 # %if.then
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movabsq	$top_level_2, %rdi
	movabsq	$cmd_error, %rdx
	movq	%rax, %rsi
	callq	internal_condition_case
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB153_6
.LBB153_2:                              # %if.else
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB153_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.188, %rdi
	callq	message1
	jmp	.LBB153_5
.LBB153_4:                              # %if.else.6
	movabsq	$.L.str.189, %rdi
	callq	message1
.LBB153_5:                              # %if.end
	jmp	.LBB153_6
.LBB153_6:                              # %if.end.7
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end153:
	.size	top_level_1, .Lfunc_end153-top_level_1
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_error,@function
cmd_error:                              # @cmd_error
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3378
	je	.LBB154_2
# BB#1:                                 # %if.then
	callq	cancel_hourglass
.LBB154_2:                              # %if.end
	xorl	%edi, %edi
	movq	executing_kbd_macro, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB154_7
# BB#3:                                 # %if.then.1
	cmpq	$1, executing_kbd_macro_iterations
	jne	.LBB154_5
# BB#4:                                 # %if.then.3
	movabsq	$.L.str.186, %rsi
	leaq	-80(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB154_6
.LBB154_5:                              # %if.else
	movabsq	$.L.str.187, %rsi
	leaq	-80(%rbp), %rdi
	movq	executing_kbd_macro_iterations, %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB154_6:                              # %if.end.7
	jmp	.LBB154_8
.LBB154_7:                              # %if.else.8
	movb	$0, -80(%rbp)
.LBB154_8:                              # %if.end.10
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+2216
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2208
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+688
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, executing_kbd_macro
	movq	current_kboard, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_prefix_arg
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_prefix_arg
	callq	cancel_echoing
	movl	$10, %ecx
	movl	%ecx, %edi
	movq	globals+1864, %rax
	movq	%rax, -16(%rbp)
	movq	globals+1856, %rax
	movq	%rax, -24(%rbp)
	callq	make_natnum
	movl	$10, %ecx
	movl	%ecx, %edi
	movq	%rax, globals+1864
	callq	make_natnum
	leaq	-80(%rbp), %rsi
	movq	%rax, globals+1856
	movq	-8(%rbp), %rdi
	callq	cmd_error_internal
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, globals+1864
	movq	-24(%rbp), %rax
	movq	%rax, globals+1856
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1928
	callq	builtin_lisp_symbol
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, globals+1104
	movq	%rsi, %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end154:
	.size	cmd_error, .Lfunc_end154-cmd_error
	.cfi_endproc

	.align	16, 0x90
	.type	top_level_2,@function
top_level_2:                            # @top_level_2
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
	subq	$16, %rsp
	xorl	%edi, %edi
	movq	globals+2432, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Feval
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	top_level_2, .Lfunc_end155-top_level_2
	.cfi_endproc

	.align	16, 0x90
	.type	safe_run_hooks_1,@function
safe_run_hooks_1:                       # @safe_run_hooks_1
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	call0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	safe_run_hooks_1, .Lfunc_end156-safe_run_hooks_1
	.cfi_endproc

	.align	16, 0x90
	.type	safe_run_hooks_error,@function
safe_run_hooks_error:                   # @safe_run_hooks_error
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
	subq	$192, %rsp
	movl	$4, %eax
	leaq	-72(%rbp), %rcx
	movabsq	$.L.str.190, %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$20, -72(%rbp)
	movq	$-1, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movl	$4, %esi
	movl	%esi, %edi
	leaq	-120(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	Fmessage
	movq	-80(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %r9d
	cmpl	$0, %r9d
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB157_23
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movb	$0, -129(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
	movq	-80(%rbp), %rdi
	callq	find_symbol_value
	movq	%rax, -128(%rbp)
.LBB157_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB157_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB157_2 Depth=1
	movq	-88(%rbp), %rax
	movq	-128(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB157_5
# BB#4:                                 # %if.then.16
                                        #   in Loop: Header=BB157_2 Depth=1
	movb	$1, -129(%rbp)
	jmp	.LBB157_6
.LBB157_5:                              # %if.else
                                        #   in Loop: Header=BB157_2 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-144(%rbp), %rsi
	callq	Fcons
	movq	%rax, -144(%rbp)
.LBB157_6:                              # %if.end
                                        #   in Loop: Header=BB157_2 Depth=1
	jmp	.LBB157_7
.LBB157_7:                              # %for.inc
                                        #   in Loop: Header=BB157_2 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB157_2
.LBB157_8:                              # %for.end
	testb	$1, -129(%rbp)
	je	.LBB157_10
# BB#9:                                 # %if.then.21
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fnreverse
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -8(%rbp)
	jmp	.LBB157_24
.LBB157_10:                             # %if.end.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
	movq	-80(%rbp), %rdi
	callq	Fdefault_boundp
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB157_12
# BB#11:                                # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB157_13
.LBB157_12:                             # %cond.false
	movq	-80(%rbp), %rdi
	callq	Fdefault_value
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB157_13:                             # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
.LBB157_14:                             # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB157_20
# BB#15:                                # %for.body.37
                                        #   in Loop: Header=BB157_14 Depth=1
	movq	-88(%rbp), %rax
	movq	-128(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB157_17
# BB#16:                                # %if.then.42
                                        #   in Loop: Header=BB157_14 Depth=1
	movb	$1, -129(%rbp)
	jmp	.LBB157_18
.LBB157_17:                             # %if.else.43
                                        #   in Loop: Header=BB157_14 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-144(%rbp), %rsi
	callq	Fcons
	movq	%rax, -144(%rbp)
.LBB157_18:                             # %if.end.47
                                        #   in Loop: Header=BB157_14 Depth=1
	jmp	.LBB157_19
.LBB157_19:                             # %for.inc.48
                                        #   in Loop: Header=BB157_14 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB157_14
.LBB157_20:                             # %for.end.52
	testb	$1, -129(%rbp)
	je	.LBB157_22
# BB#21:                                # %if.then.54
	movq	-80(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fnreverse
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_default
	movq	%rax, -8(%rbp)
	jmp	.LBB157_24
.LBB157_22:                             # %if.end.57
	jmp	.LBB157_23
.LBB157_23:                             # %if.end.58
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB157_24:                             # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end157:
	.size	safe_run_hooks_error, .Lfunc_end157-safe_run_hooks_error
	.cfi_endproc

	.align	16, 0x90
	.type	read_event_from_main_queue,@function
read_event_from_main_queue:             # @read_event_from_main_queue
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
	subq	$320, %rsp              # imm = 0x140
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB158_1:                              # %start
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB158_10 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB158_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	current_timespec
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB158_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB158_32
.LBB158_4:                              # %if.end
                                        #   in Loop: Header=BB158_1 Depth=1
	leaq	-240(%rbp), %rdi
	callq	save_getcjmp
	movq	-24(%rbp), %rdi
	callq	restore_getcjmp
	cmpq	$0, -16(%rbp)
	jne	.LBB158_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB158_1 Depth=1
	callq	timer_start_idle
.LBB158_6:                              # %if.end.5
                                        #   in Loop: Header=BB158_1 Depth=1
	leaq	-248(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	kbd_buffer_get_event
	leaq	-240(%rbp), %rdi
	movq	%rax, -40(%rbp)
	callq	restore_getcjmp
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB158_21
# BB#7:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-248(%rbp), %rax
	cmpq	current_kboard, %rax
	je	.LBB158_21
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-248(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB158_15
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB158_1 Depth=1
	jmp	.LBB158_10
.LBB158_10:                             # %while.cond
                                        #   Parent Loop BB158_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB158_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB158_10 Depth=2
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)
	jmp	.LBB158_10
.LBB158_12:                             # %while.end
                                        #   in Loop: Header=BB158_1 Depth=1
	xorl	%edi, %edi
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB158_14
# BB#13:                                # %if.then.29
	callq	emacs_abort
.LBB158_14:                             # %if.end.30
                                        #   in Loop: Header=BB158_1 Depth=1
	jmp	.LBB158_15
.LBB158_15:                             # %if.end.31
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-272(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB158_17
# BB#16:                                # %if.then.36
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-248(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_kbd_queue
	jmp	.LBB158_18
.LBB158_17:                             # %if.else
                                        #   in Loop: Header=BB158_1 Depth=1
	movq	-272(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	list1
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
.LBB158_18:                             # %if.end.39
                                        #   in Loop: Header=BB158_1 Depth=1
	xorl	%edi, %edi
	movq	-248(%rbp), %rax
	movb	$1, 184(%rax)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	testb	$1, single_kboard
	je	.LBB158_20
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB158_1 Depth=1
	jmp	.LBB158_1
.LBB158_20:                             # %if.end.43
	movq	-248(%rbp), %rax
	movq	%rax, current_kboard
	movq	$-6, -8(%rbp)
	jmp	.LBB158_32
.LBB158_21:                             # %if.end.44
	testb	$1, noninteractive
	je	.LBB158_25
# BB#22:                                # %land.lhs.true.47
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB158_25
# BB#23:                                # %land.lhs.true.53
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB158_25
# BB#24:                                # %if.then.56
	movl	$6, %eax
	movl	%eax, %edi
	callq	Fkill_emacs
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB158_25:                             # %if.end.57
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB158_31
# BB#26:                                # %if.then.63
	movq	globals+3096, %rax
	andq	$67108864, %rax         # imm = 0x4000000
	cmpq	$0, %rax
	jne	.LBB158_29
# BB#27:                                # %lor.lhs.false
	movq	globals+3096, %rax
	andq	$127, %rax
	cmpq	$32, %rax
	jge	.LBB158_30
# BB#28:                                # %land.lhs.true.69
	movq	globals+3096, %rax
	andq	$127, %rax
	cmpq	$0, %rax
	je	.LBB158_30
.LBB158_29:                             # %if.then.73
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	make_ctrl_char
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -40(%rbp)
.LBB158_30:                             # %if.end.78
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	globals+3096, %rcx
	andq	$-65408, %rcx           # imm = 0xFFFFFFFFFFFF0080
	andq	$-67108865, %rcx        # imm = 0xFFFFFFFFFBFFFFFF
	orq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
.LBB158_31:                             # %if.end.84
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB158_32:                             # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end158:
	.size	read_event_from_main_queue, .Lfunc_end158-read_event_from_main_queue
	.cfi_endproc

	.align	16, 0x90
	.type	kbd_buffer_get_event,@function
kbd_buffer_get_event:                   # @kbd_buffer_get_event
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
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	kbd_on_hold_p
	testb	$1, %al
	jne	.LBB159_1
	jmp	.LBB159_3
.LBB159_1:                              # %land.lhs.true
	callq	kbd_buffer_nr_stored
	cmpl	$1024, %eax             # imm = 0x400
	jge	.LBB159_3
# BB#2:                                 # %if.then
	callq	unhold_keyboard_input
	callq	request_sigio
	callq	start_polling
.LBB159_3:                              # %if.end
	jmp	.LBB159_4
.LBB159_4:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB159_6
# BB#5:                                 # %if.then.4
	jmp	.LBB159_55
.LBB159_6:                              # %if.end.5
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB159_8
# BB#7:                                 # %if.then.8
	jmp	.LBB159_55
.LBB159_8:                              # %if.end.9
                                        #   in Loop: Header=BB159_4 Depth=1
	xorl	%edi, %edi
	movq	globals+2944, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_11
# BB#9:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB159_4 Depth=1
	callq	some_mouse_moved
	cmpq	$0, %rax
	je	.LBB159_11
# BB#10:                                # %if.then.15
	jmp	.LBB159_55
.LBB159_11:                             # %if.end.16
                                        #   in Loop: Header=BB159_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_13
# BB#12:                                # %if.then.20
	xorl	%edi, %edi
	callq	quit_throw_to_read_char
.LBB159_13:                             # %if.end.21
                                        #   in Loop: Header=BB159_4 Depth=1
	callq	gobble_input
	movq	kbd_fetch_ptr, %rcx
	movq	kbd_store_ptr, %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	je	.LBB159_15
# BB#14:                                # %if.then.25
	jmp	.LBB159_55
.LBB159_15:                             # %if.end.26
                                        #   in Loop: Header=BB159_4 Depth=1
	xorl	%edi, %edi
	movq	globals+2944, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_18
# BB#16:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB159_4 Depth=1
	callq	some_mouse_moved
	cmpq	$0, %rax
	je	.LBB159_18
# BB#17:                                # %if.then.33
	jmp	.LBB159_55
.LBB159_18:                             # %if.end.34
                                        #   in Loop: Header=BB159_4 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB159_26
# BB#19:                                # %if.then.36
                                        #   in Loop: Header=BB159_4 Depth=1
	callq	current_timespec
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB159_21
# BB#20:                                # %if.then.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB159_160
.LBB159_21:                             # %if.else
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	timespec_sub
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	cmpq	%rcx, -72(%rbp)
	jge	.LBB159_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB159_24
.LBB159_23:                             # %cond.false
                                        #   in Loop: Header=BB159_4 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB159_24
.LBB159_24:                             # %cond.end
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movl	%edx, -364(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	xorl	%edi, %edi
	movl	%edi, %r9d
	xorl	%edi, %edi
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -368(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movl	-364(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	movl	%eax, -372(%rbp)        # 4-byte Spill
# BB#25:                                # %if.end.50
                                        #   in Loop: Header=BB159_4 Depth=1
	jmp	.LBB159_51
.LBB159_26:                             # %if.else.51
                                        #   in Loop: Header=BB159_4 Depth=1
	movb	$1, -73(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB159_27
	jmp	.LBB159_29
.LBB159_27:                             # %land.lhs.true.54
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB159_29
# BB#28:                                # %cond.true.57
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB159_30
.LBB159_29:                             # %cond.false.59
	callq	emacs_abort
.LBB159_30:                             # %cond.end.60
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	jne	.LBB159_50
# BB#31:                                # %if.then.64
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB159_32
	jmp	.LBB159_34
.LBB159_32:                             # %land.lhs.true.67
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB159_34
# BB#33:                                # %cond.true.72
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB159_35
.LBB159_34:                             # %cond.false.74
	callq	emacs_abort
.LBB159_35:                             # %cond.end.75
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB159_41
# BB#36:                                # %lor.lhs.false
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB159_37
	jmp	.LBB159_39
.LBB159_37:                             # %land.lhs.true.86
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB159_39
# BB#38:                                # %cond.true.91
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB159_40
.LBB159_39:                             # %cond.false.93
	callq	emacs_abort
.LBB159_40:                             # %cond.end.94
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB159_46
.LBB159_41:                             # %cond.true.103
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB159_42
	jmp	.LBB159_44
.LBB159_42:                             # %land.lhs.true.106
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB159_44
# BB#43:                                # %cond.true.111
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB159_45
.LBB159_44:                             # %cond.false.113
	callq	emacs_abort
.LBB159_45:                             # %cond.end.114
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	376(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB159_47
.LBB159_46:                             # %cond.false.118
	callq	emacs_abort
.LBB159_47:                             # %cond.end.119
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movb	8788(%rcx), %dl
	shrb	$2, %dl
	andb	$1, %dl
	testb	$1, %dl
	je	.LBB159_49
# BB#48:                                # %if.then.125
                                        #   in Loop: Header=BB159_4 Depth=1
	movb	$0, -73(%rbp)
.LBB159_49:                             # %if.end.126
                                        #   in Loop: Header=BB159_4 Depth=1
	jmp	.LBB159_50
.LBB159_50:                             # %if.end.127
                                        #   in Loop: Header=BB159_4 Depth=1
	xorl	%edi, %edi
	movb	-73(%rbp), %al
	movb	%al, -417(%rbp)         # 1-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movb	-417(%rbp), %r8b        # 1-byte Reload
	andb	$1, %r8b
	movq	%rcx, %rdi
	movzbl	%r8b, %r9d
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	%rax, %r8
	movq	-432(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB159_51:                             # %if.end.131
                                        #   in Loop: Header=BB159_4 Depth=1
	testb	$1, interrupt_input
	jne	.LBB159_54
# BB#52:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB159_4 Depth=1
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	jne	.LBB159_54
# BB#53:                                # %if.then.136
                                        #   in Loop: Header=BB159_4 Depth=1
	callq	gobble_input
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB159_54:                             # %if.end.138
                                        #   in Loop: Header=BB159_4 Depth=1
	jmp	.LBB159_4
.LBB159_55:                             # %for.end
	movq	globals+2520, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB159_57
# BB#56:                                # %if.then.143
	movq	globals+2520, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	globals+2520, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, globals+2520
	movq	current_kboard, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB159_160
.LBB159_57:                             # %if.end.146
	movq	kbd_fetch_ptr, %rax
	movq	kbd_store_ptr, %rcx
	cmpq	%rcx, %rax
	je	.LBB159_140
# BB#58:                                # %if.then.149
	movabsq	$kbd_buffer, %rax
	addq	$229376, %rax           # imm = 0x38000
	cmpq	%rax, kbd_fetch_ptr
	jae	.LBB159_60
# BB#59:                                # %cond.true.152
	movq	kbd_fetch_ptr, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB159_61
.LBB159_60:                             # %cond.false.153
	movabsq	$kbd_buffer, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB159_61
.LBB159_61:                             # %cond.end.154
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	event_to_kboard
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB159_63
# BB#62:                                # %if.then.159
	movq	current_kboard, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB159_63:                             # %if.end.160
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movzwl	(%rax), %edi
	cmpl	$10, %edi
	je	.LBB159_65
# BB#64:                                # %lor.lhs.false.166
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB159_66
.LBB159_65:                             # %if.then.171
	xorl	%edi, %edi
	movl	$56, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-104(%rbp), %rsi
	movl	%edi, -452(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	memcpy
	movq	-104(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, kbd_fetch_ptr
	movl	-452(%rbp), %edi        # 4-byte Reload
	callq	readable_events
	leaq	-160(%rbp), %rdi
	andb	$1, %al
	movb	%al, input_pending
	callq	x_handle_selection_event
	jmp	.LBB159_139
.LBB159_66:                             # %if.else.173
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB159_68
# BB#67:                                # %if.then.178
	movl	$334, %edi              # imm = 0x14E
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	list1
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_138
.LBB159_68:                             # %if.else.184
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$15, %ecx
	jne	.LBB159_70
# BB#69:                                # %if.then.189
	movl	$533, %edi              # imm = 0x215
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	list1
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_137
.LBB159_70:                             # %if.else.196
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$16, %ecx
	jne	.LBB159_72
# BB#71:                                # %if.then.201
	movl	$640, %edi              # imm = 0x280
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	list1
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_136
.LBB159_72:                             # %if.else.208
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$12, %ecx
	jne	.LBB159_74
# BB#73:                                # %if.then.213
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_135
.LBB159_74:                             # %if.else.216
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$17, %ecx
	jne	.LBB159_78
# BB#75:                                # %if.then.221
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	callq	readable_events
	andb	$1, %al
	movb	%al, input_pending
	movq	-104(%rbp), %rcx
	movq	40(%rcx), %rcx
	subq	$5, %rcx
	cmpq	$0, 376(%rcx)
	je	.LBB159_77
# BB#76:                                # %if.then.231
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	x_activate_menubar
.LBB159_77:                             # %if.end.235
	jmp	.LBB159_134
.LBB159_78:                             # %if.else.236
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$27, %ecx
	jne	.LBB159_80
# BB#79:                                # %if.then.241
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lispy_event
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_133
.LBB159_80:                             # %if.else.245
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$25, %ecx
	jne	.LBB159_82
# BB#81:                                # %if.then.250
	movl	$827, %edi              # imm = 0x33B
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_132
.LBB159_82:                             # %if.else.255
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB159_84
# BB#83:                                # %if.then.260
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_131
.LBB159_84:                             # %if.else.262
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$20, %ecx
	jne	.LBB159_88
# BB#85:                                # %if.then.267
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdi
	callq	Time_to_position
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -176(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-104(%rbp), %rdi
	callq	clear_event
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	movq	-200(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB159_87
# BB#86:                                # %if.then.278
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -200(%rbp)
.LBB159_87:                             # %if.end.280
	movl	$516, %edi              # imm = 0x204
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-200(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %r8
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	list5
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
	jmp	.LBB159_130
.LBB159_88:                             # %if.else.284
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$22, %ecx
	jne	.LBB159_97
# BB#89:                                # %if.then.289
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	subq	$5, %rax
	movq	32(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB159_90
	jmp	.LBB159_91
.LBB159_90:                             # %if.then.295
	movq	-216(%rbp), %rax
	movq	%rax, -208(%rbp)
.LBB159_91:                             # %if.end.296
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_95
# BB#92:                                # %land.lhs.true.302
	movq	-208(%rbp), %rax
	cmpq	internal_last_event_frame, %rax
	je	.LBB159_95
# BB#93:                                # %land.lhs.true.305
	movq	-208(%rbp), %rax
	cmpq	selected_frame, %rax
	je	.LBB159_95
# BB#94:                                # %if.then.308
	movq	-208(%rbp), %rdi
	callq	make_lispy_switch_frame
	movq	%rax, -40(%rbp)
	jmp	.LBB159_96
.LBB159_95:                             # %if.else.310
	movq	-208(%rbp), %rdi
	callq	make_lispy_focus_in
	movq	%rax, -40(%rbp)
.LBB159_96:                             # %if.end.312
	movq	-208(%rbp), %rax
	movq	%rax, internal_last_event_frame
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_129
.LBB159_97:                             # %if.else.314
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$23, %ecx
	jne	.LBB159_107
# BB#98:                                # %if.then.319
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -232(%rbp)
	movb	$0, -233(%rbp)
	movq	x_display_list, %rax
	movq	%rax, -224(%rbp)
.LBB159_99:                             # %for.cond.323
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -224(%rbp)
	movb	%cl, -497(%rbp)         # 1-byte Spill
	je	.LBB159_101
# BB#100:                               # %land.rhs
                                        #   in Loop: Header=BB159_99 Depth=1
	movb	-233(%rbp), %al
	xorb	$-1, %al
	movb	%al, -497(%rbp)         # 1-byte Spill
.LBB159_101:                            # %land.end
                                        #   in Loop: Header=BB159_99 Depth=1
	movb	-497(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB159_102
	jmp	.LBB159_104
.LBB159_102:                            # %for.body
                                        #   in Loop: Header=BB159_99 Depth=1
	movq	-224(%rbp), %rax
	cmpq	$0, 616(%rax)
	setne	%cl
	andb	$1, %cl
	movb	%cl, -233(%rbp)
# BB#103:                               # %for.inc
                                        #   in Loop: Header=BB159_99 Depth=1
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB159_99
.LBB159_104:                            # %for.end.329
	testb	$1, -233(%rbp)
	jne	.LBB159_106
# BB#105:                               # %if.then.331
	movq	-232(%rbp), %rdi
	callq	make_lispy_focus_out
	movq	%rax, -40(%rbp)
.LBB159_106:                            # %if.end.333
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_128
.LBB159_107:                            # %if.else.335
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$26, %ecx
	jne	.LBB159_109
# BB#108:                               # %if.then.340
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lispy_event
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	addq	$56, %rax
	movq	%rax, kbd_fetch_ptr
	jmp	.LBB159_127
.LBB159_109:                            # %if.else.344
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB159_111
# BB#110:                               # %if.then.353
	movq	-248(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB159_114
.LBB159_111:                            # %if.else.356
	movq	-248(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB159_112
	jmp	.LBB159_113
.LBB159_112:                            # %if.then.358
	movq	-248(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
.LBB159_113:                            # %if.end.361
	jmp	.LBB159_114
.LBB159_114:                            # %if.end.362
	xorl	%edi, %edi
	movq	-248(%rbp), %rax
	subq	$5, %rax
	movq	32(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_116
# BB#115:                               # %if.then.368
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB159_116:                            # %if.end.369
	movq	-248(%rbp), %rax
	cmpq	internal_last_event_frame, %rax
	je	.LBB159_119
# BB#117:                               # %land.lhs.true.372
	movq	-248(%rbp), %rax
	cmpq	selected_frame, %rax
	je	.LBB159_119
# BB#118:                               # %if.then.375
	movq	-248(%rbp), %rdi
	callq	make_lispy_switch_frame
	movq	%rax, -40(%rbp)
.LBB159_119:                            # %if.end.377
	xorl	%edi, %edi
	movq	-248(%rbp), %rax
	movq	%rax, internal_last_event_frame
	movq	-40(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB159_126
# BB#120:                               # %if.then.381
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lispy_event
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB159_125
# BB#121:                               # %land.lhs.true.385
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	-104(%rbp), %rcx
	cmpq	48(%rcx), %rax
	je	.LBB159_125
# BB#122:                               # %land.lhs.true.392
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$14, %ecx
	je	.LBB159_124
# BB#123:                               # %lor.lhs.false.397
	movq	-104(%rbp), %rax
	movzwl	(%rax), %ecx
	cmpl	$21, %ecx
	jne	.LBB159_125
.LBB159_124:                            # %if.then.402
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
.LBB159_125:                            # %if.end.403
	movq	-104(%rbp), %rdi
	callq	clear_event
	movq	-104(%rbp), %rdi
	addq	$56, %rdi
	movq	%rdi, kbd_fetch_ptr
.LBB159_126:                            # %if.end.405
	jmp	.LBB159_127
.LBB159_127:                            # %if.end.406
	jmp	.LBB159_128
.LBB159_128:                            # %if.end.407
	jmp	.LBB159_129
.LBB159_129:                            # %if.end.408
	jmp	.LBB159_130
.LBB159_130:                            # %if.end.409
	jmp	.LBB159_131
.LBB159_131:                            # %if.end.410
	jmp	.LBB159_132
.LBB159_132:                            # %if.end.411
	jmp	.LBB159_133
.LBB159_133:                            # %if.end.412
	jmp	.LBB159_134
.LBB159_134:                            # %if.end.413
	jmp	.LBB159_135
.LBB159_135:                            # %if.end.414
	jmp	.LBB159_136
.LBB159_136:                            # %if.end.415
	jmp	.LBB159_137
.LBB159_137:                            # %if.end.416
	jmp	.LBB159_138
.LBB159_138:                            # %if.end.417
	jmp	.LBB159_139
.LBB159_139:                            # %if.end.418
	jmp	.LBB159_159
.LBB159_140:                            # %if.else.419
	xorl	%edi, %edi
	movq	globals+2944, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_157
# BB#141:                               # %land.lhs.true.423
	callq	some_mouse_moved
	cmpq	$0, %rax
	je	.LBB159_157
# BB#142:                               # %if.then.426
	callq	some_mouse_moved
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	current_kboard, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB159_145
# BB#143:                               # %land.lhs.true.432
	movq	-264(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB159_145
# BB#144:                               # %if.then.435
	leaq	-264(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-272(%rbp), %rdx
	leaq	-276(%rbp), %rcx
	leaq	-288(%rbp), %r8
	leaq	-296(%rbp), %r9
	leaq	-304(%rbp), %rax
	movq	-264(%rbp), %r10
	movq	376(%r10), %r10
	movq	%rax, (%rsp)
	callq	*248(%r10)
.LBB159_145:                            # %if.end.438
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_153
# BB#146:                               # %land.lhs.true.443
	cmpq	$0, -264(%rbp)
	je	.LBB159_153
# BB#147:                               # %if.then.445
	xorl	%edi, %edi
	movq	-264(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB159_149
# BB#148:                               # %if.then.451
	movl	$5, %esi
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -312(%rbp)
.LBB159_149:                            # %if.end.453
	movq	-312(%rbp), %rax
	cmpq	internal_last_event_frame, %rax
	je	.LBB159_152
# BB#150:                               # %land.lhs.true.456
	movq	-312(%rbp), %rax
	cmpq	selected_frame, %rax
	je	.LBB159_152
# BB#151:                               # %if.then.459
	movq	-312(%rbp), %rdi
	callq	make_lispy_switch_frame
	movq	%rax, -40(%rbp)
.LBB159_152:                            # %if.end.461
	movq	-312(%rbp), %rax
	movq	%rax, internal_last_event_frame
.LBB159_153:                            # %if.end.462
	xorl	%edi, %edi
	movq	-288(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB159_156
# BB#154:                               # %land.lhs.true.466
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB159_156
# BB#155:                               # %if.then.470
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movl	-276(%rbp), %edx
	movq	-288(%rbp), %rcx
	movq	-296(%rbp), %r8
	movq	-304(%rbp), %r9
	callq	make_lispy_movement
	movq	%rax, -40(%rbp)
.LBB159_156:                            # %if.end.472
	jmp	.LBB159_158
.LBB159_157:                            # %if.else.473
	callq	emacs_abort
.LBB159_158:                            # %if.end.474
	jmp	.LBB159_159
.LBB159_159:                            # %if.end.475
	xorl	%edi, %edi
	callq	readable_events
	andb	$1, %al
	movb	%al, input_pending
	movq	internal_last_event_frame, %rcx
	movq	%rcx, globals+1248
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB159_160:                            # %return
	movq	-8(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end159:
	.size	kbd_buffer_get_event, .Lfunc_end159-kbd_buffer_get_event
	.cfi_endproc

	.align	16, 0x90
	.type	make_lispy_event,@function
make_lispy_event:                       # @make_lispy_event
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
	subq	$864, %rsp              # imm = 0x360
	movq	%rdi, -16(%rbp)
	movzwl	(%rdi), %eax
	decl	%eax
	movl	%eax, %edi
	subl	$26, %eax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%eax, -316(%rbp)        # 4-byte Spill
	ja	.LBB160_167
# BB#169:                               # %entry
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	.LJTI160_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB160_1:                              # %sw.bb
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$1, %ecx
	jne	.LBB160_5
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	andq	$255, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$67108864, %ecx         # imm = 0x4000000
	cmpl	$0, %ecx
	je	.LBB160_4
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	make_ctrl_char
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %eax
	andl	$-67108865, %eax        # imm = 0xFFFFFFFFFBFFFFFF
	movl	%eax, 8(%rdx)
.LBB160_4:                              # %if.end
	jmp	.LBB160_5
.LBB160_5:                              # %if.end.10
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$230686720, %ecx        # imm = 0xDC00000
	movl	%ecx, %ecx
	movl	%ecx, %eax
	orq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$32, 4(%rax)
	jne	.LBB160_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$33554432, %ecx         # imm = 0x2000000
	cmpl	$0, %ecx
	je	.LBB160_8
# BB#7:                                 # %if.then.20
	movq	-40(%rbp), %rax
	orq	$33554432, %rax         # imm = 0x2000000
	movq	%rax, -40(%rbp)
.LBB160_8:                              # %if.end.22
	movq	$0, button_down_time
	movq	-40(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_9:                              # %sw.bb.24
	movq	$0, button_down_time
	movl	$0, -20(%rbp)
.LBB160_10:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$20, %rax
	jae	.LBB160_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB160_10 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-20(%rbp), %rax
	cmpl	lispy_accent_codes(,%rax,4), %ecx
	jne	.LBB160_13
# BB#12:                                # %if.then.31
	movl	$478, %edi              # imm = 0x1DE
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -320(%rbp)        # 4-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$lispy_accent_keys, %r8
	movabsq	$accent_key_syms, %r9
	movl	$20, %esi
	movl	%esi, %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-320(%rbp), %esi        # 4-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	$20, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_13:                             # %if.end.37
                                        #   in Loop: Header=BB160_10 Depth=1
	jmp	.LBB160_14
.LBB160_14:                             # %for.inc
                                        #   in Loop: Header=BB160_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB160_10
.LBB160_15:                             # %for.end
	movq	-16(%rbp), %rax
	cmpl	$65280, 4(%rax)         # imm = 0xFF00
	jae	.LBB160_18
# BB#16:                                # %land.lhs.true.41
	movq	-16(%rbp), %rax
	cmpl	$65024, 4(%rax)         # imm = 0xFE00
	jb	.LBB160_18
# BB#17:                                # %if.then.45
	movl	$478, %edi              # imm = 0x1DE
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$65024, %ecx            # imm = 0xFE00
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, -348(%rbp)        # 4-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$iso_lispy_function_keys, %r8
	movabsq	$func_key_syms, %r9
	movl	$53, %ecx
	movl	%ecx, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	-348(%rbp), %esi        # 4-byte Reload
	movq	-368(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	$53, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_18:                             # %if.end.52
	movl	$65280, %eax            # imm = 0xFF00
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB160_22
# BB#19:                                # %land.lhs.true.56
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cmpq	$65536, %rax            # imm = 0x10000
	jae	.LBB160_22
# BB#20:                                # %land.lhs.true.61
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$65280, %ecx            # imm = 0xFF00
	movl	%ecx, %ecx
	movl	%ecx, %eax
	cmpq	$0, lispy_function_keys(,%rax,8)
	je	.LBB160_22
# BB#21:                                # %if.then.67
	movl	$478, %edi              # imm = 0x1DE
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$65280, %ecx            # imm = 0xFF00
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, -380(%rbp)        # 4-byte Spill
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$lispy_function_keys, %r8
	movabsq	$func_key_syms, %r9
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	-380(%rbp), %esi        # 4-byte Reload
	movq	-400(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	$256, (%rsp)            # imm = 0x100
	callq	modify_event_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_22:                             # %if.end.75
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	128(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB160_24
# BB#23:                                # %if.then.79
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_system_key_syms
.LBB160_24:                             # %if.end.83
	movl	$478, %edi              # imm = 0x1DE
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, -436(%rbp)        # 4-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	current_kboard, %r9
	movq	120(%r9), %rcx
	movq	current_kboard, %r9
	addq	$128, %r9
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	-436(%rbp), %esi        # 4-byte Reload
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_25:                             # %sw.bb.90
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -44(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$5, %ecx
	jne	.LBB160_44
# BB#26:                                # %if.then.97
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB160_28
# BB#27:                                # %if.then.101
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_28:                             # %if.end.103
	movq	-80(%rbp), %rdi
	callq	toolkit_menubar_in_use
	testb	$1, %al
	jne	.LBB160_43
# BB#29:                                # %if.then.105
	leaq	-88(%rbp), %rcx
	leaq	-84(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$1, %eax
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	sarq	$2, %rdx
	movl	%edx, %esi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	sarq	$2, %rdx
	movl	%edx, %r10d
	movl	%r10d, %edx
	movl	$1, (%rsp)
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	pixel_to_glyph_coords
	cmpl	$0, -84(%rbp)
	jl	.LBB160_42
# BB#30:                                # %land.lhs.true.111
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	356(%rcx), %eax
	jge	.LBB160_42
# BB#31:                                # %land.lhs.true.114
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB160_42
# BB#32:                                # %if.then.118
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -20(%rbp)
.LBB160_33:                             # %for.cond.120
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-472(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB160_41
# BB#34:                                # %for.body.125
                                        #   in Loop: Header=BB160_33 Depth=1
	movq	-96(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rdi
	movl	-20(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB160_36
# BB#35:                                # %if.then.134
	jmp	.LBB160_41
.LBB160_36:                             # %if.end.135
                                        #   in Loop: Header=BB160_33 Depth=1
	movslq	-88(%rbp), %rax
	movq	-112(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB160_39
# BB#37:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB160_33 Depth=1
	movslq	-88(%rbp), %rax
	movq	-112(%rbp), %rcx
	sarq	$2, %rcx
	movq	-120(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-496(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-488(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB160_39
# BB#38:                                # %if.then.147
	movq	-96(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	AREF
	movq	%rax, -104(%rbp)
	jmp	.LBB160_41
.LBB160_39:                             # %if.end.150
                                        #   in Loop: Header=BB160_33 Depth=1
	jmp	.LBB160_40
.LBB160_40:                             # %for.inc.151
                                        #   in Loop: Header=BB160_33 Depth=1
	movl	-20(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB160_33
.LBB160_41:                             # %for.end.153
	movl	$651, %edi              # imm = 0x28B
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list4
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_42:                             # %if.end.162
	jmp	.LBB160_43
.LBB160_43:                             # %if.end.163
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	callq	make_lispy_position
	movq	%rax, -56(%rbp)
.LBB160_44:                             # %if.end.168
	movslq	-44(%rbp), %rax
	movq	button_down_location, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB160_46
# BB#45:                                # %if.then.173
	movslq	-44(%rbp), %rax
	movq	button_down_location, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	$-1, %rdx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -128(%rbp)
	movq	button_down_location, %rdi
	movq	-128(%rbp), %rsi
	callq	larger_vector
	movq	$-1, %rdx
	movq	%rax, button_down_location
	movq	mouse_syms, %rdi
	movq	-128(%rbp), %rsi
	callq	larger_vector
	movq	%rax, mouse_syms
.LBB160_46:                             # %if.end.180
	movq	button_down_location, %rdi
	movslq	-44(%rbp), %rsi
	callq	aref_addr
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB160_47
	jmp	.LBB160_48
.LBB160_47:                             # %if.then.187
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB160_52
.LBB160_48:                             # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB160_49
	jmp	.LBB160_50
.LBB160_49:                             # %if.then.193
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB160_51
.LBB160_50:                             # %if.else.196
	callq	emacs_abort
.LBB160_51:                             # %if.end.197
	jmp	.LBB160_52
.LBB160_52:                             # %if.end.198
	movq	-136(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB160_54
# BB#53:                                # %if.then.203
	movq	globals+3072, %rax
	movl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	jmp	.LBB160_55
.LBB160_54:                             # %if.else.205
	movl	$8, %eax
	movl	%eax, %ecx
	movq	globals+3072, %rax
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movl	%esi, -140(%rbp)
.LBB160_55:                             # %if.end.207
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	cmpl	last_mouse_button, %eax
	movb	%cl, -529(%rbp)         # 1-byte Spill
	jne	.LBB160_70
# BB#56:                                # %land.lhs.true.210
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_x, %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB160_58
# BB#57:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	sarq	$2, %rdx
	movslq	last_mouse_x, %rsi
	subq	%rsi, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB160_59
.LBB160_58:                             # %cond.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_x, %rcx
	subq	%rcx, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB160_59:                             # %cond.end
	movq	-544(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	-140(%rbp), %rsi
	cmpq	%rsi, %rax
	movb	%dl, -529(%rbp)         # 1-byte Spill
	jg	.LBB160_70
# BB#60:                                # %land.lhs.true.229
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_y, %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB160_62
# BB#61:                                # %cond.true.236
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	sarq	$2, %rdx
	movslq	last_mouse_y, %rsi
	subq	%rsi, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB160_63
.LBB160_62:                             # %cond.false.242
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_y, %rcx
	subq	%rcx, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB160_63:                             # %cond.end.247
	movq	-552(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	-140(%rbp), %rsi
	cmpq	%rsi, %rax
	movb	%dl, -529(%rbp)         # 1-byte Spill
	jg	.LBB160_70
# BB#64:                                # %land.lhs.true.252
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, button_down_time
	movb	%cl, -529(%rbp)         # 1-byte Spill
	je	.LBB160_70
# BB#65:                                # %land.rhs
	movl	$901, %edi              # imm = 0x385
	movq	globals+592, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-560(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -561(%rbp)         # 1-byte Spill
	je	.LBB160_69
# BB#66:                                # %lor.rhs
	movq	globals+592, %rdi
	callq	NATNUMP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -562(%rbp)         # 1-byte Spill
	jne	.LBB160_67
	jmp	.LBB160_68
.LBB160_67:                             # %land.rhs.260
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	subq	button_down_time, %rax
	movq	globals+592, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setb	%dl
	movb	%dl, -562(%rbp)         # 1-byte Spill
.LBB160_68:                             # %land.end
	movb	-562(%rbp), %al         # 1-byte Reload
	movb	%al, -561(%rbp)         # 1-byte Spill
.LBB160_69:                             # %lor.end
	movb	-561(%rbp), %al         # 1-byte Reload
	movb	%al, -529(%rbp)         # 1-byte Spill
.LBB160_70:                             # %land.end.266
	movb	-529(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -45(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, last_mouse_button
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	sarq	$2, %rdx
	movl	%edx, %ecx
	movl	%ecx, last_mouse_x
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	sarq	$2, %rdx
	movl	%edx, %ecx
	movl	%ecx, last_mouse_y
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB160_75
# BB#71:                                # %if.then.276
	testb	$1, -45(%rbp)
	je	.LBB160_73
# BB#72:                                # %if.then.278
	movl	$16, %eax
	movl	$32, %ecx
	movl	double_click_count, %edx
	addl	$1, %edx
	movl	%edx, double_click_count
	cmpl	$2, double_click_count
	cmovgl	%ecx, %eax
	movq	-16(%rbp), %rsi
	orl	8(%rsi), %eax
	movl	%eax, 8(%rsi)
	jmp	.LBB160_74
.LBB160_73:                             # %if.else.285
	movl	$1, double_click_count
.LBB160_74:                             # %if.end.286
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, button_down_time
	movq	-56(%rbp), %rdi
	callq	Fcopy_alist
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movb	$0, ignore_mouse_drag_p
	jmp	.LBB160_97
.LBB160_75:                             # %if.else.289
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB160_95
# BB#76:                                # %if.then.293
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB160_78
# BB#77:                                # %if.then.298
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_78:                             # %if.end.300
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 8(%rax)
	movq	globals+3072, %rax
	movq	%rax, -168(%rbp)
	movq	globals+3072, %rax
	movq	%rax, -176(%rbp)
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB160_82
# BB#79:                                # %land.lhs.true.313
	movq	-160(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB160_82
# BB#80:                                # %land.lhs.true.320
	movq	-160(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB160_82
# BB#81:                                # %if.then.327
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-160(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	subq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	-160(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	sarq	$2, %rcx
	subq	%rcx, %rax
	movq	%rax, -176(%rbp)
.LBB160_82:                             # %if.end.344
	testb	$1, ignore_mouse_drag_p
	je	.LBB160_84
# BB#83:                                # %if.then.346
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 8(%rax)
	movb	$0, ignore_mouse_drag_p
	jmp	.LBB160_92
.LBB160_84:                             # %if.else.349
	movq	-168(%rbp), %rax
	cmpq	globals+3072, %rax
	jge	.LBB160_90
# BB#85:                                # %land.lhs.true.352
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	subq	globals+3072, %rcx
	cmpq	%rcx, %rdx
	jle	.LBB160_90
# BB#86:                                # %land.lhs.true.356
	movq	-176(%rbp), %rax
	cmpq	globals+3072, %rax
	jge	.LBB160_90
# BB#87:                                # %land.lhs.true.359
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx
	subq	globals+3072, %rcx
	cmpq	%rcx, %rdx
	jle	.LBB160_90
# BB#88:                                # %land.lhs.true.363
	movq	-72(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	-56(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB160_90
# BB#89:                                # %if.then.370
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB160_91
.LBB160_90:                             # %if.else.373
	movq	$0, button_down_time
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, 8(%rax)
.LBB160_91:                             # %if.end.376
	jmp	.LBB160_92
.LBB160_92:                             # %if.end.377
	cmpl	$1, double_click_count
	jle	.LBB160_94
# BB#93:                                # %if.then.380
	movl	$16, %eax
	movl	$32, %ecx
	cmpl	$2, double_click_count
	cmovgl	%ecx, %eax
	movq	-16(%rbp), %rdx
	orl	8(%rdx), %eax
	movl	%eax, 8(%rdx)
.LBB160_94:                             # %if.end.386
	jmp	.LBB160_96
.LBB160_95:                             # %if.else.387
	callq	emacs_abort
.LBB160_96:                             # %if.end.388
	jmp	.LBB160_97
.LBB160_97:                             # %if.end.389
	movl	$685, %edi              # imm = 0x2AD
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -580(%rbp)        # 4-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	Vlispy_mouse_stem, %rcx
	movq	mouse_syms, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	callq	ASIZE
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$mouse_syms, %r9
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movl	-580(%rbp), %esi        # 4-byte Reload
	movq	-600(%rbp), %rdx        # 8-byte Reload
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	andl	$4, %esi
	cmpl	$0, %esi
	je	.LBB160_99
# BB#98:                                # %if.then.398
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_99:                             # %if.else.400
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$48, %ecx
	cmpl	$0, %ecx
	je	.LBB160_101
# BB#100:                               # %if.then.404
	movq	-184(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movslq	double_click_count, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_101:                            # %if.else.409
	movq	-184(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_102:                            # %sw.bb.411
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB160_104
# BB#103:                               # %if.then.420
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_104:                            # %if.end.422
	movq	-208(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	callq	make_lispy_position
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB160_105
	jmp	.LBB160_106
.LBB160_105:                            # %if.then.431
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB160_110
.LBB160_106:                            # %if.else.436
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB160_107
	jmp	.LBB160_108
.LBB160_107:                            # %if.then.439
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB160_109
.LBB160_108:                            # %if.else.442
	callq	emacs_abort
.LBB160_109:                            # %if.end.443
	jmp	.LBB160_110
.LBB160_110:                            # %if.end.444
	movq	-216(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB160_112
# BB#111:                               # %cond.true.452
	movq	globals+3072, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB160_113
.LBB160_112:                            # %cond.false.453
	movl	$8, %eax
	movl	%eax, %ecx
	movq	globals+3072, %rax
	cqto
	idivq	%rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB160_113:                            # %cond.end.455
	movq	-616(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -220(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB160_115
# BB#114:                               # %if.then.461
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 8(%rax)
	movl	$0, -224(%rbp)
	jmp	.LBB160_119
.LBB160_115:                            # %if.else.464
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB160_117
# BB#116:                               # %if.then.468
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-3, %ecx
	movl	%ecx, 8(%rax)
	movl	$1, -224(%rbp)
	jmp	.LBB160_118
.LBB160_117:                            # %if.else.471
	callq	emacs_abort
.LBB160_118:                            # %if.end.472
	jmp	.LBB160_119
.LBB160_119:                            # %if.end.473
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	cmpl	$7, %ecx
	jne	.LBB160_121
# BB#120:                               # %if.then.478
	movl	-224(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -224(%rbp)
.LBB160_121:                            # %if.end.480
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	last_mouse_button, %edx
	movl	-224(%rbp), %esi
	addl	$1, %esi
	subl	%esi, %eax
	cmpl	%eax, %edx
	movb	%cl, -617(%rbp)         # 1-byte Spill
	jne	.LBB160_136
# BB#122:                               # %land.lhs.true.485
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_x, %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB160_124
# BB#123:                               # %cond.true.492
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	sarq	$2, %rdx
	movslq	last_mouse_x, %rsi
	subq	%rsi, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB160_125
.LBB160_124:                            # %cond.false.498
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_x, %rcx
	subq	%rcx, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB160_125:                            # %cond.end.503
	movq	-632(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	-220(%rbp), %rsi
	cmpq	%rsi, %rax
	movb	%dl, -617(%rbp)         # 1-byte Spill
	jg	.LBB160_136
# BB#126:                               # %land.lhs.true.508
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_y, %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	jge	.LBB160_128
# BB#127:                               # %cond.true.515
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	sarq	$2, %rdx
	movslq	last_mouse_y, %rsi
	subq	%rsi, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB160_129
.LBB160_128:                            # %cond.false.521
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$2, %rax
	movslq	last_mouse_y, %rcx
	subq	%rcx, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB160_129:                            # %cond.end.526
	movq	-640(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	-220(%rbp), %rsi
	cmpq	%rsi, %rax
	movb	%dl, -617(%rbp)         # 1-byte Spill
	jg	.LBB160_136
# BB#130:                               # %land.lhs.true.531
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, button_down_time
	movb	%cl, -617(%rbp)         # 1-byte Spill
	je	.LBB160_136
# BB#131:                               # %land.rhs.534
	movl	$901, %edi              # imm = 0x385
	movq	globals+592, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-648(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -649(%rbp)         # 1-byte Spill
	je	.LBB160_135
# BB#132:                               # %lor.rhs.538
	movq	globals+592, %rdi
	callq	NATNUMP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -650(%rbp)         # 1-byte Spill
	jne	.LBB160_133
	jmp	.LBB160_134
.LBB160_133:                            # %land.rhs.541
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	subq	button_down_time, %rax
	movq	globals+592, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setb	%dl
	movb	%dl, -650(%rbp)         # 1-byte Spill
.LBB160_134:                            # %land.end.547
	movb	-650(%rbp), %al         # 1-byte Reload
	movb	%al, -649(%rbp)         # 1-byte Spill
.LBB160_135:                            # %lor.end.548
	movb	-649(%rbp), %al         # 1-byte Reload
	movb	%al, -617(%rbp)         # 1-byte Spill
.LBB160_136:                            # %land.end.549
	movb	-617(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -225(%rbp)
	testb	$1, -225(%rbp)
	je	.LBB160_138
# BB#137:                               # %if.then.552
	movl	$16, %eax
	movl	$32, %ecx
	movl	double_click_count, %edx
	addl	$1, %edx
	movl	%edx, double_click_count
	cmpl	$2, double_click_count
	cmovgl	%ecx, %eax
	movq	-16(%rbp), %rsi
	orl	8(%rsi), %eax
	movl	%eax, 8(%rsi)
	jmp	.LBB160_139
.LBB160_138:                            # %if.else.559
	movl	$1, double_click_count
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 8(%rax)
.LBB160_139:                            # %if.end.562
	movl	$685, %edi              # imm = 0x2AD
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, button_down_time
	movl	-224(%rbp), %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, last_mouse_button
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, last_mouse_x
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, last_mouse_y
	movslq	-224(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %esi
	movl	%esi, -656(%rbp)        # 4-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	wheel_syms, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	ASIZE
	movabsq	$lispy_wheel_names, %r8
	movabsq	$wheel_syms, %r9
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	-656(%rbp), %esi        # 4-byte Reload
	movq	-672(%rbp), %rdx        # 8-byte Reload
	movq	-680(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	andl	$48, %esi
	cmpl	$0, %esi
	je	.LBB160_141
# BB#140:                               # %if.then.581
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movslq	double_click_count, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_141:                            # %if.else.586
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_142:                            # %sw.bb.588
	movl	$1002, %edi             # imm = 0x3EA
	movq	-16(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_scroll_bar_position
	movq	%rax, -240(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	mouse_syms, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-696(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB160_144
# BB#143:                               # %if.then.602
	movq	mouse_syms, %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	mouse_syms, %rdx
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	$-1, %rdx
	movq	-712(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	addq	$1, %rdi
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-720(%rbp), %rsi        # 8-byte Reload
	callq	larger_vector
	movq	%rax, mouse_syms
.LBB160_144:                            # %if.end.609
	movl	$685, %edi              # imm = 0x2AD
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, -724(%rbp)        # 4-byte Spill
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	Vlispy_mouse_stem, %rcx
	movq	mouse_syms, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	callq	ASIZE
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$mouse_syms, %r9
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movl	-724(%rbp), %esi        # 4-byte Reload
	movq	-744(%rbp), %rdx        # 8-byte Reload
	movq	-752(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_145:                            # %sw.bb.617
	movl	$524, %edi              # imm = 0x20C
	movq	-16(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_scroll_bar_position
	movq	%rax, -256(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-2, %ecx
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	mouse_syms, %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-768(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB160_147
# BB#146:                               # %if.then.631
	movq	mouse_syms, %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	mouse_syms, %rdx
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	$-1, %rdx
	movq	-784(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	addq	$1, %rdi
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-792(%rbp), %rsi        # 8-byte Reload
	callq	larger_vector
	movq	%rax, mouse_syms
.LBB160_147:                            # %if.end.638
	movl	$685, %edi              # imm = 0x2AD
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, -796(%rbp)        # 4-byte Spill
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	Vlispy_mouse_stem, %rcx
	movq	mouse_syms, %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	ASIZE
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$mouse_syms, %r9
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movl	-796(%rbp), %esi        # 4-byte Reload
	movq	-816(%rbp), %rdx        # 8-byte Reload
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_148:                            # %sw.bb.646
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	subq	$5, %rax
	movq	%rax, -272(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-272(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB160_150
# BB#149:                               # %if.then.655
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_150:                            # %if.end.657
	movq	-272(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	callq	make_lispy_position
	movl	$353, %edi              # imm = 0x161
	movq	%rax, -288(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -828(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$lispy_drag_n_drop_names, %r8
	movabsq	$drag_n_drop_syms, %r9
	movl	$1, %esi
	movl	%esi, %ecx
	movl	-828(%rbp), %esi        # 4-byte Reload
	movq	-840(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	$1, (%rsp)
	callq	modify_event_symbol
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movq	-296(%rbp), %rdx
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_151:                            # %sw.bb.667
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB160_153
# BB#152:                               # %if.then.672
	movl	$651, %edi              # imm = 0x28B
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_153:                            # %if.end.675
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_154:                            # %sw.bb.677
	movl	$840, %edi              # imm = 0x348
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	list1
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_155:                            # %sw.bb.682
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB160_157
# BB#156:                               # %if.then.687
	movl	$921, %edi              # imm = 0x399
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_157:                            # %if.else.690
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB160_159
# BB#158:                               # %if.then.696
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	apply_modifiers
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_159:                            # %if.end.700
	jmp	.LBB160_160
.LBB160_160:                            # %if.end.701
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_161:                            # %sw.bb.703
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	find_user_signal_name
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.LBB160_163
# BB#162:                               # %if.then.707
	callq	emacs_abort
.LBB160_163:                            # %if.end.708
	movq	-304(%rbp), %rdi
	callq	intern
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_164:                            # %sw.bb.710
	movl	$827, %edi              # imm = 0x33B
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_165:                            # %sw.bb.712
	movl	$423, %edi              # imm = 0x1A7
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_166:                            # %sw.bb.716
	movl	$292, %edi              # imm = 0x124
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	%rax, %rdi
	callq	list3
	movq	%rax, -8(%rbp)
	jmp	.LBB160_168
.LBB160_167:                            # %sw.default
	callq	emacs_abort
.LBB160_168:                            # %return
	movq	-8(%rbp), %rax
	addq	$864, %rsp              # imm = 0x360
	popq	%rbp
	retq
.Lfunc_end160:
	.size	make_lispy_event, .Lfunc_end160-make_lispy_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI160_0:
	.quad	.LBB160_1
	.quad	.LBB160_1
	.quad	.LBB160_9
	.quad	.LBB160_167
	.quad	.LBB160_25
	.quad	.LBB160_102
	.quad	.LBB160_102
	.quad	.LBB160_142
	.quad	.LBB160_145
	.quad	.LBB160_167
	.quad	.LBB160_167
	.quad	.LBB160_167
	.quad	.LBB160_167
	.quad	.LBB160_151
	.quad	.LBB160_167
	.quad	.LBB160_167
	.quad	.LBB160_167
	.quad	.LBB160_148
	.quad	.LBB160_161
	.quad	.LBB160_167
	.quad	.LBB160_155
	.quad	.LBB160_167
	.quad	.LBB160_167
	.quad	.LBB160_154
	.quad	.LBB160_164
	.quad	.LBB160_166
	.quad	.LBB160_165

	.text
	.align	16, 0x90
	.type	Time_to_position,@function
Time_to_position:                       # @Time_to_position
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
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rdi, -16(%rbp)
	cmpq	%rax, -16(%rbp)
	ja	.LBB161_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB161_3
.LBB161_2:                              # %if.end
	movq	$-1, %rax
	movabsq	$-2305843009213693952, %rcx # imm = 0xE000000000000000
	movq	%rcx, -24(%rbp)
	movq	%rax, %rcx
	subq	-16(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	subq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB161_3:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end161:
	.size	Time_to_position, .Lfunc_end161-Time_to_position
	.cfi_endproc

	.align	16, 0x90
	.type	make_lispy_focus_in,@function
make_lispy_focus_in:                    # @make_lispy_focus_in
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
	subq	$16, %rsp
	movl	$437, %eax              # imm = 0x1B5
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end162:
	.size	make_lispy_focus_in, .Lfunc_end162-make_lispy_focus_in
	.cfi_endproc

	.align	16, 0x90
	.type	make_lispy_focus_out,@function
make_lispy_focus_out:                   # @make_lispy_focus_out
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
	subq	$16, %rsp
	movl	$438, %eax              # imm = 0x1B6
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end163:
	.size	make_lispy_focus_out, .Lfunc_end163-make_lispy_focus_out
	.cfi_endproc

	.align	16, 0x90
	.type	make_lispy_movement,@function
make_lispy_movement:                    # @make_lispy_movement
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB164_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB164_3
# BB#2:                                 # %if.then
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movswl	scroll_bar_parts(,%rcx,2), %edi
	callq	builtin_lisp_symbol
	movl	$834, %edi              # imm = 0x342
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$1002, %edi             # imm = 0x3EA
	movq	-24(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-64(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list5
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB164_4
.LBB164_3:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	make_lispy_position
	movl	$690, %edi              # imm = 0x2B2
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -8(%rbp)
.LBB164_4:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	make_lispy_movement, .Lfunc_end164-make_lispy_movement
	.cfi_endproc

	.align	16, 0x90
	.type	modify_event_symbol,@function
modify_event_symbol:                    # @modify_event_symbol
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
	subq	$288, %rsp              # imm = 0x120
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	andq	$16777215, %rax         # imm = 0xFFFFFF
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -16(%rbp)
	jl	.LBB165_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB165_3
.LBB165_2:                              # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB165_37
.LBB165_3:                              # %if.end
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB165_5
# BB#4:                                 # %if.then.5
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	assq_no_quit
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -72(%rbp)
	jmp	.LBB165_9
.LBB165_5:                              # %if.else
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB165_6
	jmp	.LBB165_7
.LBB165_6:                              # %lor.lhs.false.9
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	ASIZE
	cmpq	-64(%rbp), %rax
	je	.LBB165_8
.LBB165_7:                              # %if.then.13
	movq	-64(%rbp), %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-56(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB165_8:                              # %if.end.17
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	AREF
	movq	%rax, -72(%rbp)
.LBB165_9:                              # %if.end.19
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB165_36
# BB#10:                                # %if.then.23
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB165_12
# BB#11:                                # %if.then.28
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr_safe
	movq	%rax, -72(%rbp)
	jmp	.LBB165_26
.LBB165_12:                             # %if.else.31
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB165_13
	jmp	.LBB165_21
.LBB165_13:                             # %if.then.33
	movq	-40(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$20, %rax
	movq	%rax, -104(%rbp)
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jg	.LBB165_15
# BB#14:                                # %cond.true
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-104(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB165_16
.LBB165_15:                             # %cond.false
	movb	$1, -121(%rbp)
	movq	-104(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB165_16:                             # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.192, %rsi
	movq	-80(%rbp), %rdi
	sarq	$2, %rdi
	addq	$1, %rdi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	esprintf
	movq	-96(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	intern
	movq	%rax, -72(%rbp)
# BB#17:                                # %do.body
	testb	$1, -121(%rbp)
	je	.LBB165_19
# BB#18:                                # %if.then.45
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB165_19:                             # %if.end.48
	jmp	.LBB165_20
.LBB165_20:                             # %do.end
	jmp	.LBB165_25
.LBB165_21:                             # %if.else.49
	cmpq	$0, -48(%rbp)
	je	.LBB165_24
# BB#22:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB165_24
# BB#23:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	intern
	movq	%rax, -72(%rbp)
.LBB165_24:                             # %if.end.56
	jmp	.LBB165_25
.LBB165_25:                             # %if.end.57
	jmp	.LBB165_26
.LBB165_26:                             # %if.end.58
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB165_30
# BB#27:                                # %if.then.62
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	x_get_keysym_name
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB165_29
# BB#28:                                # %if.then.66
	movq	-136(%rbp), %rdi
	callq	intern
	movq	%rax, -72(%rbp)
.LBB165_29:                             # %if.end.68
	jmp	.LBB165_30
.LBB165_30:                             # %if.end.69
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB165_32
# BB#31:                                # %if.then.73
	movabsq	$.L.str.193, %rsi
	leaq	-176(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-176(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	intern
	movq	%rax, -72(%rbp)
.LBB165_32:                             # %if.end.78
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB165_34
# BB#33:                                # %if.then.83
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fcons
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-56(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB165_35
.LBB165_34:                             # %if.else.86
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	ASET
.LBB165_35:                             # %if.end.87
	movl	-20(%rbp), %eax
	andl	$8, %eax
	movq	-72(%rbp), %rsi
	movl	%eax, %edi
	callq	apply_modifiers
	movl	$382, %edi              # imm = 0x17E
	movq	-72(%rbp), %rsi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB165_36:                             # %if.end.92
	movl	-20(%rbp), %edi
	movq	-72(%rbp), %rsi
	callq	apply_modifiers
	movq	%rax, -8(%rbp)
.LBB165_37:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	modify_event_symbol, .Lfunc_end165-modify_event_symbol
	.cfi_endproc

	.align	16, 0x90
	.type	kset_system_key_syms,@function
kset_system_key_syms:                   # @kset_system_key_syms
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 128(%rdi)
	popq	%rbp
	retq
.Lfunc_end166:
	.size	kset_system_key_syms, .Lfunc_end166-kset_system_key_syms
	.cfi_endproc

	.align	16, 0x90
	.type	toolkit_menubar_in_use,@function
toolkit_menubar_in_use:                 # @toolkit_menubar_in_use
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$2, %eax
	sete	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end167:
	.size	toolkit_menubar_in_use, .Lfunc_end167-toolkit_menubar_in_use
	.cfi_endproc

	.align	16, 0x90
	.type	make_scroll_bar_position,@function
make_scroll_bar_position:               # @make_scroll_bar_position
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	Fcons
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edx
	shrl	$16, %edx
	movl	%edx, %edx
	movl	%edx, %esi
	movswl	scroll_bar_parts(,%rsi,2), %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	list5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end168:
	.size	make_scroll_bar_position, .Lfunc_end168-make_scroll_bar_position
	.cfi_endproc

	.align	16, 0x90
	.type	find_user_signal_name,@function
find_user_signal_name:                  # @find_user_signal_name
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
	movl	%edi, -12(%rbp)
	movq	user_signals, %rax
	movq	%rax, -24(%rbp)
.LBB169_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB169_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB169_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB169_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB169_7
.LBB169_4:                              # %if.end
                                        #   in Loop: Header=BB169_1 Depth=1
	jmp	.LBB169_5
.LBB169_5:                              # %for.inc
                                        #   in Loop: Header=BB169_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB169_1
.LBB169_6:                              # %for.end
	movq	$0, -8(%rbp)
.LBB169_7:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end169:
	.size	find_user_signal_name, .Lfunc_end169-find_user_signal_name
	.cfi_endproc

	.align	16, 0x90
	.type	echo_add_key,@function
echo_add_key:                           # @echo_add_key
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
	subq	$336, %rsp              # imm = 0x150
	leaq	-144(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	$122, -152(%rbp)
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	current_kboard, %rax
	movq	176(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	$16384, -184(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -192(%rbp)
	movb	$0, -193(%rbp)
	movq	-176(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB170_1
	jmp	.LBB170_3
.LBB170_1:                              # %land.lhs.true
	movq	-176(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB170_3
# BB#2:                                 # %if.then
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movb	$32, (%rax)
.LBB170_3:                              # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB170_5
# BB#4:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB170_6
.LBB170_5:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB170_6:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB170_8
# BB#7:                                 # %if.then.10
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	push_key_description
	movq	%rax, -168(%rbp)
	jmp	.LBB170_19
.LBB170_8:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB170_18
# BB#9:                                 # %if.then.16
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -216(%rbp)
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rdi
	movq	-160(%rbp), %rcx
	subq	%rcx, %rdi
	subq	%rdi, %rax
	cmpq	-216(%rbp), %rax
	jge	.LBB170_17
# BB#10:                                # %if.then.22
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	-152(%rbp), %rax
	shlq	$1, %rax
	movq	-152(%rbp), %rcx
	addq	-216(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB170_12
# BB#11:                                # %cond.true.28
	movq	-152(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB170_13
.LBB170_12:                             # %cond.false.30
	movq	-152(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB170_13:                             # %cond.end.32
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jg	.LBB170_15
# BB#14:                                # %cond.true.36
	movq	-152(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -184(%rbp)
	movq	-152(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB170_16
.LBB170_15:                             # %cond.false.38
	movb	$1, -193(%rbp)
	movq	-152(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB170_16:                             # %cond.end.40
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	-224(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB170_17:                             # %if.end.42
	movq	-208(%rbp), %rdi
	callq	SDATA
	movq	-168(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	$1, %r8d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	copy_text
	addq	-168(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB170_18:                             # %if.end.47
	jmp	.LBB170_19
.LBB170_19:                             # %if.end.48
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB170_21
# BB#20:                                # %lor.lhs.false
	movq	-176(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB170_28
.LBB170_21:                             # %land.lhs.true.55
	movq	-8(%rbp), %rdi
	callq	help_char_p
	testb	$1, %al
	jne	.LBB170_22
	jmp	.LBB170_28
.LBB170_22:                             # %if.then.58
	movl	$29, -228(%rbp)
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	movslq	-228(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB170_27
# BB#23:                                # %if.then.66
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -240(%rbp)
	movslq	-228(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jg	.LBB170_25
# BB#24:                                # %cond.true.75
	movq	-152(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -184(%rbp)
	movq	-152(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB170_26
.LBB170_25:                             # %cond.false.77
	movb	$1, -193(%rbp)
	movq	-152(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB170_26:                             # %cond.end.79
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	addq	-240(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB170_27:                             # %if.end.82
	movabsq	$echo_add_key.text, %rsi
	movq	-168(%rbp), %rdi
	movslq	-228(%rbp), %rdx
	callq	memcpy
	movl	-228(%rbp), %eax
	movq	-168(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -168(%rbp)
.LBB170_28:                             # %if.end.85
	movq	current_kboard, %rdi
	movq	-176(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	make_string
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_echo_string
# BB#29:                                # %do.body
	testb	$1, -193(%rbp)
	je	.LBB170_31
# BB#30:                                # %if.then.91
	xorl	%edi, %edi
	movb	$0, -193(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB170_31:                             # %if.end.94
	jmp	.LBB170_32
.LBB170_32:                             # %do.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end170:
	.size	echo_add_key, .Lfunc_end170-echo_add_key
	.cfi_endproc

	.align	16, 0x90
	.type	decode_timer,@function
decode_timer:                           # @decode_timer
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB171_1
	jmp	.LBB171_2
.LBB171_1:                              # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	ASIZE
	cmpq	$9, %rax
	je	.LBB171_3
.LBB171_2:                              # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB171_10
.LBB171_3:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	xorl	%edi, %edi
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB171_5
# BB#4:                                 # %if.then.5
	movb	$0, -1(%rbp)
	jmp	.LBB171_10
.LBB171_5:                              # %if.end.6
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB171_7
# BB#6:                                 # %if.then.11
	movb	$0, -1(%rbp)
	jmp	.LBB171_10
.LBB171_7:                              # %if.end.12
	leaq	-56(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	callq	decode_time_components
	cmpl	$0, %eax
	jg	.LBB171_9
# BB#8:                                 # %if.then.20
	movb	$0, -1(%rbp)
	jmp	.LBB171_10
.LBB171_9:                              # %if.end.21
	leaq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	lisp_to_timespec
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	callq	timespec_valid_p
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB171_10:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	decode_timer, .Lfunc_end171-decode_timer
	.cfi_endproc

	.align	16, 0x90
	.type	apply_modifiers_uncached,@function
apply_modifiers_uncached:               # @apply_modifiers_uncached
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
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%rax, -80(%rbp)
	movl	-4(%rbp), %ecx
	andl	$4194304, %ecx          # imm = 0x400000
	cmpl	$0, %ecx
	je	.LBB172_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$65, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$45, (%rax)
.LBB172_2:                              # %if.end
	movl	-4(%rbp), %eax
	andl	$67108864, %eax         # imm = 0x4000000
	cmpl	$0, %eax
	je	.LBB172_4
# BB#3:                                 # %if.then.4
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$67, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$45, (%rax)
.LBB172_4:                              # %if.end.7
	movl	-4(%rbp), %eax
	andl	$16777216, %eax         # imm = 0x1000000
	cmpl	$0, %eax
	je	.LBB172_6
# BB#5:                                 # %if.then.10
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$72, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$45, (%rax)
.LBB172_6:                              # %if.end.13
	movl	-4(%rbp), %eax
	andl	$134217728, %eax        # imm = 0x8000000
	cmpl	$0, %eax
	je	.LBB172_8
# BB#7:                                 # %if.then.16
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$77, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$45, (%rax)
.LBB172_8:                              # %if.end.19
	movl	-4(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB172_10
# BB#9:                                 # %if.then.22
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$83, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$45, (%rax)
.LBB172_10:                             # %if.end.25
	movl	-4(%rbp), %eax
	andl	$8388608, %eax          # imm = 0x800000
	cmpl	$0, %eax
	je	.LBB172_12
# BB#11:                                # %if.then.28
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$115, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	$45, (%rax)
.LBB172_12:                             # %if.end.31
	movl	-4(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB172_14
# BB#13:                                # %if.then.34
	movq	-80(%rbp), %rdi
	movl	$.L.str.358, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -80(%rbp)
.LBB172_14:                             # %if.end.35
	movl	-4(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB172_16
# BB#15:                                # %if.then.38
	movq	-80(%rbp), %rdi
	movl	$.L.str.359, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -80(%rbp)
.LBB172_16:                             # %if.end.40
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB172_18
# BB#17:                                # %if.then.43
	movq	-80(%rbp), %rdi
	movl	$.L.str.360, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -80(%rbp)
.LBB172_18:                             # %if.end.45
	movl	-4(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB172_20
# BB#19:                                # %if.then.48
	movq	-80(%rbp), %rdi
	movl	$.L.str.361, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -80(%rbp)
.LBB172_20:                             # %if.end.50
	movl	-4(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB172_22
# BB#21:                                # %if.then.53
	movq	-80(%rbp), %rdi
	movl	$.L.str.362, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -80(%rbp)
.LBB172_22:                             # %if.end.55
	leaq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	addl	-20(%rbp), %edx
	movslq	%edx, %rdi
	movl	-68(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	SDATA
	leaq	-64(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-88(%rbp), %rdi
	callq	SDATA
	xorl	%edi, %edi
	movslq	-68(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rsi
	movslq	-24(%rbp), %rdx
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	memcpy
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end172:
	.size	apply_modifiers_uncached, .Lfunc_end172-apply_modifiers_uncached
	.cfi_endproc

	.align	16, 0x90
	.type	handle_user_signal,@function
handle_user_signal:                     # @handle_user_signal
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	globals+440, %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB173_2
# BB#1:                                 # %if.then
	movq	globals+440, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)
.LBB173_2:                              # %if.end
	movq	user_signals, %rax
	movq	%rax, -16(%rbp)
.LBB173_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB173_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB173_3 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	jne	.LBB173_14
# BB#5:                                 # %if.then.6
	cmpq	$0, -24(%rbp)
	je	.LBB173_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB173_8
# BB#7:                                 # %if.then.11
	movl	$901, %edi              # imm = 0x385
	movb	$1, globals+3372
	movb	$1, globals+3373
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1928
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	jmp	.LBB173_16
.LBB173_8:                              # %if.end.14
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
	testb	$1, interrupt_input
	je	.LBB173_10
# BB#9:                                 # %if.then.16
	movl	-4(%rbp), %edi
	callq	handle_input_available_signal
	jmp	.LBB173_13
.LBB173_10:                             # %if.else
	cmpq	$0, input_available_clear_time
	je	.LBB173_12
# BB#11:                                # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	input_available_clear_time, %rdx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	make_timespec
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rcx)
.LBB173_12:                             # %if.end.20
	jmp	.LBB173_13
.LBB173_13:                             # %if.end.21
	jmp	.LBB173_16
.LBB173_14:                             # %if.end.22
                                        #   in Loop: Header=BB173_3 Depth=1
	jmp	.LBB173_15
.LBB173_15:                             # %for.inc
                                        #   in Loop: Header=BB173_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB173_3
.LBB173_16:                             # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	handle_user_signal, .Lfunc_end173-handle_user_signal
	.cfi_endproc

	.align	16, 0x90
	.type	parse_tool_bar_item,@function
parse_tool_bar_item:                    # @parse_tool_bar_item
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
	subq	$400, %rsp              # imm = 0x190
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movb	$0, -45(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	je	.LBB174_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB174_122
.LBB174_2:                              # %if.end
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB174_3
	jmp	.LBB174_4
.LBB174_3:                              # %if.then.3
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	list1
	movq	%rax, -24(%rbp)
	jmp	.LBB174_8
.LBB174_4:                              # %if.else
	movl	$657, %edi              # imm = 0x291
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_6
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB174_6
	jmp	.LBB174_7
.LBB174_6:                              # %if.then.17
	movb	$0, -1(%rbp)
	jmp	.LBB174_122
.LBB174_7:                              # %if.end.18
	jmp	.LBB174_8
.LBB174_8:                              # %if.end.19
	movq	tool_bar_item_properties, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB174_9
	jmp	.LBB174_14
.LBB174_9:                              # %if.then.21
	movl	$0, -44(%rbp)
.LBB174_10:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$11, -44(%rbp)
	jge	.LBB174_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB174_10 Depth=1
	xorl	%edi, %edi
	movslq	-44(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_prop
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB174_10 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB174_10
.LBB174_13:                             # %for.end
	jmp	.LBB174_15
.LBB174_14:                             # %if.else.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$46, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, tool_bar_item_properties
.LBB174_15:                             # %if.end.29
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	callq	set_prop
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$1, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	set_prop
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB174_19
# BB#16:                                # %if.then.34
	movq	-40(%rbp), %rdi
	callq	menu_item_eval_property
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB174_18
# BB#17:                                # %if.then.37
	movb	$0, -1(%rbp)
	jmp	.LBB174_122
.LBB174_18:                             # %if.end.38
	jmp	.LBB174_19
.LBB174_19:                             # %if.end.39
	movl	$3, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	callq	set_prop
	movq	-24(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	je	.LBB174_23
# BB#20:                                # %if.then.47
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	menu_separator_name_p
	testb	$1, %al
	jne	.LBB174_21
	jmp	.LBB174_22
.LBB174_21:                             # %if.then.50
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	set_prop
	movb	$1, -1(%rbp)
	jmp	.LBB174_122
.LBB174_22:                             # %if.end.52
	movb	$0, -1(%rbp)
	jmp	.LBB174_122
.LBB174_23:                             # %if.end.53
	movl	$5, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	set_prop
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB174_26
# BB#24:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB174_26
# BB#25:                                # %if.then.69
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB174_26:                             # %if.end.73
	jmp	.LBB174_27
.LBB174_27:                             # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -177(%rbp)         # 1-byte Spill
	jne	.LBB174_29
# BB#28:                                # %land.rhs
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -177(%rbp)         # 1-byte Spill
.LBB174_29:                             # %land.end
                                        #   in Loop: Header=BB174_27 Depth=1
	movb	-177(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB174_30
	jmp	.LBB174_73
.LBB174_30:                             # %for.body.86
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$37, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_35
# BB#31:                                # %if.then.97
                                        #   in Loop: Header=BB174_27 Depth=1
	xorl	%edi, %edi
	movq	globals+648, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB174_33
# BB#32:                                # %if.then.101
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$1, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	set_prop
	jmp	.LBB174_34
.LBB174_33:                             # %if.else.103
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rsi
	callq	set_prop
.LBB174_34:                             # %if.end.104
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_71
.LBB174_35:                             # %if.else.105
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$135, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_39
# BB#36:                                # %if.then.109
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rdi
	callq	menu_item_eval_property
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_38
# BB#37:                                # %if.then.114
	movb	$0, -1(%rbp)
	jmp	.LBB174_122
.LBB174_38:                             # %if.end.115
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_70
.LBB174_39:                             # %if.else.116
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$59, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_41
# BB#40:                                # %if.then.120
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$7, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rsi
	callq	set_prop
	jmp	.LBB174_69
.LBB174_41:                             # %if.else.121
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$134, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_43
# BB#42:                                # %if.then.125
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$10, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rsi
	callq	set_prop
	jmp	.LBB174_68
.LBB174_43:                             # %if.else.126
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$72, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_48
# BB#44:                                # %if.then.130
                                        #   in Loop: Header=BB174_27 Depth=1
	movabsq	$.L.str.377, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB174_45
	jmp	.LBB174_46
.LBB174_45:                             # %cond.true
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB174_47
.LBB174_46:                             # %cond.false
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-72(%rbp), %rdi
	callq	build_string
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB174_47:                             # %cond.end
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	$9, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	set_prop
	movb	$1, -45(%rbp)
	jmp	.LBB174_67
.LBB174_48:                             # %if.else.134
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$42, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_50
# BB#49:                                # %if.then.138
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB174_66
.LBB174_50:                             # %if.else.139
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$17, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_56
# BB#51:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB174_56
# BB#52:                                # %if.then.148
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$130, %edi
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB174_54
# BB#53:                                # %lor.lhs.false.157
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$101, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_55
.LBB174_54:                             # %if.then.161
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$2, %eax
	movl	%eax, %edi
	movq	-88(%rbp), %rsi
	callq	set_prop
	movl	$6, %eax
	movl	%eax, %edi
	movq	-80(%rbp), %rsi
	callq	set_prop
.LBB174_55:                             # %if.end.162
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_65
.LBB174_56:                             # %if.else.163
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$65, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_61
# BB#57:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB174_60
# BB#58:                                # %lor.lhs.false.172
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB174_59
	jmp	.LBB174_61
.LBB174_59:                             # %land.lhs.true.175
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-64(%rbp), %rdi
	callq	ASIZE
	cmpq	$4, %rax
	jne	.LBB174_61
.LBB174_60:                             # %if.then.179
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$4, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rsi
	callq	set_prop
	jmp	.LBB174_64
.LBB174_61:                             # %if.else.180
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$112, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB174_63
# BB#62:                                # %if.then.184
                                        #   in Loop: Header=BB174_27 Depth=1
	movl	$8, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rsi
	callq	set_prop
.LBB174_63:                             # %if.end.185
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_64
.LBB174_64:                             # %if.end.186
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_65
.LBB174_65:                             # %if.end.187
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_66
.LBB174_66:                             # %if.end.188
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_67
.LBB174_67:                             # %if.end.189
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_68
.LBB174_68:                             # %if.end.190
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_69
.LBB174_69:                             # %if.end.191
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_70
.LBB174_70:                             # %if.end.192
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_71
.LBB174_71:                             # %if.end.193
                                        #   in Loop: Header=BB174_27 Depth=1
	jmp	.LBB174_72
.LBB174_72:                             # %for.inc.194
                                        #   in Loop: Header=BB174_27 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB174_27
.LBB174_73:                             # %for.end.201
	testb	$1, -45(%rbp)
	jne	.LBB174_113
# BB#74:                                # %if.then.202
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB174_76
# BB#75:                                # %cond.true.209
	movq	-96(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB174_77
.LBB174_76:                             # %cond.false.212
	movabsq	$.L.str.378, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB174_77
.LBB174_77:                             # %cond.end.213
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB174_78
	jmp	.LBB174_79
.LBB174_78:                             # %cond.true.217
	movq	-104(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB174_80
.LBB174_79:                             # %cond.false.219
	movabsq	$.L.str.378, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB174_80
.LBB174_80:                             # %cond.end.220
	movq	-312(%rbp), %rax        # 8-byte Reload
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -120(%rbp)
	cmpq	%rcx, globals+3312
	jge	.LBB174_82
# BB#81:                                # %cond.true.224
	movq	globals+3312, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB174_83
.LBB174_82:                             # %cond.false.225
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB174_83
.LBB174_83:                             # %cond.end.226
	movq	-320(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB174_85
# BB#84:                                # %cond.true.230
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB174_89
.LBB174_85:                             # %cond.false.231
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, globals+3312
	jge	.LBB174_87
# BB#86:                                # %cond.true.234
	movq	globals+3312, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB174_88
.LBB174_87:                             # %cond.false.235
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB174_88
.LBB174_88:                             # %cond.end.236
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB174_89:                             # %cond.end.238
	movq	-328(%rbp), %rax        # 8-byte Reload
	shlq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rdi
	callq	strlen
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jg	.LBB174_97
# BB#90:                                # %land.lhs.true.244
	movq	-120(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB174_97
# BB#91:                                # %if.then.248
	movq	-136(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	strcpy
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB174_92:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -152(%rbp)
	movb	%cl, -345(%rbp)         # 1-byte Spill
	jle	.LBB174_94
# BB#93:                                # %land.rhs.252
                                        #   in Loop: Header=BB174_92 Depth=1
	movq	-152(%rbp), %rax
	subq	$1, %rax
	movq	-136(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$46, %edx
	sete	%sil
	movb	%sil, -345(%rbp)        # 1-byte Spill
.LBB174_94:                             # %land.end.258
                                        #   in Loop: Header=BB174_92 Depth=1
	movb	-345(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB174_95
	jmp	.LBB174_96
.LBB174_95:                             # %while.body
                                        #   in Loop: Header=BB174_92 Depth=1
	movq	-152(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB174_92
.LBB174_96:                             # %while.end
	movq	-152(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-136(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	%rax, -112(%rbp)
.LBB174_97:                             # %if.end.260
	movq	-112(%rbp), %rdi
	callq	strlen
	cmpq	-128(%rbp), %rax
	ja	.LBB174_108
# BB#98:                                # %land.lhs.true.264
	movq	-112(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB174_108
# BB#99:                                # %if.then.269
	movq	-112(%rbp), %rax
	cmpq	-136(%rbp), %rax
	je	.LBB174_101
# BB#100:                               # %if.then.272
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	strcpy
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB174_101:                            # %if.end.274
	movq	$0, -160(%rbp)
.LBB174_102:                            # %for.cond.275
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	movq	-136(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB174_107
# BB#103:                               # %for.body.280
                                        #   in Loop: Header=BB174_102 Depth=1
	movq	-160(%rbp), %rax
	movq	-136(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	jne	.LBB174_105
# BB#104:                               # %if.then.285
                                        #   in Loop: Header=BB174_102 Depth=1
	movq	-160(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	$32, (%rcx,%rax)
.LBB174_105:                            # %if.end.287
                                        #   in Loop: Header=BB174_102 Depth=1
	jmp	.LBB174_106
.LBB174_106:                            # %for.inc.288
                                        #   in Loop: Header=BB174_102 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB174_102
.LBB174_107:                            # %for.end.290
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB174_109
.LBB174_108:                            # %if.else.291
	movabsq	$.L.str.378, %rax
	movq	%rax, -112(%rbp)
.LBB174_109:                            # %if.end.292
	movq	-112(%rbp), %rdi
	callq	build_string
	movq	%rax, %rdi
	callq	Fupcase_initials
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	SCHARS
	cmpq	globals+3312, %rax
	jg	.LBB174_111
# BB#110:                               # %if.then.298
	movl	$9, %eax
	movl	%eax, %edi
	movq	-144(%rbp), %rsi
	callq	set_prop
	jmp	.LBB174_112
.LBB174_111:                            # %if.else.299
	movl	$9, %eax
	movl	%eax, %edi
	movq	empty_unibyte_string, %rsi
	callq	set_prop
.LBB174_112:                            # %if.end.300
	movq	-136(%rbp), %rdi
	callq	xfree
.LBB174_113:                            # %if.end.301
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB174_115
# BB#114:                               # %if.then.305
	movl	$783, %edi              # imm = 0x30F
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %edi
	movl	%edi, %esi
	movq	tool_bar_item_properties, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, %rdi
	callq	menu_item_eval_property
	movl	$5, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	set_prop
.LBB174_115:                            # %if.end.311
	movl	$5, %eax
	movl	%eax, %esi
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	get_keymap
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB174_117
# BB#116:                               # %if.then.318
	movb	$0, -1(%rbp)
	jmp	.LBB174_122
.LBB174_117:                            # %if.end.319
	movl	$1, %eax
	movl	%eax, %esi
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB174_119
# BB#118:                               # %if.then.324
	movl	$1, %eax
	movl	%eax, %esi
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	menu_item_eval_property
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	set_prop
.LBB174_119:                            # %if.end.327
	movl	$2, %eax
	movl	%eax, %esi
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB174_121
# BB#120:                               # %if.then.332
	movl	$2, %eax
	movl	%eax, %esi
	movq	tool_bar_item_properties, %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	menu_item_eval_property
	movl	$2, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	set_prop
.LBB174_121:                            # %if.end.335
	movb	$1, -1(%rbp)
.LBB174_122:                            # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end174:
	.size	parse_tool_bar_item, .Lfunc_end174-parse_tool_bar_item
	.cfi_endproc

	.align	16, 0x90
	.type	append_tool_bar_item,@function
append_tool_bar_item:                   # @append_tool_bar_item
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
	subq	$32, %rsp
	movslq	ntool_bar_items, %rax
	movq	tool_bar_items_vector, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	ASIZE
	subq	$11, %rax
	movq	-16(%rbp), %rdi         # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.LBB175_2
# BB#1:                                 # %if.then
	movq	$-1, %rdx
	movq	tool_bar_items_vector, %rdi
	movq	-8(%rbp), %rsi
	callq	larger_vector
	movq	%rax, tool_bar_items_vector
.LBB175_2:                              # %if.end
	movq	tool_bar_items_vector, %rdi
	movslq	ntool_bar_items, %rsi
	movq	tool_bar_item_properties, %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movl	$11, %ecx
                                        # kill: RCX<def> ECX<kill>
	addq	$8, %rax
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	vcopy
	movl	ntool_bar_items, %r8d
	addl	$11, %r8d
	movl	%r8d, ntool_bar_items
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end175:
	.size	append_tool_bar_item, .Lfunc_end175-append_tool_bar_item
	.cfi_endproc

	.align	16, 0x90
	.type	set_prop,@function
set_prop:                               # @set_prop
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	tool_bar_item_properties, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	ASET
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end176:
	.size	set_prop, .Lfunc_end176-set_prop
	.cfi_endproc

	.align	16, 0x90
	.type	record_menu_key,@function
record_menu_key:                        # @record_menu_key
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
	subq	$16, %rsp
	movl	$1, %eax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	clear_message
	movq	-8(%rbp), %rdi
	callq	record_char
	movq	$0, ok_to_echo_at_next_pause
	movq	-8(%rbp), %rdi
	callq	add_command_key
	callq	echo_update
	movq	-8(%rbp), %rdi
	movq	%rdi, globals+3008
	movq	num_input_events, %rdi
	addq	$1, %rdi
	movq	%rdi, num_input_events
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end177:
	.size	record_menu_key, .Lfunc_end177-record_menu_key
	.cfi_endproc

	.align	16, 0x90
	.type	echo_length,@function
echo_length:                            # @echo_length
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
	subq	$16, %rsp
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB178_1
	jmp	.LBB178_2
.LBB178_1:                              # %cond.true
	movq	current_kboard, %rax
	movq	176(%rax), %rdi
	callq	SCHARS
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB178_3
.LBB178_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB178_3
.LBB178_3:                              # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end178:
	.size	echo_length, .Lfunc_end178-echo_length
	.cfi_endproc

	.align	16, 0x90
	.type	active_maps,@function
active_maps:                            # @active_maps
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB179_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	CAR_SAFE
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB179_3
.LBB179_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB179_3:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	$589, %edi              # imm = 0x24D
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcurrent_active_maps
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end179:
	.size	active_maps, .Lfunc_end179-active_maps
	.cfi_endproc

	.align	16, 0x90
	.type	follow_key,@function
follow_key:                             # @follow_key
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	get_keymap
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	-20(%rbp), %r8d         # 4-byte Reload
	callq	access_keymap
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end180:
	.size	follow_key, .Lfunc_end180-follow_key
	.cfi_endproc

	.align	16, 0x90
	.type	keyremap_step,@function
keyremap_step:                          # @keyremap_step
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
	subq	$96, %rsp
	movb	%r8b, %al
	movq	16(%rbp), %r10
	xorl	%r8d, %r8d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	andb	$1, %al
	movb	%al, -37(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-32(%rbp), %rdx
	movl	20(%rdx), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, 20(%rdx)
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, -72(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %r9          # 8-byte Reload
	cmpq	%rax, %r9
	je	.LBB181_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movb	-37(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	access_keymap_keyremap
	movq	%rax, -64(%rbp)
	jmp	.LBB181_3
.LBB181_2:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB181_3:                              # %if.end
	movq	-64(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB181_5
# BB#4:                                 # %lor.lhs.false
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB181_5
	jmp	.LBB181_26
.LBB181_5:                              # %land.lhs.true
	testb	$1, -37(%rbp)
	je	.LBB181_26
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %esi
	subl	%esi, %edx
	subl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	subl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	(%rax), %ecx
	jg	.LBB181_8
# BB#7:                                 # %if.then.14
	movabsq	$.L.str.388, %rdi
	movb	$0, %al
	callq	error
.LBB181_8:                              # %if.end.15
	movq	-48(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB181_14
# BB#9:                                 # %if.then.18
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB181_10:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB181_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB181_10 Depth=1
	movslq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-80(%rbp), %edx
	movq	-48(%rbp), %rcx
	addl	(%rcx), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB181_10 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB181_10
.LBB181_13:                             # %for.end
	jmp	.LBB181_21
.LBB181_14:                             # %if.else.27
	movq	-48(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB181_20
# BB#15:                                # %if.then.30
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB181_16:                             # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	20(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB181_19
# BB#17:                                # %for.body.36
                                        #   in Loop: Header=BB181_16 Depth=1
	movslq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-80(%rbp), %edx
	movq	-48(%rbp), %rcx
	addl	(%rcx), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#18:                                # %for.inc.42
                                        #   in Loop: Header=BB181_16 Depth=1
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB181_16
.LBB181_19:                             # %for.end.43
	jmp	.LBB181_20
.LBB181_20:                             # %if.end.44
	jmp	.LBB181_21
.LBB181_21:                             # %if.end.45
	movl	$0, -80(%rbp)
.LBB181_22:                             # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB181_25
# BB#23:                                # %for.body.49
                                        #   in Loop: Header=BB181_22 Depth=1
	movq	-64(%rbp), %rdi
	movslq	-80(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	-32(%rbp), %rsi
	movl	16(%rsi), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#24:                                # %for.inc.57
                                        #   in Loop: Header=BB181_22 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB181_22
.LBB181_25:                             # %for.end.59
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	addl	%ecx, %edx
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movb	$1, -1(%rbp)
	jmp	.LBB181_29
.LBB181_26:                             # %if.end.65
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	callq	get_keymap
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB181_28
# BB#27:                                # %if.then.72
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
.LBB181_28:                             # %if.end.78
	movb	$0, -1(%rbp)
.LBB181_29:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end181:
	.size	keyremap_step, .Lfunc_end181-keyremap_step
	.cfi_endproc

	.align	16, 0x90
	.type	test_undefined,@function
test_undefined:                         # @test_undefined
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-16(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB182_5
# BB#1:                                 # %lor.lhs.false
	movl	$959, %edi              # imm = 0x3BF
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB182_5
# BB#2:                                 # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB182_4
# BB#3:                                 # %land.rhs
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fcommand_remapping
	movl	$959, %edi              # imm = 0x3BF
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB182_4:                              # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB182_5:                              # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end182:
	.size	test_undefined, .Lfunc_end182-test_undefined
	.cfi_endproc

	.align	16, 0x90
	.type	access_keymap_keyremap,@function
access_keymap_keyremap:                 # @access_keymap_keyremap
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
	subq	$96, %rsp
	movb	%cl, %al
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%ecx, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	access_keymap
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB183_5
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB183_5
# BB#2:                                 # %land.lhs.true.6
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rdi
	callq	ARRAYP
	testb	$1, %al
	jne	.LBB183_4
# BB#3:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	subq	$0, %rcx
	movq	lispsym+24(,%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB183_5
.LBB183_4:                              # %if.then
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fautoload_do_load
	movq	%rax, -40(%rbp)
.LBB183_5:                              # %if.end
	testb	$1, -25(%rbp)
	je	.LBB183_12
# BB#6:                                 # %land.lhs.true.22
	movq	-40(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB183_7
	jmp	.LBB183_12
.LBB183_7:                              # %if.then.25
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB183_11
# BB#8:                                 # %lor.lhs.false.30
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB183_11
# BB#9:                                 # %lor.lhs.false.33
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB183_11
# BB#10:                                # %if.then.36
	movq	-48(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movabsq	$.L.str.389, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB183_11:                             # %if.end.39
	jmp	.LBB183_12
.LBB183_12:                             # %if.end.40
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end183:
	.size	access_keymap_keyremap, .Lfunc_end183-access_keymap_keyremap
	.cfi_endproc

	.align	16, 0x90
	.type	write_stdout,@function
write_stdout:                           # @write_stdout
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
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	strlen
	movl	-20(%rbp), %edi         # 4-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end184:
	.size	write_stdout, .Lfunc_end184-write_stdout
	.cfi_endproc

	.align	16, 0x90
	.type	read_stdin,@function
read_stdin:                             # @read_stdin
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
	subq	$16, %rsp
	xorl	%edi, %edi
	leaq	-1(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	callq	read
	cmpq	$1, %rax
	jne	.LBB185_2
# BB#1:                                 # %cond.true
	movsbl	-1(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB185_3
.LBB185_2:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB185_3
.LBB185_3:                              # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end185:
	.size	read_stdin, .Lfunc_end185-read_stdin
	.cfi_endproc

	.align	16, 0x90
	.type	kset_overriding_terminal_local_map,@function
kset_overriding_terminal_local_map:     # @kset_overriding_terminal_local_map
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end186:
	.size	kset_overriding_terminal_local_map, .Lfunc_end186-kset_overriding_terminal_local_map
	.cfi_endproc

	.align	16, 0x90
	.type	kset_keyboard_translate_table,@function
kset_keyboard_translate_table:          # @kset_keyboard_translate_table
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end187:
	.size	kset_keyboard_translate_table, .Lfunc_end187-kset_keyboard_translate_table
	.cfi_endproc

	.align	16, 0x90
	.type	kset_local_function_key_map,@function
kset_local_function_key_map:            # @kset_local_function_key_map
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 144(%rdi)
	popq	%rbp
	retq
.Lfunc_end188:
	.size	kset_local_function_key_map, .Lfunc_end188-kset_local_function_key_map
	.cfi_endproc

	.align	16, 0x90
	.type	handle_interrupt_signal,@function
handle_interrupt_signal:                # @handle_interrupt_signal
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
	subq	$16, %rsp
	movabsq	$.L.str.25, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	get_named_terminal
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB189_2
# BB#1:                                 # %if.then
	movl	$594, %edi              # imm = 0x252
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	jmp	.LBB189_3
.LBB189_2:                              # %if.else
	movl	$1, %edi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, internal_last_event_frame
	callq	handle_interrupt
.LBB189_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end189:
	.size	handle_interrupt_signal, .Lfunc_end189-handle_interrupt_signal
	.cfi_endproc

	.type	current_kboard,@object  # @current_kboard
	.comm	current_kboard,8,8
	.type	ok_to_echo_at_next_pause,@object # @ok_to_echo_at_next_pause
	.local	ok_to_echo_at_next_pause
	.comm	ok_to_echo_at_next_pause,8,8
	.type	echo_kboard,@object     # @echo_kboard
	.comm	echo_kboard,8,8
	.type	echo_message_buffer,@object # @echo_message_buffer
	.comm	echo_message_buffer,8,8
	.type	command_loop_level,@object # @command_loop_level
	.comm	command_loop_level,8,8
	.type	last_auto_save,@object  # @last_auto_save
	.local	last_auto_save
	.comm	last_auto_save,8,8
	.type	single_kboard,@object   # @single_kboard
	.local	single_kboard
	.comm	single_kboard,1,1
	.type	kboard_stack,@object    # @kboard_stack
	.local	kboard_stack
	.comm	kboard_stack,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Terminal %d is locked, cannot read from it"
	.size	.L.str, 43

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"No recursive edit is in progress"
	.size	.L.str.1, 33

	.type	waiting_for_input,@object # @waiting_for_input
	.comm	waiting_for_input,1,1
	.type	this_command_key_count,@object # @this_command_key_count
	.comm	this_command_key_count,8,8
	.type	this_single_command_key_start,@object # @this_single_command_key_start
	.local	this_single_command_key_start
	.comm	this_single_command_key_start,8,8
	.type	ignore_mouse_drag_p,@object # @ignore_mouse_drag_p
	.comm	ignore_mouse_drag_p,1,1
	.type	quit_char,@object       # @quit_char
	.comm	quit_char,4,4
	.type	read_key_sequence_cmd,@object # @read_key_sequence_cmd
	.local	read_key_sequence_cmd
	.comm	read_key_sequence_cmd,8,8
	.type	pending_signals,@object # @pending_signals
	.comm	pending_signals,1,1
	.type	last_point_position,@object # @last_point_position
	.local	last_point_position
	.comm	last_point_position,8,8
	.type	read_key_sequence_remapped,@object # @read_key_sequence_remapped
	.local	read_key_sequence_remapped
	.comm	read_key_sequence_remapped,8,8
	.type	total_keys,@object      # @total_keys
	.local	total_keys
	.comm	total_keys,4,4
	.type	recent_keys,@object     # @recent_keys
	.local	recent_keys
	.comm	recent_keys,8,8
	.type	recent_keys_index,@object # @recent_keys_index
	.local	recent_keys_index
	.comm	recent_keys_index,4,4
	.type	point_before_last_command_or_undo,@object # @point_before_last_command_or_undo
	.comm	point_before_last_command_or_undo,8,8
	.type	buffer_before_last_command_or_undo,@object # @buffer_before_last_command_or_undo
	.comm	buffer_before_last_command_or_undo,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"activate-mark-hook"
	.size	.L.str.2, 19

	.type	interrupt_input,@object # @interrupt_input
	.comm	interrupt_input,1,1
	.type	poll_timer,@object      # @poll_timer
	.local	poll_timer
	.comm	poll_timer,8,8
	.type	poll_suppress_count,@object # @poll_suppress_count
	.comm	poll_suppress_count,4,4
	.type	internal_last_event_frame,@object # @internal_last_event_frame
	.comm	internal_last_event_frame,8,8
	.type	unread_switch_frame,@object # @unread_switch_frame
	.comm	unread_switch_frame,8,8
	.type	input_pending,@object   # @input_pending
	.comm	input_pending,1,1
	.type	input_was_pending,@object # @input_was_pending
	.local	input_was_pending
	.comm	input_was_pending,1,1
	.type	last_non_minibuf_size,@object # @last_non_minibuf_size
	.local	last_non_minibuf_size
	.comm	last_non_minibuf_size,8,8
	.type	all_kboards,@object     # @all_kboards
	.local	all_kboards
	.comm	all_kboards,8,8
	.type	this_command_keys,@object # @this_command_keys
	.comm	this_command_keys,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s"
	.size	.L.str.3, 3

	.type	num_input_events,@object # @num_input_events
	.comm	num_input_events,8,8
	.type	help_form_saved_window_configs,@object # @help_form_saved_window_configs
	.local	help_form_saved_window_configs
	.comm	help_form_saved_window_configs,8,8
	.type	kbd_fetch_ptr,@object   # @kbd_fetch_ptr
	.local	kbd_fetch_ptr
	.comm	kbd_fetch_ptr,8,8
	.type	kbd_store_ptr,@object   # @kbd_store_ptr
	.local	kbd_store_ptr
	.comm	kbd_store_ptr,8,8
	.type	kbd_buffer,@object      # @kbd_buffer
	.local	kbd_buffer
	.comm	kbd_buffer,229376,16
	.type	stop_character,@object  # @stop_character
	.comm	stop_character,4,4
	.type	immediate_quit,@object  # @immediate_quit
	.comm	immediate_quit,1,1
	.type	timers_run,@object      # @timers_run
	.comm	timers_run,4,4
	.type	timer_idleness_start_time,@object # @timer_idleness_start_time
	.local	timer_idleness_start_time
	.comm	timer_idleness_start_time,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Two bases given in one event"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid base event"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"alt"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ctrl"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"control"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"hyper"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"meta"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"shift"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"super"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"drag"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"down"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"double"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"triple"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"up"
	.size	.L.str.17, 3

	.type	interrupt_input_blocked,@object # @interrupt_input_blocked
	.comm	interrupt_input_blocked,4,4
	.type	input_available_clear_time,@object # @input_available_clear_time
	.comm	input_available_clear_time,8,8
	.type	user_signals,@object    # @user_signals
	.local	user_signals
	.comm	user_signals,8,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"--"
	.size	.L.str.18, 3

	.type	separator_names,@object # @separator_names
	.data
	.align	16
separator_names:
	.quad	.L.str.363
	.quad	.L.str.364
	.quad	.L.str.365
	.quad	.L.str.366
	.quad	.L.str.367
	.quad	.L.str.368
	.quad	.L.str.369
	.quad	.L.str.370
	.quad	.L.str.371
	.quad	.L.str.372
	.quad	.L.str.373
	.quad	.L.str.374
	.quad	.L.str.375
	.quad	.L.str.376
	.quad	0
	.size	separator_names, 120

	.type	menu_bar_items_vector,@object # @menu_bar_items_vector
	.local	menu_bar_items_vector
	.comm	menu_bar_items_vector,8,8
	.type	menu_bar_items_index,@object # @menu_bar_items_index
	.local	menu_bar_items_index
	.comm	menu_bar_items_index,4,4
	.type	menu_bar_one_keymap_changed_items,@object # @menu_bar_one_keymap_changed_items
	.local	menu_bar_one_keymap_changed_items
	.comm	menu_bar_one_keymap_changed_items,8,8
	.type	item_properties,@object # @item_properties
	.comm	item_properties,8,8
	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"  "
	.size	.L.str.19, 3

	.type	ntool_bar_items,@object # @ntool_bar_items
	.local	ntool_bar_items
	.comm	ntool_bar_items,4,4
	.type	tool_bar_items_vector,@object # @tool_bar_items_vector
	.local	tool_bar_items_vector
	.comm	tool_bar_items_vector,8,8
	.type	raw_keybuf_count,@object # @raw_keybuf_count
	.local	raw_keybuf_count
	.comm	raw_keybuf_count,4,4
	.type	raw_keybuf,@object      # @raw_keybuf
	.local	raw_keybuf
	.comm	raw_keybuf,8,8
	.type	dribble,@object         # @dribble
	.local	dribble
	.comm	dribble,8,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"w"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Opening dribble"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"There are other tty frames open; close them before suspending Emacs"
	.size	.L.str.22, 68

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"suspend-hook"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"suspend-resume-hook"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/dev/tty"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"QUIT must be an ASCII character"
	.size	.L.str.26, 32

	.type	initial_kboard,@object  # @initial_kboard
	.comm	initial_kboard,8,8
	.type	keyboard_init_hook,@object # @keyboard_init_hook
	.local	keyboard_init_hook
	.comm	keyboard_init_hook,8,8
	.type	pending_funcalls,@object # @pending_funcalls
	.comm	pending_funcalls,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"mouse"
	.size	.L.str.27, 6

	.type	Vlispy_mouse_stem,@object # @Vlispy_mouse_stem
	.local	Vlispy_mouse_stem
	.comm	Vlispy_mouse_stem,8,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Back to top level"
	.size	.L.str.28, 18

	.type	regular_top_level_message,@object # @regular_top_level_message
	.local	regular_top_level_message
	.comm	regular_top_level_message,8,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Re-entering top level after C stack overflow"
	.size	.L.str.29, 45

	.type	recover_top_level_message,@object # @recover_top_level_message
	.local	recover_top_level_message
	.comm	recover_top_level_message,8,8
	.type	syms_of_keyboard.o_fwd,@object # @syms_of_keyboard.o_fwd
	.local	syms_of_keyboard.o_fwd
	.comm	syms_of_keyboard.o_fwd,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"internal--top-level-message"
	.size	.L.str.30, 28

	.type	tool_bar_item_properties,@object # @tool_bar_item_properties
	.local	tool_bar_item_properties
	.comm	tool_bar_item_properties,8,8
	.type	head_table,@object      # @head_table
	.section	.rodata,"a",@progbits
	.align	16
head_table:
	.short	690                     # 0x2b2
	.short	690                     # 0x2b2
	.short	834                     # 0x342
	.short	690                     # 0x2b2
	.short	895                     # 0x37f
	.short	895                     # 0x37f
	.short	437                     # 0x1b5
	.short	437                     # 0x1b5
	.short	438                     # 0x1b6
	.short	438                     # 0x1b6
	.short	334                     # 0x14e
	.short	334                     # 0x14e
	.short	533                     # 0x215
	.short	533                     # 0x215
	.short	640                     # 0x280
	.short	640                     # 0x280
	.short	840                     # 0x348
	.short	895                     # 0x37f
	.size	head_table, 36

	.type	button_down_location,@object # @button_down_location
	.local	button_down_location
	.comm	button_down_location,8,8
	.type	mouse_syms,@object      # @mouse_syms
	.local	mouse_syms
	.comm	mouse_syms,8,8
	.type	wheel_syms,@object      # @wheel_syms
	.local	wheel_syms
	.comm	wheel_syms,8,8
	.type	modifier_symbols,@object # @modifier_symbols
	.local	modifier_symbols
	.comm	modifier_symbols,8,8
	.type	modifier_names,@object  # @modifier_names
	.align	16
modifier_names:
	.quad	.L.str.17
	.quad	.L.str.14
	.quad	.L.str.13
	.quad	.L.str.395
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.12
	.quad	.L.str.9
	.quad	.L.str.11
	.quad	.L.str.8
	.quad	.L.str.10
	.size	modifier_names, 224

	.type	accent_key_syms,@object # @accent_key_syms
	.local	accent_key_syms
	.comm	accent_key_syms,8,8
	.type	func_key_syms,@object   # @func_key_syms
	.local	func_key_syms
	.comm	func_key_syms,8,8
	.type	drag_n_drop_syms,@object # @drag_n_drop_syms
	.local	drag_n_drop_syms
	.comm	drag_n_drop_syms,8,8
	.type	Scurrent_idle_time,@object # @Scurrent_idle_time
	.data
	.align	8
Scurrent_idle_time:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_idle_time
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.396
	.quad	0
	.quad	0
	.size	Scurrent_idle_time, 48

	.type	Srecursive_edit,@object # @Srecursive_edit
	.align	8
Srecursive_edit:
	.quad	167772160               # 0xa000000
	.quad	Frecursive_edit
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.401
	.quad	.L.str.378
	.quad	0
	.size	Srecursive_edit, 48

	.type	Sthis_command_keys,@object # @Sthis_command_keys
	.align	8
Sthis_command_keys:
	.quad	167772160               # 0xa000000
	.quad	Fthis_command_keys
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.405
	.quad	0
	.quad	0
	.size	Sthis_command_keys, 48

	.type	Sthis_command_keys_vector,@object # @Sthis_command_keys_vector
	.align	8
Sthis_command_keys_vector:
	.quad	167772160               # 0xa000000
	.quad	Fthis_command_keys_vector
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.406
	.quad	0
	.quad	0
	.size	Sthis_command_keys_vector, 48

	.type	Sthis_single_command_keys,@object # @Sthis_single_command_keys
	.align	8
Sthis_single_command_keys:
	.quad	167772160               # 0xa000000
	.quad	Fthis_single_command_keys
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.407
	.quad	0
	.quad	0
	.size	Sthis_single_command_keys, 48

	.type	Sthis_single_command_raw_keys,@object # @Sthis_single_command_raw_keys
	.align	8
Sthis_single_command_raw_keys:
	.quad	167772160               # 0xa000000
	.quad	Fthis_single_command_raw_keys
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.408
	.quad	0
	.quad	0
	.size	Sthis_single_command_raw_keys, 48

	.type	Sabort_recursive_edit,@object # @Sabort_recursive_edit
	.align	8
Sabort_recursive_edit:
	.quad	167772160               # 0xa000000
	.quad	Fabort_recursive_edit
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.168
	.quad	.L.str.378
	.quad	0
	.size	Sabort_recursive_edit, 48

	.type	Sexit_recursive_edit,@object # @Sexit_recursive_edit
	.align	8
Sexit_recursive_edit:
	.quad	167772160               # 0xa000000
	.quad	Fexit_recursive_edit
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.167
	.quad	.L.str.378
	.quad	0
	.size	Sexit_recursive_edit, 48

	.type	Srecursion_depth,@object # @Srecursion_depth
	.align	8
Srecursion_depth:
	.quad	167772160               # 0xa000000
	.quad	Frecursion_depth
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.410
	.quad	0
	.quad	0
	.size	Srecursion_depth, 48

	.type	Stop_level,@object      # @Stop_level
	.align	8
Stop_level:
	.quad	167772160               # 0xa000000
	.quad	Ftop_level
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.86
	.quad	.L.str.378
	.quad	0
	.size	Stop_level, 48

	.type	Sdiscard_input,@object  # @Sdiscard_input
	.align	8
Sdiscard_input:
	.quad	167772160               # 0xa000000
	.quad	Fdiscard_input
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.411
	.quad	0
	.quad	0
	.size	Sdiscard_input, 48

	.type	Scurrent_input_mode,@object # @Scurrent_input_mode
	.align	8
Scurrent_input_mode:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_input_mode
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.419
	.quad	0
	.quad	0
	.size	Scurrent_input_mode, 48

	.type	syms_of_keyboard.o_fwd.31,@object # @syms_of_keyboard.o_fwd.31
	.local	syms_of_keyboard.o_fwd.31
	.comm	syms_of_keyboard.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"last-command-event"
	.size	.L.str.32, 19

	.type	syms_of_keyboard.o_fwd.33,@object # @syms_of_keyboard.o_fwd.33
	.local	syms_of_keyboard.o_fwd.33
	.comm	syms_of_keyboard.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"last-nonmenu-event"
	.size	.L.str.34, 19

	.type	syms_of_keyboard.o_fwd.35,@object # @syms_of_keyboard.o_fwd.35
	.local	syms_of_keyboard.o_fwd.35
	.comm	syms_of_keyboard.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"last-input-event"
	.size	.L.str.36, 17

	.type	syms_of_keyboard.o_fwd.37,@object # @syms_of_keyboard.o_fwd.37
	.local	syms_of_keyboard.o_fwd.37
	.comm	syms_of_keyboard.o_fwd.37,16,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"unread-command-events"
	.size	.L.str.38, 22

	.type	syms_of_keyboard.o_fwd.39,@object # @syms_of_keyboard.o_fwd.39
	.local	syms_of_keyboard.o_fwd.39
	.comm	syms_of_keyboard.o_fwd.39,16,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"unread-post-input-method-events"
	.size	.L.str.40, 32

	.type	syms_of_keyboard.o_fwd.41,@object # @syms_of_keyboard.o_fwd.41
	.local	syms_of_keyboard.o_fwd.41
	.comm	syms_of_keyboard.o_fwd.41,16,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"unread-input-method-events"
	.size	.L.str.42, 27

	.type	syms_of_keyboard.o_fwd.43,@object # @syms_of_keyboard.o_fwd.43
	.local	syms_of_keyboard.o_fwd.43
	.comm	syms_of_keyboard.o_fwd.43,16,8
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"meta-prefix-char"
	.size	.L.str.44, 17

	.type	syms_of_keyboard.ko_fwd,@object # @syms_of_keyboard.ko_fwd
	.local	syms_of_keyboard.ko_fwd
	.comm	syms_of_keyboard.ko_fwd,8,4
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"last-command"
	.size	.L.str.45, 13

	.type	syms_of_keyboard.ko_fwd.46,@object # @syms_of_keyboard.ko_fwd.46
	.local	syms_of_keyboard.ko_fwd.46
	.comm	syms_of_keyboard.ko_fwd.46,8,4
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"real-last-command"
	.size	.L.str.47, 18

	.type	syms_of_keyboard.ko_fwd.48,@object # @syms_of_keyboard.ko_fwd.48
	.local	syms_of_keyboard.ko_fwd.48
	.comm	syms_of_keyboard.ko_fwd.48,8,4
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"last-repeatable-command"
	.size	.L.str.49, 24

	.type	syms_of_keyboard.o_fwd.50,@object # @syms_of_keyboard.o_fwd.50
	.local	syms_of_keyboard.o_fwd.50
	.comm	syms_of_keyboard.o_fwd.50,16,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"this-command"
	.size	.L.str.51, 13

	.type	syms_of_keyboard.o_fwd.52,@object # @syms_of_keyboard.o_fwd.52
	.local	syms_of_keyboard.o_fwd.52
	.comm	syms_of_keyboard.o_fwd.52,16,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"real-this-command"
	.size	.L.str.53, 18

	.type	syms_of_keyboard.o_fwd.54,@object # @syms_of_keyboard.o_fwd.54
	.local	syms_of_keyboard.o_fwd.54
	.comm	syms_of_keyboard.o_fwd.54,16,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"this-command-keys-shift-translated"
	.size	.L.str.55, 35

	.type	syms_of_keyboard.o_fwd.56,@object # @syms_of_keyboard.o_fwd.56
	.local	syms_of_keyboard.o_fwd.56
	.comm	syms_of_keyboard.o_fwd.56,16,8
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"this-original-command"
	.size	.L.str.57, 22

	.type	syms_of_keyboard.i_fwd,@object # @syms_of_keyboard.i_fwd
	.local	syms_of_keyboard.i_fwd
	.comm	syms_of_keyboard.i_fwd,16,8
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"auto-save-interval"
	.size	.L.str.58, 19

	.type	syms_of_keyboard.o_fwd.59,@object # @syms_of_keyboard.o_fwd.59
	.local	syms_of_keyboard.o_fwd.59
	.comm	syms_of_keyboard.o_fwd.59,16,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"auto-save-timeout"
	.size	.L.str.60, 18

	.type	syms_of_keyboard.o_fwd.61,@object # @syms_of_keyboard.o_fwd.61
	.local	syms_of_keyboard.o_fwd.61
	.comm	syms_of_keyboard.o_fwd.61,16,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"echo-keystrokes"
	.size	.L.str.62, 16

	.type	syms_of_keyboard.i_fwd.63,@object # @syms_of_keyboard.i_fwd.63
	.local	syms_of_keyboard.i_fwd.63
	.comm	syms_of_keyboard.i_fwd.63,16,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"polling-period"
	.size	.L.str.64, 15

	.type	syms_of_keyboard.o_fwd.65,@object # @syms_of_keyboard.o_fwd.65
	.local	syms_of_keyboard.o_fwd.65
	.comm	syms_of_keyboard.o_fwd.65,16,8
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"double-click-time"
	.size	.L.str.66, 18

	.type	syms_of_keyboard.i_fwd.67,@object # @syms_of_keyboard.i_fwd.67
	.local	syms_of_keyboard.i_fwd.67
	.comm	syms_of_keyboard.i_fwd.67,16,8
	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"double-click-fuzz"
	.size	.L.str.68, 18

	.type	syms_of_keyboard.i_fwd.69,@object # @syms_of_keyboard.i_fwd.69
	.local	syms_of_keyboard.i_fwd.69
	.comm	syms_of_keyboard.i_fwd.69,16,8
	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"num-input-keys"
	.size	.L.str.70, 15

	.type	syms_of_keyboard.i_fwd.71,@object # @syms_of_keyboard.i_fwd.71
	.local	syms_of_keyboard.i_fwd.71
	.comm	syms_of_keyboard.i_fwd.71,16,8
	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"num-nonmacro-input-events"
	.size	.L.str.72, 26

	.type	syms_of_keyboard.o_fwd.73,@object # @syms_of_keyboard.o_fwd.73
	.local	syms_of_keyboard.o_fwd.73
	.comm	syms_of_keyboard.o_fwd.73,16,8
	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"last-event-frame"
	.size	.L.str.74, 17

	.type	syms_of_keyboard.o_fwd.75,@object # @syms_of_keyboard.o_fwd.75
	.local	syms_of_keyboard.o_fwd.75
	.comm	syms_of_keyboard.o_fwd.75,16,8
	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"tty-erase-char"
	.size	.L.str.76, 15

	.type	syms_of_keyboard.o_fwd.77,@object # @syms_of_keyboard.o_fwd.77
	.local	syms_of_keyboard.o_fwd.77
	.comm	syms_of_keyboard.o_fwd.77,16,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"help-char"
	.size	.L.str.78, 10

	.type	syms_of_keyboard.o_fwd.79,@object # @syms_of_keyboard.o_fwd.79
	.local	syms_of_keyboard.o_fwd.79
	.comm	syms_of_keyboard.o_fwd.79,16,8
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"help-event-list"
	.size	.L.str.80, 16

	.type	syms_of_keyboard.o_fwd.81,@object # @syms_of_keyboard.o_fwd.81
	.local	syms_of_keyboard.o_fwd.81
	.comm	syms_of_keyboard.o_fwd.81,16,8
	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"help-form"
	.size	.L.str.82, 10

	.type	syms_of_keyboard.o_fwd.83,@object # @syms_of_keyboard.o_fwd.83
	.local	syms_of_keyboard.o_fwd.83
	.comm	syms_of_keyboard.o_fwd.83,16,8
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"prefix-help-command"
	.size	.L.str.84, 20

	.type	syms_of_keyboard.o_fwd.85,@object # @syms_of_keyboard.o_fwd.85
	.local	syms_of_keyboard.o_fwd.85
	.comm	syms_of_keyboard.o_fwd.85,16,8
	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"top-level"
	.size	.L.str.86, 10

	.type	syms_of_keyboard.ko_fwd.87,@object # @syms_of_keyboard.ko_fwd.87
	.local	syms_of_keyboard.ko_fwd.87
	.comm	syms_of_keyboard.ko_fwd.87,8,4
	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"keyboard-translate-table"
	.size	.L.str.88, 25

	.type	syms_of_keyboard.b_fwd,@object # @syms_of_keyboard.b_fwd
	.local	syms_of_keyboard.b_fwd
	.comm	syms_of_keyboard.b_fwd,16,8
	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"cannot-suspend"
	.size	.L.str.89, 15

	.type	syms_of_keyboard.b_fwd.90,@object # @syms_of_keyboard.b_fwd.90
	.local	syms_of_keyboard.b_fwd.90
	.comm	syms_of_keyboard.b_fwd.90,16,8
	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"menu-prompting"
	.size	.L.str.91, 15

	.type	syms_of_keyboard.o_fwd.92,@object # @syms_of_keyboard.o_fwd.92
	.local	syms_of_keyboard.o_fwd.92
	.comm	syms_of_keyboard.o_fwd.92,16,8
	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"menu-prompt-more-char"
	.size	.L.str.93, 22

	.type	syms_of_keyboard.i_fwd.94,@object # @syms_of_keyboard.i_fwd.94
	.local	syms_of_keyboard.i_fwd.94
	.comm	syms_of_keyboard.i_fwd.94,16,8
	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"extra-keyboard-modifiers"
	.size	.L.str.95, 25

	.type	syms_of_keyboard.o_fwd.96,@object # @syms_of_keyboard.o_fwd.96
	.local	syms_of_keyboard.o_fwd.96
	.comm	syms_of_keyboard.o_fwd.96,16,8
	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"deactivate-mark"
	.size	.L.str.97, 16

	.type	syms_of_keyboard.o_fwd.98,@object # @syms_of_keyboard.o_fwd.98
	.local	syms_of_keyboard.o_fwd.98
	.comm	syms_of_keyboard.o_fwd.98,16,8
	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"pre-command-hook"
	.size	.L.str.99, 17

	.type	syms_of_keyboard.o_fwd.100,@object # @syms_of_keyboard.o_fwd.100
	.local	syms_of_keyboard.o_fwd.100
	.comm	syms_of_keyboard.o_fwd.100,16,8
	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"post-command-hook"
	.size	.L.str.101, 18

	.type	syms_of_keyboard.o_fwd.102,@object # @syms_of_keyboard.o_fwd.102
	.local	syms_of_keyboard.o_fwd.102
	.comm	syms_of_keyboard.o_fwd.102,16,8
	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"lucid-menu-bar-dirty-flag"
	.size	.L.str.103, 26

	.type	syms_of_keyboard.o_fwd.104,@object # @syms_of_keyboard.o_fwd.104
	.local	syms_of_keyboard.o_fwd.104
	.comm	syms_of_keyboard.o_fwd.104,16,8
	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"menu-bar-final-items"
	.size	.L.str.105, 21

	.type	syms_of_keyboard.o_fwd.106,@object # @syms_of_keyboard.o_fwd.106
	.local	syms_of_keyboard.o_fwd.106
	.comm	syms_of_keyboard.o_fwd.106,16,8
	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"tool-bar-separator-image-expression"
	.size	.L.str.107, 36

	.type	syms_of_keyboard.ko_fwd.108,@object # @syms_of_keyboard.ko_fwd.108
	.local	syms_of_keyboard.ko_fwd.108
	.comm	syms_of_keyboard.ko_fwd.108,8,4
	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"overriding-terminal-local-map"
	.size	.L.str.109, 30

	.type	syms_of_keyboard.o_fwd.110,@object # @syms_of_keyboard.o_fwd.110
	.local	syms_of_keyboard.o_fwd.110
	.comm	syms_of_keyboard.o_fwd.110,16,8
	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"overriding-local-map"
	.size	.L.str.111, 21

	.type	syms_of_keyboard.o_fwd.112,@object # @syms_of_keyboard.o_fwd.112
	.local	syms_of_keyboard.o_fwd.112
	.comm	syms_of_keyboard.o_fwd.112,16,8
	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"overriding-local-map-menu-flag"
	.size	.L.str.113, 31

	.type	syms_of_keyboard.o_fwd.114,@object # @syms_of_keyboard.o_fwd.114
	.local	syms_of_keyboard.o_fwd.114
	.comm	syms_of_keyboard.o_fwd.114,16,8
	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"special-event-map"
	.size	.L.str.115, 18

	.type	syms_of_keyboard.o_fwd.116,@object # @syms_of_keyboard.o_fwd.116
	.local	syms_of_keyboard.o_fwd.116
	.comm	syms_of_keyboard.o_fwd.116,16,8
	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"track-mouse"
	.size	.L.str.117, 12

	.type	syms_of_keyboard.ko_fwd.118,@object # @syms_of_keyboard.ko_fwd.118
	.local	syms_of_keyboard.ko_fwd.118
	.comm	syms_of_keyboard.ko_fwd.118,8,4
	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"system-key-alist"
	.size	.L.str.119, 17

	.type	syms_of_keyboard.ko_fwd.120,@object # @syms_of_keyboard.ko_fwd.120
	.local	syms_of_keyboard.ko_fwd.120
	.comm	syms_of_keyboard.ko_fwd.120,8,4
	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"local-function-key-map"
	.size	.L.str.121, 23

	.type	syms_of_keyboard.ko_fwd.122,@object # @syms_of_keyboard.ko_fwd.122
	.local	syms_of_keyboard.ko_fwd.122
	.comm	syms_of_keyboard.ko_fwd.122,8,4
	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"input-decode-map"
	.size	.L.str.123, 17

	.type	syms_of_keyboard.o_fwd.124,@object # @syms_of_keyboard.o_fwd.124
	.local	syms_of_keyboard.o_fwd.124
	.comm	syms_of_keyboard.o_fwd.124,16,8
	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"function-key-map"
	.size	.L.str.125, 17

	.type	syms_of_keyboard.o_fwd.126,@object # @syms_of_keyboard.o_fwd.126
	.local	syms_of_keyboard.o_fwd.126
	.comm	syms_of_keyboard.o_fwd.126,16,8
	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"key-translation-map"
	.size	.L.str.127, 20

	.type	syms_of_keyboard.o_fwd.128,@object # @syms_of_keyboard.o_fwd.128
	.local	syms_of_keyboard.o_fwd.128
	.comm	syms_of_keyboard.o_fwd.128,16,8
	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"deferred-action-list"
	.size	.L.str.129, 21

	.type	syms_of_keyboard.o_fwd.130,@object # @syms_of_keyboard.o_fwd.130
	.local	syms_of_keyboard.o_fwd.130
	.comm	syms_of_keyboard.o_fwd.130,16,8
	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"deferred-action-function"
	.size	.L.str.131, 25

	.type	syms_of_keyboard.o_fwd.132,@object # @syms_of_keyboard.o_fwd.132
	.local	syms_of_keyboard.o_fwd.132
	.comm	syms_of_keyboard.o_fwd.132,16,8
	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"delayed-warnings-list"
	.size	.L.str.133, 22

	.type	syms_of_keyboard.o_fwd.134,@object # @syms_of_keyboard.o_fwd.134
	.local	syms_of_keyboard.o_fwd.134
	.comm	syms_of_keyboard.o_fwd.134,16,8
	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"timer-list"
	.size	.L.str.135, 11

	.type	syms_of_keyboard.o_fwd.136,@object # @syms_of_keyboard.o_fwd.136
	.local	syms_of_keyboard.o_fwd.136
	.comm	syms_of_keyboard.o_fwd.136,16,8
	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"timer-idle-list"
	.size	.L.str.137, 16

	.type	syms_of_keyboard.o_fwd.138,@object # @syms_of_keyboard.o_fwd.138
	.local	syms_of_keyboard.o_fwd.138
	.comm	syms_of_keyboard.o_fwd.138,16,8
	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"input-method-function"
	.size	.L.str.139, 22

	.type	syms_of_keyboard.o_fwd.140,@object # @syms_of_keyboard.o_fwd.140
	.local	syms_of_keyboard.o_fwd.140
	.comm	syms_of_keyboard.o_fwd.140,16,8
	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"input-method-previous-message"
	.size	.L.str.141, 30

	.type	syms_of_keyboard.o_fwd.142,@object # @syms_of_keyboard.o_fwd.142
	.local	syms_of_keyboard.o_fwd.142
	.comm	syms_of_keyboard.o_fwd.142,16,8
	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"show-help-function"
	.size	.L.str.143, 19

	.type	syms_of_keyboard.o_fwd.144,@object # @syms_of_keyboard.o_fwd.144
	.local	syms_of_keyboard.o_fwd.144
	.comm	syms_of_keyboard.o_fwd.144,16,8
	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"disable-point-adjustment"
	.size	.L.str.145, 25

	.type	syms_of_keyboard.o_fwd.146,@object # @syms_of_keyboard.o_fwd.146
	.local	syms_of_keyboard.o_fwd.146
	.comm	syms_of_keyboard.o_fwd.146,16,8
	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"global-disable-point-adjustment"
	.size	.L.str.147, 32

	.type	syms_of_keyboard.o_fwd.148,@object # @syms_of_keyboard.o_fwd.148
	.local	syms_of_keyboard.o_fwd.148
	.comm	syms_of_keyboard.o_fwd.148,16,8
	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"minibuffer-message-timeout"
	.size	.L.str.149, 27

	.type	syms_of_keyboard.o_fwd.150,@object # @syms_of_keyboard.o_fwd.150
	.local	syms_of_keyboard.o_fwd.150
	.comm	syms_of_keyboard.o_fwd.150,16,8
	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"throw-on-input"
	.size	.L.str.151, 15

	.type	syms_of_keyboard.o_fwd.152,@object # @syms_of_keyboard.o_fwd.152
	.local	syms_of_keyboard.o_fwd.152
	.comm	syms_of_keyboard.o_fwd.152,16,8
	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"command-error-function"
	.size	.L.str.153, 23

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"command-error-default-function"
	.size	.L.str.154, 31

	.type	syms_of_keyboard.o_fwd.155,@object # @syms_of_keyboard.o_fwd.155
	.local	syms_of_keyboard.o_fwd.155
	.comm	syms_of_keyboard.o_fwd.155,16,8
	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"enable-disabled-menus-and-buttons"
	.size	.L.str.156, 34

	.type	syms_of_keyboard.o_fwd.157,@object # @syms_of_keyboard.o_fwd.157
	.local	syms_of_keyboard.o_fwd.157
	.comm	syms_of_keyboard.o_fwd.157,16,8
	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"select-active-regions"
	.size	.L.str.158, 22

	.type	syms_of_keyboard.o_fwd.159,@object # @syms_of_keyboard.o_fwd.159
	.local	syms_of_keyboard.o_fwd.159
	.comm	syms_of_keyboard.o_fwd.159,16,8
	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"saved-region-selection"
	.size	.L.str.160, 23

	.type	syms_of_keyboard.o_fwd.161,@object # @syms_of_keyboard.o_fwd.161
	.local	syms_of_keyboard.o_fwd.161
	.comm	syms_of_keyboard.o_fwd.161,16,8
	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"selection-inhibit-update-commands"
	.size	.L.str.162, 34

	.type	syms_of_keyboard.o_fwd.163,@object # @syms_of_keyboard.o_fwd.163
	.local	syms_of_keyboard.o_fwd.163
	.comm	syms_of_keyboard.o_fwd.163,16,8
	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"debug-on-event"
	.size	.L.str.164, 15

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"sigusr2"
	.size	.L.str.165, 8

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"suspend-emacs"
	.size	.L.str.166, 14

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"exit-recursive-edit"
	.size	.L.str.167, 20

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"abort-recursive-edit"
	.size	.L.str.168, 21

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"execute-extended-command"
	.size	.L.str.169, 25

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"delete-frame"
	.size	.L.str.170, 13

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"handle-delete-frame"
	.size	.L.str.171, 20

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"ns-put-working-text"
	.size	.L.str.172, 20

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"ns-unput-working-text"
	.size	.L.str.173, 22

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"iconify-frame"
	.size	.L.str.174, 14

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"ignore"
	.size	.L.str.175, 7

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"make-frame-visible"
	.size	.L.str.176, 19

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"save-session"
	.size	.L.str.177, 13

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"handle-save-session"
	.size	.L.str.178, 20

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"file-notify"
	.size	.L.str.179, 12

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"file-notify-handle-event"
	.size	.L.str.180, 25

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"config-changed-event"
	.size	.L.str.181, 21

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"focus-in"
	.size	.L.str.182, 9

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"handle-focus-in"
	.size	.L.str.183, 16

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"focus-out"
	.size	.L.str.184, 10

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"handle-focus-out"
	.size	.L.str.185, 17

	.type	return_to_command_loop,@object # @return_to_command_loop
	.comm	return_to_command_loop,200,16
	.type	interrupts_deferred,@object # @interrupts_deferred
	.comm	interrupts_deferred,1,1
	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"After 1 kbd macro iteration: "
	.size	.L.str.186, 30

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"After %ld kbd macro iterations: "
	.size	.L.str.187, 33

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Bare impure Emacs (standard Lisp code not loaded)"
	.size	.L.str.188, 50

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"Bare Emacs (standard Lisp code not loaded)"
	.size	.L.str.189, 43

	.type	echoing,@object         # @echoing
	.local	echoing
	.comm	echoing,1,1
	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Error in %s (%S): %S"
	.size	.L.str.190, 21

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"-"
	.size	.L.str.191, 2

	.type	button_down_time,@object # @button_down_time
	.local	button_down_time
	.comm	button_down_time,8,8
	.type	lispy_accent_codes,@object # @lispy_accent_codes
	.section	.rodata,"a",@progbits
	.align	16
lispy_accent_codes:
	.long	65106                   # 0xfe52
	.long	65104                   # 0xfe50
	.long	65107                   # 0xfe53
	.long	65111                   # 0xfe57
	.long	65108                   # 0xfe54
	.long	0                       # 0x0
	.long	65105                   # 0xfe51
	.long	65115                   # 0xfe5b
	.long	65109                   # 0xfe55
	.long	65116                   # 0xfe5c
	.long	65114                   # 0xfe5a
	.long	65113                   # 0xfe59
	.long	65110                   # 0xfe56
	.long	65112                   # 0xfe58
	.long	65117                   # 0xfe5d
	.long	65120                   # 0xfe60
	.long	65118                   # 0xfe5e
	.long	65119                   # 0xfe5f
	.long	65121                   # 0xfe61
	.long	65122                   # 0xfe62
	.size	lispy_accent_codes, 80

	.type	lispy_accent_keys,@object # @lispy_accent_keys
	.align	16
lispy_accent_keys:
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.213
	.size	lispy_accent_keys, 160

	.type	iso_lispy_function_keys,@object # @iso_lispy_function_keys
	.align	16
iso_lispy_function_keys:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.size	iso_lispy_function_keys, 424

	.type	lispy_function_keys,@object # @lispy_function_keys
	.align	16
lispy_function_keys:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	0
	.quad	.L.str.239
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.240
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.241
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.256
	.quad	.L.str.257
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.258
	.quad	.L.str.259
	.quad	.L.str.17
	.quad	.L.str.260
	.quad	.L.str.14
	.quad	.L.str.261
	.quad	.L.str.262
	.quad	.L.str.263
	.quad	.L.str.264
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.265
	.quad	.L.str.266
	.quad	.L.str.267
	.quad	.L.str.268
	.quad	0
	.quad	.L.str.269
	.quad	.L.str.270
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	.L.str.273
	.quad	.L.str.274
	.quad	.L.str.275
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.276
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.277
	.quad	.L.str.278
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.279
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.280
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.281
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.284
	.quad	.L.str.285
	.quad	.L.str.286
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.290
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	.L.str.299
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.308
	.quad	.L.str.309
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.314
	.quad	.L.str.315
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.323
	.quad	.L.str.324
	.quad	.L.str.325
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.330
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.333
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	.L.str.343
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.348
	.size	lispy_function_keys, 2048

	.type	last_mouse_button,@object # @last_mouse_button
	.local	last_mouse_button
	.comm	last_mouse_button,4,4
	.type	last_mouse_x,@object    # @last_mouse_x
	.local	last_mouse_x
	.comm	last_mouse_x,4,4
	.type	last_mouse_y,@object    # @last_mouse_y
	.local	last_mouse_y
	.comm	last_mouse_y,4,4
	.type	double_click_count,@object # @double_click_count
	.local	double_click_count
	.comm	double_click_count,4,4
	.type	lispy_wheel_names,@object # @lispy_wheel_names
	.align	16
lispy_wheel_names:
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.352
	.size	lispy_wheel_names, 32

	.type	lispy_drag_n_drop_names,@object # @lispy_drag_n_drop_names
	.align	8
lispy_drag_n_drop_names:
	.quad	.L.str.353
	.size	lispy_drag_n_drop_names, 8

	.type	.L.str.192,@object      # @.str.192
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.192:
	.asciz	"%s-%ld"
	.size	.L.str.192, 7

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"key-%ld"
	.size	.L.str.193, 8

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"dead-circumflex"
	.size	.L.str.194, 16

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"dead-grave"
	.size	.L.str.195, 11

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"dead-tilde"
	.size	.L.str.196, 11

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"dead-diaeresis"
	.size	.L.str.197, 15

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"dead-macron"
	.size	.L.str.198, 12

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"dead-degree"
	.size	.L.str.199, 12

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"dead-acute"
	.size	.L.str.200, 11

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"dead-cedilla"
	.size	.L.str.201, 13

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"dead-breve"
	.size	.L.str.202, 11

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"dead-ogonek"
	.size	.L.str.203, 12

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"dead-caron"
	.size	.L.str.204, 11

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"dead-doubleacute"
	.size	.L.str.205, 17

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"dead-abovedot"
	.size	.L.str.206, 14

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"dead-abovering"
	.size	.L.str.207, 15

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"dead-iota"
	.size	.L.str.208, 10

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"dead-belowdot"
	.size	.L.str.209, 14

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"dead-voiced-sound"
	.size	.L.str.210, 18

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"dead-semivoiced-sound"
	.size	.L.str.211, 22

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"dead-hook"
	.size	.L.str.212, 10

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"dead-horn"
	.size	.L.str.213, 10

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"iso-lefttab"
	.size	.L.str.214, 12

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"iso-move-line-up"
	.size	.L.str.215, 17

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"iso-move-line-down"
	.size	.L.str.216, 19

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"iso-partial-line-up"
	.size	.L.str.217, 20

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"iso-partial-line-down"
	.size	.L.str.218, 22

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"iso-partial-space-left"
	.size	.L.str.219, 23

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"iso-partial-space-right"
	.size	.L.str.220, 24

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"iso-set-margin-left"
	.size	.L.str.221, 20

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"iso-set-margin-right"
	.size	.L.str.222, 21

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"iso-release-margin-left"
	.size	.L.str.223, 24

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"iso-release-margin-right"
	.size	.L.str.224, 25

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"iso-release-both-margins"
	.size	.L.str.225, 25

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"iso-fast-cursor-left"
	.size	.L.str.226, 21

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"iso-fast-cursor-right"
	.size	.L.str.227, 22

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"iso-fast-cursor-up"
	.size	.L.str.228, 19

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"iso-fast-cursor-down"
	.size	.L.str.229, 21

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"iso-continuous-underline"
	.size	.L.str.230, 25

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"iso-discontinuous-underline"
	.size	.L.str.231, 28

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"iso-emphasize"
	.size	.L.str.232, 14

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"iso-center-object"
	.size	.L.str.233, 18

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"iso-enter"
	.size	.L.str.234, 10

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"backspace"
	.size	.L.str.235, 10

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"tab"
	.size	.L.str.236, 4

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"linefeed"
	.size	.L.str.237, 9

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"clear"
	.size	.L.str.238, 6

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"return"
	.size	.L.str.239, 7

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"pause"
	.size	.L.str.240, 6

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"escape"
	.size	.L.str.241, 7

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"kanji"
	.size	.L.str.242, 6

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"muhenkan"
	.size	.L.str.243, 9

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"henkan"
	.size	.L.str.244, 7

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"romaji"
	.size	.L.str.245, 7

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"hiragana"
	.size	.L.str.246, 9

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"katakana"
	.size	.L.str.247, 9

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"hiragana-katakana"
	.size	.L.str.248, 18

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"zenkaku"
	.size	.L.str.249, 8

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"hankaku"
	.size	.L.str.250, 8

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"zenkaku-hankaku"
	.size	.L.str.251, 16

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"touroku"
	.size	.L.str.252, 8

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"massyo"
	.size	.L.str.253, 7

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"kana-lock"
	.size	.L.str.254, 10

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"kana-shift"
	.size	.L.str.255, 11

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"eisu-shift"
	.size	.L.str.256, 11

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"eisu-toggle"
	.size	.L.str.257, 12

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"home"
	.size	.L.str.258, 5

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"left"
	.size	.L.str.259, 5

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"right"
	.size	.L.str.260, 6

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"prior"
	.size	.L.str.261, 6

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"next"
	.size	.L.str.262, 5

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"end"
	.size	.L.str.263, 4

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"begin"
	.size	.L.str.264, 6

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"select"
	.size	.L.str.265, 7

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"print"
	.size	.L.str.266, 6

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"execute"
	.size	.L.str.267, 8

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"insert"
	.size	.L.str.268, 7

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"undo"
	.size	.L.str.269, 5

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"redo"
	.size	.L.str.270, 5

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"menu"
	.size	.L.str.271, 5

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"find"
	.size	.L.str.272, 5

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"cancel"
	.size	.L.str.273, 7

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"help"
	.size	.L.str.274, 5

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"break"
	.size	.L.str.275, 6

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"backtab"
	.size	.L.str.276, 8

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"kp-numlock"
	.size	.L.str.277, 11

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"kp-space"
	.size	.L.str.278, 9

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"kp-tab"
	.size	.L.str.279, 7

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"kp-enter"
	.size	.L.str.280, 9

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"kp-f1"
	.size	.L.str.281, 6

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"kp-f2"
	.size	.L.str.282, 6

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"kp-f3"
	.size	.L.str.283, 6

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"kp-f4"
	.size	.L.str.284, 6

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"kp-home"
	.size	.L.str.285, 8

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"kp-left"
	.size	.L.str.286, 8

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"kp-up"
	.size	.L.str.287, 6

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"kp-right"
	.size	.L.str.288, 9

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"kp-down"
	.size	.L.str.289, 8

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"kp-prior"
	.size	.L.str.290, 9

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"kp-next"
	.size	.L.str.291, 8

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"kp-end"
	.size	.L.str.292, 7

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"kp-begin"
	.size	.L.str.293, 9

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"kp-insert"
	.size	.L.str.294, 10

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"kp-delete"
	.size	.L.str.295, 10

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"kp-multiply"
	.size	.L.str.296, 12

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"kp-add"
	.size	.L.str.297, 7

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"kp-separator"
	.size	.L.str.298, 13

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"kp-subtract"
	.size	.L.str.299, 12

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"kp-decimal"
	.size	.L.str.300, 11

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"kp-divide"
	.size	.L.str.301, 10

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"kp-0"
	.size	.L.str.302, 5

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"kp-1"
	.size	.L.str.303, 5

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"kp-2"
	.size	.L.str.304, 5

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"kp-3"
	.size	.L.str.305, 5

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"kp-4"
	.size	.L.str.306, 5

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"kp-5"
	.size	.L.str.307, 5

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"kp-6"
	.size	.L.str.308, 5

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"kp-7"
	.size	.L.str.309, 5

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"kp-8"
	.size	.L.str.310, 5

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"kp-9"
	.size	.L.str.311, 5

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"kp-equal"
	.size	.L.str.312, 9

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"f1"
	.size	.L.str.313, 3

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"f2"
	.size	.L.str.314, 3

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"f3"
	.size	.L.str.315, 3

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"f4"
	.size	.L.str.316, 3

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"f5"
	.size	.L.str.317, 3

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"f6"
	.size	.L.str.318, 3

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"f7"
	.size	.L.str.319, 3

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"f8"
	.size	.L.str.320, 3

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"f9"
	.size	.L.str.321, 3

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"f10"
	.size	.L.str.322, 4

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"f11"
	.size	.L.str.323, 4

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"f12"
	.size	.L.str.324, 4

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"f13"
	.size	.L.str.325, 4

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"f14"
	.size	.L.str.326, 4

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"f15"
	.size	.L.str.327, 4

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"f16"
	.size	.L.str.328, 4

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"f17"
	.size	.L.str.329, 4

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"f18"
	.size	.L.str.330, 4

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"f19"
	.size	.L.str.331, 4

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"f20"
	.size	.L.str.332, 4

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"f21"
	.size	.L.str.333, 4

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"f22"
	.size	.L.str.334, 4

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"f23"
	.size	.L.str.335, 4

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"f24"
	.size	.L.str.336, 4

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"f25"
	.size	.L.str.337, 4

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"f26"
	.size	.L.str.338, 4

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"f27"
	.size	.L.str.339, 4

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"f28"
	.size	.L.str.340, 4

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"f29"
	.size	.L.str.341, 4

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"f30"
	.size	.L.str.342, 4

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"f31"
	.size	.L.str.343, 4

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"f32"
	.size	.L.str.344, 4

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"f33"
	.size	.L.str.345, 4

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"f34"
	.size	.L.str.346, 4

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"f35"
	.size	.L.str.347, 4

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"delete"
	.size	.L.str.348, 7

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"wheel-up"
	.size	.L.str.349, 9

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"wheel-down"
	.size	.L.str.350, 11

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"wheel-left"
	.size	.L.str.351, 11

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"wheel-right"
	.size	.L.str.352, 12

	.type	scroll_bar_parts,@object # @scroll_bar_parts
	.section	.rodata,"a",@progbits
	.align	16
scroll_bar_parts:
	.short	0                       # 0x0
	.short	156                     # 0x9c
	.short	505                     # 0x1f9
	.short	201                     # 0xc9
	.short	977                     # 0x3d1
	.short	352                     # 0x160
	.short	928                     # 0x3a0
	.short	213                     # 0xd5
	.short	368                     # 0x170
	.short	787                     # 0x313
	.short	198                     # 0xc6
	.short	523                     # 0x20b
	.short	166                     # 0xa6
	.short	607                     # 0x25f
	.short	811                     # 0x32b
	.short	611                     # 0x263
	.short	817                     # 0x331
	.short	368                     # 0x170
	.short	787                     # 0x313
	.size	scroll_bar_parts, 38

	.type	.L.str.353,@object      # @.str.353
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.353:
	.asciz	"drag-n-drop"
	.size	.L.str.353, 12

	.type	echo_add_key.text,@object # @echo_add_key.text
	.section	.rodata,"a",@progbits
	.align	16
echo_add_key.text:
	.asciz	" (Type ? for further options)"
	.size	echo_add_key.text, 30

	.type	.L.str.354,@object      # @.str.354
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.354:
	.asciz	" 0x%lx"
	.size	.L.str.354, 7

	.type	getcjmp,@object         # @getcjmp
	.local	getcjmp
	.comm	getcjmp,200,16
	.type	timer_last_idleness_start_time,@object # @timer_last_idleness_start_time
	.local	timer_last_idleness_start_time
	.comm	timer_last_idleness_start_time,16,8
	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"internal-timer-start-idle"
	.size	.L.str.355, 26

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"mouse-"
	.size	.L.str.356, 7

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"wheel-"
	.size	.L.str.357, 7

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"double-"
	.size	.L.str.358, 8

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"triple-"
	.size	.L.str.359, 8

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"up-"
	.size	.L.str.360, 4

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"down-"
	.size	.L.str.361, 6

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"drag-"
	.size	.L.str.362, 6

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"space"
	.size	.L.str.363, 6

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"no-line"
	.size	.L.str.364, 8

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"single-line"
	.size	.L.str.365, 12

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"double-line"
	.size	.L.str.366, 12

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"single-dashed-line"
	.size	.L.str.367, 19

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"double-dashed-line"
	.size	.L.str.368, 19

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"shadow-etched-in"
	.size	.L.str.369, 17

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"shadow-etched-out"
	.size	.L.str.370, 18

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"shadow-etched-in-dash"
	.size	.L.str.371, 22

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"shadow-etched-out-dash"
	.size	.L.str.372, 23

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"shadow-double-etched-in"
	.size	.L.str.373, 24

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"shadow-double-etched-out"
	.size	.L.str.374, 25

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"shadow-double-etched-in-dash"
	.size	.L.str.375, 29

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"shadow-double-etched-out-dash"
	.size	.L.str.376, 30

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"!!?GARBLED ITEM?!!"
	.size	.L.str.377, 19

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.zero	1
	.size	.L.str.378, 1

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	": "
	.size	.L.str.379, 3

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"(*) "
	.size	.L.str.380, 5

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"( ) "
	.size	.L.str.381, 5

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"[X] "
	.size	.L.str.382, 5

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"[ ] "
	.size	.L.str.383, 5

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	", "
	.size	.L.str.384, 3

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	" = "
	.size	.L.str.385, 4

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"..."
	.size	.L.str.386, 4

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"concat"
	.size	.L.str.387, 7

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"Key sequence too long"
	.size	.L.str.388, 22

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"Function %s returns invalid key sequence"
	.size	.L.str.389, 41

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"Auto-save? (y or n) "
	.size	.L.str.390, 21

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"Auto-save done\n"
	.size	.L.str.391, 16

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"Garbage collection in progress; cannot auto-save now\r\nbut will instead do a real quit after garbage collection ends\r\n"
	.size	.L.str.392, 118

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"Abort (and dump core)? (y or n) "
	.size	.L.str.393, 33

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"Continuing...\n"
	.size	.L.str.394, 15

	.type	force_quit_count,@object # @force_quit_count
	.local	force_quit_count
	.comm	force_quit_count,4,4
	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"click"
	.size	.L.str.395, 6

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"current-idle-time"
	.size	.L.str.396, 18

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"internal-event-symbol-parse-modifiers"
	.size	.L.str.397, 38

	.type	Sevent_symbol_parse_modifiers,@object # @Sevent_symbol_parse_modifiers
	.data
	.align	8
Sevent_symbol_parse_modifiers:
	.quad	167772160               # 0xa000000
	.quad	Fevent_symbol_parse_modifiers
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.397
	.quad	0
	.quad	0
	.size	Sevent_symbol_parse_modifiers, 48

	.type	.L.str.398,@object      # @.str.398
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.398:
	.asciz	"event-convert-list"
	.size	.L.str.398, 19

	.type	Sevent_convert_list,@object # @Sevent_convert_list
	.data
	.align	8
Sevent_convert_list:
	.quad	167772160               # 0xa000000
	.quad	Fevent_convert_list
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.398
	.quad	0
	.quad	0
	.size	Sevent_convert_list, 48

	.type	.L.str.399,@object      # @.str.399
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.399:
	.asciz	"read-key-sequence"
	.size	.L.str.399, 18

	.type	Sread_key_sequence,@object # @Sread_key_sequence
	.data
	.align	8
Sread_key_sequence:
	.quad	167772160               # 0xa000000
	.quad	Fread_key_sequence
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.399
	.quad	0
	.quad	0
	.size	Sread_key_sequence, 48

	.type	.L.str.400,@object      # @.str.400
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.400:
	.asciz	"read-key-sequence-vector"
	.size	.L.str.400, 25

	.type	Sread_key_sequence_vector,@object # @Sread_key_sequence_vector
	.data
	.align	8
Sread_key_sequence_vector:
	.quad	167772160               # 0xa000000
	.quad	Fread_key_sequence_vector
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.400
	.quad	0
	.quad	0
	.size	Sread_key_sequence_vector, 48

	.type	.L.str.401,@object      # @.str.401
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.401:
	.asciz	"recursive-edit"
	.size	.L.str.401, 15

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"internal--track-mouse"
	.size	.L.str.402, 22

	.type	Strack_mouse,@object    # @Strack_mouse
	.data
	.align	8
Strack_mouse:
	.quad	167772160               # 0xa000000
	.quad	Ftrack_mouse
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.402
	.quad	0
	.quad	0
	.size	Strack_mouse, 48

	.type	.L.str.403,@object      # @.str.403
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.403:
	.asciz	"input-pending-p"
	.size	.L.str.403, 16

	.type	Sinput_pending_p,@object # @Sinput_pending_p
	.data
	.align	8
Sinput_pending_p:
	.quad	167772160               # 0xa000000
	.quad	Finput_pending_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.403
	.quad	0
	.quad	0
	.size	Sinput_pending_p, 48

	.type	.L.str.404,@object      # @.str.404
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.404:
	.asciz	"recent-keys"
	.size	.L.str.404, 12

	.type	Srecent_keys,@object    # @Srecent_keys
	.data
	.align	8
Srecent_keys:
	.quad	167772160               # 0xa000000
	.quad	Frecent_keys
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.404
	.quad	0
	.quad	0
	.size	Srecent_keys, 48

	.type	.L.str.405,@object      # @.str.405
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.405:
	.asciz	"this-command-keys"
	.size	.L.str.405, 18

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"this-command-keys-vector"
	.size	.L.str.406, 25

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"this-single-command-keys"
	.size	.L.str.407, 25

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"this-single-command-raw-keys"
	.size	.L.str.408, 29

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"clear-this-command-keys"
	.size	.L.str.409, 24

	.type	Sclear_this_command_keys,@object # @Sclear_this_command_keys
	.data
	.align	8
Sclear_this_command_keys:
	.quad	167772160               # 0xa000000
	.quad	Fclear_this_command_keys
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.409
	.quad	0
	.quad	0
	.size	Sclear_this_command_keys, 48

	.type	Ssuspend_emacs,@object  # @Ssuspend_emacs
	.align	8
Ssuspend_emacs:
	.quad	167772160               # 0xa000000
	.quad	Fsuspend_emacs
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.166
	.quad	.L.str.378
	.quad	0
	.size	Ssuspend_emacs, 48

	.type	.L.str.410,@object      # @.str.410
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.410:
	.asciz	"recursion-depth"
	.size	.L.str.410, 16

	.type	Scommand_error_default_function,@object # @Scommand_error_default_function
	.data
	.align	8
Scommand_error_default_function:
	.quad	167772160               # 0xa000000
	.quad	Fcommand_error_default_function
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.154
	.quad	0
	.quad	0
	.size	Scommand_error_default_function, 48

	.type	.L.str.411,@object      # @.str.411
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.411:
	.asciz	"discard-input"
	.size	.L.str.411, 14

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"open-dribble-file"
	.size	.L.str.412, 18

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"FOpen dribble file: "
	.size	.L.str.413, 21

	.type	Sopen_dribble_file,@object # @Sopen_dribble_file
	.data
	.align	8
Sopen_dribble_file:
	.quad	167772160               # 0xa000000
	.quad	Fopen_dribble_file
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.412
	.quad	.L.str.413
	.quad	0
	.size	Sopen_dribble_file, 48

	.type	.L.str.414,@object      # @.str.414
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.414:
	.asciz	"set-input-interrupt-mode"
	.size	.L.str.414, 25

	.type	Sset_input_interrupt_mode,@object # @Sset_input_interrupt_mode
	.data
	.align	8
Sset_input_interrupt_mode:
	.quad	167772160               # 0xa000000
	.quad	Fset_input_interrupt_mode
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.414
	.quad	0
	.quad	0
	.size	Sset_input_interrupt_mode, 48

	.type	.L.str.415,@object      # @.str.415
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.415:
	.asciz	"set-output-flow-control"
	.size	.L.str.415, 24

	.type	Sset_output_flow_control,@object # @Sset_output_flow_control
	.data
	.align	8
Sset_output_flow_control:
	.quad	167772160               # 0xa000000
	.quad	Fset_output_flow_control
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.415
	.quad	0
	.quad	0
	.size	Sset_output_flow_control, 48

	.type	.L.str.416,@object      # @.str.416
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.416:
	.asciz	"set-input-meta-mode"
	.size	.L.str.416, 20

	.type	Sset_input_meta_mode,@object # @Sset_input_meta_mode
	.data
	.align	8
Sset_input_meta_mode:
	.quad	167772160               # 0xa000000
	.quad	Fset_input_meta_mode
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.416
	.quad	0
	.quad	0
	.size	Sset_input_meta_mode, 48

	.type	.L.str.417,@object      # @.str.417
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.417:
	.asciz	"set-quit-char"
	.size	.L.str.417, 14

	.type	Sset_quit_char,@object  # @Sset_quit_char
	.data
	.align	8
Sset_quit_char:
	.quad	167772160               # 0xa000000
	.quad	Fset_quit_char
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.417
	.quad	0
	.quad	0
	.size	Sset_quit_char, 48

	.type	.L.str.418,@object      # @.str.418
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.418:
	.asciz	"set-input-mode"
	.size	.L.str.418, 15

	.type	Sset_input_mode,@object # @Sset_input_mode
	.data
	.align	8
Sset_input_mode:
	.quad	167772160               # 0xa000000
	.quad	Fset_input_mode
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.418
	.quad	0
	.quad	0
	.size	Sset_input_mode, 48

	.type	.L.str.419,@object      # @.str.419
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.419:
	.asciz	"current-input-mode"
	.size	.L.str.419, 19

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"posn-at-point"
	.size	.L.str.420, 14

	.type	Sposn_at_point,@object  # @Sposn_at_point
	.data
	.align	8
Sposn_at_point:
	.quad	167772160               # 0xa000000
	.quad	Fposn_at_point
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.420
	.quad	0
	.quad	0
	.size	Sposn_at_point, 48

	.type	.L.str.421,@object      # @.str.421
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.421:
	.asciz	"posn-at-x-y"
	.size	.L.str.421, 12

	.type	Sposn_at_x_y,@object    # @Sposn_at_x_y
	.data
	.align	8
Sposn_at_x_y:
	.quad	167772160               # 0xa000000
	.quad	Fposn_at_x_y
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.421
	.quad	0
	.quad	0
	.size	Sposn_at_x_y, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
