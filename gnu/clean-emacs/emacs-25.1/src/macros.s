	.text
	.file	"macros.bc"
	.globl	Fstart_kbd_macro
	.align	16, 0x90
	.type	Fstart_kbd_macro,@function
Fstart_kbd_macro:                       # @Fstart_kbd_macro
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_kboard, %rsi
	movq	72(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	movq	current_kboard, %rax
	cmpq	$0, 80(%rax)
	jne	.LBB0_4
# BB#3:                                 # %if.then.1
	movl	$240, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	current_kboard, %rdi
	movq	%rax, 80(%rdi)
	movq	current_kboard, %rax
	movq	$30, 104(%rax)
	movq	current_kboard, %rax
	movq	80(%rax), %rax
	movq	current_kboard, %rdi
	movq	%rax, 88(%rdi)
	movq	current_kboard, %rax
	movq	80(%rax), %rax
	movq	current_kboard, %rdi
	movq	%rax, 96(%rdi)
.LBB0_4:                                # %if.end.6
	xorl	%edi, %edi
	movl	$19, update_mode_lines
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_8
# BB#5:                                 # %if.then.9
	movq	current_kboard, %rax
	cmpq	$200, 104(%rax)
	jle	.LBB0_7
# BB#6:                                 # %if.then.12
	movl	$240, %eax
	movl	%eax, %esi
	movq	current_kboard, %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, %rdi
	callq	xrealloc
	movq	current_kboard, %rcx
	movq	%rax, 80(%rcx)
	movq	current_kboard, %rax
	movq	$30, 104(%rax)
.LBB0_7:                                # %if.end.17
	movabsq	$.L.str.1, %rdi
	movq	current_kboard, %rax
	movq	80(%rax), %rax
	movq	current_kboard, %rcx
	movq	%rax, 88(%rcx)
	movq	current_kboard, %rax
	movq	80(%rax), %rax
	movq	current_kboard, %rcx
	movq	%rax, 96(%rcx)
	callq	message1
	jmp	.LBB0_21
.LBB0_8:                                # %if.else
	movl	$30, -20(%rbp)
	movq	current_kboard, %rax
	movq	112(%rax), %rdi
	callq	CHECK_VECTOR_OR_STRING
	movq	%rax, -40(%rbp)
	movq	current_kboard, %rax
	movq	104(%rax), %rax
	movslq	-20(%rbp), %rdi
	subq	%rdi, %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB0_10
# BB#9:                                 # %if.then.26
	movq	$-1, %rcx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	current_kboard, %rdx
	movq	80(%rdx), %rdx
	movq	current_kboard, %rsi
	addq	$104, %rsi
	movq	-40(%rbp), %rdi
	movq	current_kboard, %r9
	subq	104(%r9), %rdi
	movslq	-20(%rbp), %r9
	addq	%r9, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	xpalloc
	movq	current_kboard, %rcx
	movq	%rax, 80(%rcx)
.LBB0_10:                               # %if.end.34
	movq	current_kboard, %rax
	movq	112(%rax), %rdi
	callq	STRINGP
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	$0, -32(%rbp)
.LBB0_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB0_18
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	current_kboard, %rax
	movq	112(%rax), %rdi
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Faref
	movq	%rax, -56(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB0_16
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_16
.LBB0_14:                               # %land.lhs.true.46
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$128, %rax
	cmpq	$0, %rax
	je	.LBB0_16
# BB#15:                                # %if.then.48
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	andq	$-129, %rax
	orq	$134217728, %rax        # imm = 0x8000000
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
.LBB0_16:                               # %if.end.52
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	current_kboard, %rdx
	movq	80(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_11
.LBB0_18:                               # %for.end
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	80(%rax), %rax
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	current_kboard, %rcx
	movq	%rax, 88(%rcx)
	movq	current_kboard, %rax
	movq	88(%rax), %rax
	movq	current_kboard, %rcx
	movq	%rax, 96(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_20
# BB#19:                                # %if.then.61
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	112(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fexecute_kbd_macro
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_20:                               # %if.end.65
	movabsq	$.L.str.2, %rdi
	callq	message1
.LBB0_21:                               # %if.end.66
	movl	$901, %edi              # imm = 0x385
	movq	current_kboard, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_defining_kbd_macro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fstart_kbd_macro, .Lfunc_end0-Fstart_kbd_macro
	.cfi_endproc

	.globl	Fexecute_kbd_macro
	.align	16, 0x90
	.type	Fexecute_kbd_macro,@function
Fexecute_kbd_macro:                     # @Fexecute_kbd_macro
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	$1, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, executing_kbd_macro_iterations
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Fprefix_numeric_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	indirect_function
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB1_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	error
.LBB1_5:                                # %if.end.7
	movq	globals+688, %rdi
	movq	globals+3088, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	globals+1984, %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movabsq	$pop_kbd_macro, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	callq	record_unwind_protect
.LBB1_6:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, globals+688
	movq	-32(%rbp), %rax
	movq	%rax, executing_kbd_macro
	movq	$0, globals+3088
	movq	current_kboard, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_prefix_arg
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_10
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	call0
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_9
# BB#8:                                 # %if.then.17
	jmp	.LBB1_24
.LBB1_9:                                # %if.end.18
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.19
                                        #   in Loop: Header=BB1_6 Depth=1
	callq	command_loop_1
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rcx, executing_kbd_macro_iterations
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#11:                                # %do.body.21
                                        #   in Loop: Header=BB1_6 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_14
# BB#12:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB1_6 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB1_6 Depth=1
	callq	process_quit_flag
	jmp	.LBB1_17
.LBB1_14:                               # %if.else
                                        #   in Loop: Header=BB1_6 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB1_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB1_6 Depth=1
	callq	process_pending_signals
.LBB1_16:                               # %if.end.29
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.30
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %do.end
                                        #   in Loop: Header=BB1_6 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               # %do.cond
                                        #   in Loop: Header=BB1_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -56(%rbp)
	cmpq	$0, %rdx
	movb	%cl, -137(%rbp)         # 1-byte Spill
	je	.LBB1_23
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	globals+688, %rdi
	callq	STRINGP
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -138(%rbp)         # 1-byte Spill
	jne	.LBB1_22
# BB#21:                                # %lor.rhs
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	globals+688, %rdi
	callq	VECTORP
	movb	%al, -138(%rbp)         # 1-byte Spill
.LBB1_22:                               # %lor.end
                                        #   in Loop: Header=BB1_6 Depth=1
	movb	-138(%rbp), %al         # 1-byte Reload
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB1_23:                               # %land.end
                                        #   in Loop: Header=BB1_6 Depth=1
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_6
.LBB1_24:                               # %do.end.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, executing_kbd_macro
	movq	globals+688, %rax
	movq	%rax, globals+1984
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Fexecute_kbd_macro, .Lfunc_end1-Fexecute_kbd_macro
	.cfi_endproc

	.globl	end_kbd_macro
	.align	16, 0x90
	.type	end_kbd_macro,@function
end_kbd_macro:                          # @end_kbd_macro
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
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_defining_kbd_macro
	movl	$20, update_mode_lines
	movq	current_kboard, %rdi
	movq	current_kboard, %rax
	movq	96(%rax), %rax
	movq	current_kboard, %rsi
	movq	80(%rsi), %rsi
	subq	%rsi, %rax
	sarq	$3, %rax
	movq	current_kboard, %rsi
	movq	80(%rsi), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	make_event_array
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	kset_last_kbd_macro
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	end_kbd_macro, .Lfunc_end2-end_kbd_macro
	.cfi_endproc

	.globl	Fend_kbd_macro
	.align	16, 0x90
	.type	Fend_kbd_macro,@function
Fend_kbd_macro:                         # @Fend_kbd_macro
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_kboard, %rsi
	movq	72(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_6
# BB#5:                                 # %cond.true
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB3_7:                                # %cond.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.9
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_10
# BB#9:                                 # %if.then.14
	callq	end_kbd_macro
	movabsq	$.L.str.4, %rdi
	callq	message1
.LBB3_10:                               # %if.end.15
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB3_12
# BB#11:                                # %if.then.18
	movq	current_kboard, %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	Fexecute_kbd_macro
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_15
.LBB3_12:                               # %if.else.20
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	jle	.LBB3_14
# BB#13:                                # %if.then.24
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	current_kboard, %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	Fexecute_kbd_macro
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB3_14:                               # %if.end.28
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fend_kbd_macro, .Lfunc_end3-Fend_kbd_macro
	.cfi_endproc

	.globl	store_kbd_macro_char
	.align	16, 0x90
	.type	store_kbd_macro_char,@function
store_kbd_macro_char:                   # @store_kbd_macro_char
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	current_kboard, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	-16(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB4_3
# BB#2:                                 # %if.then.2
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	80(%rdi), %rdi
	subq	%rdi, %rsi
	sarq	$3, %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	80(%rdi), %rdi
	subq	%rdi, %rsi
	sarq	$3, %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	-16(%rbp), %rdi
	addq	$104, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	xpalloc
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 96(%rcx)
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$8, %rsi
	movq	%rsi, 88(%rcx)
	movq	%rax, (%rdx)
.LBB4_4:                                # %if.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	store_kbd_macro_char, .Lfunc_end4-store_kbd_macro_char
	.cfi_endproc

	.globl	finalize_kbd_macro_chars
	.align	16, 0x90
	.type	finalize_kbd_macro_chars,@function
finalize_kbd_macro_chars:               # @finalize_kbd_macro_chars
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
	movq	current_kboard, %rax
	movq	88(%rax), %rax
	movq	current_kboard, %rcx
	movq	%rax, 96(%rcx)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	finalize_kbd_macro_chars, .Lfunc_end5-finalize_kbd_macro_chars
	.cfi_endproc

	.globl	Fcancel_kbd_macro_events
	.align	16, 0x90
	.type	Fcancel_kbd_macro_events,@function
Fcancel_kbd_macro_events:               # @Fcancel_kbd_macro_events
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
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	96(%rax), %rax
	movq	current_kboard, %rcx
	movq	%rax, 88(%rcx)
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fcancel_kbd_macro_events, .Lfunc_end6-Fcancel_kbd_macro_events
	.cfi_endproc

	.globl	Fstore_kbd_macro_event
	.align	16, 0x90
	.type	Fstore_kbd_macro_event,@function
Fstore_kbd_macro_event:                 # @Fstore_kbd_macro_event
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
	callq	store_kbd_macro_char
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fstore_kbd_macro_event, .Lfunc_end7-Fstore_kbd_macro_event
	.cfi_endproc

	.globl	Fcall_last_kbd_macro
	.align	16, 0x90
	.type	Fcall_last_kbd_macro,@function
Fcall_last_kbd_macro:                   # @Fcall_last_kbd_macro
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_kboard, %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, globals+2344
	movq	current_kboard, %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, globals+1984
	movq	current_kboard, %rsi
	movq	72(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB8_2:                                # %if.else
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB8_4:                                # %if.else.5
	movq	current_kboard, %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	Fexecute_kbd_macro
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#5:                                 # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.8
	xorl	%edi, %edi
	movq	current_kboard, %rax
	movq	16(%rax), %rax
	movq	%rax, globals+2344
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fcall_last_kbd_macro, .Lfunc_end8-Fcall_last_kbd_macro
	.cfi_endproc

	.align	16, 0x90
	.type	pop_kbd_macro,@function
pop_kbd_macro:                          # @pop_kbd_macro
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
	movl	$585, %eax              # imm = 0x249
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, globals+688
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	sarq	$2, %rdi
	movq	%rdi, globals+3088
	movq	-16(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, globals+1984
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pop_kbd_macro, .Lfunc_end9-pop_kbd_macro
	.cfi_endproc

	.globl	init_macros
	.align	16, 0x90
	.type	init_macros,@function
init_macros:                            # @init_macros
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+688
	callq	builtin_lisp_symbol
	movq	%rax, executing_kbd_macro
	popq	%rbp
	retq
.Lfunc_end10:
	.size	init_macros, .Lfunc_end10-init_macros
	.cfi_endproc

	.globl	syms_of_macros
	.align	16, 0x90
	.type	syms_of_macros,@function
syms_of_macros:                         # @syms_of_macros
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
	jmp	.LBB11_1
.LBB11_1:                               # %do.body
	movabsq	$syms_of_macros.o_fwd, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$globals, %rax
	addq	$1200, %rax             # imm = 0x4B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sstart_kbd_macro, %rcx
	movq	%rax, globals+1200
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Send_kbd_macro, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scall_last_kbd_macro, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sexecute_kbd_macro, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scancel_kbd_macro_events, %rdi
	callq	defsubr
	movabsq	$Sstore_kbd_macro_event, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_macros.ko_fwd, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$72, %edx
	callq	defvar_kboard
# BB#4:                                 # %do.end.2
	jmp	.LBB11_5
.LBB11_5:                               # %do.body.3
	movabsq	$syms_of_macros.o_fwd.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$globals, %rax
	addq	$688, %rax              # imm = 0x2B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	jmp	.LBB11_7
.LBB11_7:                               # %do.body.5
	movabsq	$syms_of_macros.i_fwd, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$globals, %rax
	addq	$3088, %rax             # imm = 0xC10
	movq	%rax, %rdx
	callq	defvar_int
# BB#8:                                 # %do.end.6
	jmp	.LBB11_9
.LBB11_9:                               # %do.body.7
	movabsq	$syms_of_macros.ko_fwd.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$112, %edx
	callq	defvar_kboard
# BB#10:                                # %do.end.8
	popq	%rbp
	retq
.Lfunc_end11:
	.size	syms_of_macros, .Lfunc_end11-syms_of_macros
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Already defining kbd macro"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Defining kbd macro..."
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Appending to kbd macro..."
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Not defining kbd macro"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Keyboard macro defined"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Can't execute anonymous macro while defining one"
	.size	.L.str.5, 49

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"No kbd macro has been defined"
	.size	.L.str.6, 30

	.type	executing_kbd_macro_iterations,@object # @executing_kbd_macro_iterations
	.comm	executing_kbd_macro_iterations,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Keyboard macros must be strings or vectors"
	.size	.L.str.7, 43

	.type	executing_kbd_macro,@object # @executing_kbd_macro
	.comm	executing_kbd_macro,8,8
	.type	syms_of_macros.o_fwd,@object # @syms_of_macros.o_fwd
	.local	syms_of_macros.o_fwd
	.comm	syms_of_macros.o_fwd,16,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"kbd-macro-termination-hook"
	.size	.L.str.8, 27

	.type	Scancel_kbd_macro_events,@object # @Scancel_kbd_macro_events
	.data
	.align	8
Scancel_kbd_macro_events:
	.quad	167772160               # 0xa000000
	.quad	Fcancel_kbd_macro_events
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.size	Scancel_kbd_macro_events, 48

	.type	syms_of_macros.ko_fwd,@object # @syms_of_macros.ko_fwd
	.local	syms_of_macros.ko_fwd
	.comm	syms_of_macros.ko_fwd,8,4
	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"defining-kbd-macro"
	.size	.L.str.9, 19

	.type	syms_of_macros.o_fwd.10,@object # @syms_of_macros.o_fwd.10
	.local	syms_of_macros.o_fwd.10
	.comm	syms_of_macros.o_fwd.10,16,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"executing-kbd-macro"
	.size	.L.str.11, 20

	.type	syms_of_macros.i_fwd,@object # @syms_of_macros.i_fwd
	.local	syms_of_macros.i_fwd
	.comm	syms_of_macros.i_fwd,16,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"executing-kbd-macro-index"
	.size	.L.str.12, 26

	.type	syms_of_macros.ko_fwd.13,@object # @syms_of_macros.ko_fwd.13
	.local	syms_of_macros.ko_fwd.13
	.comm	syms_of_macros.ko_fwd.13,8,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"last-kbd-macro"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"start-kbd-macro"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"P"
	.size	.L.str.16, 2

	.type	Sstart_kbd_macro,@object # @Sstart_kbd_macro
	.data
	.align	8
Sstart_kbd_macro:
	.quad	167772160               # 0xa000000
	.quad	Fstart_kbd_macro
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	0
	.size	Sstart_kbd_macro, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"end-kbd-macro"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"p"
	.size	.L.str.18, 2

	.type	Send_kbd_macro,@object  # @Send_kbd_macro
	.data
	.align	8
Send_kbd_macro:
	.quad	167772160               # 0xa000000
	.quad	Fend_kbd_macro
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	0
	.size	Send_kbd_macro, 48

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"call-last-kbd-macro"
	.size	.L.str.19, 20

	.type	Scall_last_kbd_macro,@object # @Scall_last_kbd_macro
	.data
	.align	8
Scall_last_kbd_macro:
	.quad	167772160               # 0xa000000
	.quad	Fcall_last_kbd_macro
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.18
	.quad	0
	.size	Scall_last_kbd_macro, 48

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"execute-kbd-macro"
	.size	.L.str.20, 18

	.type	Sexecute_kbd_macro,@object # @Sexecute_kbd_macro
	.data
	.align	8
Sexecute_kbd_macro:
	.quad	167772160               # 0xa000000
	.quad	Fexecute_kbd_macro
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	0
	.quad	0
	.size	Sexecute_kbd_macro, 48

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"cancel-kbd-macro-events"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"store-kbd-macro-event"
	.size	.L.str.22, 22

	.type	Sstore_kbd_macro_event,@object # @Sstore_kbd_macro_event
	.data
	.align	8
Sstore_kbd_macro_event:
	.quad	167772160               # 0xa000000
	.quad	Fstore_kbd_macro_event
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.size	Sstore_kbd_macro_event, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
