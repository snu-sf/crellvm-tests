	.text
	.file	"xselect.bc"
	.globl	x_handle_selection_event
	.align	16, 0x90
	.type	x_handle_selection_event,@function
x_handle_selection_event:               # @x_handle_selection_event
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
	movq	-8(%rbp), %rdi
	movzwl	(%rdi), %eax
	cmpl	$10, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	x_handle_selection_clear
	jmp	.LBB0_6
.LBB0_2:                                # %if.else
	cmpl	$0, x_queue_selection_requests
	je	.LBB0_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rdi
	callq	x_queue_event
	jmp	.LBB0_5
.LBB0_4:                                # %if.else.2
	movq	-8(%rbp), %rdi
	callq	x_handle_selection_request
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_handle_selection_event, .Lfunc_end0-x_handle_selection_event
	.cfi_endproc

	.align	16, 0x90
	.type	x_handle_selection_clear,@function
x_handle_selection_clear:               # @x_handle_selection_clear
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_17
.LBB1_2:                                # %if.end
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_atom_to_symbol
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB1_4
# BB#3:                                 # %if.then.6
	jmp	.LBB1_17
.LBB1_4:                                # %if.end.7
	movq	$-1, %rsi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	cons_to_unsigned
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB1_7
# BB#6:                                 # %if.then.15
	jmp	.LBB1_17
.LBB1_7:                                # %if.end.16
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	CAR
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB1_9
# BB#8:                                 # %if.then.21
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB1_16
.LBB1_9:                                # %if.else
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB1_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	CAR
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_13
# BB#12:                                # %if.then.33
	movq	-72(%rbp), %rdi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
	jmp	.LBB1_15
.LBB1_13:                               # %if.end.40
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_14
.LBB1_14:                               # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_10
.LBB1_15:                               # %for.end
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.44
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	tset_selection_alist
	movl	$1052, %edi             # imm = 0x41C
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-88(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	Frun_hook_with_args
	movl	$20, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	redisplay_preserve_echo_area
.LBB1_17:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	x_handle_selection_clear, .Lfunc_end1-x_handle_selection_clear
	.cfi_endproc

	.align	16, 0x90
	.type	x_queue_event,@function
x_queue_event:                          # @x_queue_event
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
	movq	%rdi, -8(%rbp)
	movq	selection_queue, %rdi
	movq	%rdi, -16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	selection_input_event_equal
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	x_decline_selection_request
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movl	$64, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$56, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	selection_queue, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, selection_queue
.LBB2_7:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	x_queue_event, .Lfunc_end2-x_queue_event
	.cfi_endproc

	.align	16, 0x90
	.type	x_handle_selection_request,@function
x_handle_selection_request:             # @x_handle_selection_request
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	x_atom_to_symbol
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	x_atom_to_symbol
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$0, -73(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_24
.LBB3_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_4
# BB#3:                                 # %if.then.9
	jmp	.LBB3_24
.LBB3_4:                                # %if.end.10
	movq	$-1, %rsi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	cons_to_unsigned
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jbe	.LBB3_7
# BB#6:                                 # %if.then.19
	jmp	.LBB3_24
.LBB3_7:                                # %if.end.20
	movabsq	$x_selection_request_lisp_error, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, x_selection_current_request
	movq	-24(%rbp), %rax
	movq	%rax, selection_request_dpyinfo
	callq	record_unwind_protect_void
	callq	x_start_queuing_selection_requests
	movabsq	$x_stop_queuing_selection_requests, %rdi
	callq	record_unwind_protect_void
	movl	$145, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_20
# BB#8:                                 # %if.then.23
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.26
	jmp	.LBB3_24
.LBB3_10:                               # %if.end.27
	movl	$145, %edi
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	x_get_window_property_as_lisp_data
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_11
	jmp	.LBB3_12
.LBB3_11:                               # %lor.lhs.false
	movq	-104(%rbp), %rdi
	callq	ASIZE
	movl	$2, %ecx
	movl	%ecx, %edi
	cqto
	idivq	%rdi
	cmpq	$0, %rdx
	je	.LBB3_13
.LBB3_12:                               # %if.then.33
	jmp	.LBB3_24
.LBB3_13:                               # %if.end.34
	movq	-104(%rbp), %rdi
	callq	ASIZE
	movl	$2, %ecx
	movl	%ecx, %edi
	cqto
	idivq	%rdi
	movq	%rax, -120(%rbp)
	movq	$0, -112(%rbp)
.LBB3_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB3_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	symbol_to_x_atom
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.42
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %r8
	callq	x_convert_selection
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB3_17:                               # %if.end.44
                                        #   in Loop: Header=BB3_14 Depth=1
	jmp	.LBB3_18
.LBB3_18:                               # %for.inc
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB3_14
.LBB3_19:                               # %for.end
	movb	$1, -73(%rbp)
	jmp	.LBB3_23
.LBB3_20:                               # %if.else
	cmpq	$0, -64(%rbp)
	jne	.LBB3_22
# BB#21:                                # %if.then.46
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB3_22:                               # %if.end.48
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %r8
	callq	x_convert_selection
	andb	$1, %al
	movb	%al, -73(%rbp)
.LBB3_23:                               # %if.end.50
	jmp	.LBB3_24
.LBB3_24:                               # %DONE
	testb	$1, -73(%rbp)
	je	.LBB3_26
# BB#25:                                # %if.then.52
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_reply_selection_request
	jmp	.LBB3_27
.LBB3_26:                               # %if.else.53
	movq	-8(%rbp), %rdi
	callq	x_decline_selection_request
.LBB3_27:                               # %if.end.54
	xorl	%edi, %edi
	movq	$0, x_selection_current_request
	movq	globals+2880, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_33
# BB#28:                                # %land.lhs.true.57
	movl	$957, %edi              # imm = 0x3BD
	movq	globals+2880, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_33
# BB#29:                                # %if.then.60
	movl	$1055, %edi             # imm = 0x41F
	leaq	-168(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	addq	$8, %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	addq	$8, %rax
	testb	$1, -73(%rbp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	je	.LBB3_31
# BB#30:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_31:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB3_32:                               # %cond.end
	movq	-264(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edi
	leaq	-168(%rbp), %rsi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	callq	Frun_hook_with_args
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB3_33:                               # %if.end.68
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -288(%rbp)        # 8-byte Spill
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end3:
	.size	x_handle_selection_request, .Lfunc_end3-x_handle_selection_request
	.cfi_endproc

	.globl	x_clear_frame_selections
	.align	16, 0x90
	.type	x_clear_frame_selections,@function
x_clear_frame_selections:               # @x_clear_frame_selections
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
	subq	$96, %rsp
	movl	$5, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_5
.LBB4_4:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1052, %edi             # imm = 0x41C
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Fcar
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-56(%rbp), %rsi
	movq	%rax, -48(%rbp)
	callq	Frun_hook_with_args
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	tset_selection_alist
	jmp	.LBB4_1
.LBB4_5:                                # %while.end
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB4_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB4_10
# BB#9:                                 # %if.then
	movl	$1052, %edi             # imm = 0x41C
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-72(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	Frun_hook_with_args
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XSETCDR
	jmp	.LBB4_12
.LBB4_10:                               # %if.end
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_6
.LBB4_12:                               # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	x_clear_frame_selections, .Lfunc_end4-x_clear_frame_selections
	.cfi_endproc

	.globl	x_handle_property_notify
	.align	16, 0x90
	.type	x_handle_property_notify,@function
x_handle_property_notify:               # @x_handle_property_notify
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
	movq	property_change_wait_list, %rdi
	movq	%rdi, -16(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB5_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	testb	$1, 36(%rax)
	jne	.LBB5_10
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB5_10
# BB#4:                                 # %land.lhs.true.2
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	.LBB5_10
# BB#5:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB5_10
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	56(%rax), %ecx
	jne	.LBB5_10
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	$1, 36(%rax)
	movq	-16(%rbp), %rax
	cmpq	property_change_reply_object, %rax
	jne	.LBB5_9
# BB#8:                                 # %if.then.12
	movl	$901, %edi              # imm = 0x385
	movq	property_change_reply, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB5_9:                                # %if.end
	jmp	.LBB5_12
.LBB5_10:                               # %if.end.13
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_12:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	x_handle_property_notify, .Lfunc_end5-x_handle_property_notify
	.cfi_endproc

	.globl	x_handle_selection_notify
	.align	16, 0x90
	.type	x_handle_selection_notify,@function
x_handle_selection_notify:              # @x_handle_selection_notify
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
	movq	32(%rdi), %rdi
	cmpq	reading_selection_window, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_8
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	reading_which_selection, %rax
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	jmp	.LBB6_8
.LBB6_4:                                # %if.end.3
	movq	reading_selection_reply, %rdi
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB6_6
# BB#5:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_7:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB6_8:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	x_handle_selection_notify, .Lfunc_end6-x_handle_selection_notify
	.cfi_endproc

	.globl	Fx_own_selection_internal
	.align	16, 0x90
	.type	Fx_own_selection_internal,@function
Fx_own_selection_internal:              # @Fx_own_selection_internal
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
	subq	$48, %rsp
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
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	movq	%rax, -24(%rbp)
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB7_5
.LBB7_4:                                # %if.then.4
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB7_5:                                # %if.end.5
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_7
# BB#6:                                 # %cond.true
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB7_8:                                # %cond.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_10
# BB#9:                                 # %if.then.12
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	error
.LBB7_10:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	x_own_selection
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fx_own_selection_internal, .Lfunc_end7-Fx_own_selection_internal
	.cfi_endproc

	.align	16, 0x90
	.type	x_own_selection,@function
x_own_selection:                        # @x_own_selection
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	subq	$5, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	664(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -72(%rbp)
	callq	block_input
	movq	-56(%rbp), %rdi
	callq	x_catch_errors
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	XSetSelectionOwner
	movabsq	$.L.str.28, %rsi
	movq	-56(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	x_check_errors
	callq	x_uncatch_errors_after_check
	callq	unblock_input
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	cmpq	-64(%rbp), %rcx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	jbe	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-64(%rbp), %rax
	ja	.LBB8_4
.LBB8_2:                                # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -64(%rbp)
	ja	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_8
.LBB8_4:                                # %cond.false
	imulq	$0, -64(%rbp), %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB8_6
# BB#5:                                 # %cond.true.9
	movq	-64(%rbp), %rdi
	callq	intbig_to_lisp
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false.11
	movq	-64(%rbp), %rdi
	callq	uintbig_to_lisp
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB8_7:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB8_8:                                # %cond.end.13
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list4
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rsi
	callq	assq_no_quit
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	tset_selection_alist
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_16
# BB#9:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB8_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB8_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	Fcar
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_13
# BB#12:                                # %if.then.31
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	XSETCDR
	jmp	.LBB8_15
.LBB8_13:                               # %if.end
                                        #   in Loop: Header=BB8_10 Depth=1
	jmp	.LBB8_14
.LBB8_14:                               # %for.inc
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB8_10
.LBB8_15:                               # %for.end
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.41
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	x_own_selection, .Lfunc_end8-x_own_selection
	.cfi_endproc

	.globl	Fx_get_selection_internal
	.align	16, 0x90
	.type	Fx_get_selection_internal,@function
Fx_get_selection_internal:              # @Fx_get_selection_internal
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	frame_for_x_selection
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$0, %r8d
	jne	.LBB9_2
# BB#1:                                 # %cond.true
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_5
# BB#4:                                 # %cond.true.8
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.9
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB9_6:                                # %cond.end.11
	movl	$145, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_8
# BB#7:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB9_8:                                # %if.end
	cmpq	$0, -56(%rbp)
	jne	.LBB9_10
# BB#9:                                 # %if.then.15
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB9_10:                               # %if.end.16
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rcx
	callq	x_get_local_selection
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_13
# BB#11:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB9_13
# BB#12:                                # %if.then.24
	movl	$5, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	x_get_foreign_selection
	movq	%rax, -8(%rbp)
	jmp	.LBB9_20
.LBB9_13:                               # %if.end.27
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_19
# BB#14:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_19
# BB#15:                                # %if.then.37
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_18
# BB#16:                                # %land.lhs.true.43
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_18
# BB#17:                                # %if.then.50
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB9_18:                               # %if.end.53
	jmp	.LBB9_19
.LBB9_19:                               # %if.end.54
	movq	-48(%rbp), %rdi
	callq	clean_local_selection_data
	movq	%rax, -8(%rbp)
.LBB9_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fx_get_selection_internal, .Lfunc_end9-Fx_get_selection_internal
	.cfi_endproc

	.align	16, 0x90
	.type	frame_for_x_selection,@function
frame_for_x_selection:                  # @frame_for_x_selection
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_14
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_35
.LBB10_4:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -24(%rbp)
.LBB10_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB10_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB10_5 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB10_7:                               # %land.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_8
	jmp	.LBB10_13
.LBB10_8:                               # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_11
# BB#9:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_11
# BB#10:                                # %if.then.19
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_35
.LBB10_11:                              # %if.end.20
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_12
.LBB10_12:                              # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_5
.LBB10_13:                              # %for.end
	jmp	.LBB10_34
.LBB10_14:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	TERMINALP
	testb	$1, %al
	jne	.LBB10_15
	jmp	.LBB10_27
.LBB10_15:                              # %if.then.23
	movq	-16(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$2, 56(%rax)
	jne	.LBB10_26
# BB#16:                                # %if.then.27
	movq	Vframe_list, %rax
	movq	%rax, -24(%rbp)
.LBB10_17:                              # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -58(%rbp)          # 1-byte Spill
	jne	.LBB10_19
# BB#18:                                # %land.rhs.33
                                        #   in Loop: Header=BB10_17 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movb	%al, -58(%rbp)          # 1-byte Spill
.LBB10_19:                              # %land.end.36
                                        #   in Loop: Header=BB10_17 Depth=1
	movb	-58(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_20
	jmp	.LBB10_25
.LBB10_20:                              # %for.body.37
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_23
# BB#21:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_23
# BB#22:                                # %if.then.46
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_35
.LBB10_23:                              # %if.end.47
                                        #   in Loop: Header=BB10_17 Depth=1
	jmp	.LBB10_24
.LBB10_24:                              # %for.inc.48
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_17
.LBB10_25:                              # %for.end.52
	jmp	.LBB10_26
.LBB10_26:                              # %if.end.53
	jmp	.LBB10_33
.LBB10_27:                              # %if.else.54
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB10_28
	jmp	.LBB10_32
.LBB10_28:                              # %if.then.56
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_31
# BB#29:                                # %land.lhs.true.65
	movq	-40(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_31
# BB#30:                                # %if.then.69
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_35
.LBB10_31:                              # %if.end.70
	jmp	.LBB10_32
.LBB10_32:                              # %if.end.71
	jmp	.LBB10_33
.LBB10_33:                              # %if.end.72
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.73
	movq	$0, -8(%rbp)
.LBB10_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	frame_for_x_selection, .Lfunc_end10-frame_for_x_selection
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_local_selection,@function
x_get_local_selection:                  # @x_get_local_selection
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
	subq	$176, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	24(%rcx), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB11_32
.LBB11_2:                               # %if.end
	movl	$153, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB11_14
.LBB11_4:                               # %if.else
	callq	SPECPDL_INDEX
	movl	$546, %edi              # imm = 0x222
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB11_6
# BB#5:                                 # %cond.true
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB11_7:                               # %cond.end
	movq	-24(%rbp), %rdi
	movq	globals+2120, %rsi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_12
# BB#8:                                 # %if.then.22
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	testb	$1, -25(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	je	.LBB11_10
# BB#9:                                 # %cond.true.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.26
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB11_11:                              # %cond.end.27
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call3
	movq	%rax, -64(%rbp)
	jmp	.LBB11_13
.LBB11_12:                              # %if.else.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB11_13:                              # %if.end.36
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB11_14:                              # %if.end.39
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB11_17
# BB#16:                                # %if.then.50
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB11_17:                              # %if.end.54
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_22
# BB#18:                                # %lor.lhs.false
	movq	-72(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB11_22
# BB#19:                                # %lor.lhs.false.59
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB11_22
# BB#20:                                # %lor.lhs.false.64
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB11_22
# BB#21:                                # %lor.lhs.false.70
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_23
.LBB11_22:                              # %if.then.74
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_32
.LBB11_23:                              # %if.else.75
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_30
# BB#24:                                # %land.lhs.true.80
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_30
# BB#25:                                # %land.lhs.true.88
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB11_29
# BB#26:                                # %lor.lhs.false.97
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_30
# BB#27:                                # %land.lhs.true.105
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_30
# BB#28:                                # %land.lhs.true.116
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_30
.LBB11_29:                              # %if.then.126
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_32
.LBB11_30:                              # %if.end.127
	jmp	.LBB11_31
.LBB11_31:                              # %if.end.128
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	list2
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	signal_error
.LBB11_32:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_get_local_selection, .Lfunc_end11-x_get_local_selection
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_foreign_selection,@function
x_get_foreign_selection:                # @x_get_foreign_selection
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	subq	$5, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-56(%rbp), %rcx
	movq	664(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rcx
	movq	464(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$3, %r8d
	jne	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB12_3:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB12_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB12_15
.LBB12_5:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_7
# BB#6:                                 # %if.then.14
	movq	$-1, %rsi
	movq	-32(%rbp), %rdi
	callq	cons_to_unsigned
	movq	%rax, -80(%rbp)
.LBB12_7:                               # %if.end.16
	callq	block_input
	movq	-64(%rbp), %rdi
	callq	x_catch_errors
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	callq	XConvertSelection
	movabsq	$.L.str.30, %rsi
	movq	-64(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	x_check_errors
	callq	x_uncatch_errors_after_check
	xorl	%edi, %edi
	movq	-72(%rbp), %rcx
	movq	%rcx, reading_selection_window
	movq	-96(%rbp), %rcx
	movq	%rcx, reading_which_selection
	movq	reading_selection_reply, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
	callq	unblock_input
	xorl	%r10d, %r10d
	movl	%r10d, %eax
	cmpq	globals+3352, %rax
	jle	.LBB12_9
# BB#8:                                 # %cond.true.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB12_10
.LBB12_9:                               # %cond.false.22
	movq	globals+3352, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB12_10:                              # %cond.end.23
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	$1000, %edx             # imm = 0x3E8
	movl	%edx, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cqto
	idivq	%rsi
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	cqto
	idivq	%rsi
	imulq	$1000000, %rdx, %rdx    # imm = 0xF4240
	movl	%edx, %edi
	movl	%edi, -124(%rbp)
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	movq	reading_selection_reply, %r8
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	xorl	%edi, %edi
	movq	reading_selection_reply, %r8
	subq	$3, %r8
	movq	(%r8), %r8
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%r8, -184(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %r8         # 8-byte Reload
	cmpq	%rax, %r8
	jne	.LBB12_12
# BB#11:                                # %if.then.32
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	error
.LBB12_12:                              # %if.end.33
	movl	$598, %edi              # imm = 0x256
	movq	reading_selection_reply, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_14
# BB#13:                                # %if.then.39
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.41
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %r8
	callq	x_get_window_property_as_lisp_data
	movq	%rax, -8(%rbp)
.LBB12_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	x_get_foreign_selection, .Lfunc_end12-x_get_foreign_selection
	.cfi_endproc

	.align	16, 0x90
	.type	clean_local_selection_data,@function
clean_local_selection_data:             # @clean_local_selection_data
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB13_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_6
# BB#2:                                 # %land.lhs.true.7
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_6
# BB#3:                                 # %land.lhs.true.13
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_6
# BB#4:                                 # %land.lhs.true.24
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB13_6:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_14
# BB#7:                                 # %land.lhs.true.43
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_14
# BB#8:                                 # %land.lhs.true.51
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB13_14
# BB#9:                                 # %if.then.60
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB13_11
# BB#10:                                # %if.then.65
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_23
.LBB13_11:                              # %if.end.69
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$-1, %rax
	jne	.LBB13_13
# BB#12:                                # %if.then.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB13_23
.LBB13_13:                              # %if.end.81
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.82
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB13_15
	jmp	.LBB13_22
.LBB13_15:                              # %if.then.84
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)
	cmpq	$1, -32(%rbp)
	jne	.LBB13_17
# BB#16:                                # %if.then.88
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	clean_local_selection_data
	movq	%rax, -8(%rbp)
	jmp	.LBB13_23
.LBB13_17:                              # %if.end.91
	movq	-32(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
.LBB13_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB13_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	clean_local_selection_data
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_18
.LBB13_21:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_23
.LBB13_22:                              # %if.end.97
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	clean_local_selection_data, .Lfunc_end13-clean_local_selection_data
	.cfi_endproc

	.globl	Fx_disown_selection_internal
	.align	16, 0x90
	.type	Fx_disown_selection_internal,@function
Fx_disown_selection_internal:           # @Fx_disown_selection_internal
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	frame_for_x_selection
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_11
.LBB14_2:                               # %if.end
	movq	-112(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_4
# BB#3:                                 # %cond.true
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB14_5:                               # %cond.end
	movq	-16(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_7
# BB#6:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_11
.LBB14_7:                               # %if.end.11
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -48(%rbp)
	callq	block_input
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_9
# BB#8:                                 # %if.then.16
	movq	-120(%rbp), %rax
	movq	664(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_10
.LBB14_9:                               # %if.else
	movq	$-1, %rsi
	movq	-24(%rbp), %rdi
	callq	cons_to_unsigned
	movq	%rax, -40(%rbp)
.LBB14_10:                              # %if.end.18
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	callq	XSetSelectionOwner
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	unblock_input
	leaq	-104(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	callq	x_handle_selection_clear
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB14_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fx_disown_selection_internal, .Lfunc_end14-Fx_disown_selection_internal
	.cfi_endproc

	.align	16, 0x90
	.type	symbol_to_x_atom,@function
symbol_to_x_atom:                       # @symbol_to_x_atom
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB15_37
.LBB15_2:                               # %if.end
	movl	$147, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_4
# BB#3:                                 # %if.then.3
	movq	$1, -8(%rbp)
	jmp	.LBB15_37
.LBB15_4:                               # %if.end.4
	movl	$149, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_6
# BB#5:                                 # %if.then.7
	movq	$2, -8(%rbp)
	jmp	.LBB15_37
.LBB15_6:                               # %if.end.8
	movl	$150, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_8
# BB#7:                                 # %if.then.11
	movq	$31, -8(%rbp)
	jmp	.LBB15_37
.LBB15_8:                               # %if.end.12
	movl	$144, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_10
# BB#9:                                 # %if.then.15
	movq	$19, -8(%rbp)
	jmp	.LBB15_37
.LBB15_10:                              # %if.end.16
	movl	$1, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_12
# BB#11:                                # %if.then.19
	movq	$4, -8(%rbp)
	jmp	.LBB15_37
.LBB15_12:                              # %if.end.20
	movl	$2, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_14
# BB#13:                                # %if.then.23
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_14:                              # %if.end.24
	movl	$153, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_16
# BB#15:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_16:                              # %if.end.28
	movl	$152, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_18
# BB#17:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_18:                              # %if.end.32
	movl	$4, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_20
# BB#19:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_20:                              # %if.end.36
	movl	$154, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_22
# BB#21:                                # %if.then.39
	movq	-16(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_22:                              # %if.end.40
	movl	$140, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_24
# BB#23:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_24:                              # %if.end.44
	movl	$145, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_26
# BB#25:                                # %if.then.47
	movq	-16(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_26:                              # %if.end.48
	movl	$143, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_28
# BB#27:                                # %if.then.51
	movq	-16(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_28:                              # %if.end.52
	movl	$141, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_30
# BB#29:                                # %if.then.55
	movq	-16(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_30:                              # %if.end.56
	movl	$151, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_32
# BB#31:                                # %if.then.59
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_32:                              # %if.end.60
	movl	$146, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_34
# BB#33:                                # %if.then.63
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_37
.LBB15_34:                              # %if.end.64
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB15_36
# BB#35:                                # %if.then.67
	callq	emacs_abort
.LBB15_36:                              # %if.end.68
	callq	block_input
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	%rax, -32(%rbp)
	callq	unblock_input
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_37:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	symbol_to_x_atom, .Lfunc_end15-symbol_to_x_atom
	.cfi_endproc

	.globl	Fx_selection_owner_p
	.align	16, 0x90
	.type	Fx_selection_owner_p,@function
Fx_selection_owner_p:                   # @Fx_selection_owner_p
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	frame_for_x_selection
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB16_2
# BB#1:                                 # %cond.true
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB16_3:                               # %cond.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_5
# BB#4:                                 # %if.then
	movl	$147, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB16_5:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_7
# BB#6:                                 # %if.then.10
	movl	$149, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB16_7:                               # %if.end.12
	cmpq	$0, -32(%rbp)
	je	.LBB16_10
# BB#8:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB16_10
# BB#9:                                 # %if.then.18
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB16_11
.LBB16_10:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB16_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fx_selection_owner_p, .Lfunc_end16-Fx_selection_owner_p
	.cfi_endproc

	.globl	Fx_selection_exists_p
	.align	16, 0x90
	.type	Fx_selection_exists_p,@function
Fx_selection_exists_p:                  # @Fx_selection_exists_p
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	frame_for_x_selection
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_2
# BB#1:                                 # %cond.true
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB17_3:                               # %cond.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_5
# BB#4:                                 # %if.then
	movl	$147, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB17_5:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_7
# BB#6:                                 # %if.then.10
	movl	$149, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB17_7:                               # %if.end.12
	cmpq	$0, -48(%rbp)
	jne	.LBB17_9
# BB#8:                                 # %if.then.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_17
.LBB17_9:                               # %if.end.15
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_11
# BB#10:                                # %if.then.21
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_17
.LBB17_11:                              # %if.end.23
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_13
# BB#12:                                # %if.then.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB17_17
.LBB17_13:                              # %if.end.29
	callq	block_input
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	XGetSelectionOwner
	movq	%rax, -32(%rbp)
	callq	unblock_input
	cmpq	$0, -32(%rbp)
	je	.LBB17_15
# BB#14:                                # %cond.true.32
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB17_16
.LBB17_15:                              # %cond.false.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB17_16:                              # %cond.end.36
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB17_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fx_selection_exists_p, .Lfunc_end17-Fx_selection_exists_p
	.cfi_endproc

	.globl	x_clipboard_manager_save_frame
	.align	16, 0x90
	.type	x_clipboard_manager_save_frame,@function
x_clipboard_manager_save_frame:         # @x_clipboard_manager_save_frame
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	globals+2864, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_9
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB18_2
	jmp	.LBB18_9
.LBB18_2:                               # %land.lhs.true.2
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_9
# BB#3:                                 # %land.lhs.true.4
	movq	-16(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB18_9
# BB#4:                                 # %if.then
	movl	$2, %edi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_8
# BB#5:                                 # %land.lhs.true.11
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB18_8
# BB#6:                                 # %land.lhs.true.21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	504(%rax), %rsi
	callq	XGetSelectionOwner
	cmpq	$0, %rax
	je	.LBB18_8
# BB#7:                                 # %if.then.23
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$x_clipboard_manager_save, %rdi
	movabsq	$x_clipboard_manager_error_1, %rcx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB18_8:                               # %if.end
	jmp	.LBB18_9
.LBB18_9:                               # %if.end.26
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	x_clipboard_manager_save_frame, .Lfunc_end18-x_clipboard_manager_save_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_clipboard_manager_save,@function
x_clipboard_manager_save:               # @x_clipboard_manager_save
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
	subq	$96, %rsp
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %eax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	440(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movq	464(%rdx), %rdx
	movq	-24(%rbp), %r10
	movq	488(%r10), %r10
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	XChangeProperty
	movl	$3, %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$148, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	x_get_foreign_selection
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	x_clipboard_manager_save, .Lfunc_end19-x_clipboard_manager_save
	.cfi_endproc

	.align	16, 0x90
	.type	x_clipboard_manager_error_1,@function
x_clipboard_manager_error_1:            # @x_clipboard_manager_error_1
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
	subq	$128, %rsp
	movl	$4, %esi
	leaq	-48(%rbp), %rax
	movabsq	$.L.str.32, %rcx
	movq	%rdi, -8(%rbp)
	movq	$71, -48(%rbp)
	movq	$-1, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-88(%rbp), %rcx
	movabsq	$.L.str.20, %rdi
	movq	%rax, -16(%rbp)
	movq	$33, -88(%rbp)
	movq	$-1, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rdi
	callq	CDR
	movq	%rax, %rdi
	callq	CAR
	movl	$3, %esi
	movl	%esi, %edi
	leaq	-112(%rbp), %rsi
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	Fmessage
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	x_clipboard_manager_error_1, .Lfunc_end20-x_clipboard_manager_error_1
	.cfi_endproc

	.globl	x_clipboard_manager_save_all
	.align	16, 0x90
	.type	x_clipboard_manager_save_all,@function
x_clipboard_manager_save_all:           # @x_clipboard_manager_save_all
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
	subq	$64, %rsp
	xorl	%edi, %edi
	movq	globals+2864, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_11
.LBB21_2:                               # %if.end
	movq	x_display_list, %rax
	movq	%rax, -8(%rbp)
.LBB21_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB21_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$2, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	504(%rax), %rsi
	callq	XGetSelectionOwner
	cmpq	$0, %rax
	jne	.LBB21_7
.LBB21_6:                               # %if.then.7
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_10
.LBB21_7:                               # %if.end.8
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB21_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB21_3 Depth=1
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	message
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$x_clipboard_manager_save, %rdi
	movabsq	$x_clipboard_manager_error_2, %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB21_9:                               # %if.end.22
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_10
.LBB21_10:                              # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_3
.LBB21_11:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	x_clipboard_manager_save_all, .Lfunc_end21-x_clipboard_manager_save_all
	.cfi_endproc

	.align	16, 0x90
	.type	x_clipboard_manager_error_2,@function
x_clipboard_manager_error_2:            # @x_clipboard_manager_error_2
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
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.20, %rdx
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	x_clipboard_manager_error_2, .Lfunc_end22-x_clipboard_manager_error_2
	.cfi_endproc

	.globl	x_check_property_data
	.align	16, 0x90
	.type	x_check_property_data,@function
x_check_property_data:                  # @x_check_property_data
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB23_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB23_6
# BB#4:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB23_6
# BB#5:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB23_16
.LBB23_6:                               # %if.else
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB23_10
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB23_8
	jmp	.LBB23_9
.LBB23_8:                               # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB23_10
.LBB23_9:                               # %if.then.18
	movl	$-1, -4(%rbp)
	jmp	.LBB23_16
.LBB23_10:                              # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.19
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$2147483647, -28(%rbp)  # imm = 0x7FFFFFFF
	jne	.LBB23_13
# BB#12:                                # %if.then.22
	movl	$-1, -4(%rbp)
	jmp	.LBB23_16
.LBB23_13:                              # %if.end.23
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB23_1
.LBB23_15:                              # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB23_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	x_check_property_data, .Lfunc_end23-x_check_property_data
	.cfi_endproc

	.globl	x_fill_property_data
	.align	16, 0x90
	.type	x_fill_property_data,@function
x_fill_property_data:                   # @x_fill_property_data
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -72(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_28
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB24_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_10
.LBB24_4:                               # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	$-32768, %rdi           # imm = 0xFFFFFFFFFFFF8000
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB24_6
	jmp	.LBB24_8
.LBB24_6:                               # %land.lhs.true.15
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	$-32768, %rdi           # imm = 0xFFFFFFFFFFFF8000
	movq	$-1, %rdx
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB24_7
	jmp	.LBB24_8
.LBB24_7:                               # %if.then.19
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	shlq	$16, %rax
	orq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB24_9
.LBB24_8:                               # %if.else
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	cons_to_x_long
	movq	%rax, -40(%rbp)
.LBB24_9:                               # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_14
.LBB24_10:                              # %if.else.29
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_11
	jmp	.LBB24_12
.LBB24_11:                              # %if.then.31
                                        #   in Loop: Header=BB24_1 Depth=1
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	%rax, -40(%rbp)
	callq	unblock_input
	jmp	.LBB24_13
.LBB24_12:                              # %if.else.34
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB24_13:                              # %if.end.35
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_14
.LBB24_14:                              # %if.end.36
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpl	$8, -28(%rbp)
	jne	.LBB24_19
# BB#15:                                # %if.then.39
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jae	.LBB24_18
# BB#16:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$4294967167, %eax       # imm = 0xFFFFFF7F
	movl	%eax, %ecx
	cmpq	%rcx, -40(%rbp)
	ja	.LBB24_18
# BB#17:                                # %if.then.45
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB24_18:                              # %if.end.46
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB24_26
.LBB24_19:                              # %if.else.48
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpl	$16, -28(%rbp)
	jne	.LBB24_24
# BB#20:                                # %if.then.51
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jae	.LBB24_23
# BB#21:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$4294934527, %eax       # imm = 0xFFFF7FFF
	movl	%eax, %ecx
	cmpq	%rcx, -40(%rbp)
	ja	.LBB24_23
# BB#22:                                # %if.then.57
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB24_23:                              # %if.end.58
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rdx, -56(%rbp)
	movw	%cx, (%rax)
	jmp	.LBB24_25
.LBB24_24:                              # %if.else.61
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, (%rcx)
.LBB24_25:                              # %if.end.63
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_26
.LBB24_26:                              # %if.end.64
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_27
.LBB24_27:                              # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB24_1
.LBB24_28:                              # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	x_fill_property_data, .Lfunc_end24-x_fill_property_data
	.cfi_endproc

	.align	16, 0x90
	.type	cons_to_x_long,@function
cons_to_x_long:                         # @cons_to_x_long
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
	movq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cons_to_signed
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	cons_to_x_long, .Lfunc_end25-cons_to_x_long
	.cfi_endproc

	.globl	x_property_data_to_lisp
	.align	16, 0x90
	.type	x_property_data_to_lisp,@function
x_property_data_to_lisp:                # @x_property_data_to_lisp
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
	subq	$672, %rsp              # imm = 0x2A0
	xorl	%eax, %eax
	movb	%al, %r9b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	-28(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	testb	$1, %r9b
	jne	.LBB26_1
	jmp	.LBB26_86
.LBB26_1:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_2
	jmp	.LBB26_44
.LBB26_2:                               # %cond.true.1
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_4
# BB#3:                                 # %cond.true.8
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
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
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
.LBB26_5:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_10
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_8
# BB#7:                                 # %land.lhs.true.46
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB26_36
.LBB26_8:                               # %lor.lhs.false
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_10
# BB#9:                                 # %land.lhs.true.55
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB26_36
.LBB26_10:                              # %lor.lhs.false.60
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_22
# BB#11:                                # %cond.true.65
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_16
# BB#12:                                # %cond.true.70
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	jge	.LBB26_14
# BB#13:                                # %cond.true.83
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB26_15
.LBB26_14:                              # %cond.false.96
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB26_15:                              # %cond.end.105
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-64(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB26_36
	jmp	.LBB26_33
.LBB26_16:                              # %cond.false.111
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$-1, %edx
	jne	.LBB26_18
# BB#17:                                # %cond.true.116
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_36
	jmp	.LBB26_33
.LBB26_18:                              # %cond.false.117
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_20
# BB#19:                                # %cond.true.128
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
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
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB26_21
.LBB26_20:                              # %cond.false.154
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB26_21:                              # %cond.end.163
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB26_36
	jmp	.LBB26_33
.LBB26_22:                              # %cond.false.172
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB26_24
# BB#23:                                # %cond.true.177
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_36
	jmp	.LBB26_33
.LBB26_24:                              # %cond.false.178
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_29
# BB#25:                                # %cond.true.183
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	jge	.LBB26_27
# BB#26:                                # %cond.true.196
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
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
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB26_28
.LBB26_27:                              # %cond.false.222
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -80(%rbp)         # 4-byte Spill
.LBB26_28:                              # %cond.end.231
	movl	-80(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-76(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB26_36
	jmp	.LBB26_33
.LBB26_29:                              # %cond.false.238
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_31
# BB#30:                                # %cond.true.249
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB26_32
.LBB26_31:                              # %cond.false.262
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -84(%rbp)         # 4-byte Spill
.LBB26_32:                              # %cond.end.271
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB26_36
.LBB26_33:                              # %lor.lhs.false.280
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_35
# BB#34:                                # %land.lhs.true.290
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB26_36
.LBB26_35:                              # %lor.lhs.false.298
	movl	$127, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB26_40
.LBB26_36:                              # %cond.true.306
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB26_38
# BB#37:                                # %cond.true.314
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB26_39
.LBB26_38:                              # %cond.false.322
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
.LBB26_39:                              # %cond.end.332
	movl	-88(%rbp), %eax         # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_40:                              # %cond.false.335
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB26_42
# BB#41:                                # %cond.true.343
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB26_43
.LBB26_42:                              # %cond.false.351
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
.LBB26_43:                              # %cond.end.361
	movl	-92(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_44:                              # %cond.false.364
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_46
# BB#45:                                # %cond.true.371
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB26_47
.LBB26_46:                              # %cond.false.390
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB26_47:                              # %cond.end.395
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_52
# BB#48:                                # %land.lhs.true.399
	cmpq	$0, -40(%rbp)
	jae	.LBB26_50
# BB#49:                                # %land.lhs.true.402
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_78
.LBB26_50:                              # %lor.lhs.false.405
	cmpq	$0, -48(%rbp)
	jge	.LBB26_52
# BB#51:                                # %land.lhs.true.408
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jb	.LBB26_78
.LBB26_52:                              # %lor.lhs.false.411
	cmpq	$0, -48(%rbp)
	jge	.LBB26_64
# BB#53:                                # %cond.true.414
	cmpq	$0, -40(%rbp)
	jae	.LBB26_58
# BB#54:                                # %cond.true.417
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jae	.LBB26_56
# BB#55:                                # %cond.true.424
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB26_57
.LBB26_56:                              # %cond.false.433
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB26_57:                              # %cond.end.438
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_78
	jmp	.LBB26_75
.LBB26_58:                              # %cond.false.443
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_60
# BB#59:                                # %cond.true.446
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_78
	jmp	.LBB26_75
.LBB26_60:                              # %cond.false.447
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_62
# BB#61:                                # %cond.true.454
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_63
.LBB26_62:                              # %cond.false.473
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB26_63:                              # %cond.end.478
	movq	-128(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_78
	jmp	.LBB26_75
.LBB26_64:                              # %cond.false.483
	cmpq	$0, -48(%rbp)
	jne	.LBB26_66
# BB#65:                                # %cond.true.486
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_78
	jmp	.LBB26_75
.LBB26_66:                              # %cond.false.487
	cmpq	$0, -40(%rbp)
	jae	.LBB26_71
# BB#67:                                # %cond.true.490
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jae	.LBB26_69
# BB#68:                                # %cond.true.497
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB26_70
.LBB26_69:                              # %cond.false.516
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB26_70:                              # %cond.end.521
	movq	-144(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_78
	jmp	.LBB26_75
.LBB26_71:                              # %cond.false.526
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_73
# BB#72:                                # %cond.true.533
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB26_74
.LBB26_73:                              # %cond.false.542
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB26_74:                              # %cond.end.547
	movq	-152(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_78
.LBB26_75:                              # %lor.lhs.false.552
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_77
# BB#76:                                # %land.lhs.true.558
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	$-128, %rax
	jb	.LBB26_78
.LBB26_77:                              # %lor.lhs.false.562
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	imulq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB26_82
.LBB26_78:                              # %cond.true.566
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB26_80
# BB#79:                                # %cond.true.574
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB26_81
.LBB26_80:                              # %cond.false.582
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
.LBB26_81:                              # %cond.end.592
	movl	-156(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_82:                              # %cond.false.595
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB26_84
# BB#83:                                # %cond.true.603
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB26_85
.LBB26_84:                              # %cond.false.611
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
.LBB26_85:                              # %cond.end.621
	movl	-160(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_86:                              # %cond.false.624
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_87
	jmp	.LBB26_172
.LBB26_87:                              # %cond.true.625
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_88
	jmp	.LBB26_130
.LBB26_88:                              # %cond.true.626
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_90
# BB#89:                                # %cond.true.637
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB26_91
.LBB26_90:                              # %cond.false.663
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB26_91:                              # %cond.end.672
	movl	-164(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_96
# BB#92:                                # %land.lhs.true.676
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_94
# BB#93:                                # %land.lhs.true.681
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB26_122
.LBB26_94:                              # %lor.lhs.false.686
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_96
# BB#95:                                # %land.lhs.true.691
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB26_122
.LBB26_96:                              # %lor.lhs.false.696
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_108
# BB#97:                                # %cond.true.701
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_102
# BB#98:                                # %cond.true.706
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -168(%rbp)        # 4-byte Spill
	jge	.LBB26_100
# BB#99:                                # %cond.true.719
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB26_101
.LBB26_100:                             # %cond.false.732
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -172(%rbp)        # 4-byte Spill
.LBB26_101:                             # %cond.end.741
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-168(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB26_122
	jmp	.LBB26_119
.LBB26_102:                             # %cond.false.748
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$-1, %edx
	jne	.LBB26_104
# BB#103:                               # %cond.true.753
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_122
	jmp	.LBB26_119
.LBB26_104:                             # %cond.false.754
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_106
# BB#105:                               # %cond.true.765
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB26_107
.LBB26_106:                             # %cond.false.791
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -176(%rbp)        # 4-byte Spill
.LBB26_107:                             # %cond.end.800
	movl	-176(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movq	-40(%rbp), %rcx
	movw	%cx, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB26_122
	jmp	.LBB26_119
.LBB26_108:                             # %cond.false.809
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB26_110
# BB#109:                               # %cond.true.814
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_122
	jmp	.LBB26_119
.LBB26_110:                             # %cond.false.815
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_115
# BB#111:                               # %cond.true.820
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	jge	.LBB26_113
# BB#112:                               # %cond.true.833
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB26_114
.LBB26_113:                             # %cond.false.859
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
.LBB26_114:                             # %cond.end.868
	movl	-184(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-180(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB26_122
	jmp	.LBB26_119
.LBB26_115:                             # %cond.false.875
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_117
# BB#116:                               # %cond.true.886
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB26_118
.LBB26_117:                             # %cond.false.899
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
.LBB26_118:                             # %cond.end.908
	movl	-188(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movq	-40(%rbp), %rcx
	movw	%cx, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB26_122
.LBB26_119:                             # %lor.lhs.false.917
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_121
# BB#120:                               # %land.lhs.true.927
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_122
.LBB26_121:                             # %lor.lhs.false.935
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB26_126
.LBB26_122:                             # %cond.true.943
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_124
# BB#123:                               # %cond.true.951
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB26_125
.LBB26_124:                             # %cond.false.959
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -192(%rbp)        # 4-byte Spill
.LBB26_125:                             # %cond.end.969
	movl	-192(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_126:                             # %cond.false.972
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_128
# BB#127:                               # %cond.true.980
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB26_129
.LBB26_128:                             # %cond.false.988
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -196(%rbp)        # 4-byte Spill
.LBB26_129:                             # %cond.end.998
	movl	-196(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_130:                             # %cond.false.1001
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_132
# BB#131:                               # %cond.true.1008
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB26_133
.LBB26_132:                             # %cond.false.1027
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB26_133:                             # %cond.end.1032
	movq	-208(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_138
# BB#134:                               # %land.lhs.true.1036
	cmpq	$0, -40(%rbp)
	jae	.LBB26_136
# BB#135:                               # %land.lhs.true.1039
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_164
.LBB26_136:                             # %lor.lhs.false.1042
	cmpq	$0, -48(%rbp)
	jge	.LBB26_138
# BB#137:                               # %land.lhs.true.1045
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jb	.LBB26_164
.LBB26_138:                             # %lor.lhs.false.1048
	cmpq	$0, -48(%rbp)
	jge	.LBB26_150
# BB#139:                               # %cond.true.1051
	cmpq	$0, -40(%rbp)
	jae	.LBB26_144
# BB#140:                               # %cond.true.1054
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jae	.LBB26_142
# BB#141:                               # %cond.true.1061
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB26_143
.LBB26_142:                             # %cond.false.1070
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB26_143:                             # %cond.end.1075
	movq	-224(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_164
	jmp	.LBB26_161
.LBB26_144:                             # %cond.false.1080
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_146
# BB#145:                               # %cond.true.1083
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_164
	jmp	.LBB26_161
.LBB26_146:                             # %cond.false.1084
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_148
# BB#147:                               # %cond.true.1091
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB26_149
.LBB26_148:                             # %cond.false.1110
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB26_149:                             # %cond.end.1115
	movq	-232(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_164
	jmp	.LBB26_161
.LBB26_150:                             # %cond.false.1120
	cmpq	$0, -48(%rbp)
	jne	.LBB26_152
# BB#151:                               # %cond.true.1123
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_164
	jmp	.LBB26_161
.LBB26_152:                             # %cond.false.1124
	cmpq	$0, -40(%rbp)
	jae	.LBB26_157
# BB#153:                               # %cond.true.1127
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jae	.LBB26_155
# BB#154:                               # %cond.true.1134
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB26_156
.LBB26_155:                             # %cond.false.1153
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB26_156:                             # %cond.end.1158
	movq	-248(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_164
	jmp	.LBB26_161
.LBB26_157:                             # %cond.false.1163
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_159
# BB#158:                               # %cond.true.1170
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB26_160
.LBB26_159:                             # %cond.false.1179
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB26_160:                             # %cond.end.1184
	movq	-256(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_164
.LBB26_161:                             # %lor.lhs.false.1189
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_163
# BB#162:                               # %land.lhs.true.1195
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jb	.LBB26_164
.LBB26_163:                             # %lor.lhs.false.1199
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	imulq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB26_168
.LBB26_164:                             # %cond.true.1203
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_166
# BB#165:                               # %cond.true.1211
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB26_167
.LBB26_166:                             # %cond.false.1219
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB26_167:                             # %cond.end.1229
	movl	-260(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_168:                             # %cond.false.1232
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_170
# BB#169:                               # %cond.true.1240
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB26_171
.LBB26_170:                             # %cond.false.1248
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB26_171:                             # %cond.end.1258
	movl	-264(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_172:                             # %cond.false.1261
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_173
	jmp	.LBB26_258
.LBB26_173:                             # %cond.true.1262
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_174
	jmp	.LBB26_216
.LBB26_174:                             # %cond.true.1263
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_176
# BB#175:                               # %cond.true.1272
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB26_177
.LBB26_176:                             # %cond.false.1294
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB26_177:                             # %cond.end.1301
	movl	-268(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_182
# BB#178:                               # %land.lhs.true.1305
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_180
# BB#179:                               # %land.lhs.true.1309
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB26_208
.LBB26_180:                             # %lor.lhs.false.1313
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_182
# BB#181:                               # %land.lhs.true.1317
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB26_208
.LBB26_182:                             # %lor.lhs.false.1321
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_194
# BB#183:                               # %cond.true.1325
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_188
# BB#184:                               # %cond.true.1329
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	jge	.LBB26_186
# BB#185:                               # %cond.true.1339
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB26_187
.LBB26_186:                             # %cond.false.1350
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB26_187:                             # %cond.end.1357
	movl	-276(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
	cltd
	movl	-280(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-272(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB26_208
	jmp	.LBB26_205
.LBB26_188:                             # %cond.false.1363
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	jne	.LBB26_190
# BB#189:                               # %cond.true.1367
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_208
	jmp	.LBB26_205
.LBB26_190:                             # %cond.false.1368
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_192
# BB#191:                               # %cond.true.1377
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB26_193
.LBB26_192:                             # %cond.false.1399
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
.LBB26_193:                             # %cond.end.1406
	movl	-284(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -288(%rbp)        # 4-byte Spill
	cltd
	movl	-288(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-40(%rbp), %rcx
	movl	%ecx, %edi
	cmpl	%edi, %eax
	jl	.LBB26_208
	jmp	.LBB26_205
.LBB26_194:                             # %cond.false.1413
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_196
# BB#195:                               # %cond.true.1417
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_208
	jmp	.LBB26_205
.LBB26_196:                             # %cond.false.1418
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_201
# BB#197:                               # %cond.true.1422
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jge	.LBB26_199
# BB#198:                               # %cond.true.1432
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-40(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB26_200
.LBB26_199:                             # %cond.false.1454
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
.LBB26_200:                             # %cond.end.1461
	movl	-296(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	cltd
	movl	-300(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-292(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB26_208
	jmp	.LBB26_205
.LBB26_201:                             # %cond.false.1467
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_203
# BB#202:                               # %cond.true.1476
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	jmp	.LBB26_204
.LBB26_203:                             # %cond.false.1487
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
.LBB26_204:                             # %cond.end.1494
	movl	-304(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	cltd
	movl	-308(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-40(%rbp), %rcx
	movl	%ecx, %edi
	cmpl	%edi, %eax
	jl	.LBB26_208
.LBB26_205:                             # %lor.lhs.false.1501
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_207
# BB#206:                               # %land.lhs.true.1509
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_208
.LBB26_207:                             # %lor.lhs.false.1515
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	movq	-48(%rbp), %rcx
	movl	%ecx, %esi
	imull	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB26_212
.LBB26_208:                             # %cond.true.1521
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_210
# BB#209:                               # %cond.true.1527
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB26_211
.LBB26_210:                             # %cond.false.1531
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -312(%rbp)        # 4-byte Spill
.LBB26_211:                             # %cond.end.1537
	movl	-312(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_212:                             # %cond.false.1540
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_214
# BB#213:                               # %cond.true.1546
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB26_215
.LBB26_214:                             # %cond.false.1550
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB26_215:                             # %cond.end.1556
	movl	-316(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_216:                             # %cond.false.1559
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_218
# BB#217:                               # %cond.true.1566
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB26_219
.LBB26_218:                             # %cond.false.1585
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB26_219:                             # %cond.end.1590
	movq	-328(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_224
# BB#220:                               # %land.lhs.true.1594
	cmpq	$0, -40(%rbp)
	jae	.LBB26_222
# BB#221:                               # %land.lhs.true.1597
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_250
.LBB26_222:                             # %lor.lhs.false.1600
	cmpq	$0, -48(%rbp)
	jge	.LBB26_224
# BB#223:                               # %land.lhs.true.1603
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jb	.LBB26_250
.LBB26_224:                             # %lor.lhs.false.1606
	cmpq	$0, -48(%rbp)
	jge	.LBB26_236
# BB#225:                               # %cond.true.1609
	cmpq	$0, -40(%rbp)
	jae	.LBB26_230
# BB#226:                               # %cond.true.1612
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jae	.LBB26_228
# BB#227:                               # %cond.true.1619
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB26_229
.LBB26_228:                             # %cond.false.1628
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB26_229:                             # %cond.end.1633
	movq	-344(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_250
	jmp	.LBB26_247
.LBB26_230:                             # %cond.false.1638
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_232
# BB#231:                               # %cond.true.1641
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_250
	jmp	.LBB26_247
.LBB26_232:                             # %cond.false.1642
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_234
# BB#233:                               # %cond.true.1649
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB26_235
.LBB26_234:                             # %cond.false.1668
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB26_235:                             # %cond.end.1673
	movq	-352(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_250
	jmp	.LBB26_247
.LBB26_236:                             # %cond.false.1678
	cmpq	$0, -48(%rbp)
	jne	.LBB26_238
# BB#237:                               # %cond.true.1681
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_250
	jmp	.LBB26_247
.LBB26_238:                             # %cond.false.1682
	cmpq	$0, -40(%rbp)
	jae	.LBB26_243
# BB#239:                               # %cond.true.1685
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jae	.LBB26_241
# BB#240:                               # %cond.true.1692
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB26_242
.LBB26_241:                             # %cond.false.1711
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB26_242:                             # %cond.end.1716
	movq	-368(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-360(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_250
	jmp	.LBB26_247
.LBB26_243:                             # %cond.false.1721
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_245
# BB#244:                               # %cond.true.1728
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB26_246
.LBB26_245:                             # %cond.false.1737
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB26_246:                             # %cond.end.1742
	movq	-376(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_250
.LBB26_247:                             # %lor.lhs.false.1747
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_249
# BB#248:                               # %land.lhs.true.1753
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jb	.LBB26_250
.LBB26_249:                             # %lor.lhs.false.1757
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	imulq	-48(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB26_254
.LBB26_250:                             # %cond.true.1761
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_252
# BB#251:                               # %cond.true.1767
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB26_253
.LBB26_252:                             # %cond.false.1771
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -380(%rbp)        # 4-byte Spill
.LBB26_253:                             # %cond.end.1777
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_254:                             # %cond.false.1780
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_256
# BB#255:                               # %cond.true.1786
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB26_257
.LBB26_256:                             # %cond.false.1790
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -384(%rbp)        # 4-byte Spill
.LBB26_257:                             # %cond.end.1796
	movl	-384(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_258:                             # %cond.false.1799
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_259
	jmp	.LBB26_344
.LBB26_259:                             # %cond.true.1800
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_260
	jmp	.LBB26_302
.LBB26_260:                             # %cond.true.1801
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_262
# BB#261:                               # %cond.true.1808
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB26_263
.LBB26_262:                             # %cond.false.1827
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB26_263:                             # %cond.end.1832
	movq	-392(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_268
# BB#264:                               # %land.lhs.true.1836
	cmpq	$0, -40(%rbp)
	jge	.LBB26_266
# BB#265:                               # %land.lhs.true.1839
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_294
.LBB26_266:                             # %lor.lhs.false.1842
	cmpq	$0, -48(%rbp)
	jge	.LBB26_268
# BB#267:                               # %land.lhs.true.1845
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jl	.LBB26_294
.LBB26_268:                             # %lor.lhs.false.1848
	cmpq	$0, -48(%rbp)
	jge	.LBB26_280
# BB#269:                               # %cond.true.1851
	cmpq	$0, -40(%rbp)
	jge	.LBB26_274
# BB#270:                               # %cond.true.1854
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jge	.LBB26_272
# BB#271:                               # %cond.true.1861
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB26_273
.LBB26_272:                             # %cond.false.1870
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB26_273:                             # %cond.end.1875
	movq	-408(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_294
	jmp	.LBB26_291
.LBB26_274:                             # %cond.false.1880
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_276
# BB#275:                               # %cond.true.1883
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_294
	jmp	.LBB26_291
.LBB26_276:                             # %cond.false.1884
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_278
# BB#277:                               # %cond.true.1891
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB26_279
.LBB26_278:                             # %cond.false.1910
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB26_279:                             # %cond.end.1915
	movq	-416(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jl	.LBB26_294
	jmp	.LBB26_291
.LBB26_280:                             # %cond.false.1920
	cmpq	$0, -48(%rbp)
	jne	.LBB26_282
# BB#281:                               # %cond.true.1923
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_294
	jmp	.LBB26_291
.LBB26_282:                             # %cond.false.1924
	cmpq	$0, -40(%rbp)
	jge	.LBB26_287
# BB#283:                               # %cond.true.1927
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jge	.LBB26_285
# BB#284:                               # %cond.true.1934
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB26_286
.LBB26_285:                             # %cond.false.1953
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB26_286:                             # %cond.end.1958
	movq	-432(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_294
	jmp	.LBB26_291
.LBB26_287:                             # %cond.false.1963
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_289
# BB#288:                               # %cond.true.1970
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB26_290
.LBB26_289:                             # %cond.false.1979
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB26_290:                             # %cond.end.1984
	movq	-440(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jl	.LBB26_294
.LBB26_291:                             # %lor.lhs.false.1989
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_293
# BB#292:                               # %land.lhs.true.1995
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_294
.LBB26_293:                             # %lor.lhs.false.1999
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_298
.LBB26_294:                             # %cond.true.2003
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_296
# BB#295:                               # %cond.true.2007
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB26_297
.LBB26_296:                             # %cond.false.2009
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB26_297:                             # %cond.end.2013
	movq	-448(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_298:                             # %cond.false.2015
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_300
# BB#299:                               # %cond.true.2019
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB26_301
.LBB26_300:                             # %cond.false.2021
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB26_301:                             # %cond.end.2025
	movq	-456(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_302:                             # %cond.false.2027
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_304
# BB#303:                               # %cond.true.2034
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB26_305
.LBB26_304:                             # %cond.false.2053
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB26_305:                             # %cond.end.2058
	movq	-464(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_310
# BB#306:                               # %land.lhs.true.2062
	cmpq	$0, -40(%rbp)
	jae	.LBB26_308
# BB#307:                               # %land.lhs.true.2065
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_336
.LBB26_308:                             # %lor.lhs.false.2068
	cmpq	$0, -48(%rbp)
	jge	.LBB26_310
# BB#309:                               # %land.lhs.true.2071
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jb	.LBB26_336
.LBB26_310:                             # %lor.lhs.false.2074
	cmpq	$0, -48(%rbp)
	jge	.LBB26_322
# BB#311:                               # %cond.true.2077
	cmpq	$0, -40(%rbp)
	jae	.LBB26_316
# BB#312:                               # %cond.true.2080
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jae	.LBB26_314
# BB#313:                               # %cond.true.2087
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB26_315
.LBB26_314:                             # %cond.false.2096
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB26_315:                             # %cond.end.2101
	movq	-480(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-472(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_336
	jmp	.LBB26_333
.LBB26_316:                             # %cond.false.2106
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_318
# BB#317:                               # %cond.true.2109
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_336
	jmp	.LBB26_333
.LBB26_318:                             # %cond.false.2110
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_320
# BB#319:                               # %cond.true.2117
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB26_321
.LBB26_320:                             # %cond.false.2136
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB26_321:                             # %cond.end.2141
	movq	-488(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_336
	jmp	.LBB26_333
.LBB26_322:                             # %cond.false.2146
	cmpq	$0, -48(%rbp)
	jne	.LBB26_324
# BB#323:                               # %cond.true.2149
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_336
	jmp	.LBB26_333
.LBB26_324:                             # %cond.false.2150
	cmpq	$0, -40(%rbp)
	jae	.LBB26_329
# BB#325:                               # %cond.true.2153
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jae	.LBB26_327
# BB#326:                               # %cond.true.2160
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB26_328
.LBB26_327:                             # %cond.false.2179
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB26_328:                             # %cond.end.2184
	movq	-504(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-496(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_336
	jmp	.LBB26_333
.LBB26_329:                             # %cond.false.2189
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_331
# BB#330:                               # %cond.true.2196
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB26_332
.LBB26_331:                             # %cond.false.2205
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB26_332:                             # %cond.end.2210
	movq	-512(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_336
.LBB26_333:                             # %lor.lhs.false.2215
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_335
# BB#334:                               # %land.lhs.true.2221
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jb	.LBB26_336
.LBB26_335:                             # %lor.lhs.false.2225
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB26_340
.LBB26_336:                             # %cond.true.2229
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_338
# BB#337:                               # %cond.true.2233
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB26_339
.LBB26_338:                             # %cond.false.2235
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB26_339:                             # %cond.end.2239
	movq	-520(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_340:                             # %cond.false.2241
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_342
# BB#341:                               # %cond.true.2245
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB26_343
.LBB26_342:                             # %cond.false.2247
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB26_343:                             # %cond.end.2251
	movq	-528(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_344:                             # %cond.false.2253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_345
	jmp	.LBB26_387
.LBB26_345:                             # %cond.true.2254
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_347
# BB#346:                               # %cond.true.2261
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB26_348
.LBB26_347:                             # %cond.false.2280
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB26_348:                             # %cond.end.2285
	movq	-536(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_353
# BB#349:                               # %land.lhs.true.2289
	cmpq	$0, -40(%rbp)
	jge	.LBB26_351
# BB#350:                               # %land.lhs.true.2292
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_379
.LBB26_351:                             # %lor.lhs.false.2295
	cmpq	$0, -48(%rbp)
	jge	.LBB26_353
# BB#352:                               # %land.lhs.true.2298
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jl	.LBB26_379
.LBB26_353:                             # %lor.lhs.false.2301
	cmpq	$0, -48(%rbp)
	jge	.LBB26_365
# BB#354:                               # %cond.true.2304
	cmpq	$0, -40(%rbp)
	jge	.LBB26_359
# BB#355:                               # %cond.true.2307
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jge	.LBB26_357
# BB#356:                               # %cond.true.2314
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB26_358
.LBB26_357:                             # %cond.false.2323
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB26_358:                             # %cond.end.2328
	movq	-552(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_379
	jmp	.LBB26_376
.LBB26_359:                             # %cond.false.2333
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_361
# BB#360:                               # %cond.true.2336
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_379
	jmp	.LBB26_376
.LBB26_361:                             # %cond.false.2337
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_363
# BB#362:                               # %cond.true.2344
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB26_364
.LBB26_363:                             # %cond.false.2363
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB26_364:                             # %cond.end.2368
	movq	-560(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jl	.LBB26_379
	jmp	.LBB26_376
.LBB26_365:                             # %cond.false.2373
	cmpq	$0, -48(%rbp)
	jne	.LBB26_367
# BB#366:                               # %cond.true.2376
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_379
	jmp	.LBB26_376
.LBB26_367:                             # %cond.false.2377
	cmpq	$0, -40(%rbp)
	jge	.LBB26_372
# BB#368:                               # %cond.true.2380
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jge	.LBB26_370
# BB#369:                               # %cond.true.2387
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB26_371
.LBB26_370:                             # %cond.false.2406
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB26_371:                             # %cond.end.2411
	movq	-576(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_379
	jmp	.LBB26_376
.LBB26_372:                             # %cond.false.2416
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_374
# BB#373:                               # %cond.true.2423
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB26_375
.LBB26_374:                             # %cond.false.2432
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB26_375:                             # %cond.end.2437
	movq	-584(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jl	.LBB26_379
.LBB26_376:                             # %lor.lhs.false.2442
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_378
# BB#377:                               # %land.lhs.true.2448
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_379
.LBB26_378:                             # %lor.lhs.false.2452
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_383
.LBB26_379:                             # %cond.true.2456
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_381
# BB#380:                               # %cond.true.2460
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB26_382
.LBB26_381:                             # %cond.false.2462
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB26_382:                             # %cond.end.2466
	movq	-592(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_383:                             # %cond.false.2468
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_385
# BB#384:                               # %cond.true.2472
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB26_386
.LBB26_385:                             # %cond.false.2474
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB26_386:                             # %cond.end.2478
	movq	-600(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_387:                             # %cond.false.2480
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_389
# BB#388:                               # %cond.true.2487
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB26_390
.LBB26_389:                             # %cond.false.2506
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB26_390:                             # %cond.end.2511
	movq	-608(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_395
# BB#391:                               # %land.lhs.true.2515
	cmpq	$0, -40(%rbp)
	jae	.LBB26_393
# BB#392:                               # %land.lhs.true.2518
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jl	.LBB26_421
.LBB26_393:                             # %lor.lhs.false.2521
	cmpq	$0, -48(%rbp)
	jge	.LBB26_395
# BB#394:                               # %land.lhs.true.2524
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jb	.LBB26_421
.LBB26_395:                             # %lor.lhs.false.2527
	cmpq	$0, -48(%rbp)
	jge	.LBB26_407
# BB#396:                               # %cond.true.2530
	cmpq	$0, -40(%rbp)
	jae	.LBB26_401
# BB#397:                               # %cond.true.2533
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jae	.LBB26_399
# BB#398:                               # %cond.true.2540
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB26_400
.LBB26_399:                             # %cond.false.2549
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB26_400:                             # %cond.end.2554
	movq	-624(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-616(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_421
	jmp	.LBB26_418
.LBB26_401:                             # %cond.false.2559
	cmpq	$-1, -48(%rbp)
	jne	.LBB26_403
# BB#402:                               # %cond.true.2562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_421
	jmp	.LBB26_418
.LBB26_403:                             # %cond.false.2563
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_405
# BB#404:                               # %cond.true.2570
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB26_406
.LBB26_405:                             # %cond.false.2589
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB26_406:                             # %cond.end.2594
	movq	-632(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_421
	jmp	.LBB26_418
.LBB26_407:                             # %cond.false.2599
	cmpq	$0, -48(%rbp)
	jne	.LBB26_409
# BB#408:                               # %cond.true.2602
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_421
	jmp	.LBB26_418
.LBB26_409:                             # %cond.false.2603
	cmpq	$0, -40(%rbp)
	jae	.LBB26_414
# BB#410:                               # %cond.true.2606
	movq	-40(%rbp), %rax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jae	.LBB26_412
# BB#411:                               # %cond.true.2613
	xorl	%eax, %eax
	imulq	$0, -48(%rbp), %rcx
	addq	-40(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -48(%rbp), %rdi
	addq	-40(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB26_413
.LBB26_412:                             # %cond.false.2632
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB26_413:                             # %cond.end.2637
	movq	-648(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	movq	-640(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB26_421
	jmp	.LBB26_418
.LBB26_414:                             # %cond.false.2642
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_416
# BB#415:                               # %cond.true.2649
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB26_417
.LBB26_416:                             # %cond.false.2658
	imulq	$0, -48(%rbp), %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB26_417:                             # %cond.end.2663
	movq	-656(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-48(%rbp)
	cmpq	-40(%rbp), %rax
	jb	.LBB26_421
.LBB26_418:                             # %lor.lhs.false.2668
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB26_420
# BB#419:                               # %land.lhs.true.2674
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	jb	.LBB26_421
.LBB26_420:                             # %lor.lhs.false.2678
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB26_425
.LBB26_421:                             # %cond.true.2682
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_423
# BB#422:                               # %cond.true.2686
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB26_424
.LBB26_423:                             # %cond.false.2688
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB26_424:                             # %cond.end.2692
	movq	-664(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_425:                             # %cond.false.2694
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	imulq	-48(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_427
# BB#426:                               # %cond.true.2698
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB26_428
.LBB26_427:                             # %cond.false.2700
	movq	-40(%rbp), %rax
	imulq	-48(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB26_428:                             # %cond.end.2704
	movq	-672(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB26_429
	jmp	.LBB26_430
.LBB26_429:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB26_430:                             # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	callq	selection_data_to_lisp_data
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbp
	retq
.Lfunc_end26:
	.size	x_property_data_to_lisp, .Lfunc_end26-x_property_data_to_lisp
	.cfi_endproc

	.align	16, 0x90
	.type	selection_data_to_lisp_data,@function
selection_data_to_lisp_data:            # @selection_data_to_lisp_data
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpq	480(%rdx), %rcx
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movl	$146, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB27_52
.LBB27_2:                               # %if.else
	cmpl	$8, -44(%rbp)
	jne	.LBB27_10
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	cmpq	432(%rsi), %rax
	jne	.LBB27_5
# BB#4:                                 # %if.then.5
	movl	$4, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	jmp	.LBB27_9
.LBB27_5:                               # %if.else.7
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	440(%rcx), %rax
	jne	.LBB27_7
# BB#6:                                 # %if.then.9
	movl	$154, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	jmp	.LBB27_8
.LBB27_7:                               # %if.else.11
	movl	$150, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB27_8:                               # %if.end
	jmp	.LBB27_9
.LBB27_9:                               # %if.end.13
	movl	$452, %edi              # imm = 0x1C4
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput_text_property
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB27_52
.LBB27_10:                              # %if.else.16
	cmpq	$4, -40(%rbp)
	je	.LBB27_12
# BB#11:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	496(%rcx), %rax
	jne	.LBB27_19
.LBB27_12:                              # %if.then.19
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$4, -32(%rbp)
	jne	.LBB27_14
# BB#13:                                # %if.then.21
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movslq	(%rax), %rsi
	callq	x_atom_to_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB27_52
.LBB27_14:                              # %if.else.23
	movq	-32(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, %rdi
	callq	make_uninit_vector
	movq	%rax, -88(%rbp)
	movq	$0, -72(%rbp)
.LBB27_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	shrq	$2, %rcx
	cmpq	%rcx, %rax
	jae	.LBB27_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB27_15 Depth=1
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	x_atom_to_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB27_15 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB27_15
.LBB27_18:                              # %for.end
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_52
.LBB27_19:                              # %if.else.31
	cmpl	$32, -44(%rbp)
	jne	.LBB27_30
# BB#20:                                # %land.lhs.true
	cmpq	$4, -32(%rbp)
	jne	.LBB27_30
# BB#21:                                # %if.then.36
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jle	.LBB27_23
# BB#22:                                # %lor.lhs.false.40
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jg	.LBB27_25
.LBB27_23:                              # %land.lhs.true.45
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpq	%rax, %rcx
	jg	.LBB27_25
# BB#24:                                # %cond.true
	movq	-24(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB27_29
.LBB27_25:                              # %cond.false
	movq	-24(%rbp), %rax
	imull	$0, (%rax), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB27_27
# BB#26:                                # %cond.true.57
	movq	-24(%rbp), %rax
	movslq	(%rax), %rdi
	callq	intbig_to_lisp
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB27_28
.LBB27_27:                              # %cond.false.61
	movq	-24(%rbp), %rax
	movslq	(%rax), %rdi
	callq	uintbig_to_lisp
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB27_28:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB27_29:                              # %cond.end.65
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB27_52
.LBB27_30:                              # %if.else.67
	cmpl	$16, -44(%rbp)
	jne	.LBB27_33
# BB#31:                                # %land.lhs.true.70
	cmpq	$2, -32(%rbp)
	jne	.LBB27_33
# BB#32:                                # %if.then.73
	movq	-24(%rbp), %rax
	movswq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_52
.LBB27_33:                              # %if.else.78
	cmpl	$16, -44(%rbp)
	jne	.LBB27_39
# BB#34:                                # %if.then.81
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	callq	make_uninit_vector
	movq	%rax, -104(%rbp)
	movq	$0, -96(%rbp)
.LBB27_35:                              # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB27_38
# BB#36:                                # %for.body.90
                                        #   in Loop: Header=BB27_35 Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx,%rax,2), %dx
	movw	%dx, -106(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movswq	-106(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
# BB#37:                                # %for.inc.95
                                        #   in Loop: Header=BB27_35 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB27_35
.LBB27_38:                              # %for.end.97
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_52
.LBB27_39:                              # %if.else.98
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	callq	make_uninit_vector
	movq	%rax, -128(%rbp)
	movq	$0, -120(%rbp)
.LBB27_40:                              # %for.cond.103
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB27_51
# BB#41:                                # %for.body.107
                                        #   in Loop: Header=BB27_40 Depth=1
	xorl	%eax, %eax
	movq	-120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movl	%esi, -132(%rbp)
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	cmpl	-132(%rbp), %eax
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	jle	.LBB27_43
# BB#42:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB27_40 Depth=1
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-132(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB27_45
.LBB27_43:                              # %land.lhs.true.116
                                        #   in Loop: Header=BB27_40 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-132(%rbp), %rcx
	cmpq	%rax, %rcx
	jg	.LBB27_45
# BB#44:                                # %cond.true.120
                                        #   in Loop: Header=BB27_40 Depth=1
	movslq	-132(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB27_49
.LBB27_45:                              # %cond.false.124
                                        #   in Loop: Header=BB27_40 Depth=1
	imull	$0, -132(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB27_47
# BB#46:                                # %cond.true.129
                                        #   in Loop: Header=BB27_40 Depth=1
	movslq	-132(%rbp), %rdi
	callq	intbig_to_lisp
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB27_48
.LBB27_47:                              # %cond.false.132
                                        #   in Loop: Header=BB27_40 Depth=1
	movslq	-132(%rbp), %rdi
	callq	uintbig_to_lisp
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB27_48:                              # %cond.end.135
                                        #   in Loop: Header=BB27_40 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB27_49:                              # %cond.end.137
                                        #   in Loop: Header=BB27_40 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#50:                                # %for.inc.139
                                        #   in Loop: Header=BB27_40 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB27_40
.LBB27_51:                              # %for.end.141
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB27_52:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	selection_data_to_lisp_data, .Lfunc_end27-selection_data_to_lisp_data
	.cfi_endproc

	.globl	Fx_get_atom_name
	.align	16, 0x90
	.type	Fx_get_atom_name,@function
Fx_get_atom_name:                       # @Fx_get_atom_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	xorl	%ecx, %ecx
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-33(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	callq	memset
	movl	-72(%rbp), %edi         # 4-byte Reload
	callq	builtin_lisp_symbol
	movq	$-1, %rsi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	cons_to_unsigned
	movq	%rax, -64(%rbp)
	callq	block_input
	movq	-56(%rbp), %rdi
	callq	x_catch_errors
	cmpq	$0, -64(%rbp)
	je	.LBB28_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	XGetAtomName
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	leaq	-33(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB28_3:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdi
	callq	x_had_errors_p
	andb	$1, %al
	movb	%al, -65(%rbp)
	callq	x_uncatch_errors_after_check
	testb	$1, -65(%rbp)
	jne	.LBB28_5
# BB#4:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	build_string
	movq	%rax, -48(%rbp)
.LBB28_5:                               # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB28_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB28_8
# BB#7:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	callq	XFree
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB28_8:                               # %if.end.11
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_10
# BB#9:                                 # %if.then.13
	movq	empty_unibyte_string, %rax
	movq	%rax, -48(%rbp)
.LBB28_10:                              # %if.end.14
	callq	unblock_input
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fx_get_atom_name, .Lfunc_end28-Fx_get_atom_name
	.cfi_endproc

	.globl	Fx_register_dnd_atom
	.align	16, 0x90
	.type	Fx_register_dnd_atom,@function
Fx_register_dnd_atom:                   # @Fx_register_dnd_atom
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	%rax, -32(%rbp)
	jmp	.LBB29_6
.LBB29_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_3
	jmp	.LBB29_4
.LBB29_3:                               # %if.then.4
	callq	block_input
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	%rax, -32(%rbp)
	callq	unblock_input
	jmp	.LBB29_5
.LBB29_4:                               # %if.else.10
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	error
.LBB29_5:                               # %if.end
	jmp	.LBB29_6
.LBB29_6:                               # %if.end.11
	movq	$0, -48(%rbp)
.LBB29_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	792(%rcx), %rax
	jge	.LBB29_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB29_7 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	776(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_10
# BB#9:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB29_15
.LBB29_10:                              # %if.end.18
                                        #   in Loop: Header=BB29_7 Depth=1
	jmp	.LBB29_11
.LBB29_11:                              # %for.inc
                                        #   in Loop: Header=BB29_7 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB29_7
.LBB29_12:                              # %for.end
	movq	-56(%rbp), %rax
	movq	792(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	784(%rcx), %rax
	jne	.LBB29_14
# BB#13:                                # %if.then.22
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-56(%rbp), %rsi
	movq	776(%rsi), %rsi
	movq	-56(%rbp), %rdi
	addq	$784, %rdi              # imm = 0x310
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	xpalloc
	movq	-56(%rbp), %rcx
	movq	%rax, 776(%rcx)
.LBB29_14:                              # %if.end.27
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	792(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 792(%rcx)
	movq	-56(%rbp), %rcx
	movq	776(%rcx), %rcx
	movq	%rax, (%rcx,%rdx,8)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB29_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fx_register_dnd_atom, .Lfunc_end29-Fx_register_dnd_atom
	.cfi_endproc

	.globl	x_handle_dnd_message
	.align	16, 0x90
	.type	x_handle_dnd_message,@function
x_handle_dnd_message:                   # @x_handle_dnd_message
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
	subq	$144, %rsp
	movl	$160, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movslq	%eax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, -80(%rbp)
	movq	$0, -120(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	792(%rcx), %rax
	jge	.LBB30_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	776(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB30_4
# BB#3:                                 # %if.then
	jmp	.LBB30_6
.LBB30_4:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_5
.LBB30_5:                               # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB30_1
.LBB30_6:                               # %for.end
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	792(%rcx), %rax
	jne	.LBB30_8
# BB#7:                                 # %if.then.8
	movb	$0, -1(%rbp)
	jmp	.LBB30_15
.LBB30_8:                               # %if.end.9
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$32, 48(%rax)
	jne	.LBB30_14
# BB#9:                                 # %if.then.13
	movq	$0, -120(%rbp)
.LBB30_10:                              # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$5, -120(%rbp)
	jge	.LBB30_13
# BB#11:                                # %for.body.17
                                        #   in Loop: Header=BB30_10 Depth=1
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx,%rax,8), %rax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, -112(%rbp,%rax,4)
# BB#12:                                # %for.inc.22
                                        #   in Loop: Header=BB30_10 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB30_10
.LBB30_13:                              # %for.end.24
	leaq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB30_14:                              # %if.end.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$18, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	x_atom_to_symbol
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	48(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-24(%rbp), %r8
	movl	48(%r8), %ecx
	movq	-64(%rbp), %r8
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	x_property_data_to_lisp
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	x_relative_mouse_position
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$18, %ecx
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movslq	-68(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movslq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	movb	$1, -1(%rbp)
.LBB30_15:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	x_handle_dnd_message, .Lfunc_end30-x_handle_dnd_message
	.cfi_endproc

	.align	16, 0x90
	.type	x_atom_to_symbol,@function
x_atom_to_symbol:                       # @x_atom_to_symbol
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	subq	$1, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	je	.LBB31_3
	jmp	.LBB31_36
.LBB31_36:                              # %if.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	$2, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB31_4
	jmp	.LBB31_37
.LBB31_37:                              # %if.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	$4, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB31_7
	jmp	.LBB31_38
.LBB31_38:                              # %if.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	$19, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB31_6
	jmp	.LBB31_39
.LBB31_39:                              # %if.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	$31, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB31_5
	jmp	.LBB31_8
.LBB31_3:                               # %sw.bb
	movl	$147, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_4:                               # %sw.bb.2
	movl	$149, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_5:                               # %sw.bb.4
	movl	$150, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_6:                               # %sw.bb.6
	movl	$144, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_7:                               # %sw.bb.8
	movl	$1, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_8:                               # %sw.epilog
	cmpq	$0, -16(%rbp)
	jne	.LBB31_10
# BB#9:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_10:                              # %if.end.12
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	400(%rcx), %rax
	jne	.LBB31_12
# BB#11:                                # %if.then.14
	movl	$2, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_12:                              # %if.end.16
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	408(%rcx), %rax
	jne	.LBB31_14
# BB#13:                                # %if.then.18
	movl	$153, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_14:                              # %if.end.20
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	416(%rcx), %rax
	jne	.LBB31_16
# BB#15:                                # %if.then.22
	movl	$152, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_16:                              # %if.end.24
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	432(%rcx), %rax
	jne	.LBB31_18
# BB#17:                                # %if.then.26
	movl	$4, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_18:                              # %if.end.28
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	440(%rcx), %rax
	jne	.LBB31_20
# BB#19:                                # %if.then.30
	movl	$154, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_20:                              # %if.end.32
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	424(%rcx), %rax
	jne	.LBB31_22
# BB#21:                                # %if.then.34
	movl	$140, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_22:                              # %if.end.36
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	448(%rcx), %rax
	jne	.LBB31_24
# BB#23:                                # %if.then.38
	movl	$145, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_24:                              # %if.end.40
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	456(%rcx), %rax
	jne	.LBB31_26
# BB#25:                                # %if.then.42
	movl	$143, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_26:                              # %if.end.44
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	464(%rcx), %rax
	jne	.LBB31_28
# BB#27:                                # %if.then.46
	movl	$141, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_28:                              # %if.end.48
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	472(%rcx), %rax
	jne	.LBB31_30
# BB#29:                                # %if.then.50
	movl	$151, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_30:                              # %if.end.52
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	480(%rcx), %rax
	jne	.LBB31_32
# BB#31:                                # %if.then.54
	movl	$146, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_32:                              # %if.end.56
	callq	block_input
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	XGetAtomName
	movq	%rax, -32(%rbp)
	callq	unblock_input
	cmpq	$0, -32(%rbp)
	jne	.LBB31_34
# BB#33:                                # %if.then.59
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_35
.LBB31_34:                              # %if.end.61
	movq	-32(%rbp), %rdi
	callq	intern
	movq	%rax, -40(%rbp)
	callq	block_input
	movq	-32(%rbp), %rdi
	callq	XFree
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB31_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	x_atom_to_symbol, .Lfunc_end31-x_atom_to_symbol
	.cfi_endproc

	.globl	Fx_send_client_message
	.align	16, 0x90
	.type	Fx_send_client_message,@function
Fx_send_client_message:                 # @Fx_send_client_message
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	SSDATA
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	x_send_client_event
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fx_send_client_message, .Lfunc_end32-Fx_send_client_message
	.cfi_endproc

	.globl	x_send_client_event
	.align	16, 0x90
	.type	x_send_client_event,@function
x_send_client_event:                    # @x_send_client_event
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -264(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r10d
	andl	$-5, %r10d
	cmpl	$2, %r10d
	jne	.LBB33_2
# BB#1:                                 # %cond.true
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB33_3:                               # %cond.end
	movq	-48(%rbp), %rdi
	callq	CHECK_CONS
	movq	-48(%rbp), %rdi
	callq	x_check_property_data
	cmpl	$-1, %eax
	jne	.LBB33_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
.LBB33_5:                               # %if.end
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$8, %rax
	je	.LBB33_9
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$16, %rax
	je	.LBB33_9
# BB#7:                                 # %land.lhs.true.13
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$32, %rax
	je	.LBB33_9
# BB#8:                                 # %if.then.17
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.LBB33_9:                               # %if.end.18
	movl	$33, -256(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -208(%rbp)
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB33_11
# BB#10:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB33_19
.LBB33_11:                              # %if.then.28
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB33_17
# BB#12:                                # %cond.true.30
	movq	-280(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB33_15
# BB#13:                                # %land.lhs.true.35
	movq	-280(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB33_15
# BB#14:                                # %cond.true.41
	movq	-280(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB33_16
.LBB33_15:                              # %cond.false.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB33_16
.LBB33_16:                              # %cond.end.48
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB33_18
.LBB33_17:                              # %cond.false.49
	movq	-280(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB33_18:                              # %cond.end.52
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB33_33
.LBB33_19:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB33_20
	jmp	.LBB33_27
.LBB33_20:                              # %if.then.55
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB33_22
# BB#21:                                # %if.then.60
	movq	$0, -64(%rbp)
	jmp	.LBB33_26
.LBB33_22:                              # %if.else.61
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB33_24
# BB#23:                                # %if.then.66
	movq	$1, -64(%rbp)
	jmp	.LBB33_25
.LBB33_24:                              # %if.else.67
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	error
.LBB33_25:                              # %if.end.68
	jmp	.LBB33_26
.LBB33_26:                              # %if.end.69
	jmp	.LBB33_32
.LBB33_27:                              # %if.else.70
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB33_29
# BB#28:                                # %lor.lhs.false.73
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB33_30
.LBB33_29:                              # %if.then.78
	movq	$-1, %rsi
	movq	-16(%rbp), %rdi
	callq	cons_to_unsigned
	movq	%rax, -64(%rbp)
	jmp	.LBB33_31
.LBB33_30:                              # %if.else.80
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB33_31:                              # %if.end.81
	jmp	.LBB33_32
.LBB33_32:                              # %if.end.82
	jmp	.LBB33_33
.LBB33_33:                              # %if.end.83
	cmpq	$0, -64(%rbp)
	jne	.LBB33_35
# BB#34:                                # %if.then.86
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB33_35:                              # %if.end.87
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	104(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -265(%rbp)
	callq	block_input
	movl	$1, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	testb	$1, -265(%rbp)
	je	.LBB33_44
# BB#36:                                # %cond.true.100
	movq	-264(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB33_42
# BB#37:                                # %cond.true.105
	movq	-264(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB33_40
# BB#38:                                # %land.lhs.true.110
	movq	-264(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB33_40
# BB#39:                                # %cond.true.116
	movq	-264(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB33_41
.LBB33_40:                              # %cond.false.122
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB33_41
.LBB33_41:                              # %cond.end.123
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB33_43
.LBB33_42:                              # %cond.false.125
	movq	-264(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB33_43:                              # %cond.end.129
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB33_45
.LBB33_44:                              # %cond.false.131
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB33_45:                              # %cond.end.132
	movq	-352(%rbp), %rax        # 8-byte Reload
	leaq	-256(%rbp), %rcx
	xorl	%esi, %esi
	movl	$40, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -224(%rbp)
	movq	%rcx, %rax
	addq	$56, %rax
	movq	%rax, %rdi
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	memset
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-360(%rbp), %rax        # 8-byte Reload
	addq	$56, %rax
	movl	-208(%rbp), %ecx
	movq	%rax, %rdx
	callq	x_fill_property_data
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	x_catch_errors
	leaq	-256(%rbp), %r8
	xorl	%ecx, %ecx
	movl	$16777215, %r9d         # imm = 0xFFFFFF
	movb	-265(%rbp), %r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movb	%r10b, -281(%rbp)
	movb	-265(%rbp), %r10b
	testb	$1, %r10b
	cmovnel	%r9d, %ecx
	movslq	%ecx, %rax
	movq	%rax, -296(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-64(%rbp), %rsi
	movb	-281(%rbp), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %edx
	movq	-296(%rbp), %rcx
	callq	XSendEvent
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	XFlush
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	x_uncatch_errors
	callq	unblock_input
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end33:
	.size	x_send_client_event, .Lfunc_end33-x_send_client_event
	.cfi_endproc

	.globl	syms_of_xselect
	.align	16, 0x90
	.type	syms_of_xselect,@function
syms_of_xselect:                        # @syms_of_xselect
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
	movabsq	$Sx_get_selection_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_own_selection_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_disown_selection_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_selection_owner_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_selection_exists_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_get_atom_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_send_client_message, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_register_dnd_atom, %rax
	movq	%rax, %rdi
	callq	defsubr
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movabsq	$reading_selection_reply, %rdi
	movq	%rax, reading_selection_reply
	callq	staticpro
	xorl	%edi, %edi
	movq	$0, reading_selection_window
	movq	$0, reading_which_selection
	movq	$0, property_change_wait_list
	movl	$0, prop_location_identifier
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movabsq	$property_change_reply, %rdi
	movq	%rax, property_change_reply
	callq	staticpro
	movq	$0, converted_selections
	movq	$0, conversion_fail_tag
# BB#1:                                 # %do.body
	movabsq	$syms_of_xselect.o_fwd, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$globals, %rax
	addq	$2120, %rax             # imm = 0x848
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2120
# BB#3:                                 # %do.body.7
	movabsq	$syms_of_xselect.o_fwd.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$globals, %rax
	addq	$2784, %rax             # imm = 0xAE0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2784
# BB#5:                                 # %do.body.10
	movabsq	$syms_of_xselect.o_fwd.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$globals, %rax
	addq	$2880, %rax             # imm = 0xB40
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2880
# BB#7:                                 # %do.body.13
	movabsq	$syms_of_xselect.o_fwd.19, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$globals, %rax
	addq	$2864, %rax             # imm = 0xB30
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.14
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+2864
# BB#9:                                 # %do.body.16
	movabsq	$syms_of_xselect.i_fwd, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$globals, %rax
	addq	$3352, %rax             # imm = 0xD18
	movq	%rax, %rdx
	callq	defvar_int
# BB#10:                                # %do.end.17
	movq	$0, globals+3352
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	syms_of_xselect, .Lfunc_end34-syms_of_xselect
	.cfi_endproc

	.align	16, 0x90
	.type	selection_input_event_equal,@function
selection_input_event_equal:            # @selection_input_event_equal
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movzwl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzwl	(%rsi), %edx
	cmpl	%edx, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB35_7
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	8(%rsi), %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB35_7
# BB#2:                                 # %land.lhs.true.5
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB35_7
# BB#3:                                 # %land.lhs.true.8
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	24(%rsi), %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB35_7
# BB#4:                                 # %land.lhs.true.11
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	32(%rsi), %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB35_7
# BB#5:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB35_7
# BB#6:                                 # %land.rhs
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	sete	%dl
	movb	%dl, -17(%rbp)          # 1-byte Spill
.LBB35_7:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	selection_input_event_equal, .Lfunc_end35-selection_input_event_equal
	.cfi_endproc

	.align	16, 0x90
	.type	x_decline_selection_request,@function
x_decline_selection_request:            # @x_decline_selection_request
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
	subq	$224, %rsp
	leaq	-200(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	$31, (%rax)
	movq	-8(%rbp), %rdi
	callq	SELECTION_EVENT_DISPLAY
	movq	-208(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-208(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-208(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-208(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-208(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-208(%rbp), %rax
	movq	$0, 56(%rax)
	callq	block_input
	movq	-208(%rbp), %rax
	movq	24(%rax), %rdi
	callq	x_catch_errors
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-200(%rbp), %r8
	movq	-208(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-208(%rbp), %rax
	movq	32(%rax), %rsi
	callq	XSendEvent
	movq	-208(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	XFlush
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	x_uncatch_errors
	callq	unblock_input
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	x_decline_selection_request, .Lfunc_end36-x_decline_selection_request
	.cfi_endproc

	.align	16, 0x90
	.type	x_selection_request_lisp_error,@function
x_selection_request_lisp_error:         # @x_selection_request_lisp_error
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
	movq	converted_selections, %rax
	movq	%rax, -8(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB37_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	testb	$1, 32(%rax)
	jne	.LBB37_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	xfree
.LBB37_5:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_1
.LBB37_7:                               # %for.end
	movq	$0, converted_selections
	cmpq	$0, x_selection_current_request
	je	.LBB37_10
# BB#8:                                 # %land.lhs.true.5
	movq	selection_request_dpyinfo, %rax
	cmpq	$0, 16(%rax)
	je	.LBB37_10
# BB#9:                                 # %if.then.7
	movq	x_selection_current_request, %rdi
	callq	x_decline_selection_request
.LBB37_10:                              # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	x_selection_request_lisp_error, .Lfunc_end37-x_selection_request_lisp_error
	.cfi_endproc

	.align	16, 0x90
	.type	x_start_queuing_selection_requests,@function
x_start_queuing_selection_requests:     # @x_start_queuing_selection_requests
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
	cmpl	$0, x_queue_selection_requests
	je	.LBB38_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB38_2:                               # %if.end
	movl	x_queue_selection_requests, %eax
	addl	$1, %eax
	movl	%eax, x_queue_selection_requests
	popq	%rbp
	retq
.Lfunc_end38:
	.size	x_start_queuing_selection_requests, .Lfunc_end38-x_start_queuing_selection_requests
	.cfi_endproc

	.align	16, 0x90
	.type	x_stop_queuing_selection_requests,@function
x_stop_queuing_selection_requests:      # @x_stop_queuing_selection_requests
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
	movl	x_queue_selection_requests, %eax
	addl	$-1, %eax
	movl	%eax, x_queue_selection_requests
.LBB39_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, selection_queue
	je	.LBB39_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	selection_queue, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	kbd_buffer_unget_event
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, selection_queue
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	jmp	.LBB39_1
.LBB39_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	x_stop_queuing_selection_requests, .Lfunc_end39-x_stop_queuing_selection_requests
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_window_property_as_lisp_data,@function
x_get_window_property_as_lisp_data:     # @x_get_window_property_as_lisp_data
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp123:
	.cfi_offset %rbx, -24
	leaq	-80(%rbp), %rax
	leaq	-88(%rbp), %r9
	leaq	-56(%rbp), %r10
	leaq	-60(%rbp), %r11
	leaq	-72(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rbx, 8(%rsp)
	callq	x_get_window_property
	cmpq	$0, -80(%rbp)
	jne	.LBB40_7
# BB#1:                                 # %if.then
	callq	block_input
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	XGetSelectionOwner
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -105(%rbp)
	callq	unblock_input
	testb	$1, -105(%rbp)
	je	.LBB40_6
# BB#2:                                 # %if.then.3
	cmpq	$0, -56(%rbp)
	je	.LBB40_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	x_atom_to_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB40_5
.LBB40_4:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB40_5:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.22, %rdi
	movq	%rax, %rsi
	callq	signal_error
.LBB40_6:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	x_atom_to_symbol
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	signal_error
.LBB40_7:                               # %if.end
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	456(%rcx), %rax
	jne	.LBB40_9
# BB#8:                                 # %if.then.9
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -112(%rbp)
	callq	block_input
	movq	-80(%rbp), %rdi
	callq	xfree
	callq	unblock_input
	leaq	-80(%rbp), %r9
	leaq	-88(%rbp), %rax
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %r10
	movq	-32(%rbp), %r11
	movq	-40(%rbp), %rcx
	movl	-112(%rbp), %ebx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movl	%ebx, %r8d
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	callq	receive_incremental_selection
.LBB40_9:                               # %if.end.10
	callq	block_input
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	XDeleteProperty
	movq	-104(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	XFlush
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	unblock_input
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %r8d
	callq	selection_data_to_lisp_data
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	xfree
	movq	-96(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end40:
	.size	x_get_window_property_as_lisp_data, .Lfunc_end40-x_get_window_property_as_lisp_data
	.cfi_endproc

	.align	16, 0x90
	.type	x_convert_selection,@function
x_convert_selection:                    # @x_convert_selection
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
	subq	$96, %rsp
	movb	%cl, %al
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	x_get_local_selection
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_3
# BB#1:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_6
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_6
.LBB41_3:                               # %if.then
	testb	$1, -33(%rbp)
	je	.LBB41_5
# BB#4:                                 # %if.then.7
	movl	$64, %eax
	movl	%eax, %edi
	callq	xmalloc
	movabsq	$conversion_fail_tag, %rdi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, (%rax)
	movq	-64(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-64(%rbp), %rax
	movl	$32, 16(%rax)
	movq	-64(%rbp), %rax
	movq	$4, 24(%rax)
	movq	-64(%rbp), %rax
	movb	$1, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-64(%rbp), %rax
	movq	$0, 48(%rax)
	movq	converted_selections, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-64(%rbp), %rax
	movq	%rax, converted_selections
.LBB41_5:                               # %if.end
	movb	$0, -1(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.end.10
	movl	$64, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movb	$1, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-64(%rbp), %rax
	movq	$0, 48(%rax)
	movq	converted_selections, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-64(%rbp), %rax
	movq	%rax, converted_selections
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	lisp_data_to_selection_data
	movb	$1, -1(%rbp)
.LBB41_7:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	x_convert_selection, .Lfunc_end41-x_convert_selection
	.cfi_endproc

	.align	16, 0x90
	.type	x_reply_selection_request,@function
x_reply_selection_request:              # @x_reply_selection_request
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
	subq	$416, %rsp              # imm = 0x1A0
	leaq	-208(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, -216(%rbp)
	movq	-8(%rbp), %rdi
	callq	SELECTION_EVENT_DISPLAY
	movq	%rax, -224(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rdi
	callq	selection_quantum
	movl	%eax, -244(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -256(%rbp)
	movq	-216(%rbp), %rax
	movl	$31, (%rax)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-232(%rbp), %rax
	movq	-216(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-216(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-216(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-216(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-216(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-216(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movq	-216(%rbp), %rax
	movq	48(%rax), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB42_2:                               # %if.end
	callq	block_input
	movabsq	$x_catch_errors_unwind, %rdi
	callq	record_unwind_protect_void
	movq	-224(%rbp), %rdi
	callq	x_catch_errors
	movq	converted_selections, %rdi
	movq	%rdi, -264(%rbp)
.LBB42_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -264(%rbp)
	je	.LBB42_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB42_3 Depth=1
	movq	-264(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB42_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB42_3 Depth=1
	jmp	.LBB42_13
.LBB42_6:                               # %if.end.15
                                        #   in Loop: Header=BB42_3 Depth=1
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rax
	movl	16(%rax), %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rax
	imulq	-240(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movslq	-244(%rbp), %rdx
	cmpq	%rdx, %rax
	jg	.LBB42_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB42_3 Depth=1
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-264(%rbp), %rax
	movl	16(%rax), %r8d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	-264(%rbp), %r10
	movq	8(%r10), %r10
	movl	%r10d, %r11d
	movq	%rax, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	XChangeProperty
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB42_12
.LBB42_8:                               # %if.else
                                        #   in Loop: Header=BB42_3 Depth=1
	movl	$1, %ecx
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	40(%rax), %rdx
	callq	expect_property_change
	movq	-264(%rbp), %rdx
	movq	%rax, 48(%rdx)
	cmpq	$2147483647, -240(%rbp) # imm = 0x7FFFFFFF
	jge	.LBB42_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB42_3 Depth=1
	movq	-240(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB42_11
.LBB42_10:                              # %cond.false
                                        #   in Loop: Header=BB42_3 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB42_11
.LBB42_11:                              # %cond.end
                                        #   in Loop: Header=BB42_3 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %ecx
	leaq	-272(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %r10
	movq	456(%r10), %r10
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	callq	XChangeProperty
	movl	$4194304, %r8d          # imm = 0x400000
	movl	%r8d, %edx
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	XSelectInput
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB42_12:                              # %if.end.33
                                        #   in Loop: Header=BB42_3 Depth=1
	jmp	.LBB42_13
.LBB42_13:                              # %for.inc
                                        #   in Loop: Header=BB42_3 Depth=1
	movq	-264(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -264(%rbp)
	jmp	.LBB42_3
.LBB42_14:                              # %for.end
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-208(%rbp), %r8
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	XSendEvent
	movq	-224(%rbp), %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	XFlush
	movq	converted_selections, %rcx
	movq	%rcx, -264(%rbp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB42_15:                              # %for.cond.36
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_21 Depth 2
	cmpq	$0, -264(%rbp)
	je	.LBB42_36
# BB#16:                                # %for.body.38
                                        #   in Loop: Header=BB42_15 Depth=1
	movq	-264(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB42_34
# BB#17:                                # %if.then.41
                                        #   in Loop: Header=BB42_15 Depth=1
	movl	$8, %eax
	movq	-264(%rbp), %rcx
	movl	16(%rcx), %edx
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-328(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -276(%rbp)
	movq	-224(%rbp), %rdi
	callq	x_had_errors_p
	andb	$1, %al
	movb	%al, -277(%rbp)
	movq	-264(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	set_property_change_object
	callq	unblock_input
	movq	-264(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -240(%rbp)
	movslq	-276(%rbp), %rcx
	imulq	-240(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	testb	$1, -277(%rbp)
	jne	.LBB42_19
# BB#18:                                # %if.then.49
                                        #   in Loop: Header=BB42_15 Depth=1
	movq	-264(%rbp), %rax
	movq	48(%rax), %rdi
	callq	wait_for_property_change
	jmp	.LBB42_20
.LBB42_19:                              # %if.else.51
                                        #   in Loop: Header=BB42_15 Depth=1
	movq	-264(%rbp), %rax
	movq	48(%rax), %rdi
	callq	unexpect_property_change
.LBB42_20:                              # %if.end.53
                                        #   in Loop: Header=BB42_15 Depth=1
	jmp	.LBB42_21
.LBB42_21:                              # %while.cond
                                        #   Parent Loop BB42_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -240(%rbp)
	je	.LBB42_31
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB42_21 Depth=2
	movq	-240(%rbp), %rax
	movslq	-244(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB42_24
# BB#23:                                # %cond.true.58
                                        #   in Loop: Header=BB42_21 Depth=2
	movq	-240(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB42_25
.LBB42_24:                              # %cond.false.59
                                        #   in Loop: Header=BB42_21 Depth=2
	movslq	-244(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB42_25:                              # %cond.end.61
                                        #   in Loop: Header=BB42_21 Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	movslq	-276(%rbp), %rcx
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movl	%esi, -284(%rbp)
	callq	block_input
	movl	$1, %ecx
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	callq	expect_property_change
	movl	$2, %r9d
	movq	-264(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-264(%rbp), %rax
	movl	16(%rax), %r8d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movl	-284(%rbp), %r10d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	XChangeProperty
	movl	-284(%rbp), %r8d
	imull	-276(%rbp), %r8d
	movslq	%r8d, %rcx
	movq	-240(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -240(%rbp)
	movslq	-284(%rbp), %rcx
	movq	-264(%rbp), %rdx
	cmpl	$32, 16(%rdx)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jne	.LBB42_27
# BB#26:                                # %cond.true.80
                                        #   in Loop: Header=BB42_21 Depth=2
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB42_28
.LBB42_27:                              # %cond.false.81
                                        #   in Loop: Header=BB42_21 Depth=2
	movslq	-276(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB42_28:                              # %cond.end.83
                                        #   in Loop: Header=BB42_21 Depth=2
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	imulq	%rax, %rcx
	movq	-264(%rbp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
	movq	-224(%rbp), %rdi
	callq	XFlush
	movq	-224(%rbp), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	x_had_errors_p
	andb	$1, %al
	movb	%al, -277(%rbp)
	movq	-264(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	set_property_change_object
	callq	unblock_input
	testb	$1, -277(%rbp)
	je	.LBB42_30
# BB#29:                                # %if.then.92
                                        #   in Loop: Header=BB42_15 Depth=1
	jmp	.LBB42_31
.LBB42_30:                              # %if.end.93
                                        #   in Loop: Header=BB42_21 Depth=2
	movq	-264(%rbp), %rax
	movq	48(%rax), %rdi
	callq	wait_for_property_change
	jmp	.LBB42_21
.LBB42_31:                              # %while.end
                                        #   in Loop: Header=BB42_15 Depth=1
	callq	block_input
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	waiting_for_other_props_on_window
	testb	$1, %al
	jne	.LBB42_33
# BB#32:                                # %if.then.96
                                        #   in Loop: Header=BB42_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	XSelectInput
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB42_33:                              # %if.end.98
                                        #   in Loop: Header=BB42_15 Depth=1
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-264(%rbp), %rax
	movl	16(%rax), %r8d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	callq	XChangeProperty
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB42_34:                              # %if.end.104
                                        #   in Loop: Header=BB42_15 Depth=1
	jmp	.LBB42_35
.LBB42_35:                              # %for.inc.105
                                        #   in Loop: Header=BB42_15 Depth=1
	movq	-264(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -264(%rbp)
	jmp	.LBB42_15
.LBB42_36:                              # %for.end.107
	jmp	.LBB42_37
.LBB42_37:                              # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-224(%rbp), %rdi
	callq	XSync
	movl	%eax, -376(%rbp)        # 4-byte Spill
# BB#38:                                # %do.end
	callq	unblock_input
	callq	block_input
	xorl	%edi, %edi
	movq	-256(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	unblock_input
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end42:
	.size	x_reply_selection_request, .Lfunc_end42-x_reply_selection_request
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_window_property,@function
x_get_window_property:                  # @x_get_window_property
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$304, %rsp              # imm = 0x130
.Ltmp133:
	.cfi_offset %rbx, -48
.Ltmp134:
	.cfi_offset %r12, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	-40(%rbp), %rdi
	callq	selection_quantum
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movabsq	$9223372036854775806, %rdx # imm = 0x7FFFFFFFFFFFFFFE
	movl	%eax, -144(%rbp)
	movq	$4, -152(%rbp)
	movq	%rdx, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	divq	-152(%rbp)
	cmpq	%rcx, %rax
	jae	.LBB43_2
# BB#1:                                 # %cond.true
	movabsq	$9223372036854775806, %rax # imm = 0x7FFFFFFFFFFFFFFE
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB43_3
.LBB43_2:                               # %cond.false
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	-152(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB43_3:                               # %cond.end
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	callq	block_input
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%r9d, %r9d
	leaq	-112(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	-96(%rbp), %r14
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB43_5
# BB#4:                                 # %if.then
	jmp	.LBB43_28
.LBB43_5:                               # %if.end
	movq	-136(%rbp), %rdi
	callq	XFree
	movq	-80(%rbp), %rdi
	cmpq	$0, (%rdi)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB43_7
# BB#6:                                 # %lor.lhs.false
	movq	-88(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB43_8
.LBB43_7:                               # %if.then.6
	jmp	.LBB43_28
.LBB43_8:                               # %if.end.7
	movq	-160(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jae	.LBB43_10
# BB#9:                                 # %if.then.9
	jmp	.LBB43_29
.LBB43_10:                              # %if.end.10
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -128(%rbp)
.LBB43_11:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_21 Depth 2
	cmpq	$0, -112(%rbp)
	je	.LBB43_27
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB43_11 Depth=1
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-112(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	movl	$4, %eax
	movl	$4, %edi
	movl	%edi, %r8d
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-120(%rbp), %rbx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movq	%rbx, %rax
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	cqto
	idivq	%r8
	movl	-144(%rbp), %r14d
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	%r14d, %eax
	cltd
	movl	-248(%rbp), %r14d       # 4-byte Reload
	idivl	%r14d
	movslq	%eax, %r8
	movq	-80(%rbp), %rbx
	movq	-88(%rbp), %r15
	movq	-96(%rbp), %r12
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%r11, %rdx
	movq	-264(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	$0, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	-256(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	-272(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB43_14
# BB#13:                                # %if.then.17
	jmp	.LBB43_27
.LBB43_14:                              # %if.end.18
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	sarl	$3, %ecx
	movl	%ecx, -172(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movslq	-172(%rbp), %rax
	imulq	-168(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-104(%rbp), %rax
	subq	-120(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jge	.LBB43_19
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-160(%rbp), %rax
	subq	-120(%rbp), %rax
	subq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jl	.LBB43_17
# BB#16:                                # %lor.lhs.false.28
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-192(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jae	.LBB43_18
.LBB43_17:                              # %if.then.31
	jmp	.LBB43_29
.LBB43_18:                              # %if.end.32
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-120(%rbp), %rax
	addq	-168(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rdi
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB43_19:                              # %if.end.37
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$32, (%rax)
	jne	.LBB43_25
# BB#20:                                # %if.then.40
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-128(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	$0, -200(%rbp)
.LBB43_21:                              # %for.cond
                                        #   Parent Loop BB43_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	movq	-96(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB43_24
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB43_21 Depth=2
	movq	-200(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB43_21 Depth=2
	movq	-200(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB43_21
.LBB43_24:                              # %for.end
                                        #   in Loop: Header=BB43_11 Depth=1
	jmp	.LBB43_26
.LBB43_25:                              # %if.else
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-128(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	-136(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB43_26:                              # %if.end.46
                                        #   in Loop: Header=BB43_11 Depth=1
	movq	-168(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rdi
	callq	XFree
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB43_11
.LBB43_27:                              # %while.end
	movq	-40(%rbp), %rdi
	callq	XFlush
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movb	$0, (%rcx,%rdi)
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB43_28:                              # %done
	callq	unblock_input
	movq	-128(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_29:                              # %size_overflow
	cmpq	$0, -128(%rbp)
	je	.LBB43_31
# BB#30:                                # %if.then.52
	movq	-128(%rbp), %rdi
	callq	xfree
.LBB43_31:                              # %if.end.53
	callq	unblock_input
	movq	$-1, %rdi
	callq	memory_full
.Lfunc_end43:
	.size	x_get_window_property, .Lfunc_end43-x_get_window_property
	.cfi_endproc

	.align	16, 0x90
	.type	receive_incremental_selection,@function
receive_incremental_selection:          # @receive_incremental_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp140:
	.cfi_offset %rbx, -32
.Ltmp141:
	.cfi_offset %r14, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movabsq	$9223372036854775807, %r14 # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	-52(%rbp), %r8d
	movl	%r8d, %eax
	cmpq	%rax, %r14
	jae	.LBB44_2
# BB#1:                                 # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB44_2:                               # %if.end
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-52(%rbp), %ecx
	movl	%ecx, %eax
	movq	-72(%rbp), %rdi
	movq	%rax, (%rdi)
	callq	block_input
	movl	$6520957, %ecx          # imm = 0x63807D
	movl	%ecx, %edx
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSelectInput
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	XDeleteProperty
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	expect_property_change
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rdi
	callq	XFlush
	movq	-112(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	set_property_change_object
	callq	unblock_input
.LBB44_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rdi
	callq	wait_for_property_change
	leaq	-128(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	x_get_window_property
	cmpq	$0, -136(%rbp)
	jne	.LBB44_7
# BB#4:                                 # %if.then.11
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	waiting_for_other_props_on_window
	testb	$1, %al
	jne	.LBB44_6
# BB#5:                                 # %if.then.13
	movl	$2326653, %eax          # imm = 0x23807D
	movl	%eax, %edx
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSelectInput
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB44_6:                               # %if.end.15
	movq	-128(%rbp), %rdi
	callq	xfree
	jmp	.LBB44_10
.LBB44_7:                               # %if.end.16
                                        #   in Loop: Header=BB44_3 Depth=1
	callq	block_input
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	XDeleteProperty
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	expect_property_change
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	set_property_change_object
	movq	-120(%rbp), %rdi
	callq	XFlush
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	unblock_input
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	-104(%rbp), %rdx
	cmpq	-136(%rbp), %rdx
	jge	.LBB44_9
# BB#8:                                 # %if.then.22
                                        #   in Loop: Header=BB44_3 Depth=1
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-72(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %r9
	movq	(%r9), %r9
	subq	-104(%rbp), %r9
	subq	%r9, %rdx
	callq	xpalloc
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB44_9:                               # %if.end.26
                                        #   in Loop: Header=BB44_3 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	-104(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-136(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rdi
	callq	xfree
	jmp	.LBB44_3
.LBB44_10:                              # %while.end
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end44:
	.size	receive_incremental_selection, .Lfunc_end44-receive_incremental_selection
	.cfi_endproc

	.align	16, 0x90
	.type	selection_quantum,@function
selection_quantum:                      # @selection_quantum
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMaxRequestSize
	movq	%rax, -16(%rbp)
	cmpq	$4194328, -16(%rbp)     # imm = 0x400018
	jge	.LBB45_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	subq	$25, %rax
	shlq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB45_3
.LBB45_2:                               # %cond.false
	movl	$16777215, %eax         # imm = 0xFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB45_3
.LBB45_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	selection_quantum, .Lfunc_end45-selection_quantum
	.cfi_endproc

	.align	16, 0x90
	.type	expect_property_change,@function
expect_property_change:                 # @expect_property_change
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
	subq	$48, %rsp
	movl	$48, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movl	prop_location_identifier, %ecx
	addl	$1, %ecx
	movl	%ecx, prop_location_identifier
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	property_change_wait_list, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	movb	$0, 36(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, property_change_wait_list
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	expect_property_change, .Lfunc_end46-expect_property_change
	.cfi_endproc

	.align	16, 0x90
	.type	set_property_change_object,@function
set_property_change_object:             # @set_property_change_object
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	input_blocked_p
	testb	$1, %al
	jne	.LBB47_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB47_2:                               # %if.end
	xorl	%edi, %edi
	movq	property_change_reply, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
	movq	-8(%rbp), %rax
	movq	%rax, property_change_reply_object
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	set_property_change_object, .Lfunc_end47-set_property_change_object
	.cfi_endproc

	.align	16, 0x90
	.type	wait_for_property_change,@function
wait_for_property_change:               # @wait_for_property_change
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$wait_for_property_change_unwind, %rdi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-8(%rbp), %rax
	testb	$1, 36(%rax)
	jne	.LBB48_7
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	globals+3352, %rcx
	jle	.LBB48_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB48_4
.LBB48_3:                               # %cond.false
	movq	globals+3352, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB48_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	$1000, %edx             # imm = 0x3E8
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cqto
	idivq	%rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cqto
	idivq	%rsi
	imulq	$1000000, %rdx, %rdx    # imm = 0xF4240
	movl	%edx, %edi
	movl	%edi, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	property_change_reply, %r8
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	xorl	%edi, %edi
	movq	property_change_reply, %r8
	subq	$3, %r8
	movq	(%r8), %r8
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %r8          # 8-byte Reload
	cmpq	%rax, %r8
	jne	.LBB48_6
# BB#5:                                 # %if.then.5
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	error
.LBB48_6:                               # %if.end
	jmp	.LBB48_7
.LBB48_7:                               # %if.end.6
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	wait_for_property_change, .Lfunc_end48-wait_for_property_change
	.cfi_endproc

	.align	16, 0x90
	.type	waiting_for_other_props_on_window,@function
waiting_for_other_props_on_window:      # @waiting_for_other_props_on_window
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	property_change_wait_list, %rsi
	movq	%rsi, -32(%rbp)
.LBB49_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB49_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB49_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB49_5
# BB#4:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB49_8
.LBB49_5:                               # %if.end
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_6
.LBB49_6:                               # %for.inc
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB49_1
.LBB49_7:                               # %for.end
	movb	$0, -1(%rbp)
.LBB49_8:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end49:
	.size	waiting_for_other_props_on_window, .Lfunc_end49-waiting_for_other_props_on_window
	.cfi_endproc

	.align	16, 0x90
	.type	wait_for_property_change_unwind,@function
wait_for_property_change_unwind:        # @wait_for_property_change_unwind
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	unexpect_property_change
	movq	-16(%rbp), %rdi
	cmpq	property_change_reply_object, %rdi
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	$0, property_change_reply_object
.LBB50_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	wait_for_property_change_unwind, .Lfunc_end50-wait_for_property_change_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	unexpect_property_change,@function
unexpect_property_change:               # @unexpect_property_change
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
	subq	$32, %rsp
	movabsq	$property_change_wait_list, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -24(%rbp)
	movq	property_change_wait_list, %rax
	movq	%rax, -16(%rbp)
.LBB51_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB51_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB51_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	jmp	.LBB51_7
.LBB51_4:                               # %if.else
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -24(%rbp)
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_6
.LBB51_6:                               # %for.inc
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB51_1
.LBB51_7:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	unexpect_property_change, .Lfunc_end51-unexpect_property_change
	.cfi_endproc

	.align	16, 0x90
	.type	lisp_data_to_selection_data,@function
lisp_data_to_selection_data:            # @lisp_data_to_selection_data
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
	subq	$240, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB52_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB52_6
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_5
# BB#3:                                 # %land.lhs.true.13
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_5
# BB#4:                                 # %if.then.20
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB52_5:                               # %if.end
	jmp	.LBB52_6
.LBB52_6:                               # %if.end.23
	movl	$146, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_8
# BB#7:                                 # %lor.lhs.false
	movl	$146, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_9
.LBB52_8:                               # %if.then.30
	movl	$146, %edi
	movq	-24(%rbp), %rax
	movl	$32, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB52_70
.LBB52_9:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB52_10
	jmp	.LBB52_15
.LBB52_10:                              # %if.then.33
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB52_12
# BB#11:                                # %if.then.38
	movabsq	$.L.str.25, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB52_12:                              # %if.end.39
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_14
# BB#13:                                # %if.then.43
	movl	$150, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB52_14:                              # %if.end.45
	movq	-24(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movb	$1, 32(%rax)
	jmp	.LBB52_69
.LBB52_15:                              # %if.else.52
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB52_19
# BB#16:                                # %if.then.57
	movl	$9, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movl	$32, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, 8(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	symbol_to_x_atom
	xorl	%edi, %edi
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB52_18
# BB#17:                                # %if.then.68
	movl	$1, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB52_18:                              # %if.end.70
	jmp	.LBB52_68
.LBB52_19:                              # %if.else.71
	movq	$-32768, %rdi           # imm = 0xFFFFFFFFFFFF8000
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB52_20
	jmp	.LBB52_23
.LBB52_20:                              # %if.then.73
	movl	$3, %eax
	movl	%eax, %edi
	callq	xmalloc
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	$16, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, 2(%rax)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %dx
	movq	-64(%rbp), %rax
	movw	%dx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_22
# BB#21:                                # %if.then.85
	movl	$144, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB52_22:                              # %if.end.87
	jmp	.LBB52_67
.LBB52_23:                              # %if.else.88
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB52_29
# BB#24:                                # %lor.lhs.false.94
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_32
# BB#25:                                # %land.lhs.true.99
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB52_32
# BB#26:                                # %land.lhs.true.107
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB52_29
# BB#27:                                # %lor.lhs.false.116
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_32
# BB#28:                                # %land.lhs.true.124
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB52_32
.LBB52_29:                              # %if.then.135
	movl	$9, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movl	$32, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	cons_to_x_long
	xorl	%edi, %edi
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_31
# BB#30:                                # %if.then.147
	movl	$144, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB52_31:                              # %if.end.149
	jmp	.LBB52_66
.LBB52_32:                              # %if.else.150
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB52_33
	jmp	.LBB52_64
.LBB52_33:                              # %if.then.152
	movq	-16(%rbp), %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB52_47
# BB#34:                                # %if.then.160
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_36
# BB#35:                                # %if.then.165
	movl	$1, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB52_36:                              # %if.end.167
	movq	$0, -88(%rbp)
.LBB52_37:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB52_42
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB52_37 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB52_40
# BB#39:                                # %if.then.175
	movabsq	$.L.str.26, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB52_40:                              # %if.end.176
                                        #   in Loop: Header=BB52_37 Depth=1
	jmp	.LBB52_41
.LBB52_41:                              # %for.inc
                                        #   in Loop: Header=BB52_37 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB52_37
.LBB52_42:                              # %for.end
	movl	$8, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	xnmalloc
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movl	$32, 16(%rax)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	$0, -88(%rbp)
.LBB52_43:                              # %for.cond.181
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB52_46
# BB#44:                                # %for.body.184
                                        #   in Loop: Header=BB52_43 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	symbol_to_x_atom
	movq	-88(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#45:                                # %for.inc.188
                                        #   in Loop: Header=BB52_43 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB52_43
.LBB52_46:                              # %for.end.190
	jmp	.LBB52_63
.LBB52_47:                              # %if.else.191
	xorl	%edi, %edi
	movl	$16, -116(%rbp)
	movl	$2, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_49
# BB#48:                                # %if.then.198
	movl	$144, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB52_49:                              # %if.end.200
	movq	$0, -88(%rbp)
.LBB52_50:                              # %for.cond.201
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB52_55
# BB#51:                                # %for.body.204
                                        #   in Loop: Header=BB52_50 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	movq	$-32768, %rdi           # imm = 0xFFFFFFFFFFFF8000
	movl	$32767, %ecx            # imm = 0x7FFF
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB52_53
# BB#52:                                # %if.then.207
	movl	$8, -120(%rbp)
	movl	$32, -116(%rbp)
	jmp	.LBB52_55
.LBB52_53:                              # %if.end.208
                                        #   in Loop: Header=BB52_50 Depth=1
	jmp	.LBB52_54
.LBB52_54:                              # %for.inc.209
                                        #   in Loop: Header=BB52_50 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB52_50
.LBB52_55:                              # %for.end.211
	movq	-96(%rbp), %rdi
	movslq	-120(%rbp), %rsi
	callq	xnmalloc
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-116(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	$0, -88(%rbp)
.LBB52_56:                              # %for.cond.217
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB52_62
# BB#57:                                # %for.body.220
                                        #   in Loop: Header=BB52_56 Depth=1
	cmpl	$32, -116(%rbp)
	jne	.LBB52_59
# BB#58:                                # %if.then.223
                                        #   in Loop: Header=BB52_56 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	cons_to_x_long
	movq	-88(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB52_60
.LBB52_59:                              # %if.else.227
                                        #   in Loop: Header=BB52_56 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	movw	%ax, %cx
	movq	-88(%rbp), %rax
	movq	-144(%rbp), %rsi
	movw	%cx, (%rsi,%rax,2)
.LBB52_60:                              # %if.end.232
                                        #   in Loop: Header=BB52_56 Depth=1
	jmp	.LBB52_61
.LBB52_61:                              # %for.inc.233
                                        #   in Loop: Header=BB52_56 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB52_56
.LBB52_62:                              # %for.end.235
	jmp	.LBB52_63
.LBB52_63:                              # %if.end.236
	jmp	.LBB52_65
.LBB52_64:                              # %if.else.237
	movabsq	$.L.str.27, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB52_65:                              # %if.end.238
	jmp	.LBB52_66
.LBB52_66:                              # %if.end.239
	jmp	.LBB52_67
.LBB52_67:                              # %if.end.240
	jmp	.LBB52_68
.LBB52_68:                              # %if.end.241
	jmp	.LBB52_69
.LBB52_69:                              # %if.end.242
	jmp	.LBB52_70
.LBB52_70:                              # %if.end.243
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	symbol_to_x_atom
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	lisp_data_to_selection_data, .Lfunc_end52-lisp_data_to_selection_data
	.cfi_endproc

	.align	16, 0x90
	.type	x_catch_errors_unwind,@function
x_catch_errors_unwind:                  # @x_catch_errors_unwind
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
	callq	block_input
	callq	x_uncatch_errors
	callq	unblock_input
	popq	%rbp
	retq
.Lfunc_end53:
	.size	x_catch_errors_unwind, .Lfunc_end53-x_catch_errors_unwind
	.cfi_endproc

	.type	x_queue_selection_requests,@object # @x_queue_selection_requests
	.local	x_queue_selection_requests
	.comm	x_queue_selection_requests,4,4
	.type	property_change_wait_list,@object # @property_change_wait_list
	.local	property_change_wait_list
	.comm	property_change_wait_list,8,8
	.type	property_change_reply_object,@object # @property_change_reply_object
	.local	property_change_reply_object
	.comm	property_change_reply_object,8,8
	.type	property_change_reply,@object # @property_change_reply
	.local	property_change_reply
	.comm	property_change_reply,8,8
	.type	reading_selection_window,@object # @reading_selection_window
	.local	reading_selection_window
	.comm	reading_selection_window,8,8
	.type	reading_which_selection,@object # @reading_which_selection
	.local	reading_which_selection
	.comm	reading_which_selection,8,8
	.type	reading_selection_reply,@object # @reading_selection_reply
	.local	reading_selection_reply
	.comm	reading_selection_reply,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"X selection unavailable for this frame"
	.size	.L.str, 39

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"VALUE may not be nil"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Retrieving MULTIPLE selections is currently unimplemented"
	.size	.L.str.2, 58

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Saving clipboard to X clipboard manager..."
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Wrong type, must be string, number or cons"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Out of 'char' range"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Out of 'short' range"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ATOM must be a symbol or a string"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Bad data in VALUES, must be number, cons or string"
	.size	.L.str.8, 51

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"FORMAT must be one of 8, 16 or 32"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"PointerWindow"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"InputFocus"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"DEST as a string must be one of PointerWindow or InputFocus"
	.size	.L.str.12, 60

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DEST must be a frame, nil, string, number or cons"
	.size	.L.str.13, 50

	.type	prop_location_identifier,@object # @prop_location_identifier
	.local	prop_location_identifier
	.comm	prop_location_identifier,4,4
	.type	converted_selections,@object # @converted_selections
	.local	converted_selections
	.comm	converted_selections,8,8
	.type	conversion_fail_tag,@object # @conversion_fail_tag
	.local	conversion_fail_tag
	.comm	conversion_fail_tag,8,8
	.type	syms_of_xselect.o_fwd,@object # @syms_of_xselect.o_fwd
	.local	syms_of_xselect.o_fwd
	.comm	syms_of_xselect.o_fwd,16,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"selection-converter-alist"
	.size	.L.str.14, 26

	.type	syms_of_xselect.o_fwd.15,@object # @syms_of_xselect.o_fwd.15
	.local	syms_of_xselect.o_fwd.15
	.comm	syms_of_xselect.o_fwd.15,16,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"x-lost-selection-functions"
	.size	.L.str.16, 27

	.type	syms_of_xselect.o_fwd.17,@object # @syms_of_xselect.o_fwd.17
	.local	syms_of_xselect.o_fwd.17
	.comm	syms_of_xselect.o_fwd.17,16,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"x-sent-selection-functions"
	.size	.L.str.18, 27

	.type	syms_of_xselect.o_fwd.19,@object # @syms_of_xselect.o_fwd.19
	.local	syms_of_xselect.o_fwd.19
	.comm	syms_of_xselect.o_fwd.19,16,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"x-select-enable-clipboard-manager"
	.size	.L.str.20, 34

	.type	syms_of_xselect.i_fwd,@object # @syms_of_xselect.i_fwd
	.local	syms_of_xselect.i_fwd
	.comm	syms_of_xselect.i_fwd,16,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"x-selection-timeout"
	.size	.L.str.21, 20

	.type	selection_queue,@object # @selection_queue
	.local	selection_queue
	.comm	selection_queue,8,8
	.type	x_selection_current_request,@object # @x_selection_current_request
	.local	x_selection_current_request
	.comm	x_selection_current_request,8,8
	.type	selection_request_dpyinfo,@object # @selection_request_dpyinfo
	.local	selection_request_dpyinfo
	.comm	selection_request_dpyinfo,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Selection owner couldn't convert"
	.size	.L.str.22, 33

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"No selection"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Timed out waiting for property-notify event"
	.size	.L.str.24, 44

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Non-ASCII string must be encoded in advance"
	.size	.L.str.25, 44

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"All elements of selection vector must have same type"
	.size	.L.str.26, 53

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Unrecognized selection data"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Can't set selection: %s"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid data returned by selection-conversion function"
	.size	.L.str.29, 55

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Can't convert selection: %s"
	.size	.L.str.30, 28

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Timed out waiting for reply from selection owner"
	.size	.L.str.31, 49

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"X clipboard manager error: %s\nIf the problem persists, set `%s' to nil."
	.size	.L.str.32, 72

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Error saving to X clipboard manager.\nIf the problem persists, set '%s' to nil.\n"
	.size	.L.str.33, 80

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"x-get-selection-internal"
	.size	.L.str.34, 25

	.type	Sx_get_selection_internal,@object # @Sx_get_selection_internal
	.data
	.align	8
Sx_get_selection_internal:
	.quad	167772160               # 0xa000000
	.quad	Fx_get_selection_internal
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.34
	.quad	0
	.quad	0
	.size	Sx_get_selection_internal, 48

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"x-own-selection-internal"
	.size	.L.str.35, 25

	.type	Sx_own_selection_internal,@object # @Sx_own_selection_internal
	.data
	.align	8
Sx_own_selection_internal:
	.quad	167772160               # 0xa000000
	.quad	Fx_own_selection_internal
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.35
	.quad	0
	.quad	0
	.size	Sx_own_selection_internal, 48

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"x-disown-selection-internal"
	.size	.L.str.36, 28

	.type	Sx_disown_selection_internal,@object # @Sx_disown_selection_internal
	.data
	.align	8
Sx_disown_selection_internal:
	.quad	167772160               # 0xa000000
	.quad	Fx_disown_selection_internal
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.36
	.quad	0
	.quad	0
	.size	Sx_disown_selection_internal, 48

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"x-selection-owner-p"
	.size	.L.str.37, 20

	.type	Sx_selection_owner_p,@object # @Sx_selection_owner_p
	.data
	.align	8
Sx_selection_owner_p:
	.quad	167772160               # 0xa000000
	.quad	Fx_selection_owner_p
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.37
	.quad	0
	.quad	0
	.size	Sx_selection_owner_p, 48

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"x-selection-exists-p"
	.size	.L.str.38, 21

	.type	Sx_selection_exists_p,@object # @Sx_selection_exists_p
	.data
	.align	8
Sx_selection_exists_p:
	.quad	167772160               # 0xa000000
	.quad	Fx_selection_exists_p
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.38
	.quad	0
	.quad	0
	.size	Sx_selection_exists_p, 48

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"x-get-atom-name"
	.size	.L.str.39, 16

	.type	Sx_get_atom_name,@object # @Sx_get_atom_name
	.data
	.align	8
Sx_get_atom_name:
	.quad	167772160               # 0xa000000
	.quad	Fx_get_atom_name
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.39
	.quad	0
	.quad	0
	.size	Sx_get_atom_name, 48

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"x-send-client-message"
	.size	.L.str.40, 22

	.type	Sx_send_client_message,@object # @Sx_send_client_message
	.data
	.align	8
Sx_send_client_message:
	.quad	167772160               # 0xa000000
	.quad	Fx_send_client_message
	.short	6                       # 0x6
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.40
	.quad	0
	.quad	0
	.size	Sx_send_client_message, 48

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"x-register-dnd-atom"
	.size	.L.str.41, 20

	.type	Sx_register_dnd_atom,@object # @Sx_register_dnd_atom
	.data
	.align	8
Sx_register_dnd_atom:
	.quad	167772160               # 0xa000000
	.quad	Fx_register_dnd_atom
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.41
	.quad	0
	.quad	0
	.size	Sx_register_dnd_atom, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
