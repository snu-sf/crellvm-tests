	.text
	.file	"eval.bc"
	.globl	backtrace_function
	.align	16, 0x90
	.type	backtrace_function,@function
backtrace_function:                     # @backtrace_function
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	backtrace_function, .Lfunc_end0-backtrace_function
	.cfi_endproc

	.globl	backtrace_args
	.align	16, 0x90
	.type	backtrace_args,@function
backtrace_args:                         # @backtrace_args
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
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	backtrace_args, .Lfunc_end1-backtrace_args
	.cfi_endproc

	.globl	backtrace_p
	.align	16, 0x90
	.type	backtrace_p,@function
backtrace_p:                            # @backtrace_p
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
	movq	-8(%rbp), %rdi
	cmpq	specpdl, %rdi
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	backtrace_p, .Lfunc_end2-backtrace_p
	.cfi_endproc

	.globl	backtrace_top
	.align	16, 0x90
	.type	backtrace_top,@function
backtrace_top:                          # @backtrace_top
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
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, -8(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_p
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB3_2
	jmp	.LBB3_3
.LBB3_2:                                # %land.rhs
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB3_3:                                # %land.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_5
.LBB3_4:                                # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$-32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_1
.LBB3_5:                                # %while.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	backtrace_top, .Lfunc_end3-backtrace_top
	.cfi_endproc

	.globl	backtrace_next
	.align	16, 0x90
	.type	backtrace_next,@function
backtrace_next:                         # @backtrace_next
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
	movq	-8(%rbp), %rdi
	addq	$-32, %rdi
	movq	%rdi, -8(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_p
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB4_2
	jmp	.LBB4_3
.LBB4_2:                                # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$4, %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_5
.LBB4_4:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$-32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_1
.LBB4_5:                                # %while.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	backtrace_next, .Lfunc_end4-backtrace_next
	.cfi_endproc

	.globl	near_C_stack_top
	.align	16, 0x90
	.type	near_C_stack_top,@function
near_C_stack_top:                       # @near_C_stack_top
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
	callq	backtrace_top
	movq	%rax, %rdi
	callq	backtrace_args
	popq	%rbp
	retq
.Lfunc_end5:
	.size	near_C_stack_top, .Lfunc_end5-near_C_stack_top
	.cfi_endproc

	.globl	init_eval_once
	.align	16, 0x90
	.type	init_eval_once,@function
init_eval_once:                         # @init_eval_once
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
	movl	$1632, %eax             # imm = 0x660
	movl	%eax, %edi
	callq	xmalloc
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	$50, specpdl_size
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, specpdl_ptr
	movq	%rax, specpdl
	movq	$1300, globals+3176     # imm = 0x514
	movq	$800, globals+3168      # imm = 0x320
	callq	builtin_lisp_symbol
	movq	%rax, Vrun_hooks
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_eval_once, .Lfunc_end6-init_eval_once
	.cfi_endproc

	.globl	init_eval
	.align	16, 0x90
	.type	init_eval,@function
init_eval:                              # @init_eval
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
	movl	$957, %edi              # imm = 0x3BD
	movabsq	$handlerlist_sentinel, %rax
	movq	$0, byte_stack_list
	movq	specpdl, %rcx
	movq	%rcx, specpdl_ptr
	movq	%rax, handlerlist_sentinel+32
	movq	%rax, handlerlist
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	push_handler
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	$0, handlerlist_sentinel+32
	movq	$0, handlerlist_sentinel+24
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
	movb	$0, globals+3372
	movq	$0, lisp_eval_depth
	movq	$-1, when_entered_debugger
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	init_eval, .Lfunc_end7-init_eval
	.cfi_endproc

	.globl	push_handler
	.align	16, 0x90
	.type	push_handler,@function
push_handler:                           # @push_handler
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	push_handler_nosignal
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$288, %eax              # imm = 0x120
	movl	%eax, %edi
	callq	memory_full
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	push_handler, .Lfunc_end8-push_handler
	.cfi_endproc

	.globl	call_debugger
	.align	16, 0x90
	.type	call_debugger,@function
call_debugger:                          # @call_debugger
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	movq	globals+3168, %rax
	movq	%rax, -40(%rbp)
	movq	globals+3176, %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB9_2
# BB#1:                                 # %cond.true
	movq	globals+3176, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	lisp_eval_depth, %rax
	addq	$40, %rax
	cmpq	globals+3168, %rax
	jle	.LBB9_5
# BB#4:                                 # %if.then
	movq	lisp_eval_depth, %rax
	addq	$40, %rax
	movq	%rax, globals+3168
.LBB9_5:                                # %if.end
	movq	globals+3176, %rax
	subq	$200, %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB9_7
# BB#6:                                 # %if.then.4
	movq	-24(%rbp), %rax
	addq	$200, %rax
	movq	%rax, globals+3176
.LBB9_7:                                # %if.end.6
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_9
# BB#8:                                 # %if.then.8
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	callq	grow_specpdl
.LBB9_9:                                # %if.end.9
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movabsq	$restore_stack_limits, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	testb	$1, globals+3378
	je	.LBB9_11
# BB#10:                                # %if.then.14
	callq	cancel_hourglass
.LBB9_11:                               # %if.end.15
	movabsq	$.L.str, %rdi
	movb	$0, globals+3372
	movq	globals+3208, %rax
	movq	%rax, when_entered_debugger
	movb	redisplaying_p, %cl
	andb	$1, %cl
	movb	%cl, -9(%rbp)
	movb	$0, redisplaying_p
	callq	intern
	testb	$1, -9(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB9_13
# BB#12:                                # %cond.true.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB9_14
.LBB9_13:                               # %cond.false.21
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB9_14:                               # %cond.end.23
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$548, %edi              # imm = 0x224
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$539, %edi              # imm = 0x21B
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	globals+464, %rdi
	movq	-8(%rbp), %rsi
	callq	apply1
	movq	%rax, -32(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.31
	callq	Ftop_level
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB9_16:                               # %if.end.32
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unbind_to
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	call_debugger, .Lfunc_end9-call_debugger
	.cfi_endproc

	.align	16, 0x90
	.type	grow_specpdl,@function
grow_specpdl:                           # @grow_specpdl
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
	movq	specpdl_ptr, %rax
	addq	$32, %rax
	movq	%rax, specpdl_ptr
	movq	specpdl_ptr, %rax
	movq	specpdl, %rcx
	movq	specpdl_size, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_11
# BB#1:                                 # %if.then
	callq	SPECPDL_INDEX
	movabsq	$9223372036854774807, %rcx # imm = 0x7FFFFFFFFFFFFC17
	movq	%rax, -8(%rbp)
	cmpq	%rcx, globals+3176
	jge	.LBB10_3
# BB#2:                                 # %cond.true
	movq	globals+3176, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	movabsq	$9223372036854774807, %rax # imm = 0x7FFFFFFFFFFFFC17
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_4
.LBB10_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	specpdl, %rax
	addq	$-32, %rax
	movq	%rax, -24(%rbp)
	movq	specpdl_size, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	specpdl_size, %rax
	jg	.LBB10_10
# BB#5:                                 # %if.then.4
	cmpq	$400, globals+3176      # imm = 0x190
	jge	.LBB10_7
# BB#6:                                 # %if.then.6
	movq	$400, globals+3176      # imm = 0x190
	movq	$400, -16(%rbp)         # imm = 0x190
.LBB10_7:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	specpdl_size, %rax
	jg	.LBB10_9
# BB#8:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.47, %rdi
	movq	%rax, %rsi
	callq	signal_error
.LBB10_9:                               # %if.end.10
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.11
	leaq	-32(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$32, %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	xpalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, specpdl
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, specpdl_size
	movq	specpdl, %rax
	movq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, specpdl_ptr
.LBB10_11:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	grow_specpdl, .Lfunc_end10-grow_specpdl
	.cfi_endproc

	.globl	record_unwind_protect
	.align	16, 0x90
	.type	record_unwind_protect,@function
record_unwind_protect:                  # @record_unwind_protect
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
	movq	%rsi, -16(%rbp)
	movq	specpdl_ptr, %rsi
	movb	$0, (%rsi)
	movq	-8(%rbp), %rsi
	movq	specpdl_ptr, %rdi
	movq	%rsi, 8(%rdi)
	movq	-16(%rbp), %rsi
	movq	specpdl_ptr, %rdi
	movq	%rsi, 16(%rdi)
	callq	grow_specpdl
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	record_unwind_protect, .Lfunc_end11-record_unwind_protect
	.cfi_endproc

	.align	16, 0x90
	.type	restore_stack_limits,@function
restore_stack_limits:                   # @restore_stack_limits
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	sarq	$2, %rdi
	movq	%rdi, globals+3176
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	sarq	$2, %rdi
	movq	%rdi, globals+3168
	popq	%rbp
	retq
.Lfunc_end12:
	.size	restore_stack_limits, .Lfunc_end12-restore_stack_limits
	.cfi_endproc

	.globl	specbind
	.align	16, 0x90
	.type	specbind,@function
specbind:                               # @specbind
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB13_3:                               # %cond.end
	movabsq	$lispsym, %rax
	movq	-8(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
.LBB13_4:                               # %start
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	ja	.LBB13_24
# BB#26:                                # %start
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_5:                               # %sw.bb
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_variable
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	make_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB13_4
.LBB13_6:                               # %sw.bb.4
	movq	specpdl_ptr, %rax
	movb	$5, (%rax)
	movq	-8(%rbp), %rax
	movq	specpdl_ptr, %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	specpdl_ptr, %rcx
	movq	%rax, 16(%rcx)
	callq	grow_specpdl
	movq	-24(%rbp), %rax
	movw	(%rax), %dx
	shrw	$4, %dx
	andw	$3, %dx
	movzwl	%dx, %esi
	cmpl	$0, %esi
	jne	.LBB13_8
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB13_9
.LBB13_8:                               # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_internal
.LBB13_9:                               # %if.end
	jmp	.LBB13_25
.LBB13_10:                              # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movb	(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB13_12
# BB#11:                                # %if.then.22
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	error
.LBB13_12:                              # %if.end.23
	jmp	.LBB13_13
.LBB13_13:                              # %sw.bb.24
	movq	-8(%rbp), %rdi
	callq	find_symbol_value
	movq	%rax, -32(%rbp)
	movq	specpdl_ptr, %rax
	movb	$6, (%rax)
	movq	-8(%rbp), %rax
	movq	specpdl_ptr, %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	specpdl_ptr, %rdi
	movq	%rax, 16(%rdi)
	callq	Fcurrent_buffer
	movq	specpdl_ptr, %rdi
	movq	%rax, 24(%rdi)
	movq	-24(%rbp), %rax
	movw	(%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$2, %edx
	jne	.LBB13_17
# BB#14:                                # %if.then.39
	movq	-24(%rbp), %rdi
	callq	SYMBOL_BLV
	movq	%rax, %rdi
	callq	blv_found
	cmpl	$0, %eax
	jne	.LBB13_16
# BB#15:                                # %if.then.43
	movq	specpdl_ptr, %rax
	movb	$7, (%rax)
.LBB13_16:                              # %if.end.45
	jmp	.LBB13_23
.LBB13_17:                              # %if.else.46
	movq	-24(%rbp), %rdi
	callq	SYMBOL_FWD
	movq	%rax, %rdi
	callq	BUFFER_OBJFWDP
	testb	$1, %al
	jne	.LBB13_18
	jmp	.LBB13_21
.LBB13_18:                              # %if.then.49
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB13_20
# BB#19:                                # %if.then.55
	movq	specpdl_ptr, %rax
	movb	$7, (%rax)
	callq	grow_specpdl
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fset_default
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB13_25
.LBB13_20:                              # %if.end.58
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.59
	movq	specpdl_ptr, %rax
	movb	$5, (%rax)
.LBB13_22:                              # %if.end.61
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.62
	callq	grow_specpdl
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_internal
	jmp	.LBB13_25
.LBB13_24:                              # %sw.default
	callq	emacs_abort
.LBB13_25:                              # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	specbind, .Lfunc_end13-specbind
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_5
	.quad	.LBB13_10
	.quad	.LBB13_13
	.quad	.LBB13_6

	.text
	.globl	apply1
	.align	16, 0x90
	.type	apply1,@function
apply1:                                 # @apply1
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-8(%rbp), %rsi
	callq	Ffuncall
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movl	$2, %eax
	movl	%eax, %edi
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	callq	Fapply
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	apply1, .Lfunc_end14-apply1
	.cfi_endproc

	.globl	unbind_to
	.align	16, 0x90
	.type	unbind_to,@function
unbind_to:                              # @unbind_to
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	globals+1928, %rsi
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	specpdl_ptr, %rax
	movq	specpdl, %rcx
	movq	-8(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	je	.LBB15_18
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr(%rip), %rax
	movq	%rax, %rcx
	addq	$-32, %rcx
	movq	%rcx, specpdl_ptr(%rip)
	movzbl	-32(%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$7, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	ja	.LBB15_17
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_3:                               # %sw.bb
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rax
	movq	8(%rax), %rax
	movq	specpdl_ptr, %rcx
	movq	16(%rcx), %rdi
	callq	*%rax
	jmp	.LBB15_17
.LBB15_4:                               # %sw.bb.2
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rax
	movq	8(%rax), %rax
	movq	specpdl_ptr, %rcx
	movq	16(%rcx), %rdi
	callq	*%rax
	jmp	.LBB15_17
.LBB15_5:                               # %sw.bb.6
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rax
	movq	8(%rax), %rax
	movq	specpdl_ptr, %rcx
	movl	16(%rcx), %edi
	callq	*%rax
	jmp	.LBB15_17
.LBB15_6:                               # %sw.bb.10
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rax
	callq	*8(%rax)
	jmp	.LBB15_17
.LBB15_7:                               # %sw.bb.12
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_17
.LBB15_8:                               # %sw.bb.13
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rdi
	callq	specpdl_symbol
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$4, %edx
	jne	.LBB15_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rdi
	callq	specpdl_old_value
	movq	-32(%rbp), %rdi
	subq	$0, %rdi
	movq	%rax, lispsym+16(,%rdi)
	jmp	.LBB15_17
.LBB15_11:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_12
.LBB15_12:                              # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_13
.LBB15_13:                              # %sw.bb.26
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rdi
	callq	specpdl_symbol
	movq	specpdl_ptr, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	specpdl_old_value
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_default
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_17
.LBB15_14:                              # %sw.bb.30
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	specpdl_ptr, %rdi
	callq	specpdl_symbol
	movq	%rax, -40(%rbp)
	movq	specpdl_ptr, %rdi
	callq	specpdl_where
	movq	%rax, -48(%rbp)
	movq	specpdl_ptr, %rdi
	callq	specpdl_old_value
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_16
# BB#15:                                # %if.then.38
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	set_internal
.LBB15_16:                              # %if.end.39
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %sw.epilog
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_1
.LBB15_18:                              # %while.end
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_21
# BB#19:                                # %land.lhs.true.43
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_21
# BB#20:                                # %if.then.47
	movq	-24(%rbp), %rax
	movq	%rax, globals+1928
.LBB15_21:                              # %if.end.48
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	unbind_to, .Lfunc_end15-unbind_to
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7
	.quad	.LBB15_8
	.quad	.LBB15_14
	.quad	.LBB15_13

	.text
	.globl	For
	.align	16, 0x90
	.type	For,@function
For:                                    # @For
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_4
# BB#3:                                 # %if.then
	jmp	.LBB16_5
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_1
.LBB16_5:                               # %while.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	For, .Lfunc_end16-For
	.cfi_endproc

	.globl	eval_sub
	.align	16, 0x90
	.type	eval_sub,@function
eval_sub:                               # @eval_sub
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
	subq	$1264, %rsp             # imm = 0x4F0
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB17_7
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	globals+1176, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rdi
	movq	globals+1176, %rsi
	callq	Fassq
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB17_4
.LBB17_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB17_4:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_6
# BB#5:                                 # %if.then.10
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_500
.LBB17_6:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	Fsymbol_value
	movq	%rax, -8(%rbp)
	jmp	.LBB17_500
.LBB17_7:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB17_9
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_500
.LBB17_9:                               # %if.end.17
	jmp	.LBB17_10
.LBB17_10:                              # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_13
# BB#11:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_13
# BB#12:                                # %if.then.24
	callq	process_quit_flag
	jmp	.LBB17_16
.LBB17_13:                              # %if.else.25
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB17_15
# BB#14:                                # %if.then.26
	callq	process_pending_signals
.LBB17_15:                              # %if.end.27
	jmp	.LBB17_16
.LBB17_16:                              # %if.end.28
	jmp	.LBB17_17
.LBB17_17:                              # %do.end
	callq	maybe_gc
	movq	lisp_eval_depth, %rax
	addq	$1, %rax
	movq	%rax, lisp_eval_depth
	cmpq	globals+3168, %rax
	jle	.LBB17_23
# BB#18:                                # %if.then.31
	cmpq	$100, globals+3168
	jge	.LBB17_20
# BB#19:                                # %if.then.34
	movq	$100, globals+3168
.LBB17_20:                              # %if.end.35
	movq	lisp_eval_depth, %rax
	cmpq	globals+3168, %rax
	jle	.LBB17_22
# BB#21:                                # %if.then.38
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB17_22:                              # %if.end.39
	jmp	.LBB17_23
.LBB17_23:                              # %if.end.40
	leaq	-48(%rbp), %rsi
	movq	$-1, %rdx
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	record_in_backtrace
	movq	%rax, -64(%rbp)
	testb	$1, globals+3372
	je	.LBB17_25
# BB#24:                                # %if.then.47
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_debug_on_call
.LBB17_25:                              # %if.end.49
	jmp	.LBB17_26
.LBB17_26:                              # %retry
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB17_28
# BB#27:                                # %if.then.54
                                        #   in Loop: Header=BB17_26 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	Ffunction
	movq	%rax, -24(%rbp)
	jmp	.LBB17_32
.LBB17_28:                              # %if.else.58
                                        #   in Loop: Header=BB17_26 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_31
# BB#29:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-24(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_31
# BB#30:                                # %if.then.68
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_function
	movq	%rax, -24(%rbp)
.LBB17_31:                              # %if.end.70
                                        #   in Loop: Header=BB17_26 Depth=1
	jmp	.LBB17_32
.LBB17_32:                              # %if.end.71
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-24(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB17_33
	jmp	.LBB17_476
.LBB17_33:                              # %if.then.73
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	Flength
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswq	16(%rax), %rax
	movq	-288(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_36
# BB#34:                                # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$0, %ecx
	jl	.LBB17_37
# BB#35:                                # %land.lhs.true.83
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswq	18(%rax), %rax
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jge	.LBB17_37
.LBB17_36:                              # %if.then.90
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.LBB17_37:                              # %if.else.92
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$-1, %ecx
	jne	.LBB17_39
# BB#38:                                # %if.then.98
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-144(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_474
.LBB17_39:                              # %if.else.102
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$-2, %ecx
	jne	.LBB17_457
# BB#40:                                # %if.then.108
	movq	$0, -168(%rbp)
	movq	$16384, -176(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -184(%rbp)
	movb	$0, -185(%rbp)
# BB#41:                                # %do.body.110
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_42
	jmp	.LBB17_121
.LBB17_42:                              # %cond.true.111
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_43
	jmp	.LBB17_82
.LBB17_43:                              # %cond.true.112
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_45
# BB#44:                                # %cond.true.119
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB17_46
.LBB17_45:                              # %cond.false.139
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -292(%rbp)        # 4-byte Spill
.LBB17_46:                              # %cond.end.146
	movl	-292(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB17_48
# BB#47:                                # %land.lhs.true.150
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB17_74
.LBB17_48:                              # %lor.lhs.false.156
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_49
	jmp	.LBB17_60
.LBB17_49:                              # %cond.true.157
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB17_54
# BB#50:                                # %cond.true.163
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -296(%rbp)        # 4-byte Spill
	jge	.LBB17_52
# BB#51:                                # %cond.true.175
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB17_53
.LBB17_52:                              # %cond.false.186
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
.LBB17_53:                              # %cond.end.193
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-296(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB17_74
	jmp	.LBB17_71
.LBB17_54:                              # %cond.false.197
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_55
	jmp	.LBB17_56
.LBB17_55:                              # %cond.true.198
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_74
	jmp	.LBB17_71
.LBB17_56:                              # %cond.false.199
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_58
# BB#57:                                # %cond.true.208
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB17_59
.LBB17_58:                              # %cond.false.230
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -304(%rbp)        # 4-byte Spill
.LBB17_59:                              # %cond.end.237
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	sarq	$2, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_74
	jmp	.LBB17_71
.LBB17_60:                              # %cond.false.245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_61
	jmp	.LBB17_62
.LBB17_61:                              # %cond.true.246
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_74
	jmp	.LBB17_71
.LBB17_62:                              # %cond.false.247
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB17_67
# BB#63:                                # %cond.true.253
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jge	.LBB17_65
# BB#64:                                # %cond.true.265
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB17_66
.LBB17_65:                              # %cond.false.287
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
.LBB17_66:                              # %cond.end.294
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-308(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB17_74
	jmp	.LBB17_71
.LBB17_67:                              # %cond.false.299
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_69
# BB#68:                                # %cond.true.308
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB17_70
.LBB17_69:                              # %cond.false.319
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -316(%rbp)        # 4-byte Spill
.LBB17_70:                              # %cond.end.326
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	sarq	$2, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_74
.LBB17_71:                              # %lor.lhs.false.334
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_73
# BB#72:                                # %land.lhs.true.343
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB17_74
.LBB17_73:                              # %lor.lhs.false.350
	movl	$127, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB17_78
.LBB17_74:                              # %cond.true.357
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB17_76
# BB#75:                                # %cond.true.364
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -320(%rbp)        # 4-byte Spill
	jmp	.LBB17_77
.LBB17_76:                              # %cond.false.371
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -320(%rbp)        # 4-byte Spill
.LBB17_77:                              # %cond.end.380
	movl	-320(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_78:                              # %cond.false.383
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB17_80
# BB#79:                                # %cond.true.390
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB17_81
.LBB17_80:                              # %cond.false.397
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -324(%rbp)        # 4-byte Spill
.LBB17_81:                              # %cond.end.406
	movl	-324(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_82:                              # %cond.false.409
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_84
# BB#83:                                # %cond.true.416
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB17_85
.LBB17_84:                              # %cond.false.435
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB17_85:                              # %cond.end.440
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_87
# BB#86:                                # %land.lhs.true.444
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_113
.LBB17_87:                              # %lor.lhs.false.448
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_88
	jmp	.LBB17_99
.LBB17_88:                              # %cond.true.449
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_93
# BB#89:                                # %cond.true.453
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB17_91
# BB#90:                                # %cond.true.461
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB17_92
.LBB17_91:                              # %cond.false.470
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB17_92:                              # %cond.end.475
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_113
	jmp	.LBB17_110
.LBB17_93:                              # %cond.false.480
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_94
	jmp	.LBB17_95
.LBB17_94:                              # %cond.true.481
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_113
	jmp	.LBB17_110
.LBB17_95:                              # %cond.false.482
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_97
# BB#96:                                # %cond.true.489
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB17_98
.LBB17_97:                              # %cond.false.508
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB17_98:                              # %cond.end.513
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_113
	jmp	.LBB17_110
.LBB17_99:                              # %cond.false.519
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_100
	jmp	.LBB17_101
.LBB17_100:                             # %cond.true.520
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_113
	jmp	.LBB17_110
.LBB17_101:                             # %cond.false.521
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_106
# BB#102:                               # %cond.true.525
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jge	.LBB17_104
# BB#103:                               # %cond.true.533
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB17_105
.LBB17_104:                             # %cond.false.552
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB17_105:                             # %cond.end.557
	movq	-392(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	cqto
	movq	-400(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_113
	jmp	.LBB17_110
.LBB17_106:                             # %cond.false.562
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_108
# BB#107:                               # %cond.true.569
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB17_109
.LBB17_108:                             # %cond.false.578
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB17_109:                             # %cond.end.583
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	cqto
	movq	-416(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_113
.LBB17_110:                             # %lor.lhs.false.589
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_112
# BB#111:                               # %land.lhs.true.596
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB17_113
.LBB17_112:                             # %lor.lhs.false.601
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	sarq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB17_117
.LBB17_113:                             # %cond.true.606
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB17_115
# BB#114:                               # %cond.true.613
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB17_116
.LBB17_115:                             # %cond.false.620
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
.LBB17_116:                             # %cond.end.629
	movl	-420(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_117:                             # %cond.false.632
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB17_119
# BB#118:                               # %cond.true.639
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB17_120
.LBB17_119:                             # %cond.false.646
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
.LBB17_120:                             # %cond.end.655
	movl	-424(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_121:                             # %cond.false.658
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_122
	jmp	.LBB17_201
.LBB17_122:                             # %cond.true.659
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_123
	jmp	.LBB17_162
.LBB17_123:                             # %cond.true.660
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_125
# BB#124:                               # %cond.true.669
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB17_126
.LBB17_125:                             # %cond.false.691
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
.LBB17_126:                             # %cond.end.698
	movl	-428(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB17_128
# BB#127:                               # %land.lhs.true.702
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB17_154
.LBB17_128:                             # %lor.lhs.false.708
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_129
	jmp	.LBB17_140
.LBB17_129:                             # %cond.true.709
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB17_134
# BB#130:                               # %cond.true.715
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -432(%rbp)        # 4-byte Spill
	jge	.LBB17_132
# BB#131:                               # %cond.true.727
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -436(%rbp)        # 4-byte Spill
	jmp	.LBB17_133
.LBB17_132:                             # %cond.false.738
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -436(%rbp)        # 4-byte Spill
.LBB17_133:                             # %cond.end.745
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-432(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB17_154
	jmp	.LBB17_151
.LBB17_134:                             # %cond.false.750
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_135
	jmp	.LBB17_136
.LBB17_135:                             # %cond.true.751
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_154
	jmp	.LBB17_151
.LBB17_136:                             # %cond.false.752
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_138
# BB#137:                               # %cond.true.761
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB17_139
.LBB17_138:                             # %cond.false.783
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -440(%rbp)        # 4-byte Spill
.LBB17_139:                             # %cond.end.790
	movl	-440(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	sarq	$2, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_154
	jmp	.LBB17_151
.LBB17_140:                             # %cond.false.798
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_141
	jmp	.LBB17_142
.LBB17_141:                             # %cond.true.799
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_154
	jmp	.LBB17_151
.LBB17_142:                             # %cond.false.800
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB17_147
# BB#143:                               # %cond.true.806
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -444(%rbp)        # 4-byte Spill
	jge	.LBB17_145
# BB#144:                               # %cond.true.818
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB17_146
.LBB17_145:                             # %cond.false.840
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -448(%rbp)        # 4-byte Spill
.LBB17_146:                             # %cond.end.847
	movl	-448(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-444(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB17_154
	jmp	.LBB17_151
.LBB17_147:                             # %cond.false.852
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_149
# BB#148:                               # %cond.true.861
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -452(%rbp)        # 4-byte Spill
	jmp	.LBB17_150
.LBB17_149:                             # %cond.false.872
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -452(%rbp)        # 4-byte Spill
.LBB17_150:                             # %cond.end.879
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	sarq	$2, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_154
.LBB17_151:                             # %lor.lhs.false.887
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB17_153
# BB#152:                               # %land.lhs.true.896
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB17_154
.LBB17_153:                             # %lor.lhs.false.903
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB17_158
.LBB17_154:                             # %cond.true.910
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB17_156
# BB#155:                               # %cond.true.917
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -456(%rbp)        # 4-byte Spill
	jmp	.LBB17_157
.LBB17_156:                             # %cond.false.924
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -456(%rbp)        # 4-byte Spill
.LBB17_157:                             # %cond.end.933
	movl	-456(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_158:                             # %cond.false.936
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB17_160
# BB#159:                               # %cond.true.943
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -460(%rbp)        # 4-byte Spill
	jmp	.LBB17_161
.LBB17_160:                             # %cond.false.950
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -460(%rbp)        # 4-byte Spill
.LBB17_161:                             # %cond.end.959
	movl	-460(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_162:                             # %cond.false.962
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_164
# BB#163:                               # %cond.true.969
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB17_165
.LBB17_164:                             # %cond.false.988
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB17_165:                             # %cond.end.993
	movq	-472(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_167
# BB#166:                               # %land.lhs.true.997
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_193
.LBB17_167:                             # %lor.lhs.false.1001
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_168
	jmp	.LBB17_179
.LBB17_168:                             # %cond.true.1002
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_173
# BB#169:                               # %cond.true.1006
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jge	.LBB17_171
# BB#170:                               # %cond.true.1014
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB17_172
.LBB17_171:                             # %cond.false.1023
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB17_172:                             # %cond.end.1028
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_193
	jmp	.LBB17_190
.LBB17_173:                             # %cond.false.1033
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_174
	jmp	.LBB17_175
.LBB17_174:                             # %cond.true.1034
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_193
	jmp	.LBB17_190
.LBB17_175:                             # %cond.false.1035
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_177
# BB#176:                               # %cond.true.1042
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB17_178
.LBB17_177:                             # %cond.false.1061
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB17_178:                             # %cond.end.1066
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_193
	jmp	.LBB17_190
.LBB17_179:                             # %cond.false.1072
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_180
	jmp	.LBB17_181
.LBB17_180:                             # %cond.true.1073
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_193
	jmp	.LBB17_190
.LBB17_181:                             # %cond.false.1074
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_186
# BB#182:                               # %cond.true.1078
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jge	.LBB17_184
# BB#183:                               # %cond.true.1086
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB17_185
.LBB17_184:                             # %cond.false.1105
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB17_185:                             # %cond.end.1110
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_193
	jmp	.LBB17_190
.LBB17_186:                             # %cond.false.1115
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_188
# BB#187:                               # %cond.true.1122
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB17_189
.LBB17_188:                             # %cond.false.1131
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB17_189:                             # %cond.end.1136
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_193
.LBB17_190:                             # %lor.lhs.false.1142
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_192
# BB#191:                               # %land.lhs.true.1149
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB17_193
.LBB17_192:                             # %lor.lhs.false.1154
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	sarq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB17_197
.LBB17_193:                             # %cond.true.1159
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB17_195
# BB#194:                               # %cond.true.1166
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -556(%rbp)        # 4-byte Spill
	jmp	.LBB17_196
.LBB17_195:                             # %cond.false.1173
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -556(%rbp)        # 4-byte Spill
.LBB17_196:                             # %cond.end.1182
	movl	-556(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_197:                             # %cond.false.1185
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB17_199
# BB#198:                               # %cond.true.1192
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -560(%rbp)        # 4-byte Spill
	jmp	.LBB17_200
.LBB17_199:                             # %cond.false.1199
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -560(%rbp)        # 4-byte Spill
.LBB17_200:                             # %cond.end.1208
	movl	-560(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_201:                             # %cond.false.1211
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_202
	jmp	.LBB17_281
.LBB17_202:                             # %cond.true.1212
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_203
	jmp	.LBB17_242
.LBB17_203:                             # %cond.true.1213
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB17_205
# BB#204:                               # %cond.true.1221
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB17_206
.LBB17_205:                             # %cond.false.1241
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
.LBB17_206:                             # %cond.end.1247
	movl	-564(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB17_208
# BB#207:                               # %land.lhs.true.1251
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB17_234
.LBB17_208:                             # %lor.lhs.false.1256
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_209
	jmp	.LBB17_220
.LBB17_209:                             # %cond.true.1257
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB17_214
# BB#210:                               # %cond.true.1262
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -568(%rbp)        # 4-byte Spill
	jge	.LBB17_212
# BB#211:                               # %cond.true.1272
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	jmp	.LBB17_213
.LBB17_212:                             # %cond.false.1282
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
.LBB17_213:                             # %cond.end.1288
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-568(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB17_234
	jmp	.LBB17_231
.LBB17_214:                             # %cond.false.1293
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_215
	jmp	.LBB17_216
.LBB17_215:                             # %cond.true.1294
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_234
	jmp	.LBB17_231
.LBB17_216:                             # %cond.false.1295
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB17_218
# BB#217:                               # %cond.true.1303
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB17_219
.LBB17_218:                             # %cond.false.1323
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
.LBB17_219:                             # %cond.end.1329
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	sarq	$2, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_234
	jmp	.LBB17_231
.LBB17_220:                             # %cond.false.1336
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_221
	jmp	.LBB17_222
.LBB17_221:                             # %cond.true.1337
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_234
	jmp	.LBB17_231
.LBB17_222:                             # %cond.false.1338
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB17_227
# BB#223:                               # %cond.true.1343
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	jge	.LBB17_225
# BB#224:                               # %cond.true.1353
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB17_226
.LBB17_225:                             # %cond.false.1373
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -584(%rbp)        # 4-byte Spill
.LBB17_226:                             # %cond.end.1379
	movl	-584(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-580(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB17_234
	jmp	.LBB17_231
.LBB17_227:                             # %cond.false.1384
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB17_229
# BB#228:                               # %cond.true.1392
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	jmp	.LBB17_230
.LBB17_229:                             # %cond.false.1402
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
.LBB17_230:                             # %cond.end.1408
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-152(%rbp), %rsi
	sarq	$2, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB17_234
.LBB17_231:                             # %lor.lhs.false.1415
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB17_233
# BB#232:                               # %land.lhs.true.1423
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB17_234
.LBB17_233:                             # %lor.lhs.false.1429
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB17_238
.LBB17_234:                             # %cond.true.1435
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB17_236
# BB#235:                               # %cond.true.1441
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -592(%rbp)        # 4-byte Spill
	jmp	.LBB17_237
.LBB17_236:                             # %cond.false.1445
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -592(%rbp)        # 4-byte Spill
.LBB17_237:                             # %cond.end.1451
	movl	-592(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_238:                             # %cond.false.1454
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB17_240
# BB#239:                               # %cond.true.1460
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	jmp	.LBB17_241
.LBB17_240:                             # %cond.false.1464
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -596(%rbp)        # 4-byte Spill
.LBB17_241:                             # %cond.end.1470
	movl	-596(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_242:                             # %cond.false.1473
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_244
# BB#243:                               # %cond.true.1480
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB17_245
.LBB17_244:                             # %cond.false.1499
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB17_245:                             # %cond.end.1504
	movq	-608(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_247
# BB#246:                               # %land.lhs.true.1508
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_273
.LBB17_247:                             # %lor.lhs.false.1512
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_248
	jmp	.LBB17_259
.LBB17_248:                             # %cond.true.1513
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_253
# BB#249:                               # %cond.true.1517
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jge	.LBB17_251
# BB#250:                               # %cond.true.1525
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB17_252
.LBB17_251:                             # %cond.false.1534
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB17_252:                             # %cond.end.1539
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_273
	jmp	.LBB17_270
.LBB17_253:                             # %cond.false.1544
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_254
	jmp	.LBB17_255
.LBB17_254:                             # %cond.true.1545
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_273
	jmp	.LBB17_270
.LBB17_255:                             # %cond.false.1546
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_257
# BB#256:                               # %cond.true.1553
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB17_258
.LBB17_257:                             # %cond.false.1572
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB17_258:                             # %cond.end.1577
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_273
	jmp	.LBB17_270
.LBB17_259:                             # %cond.false.1583
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_260
	jmp	.LBB17_261
.LBB17_260:                             # %cond.true.1584
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_273
	jmp	.LBB17_270
.LBB17_261:                             # %cond.false.1585
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_266
# BB#262:                               # %cond.true.1589
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jge	.LBB17_264
# BB#263:                               # %cond.true.1597
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB17_265
.LBB17_264:                             # %cond.false.1616
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB17_265:                             # %cond.end.1621
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_273
	jmp	.LBB17_270
.LBB17_266:                             # %cond.false.1626
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_268
# BB#267:                               # %cond.true.1633
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB17_269
.LBB17_268:                             # %cond.false.1642
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB17_269:                             # %cond.end.1647
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_273
.LBB17_270:                             # %lor.lhs.false.1653
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_272
# BB#271:                               # %land.lhs.true.1660
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB17_273
.LBB17_272:                             # %lor.lhs.false.1665
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	sarq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB17_277
.LBB17_273:                             # %cond.true.1670
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB17_275
# BB#274:                               # %cond.true.1676
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -692(%rbp)        # 4-byte Spill
	jmp	.LBB17_276
.LBB17_275:                             # %cond.false.1680
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -692(%rbp)        # 4-byte Spill
.LBB17_276:                             # %cond.end.1686
	movl	-692(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_277:                             # %cond.false.1689
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB17_279
# BB#278:                               # %cond.true.1695
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	jmp	.LBB17_280
.LBB17_279:                             # %cond.false.1699
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -696(%rbp)        # 4-byte Spill
.LBB17_280:                             # %cond.end.1705
	movl	-696(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_281:                             # %cond.false.1708
	movb	$1, %al
	testb	$1, %al
	jne	.LBB17_282
	jmp	.LBB17_361
.LBB17_282:                             # %cond.true.1709
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_283
	jmp	.LBB17_322
.LBB17_283:                             # %cond.true.1710
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_285
# BB#284:                               # %cond.true.1717
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB17_286
.LBB17_285:                             # %cond.false.1736
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB17_286:                             # %cond.end.1741
	movq	-704(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_288
# BB#287:                               # %land.lhs.true.1745
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_314
.LBB17_288:                             # %lor.lhs.false.1749
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_289
	jmp	.LBB17_300
.LBB17_289:                             # %cond.true.1750
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_294
# BB#290:                               # %cond.true.1754
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jge	.LBB17_292
# BB#291:                               # %cond.true.1762
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB17_293
.LBB17_292:                             # %cond.false.1771
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB17_293:                             # %cond.end.1776
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_314
	jmp	.LBB17_311
.LBB17_294:                             # %cond.false.1781
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_295
	jmp	.LBB17_296
.LBB17_295:                             # %cond.true.1782
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_314
	jmp	.LBB17_311
.LBB17_296:                             # %cond.false.1783
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_298
# BB#297:                               # %cond.true.1790
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB17_299
.LBB17_298:                             # %cond.false.1809
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB17_299:                             # %cond.end.1814
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_314
	jmp	.LBB17_311
.LBB17_300:                             # %cond.false.1820
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_301
	jmp	.LBB17_302
.LBB17_301:                             # %cond.true.1821
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_314
	jmp	.LBB17_311
.LBB17_302:                             # %cond.false.1822
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_307
# BB#303:                               # %cond.true.1826
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jge	.LBB17_305
# BB#304:                               # %cond.true.1834
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB17_306
.LBB17_305:                             # %cond.false.1853
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB17_306:                             # %cond.end.1858
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-752(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_314
	jmp	.LBB17_311
.LBB17_307:                             # %cond.false.1863
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_309
# BB#308:                               # %cond.true.1870
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB17_310
.LBB17_309:                             # %cond.false.1879
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB17_310:                             # %cond.end.1884
	movq	-776(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	cqto
	movq	-784(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_314
.LBB17_311:                             # %lor.lhs.false.1890
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_313
# BB#312:                               # %land.lhs.true.1897
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB17_314
.LBB17_313:                             # %lor.lhs.false.1902
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB17_318
.LBB17_314:                             # %cond.true.1907
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_316
# BB#315:                               # %cond.true.1912
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB17_317
.LBB17_316:                             # %cond.false.1915
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB17_317:                             # %cond.end.1920
	movq	-792(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_318:                             # %cond.false.1922
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_320
# BB#319:                               # %cond.true.1927
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB17_321
.LBB17_320:                             # %cond.false.1930
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB17_321:                             # %cond.end.1935
	movq	-800(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_322:                             # %cond.false.1937
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_324
# BB#323:                               # %cond.true.1944
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB17_325
.LBB17_324:                             # %cond.false.1963
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB17_325:                             # %cond.end.1968
	movq	-808(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_327
# BB#326:                               # %land.lhs.true.1972
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_353
.LBB17_327:                             # %lor.lhs.false.1976
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_328
	jmp	.LBB17_339
.LBB17_328:                             # %cond.true.1977
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_333
# BB#329:                               # %cond.true.1981
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jge	.LBB17_331
# BB#330:                               # %cond.true.1989
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB17_332
.LBB17_331:                             # %cond.false.1998
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB17_332:                             # %cond.end.2003
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-816(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_353
	jmp	.LBB17_350
.LBB17_333:                             # %cond.false.2008
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_334
	jmp	.LBB17_335
.LBB17_334:                             # %cond.true.2009
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_353
	jmp	.LBB17_350
.LBB17_335:                             # %cond.false.2010
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_337
# BB#336:                               # %cond.true.2017
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB17_338
.LBB17_337:                             # %cond.false.2036
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB17_338:                             # %cond.end.2041
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_353
	jmp	.LBB17_350
.LBB17_339:                             # %cond.false.2047
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_340
	jmp	.LBB17_341
.LBB17_340:                             # %cond.true.2048
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_353
	jmp	.LBB17_350
.LBB17_341:                             # %cond.false.2049
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_346
# BB#342:                               # %cond.true.2053
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jge	.LBB17_344
# BB#343:                               # %cond.true.2061
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB17_345
.LBB17_344:                             # %cond.false.2080
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB17_345:                             # %cond.end.2085
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-856(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_353
	jmp	.LBB17_350
.LBB17_346:                             # %cond.false.2090
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_348
# BB#347:                               # %cond.true.2097
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB17_349
.LBB17_348:                             # %cond.false.2106
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB17_349:                             # %cond.end.2111
	movq	-880(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	cqto
	movq	-888(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_353
.LBB17_350:                             # %lor.lhs.false.2117
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_352
# BB#351:                               # %land.lhs.true.2124
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB17_353
.LBB17_352:                             # %lor.lhs.false.2129
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB17_357
.LBB17_353:                             # %cond.true.2134
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_355
# BB#354:                               # %cond.true.2139
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB17_356
.LBB17_355:                             # %cond.false.2142
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB17_356:                             # %cond.end.2147
	movq	-896(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_357:                             # %cond.false.2149
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_359
# BB#358:                               # %cond.true.2154
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB17_360
.LBB17_359:                             # %cond.false.2157
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB17_360:                             # %cond.end.2162
	movq	-904(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_361:                             # %cond.false.2164
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_362
	jmp	.LBB17_401
.LBB17_362:                             # %cond.true.2165
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_364
# BB#363:                               # %cond.true.2172
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB17_365
.LBB17_364:                             # %cond.false.2191
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB17_365:                             # %cond.end.2196
	movq	-912(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_367
# BB#366:                               # %land.lhs.true.2200
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_393
.LBB17_367:                             # %lor.lhs.false.2204
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_368
	jmp	.LBB17_379
.LBB17_368:                             # %cond.true.2205
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_373
# BB#369:                               # %cond.true.2209
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jge	.LBB17_371
# BB#370:                               # %cond.true.2217
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB17_372
.LBB17_371:                             # %cond.false.2226
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB17_372:                             # %cond.end.2231
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-920(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_393
	jmp	.LBB17_390
.LBB17_373:                             # %cond.false.2236
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_374
	jmp	.LBB17_375
.LBB17_374:                             # %cond.true.2237
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_393
	jmp	.LBB17_390
.LBB17_375:                             # %cond.false.2238
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_377
# BB#376:                               # %cond.true.2245
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB17_378
.LBB17_377:                             # %cond.false.2264
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB17_378:                             # %cond.end.2269
	movq	-944(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	cqto
	movq	-952(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_393
	jmp	.LBB17_390
.LBB17_379:                             # %cond.false.2275
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_380
	jmp	.LBB17_381
.LBB17_380:                             # %cond.true.2276
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_393
	jmp	.LBB17_390
.LBB17_381:                             # %cond.false.2277
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_386
# BB#382:                               # %cond.true.2281
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jge	.LBB17_384
# BB#383:                               # %cond.true.2289
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	jmp	.LBB17_385
.LBB17_384:                             # %cond.false.2308
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB17_385:                             # %cond.end.2313
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	cqto
	movq	-976(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-960(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_393
	jmp	.LBB17_390
.LBB17_386:                             # %cond.false.2318
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_388
# BB#387:                               # %cond.true.2325
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB17_389
.LBB17_388:                             # %cond.false.2334
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB17_389:                             # %cond.end.2339
	movq	-984(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -992(%rbp)        # 8-byte Spill
	cqto
	movq	-992(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_393
.LBB17_390:                             # %lor.lhs.false.2345
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_392
# BB#391:                               # %land.lhs.true.2352
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB17_393
.LBB17_392:                             # %lor.lhs.false.2357
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB17_397
.LBB17_393:                             # %cond.true.2362
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_395
# BB#394:                               # %cond.true.2367
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB17_396
.LBB17_395:                             # %cond.false.2370
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB17_396:                             # %cond.end.2375
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_397:                             # %cond.false.2377
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_399
# BB#398:                               # %cond.true.2382
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB17_400
.LBB17_399:                             # %cond.false.2385
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB17_400:                             # %cond.end.2390
	movq	-1008(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_401:                             # %cond.false.2392
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_403
# BB#402:                               # %cond.true.2399
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB17_404
.LBB17_403:                             # %cond.false.2418
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB17_404:                             # %cond.end.2423
	movq	-1016(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB17_406
# BB#405:                               # %land.lhs.true.2427
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB17_432
.LBB17_406:                             # %lor.lhs.false.2431
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_407
	jmp	.LBB17_418
.LBB17_407:                             # %cond.true.2432
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_412
# BB#408:                               # %cond.true.2436
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jge	.LBB17_410
# BB#409:                               # %cond.true.2444
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB17_411
.LBB17_410:                             # %cond.false.2453
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB17_411:                             # %cond.end.2458
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	cqto
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_432
	jmp	.LBB17_429
.LBB17_412:                             # %cond.false.2463
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_413
	jmp	.LBB17_414
.LBB17_413:                             # %cond.true.2464
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_432
	jmp	.LBB17_429
.LBB17_414:                             # %cond.false.2465
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_416
# BB#415:                               # %cond.true.2472
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB17_417
.LBB17_416:                             # %cond.false.2491
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB17_417:                             # %cond.end.2496
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	cqto
	movq	-1056(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_432
	jmp	.LBB17_429
.LBB17_418:                             # %cond.false.2502
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_419
	jmp	.LBB17_420
.LBB17_419:                             # %cond.true.2503
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB17_432
	jmp	.LBB17_429
.LBB17_420:                             # %cond.false.2504
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB17_425
# BB#421:                               # %cond.true.2508
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jge	.LBB17_423
# BB#422:                               # %cond.true.2516
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB17_424
.LBB17_423:                             # %cond.false.2535
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB17_424:                             # %cond.end.2540
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cqto
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB17_432
	jmp	.LBB17_429
.LBB17_425:                             # %cond.false.2545
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_427
# BB#426:                               # %cond.true.2552
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB17_428
.LBB17_427:                             # %cond.false.2561
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB17_428:                             # %cond.end.2566
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
	cqto
	movq	-1096(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB17_432
.LBB17_429:                             # %lor.lhs.false.2572
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB17_431
# BB#430:                               # %land.lhs.true.2579
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB17_432
.LBB17_431:                             # %lor.lhs.false.2584
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB17_436
.LBB17_432:                             # %cond.true.2589
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_434
# BB#433:                               # %cond.true.2594
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB17_435
.LBB17_434:                             # %cond.false.2597
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB17_435:                             # %cond.end.2602
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -200(%rbp)
	testb	$1, %cl
	jne	.LBB17_441
	jmp	.LBB17_440
.LBB17_436:                             # %cond.false.2604
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB17_438
# BB#437:                               # %cond.true.2609
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB17_439
.LBB17_438:                             # %cond.false.2612
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB17_439:                             # %cond.end.2617
	movq	-1112(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -200(%rbp)
	testb	$1, %dl
	jne	.LBB17_441
.LBB17_440:                             # %lor.lhs.false.2619
	movq	$-1, %rax
	cmpq	-200(%rbp), %rax
	jae	.LBB17_442
.LBB17_441:                             # %if.then.2622
	movq	$-1, %rdi
	callq	memory_full
.LBB17_442:                             # %if.else.2623
	movq	-200(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jg	.LBB17_444
# BB#443:                               # %if.then.2626
	movq	-200(%rbp), %rax
	movq	-176(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -176(%rbp)
	movq	-200(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -160(%rbp)
	jmp	.LBB17_445
.LBB17_444:                             # %if.else.2628
	movq	-200(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -208(%rbp)
	movb	$1, -185(%rbp)
	movq	-208(%rbp), %rsi
	callq	record_unwind_protect
.LBB17_445:                             # %if.end.2632
	jmp	.LBB17_446
.LBB17_446:                             # %if.end.2633
	jmp	.LBB17_447
.LBB17_447:                             # %do.end.2634
	jmp	.LBB17_448
.LBB17_448:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB17_449
	jmp	.LBB17_450
.LBB17_449:                             # %while.body
                                        #   in Loop: Header=BB17_448 Depth=1
	movq	-144(%rbp), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movq	-168(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-144(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -144(%rbp)
	jmp	.LBB17_448
.LBB17_450:                             # %while.end
	movq	specpdl, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	set_backtrace_args
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	movq	-160(%rbp), %rsi
	movq	%rcx, %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	lisp_eval_depth, %rax
	addq	$-1, %rax
	movq	%rax, lisp_eval_depth
	movq	specpdl, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	backtrace_debug_on_exit
	testb	$1, %al
	jne	.LBB17_451
	jmp	.LBB17_452
.LBB17_451:                             # %if.then.2650
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, %rdi
	callq	call_debugger
	movq	%rax, -32(%rbp)
.LBB17_452:                             # %if.end.2654
	jmp	.LBB17_453
.LBB17_453:                             # %do.body.2655
	testb	$1, -185(%rbp)
	je	.LBB17_455
# BB#454:                               # %if.then.2657
	xorl	%edi, %edi
	movb	$0, -185(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB17_455:                             # %if.end.2660
	jmp	.LBB17_456
.LBB17_456:                             # %do.end.2661
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_500
.LBB17_457:                             # %if.else.2662
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	movl	%ecx, -216(%rbp)
	movl	$0, -212(%rbp)
.LBB17_458:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-212(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB17_461
# BB#459:                               # %for.body
                                        #   in Loop: Header=BB17_458 Depth=1
	movq	-144(%rbp), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movslq	-212(%rbp), %rdi
	movq	%rax, -128(%rbp,%rdi,8)
	movq	-144(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -144(%rbp)
# BB#460:                               # %for.inc
                                        #   in Loop: Header=BB17_458 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB17_458
.LBB17_461:                             # %for.end
	movq	specpdl(%rip), %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-152(%rbp), %rcx
	sarq	$2, %rcx
	leaq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	set_backtrace_args
	movl	-212(%rbp), %r8d
	movl	%r8d, %eax
	movq	%rax, %rcx
	subq	$8, %rcx
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	ja	.LBB17_471
# BB#501:                               # %for.end
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_462:                             # %sw.bb
	movq	-24(%rbp), %rdi
	callq	XSUBR
	callq	*8(%rax)
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_463:                             # %sw.bb.2678
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_464:                             # %sw.bb.2683
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_465:                             # %sw.bb.2689
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_466:                             # %sw.bb.2696
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_467:                             # %sw.bb.2704
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %r8
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_468:                             # %sw.bb.2713
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %r9
	callq	*%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_469:                             # %sw.bb.2723
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-80(%rbp), %r10
	subq	$16, %rsp
	movq	%r10, (%rsp)
	callq	*%rax
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_470:                             # %sw.bb.2734
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-80(%rbp), %r10
	movq	-72(%rbp), %r11
	subq	$16, %rsp
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	jmp	.LBB17_472
.LBB17_471:                             # %sw.default
	callq	emacs_abort
.LBB17_472:                             # %sw.epilog
	jmp	.LBB17_473
.LBB17_473:                             # %if.end.2746
	jmp	.LBB17_474
.LBB17_474:                             # %if.end.2747
	jmp	.LBB17_475
.LBB17_475:                             # %if.end.2748
	jmp	.LBB17_497
.LBB17_476:                             # %if.else.2749
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-24(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB17_477
	jmp	.LBB17_478
.LBB17_477:                             # %if.then.2751
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	apply_lambda
	movq	%rax, -8(%rbp)
	jmp	.LBB17_500
.LBB17_478:                             # %if.else.2753
                                        #   in Loop: Header=BB17_26 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_480
# BB#479:                               # %if.then.2757
	movl	$1006, %edi             # imm = 0x3EE
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB17_480:                             # %if.end.2759
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB17_482
# BB#481:                               # %if.then.2764
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB17_482:                             # %if.end.2766
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB17_484
# BB#483:                               # %if.then.2773
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB17_484:                             # %if.end.2775
                                        #   in Loop: Header=BB17_26 Depth=1
	movl	$191, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_486
# BB#485:                               # %if.then.2779
                                        #   in Loop: Header=BB17_26 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	-1176(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fautoload_do_load
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB17_26
.LBB17_486:                             # %if.end.2782
	movl	$636, %edi              # imm = 0x27C
	movq	-56(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_491
# BB#487:                               # %if.then.2786
	callq	SPECPDL_INDEX
	movl	$614, %edi              # imm = 0x266
	movq	%rax, -224(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	globals+1176, %rcx
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_489
# BB#488:                               # %cond.true.2792
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB17_490
.LBB17_489:                             # %cond.false.2794
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB17_490:                             # %cond.end.2796
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	apply1
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-232(%rbp), %rdi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	eval_sub
	movq	%rax, -32(%rbp)
	jmp	.LBB17_495
.LBB17_491:                             # %if.else.2803
	movl	$598, %edi              # imm = 0x256
	movq	-56(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_493
# BB#492:                               # %lor.lhs.false.2807
	movl	$271, %edi              # imm = 0x10F
	movq	-56(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_494
.LBB17_493:                             # %if.then.2811
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	apply_lambda
	movq	%rax, -8(%rbp)
	jmp	.LBB17_500
.LBB17_494:                             # %if.else.2813
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB17_495:                             # %if.end.2815
	jmp	.LBB17_496
.LBB17_496:                             # %if.end.2816
	jmp	.LBB17_497
.LBB17_497:                             # %if.end.2817
	movq	lisp_eval_depth, %rax
	addq	$-1, %rax
	movq	%rax, lisp_eval_depth
	movq	specpdl, %rax
	movq	-64(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	backtrace_debug_on_exit
	testb	$1, %al
	jne	.LBB17_498
	jmp	.LBB17_499
.LBB17_498:                             # %if.then.2821
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, %rdi
	callq	call_debugger
	movq	%rax, -32(%rbp)
.LBB17_499:                             # %if.end.2825
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_500:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	eval_sub, .Lfunc_end17-eval_sub
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_462
	.quad	.LBB17_463
	.quad	.LBB17_464
	.quad	.LBB17_465
	.quad	.LBB17_466
	.quad	.LBB17_467
	.quad	.LBB17_468
	.quad	.LBB17_469
	.quad	.LBB17_470

	.text
	.globl	Fand
	.align	16, 0x90
	.type	Fand,@function
Fand:                                   # @Fand
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
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_4
# BB#3:                                 # %if.then
	jmp	.LBB18_5
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_1
.LBB18_5:                               # %while.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fand, .Lfunc_end18-Fand
	.cfi_endproc

	.globl	Fif
	.align	16, 0x90
	.type	Fif,@function
Fif:                                    # @Fif
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movq	%rax, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fprogn
	movq	%rax, -8(%rbp)
.LBB19_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fif, .Lfunc_end19-Fif
	.cfi_endproc

	.globl	Fprogn
	.align	16, 0x90
	.type	Fprogn,@function
Fprogn:                                 # @Fprogn
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	eval_sub
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_1
.LBB20_3:                               # %while.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fprogn, .Lfunc_end20-Fprogn
	.cfi_endproc

	.globl	Fcond
	.align	16, 0x90
	.type	Fcond,@function
Fcond:                                  # @Fcond
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB21_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_6
# BB#3:                                 # %if.then
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_5
# BB#4:                                 # %if.then.10
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fprogn
	movq	%rax, -16(%rbp)
.LBB21_5:                               # %if.end
	jmp	.LBB21_7
.LBB21_6:                               # %if.end.15
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_1
.LBB21_7:                               # %while.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fcond, .Lfunc_end21-Fcond
	.cfi_endproc

	.globl	unwind_body
	.align	16, 0x90
	.type	unwind_body,@function
unwind_body:                            # @unwind_body
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fprogn
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	unwind_body, .Lfunc_end22-unwind_body
	.cfi_endproc

	.globl	Fprog1
	.align	16, 0x90
	.type	Fprog1,@function
Fprog1:                                 # @Fprog1
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-24(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	callq	eval_sub
	movq	%rax, -16(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	eval_sub
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB23_1
.LBB23_3:                               # %while.end
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fprog1, .Lfunc_end23-Fprog1
	.cfi_endproc

	.globl	Fprog2
	.align	16, 0x90
	.type	Fprog2,@function
Fprog2:                                 # @Fprog2
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
	subq	$3, %rdi
	movq	(%rdi), %rdi
	callq	eval_sub
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	Fprog1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fprog2, .Lfunc_end24-Fprog2
	.cfi_endproc

	.globl	Fsetq
	.align	16, 0x90
	.type	Fsetq,@function
Fsetq:                                  # @Fsetq
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB25_12
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	Flength
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB25_3
# BB#2:                                 # %if.then.3
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movl	$854, %edi              # imm = 0x356
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB25_3:                               # %if.end
	jmp	.LBB25_4
.LBB25_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	globals+1176, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB25_8
# BB#6:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rdi
	movq	globals+1176, %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB25_8
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCDR
	jmp	.LBB25_9
.LBB25_8:                               # %if.else
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fset
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB25_9:                               # %if.end.23
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
# BB#10:                                # %do.cond
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB25_4
# BB#11:                                # %do.end
	jmp	.LBB25_12
.LBB25_12:                              # %if.end.32
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fsetq, .Lfunc_end25-Fsetq
	.cfi_endproc

	.globl	xsignal2
	.align	16, 0x90
	.type	xsignal2,@function
xsignal2:                               # @xsignal2
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	list2
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end26:
	.size	xsignal2, .Lfunc_end26-xsignal2
	.cfi_endproc

	.globl	Fquote
	.align	16, 0x90
	.type	Fquote,@function
Fquote:                                 # @Fquote
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
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movl	$783, %edi              # imm = 0x30F
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	Flength
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	xsignal2
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fquote, .Lfunc_end27-Fquote
	.cfi_endproc

	.globl	Ffunction
	.align	16, 0x90
	.type	Ffunction,@function
Ffunction:                              # @Ffunction
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movl	$476, %edi              # imm = 0x1DC
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	Flength
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	xsignal2
.LBB28_2:                               # %if.end
	xorl	%edi, %edi
	movq	globals+1176, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_11
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_11
# BB#4:                                 # %land.lhs.true.12
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_11
# BB#5:                                 # %if.then.18
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_10
# BB#6:                                 # %land.lhs.true.27
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_10
# BB#7:                                 # %land.lhs.true.35
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB28_10
# BB#8:                                 # %land.lhs.true.42
	movl	$34, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB28_10
# BB#9:                                 # %if.then.48
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB28_10:                              # %if.end.65
	movl	$271, %edi              # imm = 0x10F
	callq	builtin_lisp_symbol
	movq	globals+1176, %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	Fcons
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB28_12
.LBB28_11:                              # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB28_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Ffunction, .Lfunc_end28-Ffunction
	.cfi_endproc

	.globl	Fdefvaralias
	.align	16, 0x90
	.type	Fdefvaralias,@function
Fdefvaralias:                           # @Fdefvaralias
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB29_2
# BB#1:                                 # %cond.true
	jmp	.LBB29_3
.LBB29_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB29_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_5
# BB#4:                                 # %cond.true.6
	jmp	.LBB29_6
.LBB29_5:                               # %cond.false.7
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB29_6:                               # %cond.end.9
	movabsq	$lispsym, %rax
	movq	-8(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movw	(%rax), %dx
	shrw	$4, %dx
	andw	$3, %dx
	movzwl	%dx, %esi
	cmpl	$0, %esi
	je	.LBB29_8
# BB#7:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB29_8:                               # %if.end
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	shrl	%ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	ja	.LBB29_12
# BB#22:                                # %if.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI29_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB29_9:                               # %sw.bb
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB29_10:                              # %sw.bb.14
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB29_11:                              # %sw.bb.15
	jmp	.LBB29_13
.LBB29_12:                              # %sw.default
	callq	emacs_abort
.LBB29_13:                              # %sw.epilog
	movq	-16(%rbp), %rdi
	callq	Fboundp
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_15
# BB#14:                                # %if.then.20
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	find_symbol_value
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_internal
.LBB29_15:                              # %if.end.23
	movq	specpdl_ptr, %rax
	movq	%rax, -40(%rbp)
.LBB29_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	specpdl, %rax
	jbe	.LBB29_21
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB29_16 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-32, %rcx
	movq	%rcx, -40(%rbp)
	movzbl	-32(%rax), %edx
	cmpl	$5, %edx
	jl	.LBB29_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB29_16 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	specpdl_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB29_20
# BB#19:                                # %if.then.33
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB29_20:                              # %if.end.34
                                        #   in Loop: Header=BB29_16 Depth=1
	jmp	.LBB29_16
.LBB29_21:                              # %for.end
	movabsq	$lispsym, %rax
	movq	-32(%rbp), %rcx
	movw	(%rcx), %dx
	andw	$-257, %dx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %dx               # imm = 0x100
	movw	%dx, (%rcx)
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	movw	lispsym(,%rcx), %dx
	andw	$-257, %dx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %dx               # imm = 0x100
	movw	%dx, lispsym(,%rcx)
	movq	-32(%rbp), %rcx
	movw	(%rcx), %dx
	andw	$-15, %dx
	orw	$2, %dx
	movw	%dx, (%rcx)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	subq	$0, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	SET_SYMBOL_ALIAS
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %dx
	shrw	$4, %dx
	andw	$3, %dx
	movzwl	%dx, %r8d
	movq	-32(%rbp), %rax
	movw	%r8w, %dx
	movw	(%rax), %r9w
	andw	$3, %dx
	shlw	$4, %dx
	andw	$-49, %r9w
	orw	%dx, %r9w
	movw	%r9w, (%rax)
	movq	-8(%rbp), %rdi
	callq	LOADHIST_ATTACH
	movl	$992, %edi              # imm = 0x3E0
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fdefvaralias, .Lfunc_end29-Fdefvaralias
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI29_0:
	.quad	.LBB29_11
	.quad	.LBB29_10
	.quad	.LBB29_9
	.quad	.LBB29_11

	.text
	.globl	error
	.align	16, 0x90
	.type	error,@function
error:                                  # @error
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB30_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB30_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdi
	movq	%r9, %rsi
	callq	verror
.Lfunc_end30:
	.size	error, .Lfunc_end30-error
	.cfi_endproc

	.align	16, 0x90
	.type	specpdl_symbol,@function
specpdl_symbol:                         # @specpdl_symbol
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
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	specpdl_symbol, .Lfunc_end31-specpdl_symbol
	.cfi_endproc

	.globl	Fdefault_toplevel_value
	.align	16, 0x90
	.type	Fdefault_toplevel_value,@function
Fdefault_toplevel_value:                # @Fdefault_toplevel_value
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	default_toplevel_binding
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB32_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	specpdl_old_value
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB32_3
.LBB32_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	Fdefault_value
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB32_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB32_5:                               # %if.end
	movl	$1007, %edi             # imm = 0x3EF
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.Lfunc_end32:
	.size	Fdefault_toplevel_value, .Lfunc_end32-Fdefault_toplevel_value
	.cfi_endproc

	.align	16, 0x90
	.type	default_toplevel_binding,@function
default_toplevel_binding:               # @default_toplevel_binding
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	specpdl_ptr, %rdi
	movq	%rdi, -24(%rbp)
.LBB33_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	specpdl, %rax
	jbe	.LBB33_9
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-32, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	-32(%rax), %edx
	movl	%edx, %esi
	subl	$5, %esi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%esi, -32(%rbp)         # 4-byte Spill
	jb	.LBB33_6
	jmp	.LBB33_10
.LBB33_10:                              # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB33_3
	jmp	.LBB33_11
.LBB33_11:                              # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB33_6
	jmp	.LBB33_12
.LBB33_12:                              # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB33_7
	jmp	.LBB33_3
.LBB33_3:                               # %sw.bb
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	specpdl_symbol
	cmpq	-8(%rbp), %rax
	jne	.LBB33_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB33_5:                               # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_8
.LBB33_6:                               # %sw.bb.2
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_8
.LBB33_7:                               # %sw.default
	callq	emacs_abort
.LBB33_8:                               # %sw.epilog
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_9:                               # %while.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	default_toplevel_binding, .Lfunc_end33-default_toplevel_binding
	.cfi_endproc

	.align	16, 0x90
	.type	specpdl_old_value,@function
specpdl_old_value:                      # @specpdl_old_value
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	specpdl_old_value, .Lfunc_end34-specpdl_old_value
	.cfi_endproc

	.globl	xsignal1
	.align	16, 0x90
	.type	xsignal1,@function
xsignal1:                               # @xsignal1
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	list1
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end35:
	.size	xsignal1, .Lfunc_end35-xsignal1
	.cfi_endproc

	.globl	Fset_default_toplevel_value
	.align	16, 0x90
	.type	Fset_default_toplevel_value,@function
Fset_default_toplevel_value:            # @Fset_default_toplevel_value
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	default_toplevel_binding
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB36_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_specpdl_old_value
	jmp	.LBB36_3
.LBB36_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fset_default
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB36_3:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fset_default_toplevel_value, .Lfunc_end36-Fset_default_toplevel_value
	.cfi_endproc

	.align	16, 0x90
	.type	set_specpdl_old_value,@function
set_specpdl_old_value:                  # @set_specpdl_old_value
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	set_specpdl_old_value, .Lfunc_end37-set_specpdl_old_value
	.cfi_endproc

	.globl	Fdefvar
	.align	16, 0x90
	.type	Fdefvar,@function
Fdefvar:                                # @Fdefvar
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB38_15
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_4
# BB#3:                                 # %if.then.20
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB38_4:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	Fdefault_boundp
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %cx               # imm = 0x100
	movw	%cx, lispsym(,%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB38_6
# BB#5:                                 # %if.then.25
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	eval_sub
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_default
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB38_10
.LBB38_6:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	default_toplevel_binding
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB38_9
# BB#7:                                 # %land.lhs.true.31
	movq	-40(%rbp), %rdi
	callq	specpdl_old_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_9
# BB#8:                                 # %if.then.36
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	eval_sub
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_specpdl_old_value
.LBB38_9:                               # %if.end.40
	jmp	.LBB38_10
.LBB38_10:                              # %if.end.41
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_14
# BB#11:                                # %if.then.49
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_13
# BB#12:                                # %if.then.53
	movq	-24(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -24(%rbp)
.LBB38_13:                              # %if.end.55
	movl	$992, %edi              # imm = 0x3E0
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB38_14:                              # %if.end.58
	movq	-16(%rbp), %rdi
	callq	LOADHIST_ATTACH
	jmp	.LBB38_20
.LBB38_15:                              # %if.else.59
	xorl	%edi, %edi
	movq	globals+1176, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_18
# BB#16:                                # %land.lhs.true.63
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$8, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB38_18
# BB#17:                                # %if.then.68
	movq	-16(%rbp), %rdi
	movq	globals+1176, %rsi
	callq	Fcons
	movq	%rax, globals+1176
	jmp	.LBB38_19
.LBB38_18:                              # %if.else.70
	jmp	.LBB38_19
.LBB38_19:                              # %if.end.71
	jmp	.LBB38_20
.LBB38_20:                              # %if.end.72
	movq	-16(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fdefvar, .Lfunc_end38-Fdefvar
	.cfi_endproc

	.globl	Fdefconst
	.align	16, 0x90
	.type	Fdefconst,@function
Fdefconst:                              # @Fdefconst
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	callq	Fcdr
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB39_2:                               # %if.end
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	globals+1920, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_4
# BB#3:                                 # %if.then.14
	movq	-24(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -24(%rbp)
.LBB39_4:                               # %if.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fset_default
	movq	-16(%rbp), %rsi
	subq	$0, %rsi
	movw	lispsym(,%rsi), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	$256, %cx               # imm = 0x100
	movw	%cx, lispsym(,%rsi)
	movq	-8(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB39_8
# BB#5:                                 # %if.then.29
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB39_7
# BB#6:                                 # %if.then.33
	movq	-24(%rbp), %rdi
	callq	Fpurecopy
	movq	%rax, -24(%rbp)
.LBB39_7:                               # %if.end.35
	movl	$992, %edi              # imm = 0x3E0
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB39_8:                               # %if.end.38
	movl	$818, %edi              # imm = 0x332
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	LOADHIST_ATTACH
	movq	-16(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fdefconst, .Lfunc_end39-Fdefconst
	.cfi_endproc

	.globl	Fmake_var_non_special
	.align	16, 0x90
	.type	Fmake_var_non_special,@function
Fmake_var_non_special:                  # @Fmake_var_non_special
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
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB40_2
# BB#1:                                 # %cond.true
	jmp	.LBB40_3
.LBB40_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB40_3:                               # %cond.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	movw	%cx, lispsym(,%rax)
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fmake_var_non_special, .Lfunc_end40-Fmake_var_non_special
	.cfi_endproc

	.globl	FletX
	.align	16, 0x90
	.type	FletX,@function
FletX:                                  # @FletX
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movq	globals+1176, %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB41_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_26
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_3
.LBB41_3:                               # %do.body
                                        #   in Loop: Header=BB41_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB41_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB41_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB41_9
.LBB41_6:                               # %if.else
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB41_8
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB41_1 Depth=1
	callq	process_pending_signals
.LBB41_8:                               # %if.end
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_9
.LBB41_9:                               # %if.end.9
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_10
.LBB41_10:                              # %do.end
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB41_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB41_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB41_16
.LBB41_12:                              # %if.else.18
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_14
# BB#13:                                # %if.then.24
	movabsq	$.L.str.6, %rdi
	movq	-40(%rbp), %rsi
	callq	signal_error
.LBB41_14:                              # %if.else.25
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movq	%rax, -32(%rbp)
# BB#15:                                # %if.end.30
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_16
.LBB41_16:                              # %if.end.31
                                        #   in Loop: Header=BB41_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_24
# BB#17:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB41_24
# BB#18:                                # %land.lhs.true.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$8, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB41_24
# BB#19:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	globals+1176, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB41_24
# BB#20:                                # %if.then.47
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	globals+1176, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -64(%rbp)
	movq	globals+1176, %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB41_22
# BB#21:                                # %if.then.52
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	$567, %edi              # imm = 0x237
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	jmp	.LBB41_23
.LBB41_22:                              # %if.else.54
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, globals+1176
.LBB41_23:                              # %if.end.55
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_25
.LBB41_24:                              # %if.else.56
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	specbind
.LBB41_25:                              # %if.end.57
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB41_1
.LBB41_26:                              # %while.end
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fprogn
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unbind_to
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	FletX, .Lfunc_end41-FletX
	.cfi_endproc

	.globl	process_quit_flag
	.align	16, 0x90
	.type	process_quit_flag,@function
process_quit_flag:                      # @process_quit_flag
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
	subq	$64, %rsp
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$594, %edi              # imm = 0x252
	movq	%rax, globals+1928
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB42_2:                               # %if.end
	movq	globals+2368, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB42_4
# BB#3:                                 # %if.then.4
	movl	$901, %edi              # imm = 0x385
	movq	globals+2368, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB42_4:                               # %if.end.6
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	process_quit_flag, .Lfunc_end42-process_quit_flag
	.cfi_endproc

	.globl	signal_error
	.align	16, 0x90
	.type	signal_error,@function
signal_error:                           # @signal_error
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.LBB43_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB43_4
# BB#3:                                 # %if.then
	jmp	.LBB43_7
.LBB43_4:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.14
	jmp	.LBB43_7
.LBB43_6:                               # %if.end.15
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_1
.LBB43_7:                               # %while.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_9
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rdi
	callq	list1
	movq	%rax, -16(%rbp)
.LBB43_9:                               # %if.end.20
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end43:
	.size	signal_error, .Lfunc_end43-signal_error
	.cfi_endproc

	.globl	Flet
	.align	16, 0x90
	.type	Flet,@function
Flet:                                   # @Flet
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
	subq	$1008, %rsp             # imm = 0x3F0
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	Flength
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_2
	jmp	.LBB44_81
.LBB44_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_3
	jmp	.LBB44_42
.LBB44_3:                               # %cond.true.3
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_5
# BB#4:                                 # %cond.true.7
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB44_6
.LBB44_5:                               # %cond.false
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB44_6:                               # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB44_8
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB44_34
.LBB44_8:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_9
	jmp	.LBB44_20
.LBB44_9:                               # %cond.true.40
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB44_14
# BB#10:                                # %cond.true.46
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jge	.LBB44_12
# BB#11:                                # %cond.true.58
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB44_13
.LBB44_12:                              # %cond.false.69
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB44_13:                              # %cond.end.76
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB44_34
	jmp	.LBB44_31
.LBB44_14:                              # %cond.false.80
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_15
	jmp	.LBB44_16
.LBB44_15:                              # %cond.true.81
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_34
	jmp	.LBB44_31
.LBB44_16:                              # %cond.false.82
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_18
# BB#17:                                # %cond.true.91
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB44_19
.LBB44_18:                              # %cond.false.113
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB44_19:                              # %cond.end.120
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	sarq	$2, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_34
	jmp	.LBB44_31
.LBB44_20:                              # %cond.false.128
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_21
	jmp	.LBB44_22
.LBB44_21:                              # %cond.true.129
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_34
	jmp	.LBB44_31
.LBB44_22:                              # %cond.false.130
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB44_27
# BB#23:                                # %cond.true.136
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jge	.LBB44_25
# BB#24:                                # %cond.true.148
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB44_26
.LBB44_25:                              # %cond.false.170
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB44_26:                              # %cond.end.177
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB44_34
	jmp	.LBB44_31
.LBB44_27:                              # %cond.false.182
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_29
# BB#28:                                # %cond.true.191
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB44_30
.LBB44_29:                              # %cond.false.202
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB44_30:                              # %cond.end.209
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	sarq	$2, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_34
.LBB44_31:                              # %lor.lhs.false.217
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_33
# BB#32:                                # %land.lhs.true.226
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB44_34
.LBB44_33:                              # %lor.lhs.false.233
	movl	$127, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB44_38
.LBB44_34:                              # %cond.true.240
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB44_36
# BB#35:                                # %cond.true.247
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB44_37
.LBB44_36:                              # %cond.false.254
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB44_37:                              # %cond.end.263
	movl	-144(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_38:                              # %cond.false.266
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB44_40
# BB#39:                                # %cond.true.273
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB44_41
.LBB44_40:                              # %cond.false.280
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
.LBB44_41:                              # %cond.end.289
	movl	-148(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_42:                              # %cond.false.292
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_44
# BB#43:                                # %cond.true.299
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB44_45
.LBB44_44:                              # %cond.false.318
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB44_45:                              # %cond.end.323
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_47
# BB#46:                                # %land.lhs.true.327
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_73
.LBB44_47:                              # %lor.lhs.false.331
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_48
	jmp	.LBB44_59
.LBB44_48:                              # %cond.true.332
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_53
# BB#49:                                # %cond.true.336
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jge	.LBB44_51
# BB#50:                                # %cond.true.344
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB44_52
.LBB44_51:                              # %cond.false.353
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB44_52:                              # %cond.end.358
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	cqto
	movq	-184(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_73
	jmp	.LBB44_70
.LBB44_53:                              # %cond.false.363
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_54
	jmp	.LBB44_55
.LBB44_54:                              # %cond.true.364
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_73
	jmp	.LBB44_70
.LBB44_55:                              # %cond.false.365
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_57
# BB#56:                                # %cond.true.372
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB44_58
.LBB44_57:                              # %cond.false.391
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB44_58:                              # %cond.end.396
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cqto
	movq	-200(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_73
	jmp	.LBB44_70
.LBB44_59:                              # %cond.false.402
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_60
	jmp	.LBB44_61
.LBB44_60:                              # %cond.true.403
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_73
	jmp	.LBB44_70
.LBB44_61:                              # %cond.false.404
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_66
# BB#62:                                # %cond.true.408
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jge	.LBB44_64
# BB#63:                                # %cond.true.416
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB44_65
.LBB44_64:                              # %cond.false.435
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB44_65:                              # %cond.end.440
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cqto
	movq	-224(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_73
	jmp	.LBB44_70
.LBB44_66:                              # %cond.false.445
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_68
# BB#67:                                # %cond.true.452
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB44_69
.LBB44_68:                              # %cond.false.461
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB44_69:                              # %cond.end.466
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	cqto
	movq	-240(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_73
.LBB44_70:                              # %lor.lhs.false.472
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_72
# BB#71:                                # %land.lhs.true.479
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB44_73
.LBB44_72:                              # %lor.lhs.false.484
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB44_77
.LBB44_73:                              # %cond.true.489
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB44_75
# BB#74:                                # %cond.true.496
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB44_76
.LBB44_75:                              # %cond.false.503
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB44_76:                              # %cond.end.512
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_77:                              # %cond.false.515
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB44_79
# BB#78:                                # %cond.true.522
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB44_80
.LBB44_79:                              # %cond.false.529
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB44_80:                              # %cond.end.538
	movl	-248(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_81:                              # %cond.false.541
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_82
	jmp	.LBB44_161
.LBB44_82:                              # %cond.true.542
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_83
	jmp	.LBB44_122
.LBB44_83:                              # %cond.true.543
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_85
# BB#84:                                # %cond.true.552
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB44_86
.LBB44_85:                              # %cond.false.574
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB44_86:                              # %cond.end.581
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB44_88
# BB#87:                                # %land.lhs.true.585
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB44_114
.LBB44_88:                              # %lor.lhs.false.591
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_89
	jmp	.LBB44_100
.LBB44_89:                              # %cond.true.592
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB44_94
# BB#90:                                # %cond.true.598
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jge	.LBB44_92
# BB#91:                                # %cond.true.610
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB44_93
.LBB44_92:                              # %cond.false.621
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB44_93:                              # %cond.end.628
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB44_114
	jmp	.LBB44_111
.LBB44_94:                              # %cond.false.633
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_95
	jmp	.LBB44_96
.LBB44_95:                              # %cond.true.634
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_114
	jmp	.LBB44_111
.LBB44_96:                              # %cond.false.635
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_98
# BB#97:                                # %cond.true.644
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB44_99
.LBB44_98:                              # %cond.false.666
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB44_99:                              # %cond.end.673
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	sarq	$2, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_114
	jmp	.LBB44_111
.LBB44_100:                             # %cond.false.681
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_101
	jmp	.LBB44_102
.LBB44_101:                             # %cond.true.682
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_114
	jmp	.LBB44_111
.LBB44_102:                             # %cond.false.683
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB44_107
# BB#103:                               # %cond.true.689
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jge	.LBB44_105
# BB#104:                               # %cond.true.701
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB44_106
.LBB44_105:                             # %cond.false.723
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB44_106:                             # %cond.end.730
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB44_114
	jmp	.LBB44_111
.LBB44_107:                             # %cond.false.735
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_109
# BB#108:                               # %cond.true.744
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB44_110
.LBB44_109:                             # %cond.false.755
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB44_110:                             # %cond.end.762
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	sarq	$2, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_114
.LBB44_111:                             # %lor.lhs.false.770
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB44_113
# BB#112:                               # %land.lhs.true.779
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB44_114
.LBB44_113:                             # %lor.lhs.false.786
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB44_118
.LBB44_114:                             # %cond.true.793
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB44_116
# BB#115:                               # %cond.true.800
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB44_117
.LBB44_116:                             # %cond.false.807
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB44_117:                             # %cond.end.816
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_118:                             # %cond.false.819
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB44_120
# BB#119:                               # %cond.true.826
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB44_121
.LBB44_120:                             # %cond.false.833
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -284(%rbp)        # 4-byte Spill
.LBB44_121:                             # %cond.end.842
	movl	-284(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_122:                             # %cond.false.845
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_124
# BB#123:                               # %cond.true.852
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB44_125
.LBB44_124:                             # %cond.false.871
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB44_125:                             # %cond.end.876
	movq	-296(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_127
# BB#126:                               # %land.lhs.true.880
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_153
.LBB44_127:                             # %lor.lhs.false.884
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_128
	jmp	.LBB44_139
.LBB44_128:                             # %cond.true.885
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_133
# BB#129:                               # %cond.true.889
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB44_131
# BB#130:                               # %cond.true.897
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB44_132
.LBB44_131:                             # %cond.false.906
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB44_132:                             # %cond.end.911
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_153
	jmp	.LBB44_150
.LBB44_133:                             # %cond.false.916
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_134
	jmp	.LBB44_135
.LBB44_134:                             # %cond.true.917
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_153
	jmp	.LBB44_150
.LBB44_135:                             # %cond.false.918
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_137
# BB#136:                               # %cond.true.925
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB44_138
.LBB44_137:                             # %cond.false.944
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB44_138:                             # %cond.end.949
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_153
	jmp	.LBB44_150
.LBB44_139:                             # %cond.false.955
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_140
	jmp	.LBB44_141
.LBB44_140:                             # %cond.true.956
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_153
	jmp	.LBB44_150
.LBB44_141:                             # %cond.false.957
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_146
# BB#142:                               # %cond.true.961
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB44_144
# BB#143:                               # %cond.true.969
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB44_145
.LBB44_144:                             # %cond.false.988
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB44_145:                             # %cond.end.993
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_153
	jmp	.LBB44_150
.LBB44_146:                             # %cond.false.998
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_148
# BB#147:                               # %cond.true.1005
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB44_149
.LBB44_148:                             # %cond.false.1014
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB44_149:                             # %cond.end.1019
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_153
.LBB44_150:                             # %lor.lhs.false.1025
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_152
# BB#151:                               # %land.lhs.true.1032
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB44_153
.LBB44_152:                             # %lor.lhs.false.1037
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB44_157
.LBB44_153:                             # %cond.true.1042
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB44_155
# BB#154:                               # %cond.true.1049
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB44_156
.LBB44_155:                             # %cond.false.1056
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -380(%rbp)        # 4-byte Spill
.LBB44_156:                             # %cond.end.1065
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_157:                             # %cond.false.1068
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB44_159
# BB#158:                               # %cond.true.1075
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB44_160
.LBB44_159:                             # %cond.false.1082
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -384(%rbp)        # 4-byte Spill
.LBB44_160:                             # %cond.end.1091
	movl	-384(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_161:                             # %cond.false.1094
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_162
	jmp	.LBB44_241
.LBB44_162:                             # %cond.true.1095
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_163
	jmp	.LBB44_202
.LBB44_163:                             # %cond.true.1096
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB44_165
# BB#164:                               # %cond.true.1104
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB44_166
.LBB44_165:                             # %cond.false.1124
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB44_166:                             # %cond.end.1130
	movl	-388(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB44_168
# BB#167:                               # %land.lhs.true.1134
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB44_194
.LBB44_168:                             # %lor.lhs.false.1139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_169
	jmp	.LBB44_180
.LBB44_169:                             # %cond.true.1140
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB44_174
# BB#170:                               # %cond.true.1145
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	jge	.LBB44_172
# BB#171:                               # %cond.true.1155
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB44_173
.LBB44_172:                             # %cond.false.1165
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB44_173:                             # %cond.end.1171
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-392(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB44_194
	jmp	.LBB44_191
.LBB44_174:                             # %cond.false.1176
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_175
	jmp	.LBB44_176
.LBB44_175:                             # %cond.true.1177
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_194
	jmp	.LBB44_191
.LBB44_176:                             # %cond.false.1178
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB44_178
# BB#177:                               # %cond.true.1186
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB44_179
.LBB44_178:                             # %cond.false.1206
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB44_179:                             # %cond.end.1212
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	sarq	$2, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_194
	jmp	.LBB44_191
.LBB44_180:                             # %cond.false.1219
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_181
	jmp	.LBB44_182
.LBB44_181:                             # %cond.true.1220
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_194
	jmp	.LBB44_191
.LBB44_182:                             # %cond.false.1221
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB44_187
# BB#183:                               # %cond.true.1226
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jge	.LBB44_185
# BB#184:                               # %cond.true.1236
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB44_186
.LBB44_185:                             # %cond.false.1256
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB44_186:                             # %cond.end.1262
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-404(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB44_194
	jmp	.LBB44_191
.LBB44_187:                             # %cond.false.1267
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB44_189
# BB#188:                               # %cond.true.1275
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB44_190
.LBB44_189:                             # %cond.false.1285
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB44_190:                             # %cond.end.1291
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	sarq	$2, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB44_194
.LBB44_191:                             # %lor.lhs.false.1298
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB44_193
# BB#192:                               # %land.lhs.true.1306
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB44_194
.LBB44_193:                             # %lor.lhs.false.1312
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB44_198
.LBB44_194:                             # %cond.true.1318
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB44_196
# BB#195:                               # %cond.true.1324
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB44_197
.LBB44_196:                             # %cond.false.1328
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -416(%rbp)        # 4-byte Spill
.LBB44_197:                             # %cond.end.1334
	movl	-416(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_198:                             # %cond.false.1337
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB44_200
# BB#199:                               # %cond.true.1343
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB44_201
.LBB44_200:                             # %cond.false.1347
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB44_201:                             # %cond.end.1353
	movl	-420(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_202:                             # %cond.false.1356
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_204
# BB#203:                               # %cond.true.1363
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB44_205
.LBB44_204:                             # %cond.false.1382
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB44_205:                             # %cond.end.1387
	movq	-432(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_207
# BB#206:                               # %land.lhs.true.1391
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_233
.LBB44_207:                             # %lor.lhs.false.1395
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_208
	jmp	.LBB44_219
.LBB44_208:                             # %cond.true.1396
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_213
# BB#209:                               # %cond.true.1400
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB44_211
# BB#210:                               # %cond.true.1408
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB44_212
.LBB44_211:                             # %cond.false.1417
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB44_212:                             # %cond.end.1422
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_233
	jmp	.LBB44_230
.LBB44_213:                             # %cond.false.1427
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_214
	jmp	.LBB44_215
.LBB44_214:                             # %cond.true.1428
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_233
	jmp	.LBB44_230
.LBB44_215:                             # %cond.false.1429
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_217
# BB#216:                               # %cond.true.1436
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB44_218
.LBB44_217:                             # %cond.false.1455
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB44_218:                             # %cond.end.1460
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_233
	jmp	.LBB44_230
.LBB44_219:                             # %cond.false.1466
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_220
	jmp	.LBB44_221
.LBB44_220:                             # %cond.true.1467
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_233
	jmp	.LBB44_230
.LBB44_221:                             # %cond.false.1468
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_226
# BB#222:                               # %cond.true.1472
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jge	.LBB44_224
# BB#223:                               # %cond.true.1480
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB44_225
.LBB44_224:                             # %cond.false.1499
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB44_225:                             # %cond.end.1504
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_233
	jmp	.LBB44_230
.LBB44_226:                             # %cond.false.1509
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_228
# BB#227:                               # %cond.true.1516
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB44_229
.LBB44_228:                             # %cond.false.1525
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB44_229:                             # %cond.end.1530
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_233
.LBB44_230:                             # %lor.lhs.false.1536
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_232
# BB#231:                               # %land.lhs.true.1543
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB44_233
.LBB44_232:                             # %lor.lhs.false.1548
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB44_237
.LBB44_233:                             # %cond.true.1553
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB44_235
# BB#234:                               # %cond.true.1559
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB44_236
.LBB44_235:                             # %cond.false.1563
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -516(%rbp)        # 4-byte Spill
.LBB44_236:                             # %cond.end.1569
	movl	-516(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_237:                             # %cond.false.1572
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB44_239
# BB#238:                               # %cond.true.1578
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	jmp	.LBB44_240
.LBB44_239:                             # %cond.false.1582
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -520(%rbp)        # 4-byte Spill
.LBB44_240:                             # %cond.end.1588
	movl	-520(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_241:                             # %cond.false.1591
	movb	$1, %al
	testb	$1, %al
	jne	.LBB44_242
	jmp	.LBB44_321
.LBB44_242:                             # %cond.true.1592
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_243
	jmp	.LBB44_282
.LBB44_243:                             # %cond.true.1593
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_245
# BB#244:                               # %cond.true.1600
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB44_246
.LBB44_245:                             # %cond.false.1619
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB44_246:                             # %cond.end.1624
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_248
# BB#247:                               # %land.lhs.true.1628
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_274
.LBB44_248:                             # %lor.lhs.false.1632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_249
	jmp	.LBB44_260
.LBB44_249:                             # %cond.true.1633
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_254
# BB#250:                               # %cond.true.1637
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB44_252
# BB#251:                               # %cond.true.1645
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB44_253
.LBB44_252:                             # %cond.false.1654
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB44_253:                             # %cond.end.1659
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_274
	jmp	.LBB44_271
.LBB44_254:                             # %cond.false.1664
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_255
	jmp	.LBB44_256
.LBB44_255:                             # %cond.true.1665
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_274
	jmp	.LBB44_271
.LBB44_256:                             # %cond.false.1666
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_258
# BB#257:                               # %cond.true.1673
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB44_259
.LBB44_258:                             # %cond.false.1692
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB44_259:                             # %cond.end.1697
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_274
	jmp	.LBB44_271
.LBB44_260:                             # %cond.false.1703
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_261
	jmp	.LBB44_262
.LBB44_261:                             # %cond.true.1704
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_274
	jmp	.LBB44_271
.LBB44_262:                             # %cond.false.1705
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_267
# BB#263:                               # %cond.true.1709
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB44_265
# BB#264:                               # %cond.true.1717
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB44_266
.LBB44_265:                             # %cond.false.1736
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB44_266:                             # %cond.end.1741
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_274
	jmp	.LBB44_271
.LBB44_267:                             # %cond.false.1746
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_269
# BB#268:                               # %cond.true.1753
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB44_270
.LBB44_269:                             # %cond.false.1762
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB44_270:                             # %cond.end.1767
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_274
.LBB44_271:                             # %lor.lhs.false.1773
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_273
# BB#272:                               # %land.lhs.true.1780
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB44_274
.LBB44_273:                             # %lor.lhs.false.1785
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB44_278
.LBB44_274:                             # %cond.true.1790
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_276
# BB#275:                               # %cond.true.1795
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB44_277
.LBB44_276:                             # %cond.false.1798
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB44_277:                             # %cond.end.1803
	movq	-616(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_278:                             # %cond.false.1805
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_280
# BB#279:                               # %cond.true.1810
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB44_281
.LBB44_280:                             # %cond.false.1813
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB44_281:                             # %cond.end.1818
	movq	-624(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_282:                             # %cond.false.1820
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_284
# BB#283:                               # %cond.true.1827
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB44_285
.LBB44_284:                             # %cond.false.1846
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB44_285:                             # %cond.end.1851
	movq	-632(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_287
# BB#286:                               # %land.lhs.true.1855
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_313
.LBB44_287:                             # %lor.lhs.false.1859
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_288
	jmp	.LBB44_299
.LBB44_288:                             # %cond.true.1860
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_293
# BB#289:                               # %cond.true.1864
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jge	.LBB44_291
# BB#290:                               # %cond.true.1872
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB44_292
.LBB44_291:                             # %cond.false.1881
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB44_292:                             # %cond.end.1886
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_313
	jmp	.LBB44_310
.LBB44_293:                             # %cond.false.1891
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_294
	jmp	.LBB44_295
.LBB44_294:                             # %cond.true.1892
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_313
	jmp	.LBB44_310
.LBB44_295:                             # %cond.false.1893
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_297
# BB#296:                               # %cond.true.1900
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB44_298
.LBB44_297:                             # %cond.false.1919
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB44_298:                             # %cond.end.1924
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_313
	jmp	.LBB44_310
.LBB44_299:                             # %cond.false.1930
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_300
	jmp	.LBB44_301
.LBB44_300:                             # %cond.true.1931
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_313
	jmp	.LBB44_310
.LBB44_301:                             # %cond.false.1932
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_306
# BB#302:                               # %cond.true.1936
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jge	.LBB44_304
# BB#303:                               # %cond.true.1944
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB44_305
.LBB44_304:                             # %cond.false.1963
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB44_305:                             # %cond.end.1968
	movq	-688(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	cqto
	movq	-696(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-680(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_313
	jmp	.LBB44_310
.LBB44_306:                             # %cond.false.1973
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_308
# BB#307:                               # %cond.true.1980
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB44_309
.LBB44_308:                             # %cond.false.1989
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB44_309:                             # %cond.end.1994
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_313
.LBB44_310:                             # %lor.lhs.false.2000
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_312
# BB#311:                               # %land.lhs.true.2007
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB44_313
.LBB44_312:                             # %lor.lhs.false.2012
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB44_317
.LBB44_313:                             # %cond.true.2017
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_315
# BB#314:                               # %cond.true.2022
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB44_316
.LBB44_315:                             # %cond.false.2025
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB44_316:                             # %cond.end.2030
	movq	-720(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_317:                             # %cond.false.2032
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_319
# BB#318:                               # %cond.true.2037
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB44_320
.LBB44_319:                             # %cond.false.2040
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB44_320:                             # %cond.end.2045
	movq	-728(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_321:                             # %cond.false.2047
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_322
	jmp	.LBB44_361
.LBB44_322:                             # %cond.true.2048
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_324
# BB#323:                               # %cond.true.2055
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB44_325
.LBB44_324:                             # %cond.false.2074
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB44_325:                             # %cond.end.2079
	movq	-736(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_327
# BB#326:                               # %land.lhs.true.2083
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_353
.LBB44_327:                             # %lor.lhs.false.2087
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_328
	jmp	.LBB44_339
.LBB44_328:                             # %cond.true.2088
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_333
# BB#329:                               # %cond.true.2092
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jge	.LBB44_331
# BB#330:                               # %cond.true.2100
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB44_332
.LBB44_331:                             # %cond.false.2109
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB44_332:                             # %cond.end.2114
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-744(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_353
	jmp	.LBB44_350
.LBB44_333:                             # %cond.false.2119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_334
	jmp	.LBB44_335
.LBB44_334:                             # %cond.true.2120
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_353
	jmp	.LBB44_350
.LBB44_335:                             # %cond.false.2121
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_337
# BB#336:                               # %cond.true.2128
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB44_338
.LBB44_337:                             # %cond.false.2147
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB44_338:                             # %cond.end.2152
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_353
	jmp	.LBB44_350
.LBB44_339:                             # %cond.false.2158
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_340
	jmp	.LBB44_341
.LBB44_340:                             # %cond.true.2159
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_353
	jmp	.LBB44_350
.LBB44_341:                             # %cond.false.2160
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_346
# BB#342:                               # %cond.true.2164
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jge	.LBB44_344
# BB#343:                               # %cond.true.2172
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB44_345
.LBB44_344:                             # %cond.false.2191
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB44_345:                             # %cond.end.2196
	movq	-792(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -800(%rbp)        # 8-byte Spill
	cqto
	movq	-800(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-784(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_353
	jmp	.LBB44_350
.LBB44_346:                             # %cond.false.2201
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_348
# BB#347:                               # %cond.true.2208
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB44_349
.LBB44_348:                             # %cond.false.2217
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB44_349:                             # %cond.end.2222
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_353
.LBB44_350:                             # %lor.lhs.false.2228
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_352
# BB#351:                               # %land.lhs.true.2235
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB44_353
.LBB44_352:                             # %lor.lhs.false.2240
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB44_357
.LBB44_353:                             # %cond.true.2245
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_355
# BB#354:                               # %cond.true.2250
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB44_356
.LBB44_355:                             # %cond.false.2253
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB44_356:                             # %cond.end.2258
	movq	-824(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_357:                             # %cond.false.2260
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_359
# BB#358:                               # %cond.true.2265
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB44_360
.LBB44_359:                             # %cond.false.2268
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB44_360:                             # %cond.end.2273
	movq	-832(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_361:                             # %cond.false.2275
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_363
# BB#362:                               # %cond.true.2282
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB44_364
.LBB44_363:                             # %cond.false.2301
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB44_364:                             # %cond.end.2306
	movq	-840(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB44_366
# BB#365:                               # %land.lhs.true.2310
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB44_392
.LBB44_366:                             # %lor.lhs.false.2314
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_367
	jmp	.LBB44_378
.LBB44_367:                             # %cond.true.2315
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_372
# BB#368:                               # %cond.true.2319
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jge	.LBB44_370
# BB#369:                               # %cond.true.2327
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB44_371
.LBB44_370:                             # %cond.false.2336
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB44_371:                             # %cond.end.2341
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_392
	jmp	.LBB44_389
.LBB44_372:                             # %cond.false.2346
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_373
	jmp	.LBB44_374
.LBB44_373:                             # %cond.true.2347
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_392
	jmp	.LBB44_389
.LBB44_374:                             # %cond.false.2348
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_376
# BB#375:                               # %cond.true.2355
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB44_377
.LBB44_376:                             # %cond.false.2374
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB44_377:                             # %cond.end.2379
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_392
	jmp	.LBB44_389
.LBB44_378:                             # %cond.false.2385
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_379
	jmp	.LBB44_380
.LBB44_379:                             # %cond.true.2386
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB44_392
	jmp	.LBB44_389
.LBB44_380:                             # %cond.false.2387
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB44_385
# BB#381:                               # %cond.true.2391
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jge	.LBB44_383
# BB#382:                               # %cond.true.2399
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB44_384
.LBB44_383:                             # %cond.false.2418
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB44_384:                             # %cond.end.2423
	movq	-896(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	cqto
	movq	-904(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-888(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB44_392
	jmp	.LBB44_389
.LBB44_385:                             # %cond.false.2428
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_387
# BB#386:                               # %cond.true.2435
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB44_388
.LBB44_387:                             # %cond.false.2444
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB44_388:                             # %cond.end.2449
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jl	.LBB44_392
.LBB44_389:                             # %lor.lhs.false.2455
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB44_391
# BB#390:                               # %land.lhs.true.2462
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB44_392
.LBB44_391:                             # %lor.lhs.false.2467
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB44_396
.LBB44_392:                             # %cond.true.2472
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_394
# BB#393:                               # %cond.true.2477
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB44_395
.LBB44_394:                             # %cond.false.2480
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB44_395:                             # %cond.end.2485
	movq	-928(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB44_401
	jmp	.LBB44_400
.LBB44_396:                             # %cond.false.2487
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	sarq	$2, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB44_398
# BB#397:                               # %cond.true.2492
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB44_399
.LBB44_398:                             # %cond.false.2495
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB44_399:                             # %cond.end.2500
	movq	-936(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB44_401
.LBB44_400:                             # %lor.lhs.false.2502
	movq	$-1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB44_402
.LBB44_401:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB44_402:                             # %if.else
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jg	.LBB44_404
# BB#403:                               # %if.then.2507
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-96(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -16(%rbp)
	jmp	.LBB44_405
.LBB44_404:                             # %if.else.2509
	movq	-96(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -104(%rbp)
	movb	$1, -81(%rbp)
	movq	-104(%rbp), %rsi
	callq	record_unwind_protect
.LBB44_405:                             # %if.end
	jmp	.LBB44_406
.LBB44_406:                             # %if.end.2513
	jmp	.LBB44_407
.LBB44_407:                             # %do.end
	movq	$0, -64(%rbp)
.LBB44_408:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_425
# BB#409:                               # %for.body
                                        #   in Loop: Header=BB44_408 Depth=1
	jmp	.LBB44_410
.LBB44_410:                             # %do.body.2517
                                        #   in Loop: Header=BB44_408 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_413
# BB#411:                               # %land.lhs.true.2521
                                        #   in Loop: Header=BB44_408 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB44_413
# BB#412:                               # %if.then.2525
                                        #   in Loop: Header=BB44_408 Depth=1
	callq	process_quit_flag
	jmp	.LBB44_416
.LBB44_413:                             # %if.else.2526
                                        #   in Loop: Header=BB44_408 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB44_415
# BB#414:                               # %if.then.2527
                                        #   in Loop: Header=BB44_408 Depth=1
	callq	process_pending_signals
.LBB44_415:                             # %if.end.2528
                                        #   in Loop: Header=BB44_408 Depth=1
	jmp	.LBB44_416
.LBB44_416:                             # %if.end.2529
                                        #   in Loop: Header=BB44_408 Depth=1
	jmp	.LBB44_417
.LBB44_417:                             # %do.end.2530
                                        #   in Loop: Header=BB44_408 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB44_419
# BB#418:                               # %if.then.2537
                                        #   in Loop: Header=BB44_408 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB44_423
.LBB44_419:                             # %if.else.2539
                                        #   in Loop: Header=BB44_408 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	xorl	%edi, %edi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_421
# BB#420:                               # %if.then.2545
	movabsq	$.L.str.6, %rdi
	movq	-40(%rbp), %rsi
	callq	signal_error
.LBB44_421:                             # %if.else.2546
                                        #   in Loop: Header=BB44_408 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	eval_sub
	movq	-64(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
# BB#422:                               # %if.end.2552
                                        #   in Loop: Header=BB44_408 Depth=1
	jmp	.LBB44_423
.LBB44_423:                             # %if.end.2553
                                        #   in Loop: Header=BB44_408 Depth=1
	jmp	.LBB44_424
.LBB44_424:                             # %for.inc
                                        #   in Loop: Header=BB44_408 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB44_408
.LBB44_425:                             # %for.end
	movq	globals+1176, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
.LBB44_426:                             # %for.cond.2557
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB44_438
# BB#427:                               # %for.body.2562
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB44_429
# BB#428:                               # %cond.true.2569
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB44_430
.LBB44_429:                             # %cond.false.2570
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB44_430:                             # %cond.end.2572
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-968(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-976(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB44_435
# BB#431:                               # %land.lhs.true.2579
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB44_435
# BB#432:                               # %land.lhs.true.2584
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-112(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$8, %cx
	andw	$1, %cx
	testw	$1, %cx
	jne	.LBB44_435
# BB#433:                               # %land.lhs.true.2586
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-112(%rbp), %rdi
	movq	globals+1176, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB44_435
# BB#434:                               # %if.then.2591
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -32(%rbp)
	jmp	.LBB44_436
.LBB44_435:                             # %if.else.2594
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	specbind
.LBB44_436:                             # %if.end.2595
                                        #   in Loop: Header=BB44_426 Depth=1
	jmp	.LBB44_437
.LBB44_437:                             # %for.inc.2596
                                        #   in Loop: Header=BB44_426 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB44_426
.LBB44_438:                             # %for.end.2600
	movq	-32(%rbp), %rax
	cmpq	globals+1176, %rax
	je	.LBB44_440
# BB#439:                               # %if.then.2603
	movl	$567, %edi              # imm = 0x237
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
.LBB44_440:                             # %if.end.2605
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fprogn
	movq	%rax, -40(%rbp)
# BB#441:                               # %do.body.2610
	testb	$1, -81(%rbp)
	je	.LBB44_443
# BB#442:                               # %if.then.2612
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB44_443:                             # %if.end.2615
	jmp	.LBB44_444
.LBB44_444:                             # %do.end.2616
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	unbind_to
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Flet, .Lfunc_end44-Flet
	.cfi_endproc

	.globl	Fwhile
	.align	16, 0x90
	.type	Fwhile,@function
Fwhile:                                 # @Fwhile
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB45_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	eval_sub
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB45_2
	jmp	.LBB45_11
.LBB45_2:                               # %while.body
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_3
.LBB45_3:                               # %do.body
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB45_9
.LBB45_6:                               # %if.else
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB45_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	process_pending_signals
.LBB45_8:                               # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_9
.LBB45_9:                               # %if.end.8
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_10
.LBB45_10:                              # %do.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	Fprogn
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB45_1
.LBB45_11:                              # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fwhile, .Lfunc_end45-Fwhile
	.cfi_endproc

	.globl	Fmacroexpand
	.align	16, 0x90
	.type	Fmacroexpand,@function
Fmacroexpand:                           # @Fmacroexpand
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB46_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_4 Depth 2
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB46_3
# BB#2:                                 # %if.then
	jmp	.LBB46_32
.LBB46_3:                               # %if.end
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB46_4:                               # %while.cond.2
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB46_18
# BB#5:                                 # %while.body.7
                                        #   in Loop: Header=BB46_4 Depth=2
	jmp	.LBB46_6
.LBB46_6:                               # %do.body
                                        #   in Loop: Header=BB46_4 Depth=2
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB46_4 Depth=2
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_9
# BB#8:                                 # %if.then.14
                                        #   in Loop: Header=BB46_4 Depth=2
	callq	process_quit_flag
	jmp	.LBB46_12
.LBB46_9:                               # %if.else
                                        #   in Loop: Header=BB46_4 Depth=2
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB46_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB46_4 Depth=2
	callq	process_pending_signals
.LBB46_11:                              # %if.end.16
                                        #   in Loop: Header=BB46_4 Depth=2
	jmp	.LBB46_12
.LBB46_12:                              # %if.end.17
                                        #   in Loop: Header=BB46_4 Depth=2
	jmp	.LBB46_13
.LBB46_13:                              # %do.end
                                        #   in Loop: Header=BB46_4 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_17
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB46_4 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_16
# BB#15:                                # %if.then.27
                                        #   in Loop: Header=BB46_4 Depth=2
	jmp	.LBB46_4
.LBB46_16:                              # %if.end.28
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_17
.LBB46_17:                              # %if.end.29
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_18
.LBB46_18:                              # %while.end
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_25
# BB#19:                                # %if.then.33
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	$636, %edi              # imm = 0x27C
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fautoload_do_load
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB46_21
# BB#20:                                # %if.then.40
	jmp	.LBB46_32
.LBB46_21:                              # %if.end.41
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	$636, %edi              # imm = 0x27C
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_23
# BB#22:                                # %if.then.47
	jmp	.LBB46_32
.LBB46_23:                              # %if.else.48
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#24:                                # %if.end.50
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_28
.LBB46_25:                              # %if.else.51
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_27
# BB#26:                                # %if.then.58
	jmp	.LBB46_32
.LBB46_27:                              # %if.end.59
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_28
.LBB46_28:                              # %if.end.60
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	apply1
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB46_30
# BB#29:                                # %if.then.67
	jmp	.LBB46_32
.LBB46_30:                              # %if.else.68
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
# BB#31:                                # %if.end.69
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_1
.LBB46_32:                              # %while.end.70
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fmacroexpand, .Lfunc_end46-Fmacroexpand
	.cfi_endproc

	.globl	Fautoload_do_load
	.align	16, 0x90
	.type	Fautoload_do_load,@function
Fautoload_do_load:                      # @Fautoload_do_load
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_2
# BB#1:                                 # %lor.lhs.false
	movl	$191, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	je	.LBB47_3
.LBB47_2:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_18
.LBB47_3:                               # %if.end
	movl	$636, %edi              # imm = 0x27C
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_8
# BB#4:                                 # %if.then.8
	movl	$18, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	callq	Fnth
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB47_7
# BB#5:                                 # %lor.lhs.false.13
	movl	$636, %edi              # imm = 0x27C
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_7
# BB#6:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_18
.LBB47_7:                               # %if.end.18
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.19
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_10
# BB#9:                                 # %if.then.23
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.9, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB47_10:                              # %if.end.26
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB47_12
# BB#11:                                # %cond.true
	jmp	.LBB47_13
.LBB47_12:                              # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB47_13:                              # %cond.end
	callq	record_unwind_save_match_data
	movabsq	$un_autoload, %rdi
	movq	Vautoload_queue, %rsi
	callq	record_unwind_protect
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, Vautoload_queue
	movq	-16(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, Vautoload_queue
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_15
# BB#14:                                # %if.then.45
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB47_18
.LBB47_15:                              # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB47_17
# BB#16:                                # %if.then.53
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB47_17:                              # %if.else.56
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB47_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fautoload_do_load, .Lfunc_end47-Fautoload_do_load
	.cfi_endproc

	.globl	Fcatch
	.align	16, 0x90
	.type	Fcatch,@function
Fcatch:                                 # @Fcatch
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
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	callq	eval_sub
	movabsq	$Fprogn, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdx
	callq	internal_catch
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fcatch, .Lfunc_end48-Fcatch
	.cfi_endproc

	.globl	internal_catch
	.align	16, 0x90
	.type	internal_catch,@function
internal_catch:                         # @internal_catch
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	push_handler
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_3
.LBB49_2:                               # %if.else
	movq	handlerlist, %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB49_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	internal_catch, .Lfunc_end49-internal_catch
	.cfi_endproc

	.globl	Fthrow
	.align	16, 0x90
	.type	Fthrow,@function
Fthrow:                                 # @Fthrow
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB50_11
# BB#1:                                 # %if.then
	movq	handlerlist, %rax
	movq	%rax, -32(%rbp)
.LBB50_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB50_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB50_5
# BB#4:                                 # %if.then.2
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unwind_to_catch
.LBB50_5:                               # %if.end
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB50_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB50_8
# BB#7:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	unwind_to_catch
.LBB50_8:                               # %if.end.8
                                        #   in Loop: Header=BB50_2 Depth=1
	jmp	.LBB50_9
.LBB50_9:                               # %for.inc
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB50_2
.LBB50_10:                              # %for.end
	jmp	.LBB50_11
.LBB50_11:                              # %if.end.9
	movl	$701, %edi              # imm = 0x2BD
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.Lfunc_end50:
	.size	Fthrow, .Lfunc_end50-Fthrow
	.cfi_endproc

	.align	16, 0x90
	.type	unwind_to_catch,@function
unwind_to_catch:                        # @unwind_to_catch
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movl	272(%rsi), %edi
	callq	set_poll_suppress_count
	movq	-8(%rbp), %rsi
	movl	276(%rsi), %edi
	callq	unblock_input_to
	movb	$0, immediate_quit
.LBB51_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	handlerlist, %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	handlerlist, %rsi
	cmpq	-8(%rbp), %rsi
	sete	%cl
	andb	$1, %cl
	movb	%cl, -17(%rbp)
	testb	$1, -17(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB51_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
.LBB51_3:                               # %if.end
                                        #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_4
.LBB51_4:                               # %do.cond
                                        #   in Loop: Header=BB51_1 Depth=1
	movb	-17(%rbp), %al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB51_1
# BB#5:                                 # %do.end
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, byte_stack_list
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, lisp_eval_depth
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_longjmp
.Lfunc_end51:
	.size	unwind_to_catch, .Lfunc_end51-unwind_to_catch
	.cfi_endproc

	.globl	Funwind_protect
	.align	16, 0x90
	.type	Funwind_protect,@function
Funwind_protect:                        # @Funwind_protect
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
	callq	SPECPDL_INDEX
	movabsq	$unwind_body, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	record_unwind_protect
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	eval_sub
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unbind_to
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Funwind_protect, .Lfunc_end52-Funwind_protect
	.cfi_endproc

	.globl	Fcondition_case
	.align	16, 0x90
	.type	Fcondition_case,@function
Fcondition_case:                        # @Fcondition_case
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
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	internal_lisp_condition_case
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fcondition_case, .Lfunc_end53-Fcondition_case
	.cfi_endproc

	.globl	internal_lisp_condition_case
	.align	16, 0x90
	.type	internal_lisp_condition_case,@function
internal_lisp_condition_case:           # @internal_lisp_condition_case
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	handlerlist, %rdx
	movq	%rdx, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB54_2
# BB#1:                                 # %cond.true
	jmp	.LBB54_3
.LBB54_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB54_3:                               # %cond.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB54_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_12
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB54_4 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB54_10
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB54_4 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB54_4 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB54_10
# BB#8:                                 # %lor.lhs.false.19
                                        #   in Loop: Header=BB54_4 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB54_10
.LBB54_9:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprin1_to_string
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB54_10:                              # %if.end
                                        #   in Loop: Header=BB54_4 Depth=1
	jmp	.LBB54_11
.LBB54_11:                              # %for.inc
                                        #   in Loop: Header=BB54_4 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB54_4
.LBB54_12:                              # %for.end
	movl	$2048, %eax             # imm = 0x800
	cmpl	-52(%rbp), %eax
	jge	.LBB54_14
# BB#13:                                # %if.then.32
	movq	$-1, %rdi
	callq	memory_full
.LBB54_14:                              # %if.end.33
	movslq	-52(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -84(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB54_15:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB54_18
# BB#16:                                # %for.body.40
                                        #   in Loop: Header=BB54_15 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%ecx, %rdx
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#17:                                # %for.inc.43
                                        #   in Loop: Header=BB54_15 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB54_15
.LBB54_18:                              # %for.end.47
	movl	$0, -84(%rbp)
.LBB54_19:                              # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB54_40
# BB#20:                                # %for.body.51
                                        #   in Loop: Header=BB54_19 Depth=1
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB54_22
# BB#21:                                # %cond.true.58
                                        #   in Loop: Header=BB54_19 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB54_23
.LBB54_22:                              # %cond.false.61
                                        #   in Loop: Header=BB54_19 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB54_23:                              # %cond.end.63
                                        #   in Loop: Header=BB54_19 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB54_25
# BB#24:                                # %if.then.68
                                        #   in Loop: Header=BB54_19 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -104(%rbp)
.LBB54_25:                              # %if.end.71
                                        #   in Loop: Header=BB54_19 Depth=1
	movl	$1, %esi
	movq	-104(%rbp), %rdi
	callq	push_handler
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB54_38
# BB#26:                                # %if.then.74
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movq	handlerlist, %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB54_27:                              # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB54_30
# BB#28:                                # %for.body.81
                                        #   in Loop: Header=BB54_27 Depth=1
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -136(%rbp)
# BB#29:                                # %for.inc.82
                                        #   in Loop: Header=BB54_27 Depth=1
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB54_27
.LBB54_30:                              # %for.end.84
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, handlerlist
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB54_35
# BB#31:                                # %if.then.88
	xorl	%edi, %edi
	movq	globals+1176, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB54_33
# BB#32:                                # %if.then.92
	movl	$567, %edi              # imm = 0x237
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	globals+1176, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	jmp	.LBB54_34
.LBB54_33:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	specbind
.LBB54_34:                              # %if.end.96
	jmp	.LBB54_35
.LBB54_35:                              # %if.end.97
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fprogn
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB54_37
# BB#36:                                # %if.then.105
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB54_37:                              # %if.end.108
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB54_41
.LBB54_38:                              # %if.end.109
                                        #   in Loop: Header=BB54_19 Depth=1
	jmp	.LBB54_39
.LBB54_39:                              # %for.inc.110
                                        #   in Loop: Header=BB54_19 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB54_19
.LBB54_40:                              # %for.end.112
	movq	-24(%rbp), %rdi
	callq	eval_sub
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, handlerlist
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB54_41:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	internal_lisp_condition_case, .Lfunc_end54-internal_lisp_condition_case
	.cfi_endproc

	.globl	internal_condition_case
	.align	16, 0x90
	.type	internal_condition_case,@function
internal_condition_case:                # @internal_condition_case
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
	subq	$64, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	push_handler
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB55_2
# BB#1:                                 # %if.then
	movq	handlerlist, %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB55_3
.LBB55_2:                               # %if.else
	callq	*-16(%rbp)
	movq	%rax, -56(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB55_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	internal_condition_case, .Lfunc_end55-internal_condition_case
	.cfi_endproc

	.globl	internal_condition_case_1
	.align	16, 0x90
	.type	internal_condition_case_1,@function
internal_condition_case_1:              # @internal_condition_case_1
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
	subq	$64, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	callq	push_handler
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB56_2
# BB#1:                                 # %if.then
	movq	handlerlist, %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_3
.LBB56_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB56_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	internal_condition_case_1, .Lfunc_end56-internal_condition_case_1
	.cfi_endproc

	.globl	internal_condition_case_2
	.align	16, 0x90
	.type	internal_condition_case_2,@function
internal_condition_case_2:              # @internal_condition_case_2
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
	subq	$80, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	callq	push_handler
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB57_2
# BB#1:                                 # %if.then
	movq	handlerlist, %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB57_3
.LBB57_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	%rax, -72(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB57_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	internal_condition_case_2, .Lfunc_end57-internal_condition_case_2
	.cfi_endproc

	.globl	internal_condition_case_n
	.align	16, 0x90
	.type	internal_condition_case_n,@function
internal_condition_case_n:              # @internal_condition_case_n
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
	subq	$80, %rsp
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	callq	push_handler
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB58_2
# BB#1:                                 # %if.then
	movq	handlerlist, %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_3
.LBB58_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	%rax, -72(%rbp)
	movq	handlerlist, %rax
	movq	24(%rax), %rax
	movq	%rax, handlerlist
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB58_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	internal_condition_case_n, .Lfunc_end58-internal_condition_case_n
	.cfi_endproc

	.globl	push_handler_nosignal
	.align	16, 0x90
	.type	push_handler_nosignal,@function
push_handler_nosignal:                  # @push_handler_nosignal
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	handlerlist, %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB59_6
# BB#1:                                 # %if.then
	movl	$288, %eax              # imm = 0x120
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB59_3
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB59_7
.LBB59_3:                               # %if.end
	testb	$1, profiler_memory_running
	je	.LBB59_5
# BB#4:                                 # %if.then.4
	movl	$288, %eax              # imm = 0x120
	movl	%eax, %edi
	callq	malloc_probe
.LBB59_5:                               # %if.end.5
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	handlerlist, %rcx
	movq	%rax, 32(%rcx)
.LBB59_6:                               # %if.end.8
	xorl	%edi, %edi
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	handlerlist, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	lisp_eval_depth, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 256(%rcx)
	callq	SPECPDL_INDEX
	movq	-32(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movl	poll_suppress_count, %edi
	movq	-32(%rbp), %rax
	movl	%edi, 272(%rax)
	movl	interrupt_input_blocked, %edi
	movq	-32(%rbp), %rax
	movl	%edi, 276(%rax)
	movq	byte_stack_list, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, handlerlist
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB59_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	push_handler_nosignal, .Lfunc_end59-push_handler_nosignal
	.cfi_endproc

	.globl	Fsignal
	.align	16, 0x90
	.type	Fsignal,@function
Fsignal:                                # @Fsignal
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
	subq	$256, %rsp              # imm = 0x100
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB60_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB60_3
.LBB60_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB60_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movb	$0, immediate_quit
	movb	$0, abort_on_gc
	testb	$1, gc_in_progress
	jne	.LBB60_5
# BB#4:                                 # %lor.lhs.false
	testb	$1, waiting_for_input
	je	.LBB60_6
.LBB60_5:                               # %if.then
	callq	emacs_abort
.LBB60_6:                               # %if.end
	xorl	%edi, %edi
	movq	globals+2176, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_13
# BB#7:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_13
# BB#8:                                 # %if.then.8
	movq	lisp_eval_depth, %rax
	addq	$20, %rax
	cmpq	globals+3168, %rax
	jle	.LBB60_10
# BB#9:                                 # %if.then.10
	movq	lisp_eval_depth, %rax
	addq	$20, %rax
	movq	%rax, globals+3168
.LBB60_10:                              # %if.end.12
	callq	SPECPDL_INDEX
	addq	$40, %rax
	cmpq	globals+3176, %rax
	jle	.LBB60_12
# BB#11:                                # %if.then.16
	callq	SPECPDL_INDEX
	addq	$40, %rax
	movq	%rax, globals+3176
.LBB60_12:                              # %if.end.19
	movq	globals+2176, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call2
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB60_13:                              # %if.end.21
	movl	$373, %edi              # imm = 0x175
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, Vsignaling_function
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB60_20
# BB#14:                                # %if.then.27
	callq	backtrace_top
	movq	%rax, %rdi
	callq	backtrace_next
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB60_15
	jmp	.LBB60_17
.LBB60_15:                              # %land.lhs.true.31
	movq	-64(%rbp), %rdi
	callq	backtrace_function
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_17
# BB#16:                                # %if.then.35
	movq	-64(%rbp), %rdi
	callq	backtrace_next
	movq	%rax, -64(%rbp)
.LBB60_17:                              # %if.end.37
	movq	-64(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB60_18
	jmp	.LBB60_19
.LBB60_18:                              # %if.then.39
	movq	-64(%rbp), %rdi
	callq	backtrace_function
	movq	%rax, Vsignaling_function
.LBB60_19:                              # %if.end.41
	jmp	.LBB60_20
.LBB60_20:                              # %if.end.42
	movq	handlerlist, %rax
	movq	%rax, -56(%rbp)
.LBB60_21:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB60_28
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB60_21 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$1, (%rax)
	je	.LBB60_24
# BB#23:                                # %if.then.45
                                        #   in Loop: Header=BB60_21 Depth=1
	jmp	.LBB60_27
.LBB60_24:                              # %if.end.46
                                        #   in Loop: Header=BB60_21 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	find_handler_clause
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB60_26
# BB#25:                                # %if.then.50
	jmp	.LBB60_28
.LBB60_26:                              # %if.end.51
                                        #   in Loop: Header=BB60_21 Depth=1
	jmp	.LBB60_27
.LBB60_27:                              # %for.inc
                                        #   in Loop: Header=BB60_21 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB60_21
.LBB60_28:                              # %for.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_38
# BB#29:                                # %land.lhs.true.54
	xorl	%edi, %edi
	movq	globals+456, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_34
# BB#30:                                # %lor.lhs.false.57
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_34
# BB#31:                                # %lor.lhs.false.60
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_33
# BB#32:                                # %land.lhs.true.63
	movl	$320, %edi              # imm = 0x140
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB60_34
.LBB60_33:                              # %lor.lhs.false.69
	movl	$372, %edi              # imm = 0x174
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_38
.LBB60_34:                              # %if.then.74
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	maybe_call_debugger
	andb	$1, %al
	movb	%al, -65(%rbp)
	testb	$1, -65(%rbp)
	je	.LBB60_37
# BB#35:                                # %land.lhs.true.78
	movl	$782, %edi              # imm = 0x30E
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_37
# BB#36:                                # %if.then.82
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.LBB60_37:                              # %if.end.84
	jmp	.LBB60_38
.LBB60_38:                              # %if.end.85
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_43
# BB#39:                                # %if.then.89
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_41
# BB#40:                                # %cond.true.93
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB60_42
.LBB60_41:                              # %cond.false.94
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB60_42:                              # %cond.end.96
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	unwind_to_catch
.LBB60_43:                              # %if.else
	movabsq	$handlerlist_sentinel, %rax
	cmpq	%rax, handlerlist
	je	.LBB60_45
# BB#44:                                # %if.then.100
	movl	$930, %edi              # imm = 0x3A2
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fthrow
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB60_45:                              # %if.end.103
	jmp	.LBB60_46
.LBB60_46:                              # %if.end.104
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_48
# BB#47:                                # %if.then.108
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB60_48:                              # %if.end.110
	movq	-16(%rbp), %rdi
	callq	Ferror_message_string
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fatal
.Lfunc_end60:
	.size	Fsignal, .Lfunc_end60-Fsignal
	.cfi_endproc

	.globl	call2
	.align	16, 0x90
	.type	call2,@function
call2:                                  # @call2
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
	movl	$3, %eax
	movl	%eax, %ecx
	leaq	-48(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	Ffuncall
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	call2, .Lfunc_end61-call2
	.cfi_endproc

	.align	16, 0x90
	.type	find_handler_clause,@function
find_handler_clause:                    # @find_handler_clause
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
	subq	$64, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB62_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB62_11
.LBB62_2:                               # %if.end
	movl	$372, %edi              # imm = 0x174
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_4
# BB#3:                                 # %if.then.4
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB62_11
.LBB62_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB62_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB62_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB62_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB62_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB62_11
.LBB62_8:                               # %if.end.14
                                        #   in Loop: Header=BB62_5 Depth=1
	jmp	.LBB62_9
.LBB62_9:                               # %for.inc
                                        #   in Loop: Header=BB62_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB62_5
.LBB62_10:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB62_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	find_handler_clause, .Lfunc_end62-find_handler_clause
	.cfi_endproc

	.align	16, 0x90
	.type	maybe_call_debugger,@function
maybe_call_debugger:                    # @maybe_call_debugger
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -40(%rbp)
	callq	input_blocked_p
	testb	$1, %al
	jne	.LBB63_8
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1064, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_8
# BB#2:                                 # %land.lhs.true.3
	movl	$782, %edi              # imm = 0x30E
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_4
# BB#3:                                 # %cond.true
	testb	$1, globals+3373
	jne	.LBB63_5
	jmp	.LBB63_8
.LBB63_4:                               # %cond.false
	movq	globals+432, %rdi
	movq	-16(%rbp), %rsi
	callq	wants_debugger
	testb	$1, %al
	jne	.LBB63_5
	jmp	.LBB63_8
.LBB63_5:                               # %land.lhs.true.7
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	skip_debugger
	testb	$1, %al
	jne	.LBB63_8
# BB#6:                                 # %land.lhs.true.9
	movq	when_entered_debugger, %rax
	cmpq	globals+3208, %rax
	jge	.LBB63_8
# BB#7:                                 # %if.then
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, %rdi
	callq	call_debugger
	movb	$1, -1(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB63_9
.LBB63_8:                               # %if.end
	movb	$0, -1(%rbp)
.LBB63_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	maybe_call_debugger, .Lfunc_end63-maybe_call_debugger
	.cfi_endproc

	.globl	xsignal
	.align	16, 0x90
	.type	xsignal,@function
xsignal:                                # @xsignal
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fsignal
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	emacs_abort
.Lfunc_end64:
	.size	xsignal, .Lfunc_end64-xsignal
	.cfi_endproc

	.globl	xsignal0
	.align	16, 0x90
	.type	xsignal0,@function
xsignal0:                               # @xsignal0
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end65:
	.size	xsignal0, .Lfunc_end65-xsignal0
	.cfi_endproc

	.globl	xsignal3
	.align	16, 0x90
	.type	xsignal3,@function
xsignal3:                               # @xsignal3
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	list3
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end66:
	.size	xsignal3, .Lfunc_end66-xsignal3
	.cfi_endproc

	.globl	verror
	.align	16, 0x90
	.type	verror,@function
verror:                                 # @verror
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
	subq	$4064, %rsp             # imm = 0xFE0
	leaq	-4040(%rbp), %rax
	leaq	-4024(%rbp), %rcx
	leaq	-4016(%rbp), %rdx
	movabsq	$2305843009213693952, %r8 # imm = 0x2000000000000000
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$4000, -4024(%rbp)      # imm = 0xFA0
	movq	%r8, -4032(%rbp)
	movq	%rdx, -4040(%rbp)
	movq	-4032(%rbp), %rsi
	movq	-8(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	%rax, %rdi
	movq	%rsi, -4064(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	-4064(%rbp), %rcx       # 8-byte Reload
	callq	evxprintf
	movq	%rax, -4048(%rbp)
	movq	-4040(%rbp), %rdi
	movq	-4048(%rbp), %rsi
	callq	make_string
	leaq	-4016(%rbp), %rcx
	movq	%rax, -4056(%rbp)
	movq	-4040(%rbp), %rax
	cmpq	%rcx, %rax
	je	.LBB67_2
# BB#1:                                 # %if.then
	movq	-4040(%rbp), %rdi
	callq	xfree
.LBB67_2:                               # %if.end
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	-4056(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.Lfunc_end67:
	.size	verror, .Lfunc_end67-verror
	.cfi_endproc

	.globl	Fcommandp
	.align	16, 0x90
	.type	Fcommandp,@function
Fcommandp:                              # @Fcommandp
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	indirect_function
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB68_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB68_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB68_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB68_3 Depth=1
	movl	$561, %edi              # imm = 0x231
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB68_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB68_3 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB68_6:                               # %if.end.13
                                        #   in Loop: Header=BB68_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fsymbol_function
	movq	%rax, -32(%rbp)
	jmp	.LBB68_3
.LBB68_7:                               # %while.end
	movq	-32(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB68_8
	jmp	.LBB68_12
.LBB68_8:                               # %if.then.16
	movq	-32(%rbp), %rdi
	callq	XSUBR
	cmpq	$0, 32(%rax)
	je	.LBB68_10
# BB#9:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB68_11
.LBB68_10:                              # %cond.false
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB68_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_12:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB68_13
	jmp	.LBB68_17
.LBB68_13:                              # %if.then.20
	movq	-32(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$5, %rax
	jle	.LBB68_15
# BB#14:                                # %cond.true.25
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB68_16
.LBB68_15:                              # %cond.false.27
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB68_16:                              # %cond.end.28
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_17:                              # %if.end.30
	jmp	.LBB68_18
.LBB68_18:                              # %if.end.31
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB68_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB68_20
	jmp	.LBB68_24
.LBB68_20:                              # %if.then.36
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_22
# BB#21:                                # %cond.true.40
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB68_23
.LBB68_22:                              # %cond.false.42
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB68_23:                              # %cond.end.44
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_24:                              # %if.end.46
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB68_26
# BB#25:                                # %if.then.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_26:                              # %if.end.53
	movl	$271, %edi              # imm = 0x10F
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_31
# BB#27:                                # %if.then.57
	movl	$560, %edi              # imm = 0x230
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_29
# BB#28:                                # %cond.true.66
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB68_30
.LBB68_29:                              # %cond.false.68
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB68_30:                              # %cond.end.69
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_31:                              # %if.else.71
	movl	$598, %edi              # imm = 0x256
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_36
# BB#32:                                # %if.then.75
	movl	$560, %edi              # imm = 0x230
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	Fcdr
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_34
# BB#33:                                # %cond.true.85
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB68_35
.LBB68_34:                              # %cond.false.87
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB68_35:                              # %cond.end.88
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_36:                              # %if.else.90
	movl	$191, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_41
# BB#37:                                # %if.then.94
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_39
# BB#38:                                # %cond.true.104
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB68_40
.LBB68_39:                              # %cond.false.106
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB68_40:                              # %cond.end.107
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB68_42
.LBB68_41:                              # %if.else.109
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB68_42:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fcommandp, .Lfunc_end68-Fcommandp
	.cfi_endproc

	.globl	Fautoload
	.align	16, 0x90
	.type	Fautoload,@function
Fautoload:                              # @Fautoload
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB69_2
# BB#1:                                 # %cond.true
	jmp	.LBB69_3
.LBB69_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB69_3:                               # %cond.end
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rdi
	callq	AUTOLOADP
	testb	$1, %al
	jne	.LBB69_6
# BB#5:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB69_10
.LBB69_6:                               # %if.end
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_9
# BB#7:                                 # %land.lhs.true.14
	cmpq	$2, -32(%rbp)
	jne	.LBB69_9
# BB#8:                                 # %if.then.17
	movq	-16(%rbp), %rdi
	callq	XUINT
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB69_9:                               # %if.end.19
	movl	$191, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	list5
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fdefalias
	movq	%rax, -8(%rbp)
.LBB69_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	Fautoload, .Lfunc_end69-Fautoload
	.cfi_endproc

	.globl	un_autoload
	.align	16, 0x90
	.type	un_autoload,@function
un_autoload:                            # @un_autoload
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	Vautoload_queue, %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, Vautoload_queue
.LBB70_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB70_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	%rax, -24(%rbp)
	cmpq	$2, -24(%rbp)
	jne	.LBB70_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, globals+736
	jmp	.LBB70_5
.LBB70_4:                               # %if.else
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Ffset
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB70_5:                               # %if.end
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB70_1
.LBB70_6:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	un_autoload, .Lfunc_end70-un_autoload
	.cfi_endproc

	.globl	Feval
	.align	16, 0x90
	.type	Feval,@function
Feval:                                  # @Feval
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movl	$567, %edi              # imm = 0x237
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %edi
	cmpl	$3, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB71_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_3
.LBB71_2:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB71_4
.LBB71_3:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB71_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	eval_sub
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Feval, .Lfunc_end71-Feval
	.cfi_endproc

	.globl	record_in_backtrace
	.align	16, 0x90
	.type	record_in_backtrace,@function
record_in_backtrace:                    # @record_in_backtrace
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -32(%rbp)
	movq	specpdl_ptr, %rax
	movw	(%rax), %cx
	andw	$-256, %cx
	orw	$4, %cx
	movw	%cx, (%rax)
	movq	specpdl_ptr, %rax
	movw	(%rax), %cx
	andw	$-257, %cx              # imm = 0xFFFFFFFFFFFFFEFF
	movw	%cx, (%rax)
	movq	-8(%rbp), %rax
	movq	specpdl_ptr, %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	specpdl_ptr, %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	specpdl_ptr, %rdx
	movq	%rax, 24(%rdx)
	callq	grow_specpdl
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	record_in_backtrace, .Lfunc_end72-record_in_backtrace
	.cfi_endproc

	.align	16, 0x90
	.type	do_debug_on_call,@function
do_debug_on_call:                       # @do_debug_on_call
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
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, globals+3372
	movq	specpdl, %rsi
	movq	-16(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	set_backtrace_debug_on_exit
	movq	-8(%rbp), %rdi
	callq	list1
	movq	%rax, %rdi
	callq	call_debugger
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	do_debug_on_call, .Lfunc_end73-do_debug_on_call
	.cfi_endproc

	.align	16, 0x90
	.type	set_backtrace_args,@function
set_backtrace_args:                     # @set_backtrace_args
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
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end74:
	.size	set_backtrace_args, .Lfunc_end74-set_backtrace_args
	.cfi_endproc

	.align	16, 0x90
	.type	backtrace_debug_on_exit,@function
backtrace_debug_on_exit:                # @backtrace_debug_on_exit
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movw	(%rdi), %ax
	shrw	$8, %ax
	andw	$1, %ax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end75:
	.size	backtrace_debug_on_exit, .Lfunc_end75-backtrace_debug_on_exit
	.cfi_endproc

	.align	16, 0x90
	.type	apply_lambda,@function
apply_lambda:                           # @apply_lambda
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
	subq	$944, %rsp              # imm = 0x3B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movq	-16(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_2
	jmp	.LBB76_81
.LBB76_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_3
	jmp	.LBB76_42
.LBB76_3:                               # %cond.true.2
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_5
# BB#4:                                 # %cond.true.5
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB76_6
.LBB76_5:                               # %cond.false
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
.LBB76_6:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB76_8
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB76_34
.LBB76_8:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_9
	jmp	.LBB76_20
.LBB76_9:                               # %cond.true.34
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB76_14
# BB#10:                                # %cond.true.39
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -112(%rbp)        # 4-byte Spill
	jge	.LBB76_12
# BB#11:                                # %cond.true.49
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB76_13
.LBB76_12:                              # %cond.false.59
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB76_13:                              # %cond.end.65
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-112(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB76_34
	jmp	.LBB76_31
.LBB76_14:                              # %cond.false.69
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_15
	jmp	.LBB76_16
.LBB76_15:                              # %cond.true.70
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_34
	jmp	.LBB76_31
.LBB76_16:                              # %cond.false.71
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_18
# BB#17:                                # %cond.true.79
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB76_19
.LBB76_18:                              # %cond.false.99
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
.LBB76_19:                              # %cond.end.105
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB76_34
	jmp	.LBB76_31
.LBB76_20:                              # %cond.false.112
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_21
	jmp	.LBB76_22
.LBB76_21:                              # %cond.true.113
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_34
	jmp	.LBB76_31
.LBB76_22:                              # %cond.false.114
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB76_27
# BB#23:                                # %cond.true.119
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jge	.LBB76_25
# BB#24:                                # %cond.true.129
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB76_26
.LBB76_25:                              # %cond.false.149
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB76_26:                              # %cond.end.155
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB76_34
	jmp	.LBB76_31
.LBB76_27:                              # %cond.false.160
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_29
# BB#28:                                # %cond.true.168
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB76_30
.LBB76_29:                              # %cond.false.178
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB76_30:                              # %cond.end.184
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB76_34
.LBB76_31:                              # %lor.lhs.false.191
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_33
# BB#32:                                # %land.lhs.true.199
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB76_34
.LBB76_33:                              # %lor.lhs.false.205
	movl	$127, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB76_38
.LBB76_34:                              # %cond.true.211
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB76_36
# BB#35:                                # %cond.true.217
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB76_37
.LBB76_36:                              # %cond.false.223
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB76_37:                              # %cond.end.231
	movl	-136(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_38:                              # %cond.false.234
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB76_40
# BB#39:                                # %cond.true.240
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB76_41
.LBB76_40:                              # %cond.false.246
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB76_41:                              # %cond.end.254
	movl	-140(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_42:                              # %cond.false.257
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_44
# BB#43:                                # %cond.true.263
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB76_45
.LBB76_44:                              # %cond.false.280
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB76_45:                              # %cond.end.284
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_47
# BB#46:                                # %land.lhs.true.288
	cmpq	$0, -48(%rbp)
	jl	.LBB76_73
.LBB76_47:                              # %lor.lhs.false.291
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_48
	jmp	.LBB76_59
.LBB76_48:                              # %cond.true.292
	cmpq	$0, -48(%rbp)
	jge	.LBB76_53
# BB#49:                                # %cond.true.295
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jge	.LBB76_51
# BB#50:                                # %cond.true.301
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB76_52
.LBB76_51:                              # %cond.false.309
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB76_52:                              # %cond.end.313
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	cqto
	movq	-176(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_73
	jmp	.LBB76_70
.LBB76_53:                              # %cond.false.318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_54
	jmp	.LBB76_55
.LBB76_54:                              # %cond.true.319
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_73
	jmp	.LBB76_70
.LBB76_55:                              # %cond.false.320
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_57
# BB#56:                                # %cond.true.326
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB76_58
.LBB76_57:                              # %cond.false.343
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB76_58:                              # %cond.end.347
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_73
	jmp	.LBB76_70
.LBB76_59:                              # %cond.false.352
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_60
	jmp	.LBB76_61
.LBB76_60:                              # %cond.true.353
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_73
	jmp	.LBB76_70
.LBB76_61:                              # %cond.false.354
	cmpq	$0, -48(%rbp)
	jge	.LBB76_66
# BB#62:                                # %cond.true.357
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jge	.LBB76_64
# BB#63:                                # %cond.true.363
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB76_65
.LBB76_64:                              # %cond.false.380
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB76_65:                              # %cond.end.384
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	cqto
	movq	-216(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_73
	jmp	.LBB76_70
.LBB76_66:                              # %cond.false.389
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_68
# BB#67:                                # %cond.true.395
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB76_69
.LBB76_68:                              # %cond.false.403
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB76_69:                              # %cond.end.407
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	cqto
	movq	-232(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_73
.LBB76_70:                              # %lor.lhs.false.412
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_72
# BB#71:                                # %land.lhs.true.418
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB76_73
.LBB76_72:                              # %lor.lhs.false.422
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB76_77
.LBB76_73:                              # %cond.true.426
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB76_75
# BB#74:                                # %cond.true.432
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB76_76
.LBB76_75:                              # %cond.false.438
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB76_76:                              # %cond.end.446
	movl	-236(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_77:                              # %cond.false.449
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB76_79
# BB#78:                                # %cond.true.455
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB76_80
.LBB76_79:                              # %cond.false.461
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB76_80:                              # %cond.end.469
	movl	-240(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_81:                              # %cond.false.472
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_82
	jmp	.LBB76_161
.LBB76_82:                              # %cond.true.473
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_83
	jmp	.LBB76_122
.LBB76_83:                              # %cond.true.474
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_85
# BB#84:                                # %cond.true.482
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB76_86
.LBB76_85:                              # %cond.false.502
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB76_86:                              # %cond.end.508
	movl	-244(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB76_88
# BB#87:                                # %land.lhs.true.512
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB76_114
.LBB76_88:                              # %lor.lhs.false.517
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_89
	jmp	.LBB76_100
.LBB76_89:                              # %cond.true.518
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB76_94
# BB#90:                                # %cond.true.523
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jge	.LBB76_92
# BB#91:                                # %cond.true.533
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB76_93
.LBB76_92:                              # %cond.false.543
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB76_93:                              # %cond.end.549
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB76_114
	jmp	.LBB76_111
.LBB76_94:                              # %cond.false.554
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_95
	jmp	.LBB76_96
.LBB76_95:                              # %cond.true.555
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_114
	jmp	.LBB76_111
.LBB76_96:                              # %cond.false.556
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_98
# BB#97:                                # %cond.true.564
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB76_99
.LBB76_98:                              # %cond.false.584
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
.LBB76_99:                              # %cond.end.590
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB76_114
	jmp	.LBB76_111
.LBB76_100:                             # %cond.false.597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_101
	jmp	.LBB76_102
.LBB76_101:                             # %cond.true.598
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_114
	jmp	.LBB76_111
.LBB76_102:                             # %cond.false.599
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB76_107
# BB#103:                               # %cond.true.604
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jge	.LBB76_105
# BB#104:                               # %cond.true.614
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB76_106
.LBB76_105:                             # %cond.false.634
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB76_106:                             # %cond.end.640
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-260(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB76_114
	jmp	.LBB76_111
.LBB76_107:                             # %cond.false.645
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_109
# BB#108:                               # %cond.true.653
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB76_110
.LBB76_109:                             # %cond.false.663
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB76_110:                             # %cond.end.669
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB76_114
.LBB76_111:                             # %lor.lhs.false.676
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB76_113
# BB#112:                               # %land.lhs.true.684
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB76_114
.LBB76_113:                             # %lor.lhs.false.690
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB76_118
.LBB76_114:                             # %cond.true.696
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB76_116
# BB#115:                               # %cond.true.702
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB76_117
.LBB76_116:                             # %cond.false.708
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB76_117:                             # %cond.end.716
	movl	-272(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_118:                             # %cond.false.719
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB76_120
# BB#119:                               # %cond.true.725
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB76_121
.LBB76_120:                             # %cond.false.731
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB76_121:                             # %cond.end.739
	movl	-276(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_122:                             # %cond.false.742
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_124
# BB#123:                               # %cond.true.748
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB76_125
.LBB76_124:                             # %cond.false.765
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB76_125:                             # %cond.end.769
	movq	-288(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_127
# BB#126:                               # %land.lhs.true.773
	cmpq	$0, -48(%rbp)
	jl	.LBB76_153
.LBB76_127:                             # %lor.lhs.false.776
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_128
	jmp	.LBB76_139
.LBB76_128:                             # %cond.true.777
	cmpq	$0, -48(%rbp)
	jge	.LBB76_133
# BB#129:                               # %cond.true.780
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jge	.LBB76_131
# BB#130:                               # %cond.true.786
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB76_132
.LBB76_131:                             # %cond.false.794
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB76_132:                             # %cond.end.798
	movq	-304(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	cqto
	movq	-312(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_153
	jmp	.LBB76_150
.LBB76_133:                             # %cond.false.803
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_134
	jmp	.LBB76_135
.LBB76_134:                             # %cond.true.804
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_153
	jmp	.LBB76_150
.LBB76_135:                             # %cond.false.805
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_137
# BB#136:                               # %cond.true.811
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB76_138
.LBB76_137:                             # %cond.false.828
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB76_138:                             # %cond.end.832
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	cqto
	movq	-328(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_153
	jmp	.LBB76_150
.LBB76_139:                             # %cond.false.837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_140
	jmp	.LBB76_141
.LBB76_140:                             # %cond.true.838
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_153
	jmp	.LBB76_150
.LBB76_141:                             # %cond.false.839
	cmpq	$0, -48(%rbp)
	jge	.LBB76_146
# BB#142:                               # %cond.true.842
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jge	.LBB76_144
# BB#143:                               # %cond.true.848
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB76_145
.LBB76_144:                             # %cond.false.865
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB76_145:                             # %cond.end.869
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cqto
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_153
	jmp	.LBB76_150
.LBB76_146:                             # %cond.false.874
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_148
# BB#147:                               # %cond.true.880
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB76_149
.LBB76_148:                             # %cond.false.888
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB76_149:                             # %cond.end.892
	movq	-360(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	cqto
	movq	-368(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_153
.LBB76_150:                             # %lor.lhs.false.897
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_152
# BB#151:                               # %land.lhs.true.903
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB76_153
.LBB76_152:                             # %lor.lhs.false.907
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB76_157
.LBB76_153:                             # %cond.true.911
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB76_155
# BB#154:                               # %cond.true.917
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB76_156
.LBB76_155:                             # %cond.false.923
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -372(%rbp)        # 4-byte Spill
.LBB76_156:                             # %cond.end.931
	movl	-372(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_157:                             # %cond.false.934
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB76_159
# BB#158:                               # %cond.true.940
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -376(%rbp)        # 4-byte Spill
	jmp	.LBB76_160
.LBB76_159:                             # %cond.false.946
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -376(%rbp)        # 4-byte Spill
.LBB76_160:                             # %cond.end.954
	movl	-376(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_161:                             # %cond.false.957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_162
	jmp	.LBB76_241
.LBB76_162:                             # %cond.true.958
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_163
	jmp	.LBB76_202
.LBB76_163:                             # %cond.true.959
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB76_165
# BB#164:                               # %cond.true.966
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB76_166
.LBB76_165:                             # %cond.false.984
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
.LBB76_166:                             # %cond.end.989
	movl	-380(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB76_168
# BB#167:                               # %land.lhs.true.993
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB76_194
.LBB76_168:                             # %lor.lhs.false.997
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_169
	jmp	.LBB76_180
.LBB76_169:                             # %cond.true.998
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB76_174
# BB#170:                               # %cond.true.1002
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	jge	.LBB76_172
# BB#171:                               # %cond.true.1010
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB76_173
.LBB76_172:                             # %cond.false.1019
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB76_173:                             # %cond.end.1024
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-384(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB76_194
	jmp	.LBB76_191
.LBB76_174:                             # %cond.false.1029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_175
	jmp	.LBB76_176
.LBB76_175:                             # %cond.true.1030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_194
	jmp	.LBB76_191
.LBB76_176:                             # %cond.false.1031
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB76_178
# BB#177:                               # %cond.true.1038
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB76_179
.LBB76_178:                             # %cond.false.1056
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
.LBB76_179:                             # %cond.end.1061
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB76_194
	jmp	.LBB76_191
.LBB76_180:                             # %cond.false.1067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_181
	jmp	.LBB76_182
.LBB76_181:                             # %cond.true.1068
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_194
	jmp	.LBB76_191
.LBB76_182:                             # %cond.false.1069
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB76_187
# BB#183:                               # %cond.true.1073
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jge	.LBB76_185
# BB#184:                               # %cond.true.1081
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB76_186
.LBB76_185:                             # %cond.false.1099
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB76_186:                             # %cond.end.1104
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-396(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB76_194
	jmp	.LBB76_191
.LBB76_187:                             # %cond.false.1109
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB76_189
# BB#188:                               # %cond.true.1116
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB76_190
.LBB76_189:                             # %cond.false.1125
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
.LBB76_190:                             # %cond.end.1130
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB76_194
.LBB76_191:                             # %lor.lhs.false.1136
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB76_193
# BB#192:                               # %land.lhs.true.1143
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB76_194
.LBB76_193:                             # %lor.lhs.false.1148
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB76_198
.LBB76_194:                             # %cond.true.1153
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB76_196
# BB#195:                               # %cond.true.1158
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	jmp	.LBB76_197
.LBB76_196:                             # %cond.false.1161
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB76_197:                             # %cond.end.1166
	movl	-408(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_198:                             # %cond.false.1169
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB76_200
# BB#199:                               # %cond.true.1174
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB76_201
.LBB76_200:                             # %cond.false.1177
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB76_201:                             # %cond.end.1182
	movl	-412(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_202:                             # %cond.false.1185
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_204
# BB#203:                               # %cond.true.1191
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB76_205
.LBB76_204:                             # %cond.false.1208
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB76_205:                             # %cond.end.1212
	movq	-424(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_207
# BB#206:                               # %land.lhs.true.1216
	cmpq	$0, -48(%rbp)
	jl	.LBB76_233
.LBB76_207:                             # %lor.lhs.false.1219
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_208
	jmp	.LBB76_219
.LBB76_208:                             # %cond.true.1220
	cmpq	$0, -48(%rbp)
	jge	.LBB76_213
# BB#209:                               # %cond.true.1223
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jge	.LBB76_211
# BB#210:                               # %cond.true.1229
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB76_212
.LBB76_211:                             # %cond.false.1237
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB76_212:                             # %cond.end.1241
	movq	-440(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	cqto
	movq	-448(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-432(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_233
	jmp	.LBB76_230
.LBB76_213:                             # %cond.false.1246
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_214
	jmp	.LBB76_215
.LBB76_214:                             # %cond.true.1247
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_233
	jmp	.LBB76_230
.LBB76_215:                             # %cond.false.1248
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_217
# BB#216:                               # %cond.true.1254
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB76_218
.LBB76_217:                             # %cond.false.1271
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB76_218:                             # %cond.end.1275
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_233
	jmp	.LBB76_230
.LBB76_219:                             # %cond.false.1280
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_220
	jmp	.LBB76_221
.LBB76_220:                             # %cond.true.1281
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_233
	jmp	.LBB76_230
.LBB76_221:                             # %cond.false.1282
	cmpq	$0, -48(%rbp)
	jge	.LBB76_226
# BB#222:                               # %cond.true.1285
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jge	.LBB76_224
# BB#223:                               # %cond.true.1291
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB76_225
.LBB76_224:                             # %cond.false.1308
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB76_225:                             # %cond.end.1312
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	cqto
	movq	-488(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-472(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_233
	jmp	.LBB76_230
.LBB76_226:                             # %cond.false.1317
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_228
# BB#227:                               # %cond.true.1323
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB76_229
.LBB76_228:                             # %cond.false.1331
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB76_229:                             # %cond.end.1335
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	cqto
	movq	-504(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_233
.LBB76_230:                             # %lor.lhs.false.1340
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_232
# BB#231:                               # %land.lhs.true.1346
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB76_233
.LBB76_232:                             # %lor.lhs.false.1350
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB76_237
.LBB76_233:                             # %cond.true.1354
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB76_235
# BB#234:                               # %cond.true.1359
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	jmp	.LBB76_236
.LBB76_235:                             # %cond.false.1362
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -508(%rbp)        # 4-byte Spill
.LBB76_236:                             # %cond.end.1367
	movl	-508(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_237:                             # %cond.false.1370
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB76_239
# BB#238:                               # %cond.true.1375
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	jmp	.LBB76_240
.LBB76_239:                             # %cond.false.1378
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -512(%rbp)        # 4-byte Spill
.LBB76_240:                             # %cond.end.1383
	movl	-512(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_241:                             # %cond.false.1386
	movb	$1, %al
	testb	$1, %al
	jne	.LBB76_242
	jmp	.LBB76_321
.LBB76_242:                             # %cond.true.1387
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_243
	jmp	.LBB76_282
.LBB76_243:                             # %cond.true.1388
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_245
# BB#244:                               # %cond.true.1394
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB76_246
.LBB76_245:                             # %cond.false.1411
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB76_246:                             # %cond.end.1415
	movq	-520(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_248
# BB#247:                               # %land.lhs.true.1419
	cmpq	$0, -48(%rbp)
	jl	.LBB76_274
.LBB76_248:                             # %lor.lhs.false.1422
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_249
	jmp	.LBB76_260
.LBB76_249:                             # %cond.true.1423
	cmpq	$0, -48(%rbp)
	jge	.LBB76_254
# BB#250:                               # %cond.true.1426
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jge	.LBB76_252
# BB#251:                               # %cond.true.1432
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB76_253
.LBB76_252:                             # %cond.false.1440
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB76_253:                             # %cond.end.1444
	movq	-536(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	cqto
	movq	-544(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_274
	jmp	.LBB76_271
.LBB76_254:                             # %cond.false.1449
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_255
	jmp	.LBB76_256
.LBB76_255:                             # %cond.true.1450
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_274
	jmp	.LBB76_271
.LBB76_256:                             # %cond.false.1451
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_258
# BB#257:                               # %cond.true.1457
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB76_259
.LBB76_258:                             # %cond.false.1474
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB76_259:                             # %cond.end.1478
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_274
	jmp	.LBB76_271
.LBB76_260:                             # %cond.false.1483
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_261
	jmp	.LBB76_262
.LBB76_261:                             # %cond.true.1484
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_274
	jmp	.LBB76_271
.LBB76_262:                             # %cond.false.1485
	cmpq	$0, -48(%rbp)
	jge	.LBB76_267
# BB#263:                               # %cond.true.1488
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jge	.LBB76_265
# BB#264:                               # %cond.true.1494
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB76_266
.LBB76_265:                             # %cond.false.1511
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB76_266:                             # %cond.end.1515
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	cqto
	movq	-584(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_274
	jmp	.LBB76_271
.LBB76_267:                             # %cond.false.1520
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_269
# BB#268:                               # %cond.true.1526
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB76_270
.LBB76_269:                             # %cond.false.1534
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB76_270:                             # %cond.end.1538
	movq	-592(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	cqto
	movq	-600(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_274
.LBB76_271:                             # %lor.lhs.false.1543
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_273
# BB#272:                               # %land.lhs.true.1549
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB76_274
.LBB76_273:                             # %lor.lhs.false.1553
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB76_278
.LBB76_274:                             # %cond.true.1557
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_276
# BB#275:                               # %cond.true.1561
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB76_277
.LBB76_276:                             # %cond.false.1563
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB76_277:                             # %cond.end.1567
	movq	-608(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_278:                             # %cond.false.1569
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_280
# BB#279:                               # %cond.true.1573
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB76_281
.LBB76_280:                             # %cond.false.1575
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB76_281:                             # %cond.end.1579
	movq	-616(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_282:                             # %cond.false.1581
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_284
# BB#283:                               # %cond.true.1587
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB76_285
.LBB76_284:                             # %cond.false.1604
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB76_285:                             # %cond.end.1608
	movq	-624(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_287
# BB#286:                               # %land.lhs.true.1612
	cmpq	$0, -48(%rbp)
	jl	.LBB76_313
.LBB76_287:                             # %lor.lhs.false.1615
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_288
	jmp	.LBB76_299
.LBB76_288:                             # %cond.true.1616
	cmpq	$0, -48(%rbp)
	jge	.LBB76_293
# BB#289:                               # %cond.true.1619
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jge	.LBB76_291
# BB#290:                               # %cond.true.1625
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB76_292
.LBB76_291:                             # %cond.false.1633
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB76_292:                             # %cond.end.1637
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_313
	jmp	.LBB76_310
.LBB76_293:                             # %cond.false.1642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_294
	jmp	.LBB76_295
.LBB76_294:                             # %cond.true.1643
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_313
	jmp	.LBB76_310
.LBB76_295:                             # %cond.false.1644
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_297
# BB#296:                               # %cond.true.1650
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB76_298
.LBB76_297:                             # %cond.false.1667
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB76_298:                             # %cond.end.1671
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_313
	jmp	.LBB76_310
.LBB76_299:                             # %cond.false.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_300
	jmp	.LBB76_301
.LBB76_300:                             # %cond.true.1677
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_313
	jmp	.LBB76_310
.LBB76_301:                             # %cond.false.1678
	cmpq	$0, -48(%rbp)
	jge	.LBB76_306
# BB#302:                               # %cond.true.1681
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jge	.LBB76_304
# BB#303:                               # %cond.true.1687
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB76_305
.LBB76_304:                             # %cond.false.1704
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB76_305:                             # %cond.end.1708
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_313
	jmp	.LBB76_310
.LBB76_306:                             # %cond.false.1713
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_308
# BB#307:                               # %cond.true.1719
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB76_309
.LBB76_308:                             # %cond.false.1727
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB76_309:                             # %cond.end.1731
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_313
.LBB76_310:                             # %lor.lhs.false.1736
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_312
# BB#311:                               # %land.lhs.true.1742
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB76_313
.LBB76_312:                             # %lor.lhs.false.1746
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB76_317
.LBB76_313:                             # %cond.true.1750
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_315
# BB#314:                               # %cond.true.1754
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB76_316
.LBB76_315:                             # %cond.false.1756
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB76_316:                             # %cond.end.1760
	movq	-712(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_317:                             # %cond.false.1762
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_319
# BB#318:                               # %cond.true.1766
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB76_320
.LBB76_319:                             # %cond.false.1768
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB76_320:                             # %cond.end.1772
	movq	-720(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_321:                             # %cond.false.1774
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_322
	jmp	.LBB76_361
.LBB76_322:                             # %cond.true.1775
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_324
# BB#323:                               # %cond.true.1781
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB76_325
.LBB76_324:                             # %cond.false.1798
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB76_325:                             # %cond.end.1802
	movq	-728(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_327
# BB#326:                               # %land.lhs.true.1806
	cmpq	$0, -48(%rbp)
	jl	.LBB76_353
.LBB76_327:                             # %lor.lhs.false.1809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_328
	jmp	.LBB76_339
.LBB76_328:                             # %cond.true.1810
	cmpq	$0, -48(%rbp)
	jge	.LBB76_333
# BB#329:                               # %cond.true.1813
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB76_331
# BB#330:                               # %cond.true.1819
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB76_332
.LBB76_331:                             # %cond.false.1827
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB76_332:                             # %cond.end.1831
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_353
	jmp	.LBB76_350
.LBB76_333:                             # %cond.false.1836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_334
	jmp	.LBB76_335
.LBB76_334:                             # %cond.true.1837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_353
	jmp	.LBB76_350
.LBB76_335:                             # %cond.false.1838
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_337
# BB#336:                               # %cond.true.1844
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB76_338
.LBB76_337:                             # %cond.false.1861
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB76_338:                             # %cond.end.1865
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_353
	jmp	.LBB76_350
.LBB76_339:                             # %cond.false.1870
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_340
	jmp	.LBB76_341
.LBB76_340:                             # %cond.true.1871
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_353
	jmp	.LBB76_350
.LBB76_341:                             # %cond.false.1872
	cmpq	$0, -48(%rbp)
	jge	.LBB76_346
# BB#342:                               # %cond.true.1875
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jge	.LBB76_344
# BB#343:                               # %cond.true.1881
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB76_345
.LBB76_344:                             # %cond.false.1898
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB76_345:                             # %cond.end.1902
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-776(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_353
	jmp	.LBB76_350
.LBB76_346:                             # %cond.false.1907
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_348
# BB#347:                               # %cond.true.1913
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB76_349
.LBB76_348:                             # %cond.false.1921
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB76_349:                             # %cond.end.1925
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_353
.LBB76_350:                             # %lor.lhs.false.1930
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_352
# BB#351:                               # %land.lhs.true.1936
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB76_353
.LBB76_352:                             # %lor.lhs.false.1940
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB76_357
.LBB76_353:                             # %cond.true.1944
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_355
# BB#354:                               # %cond.true.1948
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB76_356
.LBB76_355:                             # %cond.false.1950
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB76_356:                             # %cond.end.1954
	movq	-816(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_357:                             # %cond.false.1956
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_359
# BB#358:                               # %cond.true.1960
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB76_360
.LBB76_359:                             # %cond.false.1962
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB76_360:                             # %cond.end.1966
	movq	-824(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_361:                             # %cond.false.1968
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_363
# BB#362:                               # %cond.true.1974
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB76_364
.LBB76_363:                             # %cond.false.1991
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB76_364:                             # %cond.end.1995
	movq	-832(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB76_366
# BB#365:                               # %land.lhs.true.1999
	cmpq	$0, -48(%rbp)
	jl	.LBB76_392
.LBB76_366:                             # %lor.lhs.false.2002
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_367
	jmp	.LBB76_378
.LBB76_367:                             # %cond.true.2003
	cmpq	$0, -48(%rbp)
	jge	.LBB76_372
# BB#368:                               # %cond.true.2006
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jge	.LBB76_370
# BB#369:                               # %cond.true.2012
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB76_371
.LBB76_370:                             # %cond.false.2020
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB76_371:                             # %cond.end.2024
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-840(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_392
	jmp	.LBB76_389
.LBB76_372:                             # %cond.false.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_373
	jmp	.LBB76_374
.LBB76_373:                             # %cond.true.2030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_392
	jmp	.LBB76_389
.LBB76_374:                             # %cond.false.2031
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_376
# BB#375:                               # %cond.true.2037
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB76_377
.LBB76_376:                             # %cond.false.2054
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB76_377:                             # %cond.end.2058
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_392
	jmp	.LBB76_389
.LBB76_378:                             # %cond.false.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_379
	jmp	.LBB76_380
.LBB76_379:                             # %cond.true.2064
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB76_392
	jmp	.LBB76_389
.LBB76_380:                             # %cond.false.2065
	cmpq	$0, -48(%rbp)
	jge	.LBB76_385
# BB#381:                               # %cond.true.2068
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jge	.LBB76_383
# BB#382:                               # %cond.true.2074
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB76_384
.LBB76_383:                             # %cond.false.2091
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB76_384:                             # %cond.end.2095
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-880(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB76_392
	jmp	.LBB76_389
.LBB76_385:                             # %cond.false.2100
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_387
# BB#386:                               # %cond.true.2106
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB76_388
.LBB76_387:                             # %cond.false.2114
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB76_388:                             # %cond.end.2118
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB76_392
.LBB76_389:                             # %lor.lhs.false.2123
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB76_391
# BB#390:                               # %land.lhs.true.2129
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB76_392
.LBB76_391:                             # %lor.lhs.false.2133
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB76_396
.LBB76_392:                             # %cond.true.2137
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_394
# BB#393:                               # %cond.true.2141
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB76_395
.LBB76_394:                             # %cond.false.2143
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB76_395:                             # %cond.end.2147
	movq	-920(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB76_401
	jmp	.LBB76_400
.LBB76_396:                             # %cond.false.2149
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB76_398
# BB#397:                               # %cond.true.2153
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB76_399
.LBB76_398:                             # %cond.false.2155
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB76_399:                             # %cond.end.2159
	movq	-928(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB76_401
.LBB76_400:                             # %lor.lhs.false.2161
	movq	$-1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB76_402
.LBB76_401:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB76_402:                             # %if.else
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jg	.LBB76_404
# BB#403:                               # %if.then.2166
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-96(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB76_405
.LBB76_404:                             # %if.else.2168
	movq	-96(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -104(%rbp)
	movb	$1, -81(%rbp)
	movq	-104(%rbp), %rsi
	callq	record_unwind_protect
.LBB76_405:                             # %if.end
	jmp	.LBB76_406
.LBB76_406:                             # %if.end.2171
	jmp	.LBB76_407
.LBB76_407:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.LBB76_408:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB76_410
# BB#409:                               # %for.body
                                        #   in Loop: Header=BB76_408 Depth=1
	movq	-32(%rbp), %rdi
	callq	Fcar
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	callq	eval_sub
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	jmp	.LBB76_408
.LBB76_410:                             # %for.end
	movq	specpdl, %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_backtrace_args
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	funcall_lambda
	movq	%rax, -64(%rbp)
	movq	lisp_eval_depth, %rax
	addq	$-1, %rax
	movq	%rax, lisp_eval_depth
	movq	specpdl, %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	backtrace_debug_on_exit
	testb	$1, %al
	jne	.LBB76_411
	jmp	.LBB76_412
.LBB76_411:                             # %if.then.2180
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, %rdi
	callq	call_debugger
	movq	%rax, -64(%rbp)
.LBB76_412:                             # %if.end.2184
	jmp	.LBB76_413
.LBB76_413:                             # %do.body.2185
	testb	$1, -81(%rbp)
	je	.LBB76_415
# BB#414:                               # %if.then.2186
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB76_415:                             # %if.end.2189
	jmp	.LBB76_416
.LBB76_416:                             # %do.end.2190
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	movq	-64(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	apply_lambda, .Lfunc_end76-apply_lambda
	.cfi_endproc

	.globl	Fapply
	.align	16, 0x90
	.type	Fapply,@function
Fapply:                                 # @Fapply
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
	subq	$1776, %rsp             # imm = 0x6F0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, -64(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -72(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	-64(%rbp), %rdi
	callq	CHECK_LIST
	movq	-64(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB77_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Ffuncall
	movq	%rax, -8(%rbp)
	jmp	.LBB77_838
.LBB77_2:                               # %if.else
	cmpq	$1, -40(%rbp)
	jne	.LBB77_4
# BB#3:                                 # %if.then.7
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Ffuncall
	movq	%rax, -8(%rbp)
	jmp	.LBB77_838
.LBB77_4:                               # %if.end
	jmp	.LBB77_5
.LBB77_5:                               # %if.end.12
	movq	-16(%rbp), %rax
	subq	$2, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB77_11
# BB#6:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB77_11
# BB#7:                                 # %land.lhs.true.19
	movq	-72(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB77_11
# BB#8:                                 # %if.then.25
	movq	-72(%rbp), %rdi
	callq	indirect_function
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_10
# BB#9:                                 # %if.then.30
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB77_10:                              # %if.end.32
	jmp	.LBB77_11
.LBB77_11:                              # %if.end.33
	movq	-72(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB77_12
	jmp	.LBB77_422
.LBB77_12:                              # %land.lhs.true.36
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswq	18(%rax), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB77_422
# BB#13:                                # %land.lhs.true.41
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswq	16(%rax), %rax
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_422
# BB#14:                                # %if.then.46
	jmp	.LBB77_15
.LBB77_15:                              # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_16
	jmp	.LBB77_95
.LBB77_16:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_17
	jmp	.LBB77_56
.LBB77_17:                              # %cond.true.47
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_19
# BB#18:                                # %cond.true.58
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-164(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB77_20
.LBB77_19:                              # %cond.false
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
.LBB77_20:                              # %cond.end
	movl	-168(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_22
# BB#21:                                # %land.lhs.true.95
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_48
.LBB77_22:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_23
	jmp	.LBB77_34
.LBB77_23:                              # %cond.true.104
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_28
# BB#24:                                # %cond.true.113
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_26
# BB#25:                                # %cond.true.131
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB77_27
.LBB77_26:                              # %cond.false.145
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB77_27:                              # %cond.end.155
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_48
	jmp	.LBB77_45
.LBB77_28:                              # %cond.false.159
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_29
	jmp	.LBB77_30
.LBB77_29:                              # %cond.true.160
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_48
	jmp	.LBB77_45
.LBB77_30:                              # %cond.false.161
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_32
# BB#31:                                # %cond.true.173
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-180(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB77_33
.LBB77_32:                              # %cond.false.201
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB77_33:                              # %cond.end.211
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	movl	-188(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB77_48
	jmp	.LBB77_45
.LBB77_34:                              # %cond.false.222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_35
	jmp	.LBB77_36
.LBB77_35:                              # %cond.true.223
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_48
	jmp	.LBB77_45
.LBB77_36:                              # %cond.false.224
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_41
# BB#37:                                # %cond.true.233
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_39
# BB#38:                                # %cond.true.251
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-196(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB77_40
.LBB77_39:                              # %cond.false.279
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB77_40:                              # %cond.end.289
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-192(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_48
	jmp	.LBB77_45
.LBB77_41:                              # %cond.false.294
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_43
# BB#42:                                # %cond.true.306
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB77_44
.LBB77_43:                              # %cond.false.320
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB77_44:                              # %cond.end.330
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	movl	-208(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB77_48
.LBB77_45:                              # %lor.lhs.false.341
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_47
# BB#46:                                # %land.lhs.true.353
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$3, %ecx
	cmpl	$-128, %ecx
	jl	.LBB77_48
.LBB77_47:                              # %lor.lhs.false.363
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movl	$127, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB77_52
.LBB77_48:                              # %cond.true.373
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	cmpl	$127, %ecx
	jg	.LBB77_50
# BB#49:                                # %cond.true.383
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB77_51
.LBB77_50:                              # %cond.false.393
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
.LBB77_51:                              # %cond.end.405
	movl	-212(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_52:                              # %cond.false.408
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	cmpl	$127, %ecx
	jg	.LBB77_54
# BB#53:                                # %cond.true.418
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	jmp	.LBB77_55
.LBB77_54:                              # %cond.false.428
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
.LBB77_55:                              # %cond.end.440
	movl	-216(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_56:                              # %cond.false.443
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_58
# BB#57:                                # %cond.true.453
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-220(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
	jmp	.LBB77_59
.LBB77_58:                              # %cond.false.477
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
.LBB77_59:                              # %cond.end.485
	movl	-224(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_61
# BB#60:                                # %land.lhs.true.489
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_87
.LBB77_61:                              # %lor.lhs.false.496
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_62
	jmp	.LBB77_73
.LBB77_62:                              # %cond.true.497
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_67
# BB#63:                                # %cond.true.504
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_65
# BB#64:                                # %cond.true.518
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB77_66
.LBB77_65:                              # %cond.false.530
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
.LBB77_66:                              # %cond.end.538
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_87
	jmp	.LBB77_84
.LBB77_67:                              # %cond.false.543
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_68
	jmp	.LBB77_69
.LBB77_68:                              # %cond.true.544
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_87
	jmp	.LBB77_84
.LBB77_69:                              # %cond.false.545
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_71
# BB#70:                                # %cond.true.555
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-236(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB77_72
.LBB77_71:                              # %cond.false.579
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
.LBB77_72:                              # %cond.end.587
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-244(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_87
	jmp	.LBB77_84
.LBB77_73:                              # %cond.false.596
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_74
	jmp	.LBB77_75
.LBB77_74:                              # %cond.true.597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_87
	jmp	.LBB77_84
.LBB77_75:                              # %cond.false.598
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_80
# BB#76:                                # %cond.true.605
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_78
# BB#77:                                # %cond.true.619
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-252(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jmp	.LBB77_79
.LBB77_78:                              # %cond.false.643
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
.LBB77_79:                              # %cond.end.651
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_87
	jmp	.LBB77_84
.LBB77_80:                              # %cond.false.656
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_82
# BB#81:                                # %cond.true.666
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB77_83
.LBB77_82:                              # %cond.false.678
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB77_83:                              # %cond.end.686
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-264(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_87
.LBB77_84:                              # %lor.lhs.false.695
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_86
# BB#85:                                # %land.lhs.true.705
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$-128, %ecx
	jl	.LBB77_87
.LBB77_86:                              # %lor.lhs.false.713
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movl	$127, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB77_91
.LBB77_87:                              # %cond.true.721
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	cmpl	$127, %ecx
	jg	.LBB77_89
# BB#88:                                # %cond.true.731
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB77_90
.LBB77_89:                              # %cond.false.741
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB77_90:                              # %cond.end.753
	movl	-268(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_91:                              # %cond.false.756
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	cmpl	$127, %ecx
	jg	.LBB77_93
# BB#92:                                # %cond.true.766
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB77_94
.LBB77_93:                              # %cond.false.776
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$3, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
.LBB77_94:                              # %cond.end.788
	movl	-272(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_95:                              # %cond.false.791
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_96
	jmp	.LBB77_175
.LBB77_96:                              # %cond.true.792
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_97
	jmp	.LBB77_136
.LBB77_97:                              # %cond.true.793
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_99
# BB#98:                                # %cond.true.805
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movw	%dx, %si
	movswl	%si, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-276(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB77_100
.LBB77_99:                              # %cond.false.833
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
.LBB77_100:                             # %cond.end.843
	movl	-280(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_102
# BB#101:                               # %land.lhs.true.847
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_128
.LBB77_102:                             # %lor.lhs.false.856
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_103
	jmp	.LBB77_114
.LBB77_103:                             # %cond.true.857
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_108
# BB#104:                               # %cond.true.866
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_106
# BB#105:                               # %cond.true.884
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	jmp	.LBB77_107
.LBB77_106:                             # %cond.false.898
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
.LBB77_107:                             # %cond.end.908
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-284(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_128
	jmp	.LBB77_125
.LBB77_108:                             # %cond.false.913
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_109
	jmp	.LBB77_110
.LBB77_109:                             # %cond.true.914
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_128
	jmp	.LBB77_125
.LBB77_110:                             # %cond.false.915
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_112
# BB#111:                               # %cond.true.927
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movw	%dx, %si
	movswl	%si, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-292(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -296(%rbp)        # 4-byte Spill
	jmp	.LBB77_113
.LBB77_112:                             # %cond.false.955
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
.LBB77_113:                             # %cond.end.965
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	movl	-300(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB77_128
	jmp	.LBB77_125
.LBB77_114:                             # %cond.false.976
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_115
	jmp	.LBB77_116
.LBB77_115:                             # %cond.true.977
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_128
	jmp	.LBB77_125
.LBB77_116:                             # %cond.false.978
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_121
# BB#117:                               # %cond.true.987
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_119
# BB#118:                               # %cond.true.1005
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movw	%dx, %si
	movswl	%si, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-308(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB77_120
.LBB77_119:                             # %cond.false.1033
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
.LBB77_120:                             # %cond.end.1043
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-304(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_128
	jmp	.LBB77_125
.LBB77_121:                             # %cond.false.1048
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_123
# BB#122:                               # %cond.true.1060
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB77_124
.LBB77_123:                             # %cond.false.1074
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB77_124:                             # %cond.end.1084
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	movl	-320(%rbp), %r8d        # 4-byte Reload
	cmpl	%ecx, %r8d
	jl	.LBB77_128
.LBB77_125:                             # %lor.lhs.false.1095
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_127
# BB#126:                               # %land.lhs.true.1107
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$3, %ecx
	cmpl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB77_128
.LBB77_127:                             # %lor.lhs.false.1117
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movl	$32767, %ecx            # imm = 0x7FFF
	movswl	18(%rax), %edx
	addl	$1, %edx
	movw	%dx, %si
	movswl	%si, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB77_132
.LBB77_128:                             # %cond.true.1127
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB77_130
# BB#129:                               # %cond.true.1137
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB77_131
.LBB77_130:                             # %cond.false.1147
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB77_131:                             # %cond.end.1159
	movl	-324(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_132:                             # %cond.false.1162
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB77_134
# BB#133:                               # %cond.true.1172
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB77_135
.LBB77_134:                             # %cond.false.1182
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB77_135:                             # %cond.end.1194
	movl	-328(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_136:                             # %cond.false.1197
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_138
# BB#137:                               # %cond.true.1207
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-332(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -336(%rbp)        # 4-byte Spill
	jmp	.LBB77_139
.LBB77_138:                             # %cond.false.1231
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -336(%rbp)        # 4-byte Spill
.LBB77_139:                             # %cond.end.1239
	movl	-336(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_141
# BB#140:                               # %land.lhs.true.1243
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_167
.LBB77_141:                             # %lor.lhs.false.1250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_142
	jmp	.LBB77_153
.LBB77_142:                             # %cond.true.1251
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_147
# BB#143:                               # %cond.true.1258
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_145
# BB#144:                               # %cond.true.1272
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	jmp	.LBB77_146
.LBB77_145:                             # %cond.false.1284
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
.LBB77_146:                             # %cond.end.1292
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-340(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_167
	jmp	.LBB77_164
.LBB77_147:                             # %cond.false.1297
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_148
	jmp	.LBB77_149
.LBB77_148:                             # %cond.true.1298
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_167
	jmp	.LBB77_164
.LBB77_149:                             # %cond.false.1299
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_151
# BB#150:                               # %cond.true.1309
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-348(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -352(%rbp)        # 4-byte Spill
	jmp	.LBB77_152
.LBB77_151:                             # %cond.false.1333
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
.LBB77_152:                             # %cond.end.1341
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-356(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_167
	jmp	.LBB77_164
.LBB77_153:                             # %cond.false.1350
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_154
	jmp	.LBB77_155
.LBB77_154:                             # %cond.true.1351
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_167
	jmp	.LBB77_164
.LBB77_155:                             # %cond.false.1352
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_160
# BB#156:                               # %cond.true.1359
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_158
# BB#157:                               # %cond.true.1373
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-364(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -368(%rbp)        # 4-byte Spill
	jmp	.LBB77_159
.LBB77_158:                             # %cond.false.1397
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
.LBB77_159:                             # %cond.end.1405
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-360(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_167
	jmp	.LBB77_164
.LBB77_160:                             # %cond.false.1410
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_162
# BB#161:                               # %cond.true.1420
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB77_163
.LBB77_162:                             # %cond.false.1432
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
.LBB77_163:                             # %cond.end.1440
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-376(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_167
.LBB77_164:                             # %lor.lhs.false.1449
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_166
# BB#165:                               # %land.lhs.true.1459
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB77_167
.LBB77_166:                             # %lor.lhs.false.1467
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movl	$32767, %ecx            # imm = 0x7FFF
	movswl	18(%rax), %edx
	addl	$1, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB77_171
.LBB77_167:                             # %cond.true.1475
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB77_169
# BB#168:                               # %cond.true.1485
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB77_170
.LBB77_169:                             # %cond.false.1495
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -380(%rbp)        # 4-byte Spill
.LBB77_170:                             # %cond.end.1507
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_171:                             # %cond.false.1510
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB77_173
# BB#172:                               # %cond.true.1520
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB77_174
.LBB77_173:                             # %cond.false.1530
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$3, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -384(%rbp)        # 4-byte Spill
.LBB77_174:                             # %cond.end.1542
	movl	-384(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_175:                             # %cond.false.1545
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_176
	jmp	.LBB77_255
.LBB77_176:                             # %cond.true.1546
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_177
	jmp	.LBB77_216
.LBB77_177:                             # %cond.true.1547
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_179
# BB#178:                               # %cond.true.1557
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-388(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -392(%rbp)        # 4-byte Spill
	jmp	.LBB77_180
.LBB77_179:                             # %cond.false.1581
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
.LBB77_180:                             # %cond.end.1589
	movl	-392(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_182
# BB#181:                               # %land.lhs.true.1593
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_208
.LBB77_182:                             # %lor.lhs.false.1600
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_183
	jmp	.LBB77_194
.LBB77_183:                             # %cond.true.1601
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_188
# BB#184:                               # %cond.true.1608
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_186
# BB#185:                               # %cond.true.1622
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	jmp	.LBB77_187
.LBB77_186:                             # %cond.false.1634
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB77_187:                             # %cond.end.1642
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-396(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_208
	jmp	.LBB77_205
.LBB77_188:                             # %cond.false.1647
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_189
	jmp	.LBB77_190
.LBB77_189:                             # %cond.true.1648
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_208
	jmp	.LBB77_205
.LBB77_190:                             # %cond.false.1649
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_192
# BB#191:                               # %cond.true.1659
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-404(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -408(%rbp)        # 4-byte Spill
	jmp	.LBB77_193
.LBB77_192:                             # %cond.false.1683
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB77_193:                             # %cond.end.1691
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-412(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_208
	jmp	.LBB77_205
.LBB77_194:                             # %cond.false.1700
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_195
	jmp	.LBB77_196
.LBB77_195:                             # %cond.true.1701
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_208
	jmp	.LBB77_205
.LBB77_196:                             # %cond.false.1702
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_201
# BB#197:                               # %cond.true.1709
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_199
# BB#198:                               # %cond.true.1723
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-420(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB77_200
.LBB77_199:                             # %cond.false.1747
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -424(%rbp)        # 4-byte Spill
.LBB77_200:                             # %cond.end.1755
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-416(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_208
	jmp	.LBB77_205
.LBB77_201:                             # %cond.false.1760
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_203
# BB#202:                               # %cond.true.1770
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB77_204
.LBB77_203:                             # %cond.false.1782
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
.LBB77_204:                             # %cond.end.1790
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -432(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-432(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_208
.LBB77_205:                             # %lor.lhs.false.1799
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_207
# BB#206:                               # %land.lhs.true.1809
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB77_208
.LBB77_207:                             # %lor.lhs.false.1817
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movswl	18(%rax), %edx
	addl	$1, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB77_212
.LBB77_208:                             # %cond.true.1825
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_210
# BB#209:                               # %cond.true.1833
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	jmp	.LBB77_211
.LBB77_210:                             # %cond.false.1839
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -436(%rbp)        # 4-byte Spill
.LBB77_211:                             # %cond.end.1847
	movl	-436(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_212:                             # %cond.false.1850
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_214
# BB#213:                               # %cond.true.1858
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	jmp	.LBB77_215
.LBB77_214:                             # %cond.false.1864
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -440(%rbp)        # 4-byte Spill
.LBB77_215:                             # %cond.end.1872
	movl	-440(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_216:                             # %cond.false.1875
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_218
# BB#217:                               # %cond.true.1885
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-444(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -448(%rbp)        # 4-byte Spill
	jmp	.LBB77_219
.LBB77_218:                             # %cond.false.1909
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -448(%rbp)        # 4-byte Spill
.LBB77_219:                             # %cond.end.1917
	movl	-448(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_221
# BB#220:                               # %land.lhs.true.1921
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_247
.LBB77_221:                             # %lor.lhs.false.1928
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_222
	jmp	.LBB77_233
.LBB77_222:                             # %cond.true.1929
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_227
# BB#223:                               # %cond.true.1936
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_225
# BB#224:                               # %cond.true.1950
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	jmp	.LBB77_226
.LBB77_225:                             # %cond.false.1962
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -456(%rbp)        # 4-byte Spill
.LBB77_226:                             # %cond.end.1970
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-452(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_247
	jmp	.LBB77_244
.LBB77_227:                             # %cond.false.1975
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_228
	jmp	.LBB77_229
.LBB77_228:                             # %cond.true.1976
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_247
	jmp	.LBB77_244
.LBB77_229:                             # %cond.false.1977
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_231
# BB#230:                               # %cond.true.1987
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-460(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -464(%rbp)        # 4-byte Spill
	jmp	.LBB77_232
.LBB77_231:                             # %cond.false.2011
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -464(%rbp)        # 4-byte Spill
.LBB77_232:                             # %cond.end.2019
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-468(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_247
	jmp	.LBB77_244
.LBB77_233:                             # %cond.false.2028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_234
	jmp	.LBB77_235
.LBB77_234:                             # %cond.true.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_247
	jmp	.LBB77_244
.LBB77_235:                             # %cond.false.2030
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_240
# BB#236:                               # %cond.true.2037
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_238
# BB#237:                               # %cond.true.2051
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-476(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -480(%rbp)        # 4-byte Spill
	jmp	.LBB77_239
.LBB77_238:                             # %cond.false.2075
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -480(%rbp)        # 4-byte Spill
.LBB77_239:                             # %cond.end.2083
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-472(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_247
	jmp	.LBB77_244
.LBB77_240:                             # %cond.false.2088
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_242
# BB#241:                               # %cond.true.2098
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	jmp	.LBB77_243
.LBB77_242:                             # %cond.false.2110
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
.LBB77_243:                             # %cond.end.2118
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-488(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_247
.LBB77_244:                             # %lor.lhs.false.2127
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_246
# BB#245:                               # %land.lhs.true.2137
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB77_247
.LBB77_246:                             # %lor.lhs.false.2145
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movswl	18(%rax), %edx
	addl	$1, %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	jge	.LBB77_251
.LBB77_247:                             # %cond.true.2153
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_249
# BB#248:                               # %cond.true.2161
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB77_250
.LBB77_249:                             # %cond.false.2167
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -492(%rbp)        # 4-byte Spill
.LBB77_250:                             # %cond.end.2175
	movl	-492(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_251:                             # %cond.false.2178
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_253
# BB#252:                               # %cond.true.2186
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB77_254
.LBB77_253:                             # %cond.false.2192
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -496(%rbp)        # 4-byte Spill
.LBB77_254:                             # %cond.end.2200
	movl	-496(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_255:                             # %cond.false.2203
	movb	$1, %al
	testb	$1, %al
	jne	.LBB77_256
	jmp	.LBB77_335
.LBB77_256:                             # %cond.true.2204
	movb	$1, %al
	testb	$1, %al
	jne	.LBB77_257
	jmp	.LBB77_296
.LBB77_257:                             # %cond.true.2205
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_259
# BB#258:                               # %cond.true.2216
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-504(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	jmp	.LBB77_260
.LBB77_259:                             # %cond.false.2243
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB77_260:                             # %cond.end.2252
	movq	-512(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_262
# BB#261:                               # %land.lhs.true.2256
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpq	$0, %rax
	jl	.LBB77_288
.LBB77_262:                             # %lor.lhs.false.2264
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_263
	jmp	.LBB77_274
.LBB77_263:                             # %cond.true.2265
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpq	$0, %rax
	jge	.LBB77_268
# BB#264:                               # %cond.true.2273
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_266
# BB#265:                               # %cond.true.2289
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB77_267
.LBB77_266:                             # %cond.false.2302
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB77_267:                             # %cond.end.2311
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_288
	jmp	.LBB77_285
.LBB77_268:                             # %cond.false.2316
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_269
	jmp	.LBB77_270
.LBB77_269:                             # %cond.true.2317
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_288
	jmp	.LBB77_285
.LBB77_270:                             # %cond.false.2318
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_272
# BB#271:                               # %cond.true.2329
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-544(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	jmp	.LBB77_273
.LBB77_272:                             # %cond.false.2356
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB77_273:                             # %cond.end.2365
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-568(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB77_288
	jmp	.LBB77_285
.LBB77_274:                             # %cond.false.2375
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_275
	jmp	.LBB77_276
.LBB77_275:                             # %cond.true.2376
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_288
	jmp	.LBB77_285
.LBB77_276:                             # %cond.false.2377
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpq	$0, %rax
	jge	.LBB77_281
# BB#277:                               # %cond.true.2385
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_279
# BB#278:                               # %cond.true.2401
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-584(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	jmp	.LBB77_280
.LBB77_279:                             # %cond.false.2428
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB77_280:                             # %cond.end.2437
	movq	-592(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	cqto
	movq	-600(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_288
	jmp	.LBB77_285
.LBB77_281:                             # %cond.false.2442
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_283
# BB#282:                               # %cond.true.2453
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB77_284
.LBB77_283:                             # %cond.false.2466
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB77_284:                             # %cond.end.2475
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	cqto
	movq	-616(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-624(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB77_288
.LBB77_285:                             # %lor.lhs.false.2485
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_287
# BB#286:                               # %land.lhs.true.2496
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	jl	.LBB77_288
.LBB77_287:                             # %lor.lhs.false.2505
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB77_292
.LBB77_288:                             # %cond.true.2514
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_290
# BB#289:                               # %cond.true.2523
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB77_291
.LBB77_290:                             # %cond.false.2530
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB77_291:                             # %cond.end.2539
	movq	-632(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_292:                             # %cond.false.2541
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_294
# BB#293:                               # %cond.true.2550
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB77_295
.LBB77_294:                             # %cond.false.2557
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB77_295:                             # %cond.end.2566
	movq	-640(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_296:                             # %cond.false.2568
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_298
# BB#297:                               # %cond.true.2578
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-644(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -648(%rbp)        # 4-byte Spill
	jmp	.LBB77_299
.LBB77_298:                             # %cond.false.2602
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -648(%rbp)        # 4-byte Spill
.LBB77_299:                             # %cond.end.2610
	movl	-648(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_301
# BB#300:                               # %land.lhs.true.2614
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_327
.LBB77_301:                             # %lor.lhs.false.2621
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_302
	jmp	.LBB77_313
.LBB77_302:                             # %cond.true.2622
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_307
# BB#303:                               # %cond.true.2629
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_305
# BB#304:                               # %cond.true.2643
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
	jmp	.LBB77_306
.LBB77_305:                             # %cond.false.2655
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
.LBB77_306:                             # %cond.end.2663
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-652(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_327
	jmp	.LBB77_324
.LBB77_307:                             # %cond.false.2668
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_308
	jmp	.LBB77_309
.LBB77_308:                             # %cond.true.2669
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_327
	jmp	.LBB77_324
.LBB77_309:                             # %cond.false.2670
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_311
# BB#310:                               # %cond.true.2680
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-660(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -664(%rbp)        # 4-byte Spill
	jmp	.LBB77_312
.LBB77_311:                             # %cond.false.2704
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -664(%rbp)        # 4-byte Spill
.LBB77_312:                             # %cond.end.2712
	movl	-664(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-668(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_327
	jmp	.LBB77_324
.LBB77_313:                             # %cond.false.2721
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_314
	jmp	.LBB77_315
.LBB77_314:                             # %cond.true.2722
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_327
	jmp	.LBB77_324
.LBB77_315:                             # %cond.false.2723
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_320
# BB#316:                               # %cond.true.2730
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_318
# BB#317:                               # %cond.true.2744
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-676(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -680(%rbp)        # 4-byte Spill
	jmp	.LBB77_319
.LBB77_318:                             # %cond.false.2768
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -680(%rbp)        # 4-byte Spill
.LBB77_319:                             # %cond.end.2776
	movl	-680(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-672(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_327
	jmp	.LBB77_324
.LBB77_320:                             # %cond.false.2781
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_322
# BB#321:                               # %cond.true.2791
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	jmp	.LBB77_323
.LBB77_322:                             # %cond.false.2803
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
.LBB77_323:                             # %cond.end.2811
	movl	-684(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -688(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-688(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_327
.LBB77_324:                             # %lor.lhs.false.2820
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_326
# BB#325:                               # %land.lhs.true.2830
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movslq	%ecx, %rax
	cmpq	%rdi, %rax
	jl	.LBB77_327
.LBB77_326:                             # %lor.lhs.false.2839
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movslq	%ecx, %rax
	cmpq	%rax, %rdi
	jge	.LBB77_331
.LBB77_327:                             # %cond.true.2848
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_329
# BB#328:                               # %cond.true.2857
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB77_330
.LBB77_329:                             # %cond.false.2864
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB77_330:                             # %cond.end.2873
	movq	-696(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_331:                             # %cond.false.2875
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_333
# BB#332:                               # %cond.true.2884
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB77_334
.LBB77_333:                             # %cond.false.2891
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB77_334:                             # %cond.end.2900
	movq	-704(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_335:                             # %cond.false.2902
	movb	$1, %al
	testb	$1, %al
	jne	.LBB77_336
	jmp	.LBB77_375
.LBB77_336:                             # %cond.true.2903
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_338
# BB#337:                               # %cond.true.2914
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-712(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	jmp	.LBB77_339
.LBB77_338:                             # %cond.false.2941
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB77_339:                             # %cond.end.2950
	movq	-720(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_341
# BB#340:                               # %land.lhs.true.2954
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpq	$0, %rax
	jl	.LBB77_367
.LBB77_341:                             # %lor.lhs.false.2962
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_342
	jmp	.LBB77_353
.LBB77_342:                             # %cond.true.2963
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpq	$0, %rax
	jge	.LBB77_347
# BB#343:                               # %cond.true.2971
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_345
# BB#344:                               # %cond.true.2987
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB77_346
.LBB77_345:                             # %cond.false.3000
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB77_346:                             # %cond.end.3009
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-728(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_367
	jmp	.LBB77_364
.LBB77_347:                             # %cond.false.3014
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_348
	jmp	.LBB77_349
.LBB77_348:                             # %cond.true.3015
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_367
	jmp	.LBB77_364
.LBB77_349:                             # %cond.false.3016
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_351
# BB#350:                               # %cond.true.3027
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-752(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	jmp	.LBB77_352
.LBB77_351:                             # %cond.false.3054
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB77_352:                             # %cond.end.3063
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-776(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB77_367
	jmp	.LBB77_364
.LBB77_353:                             # %cond.false.3073
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_354
	jmp	.LBB77_355
.LBB77_354:                             # %cond.true.3074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_367
	jmp	.LBB77_364
.LBB77_355:                             # %cond.false.3075
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpq	$0, %rax
	jge	.LBB77_360
# BB#356:                               # %cond.true.3083
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_358
# BB#357:                               # %cond.true.3099
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	xorq	$-1, %rax
	cmpq	$-1, %rax
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	-792(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	jmp	.LBB77_359
.LBB77_358:                             # %cond.false.3126
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB77_359:                             # %cond.end.3135
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-784(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_367
	jmp	.LBB77_364
.LBB77_360:                             # %cond.false.3140
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_362
# BB#361:                               # %cond.true.3151
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB77_363
.LBB77_362:                             # %cond.false.3164
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB77_363:                             # %cond.end.3173
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-832(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB77_367
.LBB77_364:                             # %lor.lhs.false.3183
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_366
# BB#365:                               # %land.lhs.true.3194
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	jl	.LBB77_367
.LBB77_366:                             # %lor.lhs.false.3203
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rax, %rdi
	jge	.LBB77_371
.LBB77_367:                             # %cond.true.3212
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_369
# BB#368:                               # %cond.true.3221
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jmp	.LBB77_370
.LBB77_369:                             # %cond.false.3228
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB77_370:                             # %cond.end.3237
	movq	-840(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_371:                             # %cond.false.3239
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_373
# BB#372:                               # %cond.true.3248
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB77_374
.LBB77_373:                             # %cond.false.3255
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB77_374:                             # %cond.end.3264
	movq	-848(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_375:                             # %cond.false.3266
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_377
# BB#376:                               # %cond.true.3276
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -852(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-852(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -856(%rbp)        # 4-byte Spill
	jmp	.LBB77_378
.LBB77_377:                             # %cond.false.3300
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -856(%rbp)        # 4-byte Spill
.LBB77_378:                             # %cond.end.3308
	movl	-856(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_380
# BB#379:                               # %land.lhs.true.3312
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_406
.LBB77_380:                             # %lor.lhs.false.3319
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_381
	jmp	.LBB77_392
.LBB77_381:                             # %cond.true.3320
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_386
# BB#382:                               # %cond.true.3327
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -860(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_384
# BB#383:                               # %cond.true.3341
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -864(%rbp)        # 4-byte Spill
	jmp	.LBB77_385
.LBB77_384:                             # %cond.false.3353
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -864(%rbp)        # 4-byte Spill
.LBB77_385:                             # %cond.end.3361
	movl	-864(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-860(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_406
	jmp	.LBB77_403
.LBB77_386:                             # %cond.false.3366
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_387
	jmp	.LBB77_388
.LBB77_387:                             # %cond.true.3367
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_406
	jmp	.LBB77_403
.LBB77_388:                             # %cond.false.3368
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_390
# BB#389:                               # %cond.true.3378
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-868(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -872(%rbp)        # 4-byte Spill
	jmp	.LBB77_391
.LBB77_390:                             # %cond.false.3402
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -872(%rbp)        # 4-byte Spill
.LBB77_391:                             # %cond.end.3410
	movl	-872(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -876(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-876(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_406
	jmp	.LBB77_403
.LBB77_392:                             # %cond.false.3419
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_393
	jmp	.LBB77_394
.LBB77_393:                             # %cond.true.3420
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_406
	jmp	.LBB77_403
.LBB77_394:                             # %cond.false.3421
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_399
# BB#395:                               # %cond.true.3428
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -880(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_397
# BB#396:                               # %cond.true.3442
	movq	-72(%rbp), %rdi
	callq	XSUBR
	xorl	%ecx, %ecx
	movswl	18(%rax), %edx
	addl	$1, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, -884(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	-884(%rbp), %edx        # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, -888(%rbp)        # 4-byte Spill
	jmp	.LBB77_398
.LBB77_397:                             # %cond.false.3466
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -888(%rbp)        # 4-byte Spill
.LBB77_398:                             # %cond.end.3474
	movl	-888(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-880(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_406
	jmp	.LBB77_403
.LBB77_399:                             # %cond.false.3479
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_401
# BB#400:                               # %cond.true.3489
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	jmp	.LBB77_402
.LBB77_401:                             # %cond.false.3501
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
.LBB77_402:                             # %cond.end.3509
	movl	-892(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movl	-896(%rbp), %esi        # 4-byte Reload
	cmpl	%ecx, %esi
	jl	.LBB77_406
.LBB77_403:                             # %lor.lhs.false.3518
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_405
# BB#404:                               # %land.lhs.true.3528
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movslq	%ecx, %rax
	cmpq	%rdi, %rax
	jl	.LBB77_406
.LBB77_405:                             # %lor.lhs.false.3537
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	shll	$3, %ecx
	movslq	%ecx, %rax
	cmpq	%rax, %rdi
	jge	.LBB77_410
.LBB77_406:                             # %cond.true.3546
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_408
# BB#407:                               # %cond.true.3555
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB77_409
.LBB77_408:                             # %cond.false.3562
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB77_409:                             # %cond.end.3571
	movq	-904(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB77_415
	jmp	.LBB77_414
.LBB77_410:                             # %cond.false.3573
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	cmpq	%rdi, %rax
	ja	.LBB77_412
# BB#411:                               # %cond.true.3582
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB77_413
.LBB77_412:                             # %cond.false.3589
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	subq	%rdi, %rax
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	addq	%rdi, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB77_413:                             # %cond.end.3598
	movq	-912(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB77_415
.LBB77_414:                             # %lor.lhs.false.3600
	movq	$-1, %rax
	cmpq	-112(%rbp), %rax
	jae	.LBB77_416
.LBB77_415:                             # %if.then.3603
	movq	$-1, %rdi
	callq	memory_full
.LBB77_416:                             # %if.else.3604
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB77_418
# BB#417:                               # %if.then.3607
	movq	-112(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-112(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB77_419
.LBB77_418:                             # %if.else.3609
	movq	-112(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-920(%rbp), %rdi        # 8-byte Reload
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -120(%rbp)
	movb	$1, -97(%rbp)
	movq	-120(%rbp), %rsi
	callq	record_unwind_protect
.LBB77_419:                             # %if.end.3617
	jmp	.LBB77_420
.LBB77_420:                             # %if.end.3618
	jmp	.LBB77_421
.LBB77_421:                             # %do.end
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswq	18(%rax), %rax
	subq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memclear
	movq	-72(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB77_830
.LBB77_422:                             # %if.else.3631
	jmp	.LBB77_423
.LBB77_423:                             # %do.body.3632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_424
	jmp	.LBB77_503
.LBB77_424:                             # %cond.true.3634
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_425
	jmp	.LBB77_464
.LBB77_425:                             # %cond.true.3635
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_427
# BB#426:                               # %cond.true.3644
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
	jmp	.LBB77_428
.LBB77_427:                             # %cond.false.3666
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -932(%rbp)        # 4-byte Spill
.LBB77_428:                             # %cond.end.3673
	movl	-932(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_430
# BB#429:                               # %land.lhs.true.3677
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB77_456
.LBB77_430:                             # %lor.lhs.false.3683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_431
	jmp	.LBB77_442
.LBB77_431:                             # %cond.true.3684
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB77_436
# BB#432:                               # %cond.true.3690
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -936(%rbp)        # 4-byte Spill
	jge	.LBB77_434
# BB#433:                               # %cond.true.3702
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -940(%rbp)        # 4-byte Spill
	jmp	.LBB77_435
.LBB77_434:                             # %cond.false.3713
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -940(%rbp)        # 4-byte Spill
.LBB77_435:                             # %cond.end.3720
	movl	-940(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-936(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_456
	jmp	.LBB77_453
.LBB77_436:                             # %cond.false.3725
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_437
	jmp	.LBB77_438
.LBB77_437:                             # %cond.true.3726
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_456
	jmp	.LBB77_453
.LBB77_438:                             # %cond.false.3727
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_440
# BB#439:                               # %cond.true.3736
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -944(%rbp)        # 4-byte Spill
	jmp	.LBB77_441
.LBB77_440:                             # %cond.false.3758
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -944(%rbp)        # 4-byte Spill
.LBB77_441:                             # %cond.end.3765
	movl	-944(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB77_456
	jmp	.LBB77_453
.LBB77_442:                             # %cond.false.3773
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_443
	jmp	.LBB77_444
.LBB77_443:                             # %cond.true.3774
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_456
	jmp	.LBB77_453
.LBB77_444:                             # %cond.false.3775
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB77_449
# BB#445:                               # %cond.true.3781
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -948(%rbp)        # 4-byte Spill
	jge	.LBB77_447
# BB#446:                               # %cond.true.3793
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -952(%rbp)        # 4-byte Spill
	jmp	.LBB77_448
.LBB77_447:                             # %cond.false.3815
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
.LBB77_448:                             # %cond.end.3822
	movl	-952(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-948(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_456
	jmp	.LBB77_453
.LBB77_449:                             # %cond.false.3827
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_451
# BB#450:                               # %cond.true.3836
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -956(%rbp)        # 4-byte Spill
	jmp	.LBB77_452
.LBB77_451:                             # %cond.false.3847
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -956(%rbp)        # 4-byte Spill
.LBB77_452:                             # %cond.end.3854
	movl	-956(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB77_456
.LBB77_453:                             # %lor.lhs.false.3862
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_455
# BB#454:                               # %land.lhs.true.3871
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB77_456
.LBB77_455:                             # %lor.lhs.false.3878
	movl	$127, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB77_460
.LBB77_456:                             # %cond.true.3885
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB77_458
# BB#457:                               # %cond.true.3892
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -960(%rbp)        # 4-byte Spill
	jmp	.LBB77_459
.LBB77_458:                             # %cond.false.3899
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -960(%rbp)        # 4-byte Spill
.LBB77_459:                             # %cond.end.3908
	movl	-960(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_460:                             # %cond.false.3911
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB77_462
# BB#461:                               # %cond.true.3918
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -964(%rbp)        # 4-byte Spill
	jmp	.LBB77_463
.LBB77_462:                             # %cond.false.3925
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -964(%rbp)        # 4-byte Spill
.LBB77_463:                             # %cond.end.3934
	movl	-964(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_464:                             # %cond.false.3937
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_466
# BB#465:                               # %cond.true.3944
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB77_467
.LBB77_466:                             # %cond.false.3963
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB77_467:                             # %cond.end.3968
	movq	-976(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_469
# BB#468:                               # %land.lhs.true.3972
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_495
.LBB77_469:                             # %lor.lhs.false.3976
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_470
	jmp	.LBB77_481
.LBB77_470:                             # %cond.true.3977
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_475
# BB#471:                               # %cond.true.3981
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jge	.LBB77_473
# BB#472:                               # %cond.true.3989
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB77_474
.LBB77_473:                             # %cond.false.3998
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB77_474:                             # %cond.end.4003
	movq	-992(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	cqto
	movq	-1000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-984(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_495
	jmp	.LBB77_492
.LBB77_475:                             # %cond.false.4008
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_476
	jmp	.LBB77_477
.LBB77_476:                             # %cond.true.4009
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_495
	jmp	.LBB77_492
.LBB77_477:                             # %cond.false.4010
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_479
# BB#478:                               # %cond.true.4017
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB77_480
.LBB77_479:                             # %cond.false.4036
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB77_480:                             # %cond.end.4041
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_495
	jmp	.LBB77_492
.LBB77_481:                             # %cond.false.4047
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_482
	jmp	.LBB77_483
.LBB77_482:                             # %cond.true.4048
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_495
	jmp	.LBB77_492
.LBB77_483:                             # %cond.false.4049
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_488
# BB#484:                               # %cond.true.4053
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jge	.LBB77_486
# BB#485:                               # %cond.true.4061
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB77_487
.LBB77_486:                             # %cond.false.4080
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB77_487:                             # %cond.end.4085
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	cqto
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_495
	jmp	.LBB77_492
.LBB77_488:                             # %cond.false.4090
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_490
# BB#489:                               # %cond.true.4097
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB77_491
.LBB77_490:                             # %cond.false.4106
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB77_491:                             # %cond.end.4111
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	cqto
	movq	-1056(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_495
.LBB77_492:                             # %lor.lhs.false.4117
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_494
# BB#493:                               # %land.lhs.true.4124
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB77_495
.LBB77_494:                             # %lor.lhs.false.4129
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB77_499
.LBB77_495:                             # %cond.true.4134
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB77_497
# BB#496:                               # %cond.true.4141
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB77_498
.LBB77_497:                             # %cond.false.4148
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1060(%rbp)       # 4-byte Spill
.LBB77_498:                             # %cond.end.4157
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_499:                             # %cond.false.4160
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB77_501
# BB#500:                               # %cond.true.4167
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1064(%rbp)       # 4-byte Spill
	jmp	.LBB77_502
.LBB77_501:                             # %cond.false.4174
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1064(%rbp)       # 4-byte Spill
.LBB77_502:                             # %cond.end.4183
	movl	-1064(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_503:                             # %cond.false.4186
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_504
	jmp	.LBB77_583
.LBB77_504:                             # %cond.true.4187
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_505
	jmp	.LBB77_544
.LBB77_505:                             # %cond.true.4188
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_507
# BB#506:                               # %cond.true.4197
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB77_508
.LBB77_507:                             # %cond.false.4219
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1068(%rbp)       # 4-byte Spill
.LBB77_508:                             # %cond.end.4226
	movl	-1068(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_510
# BB#509:                               # %land.lhs.true.4230
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB77_536
.LBB77_510:                             # %lor.lhs.false.4236
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_511
	jmp	.LBB77_522
.LBB77_511:                             # %cond.true.4237
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB77_516
# BB#512:                               # %cond.true.4243
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1072(%rbp)       # 4-byte Spill
	jge	.LBB77_514
# BB#513:                               # %cond.true.4255
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB77_515
.LBB77_514:                             # %cond.false.4266
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1076(%rbp)       # 4-byte Spill
.LBB77_515:                             # %cond.end.4273
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1072(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_536
	jmp	.LBB77_533
.LBB77_516:                             # %cond.false.4278
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_517
	jmp	.LBB77_518
.LBB77_517:                             # %cond.true.4279
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_536
	jmp	.LBB77_533
.LBB77_518:                             # %cond.false.4280
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_520
# BB#519:                               # %cond.true.4289
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1080(%rbp)       # 4-byte Spill
	jmp	.LBB77_521
.LBB77_520:                             # %cond.false.4311
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1080(%rbp)       # 4-byte Spill
.LBB77_521:                             # %cond.end.4318
	movl	-1080(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB77_536
	jmp	.LBB77_533
.LBB77_522:                             # %cond.false.4326
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_523
	jmp	.LBB77_524
.LBB77_523:                             # %cond.true.4327
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_536
	jmp	.LBB77_533
.LBB77_524:                             # %cond.false.4328
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB77_529
# BB#525:                               # %cond.true.4334
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1084(%rbp)       # 4-byte Spill
	jge	.LBB77_527
# BB#526:                               # %cond.true.4346
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	jmp	.LBB77_528
.LBB77_527:                             # %cond.false.4368
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1088(%rbp)       # 4-byte Spill
.LBB77_528:                             # %cond.end.4375
	movl	-1088(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1084(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_536
	jmp	.LBB77_533
.LBB77_529:                             # %cond.false.4380
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_531
# BB#530:                               # %cond.true.4389
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB77_532
.LBB77_531:                             # %cond.false.4400
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1092(%rbp)       # 4-byte Spill
.LBB77_532:                             # %cond.end.4407
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB77_536
.LBB77_533:                             # %lor.lhs.false.4415
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB77_535
# BB#534:                               # %land.lhs.true.4424
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB77_536
.LBB77_535:                             # %lor.lhs.false.4431
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB77_540
.LBB77_536:                             # %cond.true.4438
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB77_538
# BB#537:                               # %cond.true.4445
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1096(%rbp)       # 4-byte Spill
	jmp	.LBB77_539
.LBB77_538:                             # %cond.false.4452
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1096(%rbp)       # 4-byte Spill
.LBB77_539:                             # %cond.end.4461
	movl	-1096(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_540:                             # %cond.false.4464
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB77_542
# BB#541:                               # %cond.true.4471
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1100(%rbp)       # 4-byte Spill
	jmp	.LBB77_543
.LBB77_542:                             # %cond.false.4478
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1100(%rbp)       # 4-byte Spill
.LBB77_543:                             # %cond.end.4487
	movl	-1100(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_544:                             # %cond.false.4490
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_546
# BB#545:                               # %cond.true.4497
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB77_547
.LBB77_546:                             # %cond.false.4516
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB77_547:                             # %cond.end.4521
	movq	-1112(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_549
# BB#548:                               # %land.lhs.true.4525
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_575
.LBB77_549:                             # %lor.lhs.false.4529
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_550
	jmp	.LBB77_561
.LBB77_550:                             # %cond.true.4530
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_555
# BB#551:                               # %cond.true.4534
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jge	.LBB77_553
# BB#552:                               # %cond.true.4542
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB77_554
.LBB77_553:                             # %cond.false.4551
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB77_554:                             # %cond.end.4556
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1136(%rbp)       # 8-byte Spill
	cqto
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_575
	jmp	.LBB77_572
.LBB77_555:                             # %cond.false.4561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_556
	jmp	.LBB77_557
.LBB77_556:                             # %cond.true.4562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_575
	jmp	.LBB77_572
.LBB77_557:                             # %cond.false.4563
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_559
# BB#558:                               # %cond.true.4570
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB77_560
.LBB77_559:                             # %cond.false.4589
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB77_560:                             # %cond.end.4594
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
	cqto
	movq	-1152(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_575
	jmp	.LBB77_572
.LBB77_561:                             # %cond.false.4600
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_562
	jmp	.LBB77_563
.LBB77_562:                             # %cond.true.4601
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_575
	jmp	.LBB77_572
.LBB77_563:                             # %cond.false.4602
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_568
# BB#564:                               # %cond.true.4606
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jge	.LBB77_566
# BB#565:                               # %cond.true.4614
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB77_567
.LBB77_566:                             # %cond.false.4633
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB77_567:                             # %cond.end.4638
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
	cqto
	movq	-1176(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_575
	jmp	.LBB77_572
.LBB77_568:                             # %cond.false.4643
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_570
# BB#569:                               # %cond.true.4650
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB77_571
.LBB77_570:                             # %cond.false.4659
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB77_571:                             # %cond.end.4664
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1192(%rbp)       # 8-byte Spill
	cqto
	movq	-1192(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_575
.LBB77_572:                             # %lor.lhs.false.4670
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_574
# BB#573:                               # %land.lhs.true.4677
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB77_575
.LBB77_574:                             # %lor.lhs.false.4682
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB77_579
.LBB77_575:                             # %cond.true.4687
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB77_577
# BB#576:                               # %cond.true.4694
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1196(%rbp)       # 4-byte Spill
	jmp	.LBB77_578
.LBB77_577:                             # %cond.false.4701
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1196(%rbp)       # 4-byte Spill
.LBB77_578:                             # %cond.end.4710
	movl	-1196(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_579:                             # %cond.false.4713
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB77_581
# BB#580:                               # %cond.true.4720
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1200(%rbp)       # 4-byte Spill
	jmp	.LBB77_582
.LBB77_581:                             # %cond.false.4727
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1200(%rbp)       # 4-byte Spill
.LBB77_582:                             # %cond.end.4736
	movl	-1200(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_583:                             # %cond.false.4739
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_584
	jmp	.LBB77_663
.LBB77_584:                             # %cond.true.4740
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_585
	jmp	.LBB77_624
.LBB77_585:                             # %cond.true.4741
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_587
# BB#586:                               # %cond.true.4749
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	jmp	.LBB77_588
.LBB77_587:                             # %cond.false.4769
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
.LBB77_588:                             # %cond.end.4775
	movl	-1204(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB77_590
# BB#589:                               # %land.lhs.true.4779
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB77_616
.LBB77_590:                             # %lor.lhs.false.4784
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_591
	jmp	.LBB77_602
.LBB77_591:                             # %cond.true.4785
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_596
# BB#592:                               # %cond.true.4790
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1208(%rbp)       # 4-byte Spill
	jge	.LBB77_594
# BB#593:                               # %cond.true.4800
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1212(%rbp)       # 4-byte Spill
	jmp	.LBB77_595
.LBB77_594:                             # %cond.false.4810
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1212(%rbp)       # 4-byte Spill
.LBB77_595:                             # %cond.end.4816
	movl	-1212(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1208(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_616
	jmp	.LBB77_613
.LBB77_596:                             # %cond.false.4821
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_597
	jmp	.LBB77_598
.LBB77_597:                             # %cond.true.4822
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_616
	jmp	.LBB77_613
.LBB77_598:                             # %cond.false.4823
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_600
# BB#599:                               # %cond.true.4831
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	jmp	.LBB77_601
.LBB77_600:                             # %cond.false.4851
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1216(%rbp)       # 4-byte Spill
.LBB77_601:                             # %cond.end.4857
	movl	-1216(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB77_616
	jmp	.LBB77_613
.LBB77_602:                             # %cond.false.4864
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_603
	jmp	.LBB77_604
.LBB77_603:                             # %cond.true.4865
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_616
	jmp	.LBB77_613
.LBB77_604:                             # %cond.false.4866
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_609
# BB#605:                               # %cond.true.4871
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1220(%rbp)       # 4-byte Spill
	jge	.LBB77_607
# BB#606:                               # %cond.true.4881
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1224(%rbp)       # 4-byte Spill
	jmp	.LBB77_608
.LBB77_607:                             # %cond.false.4901
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1224(%rbp)       # 4-byte Spill
.LBB77_608:                             # %cond.end.4907
	movl	-1224(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1220(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB77_616
	jmp	.LBB77_613
.LBB77_609:                             # %cond.false.4912
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_611
# BB#610:                               # %cond.true.4920
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB77_612
.LBB77_611:                             # %cond.false.4930
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1228(%rbp)       # 4-byte Spill
.LBB77_612:                             # %cond.end.4936
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB77_616
.LBB77_613:                             # %lor.lhs.false.4943
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB77_615
# BB#614:                               # %land.lhs.true.4951
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB77_616
.LBB77_615:                             # %lor.lhs.false.4957
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB77_620
.LBB77_616:                             # %cond.true.4963
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_618
# BB#617:                               # %cond.true.4969
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1232(%rbp)       # 4-byte Spill
	jmp	.LBB77_619
.LBB77_618:                             # %cond.false.4973
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1232(%rbp)       # 4-byte Spill
.LBB77_619:                             # %cond.end.4979
	movl	-1232(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_620:                             # %cond.false.4982
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_622
# BB#621:                               # %cond.true.4988
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1236(%rbp)       # 4-byte Spill
	jmp	.LBB77_623
.LBB77_622:                             # %cond.false.4992
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1236(%rbp)       # 4-byte Spill
.LBB77_623:                             # %cond.end.4998
	movl	-1236(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_624:                             # %cond.false.5001
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_626
# BB#625:                               # %cond.true.5008
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB77_627
.LBB77_626:                             # %cond.false.5027
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB77_627:                             # %cond.end.5032
	movq	-1248(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_629
# BB#628:                               # %land.lhs.true.5036
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_655
.LBB77_629:                             # %lor.lhs.false.5040
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_630
	jmp	.LBB77_641
.LBB77_630:                             # %cond.true.5041
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_635
# BB#631:                               # %cond.true.5045
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jge	.LBB77_633
# BB#632:                               # %cond.true.5053
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB77_634
.LBB77_633:                             # %cond.false.5062
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB77_634:                             # %cond.end.5067
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	cqto
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_655
	jmp	.LBB77_652
.LBB77_635:                             # %cond.false.5072
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_636
	jmp	.LBB77_637
.LBB77_636:                             # %cond.true.5073
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_655
	jmp	.LBB77_652
.LBB77_637:                             # %cond.false.5074
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_639
# BB#638:                               # %cond.true.5081
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB77_640
.LBB77_639:                             # %cond.false.5100
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB77_640:                             # %cond.end.5105
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_655
	jmp	.LBB77_652
.LBB77_641:                             # %cond.false.5111
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_642
	jmp	.LBB77_643
.LBB77_642:                             # %cond.true.5112
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_655
	jmp	.LBB77_652
.LBB77_643:                             # %cond.false.5113
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_648
# BB#644:                               # %cond.true.5117
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jge	.LBB77_646
# BB#645:                               # %cond.true.5125
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB77_647
.LBB77_646:                             # %cond.false.5144
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
.LBB77_647:                             # %cond.end.5149
	movq	-1304(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1312(%rbp)       # 8-byte Spill
	cqto
	movq	-1312(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_655
	jmp	.LBB77_652
.LBB77_648:                             # %cond.false.5154
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_650
# BB#649:                               # %cond.true.5161
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB77_651
.LBB77_650:                             # %cond.false.5170
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB77_651:                             # %cond.end.5175
	movq	-1320(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
	cqto
	movq	-1328(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_655
.LBB77_652:                             # %lor.lhs.false.5181
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_654
# BB#653:                               # %land.lhs.true.5188
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB77_655
.LBB77_654:                             # %lor.lhs.false.5193
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	addq	$1, %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB77_659
.LBB77_655:                             # %cond.true.5198
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_657
# BB#656:                               # %cond.true.5204
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1332(%rbp)       # 4-byte Spill
	jmp	.LBB77_658
.LBB77_657:                             # %cond.false.5208
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1332(%rbp)       # 4-byte Spill
.LBB77_658:                             # %cond.end.5214
	movl	-1332(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_659:                             # %cond.false.5217
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB77_661
# BB#660:                               # %cond.true.5223
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1336(%rbp)       # 4-byte Spill
	jmp	.LBB77_662
.LBB77_661:                             # %cond.false.5227
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1336(%rbp)       # 4-byte Spill
.LBB77_662:                             # %cond.end.5233
	movl	-1336(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_663:                             # %cond.false.5236
	movb	$1, %al
	testb	$1, %al
	jne	.LBB77_664
	jmp	.LBB77_743
.LBB77_664:                             # %cond.true.5237
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_665
	jmp	.LBB77_704
.LBB77_665:                             # %cond.true.5238
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_667
# BB#666:                               # %cond.true.5245
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB77_668
.LBB77_667:                             # %cond.false.5264
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB77_668:                             # %cond.end.5269
	movq	-1344(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_670
# BB#669:                               # %land.lhs.true.5273
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_696
.LBB77_670:                             # %lor.lhs.false.5277
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_671
	jmp	.LBB77_682
.LBB77_671:                             # %cond.true.5278
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_676
# BB#672:                               # %cond.true.5282
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	jge	.LBB77_674
# BB#673:                               # %cond.true.5290
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB77_675
.LBB77_674:                             # %cond.false.5299
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
.LBB77_675:                             # %cond.end.5304
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1368(%rbp)       # 8-byte Spill
	cqto
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_696
	jmp	.LBB77_693
.LBB77_676:                             # %cond.false.5309
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_677
	jmp	.LBB77_678
.LBB77_677:                             # %cond.true.5310
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_696
	jmp	.LBB77_693
.LBB77_678:                             # %cond.false.5311
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_680
# BB#679:                               # %cond.true.5318
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB77_681
.LBB77_680:                             # %cond.false.5337
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
.LBB77_681:                             # %cond.end.5342
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1384(%rbp)       # 8-byte Spill
	cqto
	movq	-1384(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_696
	jmp	.LBB77_693
.LBB77_682:                             # %cond.false.5348
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_683
	jmp	.LBB77_684
.LBB77_683:                             # %cond.true.5349
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_696
	jmp	.LBB77_693
.LBB77_684:                             # %cond.false.5350
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_689
# BB#685:                               # %cond.true.5354
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jge	.LBB77_687
# BB#686:                               # %cond.true.5362
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1400(%rbp)       # 8-byte Spill
	jmp	.LBB77_688
.LBB77_687:                             # %cond.false.5381
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
.LBB77_688:                             # %cond.end.5386
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1408(%rbp)       # 8-byte Spill
	cqto
	movq	-1408(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_696
	jmp	.LBB77_693
.LBB77_689:                             # %cond.false.5391
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_691
# BB#690:                               # %cond.true.5398
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB77_692
.LBB77_691:                             # %cond.false.5407
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB77_692:                             # %cond.end.5412
	movq	-1416(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
	cqto
	movq	-1424(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_696
.LBB77_693:                             # %lor.lhs.false.5418
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_695
# BB#694:                               # %land.lhs.true.5425
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB77_696
.LBB77_695:                             # %lor.lhs.false.5430
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB77_700
.LBB77_696:                             # %cond.true.5435
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_698
# BB#697:                               # %cond.true.5440
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB77_699
.LBB77_698:                             # %cond.false.5443
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
.LBB77_699:                             # %cond.end.5448
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_700:                             # %cond.false.5450
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_702
# BB#701:                               # %cond.true.5455
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jmp	.LBB77_703
.LBB77_702:                             # %cond.false.5458
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
.LBB77_703:                             # %cond.end.5463
	movq	-1440(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_704:                             # %cond.false.5465
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_706
# BB#705:                               # %cond.true.5472
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB77_707
.LBB77_706:                             # %cond.false.5491
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
.LBB77_707:                             # %cond.end.5496
	movq	-1448(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_709
# BB#708:                               # %land.lhs.true.5500
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_735
.LBB77_709:                             # %lor.lhs.false.5504
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_710
	jmp	.LBB77_721
.LBB77_710:                             # %cond.true.5505
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_715
# BB#711:                               # %cond.true.5509
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	jge	.LBB77_713
# BB#712:                               # %cond.true.5517
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB77_714
.LBB77_713:                             # %cond.false.5526
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
.LBB77_714:                             # %cond.end.5531
	movq	-1464(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1472(%rbp)       # 8-byte Spill
	cqto
	movq	-1472(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_735
	jmp	.LBB77_732
.LBB77_715:                             # %cond.false.5536
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_716
	jmp	.LBB77_717
.LBB77_716:                             # %cond.true.5537
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_735
	jmp	.LBB77_732
.LBB77_717:                             # %cond.false.5538
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_719
# BB#718:                               # %cond.true.5545
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB77_720
.LBB77_719:                             # %cond.false.5564
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
.LBB77_720:                             # %cond.end.5569
	movq	-1480(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1488(%rbp)       # 8-byte Spill
	cqto
	movq	-1488(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_735
	jmp	.LBB77_732
.LBB77_721:                             # %cond.false.5575
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_722
	jmp	.LBB77_723
.LBB77_722:                             # %cond.true.5576
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_735
	jmp	.LBB77_732
.LBB77_723:                             # %cond.false.5577
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_728
# BB#724:                               # %cond.true.5581
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	jge	.LBB77_726
# BB#725:                               # %cond.true.5589
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB77_727
.LBB77_726:                             # %cond.false.5608
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB77_727:                             # %cond.end.5613
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1512(%rbp)       # 8-byte Spill
	cqto
	movq	-1512(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_735
	jmp	.LBB77_732
.LBB77_728:                             # %cond.false.5618
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_730
# BB#729:                               # %cond.true.5625
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB77_731
.LBB77_730:                             # %cond.false.5634
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
.LBB77_731:                             # %cond.end.5639
	movq	-1520(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1528(%rbp)       # 8-byte Spill
	cqto
	movq	-1528(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_735
.LBB77_732:                             # %lor.lhs.false.5645
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_734
# BB#733:                               # %land.lhs.true.5652
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB77_735
.LBB77_734:                             # %lor.lhs.false.5657
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB77_739
.LBB77_735:                             # %cond.true.5662
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_737
# BB#736:                               # %cond.true.5667
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	jmp	.LBB77_738
.LBB77_737:                             # %cond.false.5670
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
.LBB77_738:                             # %cond.end.5675
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_739:                             # %cond.false.5677
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_741
# BB#740:                               # %cond.true.5682
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB77_742
.LBB77_741:                             # %cond.false.5685
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB77_742:                             # %cond.end.5690
	movq	-1544(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_743:                             # %cond.false.5692
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_744
	jmp	.LBB77_783
.LBB77_744:                             # %cond.true.5693
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_746
# BB#745:                               # %cond.true.5700
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB77_747
.LBB77_746:                             # %cond.false.5719
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB77_747:                             # %cond.end.5724
	movq	-1552(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_749
# BB#748:                               # %land.lhs.true.5728
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_775
.LBB77_749:                             # %lor.lhs.false.5732
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_750
	jmp	.LBB77_761
.LBB77_750:                             # %cond.true.5733
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_755
# BB#751:                               # %cond.true.5737
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	jge	.LBB77_753
# BB#752:                               # %cond.true.5745
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	jmp	.LBB77_754
.LBB77_753:                             # %cond.false.5754
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
.LBB77_754:                             # %cond.end.5759
	movq	-1568(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1576(%rbp)       # 8-byte Spill
	cqto
	movq	-1576(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_775
	jmp	.LBB77_772
.LBB77_755:                             # %cond.false.5764
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_756
	jmp	.LBB77_757
.LBB77_756:                             # %cond.true.5765
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_775
	jmp	.LBB77_772
.LBB77_757:                             # %cond.false.5766
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_759
# BB#758:                               # %cond.true.5773
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB77_760
.LBB77_759:                             # %cond.false.5792
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
.LBB77_760:                             # %cond.end.5797
	movq	-1584(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1592(%rbp)       # 8-byte Spill
	cqto
	movq	-1592(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_775
	jmp	.LBB77_772
.LBB77_761:                             # %cond.false.5803
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_762
	jmp	.LBB77_763
.LBB77_762:                             # %cond.true.5804
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_775
	jmp	.LBB77_772
.LBB77_763:                             # %cond.false.5805
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_768
# BB#764:                               # %cond.true.5809
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	jge	.LBB77_766
# BB#765:                               # %cond.true.5817
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB77_767
.LBB77_766:                             # %cond.false.5836
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
.LBB77_767:                             # %cond.end.5841
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1616(%rbp)       # 8-byte Spill
	cqto
	movq	-1616(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_775
	jmp	.LBB77_772
.LBB77_768:                             # %cond.false.5846
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_770
# BB#769:                               # %cond.true.5853
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	jmp	.LBB77_771
.LBB77_770:                             # %cond.false.5862
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
.LBB77_771:                             # %cond.end.5867
	movq	-1624(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1632(%rbp)       # 8-byte Spill
	cqto
	movq	-1632(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_775
.LBB77_772:                             # %lor.lhs.false.5873
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_774
# BB#773:                               # %land.lhs.true.5880
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB77_775
.LBB77_774:                             # %lor.lhs.false.5885
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB77_779
.LBB77_775:                             # %cond.true.5890
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_777
# BB#776:                               # %cond.true.5895
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB77_778
.LBB77_777:                             # %cond.false.5898
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
.LBB77_778:                             # %cond.end.5903
	movq	-1640(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_779:                             # %cond.false.5905
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_781
# BB#780:                               # %cond.true.5910
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB77_782
.LBB77_781:                             # %cond.false.5913
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
.LBB77_782:                             # %cond.end.5918
	movq	-1648(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_783:                             # %cond.false.5920
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_785
# BB#784:                               # %cond.true.5927
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB77_786
.LBB77_785:                             # %cond.false.5946
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
.LBB77_786:                             # %cond.end.5951
	movq	-1656(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB77_788
# BB#787:                               # %land.lhs.true.5955
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jl	.LBB77_814
.LBB77_788:                             # %lor.lhs.false.5959
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_789
	jmp	.LBB77_800
.LBB77_789:                             # %cond.true.5960
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_794
# BB#790:                               # %cond.true.5964
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	jge	.LBB77_792
# BB#791:                               # %cond.true.5972
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB77_793
.LBB77_792:                             # %cond.false.5981
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
.LBB77_793:                             # %cond.end.5986
	movq	-1672(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1680(%rbp)       # 8-byte Spill
	cqto
	movq	-1680(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1664(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_814
	jmp	.LBB77_811
.LBB77_794:                             # %cond.false.5991
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_795
	jmp	.LBB77_796
.LBB77_795:                             # %cond.true.5992
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_814
	jmp	.LBB77_811
.LBB77_796:                             # %cond.false.5993
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_798
# BB#797:                               # %cond.true.6000
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1688(%rbp)       # 8-byte Spill
	jmp	.LBB77_799
.LBB77_798:                             # %cond.false.6019
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
.LBB77_799:                             # %cond.end.6024
	movq	-1688(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1696(%rbp)       # 8-byte Spill
	cqto
	movq	-1696(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_814
	jmp	.LBB77_811
.LBB77_800:                             # %cond.false.6030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_801
	jmp	.LBB77_802
.LBB77_801:                             # %cond.true.6031
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB77_814
	jmp	.LBB77_811
.LBB77_802:                             # %cond.false.6032
	movq	-40(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_807
# BB#803:                               # %cond.true.6036
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	jge	.LBB77_805
# BB#804:                               # %cond.true.6044
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1712(%rbp)       # 8-byte Spill
	jmp	.LBB77_806
.LBB77_805:                             # %cond.false.6063
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
.LBB77_806:                             # %cond.end.6068
	movq	-1712(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1720(%rbp)       # 8-byte Spill
	cqto
	movq	-1720(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1704(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB77_814
	jmp	.LBB77_811
.LBB77_807:                             # %cond.false.6073
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_809
# BB#808:                               # %cond.true.6080
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	jmp	.LBB77_810
.LBB77_809:                             # %cond.false.6089
	movq	-40(%rbp), %rax
	addq	$1, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
.LBB77_810:                             # %cond.end.6094
	movq	-1728(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1736(%rbp)       # 8-byte Spill
	cqto
	movq	-1736(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rax
	jl	.LBB77_814
.LBB77_811:                             # %lor.lhs.false.6100
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB77_813
# BB#812:                               # %land.lhs.true.6107
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB77_814
.LBB77_813:                             # %lor.lhs.false.6112
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB77_818
.LBB77_814:                             # %cond.true.6117
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_816
# BB#815:                               # %cond.true.6122
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	jmp	.LBB77_817
.LBB77_816:                             # %cond.false.6125
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB77_817:                             # %cond.end.6130
	movq	-1744(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB77_823
	jmp	.LBB77_822
.LBB77_818:                             # %cond.false.6132
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB77_820
# BB#819:                               # %cond.true.6137
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	jmp	.LBB77_821
.LBB77_820:                             # %cond.false.6140
	movq	-40(%rbp), %rax
	addq	$1, %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
.LBB77_821:                             # %cond.end.6145
	movq	-1752(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB77_823
.LBB77_822:                             # %lor.lhs.false.6147
	movq	$-1, %rax
	cmpq	-128(%rbp), %rax
	jae	.LBB77_824
.LBB77_823:                             # %if.then.6150
	movq	$-1, %rdi
	callq	memory_full
.LBB77_824:                             # %if.else.6151
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB77_826
# BB#825:                               # %if.then.6154
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-128(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB77_827
.LBB77_826:                             # %if.else.6156
	movq	-128(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -136(%rbp)
	movb	$1, -97(%rbp)
	movq	-136(%rbp), %rsi
	callq	record_unwind_protect
.LBB77_827:                             # %if.end.6161
	jmp	.LBB77_828
.LBB77_828:                             # %if.end.6162
	jmp	.LBB77_829
.LBB77_829:                             # %do.end.6163
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB77_830:                             # %if.end.6165
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB77_831:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1760(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB77_832
	jmp	.LBB77_833
.LBB77_832:                             # %while.body
                                        #   in Loop: Header=BB77_831 Depth=1
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB77_831
.LBB77_833:                             # %while.end
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Ffuncall
	movq	%rax, -80(%rbp)
# BB#834:                               # %do.body.6176
	testb	$1, -97(%rbp)
	je	.LBB77_836
# BB#835:                               # %if.then.6177
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1776(%rbp)       # 8-byte Spill
.LBB77_836:                             # %if.end.6180
	jmp	.LBB77_837
.LBB77_837:                             # %do.end.6181
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB77_838:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Fapply, .Lfunc_end77-Fapply
	.cfi_endproc

	.globl	Ffuncall
	.align	16, 0x90
	.type	Ffuncall,@function
Ffuncall:                               # @Ffuncall
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	subq	$1, %rsi
	movq	%rsi, -48(%rbp)
# BB#1:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB78_4
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB78_4
# BB#3:                                 # %if.then
	callq	process_quit_flag
	jmp	.LBB78_7
.LBB78_4:                               # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB78_6
# BB#5:                                 # %if.then.3
	callq	process_pending_signals
.LBB78_6:                               # %if.end
	jmp	.LBB78_7
.LBB78_7:                               # %if.end.4
	jmp	.LBB78_8
.LBB78_8:                               # %do.end
	movq	lisp_eval_depth, %rax
	addq	$1, %rax
	movq	%rax, lisp_eval_depth
	cmpq	globals+3168, %rax
	jle	.LBB78_14
# BB#9:                                 # %if.then.6
	cmpq	$100, globals+3168
	jge	.LBB78_11
# BB#10:                                # %if.then.8
	movq	$100, globals+3168
.LBB78_11:                              # %if.end.9
	movq	lisp_eval_depth, %rax
	cmpq	globals+3168, %rax
	jle	.LBB78_13
# BB#12:                                # %if.then.11
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB78_13:                              # %if.end.12
	jmp	.LBB78_14
.LBB78_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	subq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	record_in_backtrace
	movq	%rax, -80(%rbp)
	callq	maybe_gc
	testb	$1, globals+3372
	je	.LBB78_16
# BB#15:                                # %if.then.18
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_debug_on_call
.LBB78_16:                              # %if.end.20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB78_17:                              # %retry
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB78_21
# BB#18:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB78_17 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB78_21
# BB#19:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB78_17 Depth=1
	movq	-24(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+24(,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB78_21
# BB#20:                                # %if.then.34
                                        #   in Loop: Header=BB78_17 Depth=1
	movq	-24(%rbp), %rdi
	callq	indirect_function
	movq	%rax, -24(%rbp)
.LBB78_21:                              # %if.end.36
                                        #   in Loop: Header=BB78_17 Depth=1
	movq	-24(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB78_22
	jmp	.LBB78_48
.LBB78_22:                              # %if.then.38
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswq	16(%rax), %rax
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB78_25
# BB#23:                                # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$0, %ecx
	jl	.LBB78_26
# BB#24:                                # %land.lhs.true.47
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswq	18(%rax), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB78_26
.LBB78_25:                              # %if.then.53
	movq	-48(%rbp), %rdi
	callq	make_natnum
	movl	$1043, %edi             # imm = 0x413
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	xsignal2
.LBB78_26:                              # %if.else.56
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$-1, %ecx
	jne	.LBB78_28
# BB#27:                                # %if.then.62
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB78_28:                              # %if.else.64
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$-2, %ecx
	jne	.LBB78_30
# BB#29:                                # %if.then.70
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rsi
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_45
.LBB78_30:                              # %if.else.75
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswq	18(%rax), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB78_32
# BB#31:                                # %if.then.81
	leaq	-144(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	XSUBR
	movswq	18(%rax), %rax
	subq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memclear
	jmp	.LBB78_33
.LBB78_32:                              # %if.else.89
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
.LBB78_33:                              # %if.end.91
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	movl	%ecx, %eax
	subl	$8, %ecx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	ja	.LBB78_43
# BB#67:                                # %if.end.91
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI78_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB78_34:                              # %sw.bb
	movq	-24(%rbp), %rdi
	callq	XSUBR
	callq	*8(%rax)
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_35:                              # %sw.bb.98
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_36:                              # %sw.bb.103
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_37:                              # %sw.bb.109
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rdx
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_38:                              # %sw.bb.116
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_39:                              # %sw.bb.124
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-72(%rbp), %r8
	movq	32(%r8), %r8
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_40:                              # %sw.bb.133
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-72(%rbp), %r8
	movq	32(%r8), %r8
	movq	-72(%rbp), %r9
	movq	40(%r9), %r9
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_41:                              # %sw.bb.143
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-72(%rbp), %r8
	movq	32(%r8), %r8
	movq	-72(%rbp), %r9
	movq	40(%r9), %r9
	movq	-72(%rbp), %r10
	movq	48(%r10), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_42:                              # %sw.bb.154
	movq	-24(%rbp), %rdi
	callq	XSUBR
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-72(%rbp), %r8
	movq	32(%r8), %r8
	movq	-72(%rbp), %r9
	movq	40(%r9), %r9
	movq	-72(%rbp), %r10
	movq	48(%r10), %r10
	movq	-72(%rbp), %r11
	movq	56(%r11), %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	movq	%rax, -64(%rbp)
	jmp	.LBB78_44
.LBB78_43:                              # %sw.default
	callq	emacs_abort
.LBB78_44:                              # %sw.epilog
	jmp	.LBB78_45
.LBB78_45:                              # %if.end.166
	jmp	.LBB78_46
.LBB78_46:                              # %if.end.167
	jmp	.LBB78_47
.LBB78_47:                              # %if.end.168
	jmp	.LBB78_64
.LBB78_48:                              # %if.else.169
                                        #   in Loop: Header=BB78_17 Depth=1
	movq	-24(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB78_49
	jmp	.LBB78_50
.LBB78_49:                              # %if.then.171
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	callq	funcall_lambda
	movq	%rax, -64(%rbp)
	jmp	.LBB78_63
.LBB78_50:                              # %if.else.174
                                        #   in Loop: Header=BB78_17 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB78_52
# BB#51:                                # %if.then.178
	movl	$1006, %edi             # imm = 0x3EE
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB78_52:                              # %if.end.180
                                        #   in Loop: Header=BB78_17 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB78_54
# BB#53:                                # %if.then.185
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB78_54:                              # %if.end.187
                                        #   in Loop: Header=BB78_17 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB78_56
# BB#55:                                # %if.then.193
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB78_56:                              # %if.end.195
                                        #   in Loop: Header=BB78_17 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB78_58
# BB#57:                                # %lor.lhs.false.199
                                        #   in Loop: Header=BB78_17 Depth=1
	movl	$271, %edi              # imm = 0x10F
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB78_59
.LBB78_58:                              # %if.then.203
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdx
	callq	funcall_lambda
	movq	%rax, -64(%rbp)
	jmp	.LBB78_62
.LBB78_59:                              # %if.else.206
                                        #   in Loop: Header=BB78_17 Depth=1
	movl	$191, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB78_61
# BB#60:                                # %if.then.210
                                        #   in Loop: Header=BB78_17 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fautoload_do_load
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB78_17
.LBB78_61:                              # %if.else.213
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB78_62:                              # %if.end.215
	jmp	.LBB78_63
.LBB78_63:                              # %if.end.216
	jmp	.LBB78_64
.LBB78_64:                              # %if.end.217
	movq	lisp_eval_depth, %rax
	addq	$-1, %rax
	movq	%rax, lisp_eval_depth
	movq	specpdl, %rax
	movq	-80(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	backtrace_debug_on_exit
	testb	$1, %al
	jne	.LBB78_65
	jmp	.LBB78_66
.LBB78_65:                              # %if.then.220
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, %rdi
	callq	call_debugger
	movq	%rax, -64(%rbp)
.LBB78_66:                              # %if.end.224
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	movq	-64(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Ffuncall, .Lfunc_end78-Ffuncall
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI78_0:
	.quad	.LBB78_34
	.quad	.LBB78_35
	.quad	.LBB78_36
	.quad	.LBB78_37
	.quad	.LBB78_38
	.quad	.LBB78_39
	.quad	.LBB78_40
	.quad	.LBB78_41
	.quad	.LBB78_42

	.text
	.globl	Frun_hooks
	.align	16, 0x90
	.type	Frun_hooks,@function
Frun_hooks:                             # @Frun_hooks
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB79_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB79_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	run_hook
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB79_1
.LBB79_4:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	Frun_hooks, .Lfunc_end79-Frun_hooks
	.cfi_endproc

	.globl	run_hook
	.align	16, 0x90
	.type	run_hook,@function
run_hook:                               # @run_hook
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-8(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	Frun_hook_with_args
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	run_hook, .Lfunc_end80-run_hook
	.cfi_endproc

	.globl	Frun_hook_with_args
	.align	16, 0x90
	.type	Frun_hook_with_args,@function
Frun_hook_with_args:                    # @Frun_hook_with_args
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
	subq	$16, %rsp
	movabsq	$funcall_nil, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	run_hook_with_args
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	Frun_hook_with_args, .Lfunc_end81-Frun_hook_with_args
	.cfi_endproc

	.globl	run_hook_with_args
	.align	16, 0x90
	.type	run_hook_with_args,@function
run_hook_with_args:                     # @run_hook_with_args
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	Vrun_hooks, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB82_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB82_32
.LBB82_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	find_symbol_value
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB82_4
# BB#3:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB82_5
.LBB82_4:                               # %if.then.8
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB82_32
.LBB82_5:                               # %if.else
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB82_7
# BB#6:                                 # %lor.lhs.false.11
	movq	-48(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB82_7
	jmp	.LBB82_8
.LBB82_7:                               # %if.then.14
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB82_32
.LBB82_8:                               # %if.else.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB82_9:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB82_19 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB82_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB82_9 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB82_11:                              # %land.end
                                        #   in Loop: Header=BB82_9 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB82_12
	jmp	.LBB82_31
.LBB82_12:                              # %for.body
                                        #   in Loop: Header=BB82_9 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB82_28
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB82_9 Depth=1
	movq	-40(%rbp), %rdi
	callq	Fdefault_value
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB82_15
# BB#14:                                # %if.then.34
                                        #   in Loop: Header=BB82_9 Depth=1
	jmp	.LBB82_30
.LBB82_15:                              # %if.end.35
                                        #   in Loop: Header=BB82_9 Depth=1
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB82_17
# BB#16:                                # %lor.lhs.false.40
                                        #   in Loop: Header=BB82_9 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB82_18
.LBB82_17:                              # %if.then.46
                                        #   in Loop: Header=BB82_9 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -56(%rbp)
	jmp	.LBB82_27
.LBB82_18:                              # %if.else.49
                                        #   in Loop: Header=BB82_9 Depth=1
	jmp	.LBB82_19
.LBB82_19:                              # %for.cond.50
                                        #   Parent Loop BB82_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jne	.LBB82_21
# BB#20:                                # %land.rhs.55
                                        #   in Loop: Header=BB82_19 Depth=2
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -129(%rbp)         # 1-byte Spill
.LBB82_21:                              # %land.end.59
                                        #   in Loop: Header=BB82_19 Depth=2
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB82_22
	jmp	.LBB82_26
.LBB82_22:                              # %for.body.60
                                        #   in Loop: Header=BB82_19 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB82_24
# BB#23:                                # %if.then.68
                                        #   in Loop: Header=BB82_19 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB82_24:                              # %if.end.70
                                        #   in Loop: Header=BB82_19 Depth=2
	jmp	.LBB82_25
.LBB82_25:                              # %for.inc
                                        #   in Loop: Header=BB82_19 Depth=2
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB82_19
.LBB82_26:                              # %for.end
                                        #   in Loop: Header=BB82_9 Depth=1
	jmp	.LBB82_27
.LBB82_27:                              # %if.end.72
                                        #   in Loop: Header=BB82_9 Depth=1
	jmp	.LBB82_29
.LBB82_28:                              # %if.else.73
                                        #   in Loop: Header=BB82_9 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -56(%rbp)
.LBB82_29:                              # %if.end.78
                                        #   in Loop: Header=BB82_9 Depth=1
	jmp	.LBB82_30
.LBB82_30:                              # %for.inc.79
                                        #   in Loop: Header=BB82_9 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB82_9
.LBB82_31:                              # %for.end.83
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB82_32:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	run_hook_with_args, .Lfunc_end82-run_hook_with_args
	.cfi_endproc

	.align	16, 0x90
	.type	funcall_nil,@function
funcall_nil:                            # @funcall_nil
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Ffuncall
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	funcall_nil, .Lfunc_end83-funcall_nil
	.cfi_endproc

	.globl	Frun_hook_with_args_until_success
	.align	16, 0x90
	.type	Frun_hook_with_args_until_success,@function
Frun_hook_with_args_until_success:      # @Frun_hook_with_args_until_success
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
	subq	$16, %rsp
	movabsq	$Ffuncall, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	run_hook_with_args
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Frun_hook_with_args_until_success, .Lfunc_end84-Frun_hook_with_args_until_success
	.cfi_endproc

	.globl	Frun_hook_with_args_until_failure
	.align	16, 0x90
	.type	Frun_hook_with_args_until_failure,@function
Frun_hook_with_args_until_failure:      # @Frun_hook_with_args_until_failure
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
	subq	$32, %rsp
	movabsq	$funcall_not, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	run_hook_with_args
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB85_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB85_3
.LBB85_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB85_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	Frun_hook_with_args_until_failure, .Lfunc_end85-Frun_hook_with_args_until_failure
	.cfi_endproc

	.align	16, 0x90
	.type	funcall_not,@function
funcall_not:                            # @funcall_not
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Ffuncall
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB86_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB86_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	funcall_not, .Lfunc_end86-funcall_not
	.cfi_endproc

	.globl	Frun_hook_wrapped
	.align	16, 0x90
	.type	Frun_hook_wrapped,@function
Frun_hook_wrapped:                      # @Frun_hook_wrapped
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
	subq	$16, %rsp
	movabsq	$run_hook_wrapped_funcall, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	run_hook_with_args
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Frun_hook_wrapped, .Lfunc_end87-Frun_hook_wrapped
	.cfi_endproc

	.align	16, 0x90
	.type	run_hook_wrapped_funcall,@function
run_hook_wrapped_funcall:               # @run_hook_wrapped_funcall
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Ffuncall
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	run_hook_wrapped_funcall, .Lfunc_end88-run_hook_wrapped_funcall
	.cfi_endproc

	.globl	run_hook_with_args_2
	.align	16, 0x90
	.type	run_hook_with_args_2,@function
run_hook_with_args_2:                   # @run_hook_with_args_2
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
	subq	$64, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	leaq	-48(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	Frun_hook_with_args
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	run_hook_with_args_2, .Lfunc_end89-run_hook_with_args_2
	.cfi_endproc

	.globl	call0
	.align	16, 0x90
	.type	call0,@function
call0:                                  # @call0
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-8(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	Ffuncall
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	call0, .Lfunc_end90-call0
	.cfi_endproc

	.globl	call1
	.align	16, 0x90
	.type	call1,@function
call1:                                  # @call1
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
	movl	$2, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Ffuncall
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	call1, .Lfunc_end91-call1
	.cfi_endproc

	.globl	call3
	.align	16, 0x90
	.type	call3,@function
call3:                                  # @call3
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
	movl	$4, %eax
	movl	%eax, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	Ffuncall
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	call3, .Lfunc_end92-call3
	.cfi_endproc

	.globl	call4
	.align	16, 0x90
	.type	call4,@function
call4:                                  # @call4
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
	subq	$80, %rsp
	movl	$5, %eax
	movl	%eax, %r9d
	leaq	-80(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%r9, %rdi
	movq	%r10, %rsi
	callq	Ffuncall
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	call4, .Lfunc_end93-call4
	.cfi_endproc

	.globl	call5
	.align	16, 0x90
	.type	call5,@function
call5:                                  # @call5
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
	subq	$96, %rsp
	movl	$6, %eax
	movl	%eax, %r10d
	leaq	-96(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%r10, %rdi
	movq	%r11, %rsi
	callq	Ffuncall
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	call5, .Lfunc_end94-call5
	.cfi_endproc

	.globl	call6
	.align	16, 0x90
	.type	call6,@function
call6:                                  # @call6
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp288:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movl	$7, %r10d
	movl	%r10d, %r11d
	leaq	-120(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%r11, %rdi
	movq	%rbx, %rsi
	callq	Ffuncall
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end95:
	.size	call6, .Lfunc_end95-call6
	.cfi_endproc

	.globl	call7
	.align	16, 0x90
	.type	call7,@function
call7:                                  # @call7
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp292:
	.cfi_offset %rbx, -32
.Ltmp293:
	.cfi_offset %r14, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movl	$8, %r11d
	movl	%r11d, %ebx
	leaq	-144(%rbp), %r14
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	Ffuncall
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end96:
	.size	call7, .Lfunc_end96-call7
	.cfi_endproc

	.globl	Ffunctionp
	.align	16, 0x90
	.type	Ffunctionp,@function
Ffunctionp:                             # @Ffunctionp
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB97_1
	jmp	.LBB97_2
.LBB97_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB97_3
.LBB97_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB97_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	Ffunctionp, .Lfunc_end97-Ffunctionp
	.cfi_endproc

	.align	16, 0x90
	.type	funcall_lambda,@function
funcall_lambda:                         # @funcall_lambda
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_11
# BB#1:                                 # %if.then
	movl	$271, %edi              # imm = 0x10F
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB98_6
# BB#2:                                 # %if.then.5
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_4
# BB#3:                                 # %cond.true
	jmp	.LBB98_5
.LBB98_4:                               # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB98_5:                               # %cond.end
	jmp	.LBB98_7
.LBB98_6:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB98_7:                               # %if.end
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_9
# BB#8:                                 # %if.then.22
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB98_10
.LBB98_9:                               # %if.else.25
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB98_10:                              # %if.end.27
	jmp	.LBB98_21
.LBB98_11:                              # %if.else.28
	movq	-16(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB98_12
	jmp	.LBB98_19
.LBB98_12:                              # %if.then.30
	movq	-16(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -96(%rbp)
	cmpq	$3, -96(%rbp)
	jg	.LBB98_14
# BB#13:                                # %if.then.35
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB98_14:                              # %if.end.37
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB98_18
# BB#15:                                # %if.then.44
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_17
# BB#16:                                # %if.then.50
	movq	-16(%rbp), %rdi
	callq	Ffetch_bytecode
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB98_17:                              # %if.end.52
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	exec_byte_code
	movq	%rax, -8(%rbp)
	jmp	.LBB98_67
.LBB98_18:                              # %if.end.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	jmp	.LBB98_20
.LBB98_19:                              # %if.else.59
	callq	emacs_abort
.LBB98_20:                              # %if.end.60
	jmp	.LBB98_21
.LBB98_21:                              # %if.end.61
	movb	$0, -82(%rbp)
	movb	$0, -81(%rbp)
	movq	$0, -80(%rbp)
.LBB98_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_54
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_24
.LBB98_24:                              # %do.body
                                        #   in Loop: Header=BB98_22 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB98_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB98_22 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB98_27
# BB#26:                                # %if.then.72
                                        #   in Loop: Header=BB98_22 Depth=1
	callq	process_quit_flag
	jmp	.LBB98_30
.LBB98_27:                              # %if.else.73
                                        #   in Loop: Header=BB98_22 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB98_29
# BB#28:                                # %if.then.74
                                        #   in Loop: Header=BB98_22 Depth=1
	callq	process_pending_signals
.LBB98_29:                              # %if.end.75
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_30
.LBB98_30:                              # %if.end.76
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_31
.LBB98_31:                              # %do.end
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB98_33
# BB#32:                                # %if.then.83
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB98_33:                              # %if.end.85
                                        #   in Loop: Header=BB98_22 Depth=1
	movl	$173, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB98_35
# BB#34:                                # %if.then.89
                                        #   in Loop: Header=BB98_22 Depth=1
	movb	$1, -82(%rbp)
	jmp	.LBB98_52
.LBB98_35:                              # %if.else.90
                                        #   in Loop: Header=BB98_22 Depth=1
	movl	$172, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB98_37
# BB#36:                                # %if.then.94
                                        #   in Loop: Header=BB98_22 Depth=1
	movb	$1, -81(%rbp)
	jmp	.LBB98_51
.LBB98_37:                              # %if.else.95
                                        #   in Loop: Header=BB98_22 Depth=1
	testb	$1, -82(%rbp)
	je	.LBB98_39
# BB#38:                                # %if.then.97
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-24(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	-80(%rbp), %rcx
	shlq	$3, %rcx
	addq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Flist
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB98_46
.LBB98_39:                              # %if.else.100
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB98_41
# BB#40:                                # %if.then.103
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB98_45
.LBB98_41:                              # %if.else.105
                                        #   in Loop: Header=BB98_22 Depth=1
	testb	$1, -81(%rbp)
	jne	.LBB98_43
# BB#42:                                # %if.then.107
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	xsignal2
.LBB98_43:                              # %if.else.109
                                        #   in Loop: Header=BB98_22 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
# BB#44:                                # %if.end.111
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_45
.LBB98_45:                              # %if.end.112
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_46
.LBB98_46:                              # %if.end.113
                                        #   in Loop: Header=BB98_22 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB98_49
# BB#47:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB98_49
# BB#48:                                # %if.then.122
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	Fcons
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -64(%rbp)
	jmp	.LBB98_50
.LBB98_49:                              # %if.else.125
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	specbind
.LBB98_50:                              # %if.end.126
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_51
.LBB98_51:                              # %if.end.127
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_52
.LBB98_52:                              # %if.end.128
                                        #   in Loop: Header=BB98_22 Depth=1
	jmp	.LBB98_53
.LBB98_53:                              # %for.inc
                                        #   in Loop: Header=BB98_22 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB98_22
.LBB98_54:                              # %for.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB98_56
# BB#55:                                # %if.then.135
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB98_56:                              # %if.else.137
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB98_58
# BB#57:                                # %if.then.140
	movl	$1043, %edi             # imm = 0x413
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	xsignal2
.LBB98_58:                              # %if.end.144
	jmp	.LBB98_59
.LBB98_59:                              # %if.end.145
	movq	-64(%rbp), %rax
	cmpq	globals+1176, %rax
	je	.LBB98_61
# BB#60:                                # %if.then.148
	movl	$567, %edi              # imm = 0x237
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
.LBB98_61:                              # %if.end.150
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_63
# BB#62:                                # %if.then.155
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fprogn
	movq	%rax, -40(%rbp)
	jmp	.LBB98_66
.LBB98_63:                              # %if.else.163
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB98_65
# BB#64:                                # %if.then.169
	movq	-16(%rbp), %rdi
	callq	Ffetch_bytecode
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB98_65:                              # %if.end.171
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-232(%rbp), %r8         # 8-byte Reload
	movq	-232(%rbp), %r9         # 8-byte Reload
	callq	exec_byte_code
	movq	%rax, -40(%rbp)
.LBB98_66:                              # %if.end.177
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB98_67:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	funcall_lambda, .Lfunc_end98-funcall_lambda
	.cfi_endproc

	.globl	Ffetch_bytecode
	.align	16, 0x90
	.type	Ffetch_bytecode,@function
Ffetch_bytecode:                        # @Ffetch_bytecode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB99_1
	jmp	.LBB99_11
.LBB99_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -24(%rbp)
	cmpq	$3, -24(%rbp)
	jg	.LBB99_3
# BB#2:                                 # %if.then.2
	movl	$570, %edi              # imm = 0x23A
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB99_3:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB99_10
# BB#4:                                 # %if.then.8
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	read_doc_string
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB99_9
# BB#5:                                 # %if.then.15
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB99_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB99_7
	jmp	.LBB99_8
.LBB99_7:                               # %if.then.23
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.12, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB99_8:                               # %if.else
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB99_9:                               # %if.end.27
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdx
	callq	ASET
	movl	$2, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	callq	ASET
.LBB99_10:                              # %if.end.31
	jmp	.LBB99_11
.LBB99_11:                              # %if.end.32
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	Ffetch_bytecode, .Lfunc_end99-Ffetch_bytecode
	.cfi_endproc

	.globl	let_shadows_buffer_binding_p
	.align	16, 0x90
	.type	let_shadows_buffer_binding_p,@function
let_shadows_buffer_binding_p:           # @let_shadows_buffer_binding_p
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
	movq	%rdi, -16(%rbp)
	callq	Fcurrent_buffer
	movq	%rax, -32(%rbp)
	movq	specpdl_ptr, %rax
	movq	%rax, -24(%rbp)
.LBB100_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	specpdl, %rax
	jbe	.LBB100_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-32, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	-32(%rax), %edx
	cmpl	$5, %edx
	jle	.LBB100_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	specpdl_symbol
	movabsq	$lispsym, %rdi
	subq	$0, %rax
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB100_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB100_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	specpdl_where
	cmpq	-32(%rbp), %rax
	jne	.LBB100_6
# BB#5:                                 # %if.then.6
	movb	$1, -1(%rbp)
	jmp	.LBB100_9
.LBB100_6:                              # %if.end
                                        #   in Loop: Header=BB100_1 Depth=1
	jmp	.LBB100_7
.LBB100_7:                              # %if.end.7
                                        #   in Loop: Header=BB100_1 Depth=1
	jmp	.LBB100_1
.LBB100_8:                              # %for.end
	movb	$0, -1(%rbp)
.LBB100_9:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	let_shadows_buffer_binding_p, .Lfunc_end100-let_shadows_buffer_binding_p
	.cfi_endproc

	.align	16, 0x90
	.type	specpdl_where,@function
specpdl_where:                          # @specpdl_where
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end101:
	.size	specpdl_where, .Lfunc_end101-specpdl_where
	.cfi_endproc

	.globl	let_shadows_global_binding_p
	.align	16, 0x90
	.type	let_shadows_global_binding_p,@function
let_shadows_global_binding_p:           # @let_shadows_global_binding_p
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	specpdl_ptr, %rdi
	movq	%rdi, -24(%rbp)
.LBB102_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	specpdl, %rax
	jbe	.LBB102_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-32, %rcx
	movq	%rcx, -24(%rbp)
	movzbl	-32(%rax), %edx
	cmpl	$5, %edx
	jl	.LBB102_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	specpdl_symbol
	cmpq	-16(%rbp), %rax
	jne	.LBB102_5
# BB#4:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB102_7
.LBB102_5:                              # %if.end
                                        #   in Loop: Header=BB102_1 Depth=1
	jmp	.LBB102_1
.LBB102_6:                              # %for.end
	movb	$0, -1(%rbp)
.LBB102_7:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	let_shadows_global_binding_p, .Lfunc_end102-let_shadows_global_binding_p
	.cfi_endproc

	.globl	record_unwind_protect_ptr
	.align	16, 0x90
	.type	record_unwind_protect_ptr,@function
record_unwind_protect_ptr:              # @record_unwind_protect_ptr
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	specpdl_ptr, %rsi
	movb	$1, (%rsi)
	movq	-8(%rbp), %rsi
	movq	specpdl_ptr, %rdi
	movq	%rsi, 8(%rdi)
	movq	-16(%rbp), %rsi
	movq	specpdl_ptr, %rdi
	movq	%rsi, 16(%rdi)
	callq	grow_specpdl
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	record_unwind_protect_ptr, .Lfunc_end103-record_unwind_protect_ptr
	.cfi_endproc

	.globl	record_unwind_protect_int
	.align	16, 0x90
	.type	record_unwind_protect_int,@function
record_unwind_protect_int:              # @record_unwind_protect_int
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	specpdl_ptr, %rdi
	movb	$2, (%rdi)
	movq	-8(%rbp), %rdi
	movq	specpdl_ptr, %rax
	movq	%rdi, 8(%rax)
	movl	-12(%rbp), %esi
	movq	specpdl_ptr, %rax
	movl	%esi, 16(%rax)
	callq	grow_specpdl
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	record_unwind_protect_int, .Lfunc_end104-record_unwind_protect_int
	.cfi_endproc

	.globl	record_unwind_protect_void
	.align	16, 0x90
	.type	record_unwind_protect_void,@function
record_unwind_protect_void:             # @record_unwind_protect_void
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	specpdl_ptr, %rdi
	movb	$3, (%rdi)
	movq	-8(%rbp), %rdi
	movq	specpdl_ptr, %rax
	movq	%rdi, 8(%rax)
	callq	grow_specpdl
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	record_unwind_protect_void, .Lfunc_end105-record_unwind_protect_void
	.cfi_endproc

	.globl	record_unwind_protect_nothing
	.align	16, 0x90
	.type	record_unwind_protect_nothing,@function
record_unwind_protect_nothing:          # @record_unwind_protect_nothing
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
	movabsq	$do_nothing, %rdi
	callq	record_unwind_protect_void
	popq	%rbp
	retq
.Lfunc_end106:
	.size	record_unwind_protect_nothing, .Lfunc_end106-record_unwind_protect_nothing
	.cfi_endproc

	.align	16, 0x90
	.type	do_nothing,@function
do_nothing:                             # @do_nothing
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
	popq	%rbp
	retq
.Lfunc_end107:
	.size	do_nothing, .Lfunc_end107-do_nothing
	.cfi_endproc

	.globl	clear_unwind_protect
	.align	16, 0x90
	.type	clear_unwind_protect,@function
clear_unwind_protect:                   # @clear_unwind_protect
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
	movabsq	$do_nothing, %rax
	movq	%rdi, -8(%rbp)
	movq	specpdl, %rdi
	movq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movb	$3, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	popq	%rbp
	retq
.Lfunc_end108:
	.size	clear_unwind_protect, .Lfunc_end108-clear_unwind_protect
	.cfi_endproc

	.globl	set_unwind_protect
	.align	16, 0x90
	.type	set_unwind_protect,@function
set_unwind_protect:                     # @set_unwind_protect
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	specpdl, %rdx
	movq	-8(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movb	$0, (%rdx)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end109:
	.size	set_unwind_protect, .Lfunc_end109-set_unwind_protect
	.cfi_endproc

	.globl	set_unwind_protect_ptr
	.align	16, 0x90
	.type	set_unwind_protect_ptr,@function
set_unwind_protect_ptr:                 # @set_unwind_protect_ptr
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	specpdl, %rdx
	movq	-8(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movb	$1, (%rdx)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end110:
	.size	set_unwind_protect_ptr, .Lfunc_end110-set_unwind_protect_ptr
	.cfi_endproc

	.globl	Fspecial_variable_p
	.align	16, 0x90
	.type	Fspecial_variable_p,@function
Fspecial_variable_p:                    # @Fspecial_variable_p
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
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB111_2
# BB#1:                                 # %cond.true
	jmp	.LBB111_3
.LBB111_2:                              # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB111_3:                              # %cond.end
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$8, %cx
	andw	$1, %cx
	testw	$1, %cx
	je	.LBB111_5
# BB#4:                                 # %cond.true.3
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB111_6
.LBB111_5:                              # %cond.false.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB111_6:                              # %cond.end.7
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	Fspecial_variable_p, .Lfunc_end111-Fspecial_variable_p
	.cfi_endproc

	.globl	Fbacktrace_debug
	.align	16, 0x90
	.type	Fbacktrace_debug,@function
Fbacktrace_debug:                       # @Fbacktrace_debug
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	backtrace_top
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB112_2
# BB#1:                                 # %cond.true
	jmp	.LBB112_3
.LBB112_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB112_3:                              # %cond.end
	movq	$0, -32(%rbp)
.LBB112_4:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	backtrace_p
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -41(%rbp)          # 1-byte Spill
	jne	.LBB112_5
	jmp	.LBB112_6
.LBB112_5:                              # %land.rhs
                                        #   in Loop: Header=BB112_4 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB112_6:                              # %land.end
                                        #   in Loop: Header=BB112_4 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB112_7
	jmp	.LBB112_9
.LBB112_7:                              # %for.body
                                        #   in Loop: Header=BB112_4 Depth=1
	movq	-24(%rbp), %rdi
	callq	backtrace_next
	movq	%rax, -24(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB112_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB112_4
.LBB112_9:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB112_10
	jmp	.LBB112_11
.LBB112_10:                             # %if.then
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movzbl	%dl, %edi
	andl	$1, %edi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	callq	set_backtrace_debug_on_exit
.LBB112_11:                             # %if.end
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	Fbacktrace_debug, .Lfunc_end112-Fbacktrace_debug
	.cfi_endproc

	.align	16, 0x90
	.type	set_backtrace_debug_on_exit,@function
set_backtrace_debug_on_exit:            # @set_backtrace_debug_on_exit
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %esi
	movw	%si, %cx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	andl	$1, %esi
	movw	%si, %cx
	movw	(%rdi), %dx
	shlw	$8, %cx
	andw	$-257, %dx              # imm = 0xFFFFFFFFFFFFFEFF
	orw	%cx, %dx
	movw	%dx, (%rdi)
	movb	%al, -10(%rbp)          # 1-byte Spill
	popq	%rbp
	retq
.Lfunc_end113:
	.size	set_backtrace_debug_on_exit, .Lfunc_end113-set_backtrace_debug_on_exit
	.cfi_endproc

	.globl	Fbacktrace
	.align	16, 0x90
	.type	Fbacktrace,@function
Fbacktrace:                             # @Fbacktrace
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
	subq	$112, %rsp
	callq	backtrace_top
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	globals+1864, %rax
	movq	%rax, -24(%rbp)
	movq	globals+1864, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB114_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, globals+1864
.LBB114_2:                              # %if.end
	jmp	.LBB114_3
.LBB114_3:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB114_7 Depth 2
	movq	-8(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB114_4
	jmp	.LBB114_14
.LBB114_4:                              # %while.body
                                        #   in Loop: Header=BB114_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_debug_on_exit
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.15, %rcx
	testb	$1, %al
	cmovneq	%rcx, %rdi
	callq	write_string
	movq	-8(%rbp), %rdi
	callq	backtrace_nargs
	cmpq	$-1, %rax
	jne	.LBB114_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB114_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_function
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	backtrace_args
	movq	(%rax), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprin1
	movabsq	$.L.str.17, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	write_string
	jmp	.LBB114_13
.LBB114_6:                              # %if.else
                                        #   in Loop: Header=BB114_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_function
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprin1
	movabsq	$.L.str.18, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	write_string
	movq	$0, -32(%rbp)
.LBB114_7:                              # %for.cond
                                        #   Parent Loop BB114_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	backtrace_nargs
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB114_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB114_7 Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB114_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB114_7 Depth=2
	movabsq	$.L.str.19, %rdi
	callq	write_string
.LBB114_10:                             # %if.end.19
                                        #   in Loop: Header=BB114_7 Depth=2
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	backtrace_args
	xorl	%edi, %edi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprin1
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB114_7 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB114_7
.LBB114_12:                             # %for.end
                                        #   in Loop: Header=BB114_3 Depth=1
	movabsq	$.L.str.20, %rdi
	callq	write_string
.LBB114_13:                             # %if.end.23
                                        #   in Loop: Header=BB114_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_next
	movq	%rax, -8(%rbp)
	jmp	.LBB114_3
.LBB114_14:                             # %while.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, globals+1864
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	Fbacktrace, .Lfunc_end114-Fbacktrace
	.cfi_endproc

	.align	16, 0x90
	.type	backtrace_nargs,@function
backtrace_nargs:                        # @backtrace_nargs
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end115:
	.size	backtrace_nargs, .Lfunc_end115-backtrace_nargs
	.cfi_endproc

	.globl	Fbacktrace_frame
	.align	16, 0x90
	.type	Fbacktrace_frame,@function
Fbacktrace_frame:                       # @Fbacktrace_frame
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	get_backtrace_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB116_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB116_5
.LBB116_2:                              # %if.end
	movq	-32(%rbp), %rdi
	callq	backtrace_nargs
	cmpq	$-1, %rax
	jne	.LBB116_4
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	backtrace_function
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	backtrace_args
	movq	(%rax), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB116_5
.LBB116_4:                              # %if.else
	movq	-32(%rbp), %rdi
	callq	backtrace_nargs
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	backtrace_args
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Flist
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	backtrace_function
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB116_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	Fbacktrace_frame, .Lfunc_end116-Fbacktrace_frame
	.cfi_endproc

	.align	16, 0x90
	.type	get_backtrace_frame,@function
get_backtrace_frame:                    # @get_backtrace_frame
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	backtrace_top
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_NATNUM
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB117_7
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	movq	%rax, -16(%rbp)
.LBB117_2:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	backtrace_p
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -49(%rbp)          # 1-byte Spill
	jne	.LBB117_3
	jmp	.LBB117_4
.LBB117_3:                              # %land.rhs
                                        #   in Loop: Header=BB117_2 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	backtrace_function
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB117_4:                              # %land.end
                                        #   in Loop: Header=BB117_2 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB117_5
	jmp	.LBB117_6
.LBB117_5:                              # %while.body
                                        #   in Loop: Header=BB117_2 Depth=1
	movq	-24(%rbp), %rdi
	callq	backtrace_next
	movq	%rax, -24(%rbp)
	jmp	.LBB117_2
.LBB117_6:                              # %while.end
	jmp	.LBB117_7
.LBB117_7:                              # %if.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB117_8:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jle	.LBB117_10
# BB#9:                                 # %land.rhs.11
                                        #   in Loop: Header=BB117_8 Depth=1
	movq	-24(%rbp), %rdi
	callq	backtrace_p
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB117_10:                             # %land.end.13
                                        #   in Loop: Header=BB117_8 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB117_11
	jmp	.LBB117_13
.LBB117_11:                             # %for.body
                                        #   in Loop: Header=BB117_8 Depth=1
	movq	-24(%rbp), %rdi
	callq	backtrace_next
	movq	%rax, -24(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB117_8 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB117_8
.LBB117_13:                             # %for.end
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	get_backtrace_frame, .Lfunc_end117-get_backtrace_frame
	.cfi_endproc

	.globl	Fbacktrace_eval
	.align	16, 0x90
	.type	Fbacktrace_eval,@function
Fbacktrace_eval:                        # @Fbacktrace_eval
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	get_backtrace_frame
	movq	%rax, -32(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movq	specpdl_ptr, %rax
	movq	-32(%rbp), %rdx
	subq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB118_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB118_2:                              # %if.end
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	backtrace_eval_unrewind
	movabsq	$backtrace_eval_unrewind, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	subq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	record_unwind_protect_int
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	eval_sub
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	Fbacktrace_eval, .Lfunc_end118-Fbacktrace_eval
	.cfi_endproc

	.align	16, 0x90
	.type	backtrace_eval_unrewind,@function
backtrace_eval_unrewind:                # @backtrace_eval_unrewind
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
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movq	specpdl_ptr, %rax
	movq	%rax, -16(%rbp)
	movl	$-1, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB119_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rdx
	movslq	%ecx, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	$1, -20(%rbp)
	subl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB119_2:                              # %if.end
	jmp	.LBB119_3
.LBB119_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB119_24
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax,%rcx), %esi
	movl	%esi, %eax
	movq	%rax, %rcx
	subq	$7, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	ja	.LBB119_22
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI119_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB119_5:                              # %sw.bb
                                        #   in Loop: Header=BB119_3 Depth=1
	movabsq	$set_buffer_if_live, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB119_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB119_3 Depth=1
	callq	Fcurrent_buffer
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB119_11
.LBB119_7:                              # %if.else
                                        #   in Loop: Header=BB119_3 Depth=1
	movabsq	$save_excursion_restore, %rax
	movq	-16(%rbp), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB119_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB119_3 Depth=1
	callq	save_excursion_save
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB119_10
.LBB119_9:                              # %if.else.19
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_22
.LBB119_10:                             # %if.end.20
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_11
.LBB119_11:                             # %if.end.21
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	jmp	.LBB119_22
.LBB119_12:                             # %sw.bb.24
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_22
.LBB119_13:                             # %sw.bb.25
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	specpdl_symbol
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB119_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movw	lispsym(,%rax), %cx
	shrw	$1, %cx
	andw	$7, %cx
	movzwl	%cx, %edx
	cmpl	$4, %edx
	jne	.LBB119_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	specpdl_old_value
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+16(,%rax), %rsi
	callq	set_specpdl_old_value
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	subq	$0, %rsi
	movq	%rax, lispsym+16(,%rsi)
	jmp	.LBB119_22
.LBB119_16:                             # %if.else.45
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_17
.LBB119_17:                             # %if.end.46
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_18
.LBB119_18:                             # %sw.bb.47
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	specpdl_symbol
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	specpdl_old_value
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdefault_value
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_specpdl_old_value
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fset_default
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB119_22
.LBB119_19:                             # %sw.bb.56
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	specpdl_symbol
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	specpdl_where
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	specpdl_old_value
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB119_21
# BB#20:                                # %if.then.68
                                        #   in Loop: Header=BB119_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fbuffer_local_value
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_specpdl_old_value
	movl	$1, %ecx
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	set_internal
.LBB119_21:                             # %if.end.70
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_22
.LBB119_22:                             # %sw.epilog
                                        #   in Loop: Header=BB119_3 Depth=1
	jmp	.LBB119_23
.LBB119_23:                             # %for.inc
                                        #   in Loop: Header=BB119_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB119_3
.LBB119_24:                             # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	backtrace_eval_unrewind, .Lfunc_end119-backtrace_eval_unrewind
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI119_0:
	.quad	.LBB119_5
	.quad	.LBB119_12
	.quad	.LBB119_12
	.quad	.LBB119_12
	.quad	.LBB119_12
	.quad	.LBB119_13
	.quad	.LBB119_19
	.quad	.LBB119_18

	.text
	.globl	Fbacktrace__locals
	.align	16, 0x90
	.type	Fbacktrace__locals,@function
Fbacktrace__locals:                     # @Fbacktrace__locals
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	get_backtrace_frame
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	get_backtrace_frame
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	specpdl_ptr, %rax
	movq	-24(%rbp), %rsi
	subq	%rsi, %rax
	sarq	$5, %rax
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB120_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB120_2:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB120_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	error
.LBB120_4:                              # %if.end.6
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	backtrace_eval_unrewind
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB120_5:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB120_9 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB120_21
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB120_5 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$5, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jb	.LBB120_17
	jmp	.LBB120_22
.LBB120_22:                             # %for.body
                                        #   in Loop: Header=BB120_5 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-5, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB120_18
	jmp	.LBB120_7
.LBB120_7:                              # %sw.bb
                                        #   in Loop: Header=BB120_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	specpdl_symbol
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	specpdl_old_value
	movl	$567, %edi              # imm = 0x237
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB120_15
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB120_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB120_9:                              # %for.cond.17
                                        #   Parent Loop BB120_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB120_14
# BB#10:                                # %for.body.21
                                        #   in Loop: Header=BB120_9 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB120_12
# BB#11:                                # %if.then.28
                                        #   in Loop: Header=BB120_9 Depth=2
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB120_12:                             # %if.end.34
                                        #   in Loop: Header=BB120_9 Depth=2
	jmp	.LBB120_13
.LBB120_13:                             # %for.inc
                                        #   in Loop: Header=BB120_9 Depth=2
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB120_9
.LBB120_14:                             # %for.end
                                        #   in Loop: Header=BB120_5 Depth=1
	jmp	.LBB120_16
.LBB120_15:                             # %if.else
                                        #   in Loop: Header=BB120_5 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fcons
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -48(%rbp)
.LBB120_16:                             # %if.end.40
                                        #   in Loop: Header=BB120_5 Depth=1
	jmp	.LBB120_19
.LBB120_17:                             # %sw.bb.41
                                        #   in Loop: Header=BB120_5 Depth=1
	jmp	.LBB120_19
.LBB120_18:                             # %sw.default
	callq	emacs_abort
.LBB120_19:                             # %sw.epilog
                                        #   in Loop: Header=BB120_5 Depth=1
	jmp	.LBB120_20
.LBB120_20:                             # %for.inc.42
                                        #   in Loop: Header=BB120_5 Depth=1
	movq	-56(%rbp), %rax
	addq	$-32, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB120_5
.LBB120_21:                             # %for.end.43
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-40(%rbp), %rcx
	movl	%ecx, %eax
	movl	%eax, %edi
	callq	backtrace_eval_unrewind
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	Fbacktrace__locals, .Lfunc_end120-Fbacktrace__locals
	.cfi_endproc

	.globl	mark_specpdl
	.align	16, 0x90
	.type	mark_specpdl,@function
mark_specpdl:                           # @mark_specpdl
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
	subq	$48, %rsp
	movq	specpdl, %rax
	movq	%rax, -8(%rbp)
.LBB121_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB121_7 Depth 2
	movq	-8(%rbp), %rax
	cmpq	specpdl_ptr, %rax
	je	.LBB121_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$7, %rdx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	ja	.LBB121_13
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI121_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB121_3:                              # %sw.bb
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	specpdl_arg
	movq	%rax, %rdi
	callq	mark_object
	jmp	.LBB121_14
.LBB121_4:                              # %sw.bb.1
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	backtrace_nargs
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	backtrace_function
	movq	%rax, %rdi
	callq	mark_object
	cmpq	$-1, -16(%rbp)
	jne	.LBB121_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	$1, -16(%rbp)
.LBB121_6:                              # %if.end
                                        #   in Loop: Header=BB121_1 Depth=1
	jmp	.LBB121_7
.LBB121_7:                              # %while.cond
                                        #   Parent Loop BB121_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB121_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB121_7 Depth=2
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	backtrace_args
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	(%rax,%rdi,8), %rdi
	callq	mark_object
	jmp	.LBB121_7
.LBB121_9:                              # %while.end
                                        #   in Loop: Header=BB121_1 Depth=1
	jmp	.LBB121_14
.LBB121_10:                             # %sw.bb.6
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	specpdl_where
	movq	%rax, %rdi
	callq	mark_object
.LBB121_11:                             # %sw.bb.8
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	specpdl_symbol
	movq	%rax, %rdi
	callq	mark_object
	movq	-8(%rbp), %rdi
	callq	specpdl_old_value
	movq	%rax, %rdi
	callq	mark_object
	jmp	.LBB121_14
.LBB121_12:                             # %sw.bb.11
                                        #   in Loop: Header=BB121_1 Depth=1
	jmp	.LBB121_14
.LBB121_13:                             # %sw.default
	callq	emacs_abort
.LBB121_14:                             # %sw.epilog
                                        #   in Loop: Header=BB121_1 Depth=1
	jmp	.LBB121_15
.LBB121_15:                             # %for.inc
                                        #   in Loop: Header=BB121_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB121_1
.LBB121_16:                             # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	mark_specpdl, .Lfunc_end121-mark_specpdl
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI121_0:
	.quad	.LBB121_3
	.quad	.LBB121_12
	.quad	.LBB121_12
	.quad	.LBB121_12
	.quad	.LBB121_4
	.quad	.LBB121_11
	.quad	.LBB121_10
	.quad	.LBB121_10

	.text
	.align	16, 0x90
	.type	specpdl_arg,@function
specpdl_arg:                            # @specpdl_arg
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end122:
	.size	specpdl_arg, .Lfunc_end122-specpdl_arg
	.cfi_endproc

	.globl	get_backtrace
	.align	16, 0x90
	.type	get_backtrace,@function
get_backtrace:                          # @get_backtrace
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	backtrace_top
	movq	%rax, %rdi
	callq	backtrace_next
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)
.LBB123_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB123_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB123_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB123_3
	jmp	.LBB123_4
.LBB123_3:                              # %if.then
                                        #   in Loop: Header=BB123_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	backtrace_function
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	callq	backtrace_next
	movq	%rax, -16(%rbp)
	jmp	.LBB123_5
.LBB123_4:                              # %if.else
                                        #   in Loop: Header=BB123_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB123_5:                              # %if.end
                                        #   in Loop: Header=BB123_1 Depth=1
	jmp	.LBB123_6
.LBB123_6:                              # %for.inc
                                        #   in Loop: Header=BB123_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB123_1
.LBB123_7:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	get_backtrace, .Lfunc_end123-get_backtrace
	.cfi_endproc

	.globl	backtrace_top_function
	.align	16, 0x90
	.type	backtrace_top_function,@function
backtrace_top_function:                 # @backtrace_top_function
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
	subq	$16, %rsp
	callq	backtrace_top
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	backtrace_p
	testb	$1, %al
	jne	.LBB124_1
	jmp	.LBB124_2
.LBB124_1:                              # %cond.true
	movq	-8(%rbp), %rdi
	callq	backtrace_function
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB124_3
.LBB124_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB124_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	backtrace_top_function, .Lfunc_end124-backtrace_top_function
	.cfi_endproc

	.globl	syms_of_eval
	.align	16, 0x90
	.type	syms_of_eval,@function
syms_of_eval:                           # @syms_of_eval
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
	subq	$16, %rsp
	jmp	.LBB125_1
.LBB125_1:                              # %do.body
	movabsq	$syms_of_eval.i_fwd, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$globals, %rax
	addq	$3176, %rax             # imm = 0xC68
	movq	%rax, %rdx
	callq	defvar_int
# BB#2:                                 # %do.end
	jmp	.LBB125_3
.LBB125_3:                              # %do.body.1
	movabsq	$syms_of_eval.i_fwd.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$globals, %rax
	addq	$3168, %rax             # imm = 0xC60
	movq	%rax, %rdx
	callq	defvar_int
# BB#4:                                 # %do.end.2
	jmp	.LBB125_5
.LBB125_5:                              # %do.body.3
	movabsq	$syms_of_eval.o_fwd, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$globals, %rax
	addq	$1928, %rax             # imm = 0x788
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1928
# BB#7:                                 # %do.body.5
	movabsq	$syms_of_eval.o_fwd.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$globals, %rax
	addq	$1104, %rax             # imm = 0x450
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
# BB#9:                                 # %do.body.8
	movabsq	$syms_of_eval.o_fwd.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$globals, %rax
	addq	$1064, %rax             # imm = 0x428
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1064
# BB#11:                                # %do.body.11
	movabsq	$syms_of_eval.o_fwd.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$globals, %rax
	addq	$432, %rax              # imm = 0x1B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+432
# BB#13:                                # %do.body.14
	movabsq	$syms_of_eval.o_fwd.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$globals, %rax
	addq	$424, %rax              # imm = 0x1A8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+424
# BB#15:                                # %do.body.17
	movabsq	$syms_of_eval.b_fwd, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$3373, %rax             # imm = 0xD2D
	movq	%rax, %rdx
	callq	defvar_bool
# BB#16:                                # %do.end.18
	movb	$0, globals+3373
# BB#17:                                # %do.body.19
	movabsq	$syms_of_eval.b_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$3372, %rax             # imm = 0xD2C
	movq	%rax, %rdx
	callq	defvar_bool
# BB#18:                                # %do.end.20
	jmp	.LBB125_19
.LBB125_19:                             # %do.body.21
	movabsq	$syms_of_eval.b_fwd.37, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$3374, %rax             # imm = 0xD2E
	movq	%rax, %rdx
	callq	defvar_bool
# BB#20:                                # %do.end.22
	movb	$1, globals+3374
# BB#21:                                # %do.body.23
	movabsq	$syms_of_eval.o_fwd.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$globals, %rax
	addq	$464, %rax              # imm = 0x1D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+464
# BB#23:                                # %do.body.26
	movabsq	$syms_of_eval.o_fwd.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$globals, %rax
	addq	$2176, %rax             # imm = 0x880
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2176
# BB#25:                                # %do.body.29
	movabsq	$syms_of_eval.o_fwd.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$globals, %rax
	addq	$456, %rax              # imm = 0x1C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+456
# BB#27:                                # %do.body.32
	movabsq	$syms_of_eval.o_fwd.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$1176, %rax             # imm = 0x498
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#28:                                # %do.end.33
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$567, %edi              # imm = 0x237
	movq	%rax, globals+1176
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Funintern
	movabsq	$.L.str.46, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	intern_c_string
	movabsq	$Vrun_hooks, %rdi
	movq	%rax, Vrun_hooks
	callq	staticpro
	movabsq	$Vautoload_queue, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vsignaling_function, %rdi
	movq	%rax, Vautoload_queue
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, Vsignaling_function
	callq	builtin_lisp_symbol
	movabsq	$Sor, %rsi
	movq	%rax, inhibit_lisp_code
	movq	%rsi, %rdi
	callq	defsubr
	movabsq	$Sand, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sif, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scond, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprogn, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprog1, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprog2, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssetq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Squote, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfunction, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefault_toplevel_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_default_toplevel_value, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefvar, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefvaralias, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefconst, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_var_non_special, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slet, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$SletX, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swhile, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smacroexpand, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scatch, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sthrow, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunwind_protect, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scondition_case, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssignal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scommandp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sautoload, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sautoload_do_load, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Seval, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sapply, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfuncall, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srun_hooks, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srun_hook_with_args, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srun_hook_with_args_until_success, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srun_hook_with_args_until_failure, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srun_hook_wrapped, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfetch_bytecode, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbacktrace_debug, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbacktrace, %rdi
	callq	defsubr
	movabsq	$Sbacktrace_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbacktrace_eval, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbacktrace__locals, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sspecial_variable_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfunctionp, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	syms_of_eval, .Lfunc_end125-syms_of_eval
	.cfi_endproc

	.align	16, 0x90
	.type	wants_debugger,@function
wants_debugger:                         # @wants_debugger
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB126_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB126_14
.LBB126_2:                              # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB126_4
# BB#3:                                 # %if.then.3
	movb	$1, -1(%rbp)
	jmp	.LBB126_14
.LBB126_4:                              # %if.end.4
	jmp	.LBB126_5
.LBB126_5:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB126_7 Depth 2
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB126_13
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB126_5 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB126_7:                              # %for.cond
                                        #   Parent Loop BB126_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB126_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB126_7 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB126_10
# BB#9:                                 # %if.then.17
	movb	$1, -1(%rbp)
	jmp	.LBB126_14
.LBB126_10:                             # %if.end.18
                                        #   in Loop: Header=BB126_7 Depth=2
	jmp	.LBB126_11
.LBB126_11:                             # %for.inc
                                        #   in Loop: Header=BB126_7 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB126_7
.LBB126_12:                             # %for.end
                                        #   in Loop: Header=BB126_5 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB126_5
.LBB126_13:                             # %while.end
	movb	$0, -1(%rbp)
.LBB126_14:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	wants_debugger, .Lfunc_end126-wants_debugger
	.cfi_endproc

	.align	16, 0x90
	.type	skip_debugger,@function
skip_debugger:                          # @skip_debugger
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$1, -33(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	globals+424, %rax
	movq	%rax, -32(%rbp)
.LBB127_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB127_9 Depth 2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB127_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB127_3
	jmp	.LBB127_8
.LBB127_3:                              # %if.then
                                        #   in Loop: Header=BB127_1 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB127_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	Ferror_message_string
	movq	%rax, -48(%rbp)
	movb	$0, -33(%rbp)
.LBB127_5:                              # %if.end
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	fast_string_match
	cmpq	$0, %rax
	jl	.LBB127_7
# BB#6:                                 # %if.then.10
	movb	$1, -1(%rbp)
	jmp	.LBB127_18
.LBB127_7:                              # %if.end.11
                                        #   in Loop: Header=BB127_1 Depth=1
	jmp	.LBB127_15
.LBB127_8:                              # %if.else
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB127_9:                              # %for.cond.12
                                        #   Parent Loop BB127_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB127_14
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB127_9 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB127_12
# BB#11:                                # %if.then.24
	movb	$1, -1(%rbp)
	jmp	.LBB127_18
.LBB127_12:                             # %if.end.25
                                        #   in Loop: Header=BB127_9 Depth=2
	jmp	.LBB127_13
.LBB127_13:                             # %for.inc
                                        #   in Loop: Header=BB127_9 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB127_9
.LBB127_14:                             # %for.end
                                        #   in Loop: Header=BB127_1 Depth=1
	jmp	.LBB127_15
.LBB127_15:                             # %if.end.27
                                        #   in Loop: Header=BB127_1 Depth=1
	jmp	.LBB127_16
.LBB127_16:                             # %for.inc.28
                                        #   in Loop: Header=BB127_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB127_1
.LBB127_17:                             # %for.end.32
	movb	$0, -1(%rbp)
.LBB127_18:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	skip_debugger, .Lfunc_end127-skip_debugger
	.cfi_endproc

	.type	specpdl,@object         # @specpdl
	.comm	specpdl,8,8
	.type	specpdl_ptr,@object     # @specpdl_ptr
	.comm	specpdl_ptr,8,8
	.type	specpdl_size,@object    # @specpdl_size
	.comm	specpdl_size,8,8
	.type	Vrun_hooks,@object      # @Vrun_hooks
	.comm	Vrun_hooks,8,8
	.type	handlerlist_sentinel,@object # @handlerlist_sentinel
	.local	handlerlist_sentinel
	.comm	handlerlist_sentinel,288,8
	.type	handlerlist,@object     # @handlerlist
	.comm	handlerlist,8,8
	.type	lisp_eval_depth,@object # @lisp_eval_depth
	.local	lisp_eval_depth
	.comm	lisp_eval_depth,8,8
	.type	when_entered_debugger,@object # @when_entered_debugger
	.local	when_entered_debugger
	.comm	when_entered_debugger,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"debugger-may-continue"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot make a constant an alias"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Cannot make an internal variable an alias"
	.size	.L.str.2, 42

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Don't know how to make a localized variable an alias"
	.size	.L.str.3, 53

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Don't know how to make a let-bound variable an alias"
	.size	.L.str.4, 53

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Too many arguments"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"`let' bindings can have only one value-form"
	.size	.L.str.6, 44

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Invalid condition handler: %s"
	.size	.L.str.7, 30

	.type	Vsignaling_function,@object # @Vsignaling_function
	.comm	Vsignaling_function,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s"
	.size	.L.str.8, 3

	.type	Vautoload_queue,@object # @Vautoload_queue
	.comm	Vautoload_queue,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Attempt to autoload %s while preparing to dump"
	.size	.L.str.9, 47

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Autoloading failed to define function %s"
	.size	.L.str.10, 41

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Lisp nesting exceeds `max-lisp-eval-depth'"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Invalid byte code in %s"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Invalid byte code"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Frame-local vars cannot be let-bound"
	.size	.L.str.14, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"* "
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"  "
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\n"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"("
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" "
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	")\n"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Activation frame not found!"
	.size	.L.str.21, 28

	.type	syms_of_eval.i_fwd,@object # @syms_of_eval.i_fwd
	.local	syms_of_eval.i_fwd
	.comm	syms_of_eval.i_fwd,16,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"max-specpdl-size"
	.size	.L.str.22, 17

	.type	syms_of_eval.i_fwd.23,@object # @syms_of_eval.i_fwd.23
	.local	syms_of_eval.i_fwd.23
	.comm	syms_of_eval.i_fwd.23,16,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"max-lisp-eval-depth"
	.size	.L.str.24, 20

	.type	syms_of_eval.o_fwd,@object # @syms_of_eval.o_fwd
	.local	syms_of_eval.o_fwd
	.comm	syms_of_eval.o_fwd,16,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"quit-flag"
	.size	.L.str.25, 10

	.type	syms_of_eval.o_fwd.26,@object # @syms_of_eval.o_fwd.26
	.local	syms_of_eval.o_fwd.26
	.comm	syms_of_eval.o_fwd.26,16,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"inhibit-quit"
	.size	.L.str.27, 13

	.type	syms_of_eval.o_fwd.28,@object # @syms_of_eval.o_fwd.28
	.local	syms_of_eval.o_fwd.28
	.comm	syms_of_eval.o_fwd.28,16,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"inhibit-debugger"
	.size	.L.str.29, 17

	.type	syms_of_eval.o_fwd.30,@object # @syms_of_eval.o_fwd.30
	.local	syms_of_eval.o_fwd.30
	.comm	syms_of_eval.o_fwd.30,16,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"debug-on-error"
	.size	.L.str.31, 15

	.type	syms_of_eval.o_fwd.32,@object # @syms_of_eval.o_fwd.32
	.local	syms_of_eval.o_fwd.32
	.comm	syms_of_eval.o_fwd.32,16,8
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"debug-ignored-errors"
	.size	.L.str.33, 21

	.type	syms_of_eval.b_fwd,@object # @syms_of_eval.b_fwd
	.local	syms_of_eval.b_fwd
	.comm	syms_of_eval.b_fwd,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"debug-on-quit"
	.size	.L.str.34, 14

	.type	syms_of_eval.b_fwd.35,@object # @syms_of_eval.b_fwd.35
	.local	syms_of_eval.b_fwd.35
	.comm	syms_of_eval.b_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"debug-on-next-call"
	.size	.L.str.36, 19

	.type	syms_of_eval.b_fwd.37,@object # @syms_of_eval.b_fwd.37
	.local	syms_of_eval.b_fwd.37
	.comm	syms_of_eval.b_fwd.37,16,8
	.type	syms_of_eval.o_fwd.38,@object # @syms_of_eval.o_fwd.38
	.local	syms_of_eval.o_fwd.38
	.comm	syms_of_eval.o_fwd.38,16,8
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"debugger"
	.size	.L.str.39, 9

	.type	syms_of_eval.o_fwd.40,@object # @syms_of_eval.o_fwd.40
	.local	syms_of_eval.o_fwd.40
	.comm	syms_of_eval.o_fwd.40,16,8
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"signal-hook-function"
	.size	.L.str.41, 21

	.type	syms_of_eval.o_fwd.42,@object # @syms_of_eval.o_fwd.42
	.local	syms_of_eval.o_fwd.42
	.comm	syms_of_eval.o_fwd.42,16,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"debug-on-signal"
	.size	.L.str.43, 16

	.type	syms_of_eval.o_fwd.44,@object # @syms_of_eval.o_fwd.44
	.local	syms_of_eval.o_fwd.44
	.comm	syms_of_eval.o_fwd.44,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"internal-interpreter-environment"
	.size	.L.str.45, 33

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"run-hooks"
	.size	.L.str.46, 10

	.type	inhibit_lisp_code,@object # @inhibit_lisp_code
	.comm	inhibit_lisp_code,8,8
	.type	Sbacktrace,@object      # @Sbacktrace
	.data
	.align	8
Sbacktrace:
	.quad	167772160               # 0xa000000
	.quad	Fbacktrace
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	0
	.size	Sbacktrace, 48

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"Variable binding depth exceeds max-specpdl-size"
	.size	.L.str.47, 48

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"or"
	.size	.L.str.48, 3

	.type	Sor,@object             # @Sor
	.data
	.align	8
Sor:
	.quad	167772160               # 0xa000000
	.quad	For
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.48
	.quad	0
	.quad	0
	.size	Sor, 48

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"and"
	.size	.L.str.49, 4

	.type	Sand,@object            # @Sand
	.data
	.align	8
Sand:
	.quad	167772160               # 0xa000000
	.quad	Fand
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.49
	.quad	0
	.quad	0
	.size	Sand, 48

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"if"
	.size	.L.str.50, 3

	.type	Sif,@object             # @Sif
	.data
	.align	8
Sif:
	.quad	167772160               # 0xa000000
	.quad	Fif
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.size	Sif, 48

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"cond"
	.size	.L.str.51, 5

	.type	Scond,@object           # @Scond
	.data
	.align	8
Scond:
	.quad	167772160               # 0xa000000
	.quad	Fcond
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.51
	.quad	0
	.quad	0
	.size	Scond, 48

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"progn"
	.size	.L.str.52, 6

	.type	Sprogn,@object          # @Sprogn
	.data
	.align	8
Sprogn:
	.quad	167772160               # 0xa000000
	.quad	Fprogn
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.52
	.quad	0
	.quad	0
	.size	Sprogn, 48

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"prog1"
	.size	.L.str.53, 6

	.type	Sprog1,@object          # @Sprog1
	.data
	.align	8
Sprog1:
	.quad	167772160               # 0xa000000
	.quad	Fprog1
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.53
	.quad	0
	.quad	0
	.size	Sprog1, 48

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"prog2"
	.size	.L.str.54, 6

	.type	Sprog2,@object          # @Sprog2
	.data
	.align	8
Sprog2:
	.quad	167772160               # 0xa000000
	.quad	Fprog2
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.54
	.quad	0
	.quad	0
	.size	Sprog2, 48

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"setq"
	.size	.L.str.55, 5

	.type	Ssetq,@object           # @Ssetq
	.data
	.align	8
Ssetq:
	.quad	167772160               # 0xa000000
	.quad	Fsetq
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.55
	.quad	0
	.quad	0
	.size	Ssetq, 48

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"quote"
	.size	.L.str.56, 6

	.type	Squote,@object          # @Squote
	.data
	.align	8
Squote:
	.quad	167772160               # 0xa000000
	.quad	Fquote
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.56
	.quad	0
	.quad	0
	.size	Squote, 48

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"function"
	.size	.L.str.57, 9

	.type	Sfunction,@object       # @Sfunction
	.data
	.align	8
Sfunction:
	.quad	167772160               # 0xa000000
	.quad	Ffunction
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Sfunction, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"default-toplevel-value"
	.size	.L.str.58, 23

	.type	Sdefault_toplevel_value,@object # @Sdefault_toplevel_value
	.data
	.align	8
Sdefault_toplevel_value:
	.quad	167772160               # 0xa000000
	.quad	Fdefault_toplevel_value
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Sdefault_toplevel_value, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"set-default-toplevel-value"
	.size	.L.str.59, 27

	.type	Sset_default_toplevel_value,@object # @Sset_default_toplevel_value
	.data
	.align	8
Sset_default_toplevel_value:
	.quad	167772160               # 0xa000000
	.quad	Fset_default_toplevel_value
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Sset_default_toplevel_value, 48

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"defvar"
	.size	.L.str.60, 7

	.type	Sdefvar,@object         # @Sdefvar
	.data
	.align	8
Sdefvar:
	.quad	167772160               # 0xa000000
	.quad	Fdefvar
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Sdefvar, 48

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"defvaralias"
	.size	.L.str.61, 12

	.type	Sdefvaralias,@object    # @Sdefvaralias
	.data
	.align	8
Sdefvaralias:
	.quad	167772160               # 0xa000000
	.quad	Fdefvaralias
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Sdefvaralias, 48

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"defconst"
	.size	.L.str.62, 9

	.type	Sdefconst,@object       # @Sdefconst
	.data
	.align	8
Sdefconst:
	.quad	167772160               # 0xa000000
	.quad	Fdefconst
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Sdefconst, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"internal-make-var-non-special"
	.size	.L.str.63, 30

	.type	Smake_var_non_special,@object # @Smake_var_non_special
	.data
	.align	8
Smake_var_non_special:
	.quad	167772160               # 0xa000000
	.quad	Fmake_var_non_special
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Smake_var_non_special, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"let"
	.size	.L.str.64, 4

	.type	Slet,@object            # @Slet
	.data
	.align	8
Slet:
	.quad	167772160               # 0xa000000
	.quad	Flet
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Slet, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"let*"
	.size	.L.str.65, 5

	.type	SletX,@object           # @SletX
	.data
	.align	8
SletX:
	.quad	167772160               # 0xa000000
	.quad	FletX
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	SletX, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"while"
	.size	.L.str.66, 6

	.type	Swhile,@object          # @Swhile
	.data
	.align	8
Swhile:
	.quad	167772160               # 0xa000000
	.quad	Fwhile
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Swhile, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"macroexpand"
	.size	.L.str.67, 12

	.type	Smacroexpand,@object    # @Smacroexpand
	.data
	.align	8
Smacroexpand:
	.quad	167772160               # 0xa000000
	.quad	Fmacroexpand
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Smacroexpand, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"catch"
	.size	.L.str.68, 6

	.type	Scatch,@object          # @Scatch
	.data
	.align	8
Scatch:
	.quad	167772160               # 0xa000000
	.quad	Fcatch
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Scatch, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"throw"
	.size	.L.str.69, 6

	.type	Sthrow,@object          # @Sthrow
	.data
	.align	8
Sthrow:
	.quad	167772160               # 0xa000000
	.quad	Fthrow
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Sthrow, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"unwind-protect"
	.size	.L.str.70, 15

	.type	Sunwind_protect,@object # @Sunwind_protect
	.data
	.align	8
Sunwind_protect:
	.quad	167772160               # 0xa000000
	.quad	Funwind_protect
	.short	1                       # 0x1
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Sunwind_protect, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"condition-case"
	.size	.L.str.71, 15

	.type	Scondition_case,@object # @Scondition_case
	.data
	.align	8
Scondition_case:
	.quad	167772160               # 0xa000000
	.quad	Fcondition_case
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Scondition_case, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"signal"
	.size	.L.str.72, 7

	.type	Ssignal,@object         # @Ssignal
	.data
	.align	8
Ssignal:
	.quad	167772160               # 0xa000000
	.quad	Fsignal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Ssignal, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"commandp"
	.size	.L.str.73, 9

	.type	Scommandp,@object       # @Scommandp
	.data
	.align	8
Scommandp:
	.quad	167772160               # 0xa000000
	.quad	Fcommandp
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Scommandp, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"autoload"
	.size	.L.str.74, 9

	.type	Sautoload,@object       # @Sautoload
	.data
	.align	8
Sautoload:
	.quad	167772160               # 0xa000000
	.quad	Fautoload
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Sautoload, 48

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"autoload-do-load"
	.size	.L.str.75, 17

	.type	Sautoload_do_load,@object # @Sautoload_do_load
	.data
	.align	8
Sautoload_do_load:
	.quad	167772160               # 0xa000000
	.quad	Fautoload_do_load
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Sautoload_do_load, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"eval"
	.size	.L.str.76, 5

	.type	Seval,@object           # @Seval
	.data
	.align	8
Seval:
	.quad	167772160               # 0xa000000
	.quad	Feval
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Seval, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"apply"
	.size	.L.str.77, 6

	.type	Sapply,@object          # @Sapply
	.data
	.align	8
Sapply:
	.quad	167772160               # 0xa000000
	.quad	Fapply
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Sapply, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"funcall"
	.size	.L.str.78, 8

	.type	Sfuncall,@object        # @Sfuncall
	.data
	.align	8
Sfuncall:
	.quad	167772160               # 0xa000000
	.quad	Ffuncall
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Sfuncall, 48

	.type	Srun_hooks,@object      # @Srun_hooks
	.align	8
Srun_hooks:
	.quad	167772160               # 0xa000000
	.quad	Frun_hooks
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.46
	.quad	0
	.quad	0
	.size	Srun_hooks, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"run-hook-with-args"
	.size	.L.str.79, 19

	.type	Srun_hook_with_args,@object # @Srun_hook_with_args
	.data
	.align	8
Srun_hook_with_args:
	.quad	167772160               # 0xa000000
	.quad	Frun_hook_with_args
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Srun_hook_with_args, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"run-hook-with-args-until-success"
	.size	.L.str.80, 33

	.type	Srun_hook_with_args_until_success,@object # @Srun_hook_with_args_until_success
	.data
	.align	8
Srun_hook_with_args_until_success:
	.quad	167772160               # 0xa000000
	.quad	Frun_hook_with_args_until_success
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Srun_hook_with_args_until_success, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"run-hook-with-args-until-failure"
	.size	.L.str.81, 33

	.type	Srun_hook_with_args_until_failure,@object # @Srun_hook_with_args_until_failure
	.data
	.align	8
Srun_hook_with_args_until_failure:
	.quad	167772160               # 0xa000000
	.quad	Frun_hook_with_args_until_failure
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Srun_hook_with_args_until_failure, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"run-hook-wrapped"
	.size	.L.str.82, 17

	.type	Srun_hook_wrapped,@object # @Srun_hook_wrapped
	.data
	.align	8
Srun_hook_wrapped:
	.quad	167772160               # 0xa000000
	.quad	Frun_hook_wrapped
	.short	2                       # 0x2
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Srun_hook_wrapped, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"fetch-bytecode"
	.size	.L.str.83, 15

	.type	Sfetch_bytecode,@object # @Sfetch_bytecode
	.data
	.align	8
Sfetch_bytecode:
	.quad	167772160               # 0xa000000
	.quad	Ffetch_bytecode
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Sfetch_bytecode, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"backtrace-debug"
	.size	.L.str.84, 16

	.type	Sbacktrace_debug,@object # @Sbacktrace_debug
	.data
	.align	8
Sbacktrace_debug:
	.quad	167772160               # 0xa000000
	.quad	Fbacktrace_debug
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Sbacktrace_debug, 48

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"backtrace"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.zero	1
	.size	.L.str.86, 1

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"backtrace-frame"
	.size	.L.str.87, 16

	.type	Sbacktrace_frame,@object # @Sbacktrace_frame
	.data
	.align	8
Sbacktrace_frame:
	.quad	167772160               # 0xa000000
	.quad	Fbacktrace_frame
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.87
	.quad	0
	.quad	0
	.size	Sbacktrace_frame, 48

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"backtrace-eval"
	.size	.L.str.88, 15

	.type	Sbacktrace_eval,@object # @Sbacktrace_eval
	.data
	.align	8
Sbacktrace_eval:
	.quad	167772160               # 0xa000000
	.quad	Fbacktrace_eval
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.88
	.quad	0
	.quad	0
	.size	Sbacktrace_eval, 48

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"backtrace--locals"
	.size	.L.str.89, 18

	.type	Sbacktrace__locals,@object # @Sbacktrace__locals
	.data
	.align	8
Sbacktrace__locals:
	.quad	167772160               # 0xa000000
	.quad	Fbacktrace__locals
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Sbacktrace__locals, 48

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"special-variable-p"
	.size	.L.str.90, 19

	.type	Sspecial_variable_p,@object # @Sspecial_variable_p
	.data
	.align	8
Sspecial_variable_p:
	.quad	167772160               # 0xa000000
	.quad	Fspecial_variable_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Sspecial_variable_p, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"functionp"
	.size	.L.str.91, 10

	.type	Sfunctionp,@object      # @Sfunctionp
	.data
	.align	8
Sfunctionp:
	.quad	167772160               # 0xa000000
	.quad	Ffunctionp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Sfunctionp, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
